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

package multidomain.simulations.master_1_paths_4;

// ======================================================
// Imports
// ======================================================

import inet.world.scenario.ScenarioManager;
import libptp.Components.Cables.GigabitCable20cm;
import libptp.Components.Nodes.PTP_EN_P2P_2S_SO;
import libptp.Components.Nodes.PTP_RD_EN_P2P_2S_M1;
import libptp.Components.Nodes.PTP_RD_EN_P2P_2S_SO;
import libptp.Components.Nodes.PTP_TC_P2P_2S_M3;
import libptp.Components.Utilities.TimeDiffObserver.TimeDiffObserver;


network Master1Paths4
{
    @display("bgb=917,461;bgl=2");
    types:
    submodules:

        Master_1: PTP_RD_EN_P2P_2S_M1 {
            parameters:
                @display("p=490,74");
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
            gates:
                ethg[5];
        }

        Switch_1: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=276,184");
                PTP_Stack.DomainNumber = "DOMAIN_DEFAULT";
            gates:
                ethg[4];
        }

        Switch_2: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=427,184");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
            gates:
                ethg[4];
        }

        Switch_3: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=553,184");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_2";
            gates:
                ethg[4];
        }

        Switch_4: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=686,184");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_3";
            gates:
                ethg[4];
        }

        StdSlave_1: PTP_EN_P2P_2S_SO {
            parameters:
                @display("p=276,300");
                PTP_Stack.DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack.RedundantVoting = false;
            gates:
                ethg[1];
        }

        AVGSlave_1: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=427,300");
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "AVG";
            gates:
                ethg[4];
        }

        FTASlave_1: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=616,300");
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
            gates:
                ethg[4];
        }

        timeDiff_Std: TimeDiffObserver {
            @display("p=276,392");
            ClockPath1 = default("^.Master_1.Clock");
            ClockPath2 = default("^.StdSlave_1.NIC.Clock");
        }

        timeDiff_AVG: TimeDiffObserver {
            @display("p=427,392");
            ClockPath1 = default("^.Master_1.Clock");
            ClockPath2 = default("^.AVGSlave_1.Clock");
        }

        timeDiff_FTA: TimeDiffObserver {
            @display("p=616,392");
            ClockPath1 = default("^.Master_1.Clock");
            ClockPath2 = default("^.FTASlave_1.Clock");
        }

        scenarioManager: ScenarioManager {
            @display("p=106,74");
            script = xmldoc("scenario.xml");
        }

    connections allowunconnected:

        Master_1.ethg[0] <--> GigabitCable20cm <--> Switch_1.ethg[0];
        Master_1.ethg[1] <--> GigabitCable20cm <--> Switch_2.ethg[0];
        Master_1.ethg[2] <--> GigabitCable20cm <--> Switch_3.ethg[0];
        Master_1.ethg[3] <--> GigabitCable20cm <--> Switch_4.ethg[0];

        Switch_1.ethg[1] <--> GigabitCable20cm <--> StdSlave_1.ethg[0];

        Switch_1.ethg[2] <--> GigabitCable20cm <--> AVGSlave_1.ethg[0];
        Switch_2.ethg[2] <--> GigabitCable20cm <--> AVGSlave_1.ethg[1];
        Switch_3.ethg[2] <--> GigabitCable20cm <--> AVGSlave_1.ethg[2];
        Switch_4.ethg[2] <--> GigabitCable20cm <--> AVGSlave_1.ethg[3];

        Switch_1.ethg[3] <--> GigabitCable20cm <--> FTASlave_1.ethg[0];
        Switch_2.ethg[3] <--> GigabitCable20cm <--> FTASlave_1.ethg[1];
        Switch_3.ethg[3] <--> GigabitCable20cm <--> FTASlave_1.ethg[2];
        Switch_4.ethg[3] <--> GigabitCable20cm <--> FTASlave_1.ethg[3];

}
