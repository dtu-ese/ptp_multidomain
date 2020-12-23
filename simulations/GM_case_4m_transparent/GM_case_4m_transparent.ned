// You will probably want to change this package name to something suitable
package multidomain.simulations.GM_case_4m_transparent;

import libptp.Components.Cables.GigabitCable1m;
import libptp.Components.Nodes.PTP_EN_P2P_2S_M1;
import libptp.Components.Nodes.PTP_RD_EN_P2P_2S_SO;
import libptp.Components.Nodes.PTP_TC_P2P_2S_M3;
import libptp.Components.Utilities.TimeDiffObserver.TimeDiffObserver;


network GM_case_4m_transparent
{
    @display("bgl=12;bgb=2976,1033");
    types:
    submodules:
        // Observers
        timeDiff_CTRL1_EPS: TimeDiffObserver {
            @display("p=952,655");
            ClockPath1 = default("^.CTRL1.NIC.Clock");
            ClockPath2 = default("^.EPS.Clock");
        }

        timeDiff_IMU1_MAPLOC: TimeDiffObserver {
            @display("p=521,366");
            ClockPath1 = default("^.IMU1.Clock");
            ClockPath2 = default("^.MAPLOC.Clock");
        }

        // Master nodes
        CTRL1: PTP_EN_P2P_2S_M1 {
            parameters:
                PTP_Stack.DomainNumber = "DOMAIN_DEFAULT";
                @display("p=1900,475");
            gates:
                ethg[1];
        }
        CTRL2: PTP_EN_P2P_2S_M1 {
            parameters:
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_1";
                @display("p=1901,652");
            gates:
                ethg[1];
        }
        ECM: PTP_EN_P2P_2S_M1 {
            parameters:
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_2";
                @display("p=1247,409");
            gates:
                ethg[1];
        }
        EBCM: PTP_EN_P2P_2S_M1 {
            parameters:
                PTP_Stack.DomainNumber = "DOMAIN_ALTERNATE_3";
                @display("p=778,354");
            gates:
                ethg[1];
        }
        // Boundary nodes
        SW_B1: PTP_TC_P2P_2S_M3 {
            @display("p=2044,609");
            gates:
                ethg[6];
        }
        SW_B2: PTP_TC_P2P_2S_M3 {
            @display("p=1790,441");
            gates:
                ethg[5];
        }
        SW_B3: PTP_TC_P2P_2S_M3 {
            @display("p=1761,735");
            gates:
                ethg[6];
        }
        SW_B4: PTP_TC_P2P_2S_M3 {
            @display("p=1713,869");
            gates:
                ethg[5];
        }
        SW_B5: PTP_TC_P2P_2S_M3 {
            @display("p=2564,387");
            gates:
                ethg[5];
        }
        SW_B6: PTP_TC_P2P_2S_M3 {
            @display("p=1406,345");
            gates:
                ethg[5];
        }
        SW_B7: PTP_TC_P2P_2S_M3 {
            @display("p=1169,504");
            gates:
                ethg[5];
        }
        SW_B8: PTP_TC_P2P_2S_M3 {
            @display("p=580,162");
            gates:
                ethg[5];
        }
        SW_B9: PTP_TC_P2P_2S_M3 {
            @display("p=400,273");
            gates:
                ethg[5];
        }
        SW_B10: PTP_TC_P2P_2S_M3 {
            @display("p=1695,655");
            gates:
                ethg[5];
        }
        SW_B11: PTP_TC_P2P_2S_M3 {
            @display("p=2069,548");
            gates:
                ethg[5];
        }
        SW_B12: PTP_TC_P2P_2S_M3 {
            @display("p=1590,600");
            gates:
                ethg[5];
        }
        SW_B13: PTP_TC_P2P_2S_M3 {
            @display("p=2293,466");
            gates:
                ethg[7];
        }
        SW_B14: PTP_TC_P2P_2S_M3 {
            @display("p=2065,658");
            gates:
                ethg[5];
        }
        SW_B15: PTP_TC_P2P_2S_M3 {
            @display("p=2619,464");
            gates:
                ethg[5];
        }
        SW_B16: PTP_TC_P2P_2S_M3 {
            @display("p=607,249");
            gates:
                ethg[7];
        }
        SW_B17: PTP_TC_P2P_2S_M3 {
            @display("p=1039,366");
            gates:
                ethg[3];
        }
        SW_B18: PTP_TC_P2P_2S_M3 {
            @display("p=1773,564");
            gates:
                ethg[6];
        }
        SW_B19: PTP_TC_P2P_2S_M3 {
            @display("p=1865,550");
            gates:
                ethg[7];
        }
        SW_B20: PTP_TC_P2P_2S_M3 {
            @display("p=1449,465");
            gates:
                ethg[6];
        }
        // Slave nodes
        FRONT_CAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=2255,652");
            gates:
                ethg[4];
        }
        REAR_CAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=2747,332");
            gates:
                ethg[4];
        }
        FRONT_SVCAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=1838,348");
            gates:
                ethg[4];
        }
        LEFT_SVCAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=1815,828");
            gates:
                ethg[4];
        }
        RIGHT_SVCAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=1691,963");
            gates:
                ethg[4];
        }
        REAR_SVCAM: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=1377,251");
            gates:
                ethg[4];
        }
        FRONT_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=1560,731");
            gates:
                ethg[4];
        }
        LEFT_FRONT_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=2300,554");
            gates:
                ethg[4];
        }
        RIGHT_FRONT_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=1393,648");
            gates:
                ethg[4];
        }
        LEFT_REAR_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=2417,382");
            gates:
                ethg[4];
        }
        RIGHT_REAR_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=2212,734");
            gates:
                ethg[4];
        }
        REAR_RAD: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=2848,462");
            gates:
                ethg[4];
        }
        EPS: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=952,538");
            gates:
                ethg[4];
        }
        IMU1: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=422,69");
            gates:
                ethg[4];
        }
        IMU2: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=127,252");
            gates:
                ethg[4];
        }
        MAPLOC: PTP_RD_EN_P2P_2S_SO {
            parameters:
                PTP_Stack[0].DomainNumber = "DOMAIN_DEFAULT";
                PTP_Stack[0].RedundantVoting = true;
                PTP_Stack[1].DomainNumber = "DOMAIN_ALTERNATE_1";
                PTP_Stack[1].RedundantVoting = true;
                PTP_Stack[2].DomainNumber = "DOMAIN_ALTERNATE_2";
                PTP_Stack[2].RedundantVoting = true;
                PTP_Stack[3].DomainNumber = "DOMAIN_ALTERNATE_3";
                PTP_Stack[3].RedundantVoting = true;
                ClockServoAggregation = "FTA";
                @display("p=521,228");
            gates:
                ethg[4];
        }

    connections allowunconnected:
        FRONT_RAD.ethg[2] <--> GigabitCable1m <--> SW_B10.ethg[3];
        REAR_SVCAM.ethg[2] <--> GigabitCable1m <--> SW_B6.ethg[3];
        SW_B16.ethg[1] <--> GigabitCable1m <--> SW_B8.ethg[0];
        SW_B10.ethg[0] <--> GigabitCable1m <--> SW_B19.ethg[1];
        IMU1.ethg[3] <--> GigabitCable1m <--> SW_B8.ethg[4];
        SW_B16.ethg[0] <--> GigabitCable1m <--> SW_B17.ethg[1];
        SW_B12.ethg[0] <--> GigabitCable1m <--> SW_B19.ethg[2];
        SW_B17.ethg[0] <--> GigabitCable1m <--> SW_B20.ethg[3];
        SW_B13.ethg[2] <--> GigabitCable1m <--> SW_B15.ethg[0];
        LEFT_FRONT_RAD.ethg[1] <--> GigabitCable1m <--> SW_B11.ethg[2];
        SW_B3.ethg[1] <--> GigabitCable1m <--> SW_B4.ethg[0];
        SW_B13.ethg[0] <--> GigabitCable1m <--> SW_B19.ethg[3];
        IMU2.ethg[2] <--> GigabitCable1m <--> SW_B9.ethg[3];
        LEFT_REAR_RAD.ethg[0] <--> GigabitCable1m <--> SW_B13.ethg[3];
        //	 SW_B1.ethg[0] <--> GigabitCable1m <--> SW_B18.ethg[4];
        SW_B16.ethg[2] <--> GigabitCable1m <--> SW_B9.ethg[0];
        REAR_CAM.ethg[1] <--> GigabitCable1m <--> SW_B5.ethg[2];
        RIGHT_REAR_RAD.ethg[0] <--> GigabitCable1m <--> SW_B14.ethg[1];
        SW_B18.ethg[5] <--> GigabitCable1m <--> SW_B20.ethg[4];
        MAPLOC.ethg[1] <--> GigabitCable1m <--> SW_B16.ethg[4];
        SW_B13.ethg[1] <--> GigabitCable1m <--> SW_B5.ethg[0];
        SW_B14.ethg[0] <--> GigabitCable1m <--> SW_B19.ethg[4];
        LEFT_FRONT_RAD.ethg[3] <--> GigabitCable1m <--> SW_B11.ethg[4];
        SW_B20.ethg[2] <--> GigabitCable1m <--> SW_B7.ethg[0];
        LEFT_REAR_RAD.ethg[2] <--> GigabitCable1m <--> SW_B13.ethg[5];
        SW_B1.ethg[0] <--> GigabitCable1m <--> SW_B18.ethg[1];
        REAR_CAM.ethg[3] <--> GigabitCable1m <--> SW_B5.ethg[4];
        RIGHT_REAR_RAD.ethg[2] <--> GigabitCable1m <--> SW_B14.ethg[3];
        RIGHT_FRONT_RAD.ethg[1] <--> GigabitCable1m <--> SW_B12.ethg[2];
        SW_B18.ethg[2] <--> GigabitCable1m <--> SW_B2.ethg[0];
        SW_B18.ethg[3] <--> GigabitCable1m <--> SW_B3.ethg[0];
        //	 SW_B1.ethg[1] <--> GigabitCable1m <--> SW_B19.ethg[2];
        SW_B11.ethg[0] <--> GigabitCable1m <--> SW_B18.ethg[4];
        FRONT_SVCAM.ethg[1] <--> GigabitCable1m <--> SW_B2.ethg[2];
        LEFT_SVCAM.ethg[1] <--> GigabitCable1m <--> SW_B3.ethg[3];
        RIGHT_SVCAM.ethg[2] <--> GigabitCable1m <--> SW_B4.ethg[3];
        FRONT_CAM.ethg[3] <--> GigabitCable1m <--> SW_B1.ethg[5];
        EPS.ethg[1] <--> GigabitCable1m <--> SW_B7.ethg[2];
        RIGHT_FRONT_RAD.ethg[3] <--> GigabitCable1m <--> SW_B12.ethg[4];
        SW_B20.ethg[1] <--> GigabitCable1m <--> SW_B6.ethg[0];
        LEFT_SVCAM.ethg[3] <--> GigabitCable1m <--> SW_B3.ethg[5];
        CTRL1.ethg[0] <--> GigabitCable1m <--> SW_B18.ethg[0];
        EPS.ethg[3] <--> GigabitCable1m <--> SW_B7.ethg[4];
        EBCM.ethg[0] <--> GigabitCable1m <--> SW_B17.ethg[2];
        IMU2.ethg[1] <--> GigabitCable1m <--> SW_B9.ethg[2];
        CTRL2.ethg[0] <--> GigabitCable1m <--> SW_B19.ethg[6];
        REAR_RAD.ethg[0] <--> GigabitCable1m <--> SW_B15.ethg[1];
        FRONT_CAM.ethg[0] <--> GigabitCable1m <--> SW_B1.ethg[2];
        MAPLOC.ethg[3] <--> GigabitCable1m <--> SW_B16.ethg[6];
        IMU1.ethg[0] <--> GigabitCable1m <--> SW_B8.ethg[1];
        IMU2.ethg[3] <--> GigabitCable1m <--> SW_B9.ethg[4];
        LEFT_REAR_RAD.ethg[1] <--> GigabitCable1m <--> SW_B13.ethg[4];
        SW_B19.ethg[5] <--> GigabitCable1m <--> SW_B20.ethg[0];
        RIGHT_REAR_RAD.ethg[1] <--> GigabitCable1m <--> SW_B14.ethg[2];
        REAR_RAD.ethg[2] <--> GigabitCable1m <--> SW_B15.ethg[3];
        FRONT_RAD.ethg[1] <--> GigabitCable1m <--> SW_B10.ethg[2];
        SW_B1.ethg[1] <--> GigabitCable1m <--> SW_B19.ethg[0];
        REAR_SVCAM.ethg[1] <--> GigabitCable1m <--> SW_B6.ethg[2];
        RIGHT_SVCAM.ethg[1] <--> GigabitCable1m <--> SW_B4.ethg[2];
        FRONT_CAM.ethg[2] <--> GigabitCable1m <--> SW_B1.ethg[4];
        IMU1.ethg[2] <--> GigabitCable1m <--> SW_B8.ethg[3];
        FRONT_SVCAM.ethg[3] <--> GigabitCable1m <--> SW_B2.ethg[4];
        LEFT_REAR_RAD.ethg[3] <--> GigabitCable1m <--> SW_B13.ethg[6];
        RIGHT_REAR_RAD.ethg[3] <--> GigabitCable1m <--> SW_B14.ethg[4];
        FRONT_RAD.ethg[3] <--> GigabitCable1m <--> SW_B10.ethg[4];
        //	 SW_B1.ethg[1] <--> GigabitCable1m <--> SW_B19.ethg[3];
        REAR_SVCAM.ethg[3] <--> GigabitCable1m <--> SW_B6.ethg[4];
        LEFT_FRONT_RAD.ethg[0] <--> GigabitCable1m <--> SW_B11.ethg[1];
        RIGHT_SVCAM.ethg[3] <--> GigabitCable1m <--> SW_B4.ethg[4];
        REAR_CAM.ethg[0] <--> GigabitCable1m <--> SW_B5.ethg[1];
        MAPLOC.ethg[0] <--> GigabitCable1m <--> SW_B16.ethg[3];
        LEFT_FRONT_RAD.ethg[2] <--> GigabitCable1m <--> SW_B11.ethg[3];
        IMU2.ethg[0] <--> GigabitCable1m <--> SW_B9.ethg[1];
        ECM.ethg[0] <--> GigabitCable1m <--> SW_B20.ethg[5];
        REAR_CAM.ethg[2] <--> GigabitCable1m <--> SW_B5.ethg[3];
        RIGHT_FRONT_RAD.ethg[0] <--> GigabitCable1m <--> SW_B12.ethg[1];
        MAPLOC.ethg[2] <--> GigabitCable1m <--> SW_B16.ethg[5];
        FRONT_SVCAM.ethg[0] <--> GigabitCable1m <--> SW_B2.ethg[1];
        LEFT_SVCAM.ethg[0] <--> GigabitCable1m <--> SW_B3.ethg[2];
        REAR_RAD.ethg[1] <--> GigabitCable1m <--> SW_B15.ethg[2];
        EPS.ethg[0] <--> GigabitCable1m <--> SW_B7.ethg[1];
        //	 SW_B18.ethg[5] <--> GigabitCable1m <--> SW_B2.ethg[0];
        FRONT_RAD.ethg[0] <--> GigabitCable1m <--> SW_B10.ethg[1];
        //	 SW_B1.ethg[1] <--> GigabitCable1m <--> SW_B19.ethg[1];
        RIGHT_FRONT_RAD.ethg[2] <--> GigabitCable1m <--> SW_B12.ethg[3];
        REAR_SVCAM.ethg[0] <--> GigabitCable1m <--> SW_B6.ethg[1];
        RIGHT_SVCAM.ethg[0] <--> GigabitCable1m <--> SW_B4.ethg[1];
        FRONT_CAM.ethg[1] <--> GigabitCable1m <--> SW_B1.ethg[3];
        IMU1.ethg[1] <--> GigabitCable1m <--> SW_B8.ethg[2];
        FRONT_SVCAM.ethg[2] <--> GigabitCable1m <--> SW_B2.ethg[3];
        LEFT_SVCAM.ethg[2] <--> GigabitCable1m <--> SW_B3.ethg[4];
        REAR_RAD.ethg[3] <--> GigabitCable1m <--> SW_B15.ethg[4];
        EPS.ethg[2] <--> GigabitCable1m <--> SW_B7.ethg[3];
}
