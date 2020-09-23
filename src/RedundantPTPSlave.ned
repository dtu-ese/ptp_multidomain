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

package multidomain;

import libptp.Components.Nodes.*;

module RedundantPTPSlave
{
    gates:
        inout ethg[9];
    submodules:
        Slave_1: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=111,70");
            gates:
                ethg[1];
        }

 

        Slave_2: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=222,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
            gates:
                ethg[1];
        }
        
        Slave_3: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=333,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_2";
            gates:
                ethg[1];
        }
        Slave_4: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=444,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_3";
            gates:
                ethg[1];
        }
        Slave_5: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=555,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_3";
            gates:
                ethg[1];
        }
        Slave_6: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=111,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_1";
            gates:
                ethg[1];
        }
        Slave_7: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=222,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_2";
            gates:
                ethg[1];
        }
        Slave_8: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=333,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_3";
            gates:
                ethg[1];
        }
        Slave_9: PTP_EN_E2E_1S_SO {
            parameters:
                @display("p=444,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_4";
            gates:
                ethg[1];
        }
     connections allowunconnected:
         ethg[0] <--> Slave_1.ethg[0];
         ethg[1] <--> Slave_2.ethg[0];
         ethg[2] <--> Slave_3.ethg[0];
         ethg[3] <--> Slave_4.ethg[0];
         ethg[4] <--> Slave_5.ethg[0];
         ethg[5] <--> Slave_6.ethg[0];
         ethg[6] <--> Slave_7.ethg[0];
         ethg[7] <--> Slave_8.ethg[0];
         ethg[8] <--> Slave_9.ethg[0];
}
 
