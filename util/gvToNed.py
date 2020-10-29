#!/usr/bin/python
import pygraphviz as pgv

def print_help():
    h = """Usage:
            ./gvToNed <filename.gv> <switch prefix> <master nodes>
            All nodes that don't match the switch prefix and are not included in the master node list will be converted to a slave node
        Example:
            ./gvToNed example.gv SW_ MC1 MC2"""
    print(h)

class NedNode():
    def __init__(self, n_type, name, hpos, vpos, indent=1):
        self.n_type = n_type
        self.name = name
        self.hpos = hpos
        self.vpos = vpos
        #self.num_gates = num_gates
        #self.domain = domain
        self.indent = indent


    def __str__(self):
        r = ""
        t = "\t" * self.indent
        r += t + "%s: %s {\n" % (self.name, self.n_type)
        r += t + "\tparameters:\n"
        r += t + "\t\t@display(\"p=%d,%d\");\n" % (self.hpos, self.vpos)
        #r += t + "\tgates:\n"
        #r += t + "\t\tethgate[%d];\n" % self.num_links
        r += t + "}"
        return r

class BoundNode(NedNode):
    PORTS_PER_DOMAIN = 10
    NUM_DOMAINS = 9

    def __init__(self, n_type, name, hpos, vpos, indent=1):
        NedNode.__init__(self, n_type, name, hpos, vpos)
        self.used_ports = {}
        for i in range(BoundNode.NUM_DOMAINS):
            self.used_ports[i] = i * 10
        self.conns = {}

    def add_conn(self, remote, domain):
        if remote + str(domain) in self.conns:
            return
        self.conns[remote + str(domain)] = self.used_ports[domain]
        print("Adding conn %s <> %s (%d) (local gate %d) " % (self.name, remote, domain, self.used_ports[domain]))
        self.used_ports[domain] += 1

class TCNode(NedNode):
    PORTS_PER_DOMAIN = 10
    NUM_DOMAINS = 9

    def __init__(self, n_type, name, hpos, vpos, indent=1):
        NedNode.__init__(self, n_type, name, hpos, vpos)
        self.used_ports = {}
        for i in range(TCNode.NUM_DOMAINS):
            self.used_ports[i] = i * 10
        self.conns = {}

    def add_conn(self, remote, domain):
        if remote + str(domain) in self.conns:
            return
        self.conns[remote + str(domain)] = self.used_ports[domain]
        print("Adding conn %s <> %s (%d) (local gate %d) " % (self.name, remote, domain, self.used_ports[domain]))
        self.used_ports[domain] += 1

class TimeDiffObserver():
    def __init__(self, name, nodea, nodeb, hpos, vpos, indent=1):
        self.type = "TimeDiffObserver"
        self.name = name
        self.hpos = hpos
        self.vpos = vpos
        self.clocka = nodea
        self.clockb = nodeb
        self.indent = indent

    def __str__(self):
        r = ""
        t = "\t" * self.indent
        r += t + "%s: %s {\n" % (self.name, self.type)
        r += t + "\t\t@display(\"p=%d,%d\");\n" % (self.hpos, self.vpos)
        r += t + "\t\tClockPath1 = default(^.%s.NIC.Clock);\n" % (self.clocka)
        r += t + "\t\tClockPath1 = default(^.%s.NIC.Clock);\n" % (self.clockb)
        r += t + "}"
        return r

class NedNetwork():
    H_ADD = 111
    V_ADD = 111
    MASTER_TYPE = "RedundantPTPMaster"
    SLAVE_TYPE = "RedundantPTPSlave"
    BOUND_TYPE = "RedundantPTPBound"
    TC_TYPE = "RedundantPTPTransparent"
    LINK_TYPE = "GigabitCable20cm"

    def __init__(self, name):
        self.name = name
        self.masters = []
        self.bounds = []
        self.bounds_map = {}
        self.slaves = []
        self.observers = []
        self.connections = set()
        self.hsize = 0
        self.vsize = 0

    def add_master(self, name):
        n = len(self.masters)
        self.masters.append(NedNode(NedNetwork.MASTER_TYPE, name,
            (n+1) * NedNetwork.H_ADD, NedNetwork.V_ADD))

    def add_bound(self, name):
        n = len(self.bounds)
        bound = BoundNode(NedNetwork.BOUND_TYPE, name,
            (n+1) * NedNetwork.H_ADD, NedNetwork.V_ADD * 3)
        self.bounds.append(bound)
        self.bounds_map[name] = bound

    def add_transparent(self, name):
        n = len(self.bounds)
        tc = TCNode(NedNetwork.TC_TYPE, name,
            (n+1) * NedNetwork.H_ADD, NedNetwork.V_ADD * 3)
        self.bounds.append(tc)
        self.bounds_map[name] = tc

    def add_slave(self, name):
        n = len(self.slaves)
        self.slaves.append(NedNode(NedNetwork.SLAVE_TYPE, name,
            (n+1) * NedNetwork.H_ADD, NedNetwork.V_ADD * 6))

    def add_observer(self, name, nodeA, nodeB):
        n = len(self.observers)
        self.observers.append(TimeDiffObserver(name, nodeA, nodeB,
            (n+1) * NedNetwork.H_ADD, NedNetwork.V_ADD * 3))

    def add_conn(self, a, b, domain):
        src,dst = sorted([a,b])
        if src in self.bounds_map:
            self.bounds_map[src].add_conn(dst, domain)
        if dst in self.bounds_map:
            self.bounds_map[dst].add_conn(src, domain)
        x = (src, dst, domain)
        if x not in self.connections:
            print("ADDING: %s <--> %s (%d)" % x)
            self.connections.add(x)

    def __str__(self):
        r = ""
        r += "network %s\n{\n" % self.name.capitalize()

        r += "\ttypes:\n"

        r += "\tsubmodules:\n"
        r += "\t// Master nodes\n"
        for x in self.masters:
            r += str(x) + "\n"
        r += "\t// Boundary nodes\n"
        for x in self.bounds:
            r += str(x) + "\n"
        r += "\t// Slave nodes\n"
        for x in self.slaves:
            r += str(x) + "\n"
        r += "\t// Observer nodes\n"
        for x in self.observers:
            r += str(x) + "\n"

        antidupe = []
        r += "\n\tconnections allowunconnected:\n"
        for x in self.connections:
            a,b,domain = x[0], x[1], x[2]
            a_gate, b_gate = domain, domain
            if a in self.bounds_map:
                a_gate = self.bounds_map[a].conns[b + str(domain)]
            if b in self.bounds_map:
                b_gate = self.bounds_map[b].conns[a + str(domain)]

            params = (a, a_gate, NedNetwork.LINK_TYPE, b, b_gate)
            s = "\t %s.ethg[%d] <--> %s <--> %s.ethg[%d];\n" % params

            if s in antidupe:
                s = "//Duped: " + s
            else:
                antidupe.append(s)
            r += s

        r += "}\n"
        return r

def rec_add_neighbors(G, net, node, domain, visited=[]):
    if node is None:
        return
    visited.append(node)
    neighbors = G.neighbors(node)
    unvisited = [x for x in neighbors if x not in visited]
    index = 0
    for n in unvisited:
        s = sorted([node, n]) #make sure we always use the same order to avoid dupes
        net.add_conn(s[0], s[1], domain)
        index += 1
        rec_add_neighbors(G, net, n, domain, visited)

def translate(gvfile, swpref, masters):
    gname = gvfile.strip(".gv")
    G = pgv.AGraph(gvfile).to_undirected()

    net = NedNetwork(gname)

    for v in G.iternodes():
        name = v.get_name()

        if name.startswith(swpref):
            # net.add_bound(name)
            net.add_transparent(name)
        elif name in masters:
            net.add_master(name)
        else:
            net.add_slave(name)

    domain = 0
    for m in masters:
        rec_add_neighbors(G, net, m, domain, [] + masters)
        domain += 1
            # net.add_observer("timeDiffObserver_%d" % index, s[0] + ".Master_1", s[1] + ".Slave_1")
            # net.add_observer("timeDiffObserver_%d" % index, s[0] + ".Master_2", s[1] + ".Slave_2")
            # net.add_observer("timeDiffObserver_%d" % index, s[0] + ".Master_3", s[1] + ".Slave_3")
            # net.add_observer("timeDiffObserver_%d" % index, s[0] + ".Master_4", s[1] + ".Slave_4")
            # net.add_observer("timeDiffObserver_%d" % index, s[0] + ".Master_5", s[1] + ".Slave_5")
            # net.add_observer("timeDiffObserver_%d" % index, s[0] + ".Master_6", s[1] + ".Slave_6")
            # net.add_observer("timeDiffObserver_%d" % index, s[0] + ".Master_7", s[1] + ".Slave_7")
            # net.add_observer("timeDiffObserver_%d" % index, s[0] + ".Master_8", s[1] + ".Slave_8")
            # net.add_observer("timeDiffObserver_%d" % index, s[0] + ".Master_9", s[1] + ".Slave_9")

    #preamble
    print("// You will probably want to change this package name to something suitable")
    print("package multidomain.simulations.%s;" % gname)
    print("\nimport libptp.Components.Nodes.*;\nimport libptp.Components.Cables.*;\n");

    print(str(net))

if __name__ == "__main__":
    from sys import argv
    if len(argv) < 4:
        print_help()
        exit()
    else:
        translate(argv[1], argv[2], argv[3:])
