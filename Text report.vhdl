Release 14.2 - xst P.28xd (nt64)
Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--> Parameter TMPDIR set to xst/projnav.tmp


Total REAL time to Xst completion: 0.00 secs
Total CPU time to Xst completion: 0.10 secs
 
--> Parameter xsthdpdir set to xst


Total REAL time to Xst completion: 0.00 secs
Total CPU time to Xst completion: 0.10 secs
 
--> Reading design: VHDL.prj

TABLE OF CONTENTS
  1) Synthesis Options Summary
  2) HDL Compilation
  3) Design Hierarchy Analysis
  4) HDL Analysis
  5) HDL Synthesis
     5.1) HDL Synthesis Report
  6) Advanced HDL Synthesis
     6.1) Advanced HDL Synthesis Report
  7) Low Level Synthesis
  8) Partition Report
  9) Final Report
	9.1) Device utilization summary
	9.2) Partition Resource Summary
	9.3) TIMING REPORT


=========================================================================
*                      Synthesis Options Summary                        *
=========================================================================
---- Source Parameters
Input File Name                    : "VHDL.prj"
Input Format                       : mixed
Ignore Synthesis Constraint File   : NO

---- Target Parameters
Output File Name                   : "VHDL"
Output Format                      : NGC
Target Device                      : xc3s50-4-pq208

---- Source Options
Top Module Name                    : VHDL
Automatic FSM Extraction           : YES
FSM Encoding Algorithm             : Auto
Safe Implementation                : No
FSM Style                          : LUT
RAM Extraction                     : Yes
RAM Style                          : Auto
ROM Extraction                     : Yes
Mux Style                          : Auto
Decoder Extraction                 : YES
Priority Encoder Extraction        : Yes
Shift Register Extraction          : YES
Logical Shifter Extraction         : YES
XOR Collapsing                     : YES
ROM Style                          : Auto
Mux Extraction                     : Yes
Resource Sharing                   : YES
Asynchronous To Synchronous        : NO
Multiplier Style                   : Auto
Automatic Register Balancing       : No

---- Target Options
Add IO Buffers                     : YES
Global Maximum Fanout              : 100000
Add Generic Clock Buffer(BUFG)     : 8
Register Duplication               : YES
Slice Packing                      : YES
Optimize Instantiated Primitives   : NO
Use Clock Enable                   : Yes
Use Synchronous Set                : Yes
Use Synchronous Reset              : Yes
Pack IO Registers into IOBs        : Auto
Equivalent register Removal        : YES

---- General Options
Optimization Goal                  : Speed
Optimization Effort                : 1
Keep Hierarchy                     : No
Netlist Hierarchy                  : As_Optimized
RTL Output                         : Yes
Global Optimization                : AllClockNets
Read Cores                         : YES
Write Timing Constraints           : NO
Cross Clock Analysis               : NO
Hierarchy Separator                : /
Bus Delimiter                      : <>
Case Specifier                     : Maintain
Slice Utilization Ratio            : 100
BRAM Utilization Ratio             : 100
Verilog 2001                       : YES
Auto BRAM Packing                  : NO
Slice Utilization Ratio Delta      : 5

=========================================================================


=========================================================================
*                          HDL Compilation                              *
=========================================================================
Compiling vhdl file "F:/project/FIFO_Controler/controler.vhd" in Library work.
Entity <controler> compiled.
Entity <controler> (Architecture <behavioral>) compiled.
Compiling vhdl file "F:/project/FIFO_Controler/ram.vhd" in Library work.
Architecture behavioral of Entity ram is up to date.
Compiling vhdl file "F:/project/FIFO_Controler/VHDL.vhd" in Library work.
Architecture structural of Entity vhdl is up to date.

=========================================================================
*                     Design Hierarchy Analysis                         *
=========================================================================
Analyzing hierarchy for entity <VHDL> in library <work> (architecture <structural>).

Analyzing hierarchy for entity <controler> in library <work> (architecture <behavioral>).

Analyzing hierarchy for entity <Ram> in library <work> (architecture <behavioral>).


=========================================================================
*                            HDL Analysis                               *
=========================================================================
Analyzing Entity <VHDL> in library <work> (Architecture <structural>).
Entity <VHDL> analyzed. Unit <VHDL> generated.

Analyzing Entity <controler> in library <work> (Architecture <behavioral>).
Entity <controler> analyzed. Unit <controler> generated.

Analyzing Entity <Ram> in library <work> (Architecture <behavioral>).
Entity <Ram> analyzed. Unit <Ram> generated.


=========================================================================
*                           HDL Synthesis                               *
=========================================================================

Performing bidirectional port resolution...

Synthesizing Unit <controler>.
    Related source file is "F:/project/FIFO_Controler/controler.vhd".
    Found 1-bit register for signal <read_ord>.
    Found 1-bit register for signal <Write_ord>.
    Found 5-bit comparator equal for signal <empty_temp$cmp_eq0000> created at line 71.
    Found 5-bit up counter for signal <i>.
    Found 5-bit up counter for signal <j>.
    Found 1-bit register for signal <l_r>.
    Found 1-bit register for signal <l_w>.
    Summary:
	inferred   2 Counter(s).
	inferred   4 D-type flip-flop(s).
	inferred   1 Comparator(s).
Unit <controler> synthesized.


Synthesizing Unit <Ram>.
    Related source file is "F:/project/FIFO_Controler/ram.vhd".
    Found 32x8-bit dual-port RAM <Mram_ram> for signal <ram>.
    Found 8-bit register for signal <dta_out>.
    Summary:
	inferred   1 RAM(s).
	inferred   8 D-type flip-flop(s).
Unit <Ram> synthesized.


Synthesizing Unit <VHDL>.
    Related source file is "F:/project/FIFO_Controler/VHDL.vhd".
Unit <VHDL> synthesized.


=========================================================================
HDL Synthesis Report

Macro Statistics
# RAMs                                                 : 1
 32x8-bit dual-port RAM                                : 1
# Counters                                             : 2
 5-bit up counter                                      : 2
# Registers                                            : 5
 1-bit register                                        : 4
 8-bit register                                        : 1
# Comparators                                          : 1
 5-bit comparator equal                                : 1

=========================================================================

=========================================================================
*                       Advanced HDL Synthesis                          *
=========================================================================


Synthesizing (advanced) Unit <Ram>.
INFO:Xst:3231 - The small RAM <Mram_ram> will be implemented on LUTs in order to maximize performance and save block RAM resources. If you want to force its implementation on block, use option/constraint ram_style.
    -----------------------------------------------------------------------
    | ram_type           | Distributed                         |          |
    -----------------------------------------------------------------------
    | Port A                                                              |
    |     aspect ratio   | 32-word x 8-bit                     |          |
    |     clkA           | connected to signal <cr>            | rise     |
    |     weA            | connected to signal <write_ram_0>   | high     |
    |     addrA          | connected to signal <addrs_j>       |          |
    |     diA            | connected to signal <dta_in>        |          |
    -----------------------------------------------------------------------
    | Port B                                                              |
    |     aspect ratio   | 32-word x 8-bit                     |          |
    |     addrB          | connected to signal <addrs_i>       |          |
    |     doB            | connected to internal node          |          |
    -----------------------------------------------------------------------
Unit <Ram> synthesized (advanced).

=========================================================================
Advanced HDL Synthesis Report

Macro Statistics
# RAMs                                                 : 1
 32x8-bit dual-port distributed RAM                    : 1
# Counters                                             : 2
 5-bit up counter                                      : 2
# Registers                                            : 12
 Flip-Flops                                            : 12
# Comparators                                          : 1
 5-bit comparator equal                                : 1

=========================================================================

=========================================================================
*                         Low Level Synthesis                           *
=========================================================================

Optimizing unit <VHDL> ...

Optimizing unit <controler> ...

Optimizing unit <Ram> ...

Mapping all equations...
Building and optimizing final netlist ...
Found area constraint ratio of 100 (+ 5) on block VHDL, actual ratio is 3.
FlipFlop controler_temp/i_1 has been replicated 1 time(s)
FlipFlop controler_temp/i_2 has been replicated 1 time(s)
FlipFlop controler_temp/j_1 has been replicated 1 time(s)
FlipFlop controler_temp/j_2 has been replicated 1 time(s)
FlipFlop controler_temp/j_3 has been replicated 1 time(s)

Final Macro Processing ...

=========================================================================
Final Register Report

Macro Statistics
# Registers                                            : 27
 Flip-Flops                                            : 27

=========================================================================

=========================================================================
*                           Partition Report                            *
=========================================================================

Partition Implementation Status
-------------------------------

  No Partitions were found in this design.

-------------------------------

=========================================================================
*                            Final Report                               *
=========================================================================
Final Results
RTL Top Level Output File Name     : VHDL.ngr
Top Level Output File Name         : VHDL
Output Format                      : NGC
Optimization Goal                  : Speed
Keep Hierarchy                     : No

Design Statistics
# IOs                              : 21

Cell Usage :
# BELS                             : 41
#      INV                         : 3
#      LUT2                        : 4
#      LUT2_L                      : 3
#      LUT3                        : 14
#      LUT4                        : 11
#      LUT4_D                      : 1
#      LUT4_L                      : 3
#      MUXF5                       : 1
#      VCC                         : 1
# FlipFlops/Latches                : 27
#      FDE                         : 26
#      FDRE                        : 1
# RAMS                             : 16
#      RAM16X1D                    : 16
# Clock Buffers                    : 1
#      BUFGP                       : 1
# IO Buffers                       : 20
#      IBUF                        : 10
#      OBUF                        : 10
=========================================================================

Device utilization summary:
---------------------------

Selected Device : 3s50pq208-4 

 Number of Slices:                       32  out of    768     4%  
 Number of Slice Flip Flops:             27  out of   1536     1%  
 Number of 4 input LUTs:                 71  out of   1536     4%  
    Number used as logic:                39
    Number used as RAMs:                 32
 Number of IOs:                          21
 Number of bonded IOBs:                  21  out of    124    16%  
 Number of GCLKs:                         1  out of      8    12%  

---------------------------
Partition Resource Summary:
---------------------------

  No Partitions were found in this design.

---------------------------


=========================================================================
TIMING REPORT

NOTE: THESE TIMING NUMBERS ARE ONLY A SYNTHESIS ESTIMATE.
      FOR ACCURATE TIMING INFORMATION PLEASE REFER TO THE TRACE REPORT
      GENERATED AFTER PLACE-and-ROUTE.

Clock Information:
------------------
-----------------------------------+------------------------+-------+
Clock Signal                       | Clock buffer(FF name)  | Load  |
-----------------------------------+------------------------+-------+
clk                                | BUFGP                  | 43    |
-----------------------------------+------------------------+-------+

Asynchronous Control Signals Information:
----------------------------------------
No asynchronous control signals found in this design

Timing Summary:
---------------
Speed Grade: -4

   Minimum period: 6.984ns (Maximum Frequency: 143.184MHz)
   Minimum input arrival time before clock: 6.211ns
   Maximum output required time after clock: 12.219ns
   Maximum combinational path delay: No path found

Timing Detail:
--------------
All values displayed in nanoseconds (ns)

=========================================================================
Timing constraint: Default period analysis for Clock 'clk'
  Clock period: 6.984ns (frequency: 143.184MHz)
  Total number of paths / destination ports: 544 / 194
-------------------------------------------------------------------------
Delay:               6.984ns (Levels of Logic = 3)
  Source:            controler_temp/i_4 (FF)
  Destination:       controler_temp/read_ord (FF)
  Source Clock:      clk rising
  Destination Clock: clk rising

  Data Path: controler_temp/i_4 to controler_temp/read_ord
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     FDE:C->Q             10   0.720   1.160  controler_temp/i_4 (controler_temp/i_4)
     LUT4:I3->O            4   0.551   0.985  controler_temp/empty_temp_cmp_eq0000526 (controler_temp/empty_temp_cmp_eq0000526)
     LUT4:I2->O            4   0.551   0.917  controler_temp/empty_temp_cmp_eq0000578 (controler_temp/empty_temp_cmp_eq0000)
     MUXF5:S->O            2   0.621   0.877  controler_temp/Write_ord_not00012 (controler_temp/Write_ord_not0001)
     FDE:CE                    0.602          controler_temp/Write_ord
    ----------------------------------------
    Total                      6.984ns (3.045ns logic, 3.939ns route)
                                       (43.6% logic, 56.4% route)

=========================================================================
Timing constraint: Default OFFSET IN BEFORE for Clock 'clk'
  Total number of paths / destination ports: 54 / 39
-------------------------------------------------------------------------
Offset:              6.211ns (Levels of Logic = 3)
  Source:            Rd (PAD)
  Destination:       controler_temp/j_4 (FF)
  Destination Clock: clk rising

  Data Path: Rd to controler_temp/j_4
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     IBUF:I->O             9   0.821   1.463  Rd_IBUF (Rd_IBUF)
     LUT2:I0->O            1   0.551   1.140  controler_temp/full_temp_and00001_SW0 (N6)
     LUT4:I0->O            8   0.551   1.083  controler_temp/Write_ord_not000111 (controler_temp/j_not0001)
     FDE:CE                    0.602          controler_temp/j_0
    ----------------------------------------
    Total                      6.211ns (2.525ns logic, 3.686ns route)
                                       (40.7% logic, 59.3% route)

=========================================================================
Timing constraint: Default OFFSET OUT AFTER for Clock 'clk'
  Total number of paths / destination ports: 32 / 10
-------------------------------------------------------------------------
Offset:              12.219ns (Levels of Logic = 4)
  Source:            controler_temp/i_4 (FF)
  Destination:       full (PAD)
  Source Clock:      clk rising

  Data Path: controler_temp/i_4 to full
                                Gate     Net
    Cell:in->out      fanout   Delay   Delay  Logical Name (Net Name)
    ----------------------------------------  ------------
     FDE:C->Q             10   0.720   1.160  controler_temp/i_4 (controler_temp/i_4)
     LUT4:I3->O            4   0.551   0.985  controler_temp/empty_temp_cmp_eq0000526 (controler_temp/empty_temp_cmp_eq0000526)
     LUT4:I2->O            4   0.551   1.256  controler_temp/empty_temp_cmp_eq0000578 (controler_temp/empty_temp_cmp_eq0000)
     LUT3:I0->O            1   0.551   0.801  controler_temp/full_temp_and00001 (full_OBUF)
     OBUF:I->O                 5.644          full_OBUF (full)
    ----------------------------------------
    Total                     12.219ns (8.017ns logic, 4.202ns route)
                                       (65.6% logic, 34.4% route)

=========================================================================


Total REAL time to Xst completion: 6.00 secs
Total CPU time to Xst completion: 5.91 secs
 
--> 

Total memory usage is 285668 kilobytes

Number of errors   :    0 (   0 filtered)
Number of warnings :    0 (   0 filtered)
Number of infos    :    1 (   0 filtered)

