#---------------------------------------------------------------------------------
# Licensed Materials - Property of QuickLogic Corp.
# Copyright (C) 1995 - 2016 QuickLogic Corporation.
# All rights reserved. Use, duplication, or disclosure restricted.
#
# File : QLAL4S3B_cdl.cmd
#
# This file contains CDL netlist processing commands specific to device with 
# part name - QLAL4S3B. 
#--------------------------------------------------------------------------------
# define device part name
define_device_part ql732a 

# define top module
define_top_module psm

# define quad level modules
define_quad_module tlquad -location TL
define_quad_module trquad -location TR
define_quad_module blquad -location BL
define_quad_module brquad -location BR

# define jcb module name
define_jcb_module jcb

# define cells
define_macro_cell macro -type macro -WL 28 -BL 21

define_macro_cell macro_interface -type macro_interface -WL 28 -BL 21
define_macro_cell macro_interface_left -type macro_interface_l -WL 28 -BL 21
define_macro_cell macro_interface_right -type macro_interface_r -WL 28 -BL 21
define_macro_cell {macro_interface_top macro_interface_top_left macro_interface_top_right} -type macro_interface_t -WL 28 -BL 21

define_macro_cell macro_gclk -type macro_clk_1 -WL 28 -BL 21

define_macro_cell macro_clk -type macro_clk_2 -WL 28 -BL 21

# define bit name prefix
define_WL_prefix wl -alias {rwl lwl}
define_BL_prefix bl
define_WL_tst_prefix wl_tst
define_BL_tst_prefix bl_tst

# define WL/BL banks
define_WL_bank 0 -range {0 421} -WL_prefix {ttl_wl ttr_wl} -parent psm -rows {0 15}
define_WL_bank 1 -range {0 421} -WL_prefix {tbl_wl tbr_wl} -parent psm -rows {16 31}
define_BL_bank 0 -range {0 357} -BL_prefix {tl_tbl tl_bbl bl_tbl bl_bbl} -parent psm  -cols {0 16}
define_BL_bank 1 -range {0 357} -BL_prefix {tr_tbl tr_bbl br_tbl br_bbl} -parent psm  -cols {17 33}

# row/WL information
define_row {0 31} -WL_range {{},{1 28},{29 56},{57 84},{85 112},{113 140},{141 168},{169 196},{197 224},{225 252},{253 281},{282 309},{310 337},{338 365},{366 393},{394 421},{422 449},{450 477},{478 505},{506 533},{534 561},{562 589},{590 617},{618 645},{646 674},{675 702},{703 730},{731 758},{759 786},{787 814},{815 842},{}}
define_column {0 33} -BL_range {{1 21},{22 42},{43 63},{64 84},{85 105},{106 126},{127 147},{148 168},{169 189},{190 210},{211 231},{232 252},{253 273},{274 294},{295 315},{316 336},{337 357},{358 378},{379 399},{400 420},{421 441},{442 462},{463 483},{484 504},{505 525},{526 546},{547 567},{568 588},{589 609},{610 630},{631 651},{652 672},{673 693},{694 714}}

# define instance prefix for various types of instances
define_inst_prefix Ipwr_gates -type pwr_gate
define_inst_prefix "I_highway.IM" -type highway
define_inst_prefix "I_street.Isb" -type street
