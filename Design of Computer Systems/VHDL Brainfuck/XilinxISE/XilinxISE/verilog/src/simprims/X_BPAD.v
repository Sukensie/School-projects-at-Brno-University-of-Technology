// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/versclibs/data/simprims/X_BPAD.v,v 1.5 2005/03/14 21:05:15 yanx Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 8.1i (I.13)
//  \   \         Description : Xilinx Timing Simulation Library Component
//  /   /                  Bi-Directional Pad
// /___/   /\     Filename : X_BPAD.v
// \   \  /  \    Timestamp : Thu Mar 25 16:43:53 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    03/11/05 - Add LOC paramter;
// End Revision

`timescale 1 ps/1 ps

module X_BPAD (PAD);

  inout PAD;
  parameter LOC = "UNPLACED";

endmodule
