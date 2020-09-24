// You will probably want to change this package name to something suitable
package multidomain.simulations.GM_case_4m;

import libptp.Components.Nodes.*;
import libptp.Components.Cables.*;
import multidomain.*;

network GM_case_4m
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
	SW_B1: RedundantPTPBound {
		parameters:
			@display("p=111,333");
	}
	SW_B2: RedundantPTPBound {
		parameters:
			@display("p=222,333");
	}
	SW_B3: RedundantPTPBound {
		parameters:
			@display("p=333,333");
	}
	SW_B4: RedundantPTPBound {
		parameters:
			@display("p=444,333");
	}
	SW_B5: RedundantPTPBound {
		parameters:
			@display("p=555,333");
	}
	SW_B6: RedundantPTPBound {
		parameters:
			@display("p=666,333");
	}
	SW_B7: RedundantPTPBound {
		parameters:
			@display("p=777,333");
	}
	SW_B8: RedundantPTPBound {
		parameters:
			@display("p=888,333");
	}
	SW_B9: RedundantPTPBound {
		parameters:
			@display("p=999,333");
	}
	SW_B10: RedundantPTPBound {
		parameters:
			@display("p=1110,333");
	}
	SW_B11: RedundantPTPBound {
		parameters:
			@display("p=1221,333");
	}
	SW_B12: RedundantPTPBound {
		parameters:
			@display("p=1332,333");
	}
	SW_B13: RedundantPTPBound {
		parameters:
			@display("p=1443,333");
	}
	SW_B14: RedundantPTPBound {
		parameters:
			@display("p=1554,333");
	}
	SW_B15: RedundantPTPBound {
		parameters:
			@display("p=1665,333");
	}
	SW_B16: RedundantPTPBound {
		parameters:
			@display("p=1776,333");
	}
	SW_B17: RedundantPTPBound {
		parameters:
			@display("p=1887,333");
	}
	SW_B18: RedundantPTPBound {
		parameters:
			@display("p=1998,333");
	}
	SW_B19: RedundantPTPBound {
		parameters:
			@display("p=2109,333");
	}
	SW_B20: RedundantPTPBound {
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

	connections allowunconnected:
	 SW_B1.ethg[21] <--> GigabitCable20cm <--> SW_B19.ethg[20];
	 FRONT_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B2.ethg[21];
	 RIGHT_FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B12.ethg[1];
	 EPS.ethg[2] <--> GigabitCable20cm <--> SW_B7.ethg[21];
	 SW_B18.ethg[30] <--> GigabitCable20cm <--> SW_B20.ethg[33];
	 LEFT_FRONT_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B11.ethg[21];
	 SW_B3.ethg[11] <--> GigabitCable20cm <--> SW_B4.ethg[10];
	 SW_B13.ethg[2] <--> GigabitCable20cm <--> SW_B15.ethg[0];
	 CTRL2.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[10];
	 LEFT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B3.ethg[12];
	 RIGHT_FRONT_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B12.ethg[21];
	 RIGHT_REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B14.ethg[1];
	 SW_B16.ethg[2] <--> GigabitCable20cm <--> SW_B9.ethg[0];
	 SW_B13.ethg[1] <--> GigabitCable20cm <--> SW_B5.ethg[0];
	 SW_B20.ethg[12] <--> GigabitCable20cm <--> SW_B7.ethg[10];
	 SW_B1.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[1];
	 SW_B3.ethg[31] <--> GigabitCable20cm <--> SW_B4.ethg[30];
	 IMU2.ethg[0] <--> GigabitCable20cm <--> SW_B9.ethg[1];
	 SW_B14.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[15];
	 SW_B13.ethg[22] <--> GigabitCable20cm <--> SW_B15.ethg[20];
	 LEFT_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B3.ethg[32];
	 SW_B12.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[13];
	 LEFT_REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B13.ethg[13];
	 SW_B17.ethg[10] <--> GigabitCable20cm <--> SW_B20.ethg[13];
	 SW_B16.ethg[11] <--> GigabitCable20cm <--> SW_B8.ethg[10];
	 RIGHT_REAR_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B14.ethg[21];
	 SW_B13.ethg[21] <--> GigabitCable20cm <--> SW_B5.ethg[20];
	 REAR_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B6.ethg[1];
	 SW_B20.ethg[32] <--> GigabitCable20cm <--> SW_B7.ethg[30];
	 SW_B1.ethg[20] <--> GigabitCable20cm <--> SW_B18.ethg[21];
	 FRONT_CAM.ethg[1] <--> GigabitCable20cm <--> SW_B1.ethg[12];
	 IMU2.ethg[2] <--> GigabitCable20cm <--> SW_B9.ethg[21];
	 SW_B14.ethg[30] <--> GigabitCable20cm <--> SW_B19.ethg[34];
	 RIGHT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B4.ethg[11];
	 SW_B12.ethg[30] <--> GigabitCable20cm <--> SW_B19.ethg[32];
	 FRONT_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B10.ethg[31];
	 LEFT_REAR_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B13.ethg[33];
	 SW_B19.ethg[35] <--> GigabitCable20cm <--> SW_B20.ethg[34];
	 REAR_CAM.ethg[1] <--> GigabitCable20cm <--> SW_B5.ethg[11];
	 IMU1.ethg[3] <--> GigabitCable20cm <--> SW_B8.ethg[31];
	 SW_B17.ethg[32] <--> GigabitCable20cm <--> SW_B20.ethg[30];
	 SW_B16.ethg[31] <--> GigabitCable20cm <--> SW_B8.ethg[30];
	 SW_B18.ethg[3] <--> GigabitCable20cm <--> SW_B3.ethg[0];
	 SW_B18.ethg[5] <--> GigabitCable20cm <--> SW_B20.ethg[4];
	 REAR_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B6.ethg[21];
	 REAR_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B15.ethg[21];
	 MAPLOC.ethg[3] <--> GigabitCable20cm <--> SW_B16.ethg[33];
	 SW_B13.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[14];
	 RIGHT_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B4.ethg[31];
	 SW_B1.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[11];
	 REAR_CAM.ethg[3] <--> GigabitCable20cm <--> SW_B5.ethg[31];
	 SW_B18.ethg[23] <--> GigabitCable20cm <--> SW_B3.ethg[20];
	 SW_B18.ethg[20] <--> GigabitCable20cm <--> SW_B20.ethg[24];
	 LEFT_FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B11.ethg[11];
	 LEFT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B3.ethg[2];
	 SW_B13.ethg[30] <--> GigabitCable20cm <--> SW_B19.ethg[33];
	 SW_B18.ethg[11] <--> GigabitCable20cm <--> SW_B2.ethg[10];
	 SW_B1.ethg[31] <--> GigabitCable20cm <--> SW_B19.ethg[30];
	 SW_B10.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[1];
	 SW_B20.ethg[2] <--> GigabitCable20cm <--> SW_B7.ethg[0];
	 SW_B16.ethg[22] <--> GigabitCable20cm <--> SW_B9.ethg[20];
	 LEFT_FRONT_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B11.ethg[31];
	 SW_B14.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[4];
	 SW_B13.ethg[12] <--> GigabitCable20cm <--> SW_B15.ethg[10];
	 SW_B18.ethg[32] <--> GigabitCable20cm <--> SW_B2.ethg[30];
	 FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B10.ethg[1];
	 LEFT_REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B13.ethg[3];
	 SW_B19.ethg[5] <--> GigabitCable20cm <--> SW_B20.ethg[0];
	 ECM.ethg[2] <--> GigabitCable20cm <--> SW_B20.ethg[20];
	 SW_B20.ethg[11] <--> GigabitCable20cm <--> SW_B6.ethg[10];
	 IMU1.ethg[0] <--> GigabitCable20cm <--> SW_B8.ethg[1];
	 SW_B17.ethg[0] <--> GigabitCable20cm <--> SW_B20.ethg[3];
	 RIGHT_REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B14.ethg[11];
	 SW_B10.ethg[20] <--> GigabitCable20cm <--> SW_B19.ethg[21];
	 SW_B16.ethg[10] <--> GigabitCable20cm <--> SW_B17.ethg[11];
	 SW_B1.ethg[11] <--> GigabitCable20cm <--> SW_B18.ethg[10];
	 MAPLOC.ethg[0] <--> GigabitCable20cm <--> SW_B16.ethg[3];
	 SW_B11.ethg[10] <--> GigabitCable20cm <--> SW_B18.ethg[13];
	 SW_B14.ethg[20] <--> GigabitCable20cm <--> SW_B19.ethg[24];
	 SW_B13.ethg[32] <--> GigabitCable20cm <--> SW_B15.ethg[30];
	 FRONT_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B10.ethg[21];
	 LEFT_REAR_RAD.ethg[2] <--> GigabitCable20cm <--> SW_B13.ethg[23];
	 SW_B19.ethg[25] <--> GigabitCable20cm <--> SW_B20.ethg[25];
	 FRONT_CAM.ethg[3] <--> GigabitCable20cm <--> SW_B1.ethg[32];
	 SW_B20.ethg[31] <--> GigabitCable20cm <--> SW_B6.ethg[30];
	 FRONT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B2.ethg[11];
	 REAR_CAM.ethg[0] <--> GigabitCable20cm <--> SW_B5.ethg[1];
	 IMU1.ethg[2] <--> GigabitCable20cm <--> SW_B8.ethg[21];
	 REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B15.ethg[11];
	 SW_B16.ethg[30] <--> GigabitCable20cm <--> SW_B17.ethg[31];
	 EPS.ethg[1] <--> GigabitCable20cm <--> SW_B7.ethg[11];
	 MAPLOC.ethg[2] <--> GigabitCable20cm <--> SW_B16.ethg[23];
	 SW_B11.ethg[30] <--> GigabitCable20cm <--> SW_B18.ethg[34];
	 SW_B13.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[3];
	 SW_B3.ethg[1] <--> GigabitCable20cm <--> SW_B4.ethg[0];
	 SW_B1.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[0];
	 FRONT_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B2.ethg[31];
	 REAR_CAM.ethg[2] <--> GigabitCable20cm <--> SW_B5.ethg[21];
	 SW_B18.ethg[12] <--> GigabitCable20cm <--> SW_B3.ethg[10];
	 RIGHT_FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B12.ethg[11];
	 REAR_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B15.ethg[31];
	 EPS.ethg[3] <--> GigabitCable20cm <--> SW_B7.ethg[31];
	 SW_B13.ethg[20] <--> GigabitCable20cm <--> SW_B19.ethg[23];
	 SW_B3.ethg[21] <--> GigabitCable20cm <--> SW_B4.ethg[20];
	 SW_B18.ethg[2] <--> GigabitCable20cm <--> SW_B2.ethg[0];
	 LEFT_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B3.ethg[22];
	 SW_B12.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[2];
	 RIGHT_FRONT_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B12.ethg[31];
	 SW_B18.ethg[33] <--> GigabitCable20cm <--> SW_B3.ethg[30];
	 SW_B16.ethg[1] <--> GigabitCable20cm <--> SW_B8.ethg[0];
	 SW_B16.ethg[12] <--> GigabitCable20cm <--> SW_B9.ethg[10];
	 EBCM.ethg[3] <--> GigabitCable20cm <--> SW_B17.ethg[30];
	 SW_B13.ethg[11] <--> GigabitCable20cm <--> SW_B5.ethg[10];
	 SW_B20.ethg[22] <--> GigabitCable20cm <--> SW_B7.ethg[20];
	 SW_B18.ethg[22] <--> GigabitCable20cm <--> SW_B2.ethg[20];
	 FRONT_CAM.ethg[0] <--> GigabitCable20cm <--> SW_B1.ethg[2];
	 IMU2.ethg[1] <--> GigabitCable20cm <--> SW_B9.ethg[11];
	 RIGHT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B4.ethg[1];
	 SW_B20.ethg[1] <--> GigabitCable20cm <--> SW_B6.ethg[0];
	 SW_B12.ethg[20] <--> GigabitCable20cm <--> SW_B19.ethg[22];
	 SW_B10.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[12];
	 SW_B16.ethg[0] <--> GigabitCable20cm <--> SW_B17.ethg[1];
	 SW_B17.ethg[20] <--> GigabitCable20cm <--> SW_B20.ethg[23];
	 SW_B16.ethg[21] <--> GigabitCable20cm <--> SW_B8.ethg[20];
	 SW_B16.ethg[32] <--> GigabitCable20cm <--> SW_B9.ethg[30];
	 RIGHT_REAR_RAD.ethg[3] <--> GigabitCable20cm <--> SW_B14.ethg[31];
	 SW_B13.ethg[31] <--> GigabitCable20cm <--> SW_B5.ethg[30];
	 REAR_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B6.ethg[11];
	 SW_B11.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[4];
	 SW_B1.ethg[30] <--> GigabitCable20cm <--> SW_B18.ethg[31];
	 FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B10.ethg[11];
	 CTRL1.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[0];
	 SW_B19.ethg[16] <--> GigabitCable20cm <--> SW_B20.ethg[14];
	 FRONT_CAM.ethg[2] <--> GigabitCable20cm <--> SW_B1.ethg[22];
	 SW_B20.ethg[21] <--> GigabitCable20cm <--> SW_B6.ethg[20];
	 RIGHT_SVCAM.ethg[2] <--> GigabitCable20cm <--> SW_B4.ethg[21];
	 FRONT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B2.ethg[1];
	 IMU1.ethg[1] <--> GigabitCable20cm <--> SW_B8.ethg[11];
	 IMU2.ethg[3] <--> GigabitCable20cm <--> SW_B9.ethg[31];
	 SW_B10.ethg[30] <--> GigabitCable20cm <--> SW_B19.ethg[31];
	 REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B15.ethg[1];
	 SW_B16.ethg[20] <--> GigabitCable20cm <--> SW_B17.ethg[21];
	 EPS.ethg[0] <--> GigabitCable20cm <--> SW_B7.ethg[1];
	 SW_B18.ethg[14] <--> GigabitCable20cm <--> SW_B20.ethg[10];
	 REAR_SVCAM.ethg[3] <--> GigabitCable20cm <--> SW_B6.ethg[31];
	 LEFT_FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B11.ethg[1];
	 MAPLOC.ethg[1] <--> GigabitCable20cm <--> SW_B16.ethg[13];
	 SW_B11.ethg[20] <--> GigabitCable20cm <--> SW_B18.ethg[24];
}
