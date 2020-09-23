// You will probably want to change this package name to something suitable
package multidomain.simulations.GM_case;

import libptp.Components.Nodes.*;
import libptp.Components.Cables.*;
import multidomain.*;

network GMCase
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
	ECM: RedundantPTPSlave {
		parameters:
			@display("p=1443,666");
	}
	EBCM: RedundantPTPSlave {
		parameters:
			@display("p=1554,666");
	}
	EPS: RedundantPTPSlave {
		parameters:
			@display("p=1665,666");
	}
	IMU1: RedundantPTPSlave {
		parameters:
			@display("p=1776,666");
	}
	IMU2: RedundantPTPSlave {
		parameters:
			@display("p=1887,666");
	}
	MAPLOC: RedundantPTPSlave {
		parameters:
			@display("p=1998,666");
	}

	connections allowunconnected:
	 SW_B20.ethg[1] <--> GigabitCable20cm <--> SW_B6.ethg[0];
	 SW_B14.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[15];
	 SW_B13.ethg[11] <--> GigabitCable20cm <--> SW_B5.ethg[10];
	 SW_B18.ethg[2] <--> GigabitCable20cm <--> SW_B2.ethg[0];
	 SW_B12.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[13];
	 SW_B3.ethg[11] <--> GigabitCable20cm <--> SW_B4.ethg[10];
	 SW_B20.ethg[2] <--> GigabitCable20cm <--> SW_B7.ethg[0];
	 FRONT_CAM.ethg[1] <--> GigabitCable20cm <--> SW_B1.ethg[12];
	 LEFT_FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B11.ethg[1];
	 MAPLOC.ethg[0] <--> GigabitCable20cm <--> SW_B16.ethg[3];
	 SW_B18.ethg[12] <--> GigabitCable20cm <--> SW_B3.ethg[10];
	 SW_B16.ethg[10] <--> GigabitCable20cm <--> SW_B17.ethg[11];
	 SW_B16.ethg[12] <--> GigabitCable20cm <--> SW_B9.ethg[10];
	 LEFT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B3.ethg[12];
	 SW_B13.ethg[2] <--> GigabitCable20cm <--> SW_B15.ethg[0];
	 IMU2.ethg[1] <--> GigabitCable20cm <--> SW_B9.ethg[11];
	 SW_B13.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[3];
	 RIGHT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B4.ethg[1];
	 SW_B19.ethg[16] <--> GigabitCable20cm <--> SW_B20.ethg[15];
	 RIGHT_FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B12.ethg[1];
	 CTRL1.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[0];
	 ECM.ethg[1] <--> GigabitCable20cm <--> SW_B20.ethg[14];
	 REAR_CAM.ethg[0] <--> GigabitCable20cm <--> SW_B5.ethg[1];
	 EBCM.ethg[1] <--> GigabitCable20cm <--> SW_B17.ethg[12];
	 REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B15.ethg[11];
	 FRONT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B2.ethg[1];
	 SW_B1.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[11];
	 LEFT_REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B13.ethg[3];
	 FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B10.ethg[11];
	 SW_B10.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[12];
	 SW_B13.ethg[1] <--> GigabitCable20cm <--> SW_B5.ethg[0];
	 SW_B12.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[2];
	 REAR_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B6.ethg[11];
	 FRONT_CAM.ethg[0] <--> GigabitCable20cm <--> SW_B1.ethg[2];
	 EPS.ethg[1] <--> GigabitCable20cm <--> SW_B7.ethg[11];
	 SW_B16.ethg[0] <--> GigabitCable20cm <--> SW_B17.ethg[1];
	 SW_B16.ethg[2] <--> GigabitCable20cm <--> SW_B9.ethg[0];
	 SW_B18.ethg[3] <--> GigabitCable20cm <--> SW_B3.ethg[0];
	 SW_B17.ethg[10] <--> GigabitCable20cm <--> SW_B20.ethg[13];
	 SW_B18.ethg[11] <--> GigabitCable20cm <--> SW_B2.ethg[10];
	 LEFT_FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B11.ethg[11];
	 MAPLOC.ethg[1] <--> GigabitCable20cm <--> SW_B16.ethg[13];
	 SW_B19.ethg[5] <--> GigabitCable20cm <--> SW_B20.ethg[0];
	 IMU1.ethg[0] <--> GigabitCable20cm <--> SW_B8.ethg[1];
	 SW_B16.ethg[11] <--> GigabitCable20cm <--> SW_B8.ethg[10];
	 SW_B13.ethg[10] <--> GigabitCable20cm <--> SW_B19.ethg[14];
	 ECM.ethg[0] <--> GigabitCable20cm <--> SW_B20.ethg[4];
	 RIGHT_REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B14.ethg[11];
	 SW_B14.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[4];
	 SW_B1.ethg[11] <--> GigabitCable20cm <--> SW_B18.ethg[10];
	 SW_B1.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[0];
	 SW_B3.ethg[1] <--> GigabitCable20cm <--> SW_B4.ethg[0];
	 SW_B18.ethg[14] <--> GigabitCable20cm <--> SW_B20.ethg[10];
	 SW_B11.ethg[10] <--> GigabitCable20cm <--> SW_B18.ethg[13];
	 LEFT_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B3.ethg[2];
	 FRONT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B2.ethg[11];
	 SW_B20.ethg[11] <--> GigabitCable20cm <--> SW_B6.ethg[10];
	 IMU2.ethg[0] <--> GigabitCable20cm <--> SW_B9.ethg[1];
	 SW_B20.ethg[12] <--> GigabitCable20cm <--> SW_B7.ethg[10];
	 EPS.ethg[0] <--> GigabitCable20cm <--> SW_B7.ethg[1];
	 SW_B17.ethg[0] <--> GigabitCable20cm <--> SW_B20.ethg[3];
	 SW_B13.ethg[12] <--> GigabitCable20cm <--> SW_B15.ethg[10];
	 CTRL2.ethg[1] <--> GigabitCable20cm <--> SW_B19.ethg[10];
	 RIGHT_SVCAM.ethg[1] <--> GigabitCable20cm <--> SW_B4.ethg[11];
	 EBCM.ethg[0] <--> GigabitCable20cm <--> SW_B17.ethg[2];
	 SW_B16.ethg[1] <--> GigabitCable20cm <--> SW_B8.ethg[0];
	 REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B15.ethg[1];
	 RIGHT_FRONT_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B12.ethg[11];
	 FRONT_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B10.ethg[1];
	 RIGHT_REAR_RAD.ethg[0] <--> GigabitCable20cm <--> SW_B14.ethg[1];
	 SW_B10.ethg[0] <--> GigabitCable20cm <--> SW_B19.ethg[1];
	 REAR_CAM.ethg[1] <--> GigabitCable20cm <--> SW_B5.ethg[11];
	 IMU1.ethg[1] <--> GigabitCable20cm <--> SW_B8.ethg[11];
	 SW_B1.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[1];
	 SW_B18.ethg[5] <--> GigabitCable20cm <--> SW_B20.ethg[5];
	 REAR_SVCAM.ethg[0] <--> GigabitCable20cm <--> SW_B6.ethg[1];
	 LEFT_REAR_RAD.ethg[1] <--> GigabitCable20cm <--> SW_B13.ethg[13];
	 SW_B11.ethg[0] <--> GigabitCable20cm <--> SW_B18.ethg[4];

}
