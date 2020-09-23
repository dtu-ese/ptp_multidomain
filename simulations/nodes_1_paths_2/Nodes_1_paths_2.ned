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

package multidomain.simulations.nodes_1_paths_2;

// ======================================================
// Imports
// ======================================================

import inet.world.scenario.ScenarioManager;
import libptp.Components.Nodes.*;
import libptp.Components.Cables.*;
import libptp.Components.Utilities.TimeDiffObserver.TimeDiffObserver;


network Nodes1Paths2
{
    @display("bgb=590,481");
    types:
    submodules:

        Master_1_C_1: PTP_EN_E2E_1S_M2 {
            parameters:
                @display("p=111,70");

            gates:
                ethg[2];
        }

        Master_1_C_2: PTP_EN_E2E_1S_M2 {
            parameters:
                @display("p=211,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";

            gates:
                ethg[2];
        }

        Bound_1: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=111,200");

            gates:
                ethg[3];
        }

        Bound_2: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=211,200");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";

            gates:
                ethg[3];
        }

        Node_1_C_1: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=111,300");

            gates:
                ethg[1];
        }

        Node_1_C_2: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=211,300");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";

            gates:
                ethg[1];
        }

        timeDiffObserver_1: TimeDiffObserver {
            @display("p=111,400");
            ClockPath1 = default("^.Master_1_C_1.NIC.Clock");
            ClockPath2 = default("^.Node_1_C_1.NIC.Clock");
        }

        timeDiffObserver_2: TimeDiffObserver {
            @display("p=211,400");
            ClockPath1 = default("^.Master_1_C_2.NIC.Clock");
            ClockPath2 = default("^.Node_1_C_2.NIC.Clock");
        }
        scenarioManager: ScenarioManager {
            @display("p=461,50");
        }
    connections allowunconnected:

        Master_1_C_1.ethg[1] <--> GigabitCable20cm <--> Bound_2.ethg[0];
        Master_1_C_2.ethg[0] <--> GigabitCable20cm <--> Bound_1.ethg[1];
        Master_1_C_2.ethg[1] <--> GigabitCable20cm <--> Bound_2.ethg[1];
        Bound_1.ethg[2] <--> GigabitCable20cm <--> Node_1_C_1.ethg[0];
        Bound_2.ethg[2] <--> GigabitCable20cm <--> Node_1_C_2.ethg[0];

        Master_1_C_1.ethg[0] <--> GigabitCable20cm <--> Bound_1.ethg[0];
}
