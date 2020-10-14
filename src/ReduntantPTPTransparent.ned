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

module RedundantPTPTransparent
{
    gates:
        inout ethg[90];
    submodules:
        TC_1: PTP_TC_E2E_1S_M3 {
            parameters:
                @display("p=111,70");
            gates:
                ethg[10];
        }

        TC_2: PTP_TC_E2E_1S_M3 {
            parameters:
                @display("p=222,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
            gates:
                ethg[10];
        }
        
        TC_3: PTP_TC_E2E_1S_M3 {
            parameters:
                @display("p=333,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_2";
            gates:
                ethg[10];
        }
        TC_4: PTP_TC_E2E_1S_M3 {
            parameters:
                @display("p=444,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_3";
            gates:
                ethg[10];
        }
        TC_5: PTP_TC_E2E_1S_M3 {
            parameters:
                @display("p=555,70");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_3";
            gates:
                ethg[10];
        }
        TC_6: PTP_TC_E2E_1S_M3 {
            parameters:
                @display("p=111,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_1";
            gates:
                ethg[10];
        }
        TC_7: PTP_TC_E2E_1S_M3 {
            parameters:
                @display("p=222,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_2";
            gates:
                ethg[10];
        }
        TC_8: PTP_TC_E2E_1S_M3 {
            parameters:
                @display("p=333,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_3";
            gates:
                ethg[10];
        }
        TC_9: PTP_TC_E2E_1S_M3 {
            parameters:
                @display("p=444,190");
                PTP_Stack.DomainNumber = "DOMAIN_USER_4";
            gates:
                ethg[10];
        }
     connections allowunconnected:
        ethg[0] <--> TC_1.ethg[0];
        ethg[1] <--> TC_1.ethg[1];
        ethg[2] <--> TC_1.ethg[2];
        ethg[3] <--> TC_1.ethg[3];
        ethg[4] <--> TC_1.ethg[4];
        ethg[5] <--> TC_1.ethg[5];
        ethg[6] <--> TC_1.ethg[6];
        ethg[7] <--> TC_1.ethg[7];
        ethg[8] <--> TC_1.ethg[8];
        ethg[9] <--> TC_1.ethg[9];
        ethg[10] <--> TC_2.ethg[0];
        ethg[11] <--> TC_2.ethg[1];
        ethg[12] <--> TC_2.ethg[2];
        ethg[13] <--> TC_2.ethg[3];
        ethg[14] <--> TC_2.ethg[4];
        ethg[15] <--> TC_2.ethg[5];
        ethg[16] <--> TC_2.ethg[6];
        ethg[17] <--> TC_2.ethg[7];
        ethg[18] <--> TC_2.ethg[8];
        ethg[19] <--> TC_2.ethg[9];
        ethg[20] <--> TC_3.ethg[0];
        ethg[21] <--> TC_3.ethg[1];
        ethg[22] <--> TC_3.ethg[2];
        ethg[23] <--> TC_3.ethg[3];
        ethg[24] <--> TC_3.ethg[4];
        ethg[25] <--> TC_3.ethg[5];
        ethg[26] <--> TC_3.ethg[6];
        ethg[27] <--> TC_3.ethg[7];
        ethg[28] <--> TC_3.ethg[8];
        ethg[29] <--> TC_3.ethg[9];
        ethg[30] <--> TC_4.ethg[0];
        ethg[31] <--> TC_4.ethg[1];
        ethg[32] <--> TC_4.ethg[2];
        ethg[33] <--> TC_4.ethg[3];
        ethg[34] <--> TC_4.ethg[4];
        ethg[35] <--> TC_4.ethg[5];
        ethg[36] <--> TC_4.ethg[6];
        ethg[37] <--> TC_4.ethg[7];
        ethg[38] <--> TC_4.ethg[8];
        ethg[39] <--> TC_4.ethg[9];
        ethg[40] <--> TC_5.ethg[0];
        ethg[41] <--> TC_5.ethg[1];
        ethg[42] <--> TC_5.ethg[2];
        ethg[43] <--> TC_5.ethg[3];
        ethg[44] <--> TC_5.ethg[4];
        ethg[45] <--> TC_5.ethg[5];
        ethg[46] <--> TC_5.ethg[6];
        ethg[47] <--> TC_5.ethg[7];
        ethg[48] <--> TC_5.ethg[8];
        ethg[49] <--> TC_5.ethg[9];
        ethg[50] <--> TC_6.ethg[0];
        ethg[51] <--> TC_6.ethg[1];
        ethg[52] <--> TC_6.ethg[2];
        ethg[53] <--> TC_6.ethg[3];
        ethg[54] <--> TC_6.ethg[4];
        ethg[55] <--> TC_6.ethg[5];
        ethg[56] <--> TC_6.ethg[6];
        ethg[57] <--> TC_6.ethg[7];
        ethg[58] <--> TC_6.ethg[8];
        ethg[59] <--> TC_6.ethg[9];
        ethg[60] <--> TC_7.ethg[0];
        ethg[61] <--> TC_7.ethg[1];
        ethg[62] <--> TC_7.ethg[2];
        ethg[63] <--> TC_7.ethg[3];
        ethg[64] <--> TC_7.ethg[4];
        ethg[65] <--> TC_7.ethg[5];
        ethg[66] <--> TC_7.ethg[6];
        ethg[67] <--> TC_7.ethg[7];
        ethg[68] <--> TC_7.ethg[8];
        ethg[69] <--> TC_7.ethg[9];
        ethg[70] <--> TC_8.ethg[0];
        ethg[71] <--> TC_8.ethg[1];
        ethg[72] <--> TC_8.ethg[2];
        ethg[73] <--> TC_8.ethg[3];
        ethg[74] <--> TC_8.ethg[4];
        ethg[75] <--> TC_8.ethg[5];
        ethg[76] <--> TC_8.ethg[6];
        ethg[77] <--> TC_8.ethg[7];
        ethg[78] <--> TC_8.ethg[8];
        ethg[79] <--> TC_8.ethg[9];
        ethg[80] <--> TC_9.ethg[0];
        ethg[81] <--> TC_9.ethg[1];
        ethg[82] <--> TC_9.ethg[2];
        ethg[83] <--> TC_9.ethg[3];
        ethg[84] <--> TC_9.ethg[4];
        ethg[85] <--> TC_9.ethg[5];
        ethg[86] <--> TC_9.ethg[6];
        ethg[87] <--> TC_9.ethg[7];
        ethg[88] <--> TC_9.ethg[8];
        ethg[89] <--> TC_9.ethg[9];
}
 
