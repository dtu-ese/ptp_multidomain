// You will probably want to change this package name to something suitable
package multidomain.simulations.GM_case_4m_transparent;

import libptp.Components.Nodes.*;
import libptp.Components.Cables.*;
import multidomain.*;
import libptp.Components.Utilities.TimeDiffObserver.TimeDiffObserver;


network GM_case_4m_transparent
{
	types:
	submodules:
	// Master nodes
	CTRL1: RedundantPTPMaster {
		parameters:
			@display("p=111,111");
	}
	CTRL2: RedundantPTPMaster {
		parameters:
			@display("p=222,111");
	}
	ECM: RedundantPTPMaster {
		parameters:
			@display("p=333,111");
	}
	EBCM: RedundantPTPMaster {
		parameters:
			@display("p=444,111");
	}
	// Boundary nodes
	SW_B1: RedundantPTPTransparent {
		parameters:
			@display("p=111,333");
	}
	SW_B2: RedundantPTPTransparent {
		parameters:
			@display("p=222,333");
	}
	SW_B3: RedundantPTPTransparent {
		parameters:
			@display("p=333,333");
	}
	SW_B4: RedundantPTPTransparent {
		parameters:
			@display("p=444,333");
	}
	SW_B5: RedundantPTPTransparent {
		parameters:
			@display("p=555,333");
	}
	SW_B6: RedundantPTPTransparent {
		parameters:
			@display("p=666,333");
	}
	SW_B7: RedundantPTPTransparent {
		parameters:
			@display("p=777,333");
	}
	SW_B8: RedundantPTPTransparent {
		parameters:
			@display("p=888,333");
	}
	SW_B9: RedundantPTPTransparent {
		parameters:
			@display("p=999,333");
	}
	SW_B10: RedundantPTPTransparent {
		parameters:
			@display("p=1110,333");
	}
	SW_B11: RedundantPTPTransparent {
		parameters:
			@display("p=1221,333");
	}
	SW_B12: RedundantPTPTransparent {
		parameters:
			@display("p=1332,333");
	}
	SW_B13: RedundantPTPTransparent {
		parameters:
			@display("p=1443,333");
	}
	SW_B14: RedundantPTPTransparent {
		parameters:
			@display("p=1554,333");
	}
	SW_B15: RedundantPTPTransparent {
		parameters:
			@display("p=1665,333");
	}
	SW_B16: RedundantPTPTransparent {
		parameters:
			@display("p=1776,333");
	}
	SW_B17: RedundantPTPTransparent {
		parameters:
			@display("p=1887,333");
	}
	SW_B18: RedundantPTPTransparent {
		parameters:
			@display("p=1998,333");
	}
	SW_B19: RedundantPTPTransparent {
		parameters:
			@display("p=2109,333");
	}
	SW_B20: RedundantPTPTransparent {
		parameters:
			@display("p=2220,333");
	}
	// Slave nodes
	FRONT_CAM: RedundantPTPSlave {
		parameters:
			@display("p=111,666");
	}
	REAR_CAM: RedundantPTPSlave {
		parameters:
			@display("p=222,666");
	}
	FRONT_SVCAM: RedundantPTPSlave {
		parameters:
			@display("p=333,666");
	}
	LEFT_SVCAM: RedundantPTPSlave {
		parameters:
			@display("p=444,666");
	}
	RIGHT_SVCAM: RedundantPTPSlave {
		parameters:
			@display("p=555,666");
	}
	REAR_SVCAM: RedundantPTPSlave {
		parameters:
			@display("p=666,666");
	}
	FRONT_RAD: RedundantPTPSlave {
		parameters:
			@display("p=777,666");
	}
	LEFT_FRONT_RAD: RedundantPTPSlave {
		parameters:
			@display("p=888,666");
	}
	RIGHT_FRONT_RAD: RedundantPTPSlave {
		parameters:
			@display("p=999,666");
	}
	LEFT_REAR_RAD: RedundantPTPSlave {
		parameters:
			@display("p=1110,666");
	}
	RIGHT_REAR_RAD: RedundantPTPSlave {
		parameters:
			@display("p=1221,666");
	}
	REAR_RAD: RedundantPTPSlave {
		parameters:
			@display("p=1332,666");
	}
	EPS: RedundantPTPSlave {
		parameters:
			@display("p=1443,666");
	}
	IMU1: RedundantPTPSlave {
		parameters:
			@display("p=1554,666");
	}
	IMU2: RedundantPTPSlave {
		parameters:
			@display("p=1665,666");
	}
	MAPLOC: RedundantPTPSlave {
		parameters:
			@display("p=1776,666");
	}
	// Observer nodes
	obs_FRONT_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=111,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.FRONT_RAD.Slave_1.NIC.Clock");
	}
	obs_FRONT_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=222,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.FRONT_RAD.Slave_1.NIC.Clock");
	}
	obs_RIGHT_FRONT_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=333,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.RIGHT_FRONT_RAD.Slave_1.NIC.Clock");
	}
	obs_RIGHT_FRONT_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=444,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.RIGHT_FRONT_RAD.Slave_1.NIC.Clock");
	}
	obs_REAR_CAM_CTRL1_1: TimeDiffObserver {
			@display("p=555,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.REAR_CAM.Slave_1.NIC.Clock");
	}
	obs_REAR_CAM_CTRL1_1: TimeDiffObserver {
			@display("p=666,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.REAR_CAM.Slave_1.NIC.Clock");
	}
	obs_REAR_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=777,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.REAR_RAD.Slave_1.NIC.Clock");
	}
	obs_REAR_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=888,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.REAR_RAD.Slave_1.NIC.Clock");
	}
	obs_LEFT_REAR_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=999,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.LEFT_REAR_RAD.Slave_1.NIC.Clock");
	}
	obs_LEFT_REAR_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=1110,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.LEFT_REAR_RAD.Slave_1.NIC.Clock");
	}
	obs_RIGHT_REAR_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=1221,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.RIGHT_REAR_RAD.Slave_1.NIC.Clock");
	}
	obs_RIGHT_REAR_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=1332,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.RIGHT_REAR_RAD.Slave_1.NIC.Clock");
	}
	obs_REAR_SVCAM_CTRL1_1: TimeDiffObserver {
			@display("p=1443,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.REAR_SVCAM.Slave_1.NIC.Clock");
	}
	obs_REAR_SVCAM_CTRL1_1: TimeDiffObserver {
			@display("p=1554,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.REAR_SVCAM.Slave_1.NIC.Clock");
	}
	obs_EPS_CTRL1_1: TimeDiffObserver {
			@display("p=1665,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.EPS.Slave_1.NIC.Clock");
	}
	obs_EPS_CTRL1_1: TimeDiffObserver {
			@display("p=1776,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.EPS.Slave_1.NIC.Clock");
	}
	obs_IMU1_CTRL1_1: TimeDiffObserver {
			@display("p=1887,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.IMU1.Slave_1.NIC.Clock");
	}
	obs_IMU1_CTRL1_1: TimeDiffObserver {
			@display("p=1998,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.IMU1.Slave_1.NIC.Clock");
	}
	obs_IMU2_CTRL1_1: TimeDiffObserver {
			@display("p=2109,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.IMU2.Slave_1.NIC.Clock");
	}
	obs_IMU2_CTRL1_1: TimeDiffObserver {
			@display("p=2220,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.IMU2.Slave_1.NIC.Clock");
	}
	obs_MAPLOC_CTRL1_1: TimeDiffObserver {
			@display("p=2331,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.MAPLOC.Slave_1.NIC.Clock");
	}
	obs_MAPLOC_CTRL1_1: TimeDiffObserver {
			@display("p=2442,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.MAPLOC.Slave_1.NIC.Clock");
	}
	obs_FRONT_CAM_CTRL1_1: TimeDiffObserver {
			@display("p=2553,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.FRONT_CAM.Slave_1.NIC.Clock");
	}
	obs_FRONT_CAM_CTRL1_1: TimeDiffObserver {
			@display("p=2664,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.FRONT_CAM.Slave_1.NIC.Clock");
	}
	obs_FRONT_SVCAM_CTRL1_1: TimeDiffObserver {
			@display("p=2775,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.FRONT_SVCAM.Slave_1.NIC.Clock");
	}
	obs_FRONT_SVCAM_CTRL1_1: TimeDiffObserver {
			@display("p=2886,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.FRONT_SVCAM.Slave_1.NIC.Clock");
	}
	obs_RIGHT_SVCAM_CTRL1_1: TimeDiffObserver {
			@display("p=2997,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.RIGHT_SVCAM.Slave_1.NIC.Clock");
	}
	obs_RIGHT_SVCAM_CTRL1_1: TimeDiffObserver {
			@display("p=3108,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.RIGHT_SVCAM.Slave_1.NIC.Clock");
	}
	obs_LEFT_SVCAM_CTRL1_1: TimeDiffObserver {
			@display("p=3219,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.LEFT_SVCAM.Slave_1.NIC.Clock");
	}
	obs_LEFT_SVCAM_CTRL1_1: TimeDiffObserver {
			@display("p=3330,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.LEFT_SVCAM.Slave_1.NIC.Clock");
	}
	obs_LEFT_FRONT_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=3441,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.LEFT_FRONT_RAD.Slave_1.NIC.Clock");
	}
	obs_LEFT_FRONT_RAD_CTRL1_1: TimeDiffObserver {
			@display("p=3552,333");
			ClockPath1 = default("^.CTRL1.Master_1.NIC.Clock");
			ClockPath2 = default("^.LEFT_FRONT_RAD.Slave_1.NIC.Clock");
	}
	obs_FRONT_SVCAM_CTRL2_2: TimeDiffObserver {
			@display("p=3663,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.FRONT_SVCAM.Slave_2.NIC.Clock");
	}
	obs_FRONT_SVCAM_CTRL2_2: TimeDiffObserver {
			@display("p=3774,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.FRONT_SVCAM.Slave_2.NIC.Clock");
	}
	obs_RIGHT_SVCAM_CTRL2_2: TimeDiffObserver {
			@display("p=3885,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.RIGHT_SVCAM.Slave_2.NIC.Clock");
	}
	obs_RIGHT_SVCAM_CTRL2_2: TimeDiffObserver {
			@display("p=3996,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.RIGHT_SVCAM.Slave_2.NIC.Clock");
	}
	obs_LEFT_SVCAM_CTRL2_2: TimeDiffObserver {
			@display("p=4107,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.LEFT_SVCAM.Slave_2.NIC.Clock");
	}
	obs_LEFT_SVCAM_CTRL2_2: TimeDiffObserver {
			@display("p=4218,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.LEFT_SVCAM.Slave_2.NIC.Clock");
	}
	obs_LEFT_FRONT_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=4329,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.LEFT_FRONT_RAD.Slave_2.NIC.Clock");
	}
	obs_LEFT_FRONT_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=4440,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.LEFT_FRONT_RAD.Slave_2.NIC.Clock");
	}
	obs_REAR_SVCAM_CTRL2_2: TimeDiffObserver {
			@display("p=4551,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.REAR_SVCAM.Slave_2.NIC.Clock");
	}
	obs_REAR_SVCAM_CTRL2_2: TimeDiffObserver {
			@display("p=4662,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.REAR_SVCAM.Slave_2.NIC.Clock");
	}
	obs_EPS_CTRL2_2: TimeDiffObserver {
			@display("p=4773,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.EPS.Slave_2.NIC.Clock");
	}
	obs_EPS_CTRL2_2: TimeDiffObserver {
			@display("p=4884,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.EPS.Slave_2.NIC.Clock");
	}
	obs_IMU1_CTRL2_2: TimeDiffObserver {
			@display("p=4995,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.IMU1.Slave_2.NIC.Clock");
	}
	obs_IMU1_CTRL2_2: TimeDiffObserver {
			@display("p=5106,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.IMU1.Slave_2.NIC.Clock");
	}
	obs_IMU2_CTRL2_2: TimeDiffObserver {
			@display("p=5217,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.IMU2.Slave_2.NIC.Clock");
	}
	obs_IMU2_CTRL2_2: TimeDiffObserver {
			@display("p=5328,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.IMU2.Slave_2.NIC.Clock");
	}
	obs_MAPLOC_CTRL2_2: TimeDiffObserver {
			@display("p=5439,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.MAPLOC.Slave_2.NIC.Clock");
	}
	obs_MAPLOC_CTRL2_2: TimeDiffObserver {
			@display("p=5550,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.MAPLOC.Slave_2.NIC.Clock");
	}
	obs_FRONT_CAM_CTRL2_2: TimeDiffObserver {
			@display("p=5661,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.FRONT_CAM.Slave_2.NIC.Clock");
	}
	obs_FRONT_CAM_CTRL2_2: TimeDiffObserver {
			@display("p=5772,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.FRONT_CAM.Slave_2.NIC.Clock");
	}
	obs_FRONT_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=5883,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.FRONT_RAD.Slave_2.NIC.Clock");
	}
	obs_FRONT_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=5994,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.FRONT_RAD.Slave_2.NIC.Clock");
	}
	obs_RIGHT_FRONT_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=6105,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.RIGHT_FRONT_RAD.Slave_2.NIC.Clock");
	}
	obs_RIGHT_FRONT_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=6216,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.RIGHT_FRONT_RAD.Slave_2.NIC.Clock");
	}
	obs_REAR_CAM_CTRL2_2: TimeDiffObserver {
			@display("p=6327,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.REAR_CAM.Slave_2.NIC.Clock");
	}
	obs_REAR_CAM_CTRL2_2: TimeDiffObserver {
			@display("p=6438,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.REAR_CAM.Slave_2.NIC.Clock");
	}
	obs_REAR_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=6549,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.REAR_RAD.Slave_2.NIC.Clock");
	}
	obs_REAR_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=6660,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.REAR_RAD.Slave_2.NIC.Clock");
	}
	obs_LEFT_REAR_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=6771,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.LEFT_REAR_RAD.Slave_2.NIC.Clock");
	}
	obs_LEFT_REAR_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=6882,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.LEFT_REAR_RAD.Slave_2.NIC.Clock");
	}
	obs_RIGHT_REAR_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=6993,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.RIGHT_REAR_RAD.Slave_2.NIC.Clock");
	}
	obs_RIGHT_REAR_RAD_CTRL2_2: TimeDiffObserver {
			@display("p=7104,333");
			ClockPath1 = default("^.CTRL2.Master_2.NIC.Clock");
			ClockPath2 = default("^.RIGHT_REAR_RAD.Slave_2.NIC.Clock");
	}
	obs_REAR_SVCAM_ECM_3: TimeDiffObserver {
			@display("p=7215,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.REAR_SVCAM.Slave_3.NIC.Clock");
	}
	obs_REAR_SVCAM_ECM_3: TimeDiffObserver {
			@display("p=7326,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.REAR_SVCAM.Slave_3.NIC.Clock");
	}
	obs_EPS_ECM_3: TimeDiffObserver {
			@display("p=7437,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.EPS.Slave_3.NIC.Clock");
	}
	obs_EPS_ECM_3: TimeDiffObserver {
			@display("p=7548,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.EPS.Slave_3.NIC.Clock");
	}
	obs_IMU1_ECM_3: TimeDiffObserver {
			@display("p=7659,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.IMU1.Slave_3.NIC.Clock");
	}
	obs_IMU1_ECM_3: TimeDiffObserver {
			@display("p=7770,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.IMU1.Slave_3.NIC.Clock");
	}
	obs_IMU2_ECM_3: TimeDiffObserver {
			@display("p=7881,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.IMU2.Slave_3.NIC.Clock");
	}
	obs_IMU2_ECM_3: TimeDiffObserver {
			@display("p=7992,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.IMU2.Slave_3.NIC.Clock");
	}
	obs_MAPLOC_ECM_3: TimeDiffObserver {
			@display("p=8103,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.MAPLOC.Slave_3.NIC.Clock");
	}
	obs_MAPLOC_ECM_3: TimeDiffObserver {
			@display("p=8214,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.MAPLOC.Slave_3.NIC.Clock");
	}
	obs_FRONT_RAD_ECM_3: TimeDiffObserver {
			@display("p=8325,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.FRONT_RAD.Slave_3.NIC.Clock");
	}
	obs_FRONT_RAD_ECM_3: TimeDiffObserver {
			@display("p=8436,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.FRONT_RAD.Slave_3.NIC.Clock");
	}
	obs_RIGHT_FRONT_RAD_ECM_3: TimeDiffObserver {
			@display("p=8547,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.RIGHT_FRONT_RAD.Slave_3.NIC.Clock");
	}
	obs_RIGHT_FRONT_RAD_ECM_3: TimeDiffObserver {
			@display("p=8658,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.RIGHT_FRONT_RAD.Slave_3.NIC.Clock");
	}
	obs_REAR_CAM_ECM_3: TimeDiffObserver {
			@display("p=8769,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.REAR_CAM.Slave_3.NIC.Clock");
	}
	obs_REAR_CAM_ECM_3: TimeDiffObserver {
			@display("p=8880,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.REAR_CAM.Slave_3.NIC.Clock");
	}
	obs_REAR_RAD_ECM_3: TimeDiffObserver {
			@display("p=8991,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.REAR_RAD.Slave_3.NIC.Clock");
	}
	obs_REAR_RAD_ECM_3: TimeDiffObserver {
			@display("p=9102,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.REAR_RAD.Slave_3.NIC.Clock");
	}
	obs_LEFT_REAR_RAD_ECM_3: TimeDiffObserver {
			@display("p=9213,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.LEFT_REAR_RAD.Slave_3.NIC.Clock");
	}
	obs_LEFT_REAR_RAD_ECM_3: TimeDiffObserver {
			@display("p=9324,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.LEFT_REAR_RAD.Slave_3.NIC.Clock");
	}
	obs_RIGHT_REAR_RAD_ECM_3: TimeDiffObserver {
			@display("p=9435,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.RIGHT_REAR_RAD.Slave_3.NIC.Clock");
	}
	obs_RIGHT_REAR_RAD_ECM_3: TimeDiffObserver {
			@display("p=9546,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.RIGHT_REAR_RAD.Slave_3.NIC.Clock");
	}
	obs_FRONT_CAM_ECM_3: TimeDiffObserver {
			@display("p=9657,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.FRONT_CAM.Slave_3.NIC.Clock");
	}
	obs_FRONT_CAM_ECM_3: TimeDiffObserver {
			@display("p=9768,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.FRONT_CAM.Slave_3.NIC.Clock");
	}
	obs_FRONT_SVCAM_ECM_3: TimeDiffObserver {
			@display("p=9879,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.FRONT_SVCAM.Slave_3.NIC.Clock");
	}
	obs_FRONT_SVCAM_ECM_3: TimeDiffObserver {
			@display("p=9990,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.FRONT_SVCAM.Slave_3.NIC.Clock");
	}
	obs_RIGHT_SVCAM_ECM_3: TimeDiffObserver {
			@display("p=10101,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.RIGHT_SVCAM.Slave_3.NIC.Clock");
	}
	obs_RIGHT_SVCAM_ECM_3: TimeDiffObserver {
			@display("p=10212,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.RIGHT_SVCAM.Slave_3.NIC.Clock");
	}
	obs_LEFT_SVCAM_ECM_3: TimeDiffObserver {
			@display("p=10323,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.LEFT_SVCAM.Slave_3.NIC.Clock");
	}
	obs_LEFT_SVCAM_ECM_3: TimeDiffObserver {
			@display("p=10434,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.LEFT_SVCAM.Slave_3.NIC.Clock");
	}
	obs_LEFT_FRONT_RAD_ECM_3: TimeDiffObserver {
			@display("p=10545,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.LEFT_FRONT_RAD.Slave_3.NIC.Clock");
	}
	obs_LEFT_FRONT_RAD_ECM_3: TimeDiffObserver {
			@display("p=10656,333");
			ClockPath1 = default("^.ECM.Master_3.NIC.Clock");
			ClockPath2 = default("^.LEFT_FRONT_RAD.Slave_3.NIC.Clock");
	}
	obs_IMU1_EBCM_4: TimeDiffObserver {
			@display("p=10767,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.IMU1.Slave_4.NIC.Clock");
	}
	obs_IMU1_EBCM_4: TimeDiffObserver {
			@display("p=10878,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.IMU1.Slave_4.NIC.Clock");
	}
	obs_IMU2_EBCM_4: TimeDiffObserver {
			@display("p=10989,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.IMU2.Slave_4.NIC.Clock");
	}
	obs_IMU2_EBCM_4: TimeDiffObserver {
			@display("p=11100,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.IMU2.Slave_4.NIC.Clock");
	}
	obs_MAPLOC_EBCM_4: TimeDiffObserver {
			@display("p=11211,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.MAPLOC.Slave_4.NIC.Clock");
	}
	obs_MAPLOC_EBCM_4: TimeDiffObserver {
			@display("p=11322,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.MAPLOC.Slave_4.NIC.Clock");
	}
	obs_REAR_SVCAM_EBCM_4: TimeDiffObserver {
			@display("p=11433,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.REAR_SVCAM.Slave_4.NIC.Clock");
	}
	obs_REAR_SVCAM_EBCM_4: TimeDiffObserver {
			@display("p=11544,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.REAR_SVCAM.Slave_4.NIC.Clock");
	}
	obs_EPS_EBCM_4: TimeDiffObserver {
			@display("p=11655,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.EPS.Slave_4.NIC.Clock");
	}
	obs_EPS_EBCM_4: TimeDiffObserver {
			@display("p=11766,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.EPS.Slave_4.NIC.Clock");
	}
	obs_FRONT_RAD_EBCM_4: TimeDiffObserver {
			@display("p=11877,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.FRONT_RAD.Slave_4.NIC.Clock");
	}
	obs_FRONT_RAD_EBCM_4: TimeDiffObserver {
			@display("p=11988,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.FRONT_RAD.Slave_4.NIC.Clock");
	}
	obs_RIGHT_FRONT_RAD_EBCM_4: TimeDiffObserver {
			@display("p=12099,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.RIGHT_FRONT_RAD.Slave_4.NIC.Clock");
	}
	obs_RIGHT_FRONT_RAD_EBCM_4: TimeDiffObserver {
			@display("p=12210,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.RIGHT_FRONT_RAD.Slave_4.NIC.Clock");
	}
	obs_REAR_CAM_EBCM_4: TimeDiffObserver {
			@display("p=12321,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.REAR_CAM.Slave_4.NIC.Clock");
	}
	obs_REAR_CAM_EBCM_4: TimeDiffObserver {
			@display("p=12432,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.REAR_CAM.Slave_4.NIC.Clock");
	}
	obs_REAR_RAD_EBCM_4: TimeDiffObserver {
			@display("p=12543,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.REAR_RAD.Slave_4.NIC.Clock");
	}
	obs_REAR_RAD_EBCM_4: TimeDiffObserver {
			@display("p=12654,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.REAR_RAD.Slave_4.NIC.Clock");
	}
	obs_LEFT_REAR_RAD_EBCM_4: TimeDiffObserver {
			@display("p=12765,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.LEFT_REAR_RAD.Slave_4.NIC.Clock");
	}
	obs_LEFT_REAR_RAD_EBCM_4: TimeDiffObserver {
			@display("p=12876,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.LEFT_REAR_RAD.Slave_4.NIC.Clock");
	}
	obs_RIGHT_REAR_RAD_EBCM_4: TimeDiffObserver {
			@display("p=12987,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.RIGHT_REAR_RAD.Slave_4.NIC.Clock");
	}
	obs_RIGHT_REAR_RAD_EBCM_4: TimeDiffObserver {
			@display("p=13098,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.RIGHT_REAR_RAD.Slave_4.NIC.Clock");
	}
	obs_FRONT_CAM_EBCM_4: TimeDiffObserver {
			@display("p=13209,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.FRONT_CAM.Slave_4.NIC.Clock");
	}
	obs_FRONT_CAM_EBCM_4: TimeDiffObserver {
			@display("p=13320,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.FRONT_CAM.Slave_4.NIC.Clock");
	}
	obs_FRONT_SVCAM_EBCM_4: TimeDiffObserver {
			@display("p=13431,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.FRONT_SVCAM.Slave_4.NIC.Clock");
	}
	obs_FRONT_SVCAM_EBCM_4: TimeDiffObserver {
			@display("p=13542,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.FRONT_SVCAM.Slave_4.NIC.Clock");
	}
	obs_RIGHT_SVCAM_EBCM_4: TimeDiffObserver {
			@display("p=13653,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.RIGHT_SVCAM.Slave_4.NIC.Clock");
	}
	obs_RIGHT_SVCAM_EBCM_4: TimeDiffObserver {
			@display("p=13764,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.RIGHT_SVCAM.Slave_4.NIC.Clock");
	}
	obs_LEFT_SVCAM_EBCM_4: TimeDiffObserver {
			@display("p=13875,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.LEFT_SVCAM.Slave_4.NIC.Clock");
	}
	obs_LEFT_SVCAM_EBCM_4: TimeDiffObserver {
			@display("p=13986,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.LEFT_SVCAM.Slave_4.NIC.Clock");
	}
	obs_LEFT_FRONT_RAD_EBCM_4: TimeDiffObserver {
			@display("p=14097,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.LEFT_FRONT_RAD.Slave_4.NIC.Clock");
	}
	obs_LEFT_FRONT_RAD_EBCM_4: TimeDiffObserver {
			@display("p=14208,333");
			ClockPath1 = default("^.EBCM.Master_4.NIC.Clock");
			ClockPath2 = default("^.LEFT_FRONT_RAD.Slave_4.NIC.Clock");
	}

	connections allowunconnected:
	 SW_B3.ethg[31] <--> GigabitCable20cm <--> SW_B4.ethg[30];
	 SW_B14.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[15];
	 REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B15.ethg[1];
	 REAR_CAM.ethg[3] <--> GigabitCable20cm <--> SW_B5.ethg[31];
	 SW_B20.ethg[12] <--> GigabitCable20cm <--> SW_B7.ethg[10];
	 SW_B11.ethg[30] <--> GigabitCable20cm <--> SW_B18.ethg[34];
	 REAR_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B6.ethg[1];
	 LEFT_REAR_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B13.ethg[33];
	 MAPLOC.ethg[0] <--> GigabitCable20cm <--> SW_B16.ethg[3];
	 SW_B14.ethg[30] <--> GigabitCable20cm <--> SW_B19.ethg[34];
	 REAR_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B15.ethg[21];
	 SW_B18.ethg[12] <--> GigabitCable20cm <--> SW_B3.ethg[10];
	 LEFT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B3.ethg[2];
	 RIGHT_FRONT_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B12.ethg[31];
	 FRONT_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B10.ethg[21];
	 EPS.ethg[0] <--> GigabitCable20cm <--> SW_B7.ethg[1];
	 SW_B1.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[11];
	 SW_B13.ethg[12] <--> GigabitCable20cm <--> SW_B15.ethg[10];
	 IMU2.ethg[1] <--> GigabitCable20cm <--> SW_B9.ethg[11];
	 SW_B18.ethg[33] <--> GigabitCable20cm <--> SW_B3.ethg[30];
	 SW_B13.ethg[11] <--> GigabitCable20cm <--> SW_B5.ethg[10];
	 SW_B16.ethg[1] <--> GigabitCable20cm <--> SW_B8.ethg[0];
	 SW_B16.ethg[2] <--> GigabitCable20cm <--> SW_B9.ethg[0];
	 LEFT_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B3.ethg[22];
	 FRONT_CAM.ethg[1] <--> GigabitCable20cm <--> SW_B1.ethg[12];
	 SW_B1.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[1];
	 SW_B3.ethg[1] <--> GigabitCable20cm <--> SW_B4.ethg[0];
	 SW_B18.ethg[11] <--> GigabitCable20cm <--> SW_B2.ethg[10];
	 SW_B13.ethg[32] <--> GigabitCable20cm <--> SW_B15.ethg[30];
	 IMU2.ethg[3] <--> GigabitCable20cm <--> SW_B9.ethg[31];
	 REAR_CAM.ethg[0] <--> GigabitCable20cm <--> SW_B5.ethg[1];
	 SW_B13.ethg[31] <--> GigabitCable20cm <--> SW_B5.ethg[30];
	 ECM.ethg[2] <--> GigabitCable20cm <--> SW_B20.ethg[20];
	 SW_B16.ethg[21] <--> GigabitCable20cm <--> SW_B8.ethg[20];
	 SW_B19.ethg[16] <--> GigabitCable20cm <--> SW_B20.ethg[14];
	 SW_B11.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[4];
	 SW_B16.ethg[10] <--> GigabitCable20cm <--> SW_B17.ethg[11];
	 SW_B16.ethg[22] <--> GigabitCable20cm <--> SW_B9.ethg[20];
	 SW_B13.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[3];
	 SW_B20.ethg[11] <--> GigabitCable20cm <--> SW_B6.ethg[10];
	 IMU1.ethg[3] <--> GigabitCable20cm <--> SW_B8.ethg[31];
	 LEFT_REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B13.ethg[3];
	 RIGHT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B4.ethg[11];
	 FRONT_CAM.ethg[3] <--> GigabitCable20cm <--> SW_B1.ethg[32];
	 SW_B1.ethg[20] <--> GigabitCable20cm <--> SW_B18.ethg[21];
	 SW_B18.ethg[32] <--> GigabitCable20cm <--> SW_B2.ethg[30];
	 REAR_CAM.ethg[2] <--> GigabitCable20cm <--> SW_B5.ethg[21];
	 SW_B17.ethg[10] <--> GigabitCable20cm <--> SW_B20.ethg[13];
	 SW_B19.ethg[35] <--> GigabitCable20cm <--> SW_B20.ethg[34];
	 SW_B11.ethg[20] <--> GigabitCable20cm <--> SW_B18.ethg[24];
	 SW_B16.ethg[30] <--> GigabitCable20cm <--> SW_B17.ethg[31];
	 LEFT_FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B11.ethg[11];
	 SW_B13.ethg[20] <--> GigabitCable20cm <--> SW_B19.ethg[23];
	 SW_B20.ethg[31] <--> GigabitCable20cm <--> SW_B6.ethg[30];
	 SW_B20.ethg[32] <--> GigabitCable20cm <--> SW_B7.ethg[30];
	 SW_B18.ethg[5] <--> GigabitCable20cm <--> SW_B20.ethg[4];
	 RIGHT_FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B12.ethg[1];
	 LEFT_REAR_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B13.ethg[23];
	 RIGHT_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B4.ethg[31];
	 REAR_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B6.ethg[21];
	 REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B15.ethg[11];
	 SW_B18.ethg[3] <--> GigabitCable20cm <--> SW_B3.ethg[0];
	 MAPLOC.ethg[2] <--> GigabitCable20cm <--> SW_B16.ethg[23];
	 SW_B17.ethg[32] <--> GigabitCable20cm <--> SW_B20.ethg[30];
	 RIGHT_REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B14.ethg[11];
	 LEFT_FRONT_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B11.ethg[31];
	 SW_B12.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[2];
	 SW_B10.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[1];
	 SW_B18.ethg[20] <--> GigabitCable20cm <--> SW_B20.ethg[24];
	 RIGHT_FRONT_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B12.ethg[21];
	 FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B10.ethg[11];
	 SW_B13.ethg[2] <--> GigabitCable20cm <--> SW_B15.ethg[0];
	 IMU2.ethg[0] <--> GigabitCable20cm <--> SW_B9.ethg[1];
	 FRONT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B2.ethg[11];
	 EPS.ethg[2] <--> GigabitCable20cm <--> SW_B7.ethg[21];
	 REAR_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B15.ethg[31];
	 SW_B18.ethg[23] <--> GigabitCable20cm <--> SW_B3.ethg[20];
	 SW_B1.ethg[31] <--> GigabitCable20cm <--> SW_B19.ethg[30];
	 SW_B13.ethg[1] <--> GigabitCable20cm <--> SW_B5.ethg[0];
	 RIGHT_REAR_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B14.ethg[31];
	 IMU1.ethg[0] <--> GigabitCable20cm <--> SW_B8.ethg[1];
	 LEFT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B3.ethg[12];
	 SW_B12.ethg[20] <--> GigabitCable20cm <--> SW_B19.ethg[22];
	 SW_B10.ethg[20] <--> GigabitCable20cm <--> SW_B19.ethg[21];
	 FRONT_CAM.ethg[0] <--> GigabitCable20cm <--> SW_B1.ethg[2];
	 FRONT_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B10.ethg[31];
	 SW_B18.ethg[2] <--> GigabitCable20cm <--> SW_B2.ethg[0];
	 SW_B13.ethg[22] <--> GigabitCable20cm <--> SW_B15.ethg[20];
	 FRONT_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B2.ethg[31];
	 SW_B3.ethg[21] <--> GigabitCable20cm <--> SW_B4.ethg[20];
	 SW_B14.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[4];
	 SW_B13.ethg[21] <--> GigabitCable20cm <--> SW_B5.ethg[20];
	 SW_B20.ethg[2] <--> GigabitCable20cm <--> SW_B7.ethg[0];
	 IMU1.ethg[2] <--> GigabitCable20cm <--> SW_B8.ethg[21];
	 LEFT_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B3.ethg[32];
	 RIGHT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B4.ethg[1];
	 FRONT_CAM.ethg[2] <--> GigabitCable20cm <--> SW_B1.ethg[22];
	 SW_B1.ethg[11] <--> GigabitCable20cm <--> SW_B18.ethg[10];
	 SW_B18.ethg[22] <--> GigabitCable20cm <--> SW_B2.ethg[20];
	 REAR_CAM.ethg[1] <--> GigabitCable20cm <--> SW_B5.ethg[11];
	 SW_B14.ethg[20] <--> GigabitCable20cm <--> SW_B19.ethg[24];
	 SW_B17.ethg[0] <--> GigabitCable20cm <--> SW_B20.ethg[3];
	 LEFT_FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B11.ethg[1];
	 SW_B13.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[14];
	 SW_B20.ethg[22] <--> GigabitCable20cm <--> SW_B7.ethg[20];
	 LEFT_REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B13.ethg[13];
	 RIGHT_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B4.ethg[21];
	 REAR_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B6.ethg[11];
	 SW_B1.ethg[30] <--> GigabitCable20cm <--> SW_B18.ethg[31];
	 CTRL1.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[0];
	 MAPLOC.ethg[1] <--> GigabitCable20cm <--> SW_B16.ethg[13];
	 SW_B1.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[0];
	 EBCM.ethg[3] <--> GigabitCable20cm <--> SW_B17.ethg[30];
	 SW_B17.ethg[20] <--> GigabitCable20cm <--> SW_B20.ethg[23];
	 RIGHT_REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B14.ethg[1];
	 LEFT_FRONT_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B11.ethg[21];
	 SW_B13.ethg[30] <--> GigabitCable20cm <--> SW_B19.ethg[33];
	 SW_B18.ethg[14] <--> GigabitCable20cm <--> SW_B20.ethg[10];
	 CTRL2.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[10];
	 RIGHT_FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B12.ethg[11];
	 FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B10.ethg[1];
	 REAR_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B6.ethg[31];
	 FRONT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B2.ethg[1];
	 EPS.ethg[1] <--> GigabitCable20cm <--> SW_B7.ethg[11];
	 MAPLOC.ethg[3] <--> GigabitCable20cm <--> SW_B16.ethg[33];
	 SW_B1.ethg[21] <--> GigabitCable20cm <--> SW_B19.ethg[20];
	 IMU2.ethg[2] <--> GigabitCable20cm <--> SW_B9.ethg[21];
	 RIGHT_REAR_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B14.ethg[21];
	 SW_B16.ethg[11] <--> GigabitCable20cm <--> SW_B8.ethg[10];
	 SW_B19.ethg[5] <--> GigabitCable20cm <--> SW_B20.ethg[0];
	 SW_B12.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[13];
	 SW_B10.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[12];
	 SW_B16.ethg[0] <--> GigabitCable20cm <--> SW_B17.ethg[1];
	 SW_B16.ethg[12] <--> GigabitCable20cm <--> SW_B9.ethg[10];
	 SW_B18.ethg[30] <--> GigabitCable20cm <--> SW_B20.ethg[33];
	 SW_B20.ethg[1] <--> GigabitCable20cm <--> SW_B6.ethg[0];
	 FRONT_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B2.ethg[21];
	 SW_B3.ethg[11] <--> GigabitCable20cm <--> SW_B4.ethg[10];
	 EPS.ethg[3] <--> GigabitCable20cm <--> SW_B7.ethg[31];
	 IMU1.ethg[1] <--> GigabitCable20cm <--> SW_B8.ethg[11];
	 SW_B16.ethg[31] <--> GigabitCable20cm <--> SW_B8.ethg[30];
	 SW_B19.ethg[25] <--> GigabitCable20cm <--> SW_B20.ethg[25];
	 SW_B12.ethg[30] <--> GigabitCable20cm <--> SW_B19.ethg[32];
	 SW_B11.ethg[10] <--> GigabitCable20cm <--> SW_B18.ethg[13];
	 SW_B10.ethg[30] <--> GigabitCable20cm <--> SW_B19.ethg[31];
	 SW_B16.ethg[20] <--> GigabitCable20cm <--> SW_B17.ethg[21];
	 SW_B16.ethg[32] <--> GigabitCable20cm <--> SW_B9.ethg[30];
	 SW_B20.ethg[21] <--> GigabitCable20cm <--> SW_B6.ethg[20];
}