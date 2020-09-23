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

module RedundantPTPBound
{
    gates:
        inout ethg[90];
    submodules:
        Bound_1: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=111,70");
            gates:
                ethg[10];
        }

        Bound_2: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=222,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
            gates:
                ethg[10];
        }
        
        Bound_3: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=333,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_2";
            gates:
                ethg[10];
        }
        Bound_4: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=444,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_3";
            gates:
                ethg[10];
        }
        Bound_5: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=555,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_3";
            gates:
                ethg[10];
        }
        Bound_6: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=111,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_1";
            gates:
                ethg[10];
        }
        Bound_7: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=222,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_2";
            gates:
                ethg[10];
        }
        Bound_8: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=333,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_3";
            gates:
                ethg[10];
        }
        Bound_9: PTP_BC_E2E_1S_M3 {
            parameters:
                @display("p=444,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_4";
            gates:
                ethg[10];
        }
     connections allowunconnected:
        ethg[0] <--> Bound_1.ethg[0];
        ethg[1] <--> Bound_1.ethg[1];
        ethg[2] <--> Bound_1.ethg[2];
        ethg[3] <--> Bound_1.ethg[3];
        ethg[4] <--> Bound_1.ethg[4];
        ethg[5] <--> Bound_1.ethg[5];
        ethg[6] <--> Bound_1.ethg[6];
        ethg[7] <--> Bound_1.ethg[7];
        ethg[8] <--> Bound_1.ethg[8];
        ethg[9] <--> Bound_1.ethg[9];
        ethg[10] <--> Bound_2.ethg[0];
        ethg[11] <--> Bound_2.ethg[1];
        ethg[12] <--> Bound_2.ethg[2];
        ethg[13] <--> Bound_2.ethg[3];
        ethg[14] <--> Bound_2.ethg[4];
        ethg[15] <--> Bound_2.ethg[5];
        ethg[16] <--> Bound_2.ethg[6];
        ethg[17] <--> Bound_2.ethg[7];
        ethg[18] <--> Bound_2.ethg[8];
        ethg[19] <--> Bound_2.ethg[9];
        ethg[20] <--> Bound_3.ethg[0];
        ethg[21] <--> Bound_3.ethg[1];
        ethg[22] <--> Bound_3.ethg[2];
        ethg[23] <--> Bound_3.ethg[3];
        ethg[24] <--> Bound_3.ethg[4];
        ethg[25] <--> Bound_3.ethg[5];
        ethg[26] <--> Bound_3.ethg[6];
        ethg[27] <--> Bound_3.ethg[7];
        ethg[28] <--> Bound_3.ethg[8];
        ethg[29] <--> Bound_3.ethg[9];
        ethg[30] <--> Bound_4.ethg[0];
        ethg[31] <--> Bound_4.ethg[1];
        ethg[32] <--> Bound_4.ethg[2];
        ethg[33] <--> Bound_4.ethg[3];
        ethg[34] <--> Bound_4.ethg[4];
        ethg[35] <--> Bound_4.ethg[5];
        ethg[36] <--> Bound_4.ethg[6];
        ethg[37] <--> Bound_4.ethg[7];
        ethg[38] <--> Bound_4.ethg[8];
        ethg[39] <--> Bound_4.ethg[9];
        ethg[40] <--> Bound_5.ethg[0];
        ethg[41] <--> Bound_5.ethg[1];
        ethg[42] <--> Bound_5.ethg[2];
        ethg[43] <--> Bound_5.ethg[3];
        ethg[44] <--> Bound_5.ethg[4];
        ethg[45] <--> Bound_5.ethg[5];
        ethg[46] <--> Bound_5.ethg[6];
        ethg[47] <--> Bound_5.ethg[7];
        ethg[48] <--> Bound_5.ethg[8];
        ethg[49] <--> Bound_5.ethg[9];
        ethg[50] <--> Bound_6.ethg[0];
        ethg[51] <--> Bound_6.ethg[1];
        ethg[52] <--> Bound_6.ethg[2];
        ethg[53] <--> Bound_6.ethg[3];
        ethg[54] <--> Bound_6.ethg[4];
        ethg[55] <--> Bound_6.ethg[5];
        ethg[56] <--> Bound_6.ethg[6];
        ethg[57] <--> Bound_6.ethg[7];
        ethg[58] <--> Bound_6.ethg[8];
        ethg[59] <--> Bound_6.ethg[9];
        ethg[60] <--> Bound_7.ethg[0];
        ethg[61] <--> Bound_7.ethg[1];
        ethg[62] <--> Bound_7.ethg[2];
        ethg[63] <--> Bound_7.ethg[3];
        ethg[64] <--> Bound_7.ethg[4];
        ethg[65] <--> Bound_7.ethg[5];
        ethg[66] <--> Bound_7.ethg[6];
        ethg[67] <--> Bound_7.ethg[7];
        ethg[68] <--> Bound_7.ethg[8];
        ethg[69] <--> Bound_7.ethg[9];
        ethg[70] <--> Bound_8.ethg[0];
        ethg[71] <--> Bound_8.ethg[1];
        ethg[72] <--> Bound_8.ethg[2];
        ethg[73] <--> Bound_8.ethg[3];
        ethg[74] <--> Bound_8.ethg[4];
        ethg[75] <--> Bound_8.ethg[5];
        ethg[76] <--> Bound_8.ethg[6];
        ethg[77] <--> Bound_8.ethg[7];
        ethg[78] <--> Bound_8.ethg[8];
        ethg[79] <--> Bound_8.ethg[9];
        ethg[80] <--> Bound_9.ethg[0];
        ethg[81] <--> Bound_9.ethg[1];
        ethg[82] <--> Bound_9.ethg[2];
        ethg[83] <--> Bound_9.ethg[3];
        ethg[84] <--> Bound_9.ethg[4];
        ethg[85] <--> Bound_9.ethg[5];
        ethg[86] <--> Bound_9.ethg[6];
        ethg[87] <--> Bound_9.ethg[7];
        ethg[88] <--> Bound_9.ethg[8];
        ethg[89] <--> Bound_9.ethg[9];
}
 
