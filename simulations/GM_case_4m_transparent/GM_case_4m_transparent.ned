// You will probably want to change this package name to something suitable
package multidomain.simulations.GM_case_4m_transparent;

import libptp.Components.Nodes.*;
import libptp.Components.Cables.*;
import libptp.Components.Nodes.*;
import libptp.Components.Cables.*;

network GM_case_4m_transparent
{
    @display("bgl=11;bgb=4438,2222");
    types:
    submodules:
        // Master nodes
        CTRL1: PTP_EN_P2P_2S_M1 {
            parameters:
                @display("p=549,405");
                PTP_Stack.DomainNumber = "DOMAIN_DEFAULT";
            gates:
                ethg[1];
        }
        CTRL2: PTP_EN_P2P_2S_M1 {
            parameters:
                @display("p=660,405");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
            gates:
                ethg[1];
        }
        ECM: PTP_EN_P2P_2S_M1 {
            parameters:
                @display("p=771,405");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_2";
            gates:
                ethg[1];
        }
        EBCM: PTP_EN_P2P_2S_M1 {
            parameters:
                @display("p=882,405");
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_3";
            gates:
                ethg[1];
        }
        // Boundary nodes
        SW_B1: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=549,627");
            gates:
                ethg[6];
        }
        SW_B2: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=660,627");
            gates:
                ethg[5];
        }
        SW_B3: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=771,627");
            gates:
                ethg[6];
        }
        SW_B4: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=882,627");
            gates:
                ethg[5];
        }
        SW_B5: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=993,627");
            gates:
                ethg[5];
        }
        SW_B6: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1104,627");
            gates:
                ethg[5];
        }
        SW_B7: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1215,627");
            gates:
                ethg[5];
        }
        SW_B8: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1326,627");
            gates:
                ethg[5];
        }
        SW_B9: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1437,627");
            gates:
                ethg[5];
        }
        SW_B10: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1548,627");
            gates:
                ethg[5];
        }
        SW_B11: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1659,627");
            gates:
                ethg[5];
        }
        SW_B12: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1770,627");
            gates:
                ethg[5];
        }
        SW_B13: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1881,627");
            gates:
                ethg[7];
        }
        SW_B14: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1992,627");
            gates:
                ethg[5];
        }
        SW_B15: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=2103,627");
            gates:
                ethg[5];
        }
        SW_B16: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=2214,627");
            gates:
                ethg[7];
        }
        SW_B17: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=2325,627");
            gates:
                ethg[3];
        }
        SW_B18: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=1998,333");
            gates:
                ethg[6];
        }
        SW_B19: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=2109,333");
            gates:
                ethg[7];
        }
        SW_B20: PTP_TC_P2P_2S_M3 {
            parameters:
                @display("p=2220,333");
            gates:
                ethg[6];
        }
        // Slave nodes
        FRONT_CAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=549,960");
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
        REAR_CAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=660,960");
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
        FRONT_SVCAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=771,960");
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
        LEFT_SVCAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=882,960");
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
        RIGHT_SVCAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=993,960");
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
        REAR_SVCAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=1104,960");
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
        FRONT_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=1215,960");
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
        LEFT_FRONT_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=1326,960");
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
        RIGHT_FRONT_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=1437,960");
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
        LEFT_REAR_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=1548,960");
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
        RIGHT_REAR_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=1659,960");
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
        REAR_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=1770,960");
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
        EPS: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=1881,960");
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
        IMU1: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=1992,960");
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
        IMU2: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=2103,960");
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
        MAPLOC: PTP_RD_EN_P2P_2S_SO {
            parameters:
                @display("p=2214,960");
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

    connections allowunconnected:
        FRONT_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B10.ethg[3];
        REAR_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B6.ethg[3];
        SW_B16.ethg[1] <--> GigabitCable20cm <--> SW_B8.ethg[0];
        SW_B10.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[1];
        IMU1.ethg[3] <--> GigabitCable20cm <--> SW_B8.ethg[4];
        SW_B16.ethg[0] <--> GigabitCable20cm <--> SW_B17.ethg[1];
        SW_B12.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[2];
        SW_B17.ethg[0] <--> GigabitCable20cm <--> SW_B20.ethg[3];
        SW_B13.ethg[2] <--> GigabitCable20cm <--> SW_B15.ethg[0];
        LEFT_FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B11.ethg[2];
        SW_B3.ethg[1] <--> GigabitCable20cm <--> SW_B4.ethg[0];
        SW_B13.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[3];
        IMU2.ethg[2] <--> GigabitCable20cm <--> SW_B9.ethg[3];
        LEFT_REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B13.ethg[3];
        //	 SW_B1.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[4];
        SW_B16.ethg[2] <--> GigabitCable20cm <--> SW_B9.ethg[0];
        REAR_CAM.ethg[1] <--> GigabitCable20cm <--> SW_B5.ethg[2];
        RIGHT_REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B14.ethg[1];
        SW_B18.ethg[5] <--> GigabitCable20cm <--> SW_B20.ethg[4];
        MAPLOC.ethg[1] <--> GigabitCable20cm <--> SW_B16.ethg[4];
        SW_B13.ethg[1] <--> GigabitCable20cm <--> SW_B5.ethg[0];
        SW_B14.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[4];
        LEFT_FRONT_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B11.ethg[4];
        SW_B20.ethg[2] <--> GigabitCable20cm <--> SW_B7.ethg[0];
        LEFT_REAR_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B13.ethg[5];
        SW_B1.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[1];
        REAR_CAM.ethg[3] <--> GigabitCable20cm <--> SW_B5.ethg[4];
        RIGHT_REAR_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B14.ethg[3];
        RIGHT_FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B12.ethg[2];
        SW_B18.ethg[2] <--> GigabitCable20cm <--> SW_B2.ethg[0];
        SW_B18.ethg[3] <--> GigabitCable20cm <--> SW_B3.ethg[0];
        //	 SW_B1.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[2];
        SW_B11.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[4];
        FRONT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B2.ethg[2];
        LEFT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B3.ethg[3];
        RIGHT_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B4.ethg[3];
        FRONT_CAM.ethg[3] <--> GigabitCable20cm <--> SW_B1.ethg[5];
        EPS.ethg[1] <--> GigabitCable20cm <--> SW_B7.ethg[2];
        RIGHT_FRONT_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B12.ethg[4];
        SW_B20.ethg[1] <--> GigabitCable20cm <--> SW_B6.ethg[0];
        LEFT_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B3.ethg[5];
        CTRL1.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[0];
        EPS.ethg[3] <--> GigabitCable20cm <--> SW_B7.ethg[4];
        EBCM.ethg[0] <--> GigabitCable20cm <--> SW_B17.ethg[2];
        IMU2.ethg[1] <--> GigabitCable20cm <--> SW_B9.ethg[2];
        CTRL2.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[6];
        REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B15.ethg[1];
        FRONT_CAM.ethg[0] <--> GigabitCable20cm <--> SW_B1.ethg[2];
        MAPLOC.ethg[3] <--> GigabitCable20cm <--> SW_B16.ethg[6];
        IMU1.ethg[0] <--> GigabitCable20cm <--> SW_B8.ethg[1];
        IMU2.ethg[3] <--> GigabitCable20cm <--> SW_B9.ethg[4];
        LEFT_REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B13.ethg[4];
        SW_B19.ethg[5] <--> GigabitCable20cm <--> SW_B20.ethg[0];
        RIGHT_REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B14.ethg[2];
        REAR_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B15.ethg[3];
        FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B10.ethg[2];
        SW_B1.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[0];
        REAR_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B6.ethg[2];
        RIGHT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B4.ethg[2];
        FRONT_CAM.ethg[2] <--> GigabitCable20cm <--> SW_B1.ethg[4];
        IMU1.ethg[2] <--> GigabitCable20cm <--> SW_B8.ethg[3];
        FRONT_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B2.ethg[4];
        LEFT_REAR_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B13.ethg[6];
        RIGHT_REAR_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B14.ethg[4];
        FRONT_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B10.ethg[4];
        //	 SW_B1.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[3];
        REAR_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B6.ethg[4];
        LEFT_FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B11.ethg[1];
        RIGHT_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B4.ethg[4];
        REAR_CAM.ethg[0] <--> GigabitCable20cm <--> SW_B5.ethg[1];
        MAPLOC.ethg[0] <--> GigabitCable20cm <--> SW_B16.ethg[3];
        LEFT_FRONT_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B11.ethg[3];
        IMU2.ethg[0] <--> GigabitCable20cm <--> SW_B9.ethg[1];
        ECM.ethg[0] <--> GigabitCable20cm <--> SW_B20.ethg[5];
        REAR_CAM.ethg[2] <--> GigabitCable20cm <--> SW_B5.ethg[3];
        RIGHT_FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B12.ethg[1];
        MAPLOC.ethg[2] <--> GigabitCable20cm <--> SW_B16.ethg[5];
        FRONT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B2.ethg[1];
        LEFT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B3.ethg[2];
        REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B15.ethg[2];
        EPS.ethg[0] <--> GigabitCable20cm <--> SW_B7.ethg[1];
        //	 SW_B18.ethg[5] <--> GigabitCable20cm <--> SW_B2.ethg[0];
        FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B10.ethg[1];
        //	 SW_B1.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[1];
        RIGHT_FRONT_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B12.ethg[3];
        REAR_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B6.ethg[1];
        RIGHT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B4.ethg[1];
        FRONT_CAM.ethg[1] <--> GigabitCable20cm <--> SW_B1.ethg[3];
        IMU1.ethg[1] <--> GigabitCable20cm <--> SW_B8.ethg[2];
        FRONT_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B2.ethg[3];
        LEFT_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B3.ethg[4];
        REAR_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B15.ethg[4];
        EPS.ethg[2] <--> GigabitCable20cm <--> SW_B7.ethg[3];
}
