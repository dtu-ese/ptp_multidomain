//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package multidomain.simulations.nodes_2_paths_2;

import inet.world.scenario.ScenarioManager;
import libptp.Components.Cables.GigabitCable10m;
import libptp.Components.Nodes.PTP_BC_E2E_1S_M3;
import libptp.Components.Nodes.PTP_BC_E2E_1S_SO;
import libptp.Components.Nodes.PTP_EN_E2E_1S_M2;
import libptp.Components.Nodes.PTP_EN_E2E_1S_SO;
import libptp.Components.Nodes.PTP_EN_E2E_2S_M2;
import libptp.Components.Nodes.PTP_EN_P2P_1S_M2;
import libptp.Components.Utilities.TimeDiffObserver.TimeDiffObserver;


//
// TODO Auto-generated network
//
network Nodes_2_paths_2
{
    @display("bgb=587,502");
    submodules:
        Master_1_C_1: PTP_EN_E2E_1S_M2 {
            @display("p=244,53;b=9,5");
            
            gates:
                ethg[2];
        }
        Master_1_C_2: PTP_EN_E2E_1S_M2 {
            @display("p=350,53;b=9,5");
            PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
            
            gates:
                ethg[2];
        }
        Bound_1: PTP_BC_E2E_1S_M3 {
            @display("p=244,188");
            
            gates:
                ethg[4];
        }
        Bound_2: PTP_BC_E2E_1S_M3 {
            @display("p=350,188");
            PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
            
            gates:
                ethg[4];
        }
        Node_1_C_1: PTP_EN_E2E_1S_SO {
            @display("p=94,251");
            
            gates:
                ethg[1];
        }
        Node_1_C_2: PTP_EN_E2E_1S_SO {
            @display("p=489,251");
            PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
            
            gates:
                ethg[1];
        }
        Node_2_C_1: PTP_EN_E2E_1S_SO {
            @display("p=94,369");
            
            gates:
                ethg[1];
        }
        Node_2_C_2: PTP_EN_E2E_1S_SO {
            @display("p=489,369");
            PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
            
            gates:
                ethg[1];
        }
        scenarioManager: ScenarioManager {
            @display("p=492,93");
        }
        timeDiffObserver_1: TimeDiffObserver {
            @display("p=93,187;is=vs");
            ClockPath1 = default("^.Master_1_C_1.NIC.Clock");
            ClockPath2 = default("^.Node_1_C_1.NIC.Clock");
        }
        timeDiffObserver_2: TimeDiffObserver {
            @display("p=93,440;is=vs");
            ClockPath1 = default("^.Master_1_C_1.NIC.Clock");
            ClockPath2 = default("^.Node_2_C_1.NIC.Clock");
        }
        timeDiffObserver_3: TimeDiffObserver {
            @display("p=488,187;is=vs");
            ClockPath1 = default("^.Master_1_C_2.NIC.Clock");
            ClockPath2 = default("^.Node_1_C_2.NIC.Clock");
        }
        timeDiffObserver_4: TimeDiffObserver {
            @display("p=491,440;is=vs");
            ClockPath1 = default("^.Master_1_C_2.NIC.Clock");
            ClockPath2 = default("^.Node_2_C_2.NIC.Clock");
        }
        
    connections allowunconnected:
        Master_1_C_1.ethg[0] <--> GigabitCable10m <--> Bound_1.ethg[0];
        Master_1_C_2.ethg[1] <--> GigabitCable10m <--> Bound_2.ethg[0];
        Master_1_C_2.ethg[0] <--> GigabitCable10m <--> Bound_1.ethg[1];
        Master_1_C_1.ethg[1] <--> GigabitCable10m <--> Bound_2.ethg[1];
        Bound_1.ethg[2] <--> GigabitCable10m <--> Node_1_C_1.ethg[0];
        Bound_2.ethg[2] <--> GigabitCable10m <--> Node_1_C_2.ethg[0];
        Bound_1.ethg[3] <--> GigabitCable10m <--> Node_2_C_1.ethg[0];
        Bound_2.ethg[3] <--> GigabitCable10m <--> Node_2_C_2.ethg[0];
}
