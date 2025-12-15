
//
// Verific Verilog Description of module uart_top
//

module uart_top (clk, uart_rx_pin, uart_tx_pin);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(2)
    input uart_rx_pin /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(3)
    output uart_tx_pin /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(4)
    
    wire n1428_2;
    wire [1:0]n409_2;
    wire [7:0]n355_2;
    wire n1410_2;
    wire n996;
    wire n1001;
    wire n1088;
    wire n1090;
    wire n1092;
    wire [1:0]n409_3;
    wire [7:0]n355_3;
    wire [7:0]n355_4;
    wire [7:0]n355_5;
    wire [7:0]n355_6;
    wire [7:0]n355_7;
    wire [7:0]n355_8;
    wire [7:0]n355_9;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n60 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n58 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n56 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n54 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n52 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n50 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n48 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n46 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n26 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n44 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n42 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n40 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n2 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n4 ;
    wire [2:0]count;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(20)
    wire [3:0]byte_count;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(18)
    
    wire set;
    wire [1:0]state;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(17)
    
    wire tx_valid;
    wire [7:0]tx_byte;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(16)
    wire [79:0]out_data;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(15)
    wire [31:0]in_data;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(14)
    
    wire i_call, \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n38 ;
    wire [31:0]rx_store;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(19)
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n36 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n34 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n28 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n32 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n30 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n54 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n30 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n28 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n26 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n24 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n22 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n20 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n18 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n16 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n14 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n12 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n10 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n8 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n6 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n4 ;
    wire [30:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n60 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n24 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n58 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n56 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n54 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n52 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n50 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n18 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n48 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n46 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n44 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n42 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n40 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n38 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n36 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n34 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n32 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n30 ;
    wire [7:0]rx_byte;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(7)
    
    wire valid;
    wire [3:0]\rx_/bit_counter ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(22)
    wire [14:0]\rx_/BIT_PERIOD_COUNTER ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(23)
    wire [3:0]\rx_/state ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(21)
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n28 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n26 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n24 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n22 ;
    wire [3:0]\tx_/state ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(23)
    
    wire busy;
    wire [2:0]\tx_/bit_counter ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(25)
    wire [14:0]\tx_/baud_counter ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(26)
    wire [7:0]\tx_/tx_data_reg ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(24)
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n20 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n18 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n16 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n14 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n12 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n10 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n8 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n6 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n4 ;
    wire [29:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n58 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n56 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n54 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n52 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n50 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n6 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n2 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n14 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n48 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n46 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n44 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n42 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n40 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n38 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n36 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n34 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n32 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n30 ;
    wire [31:0]o_cos;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(9)
    wire [31:0]\sin_cos/o_deg ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(58)
    wire [31:0]\sin_cos/o_y ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(59)
    wire [31:0]\sin_cos/o_x ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(60)
    wire [7:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(416)
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos , o_done;
    wire [31:0]o_sin;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(8)
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n28 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n26 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n24 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n22 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n20 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n2 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n2 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n2 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n14 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n2 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n18 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n16 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n14 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n12 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n10 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n8 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n6 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n4 ;
    wire [30:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n60 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n58 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n56 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n54 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n52 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n50 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n48 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n46 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n44 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n42 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n40 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n38 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n36 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n34 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n32 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n30 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n28 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n26 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n24 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n22 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n20 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n18 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n16 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n14 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n12 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n10 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n8 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n6 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n4 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n62 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n60 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n58 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n56 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n54 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n52 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n50 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n48 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n46 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n44 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n42 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n40 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n38 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n36 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n34 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n32 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n30 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n28 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n26 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n24 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30] , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31] , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n52 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n62 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n60 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n58 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n22 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n20 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n18 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n16 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n62 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n60 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n58 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n56 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n54 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n52 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n50 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n48 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n46 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n44 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n42 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n40 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n38 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n36 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n34 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n32 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n30 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n28 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n26 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n24 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n22 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n20 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n18 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n16 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n14 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n32 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n34 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n12 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n36 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n10 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n50 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n8 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n6 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n48 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n4 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n38 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n46 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n40 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n42 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n44 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n62 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n42 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n62 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n60 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n44 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n40 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n58 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n46 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n56 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n48 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n38 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n36 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n50 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n34 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n52 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n32 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n54 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n16 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n52 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n50 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n48 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n56 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n46 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n44 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n42 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n40 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n38 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n36 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n34 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n32 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n30 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n28 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n26 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n24 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n22 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n20 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n20 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n18 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n54 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n56 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n58 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n30 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n28 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n60 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n26 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n62 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n24 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n22 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n20 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n16 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n4 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n6 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n18 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n16 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n8 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n14 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n14 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n10 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n12 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n12 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n10 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n8 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n22 , 
        n2483;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 ;
    
    wire n2484, \equal_112/n5 , ceg_net48, ceg_net56, ceg_net2, ceg_net50, 
        ceg_net51, ceg_net32, ceg_net33, ceg_net52, n1735_q, \rx_/n505 , 
        \rx_/n224 ;
    wire [3:0]\rx_/n167 ;
    
    wire ceg_net35;
    wire [14:0]\rx_/n230 ;
    wire [3:0]\rx_/n225 ;
    
    wire \rx_/n499 , \rx_/n498 , \rx_/n497 , \rx_/n496 , \rx_/n495 , 
        \rx_/n494 , \rx_/n508 , \rx_/n81 , \rx_/select_54/Select_2/n3 ;
    wire [3:0]\tx_/n198 ;
    
    wire \tx_/Select_36/n4 , \tx_/select_37/Select_0/n4 ;
    wire [14:0]\tx_/n173 ;
    
    wire \tx_/n483 , \tx_/n165 , \tx_/select_40/Select_2/n3 ;
    wire [2:0]\tx_/n169 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 ;
    wire [63:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 ;
    
    wire \~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 ;
    wire [7:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1107 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/n283 , ceg_net37, \sin_cos/u_efx_cordic/genblk1.u_sin_cos/n2307 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/n281 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/Select_100/n4 , 
        \~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_64/n11 , \~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_65/n11 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/select_92/Select_4/n32 ;
    wire [31:0]\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 ;
    
    wire \sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n143 , n1030, 
        n1038, n1046, \sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n135 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n134 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n133 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n130 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n135 , 
        \sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n134 , \sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n133 , 
        n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389, 
        n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, 
        n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, 
        n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, 
        n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, 
        n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429, 
        n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, 
        n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, 
        n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, 
        n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, 
        n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469, 
        n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, 
        n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, 
        n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493, 
        n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, 
        n1502, n1503, n1504, n1505, n1506, n1507, n1508, n1509, 
        n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, 
        n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, 
        n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533, 
        n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, 
        n1542, n1543, n1544, n1545, n1546, n1547, n1548, n1549, 
        n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557, 
        n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, 
        n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573, 
        n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, 
        n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589, 
        n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, 
        n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, 
        n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613, 
        n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, 
        n1622, n1623, n1624, n1625, n1626, n1627, n1628, n1629, 
        n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637, 
        n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, 
        n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653, 
        n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, 
        n1662, n1663, n1664, n1665, n1666, n1667, n1668, n1669, 
        n1670, n1671, n1672, n1673, n1674, n1675, n1676, n1677, 
        n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685, 
        n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693, 
        n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, 
        n1702, n1703, n1704, n1705, n1706, n1707, n1708, n1709, 
        n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717, 
        n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, 
        n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733, 
        n1734, n1735, n1736, n1737, n1738, n1739, n1740, n1741, 
        n1742, n1743, n1744, n1745, n1746, n1747, n1748, n1749, 
        n1750, n1751, n1752, n1753, n1754, n1755, n1756, n1757, 
        n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, 
        n1766, n1767, n1768, n1769, n1770, n1771, n1772, n1773, 
        n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781, 
        n1782, n1783, n1784, n1785, n1786, n1787, n1788, n1789, 
        n1790, n1791, n1792, n1793, n1794, n1795, n1796, n1797, 
        n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805, 
        n1807, n1808, n1809, n1810, n1811, n1812, n1813, n1814, 
        n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822, 
        n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830, 
        n1831, n1832, n1833, n1834, n1835, n1836, n1837, n1838, 
        n1839, n1840, n1841, n1842, n1843, n1844, n1845, n1846, 
        n1847, n1848, n1849, n1850, n1851, n1852, n1853, n1854, 
        n1855, n1856, n1857, n1858, n1859, n1860, n1861, n1862, 
        n1863, n1864, n1865, n1866, n1867, n1868, n1869, n1870, 
        n1871, n1872, n1873, n1874, n1875, n1876, n1877, n1878, 
        n1879, n1880, n1881, n1882, n1883, n1884, n1885, n1886, 
        n1887, n1888, n1889, n1890, n1891, n1892, n1893, n1894, 
        n1895, n1896, n1897, n1898, n1899, n1900, n1901, n1902, 
        n1903, n1904, n1905, n1906, n1907, n1908, n1909, n1910, 
        n1911, n1912, n1913, n1914, n1915, n1916, n1917, n1918, 
        n1919, n1920, n1921, n1922, n1923, n1924, n1925, n1926, 
        n1927, n1928, n1929, n1930, n1931, n1932, n1933, n1934, 
        n1935, n1936, n1937, n1938, n1939, n1940, n1941, n1942, 
        n1943, n1944, n1945, n1946, n1947, n1948, n1949, n1950, 
        n1951, n1952, n1953, n1954, n1955, n1956, n1957, n1958, 
        n1959, n1960, n1961, n1962, n1963, n1964, n1965, n1966, 
        n1967, n1968, n1969, n1970, n1971, n1972, n1973, n1974, 
        n1975, n1976, n1977, n1978, n1979, n1980, n1981, n1982, 
        n1983, n1984, n1985, n1986, n1987, n1988, n1989, n1990, 
        n1991, n1992, n1993, n1994, n1995, n1996, n1997, n1998, 
        n1999, n2000, n2001, n2002, n2003, n2004, n2005, n2006, 
        n2007, n2008, n2009, n2010, n2011, n2012, n2013, n2014, 
        n2015, n2016, n2017, n2018, n2019, n2020, n2021, n2022, 
        n2023, n2024, n2025, n2026, n2027, n2028, n2029, n2030, 
        n2031, n2032, n2033, n2034, n2035, n2036, n2037, n2038, 
        n2039, n2040, n2041, n2042, n2043, n2044, n2045, n2046, 
        n2047, n2048, n2049, n2050, n2051, n2052, n2053, n2054, 
        n2055, n2056, n2057, n2058, n2059, n2060, n2061, n2062, 
        n2063, n2064, n2065, n2066, n2067, n2068, n2069, n2070, 
        n2071, n2072, n2073, n2074, n2075, n2076, n2077, n2078, 
        n2079, n2080, n2081, n2082, n2083, n2084, n2085, n2086, 
        n2087, n2088, n2089, n2090, n2091, n2092, n2093, n2094, 
        n2095, n2096, n2097, n2098, n2099, n2100, n2101, n2102, 
        n2103, n2104, n2105, n2106, n2107, n2108, n2109, n2110, 
        n2111, n2112, n2113, n2114, n2115, n2116, n2117, n2118, 
        n2119, n2120, n2121, n2122, n2123, n2124, n2125, n2126, 
        n2127, n2128, n2129, n2130, n2131, n2132, n2133, n2134, 
        n2135, n2136, n2137, n2138, n2139, n2140, n2141, n2142, 
        n2143, n2144, n2145, n2146, n2147, n2148, n2149, n2150, 
        n2151, n2152, n2153, n2154, n2155, n2156, n2157, n2158, 
        n2159, n2160, n2161, n2162, n2163, n2164, n2165, n2166, 
        n2167, n2168, n2169, n2170, n2171, n2172, n2173, n2174, 
        n2175, n2176, n2177, n2178, n2179, n2180, n2181, n2182, 
        n2183, n2184, n2185, n2186, n2187, n2188, n2189, n2190, 
        n2191, n2192, n2193, n2194, n2195, n2196, n2198, n2199, 
        n2200, n2201, n2202, n2203, n2204, n2205, n2206, n2207, 
        n2208, n2209, n2210, n2211, n2212, n2213, n2214, n2215, 
        n2216, n2217, n2218, n2219, n2220, n2221, n2222, n2223, 
        n2224, n2225, n2226, n2227, n2228, n2229, n2230, n2231, 
        n2232, n2233, n2234, n2235, n2236, n2237, n2238, n2239, 
        n2240, n2241, n2242, n2243, n2244, n2245, n2246, n2247, 
        n2248, n2249, n2250, n2251, n2252, n2253, n2254, n2255, 
        n2256, n2257, n2258, n2259, n2260, n2261, n2262, n2263, 
        n2264, n2265, n2266, n2267, n2268, n2269, n2270, n2271, 
        n2272, n2273, n2274, n2275, n2276, n2277, n2278, n2279, 
        n2280, n2281, n2282, n2283, n2284, n2285, n2286, n2287, 
        n2288, n2289, n2290, n2291, n2292, n2293, n2294, n2295, 
        n2296, n2297, n2298, n2299, n2300, n2301, n2302, n2303, 
        n2304, n2305, n2306, n2307, n2308, n2309, n2310, n2311, 
        n2312, n2313, n2314, n2315, n2316, n2317, n2318, n2319, 
        n2320, n2321, n2322, n2323, n2324, n2325, n2326, n2327, 
        n2328, n2329, n2330, n2331, n2332, n2333, n2334, n2335, 
        n2336, n2337, n2338, n2339, n2340, n2341, n2342, n2343, 
        n2344, n2345, n2346, n2347, n2348, n2349, n2350, n2351, 
        n2352, n2353, n2354, n2355, n2356, n2357, n2358, n2359, 
        n2360, n2361, n2362, n2363, n2364, n2365, n2366, n2367, 
        n2368, n2369, n2370, n2371, n2372, n2373, n2374, n2375, 
        n2376, n2377, n2378, n2379, n2380, n2381, n2382, n2383, 
        n2384, n2385, n2386, n2387, n2388, n2389, n2390, n2391, 
        n2392, n2393, n2394, n2395, n2396, n2397, n2398, n2399, 
        n2400, n2401, n2402, n2403, n2404, n2405, n2406, n2407, 
        n2408, n2409, n2410, n2411, n2412, n2413, n2414, n2415, 
        n2416, n2417, n2418, n2419, n2420, n2421, n2422, n2423, 
        n2424, n2425, n2426, n2427, n2428, n2429, n2430, n2431, 
        n2432, n2433, n2434, n2435, n2436, n2437, n2438, n2439, 
        n2440, n2441, n2442, n2443, n2444, n2445, n2446, n2447, 
        n2448, n2449, n2450, n2451, n2452, n2453, n2454, n2455, 
        n2456, n2457, n2458, n2459, n2460, n2461, n2462, n2463, 
        n2464, n2465, n2466, n2467, n2468, n2469, n2470, n2471, 
        n2472, n2473, n2474, n2475, n2476, n2477, n2478, n2479, 
        n2480, n2481, n2482, n2485, n2486, n2487, n2488, n2489, 
        n2490, \clk~O , n1737_q, n1959_q, n1967_q, n1970_q, n1973_q, 
        n1965_q, n1982_q, n1990_q, n1978_q, n1974_q, n1957_q, n1987_q, 
        n1986_q, n1985_q, n1980_q, n2001_q, n1999_q, n2002_q;
    
    EFX_FF \count[0]~FF  (.D(count[0]), .CE(valid), .CLK(\clk~O ), .SR(\equal_112/n5 ), 
           .Q(count[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \count[0]~FF .CE_POLARITY = 1'b1;
    defparam \count[0]~FF .SR_POLARITY = 1'b0;
    defparam \count[0]~FF .D_POLARITY = 1'b0;
    defparam \count[0]~FF .SR_SYNC = 1'b1;
    defparam \count[0]~FF .SR_VALUE = 1'b0;
    defparam \count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_count[0]~FF  (.D(n1428_2), .CE(ceg_net48), .CLK(\clk~O ), 
           .SR(1'b0), .Q(byte_count[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \byte_count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_count[0]~FF .CE_POLARITY = 1'b1;
    defparam \byte_count[0]~FF .SR_POLARITY = 1'b1;
    defparam \byte_count[0]~FF .D_POLARITY = 1'b1;
    defparam \byte_count[0]~FF .SR_SYNC = 1'b1;
    defparam \byte_count[0]~FF .SR_VALUE = 1'b0;
    defparam \byte_count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \set~FF  (.D(\equal_112/n5 ), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(set)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \set~FF .CLK_POLARITY = 1'b1;
    defparam \set~FF .CE_POLARITY = 1'b1;
    defparam \set~FF .SR_POLARITY = 1'b1;
    defparam \set~FF .D_POLARITY = 1'b0;
    defparam \set~FF .SR_SYNC = 1'b1;
    defparam \set~FF .SR_VALUE = 1'b0;
    defparam \set~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[0]~FF  (.D(n409_2[0]), .CE(ceg_net56), .CLK(\clk~O ), 
           .SR(1'b0), .Q(state[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \state[0]~FF .CE_POLARITY = 1'b0;
    defparam \state[0]~FF .SR_POLARITY = 1'b1;
    defparam \state[0]~FF .D_POLARITY = 1'b1;
    defparam \state[0]~FF .SR_SYNC = 1'b1;
    defparam \state[0]~FF .SR_VALUE = 1'b0;
    defparam \state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_valid~FF  (.D(ceg_net2), .CE(ceg_net50), .CLK(\clk~O ), 
           .SR(1'b0), .Q(tx_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \tx_valid~FF .CLK_POLARITY = 1'b1;
    defparam \tx_valid~FF .CE_POLARITY = 1'b1;
    defparam \tx_valid~FF .SR_POLARITY = 1'b1;
    defparam \tx_valid~FF .D_POLARITY = 1'b1;
    defparam \tx_valid~FF .SR_SYNC = 1'b1;
    defparam \tx_valid~FF .SR_VALUE = 1'b0;
    defparam \tx_valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_byte[0]~FF  (.D(n355_2[0]), .CE(ceg_net51), .CLK(\clk~O ), 
           .SR(1'b0), .Q(tx_byte[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \tx_byte[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_byte[0]~FF .CE_POLARITY = 1'b1;
    defparam \tx_byte[0]~FF .SR_POLARITY = 1'b1;
    defparam \tx_byte[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_byte[0]~FF .SR_SYNC = 1'b1;
    defparam \tx_byte[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_byte[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[0]~FF  (.D(o_cos[0]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[0]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[0]~FF .D_POLARITY = 1'b1;
    defparam \out_data[0]~FF .SR_SYNC = 1'b1;
    defparam \out_data[0]~FF .SR_VALUE = 1'b0;
    defparam \out_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[0]~FF  (.D(rx_store[0]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF .D_POLARITY = 1'b1;
    defparam \in_data[0]~FF .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i_call~FF  (.D(state[0]), .CE(ceg_net52), .CLK(\clk~O ), .SR(1'b0), 
           .Q(i_call)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \i_call~FF .CLK_POLARITY = 1'b1;
    defparam \i_call~FF .CE_POLARITY = 1'b0;
    defparam \i_call~FF .SR_POLARITY = 1'b1;
    defparam \i_call~FF .D_POLARITY = 1'b0;
    defparam \i_call~FF .SR_SYNC = 1'b1;
    defparam \i_call~FF .SR_VALUE = 1'b0;
    defparam \i_call~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[0]~FF  (.D(rx_byte[0]), .CE(n1410_2), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[0]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[1]~FF  (.D(n996), .CE(valid), .CLK(\clk~O ), .SR(\equal_112/n5 ), 
           .Q(count[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF .CE_POLARITY = 1'b1;
    defparam \count[1]~FF .SR_POLARITY = 1'b0;
    defparam \count[1]~FF .D_POLARITY = 1'b1;
    defparam \count[1]~FF .SR_SYNC = 1'b1;
    defparam \count[1]~FF .SR_VALUE = 1'b0;
    defparam \count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[2]~FF  (.D(n1001), .CE(valid), .CLK(\clk~O ), .SR(\equal_112/n5 ), 
           .Q(count[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \count[2]~FF .CE_POLARITY = 1'b1;
    defparam \count[2]~FF .SR_POLARITY = 1'b0;
    defparam \count[2]~FF .D_POLARITY = 1'b1;
    defparam \count[2]~FF .SR_SYNC = 1'b1;
    defparam \count[2]~FF .SR_VALUE = 1'b0;
    defparam \count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_count[1]~FF  (.D(n1088), .CE(ceg_net48), .CLK(\clk~O ), 
           .SR(1'b0), .Q(byte_count[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \byte_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_count[1]~FF .CE_POLARITY = 1'b1;
    defparam \byte_count[1]~FF .SR_POLARITY = 1'b1;
    defparam \byte_count[1]~FF .D_POLARITY = 1'b1;
    defparam \byte_count[1]~FF .SR_SYNC = 1'b1;
    defparam \byte_count[1]~FF .SR_VALUE = 1'b0;
    defparam \byte_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_count[2]~FF  (.D(n1090), .CE(ceg_net48), .CLK(\clk~O ), 
           .SR(1'b0), .Q(byte_count[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \byte_count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_count[2]~FF .CE_POLARITY = 1'b1;
    defparam \byte_count[2]~FF .SR_POLARITY = 1'b1;
    defparam \byte_count[2]~FF .D_POLARITY = 1'b1;
    defparam \byte_count[2]~FF .SR_SYNC = 1'b1;
    defparam \byte_count[2]~FF .SR_VALUE = 1'b0;
    defparam \byte_count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \byte_count[3]~FF  (.D(n1092), .CE(ceg_net48), .CLK(\clk~O ), 
           .SR(1'b0), .Q(byte_count[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \byte_count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \byte_count[3]~FF .CE_POLARITY = 1'b1;
    defparam \byte_count[3]~FF .SR_POLARITY = 1'b1;
    defparam \byte_count[3]~FF .D_POLARITY = 1'b1;
    defparam \byte_count[3]~FF .SR_SYNC = 1'b1;
    defparam \byte_count[3]~FF .SR_VALUE = 1'b0;
    defparam \byte_count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[1]~FF  (.D(n409_3[1]), .CE(ceg_net56), .CLK(\clk~O ), 
           .SR(1'b0), .Q(state[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \state[1]~FF .CE_POLARITY = 1'b0;
    defparam \state[1]~FF .SR_POLARITY = 1'b1;
    defparam \state[1]~FF .D_POLARITY = 1'b1;
    defparam \state[1]~FF .SR_SYNC = 1'b1;
    defparam \state[1]~FF .SR_VALUE = 1'b0;
    defparam \state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_byte[1]~FF  (.D(n355_3[1]), .CE(ceg_net51), .CLK(\clk~O ), 
           .SR(1'b0), .Q(tx_byte[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \tx_byte[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_byte[1]~FF .CE_POLARITY = 1'b1;
    defparam \tx_byte[1]~FF .SR_POLARITY = 1'b1;
    defparam \tx_byte[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_byte[1]~FF .SR_SYNC = 1'b1;
    defparam \tx_byte[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_byte[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_byte[2]~FF  (.D(n355_4[2]), .CE(ceg_net51), .CLK(\clk~O ), 
           .SR(1'b0), .Q(tx_byte[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \tx_byte[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_byte[2]~FF .CE_POLARITY = 1'b1;
    defparam \tx_byte[2]~FF .SR_POLARITY = 1'b1;
    defparam \tx_byte[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_byte[2]~FF .SR_SYNC = 1'b1;
    defparam \tx_byte[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_byte[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_byte[3]~FF  (.D(n355_5[3]), .CE(ceg_net51), .CLK(\clk~O ), 
           .SR(1'b0), .Q(tx_byte[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \tx_byte[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_byte[3]~FF .CE_POLARITY = 1'b1;
    defparam \tx_byte[3]~FF .SR_POLARITY = 1'b1;
    defparam \tx_byte[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_byte[3]~FF .SR_SYNC = 1'b1;
    defparam \tx_byte[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_byte[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_byte[4]~FF  (.D(n355_6[4]), .CE(ceg_net51), .CLK(\clk~O ), 
           .SR(1'b0), .Q(tx_byte[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \tx_byte[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_byte[4]~FF .CE_POLARITY = 1'b1;
    defparam \tx_byte[4]~FF .SR_POLARITY = 1'b1;
    defparam \tx_byte[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_byte[4]~FF .SR_SYNC = 1'b1;
    defparam \tx_byte[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_byte[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_byte[5]~FF  (.D(n355_7[5]), .CE(ceg_net51), .CLK(\clk~O ), 
           .SR(1'b0), .Q(tx_byte[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \tx_byte[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_byte[5]~FF .CE_POLARITY = 1'b1;
    defparam \tx_byte[5]~FF .SR_POLARITY = 1'b1;
    defparam \tx_byte[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_byte[5]~FF .SR_SYNC = 1'b1;
    defparam \tx_byte[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_byte[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_byte[6]~FF  (.D(n355_8[6]), .CE(ceg_net51), .CLK(\clk~O ), 
           .SR(1'b0), .Q(tx_byte[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \tx_byte[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_byte[6]~FF .CE_POLARITY = 1'b1;
    defparam \tx_byte[6]~FF .SR_POLARITY = 1'b1;
    defparam \tx_byte[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_byte[6]~FF .SR_SYNC = 1'b1;
    defparam \tx_byte[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_byte[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_byte[7]~FF  (.D(n355_9[7]), .CE(ceg_net51), .CLK(\clk~O ), 
           .SR(1'b0), .Q(tx_byte[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \tx_byte[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_byte[7]~FF .CE_POLARITY = 1'b1;
    defparam \tx_byte[7]~FF .SR_POLARITY = 1'b1;
    defparam \tx_byte[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_byte[7]~FF .SR_SYNC = 1'b1;
    defparam \tx_byte[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_byte[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[1]~FF  (.D(o_cos[1]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[1]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[1]~FF .D_POLARITY = 1'b1;
    defparam \out_data[1]~FF .SR_SYNC = 1'b1;
    defparam \out_data[1]~FF .SR_VALUE = 1'b0;
    defparam \out_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[2]~FF  (.D(o_cos[2]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[2]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[2]~FF .D_POLARITY = 1'b1;
    defparam \out_data[2]~FF .SR_SYNC = 1'b1;
    defparam \out_data[2]~FF .SR_VALUE = 1'b0;
    defparam \out_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[3]~FF  (.D(o_cos[3]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[3]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[3]~FF .D_POLARITY = 1'b1;
    defparam \out_data[3]~FF .SR_SYNC = 1'b1;
    defparam \out_data[3]~FF .SR_VALUE = 1'b0;
    defparam \out_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[4]~FF  (.D(o_cos[4]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[4]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[4]~FF .D_POLARITY = 1'b1;
    defparam \out_data[4]~FF .SR_SYNC = 1'b1;
    defparam \out_data[4]~FF .SR_VALUE = 1'b0;
    defparam \out_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[5]~FF  (.D(o_cos[5]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[5]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[5]~FF .D_POLARITY = 1'b1;
    defparam \out_data[5]~FF .SR_SYNC = 1'b1;
    defparam \out_data[5]~FF .SR_VALUE = 1'b0;
    defparam \out_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[6]~FF  (.D(o_cos[6]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[6]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[6]~FF .D_POLARITY = 1'b1;
    defparam \out_data[6]~FF .SR_SYNC = 1'b1;
    defparam \out_data[6]~FF .SR_VALUE = 1'b0;
    defparam \out_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[7]~FF  (.D(o_cos[7]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[7]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[7]~FF .D_POLARITY = 1'b1;
    defparam \out_data[7]~FF .SR_SYNC = 1'b1;
    defparam \out_data[7]~FF .SR_VALUE = 1'b0;
    defparam \out_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[8]~FF  (.D(o_cos[8]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[8]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[8]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[8]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[8]~FF .D_POLARITY = 1'b1;
    defparam \out_data[8]~FF .SR_SYNC = 1'b1;
    defparam \out_data[8]~FF .SR_VALUE = 1'b0;
    defparam \out_data[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[9]~FF  (.D(o_cos[9]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[9]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[9]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[9]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[9]~FF .D_POLARITY = 1'b1;
    defparam \out_data[9]~FF .SR_SYNC = 1'b1;
    defparam \out_data[9]~FF .SR_VALUE = 1'b0;
    defparam \out_data[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[10]~FF  (.D(o_cos[10]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[10]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[10]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[10]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[10]~FF .D_POLARITY = 1'b1;
    defparam \out_data[10]~FF .SR_SYNC = 1'b1;
    defparam \out_data[10]~FF .SR_VALUE = 1'b0;
    defparam \out_data[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[11]~FF  (.D(o_cos[11]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[11]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[11]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[11]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[11]~FF .D_POLARITY = 1'b1;
    defparam \out_data[11]~FF .SR_SYNC = 1'b1;
    defparam \out_data[11]~FF .SR_VALUE = 1'b0;
    defparam \out_data[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[12]~FF  (.D(o_cos[12]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[12]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[12]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[12]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[12]~FF .D_POLARITY = 1'b1;
    defparam \out_data[12]~FF .SR_SYNC = 1'b1;
    defparam \out_data[12]~FF .SR_VALUE = 1'b0;
    defparam \out_data[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[13]~FF  (.D(o_cos[13]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[13]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[13]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[13]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[13]~FF .D_POLARITY = 1'b1;
    defparam \out_data[13]~FF .SR_SYNC = 1'b1;
    defparam \out_data[13]~FF .SR_VALUE = 1'b0;
    defparam \out_data[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[14]~FF  (.D(o_cos[14]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[14]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[14]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[14]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[14]~FF .D_POLARITY = 1'b1;
    defparam \out_data[14]~FF .SR_SYNC = 1'b1;
    defparam \out_data[14]~FF .SR_VALUE = 1'b0;
    defparam \out_data[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[15]~FF  (.D(o_cos[15]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[15]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[15]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[15]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[15]~FF .D_POLARITY = 1'b1;
    defparam \out_data[15]~FF .SR_SYNC = 1'b1;
    defparam \out_data[15]~FF .SR_VALUE = 1'b0;
    defparam \out_data[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[16]~FF  (.D(o_cos[16]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[16]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[16]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[16]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[16]~FF .D_POLARITY = 1'b1;
    defparam \out_data[16]~FF .SR_SYNC = 1'b1;
    defparam \out_data[16]~FF .SR_VALUE = 1'b0;
    defparam \out_data[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[17]~FF  (.D(o_cos[17]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[17]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[17]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[17]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[17]~FF .D_POLARITY = 1'b1;
    defparam \out_data[17]~FF .SR_SYNC = 1'b1;
    defparam \out_data[17]~FF .SR_VALUE = 1'b0;
    defparam \out_data[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[18]~FF  (.D(o_cos[18]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[18]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[18]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[18]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[18]~FF .D_POLARITY = 1'b1;
    defparam \out_data[18]~FF .SR_SYNC = 1'b1;
    defparam \out_data[18]~FF .SR_VALUE = 1'b0;
    defparam \out_data[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[19]~FF  (.D(o_cos[19]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[19]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[19]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[19]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[19]~FF .D_POLARITY = 1'b1;
    defparam \out_data[19]~FF .SR_SYNC = 1'b1;
    defparam \out_data[19]~FF .SR_VALUE = 1'b0;
    defparam \out_data[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[20]~FF  (.D(o_cos[20]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[20]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[20]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[20]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[20]~FF .D_POLARITY = 1'b1;
    defparam \out_data[20]~FF .SR_SYNC = 1'b1;
    defparam \out_data[20]~FF .SR_VALUE = 1'b0;
    defparam \out_data[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[21]~FF  (.D(o_cos[21]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[21]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[21]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[21]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[21]~FF .D_POLARITY = 1'b1;
    defparam \out_data[21]~FF .SR_SYNC = 1'b1;
    defparam \out_data[21]~FF .SR_VALUE = 1'b0;
    defparam \out_data[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[22]~FF  (.D(o_cos[22]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[22]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[22]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[22]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[22]~FF .D_POLARITY = 1'b1;
    defparam \out_data[22]~FF .SR_SYNC = 1'b1;
    defparam \out_data[22]~FF .SR_VALUE = 1'b0;
    defparam \out_data[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[23]~FF  (.D(o_cos[23]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[23]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[23]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[23]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[23]~FF .D_POLARITY = 1'b1;
    defparam \out_data[23]~FF .SR_SYNC = 1'b1;
    defparam \out_data[23]~FF .SR_VALUE = 1'b0;
    defparam \out_data[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[24]~FF  (.D(o_cos[24]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[24]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[24]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[24]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[24]~FF .D_POLARITY = 1'b1;
    defparam \out_data[24]~FF .SR_SYNC = 1'b1;
    defparam \out_data[24]~FF .SR_VALUE = 1'b0;
    defparam \out_data[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[25]~FF  (.D(o_cos[25]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[25]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[25]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[25]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[25]~FF .D_POLARITY = 1'b1;
    defparam \out_data[25]~FF .SR_SYNC = 1'b1;
    defparam \out_data[25]~FF .SR_VALUE = 1'b0;
    defparam \out_data[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[26]~FF  (.D(o_cos[26]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[26]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[26]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[26]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[26]~FF .D_POLARITY = 1'b1;
    defparam \out_data[26]~FF .SR_SYNC = 1'b1;
    defparam \out_data[26]~FF .SR_VALUE = 1'b0;
    defparam \out_data[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[27]~FF  (.D(o_cos[27]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[27]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[27]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[27]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[27]~FF .D_POLARITY = 1'b1;
    defparam \out_data[27]~FF .SR_SYNC = 1'b1;
    defparam \out_data[27]~FF .SR_VALUE = 1'b0;
    defparam \out_data[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[28]~FF  (.D(o_cos[28]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[28]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[28]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[28]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[28]~FF .D_POLARITY = 1'b1;
    defparam \out_data[28]~FF .SR_SYNC = 1'b1;
    defparam \out_data[28]~FF .SR_VALUE = 1'b0;
    defparam \out_data[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[29]~FF  (.D(o_cos[29]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[29]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[29]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[29]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[29]~FF .D_POLARITY = 1'b1;
    defparam \out_data[29]~FF .SR_SYNC = 1'b1;
    defparam \out_data[29]~FF .SR_VALUE = 1'b0;
    defparam \out_data[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[30]~FF  (.D(o_cos[30]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[30]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[30]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[30]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[30]~FF .D_POLARITY = 1'b1;
    defparam \out_data[30]~FF .SR_SYNC = 1'b1;
    defparam \out_data[30]~FF .SR_VALUE = 1'b0;
    defparam \out_data[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[31]~FF  (.D(o_cos[31]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[31]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[31]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[31]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[31]~FF .D_POLARITY = 1'b1;
    defparam \out_data[31]~FF .SR_SYNC = 1'b1;
    defparam \out_data[31]~FF .SR_VALUE = 1'b0;
    defparam \out_data[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[40]~FF  (.D(o_sin[0]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[40])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[40]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[40]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[40]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[40]~FF .D_POLARITY = 1'b1;
    defparam \out_data[40]~FF .SR_SYNC = 1'b1;
    defparam \out_data[40]~FF .SR_VALUE = 1'b0;
    defparam \out_data[40]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[41]~FF  (.D(o_sin[1]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[41])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[41]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[41]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[41]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[41]~FF .D_POLARITY = 1'b1;
    defparam \out_data[41]~FF .SR_SYNC = 1'b1;
    defparam \out_data[41]~FF .SR_VALUE = 1'b0;
    defparam \out_data[41]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[42]~FF  (.D(o_sin[2]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[42])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[42]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[42]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[42]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[42]~FF .D_POLARITY = 1'b1;
    defparam \out_data[42]~FF .SR_SYNC = 1'b1;
    defparam \out_data[42]~FF .SR_VALUE = 1'b0;
    defparam \out_data[42]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[43]~FF  (.D(o_sin[3]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[43])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[43]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[43]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[43]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[43]~FF .D_POLARITY = 1'b1;
    defparam \out_data[43]~FF .SR_SYNC = 1'b1;
    defparam \out_data[43]~FF .SR_VALUE = 1'b0;
    defparam \out_data[43]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[44]~FF  (.D(o_sin[4]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[44])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[44]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[44]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[44]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[44]~FF .D_POLARITY = 1'b1;
    defparam \out_data[44]~FF .SR_SYNC = 1'b1;
    defparam \out_data[44]~FF .SR_VALUE = 1'b0;
    defparam \out_data[44]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[45]~FF  (.D(o_sin[5]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[45])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[45]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[45]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[45]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[45]~FF .D_POLARITY = 1'b1;
    defparam \out_data[45]~FF .SR_SYNC = 1'b1;
    defparam \out_data[45]~FF .SR_VALUE = 1'b0;
    defparam \out_data[45]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[46]~FF  (.D(o_sin[6]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[46])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[46]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[46]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[46]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[46]~FF .D_POLARITY = 1'b1;
    defparam \out_data[46]~FF .SR_SYNC = 1'b1;
    defparam \out_data[46]~FF .SR_VALUE = 1'b0;
    defparam \out_data[46]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[47]~FF  (.D(o_sin[7]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[47])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[47]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[47]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[47]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[47]~FF .D_POLARITY = 1'b1;
    defparam \out_data[47]~FF .SR_SYNC = 1'b1;
    defparam \out_data[47]~FF .SR_VALUE = 1'b0;
    defparam \out_data[47]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[48]~FF  (.D(o_sin[8]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[48])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[48]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[48]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[48]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[48]~FF .D_POLARITY = 1'b1;
    defparam \out_data[48]~FF .SR_SYNC = 1'b1;
    defparam \out_data[48]~FF .SR_VALUE = 1'b0;
    defparam \out_data[48]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[49]~FF  (.D(o_sin[9]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[49])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[49]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[49]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[49]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[49]~FF .D_POLARITY = 1'b1;
    defparam \out_data[49]~FF .SR_SYNC = 1'b1;
    defparam \out_data[49]~FF .SR_VALUE = 1'b0;
    defparam \out_data[49]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[50]~FF  (.D(o_sin[10]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[50])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[50]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[50]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[50]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[50]~FF .D_POLARITY = 1'b1;
    defparam \out_data[50]~FF .SR_SYNC = 1'b1;
    defparam \out_data[50]~FF .SR_VALUE = 1'b0;
    defparam \out_data[50]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[51]~FF  (.D(o_sin[11]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[51])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[51]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[51]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[51]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[51]~FF .D_POLARITY = 1'b1;
    defparam \out_data[51]~FF .SR_SYNC = 1'b1;
    defparam \out_data[51]~FF .SR_VALUE = 1'b0;
    defparam \out_data[51]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[52]~FF  (.D(o_sin[12]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[52])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[52]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[52]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[52]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[52]~FF .D_POLARITY = 1'b1;
    defparam \out_data[52]~FF .SR_SYNC = 1'b1;
    defparam \out_data[52]~FF .SR_VALUE = 1'b0;
    defparam \out_data[52]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[53]~FF  (.D(o_sin[13]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[53])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[53]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[53]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[53]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[53]~FF .D_POLARITY = 1'b1;
    defparam \out_data[53]~FF .SR_SYNC = 1'b1;
    defparam \out_data[53]~FF .SR_VALUE = 1'b0;
    defparam \out_data[53]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[54]~FF  (.D(o_sin[14]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[54])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[54]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[54]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[54]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[54]~FF .D_POLARITY = 1'b1;
    defparam \out_data[54]~FF .SR_SYNC = 1'b1;
    defparam \out_data[54]~FF .SR_VALUE = 1'b0;
    defparam \out_data[54]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[55]~FF  (.D(o_sin[15]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[55])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[55]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[55]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[55]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[55]~FF .D_POLARITY = 1'b1;
    defparam \out_data[55]~FF .SR_SYNC = 1'b1;
    defparam \out_data[55]~FF .SR_VALUE = 1'b0;
    defparam \out_data[55]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[56]~FF  (.D(o_sin[16]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[56])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[56]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[56]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[56]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[56]~FF .D_POLARITY = 1'b1;
    defparam \out_data[56]~FF .SR_SYNC = 1'b1;
    defparam \out_data[56]~FF .SR_VALUE = 1'b0;
    defparam \out_data[56]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[57]~FF  (.D(o_sin[17]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[57])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[57]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[57]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[57]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[57]~FF .D_POLARITY = 1'b1;
    defparam \out_data[57]~FF .SR_SYNC = 1'b1;
    defparam \out_data[57]~FF .SR_VALUE = 1'b0;
    defparam \out_data[57]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[58]~FF  (.D(o_sin[18]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[58])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[58]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[58]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[58]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[58]~FF .D_POLARITY = 1'b1;
    defparam \out_data[58]~FF .SR_SYNC = 1'b1;
    defparam \out_data[58]~FF .SR_VALUE = 1'b0;
    defparam \out_data[58]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[59]~FF  (.D(o_sin[19]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[59])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[59]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[59]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[59]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[59]~FF .D_POLARITY = 1'b1;
    defparam \out_data[59]~FF .SR_SYNC = 1'b1;
    defparam \out_data[59]~FF .SR_VALUE = 1'b0;
    defparam \out_data[59]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[60]~FF  (.D(o_sin[20]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[60])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[60]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[60]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[60]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[60]~FF .D_POLARITY = 1'b1;
    defparam \out_data[60]~FF .SR_SYNC = 1'b1;
    defparam \out_data[60]~FF .SR_VALUE = 1'b0;
    defparam \out_data[60]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[61]~FF  (.D(o_sin[21]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[61])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[61]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[61]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[61]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[61]~FF .D_POLARITY = 1'b1;
    defparam \out_data[61]~FF .SR_SYNC = 1'b1;
    defparam \out_data[61]~FF .SR_VALUE = 1'b0;
    defparam \out_data[61]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[62]~FF  (.D(o_sin[22]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[62])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[62]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[62]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[62]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[62]~FF .D_POLARITY = 1'b1;
    defparam \out_data[62]~FF .SR_SYNC = 1'b1;
    defparam \out_data[62]~FF .SR_VALUE = 1'b0;
    defparam \out_data[62]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[63]~FF  (.D(o_sin[23]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[63])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[63]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[63]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[63]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[63]~FF .D_POLARITY = 1'b1;
    defparam \out_data[63]~FF .SR_SYNC = 1'b1;
    defparam \out_data[63]~FF .SR_VALUE = 1'b0;
    defparam \out_data[63]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[64]~FF  (.D(o_sin[24]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[64])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[64]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[64]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[64]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[64]~FF .D_POLARITY = 1'b1;
    defparam \out_data[64]~FF .SR_SYNC = 1'b1;
    defparam \out_data[64]~FF .SR_VALUE = 1'b0;
    defparam \out_data[64]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[65]~FF  (.D(o_sin[25]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[65])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[65]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[65]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[65]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[65]~FF .D_POLARITY = 1'b1;
    defparam \out_data[65]~FF .SR_SYNC = 1'b1;
    defparam \out_data[65]~FF .SR_VALUE = 1'b0;
    defparam \out_data[65]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[66]~FF  (.D(o_sin[26]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[66])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[66]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[66]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[66]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[66]~FF .D_POLARITY = 1'b1;
    defparam \out_data[66]~FF .SR_SYNC = 1'b1;
    defparam \out_data[66]~FF .SR_VALUE = 1'b0;
    defparam \out_data[66]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[67]~FF  (.D(o_sin[27]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[67])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[67]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[67]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[67]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[67]~FF .D_POLARITY = 1'b1;
    defparam \out_data[67]~FF .SR_SYNC = 1'b1;
    defparam \out_data[67]~FF .SR_VALUE = 1'b0;
    defparam \out_data[67]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[68]~FF  (.D(o_sin[28]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[68])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[68]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[68]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[68]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[68]~FF .D_POLARITY = 1'b1;
    defparam \out_data[68]~FF .SR_SYNC = 1'b1;
    defparam \out_data[68]~FF .SR_VALUE = 1'b0;
    defparam \out_data[68]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[69]~FF  (.D(o_sin[29]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[69])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[69]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[69]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[69]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[69]~FF .D_POLARITY = 1'b1;
    defparam \out_data[69]~FF .SR_SYNC = 1'b1;
    defparam \out_data[69]~FF .SR_VALUE = 1'b0;
    defparam \out_data[69]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[70]~FF  (.D(o_sin[30]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[70])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[70]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[70]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[70]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[70]~FF .D_POLARITY = 1'b1;
    defparam \out_data[70]~FF .SR_SYNC = 1'b1;
    defparam \out_data[70]~FF .SR_VALUE = 1'b0;
    defparam \out_data[70]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[71]~FF  (.D(o_sin[31]), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[71])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[71]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[71]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[71]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[71]~FF .D_POLARITY = 1'b1;
    defparam \out_data[71]~FF .SR_SYNC = 1'b1;
    defparam \out_data[71]~FF .SR_VALUE = 1'b0;
    defparam \out_data[71]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[75]~FF  (.D(1'b1), .CE(ceg_net32), .CLK(\clk~O ), 
           .SR(1'b0), .Q(out_data[75])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \out_data[75]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[75]~FF .CE_POLARITY = 1'b0;
    defparam \out_data[75]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[75]~FF .D_POLARITY = 1'b1;
    defparam \out_data[75]~FF .SR_SYNC = 1'b1;
    defparam \out_data[75]~FF .SR_VALUE = 1'b0;
    defparam \out_data[75]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[1]~FF  (.D(rx_store[1]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[1]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[1]~FF .D_POLARITY = 1'b1;
    defparam \in_data[1]~FF .SR_SYNC = 1'b1;
    defparam \in_data[1]~FF .SR_VALUE = 1'b0;
    defparam \in_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[2]~FF  (.D(rx_store[2]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[2]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[2]~FF .D_POLARITY = 1'b1;
    defparam \in_data[2]~FF .SR_SYNC = 1'b1;
    defparam \in_data[2]~FF .SR_VALUE = 1'b0;
    defparam \in_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[3]~FF  (.D(rx_store[3]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[3]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[3]~FF .D_POLARITY = 1'b1;
    defparam \in_data[3]~FF .SR_SYNC = 1'b1;
    defparam \in_data[3]~FF .SR_VALUE = 1'b0;
    defparam \in_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[4]~FF  (.D(rx_store[4]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[4]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[4]~FF .D_POLARITY = 1'b1;
    defparam \in_data[4]~FF .SR_SYNC = 1'b1;
    defparam \in_data[4]~FF .SR_VALUE = 1'b0;
    defparam \in_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[5]~FF  (.D(rx_store[5]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[5]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[5]~FF .D_POLARITY = 1'b1;
    defparam \in_data[5]~FF .SR_SYNC = 1'b1;
    defparam \in_data[5]~FF .SR_VALUE = 1'b0;
    defparam \in_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[6]~FF  (.D(rx_store[6]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[6]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[6]~FF .D_POLARITY = 1'b1;
    defparam \in_data[6]~FF .SR_SYNC = 1'b1;
    defparam \in_data[6]~FF .SR_VALUE = 1'b0;
    defparam \in_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[7]~FF  (.D(rx_store[7]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[7]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[7]~FF .D_POLARITY = 1'b1;
    defparam \in_data[7]~FF .SR_SYNC = 1'b1;
    defparam \in_data[7]~FF .SR_VALUE = 1'b0;
    defparam \in_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[8]~FF  (.D(rx_store[8]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[8]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[8]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[8]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[8]~FF .D_POLARITY = 1'b1;
    defparam \in_data[8]~FF .SR_SYNC = 1'b1;
    defparam \in_data[8]~FF .SR_VALUE = 1'b0;
    defparam \in_data[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[9]~FF  (.D(rx_store[9]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[9]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[9]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[9]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[9]~FF .D_POLARITY = 1'b1;
    defparam \in_data[9]~FF .SR_SYNC = 1'b1;
    defparam \in_data[9]~FF .SR_VALUE = 1'b0;
    defparam \in_data[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[10]~FF  (.D(rx_store[10]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[10]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[10]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[10]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[10]~FF .D_POLARITY = 1'b1;
    defparam \in_data[10]~FF .SR_SYNC = 1'b1;
    defparam \in_data[10]~FF .SR_VALUE = 1'b0;
    defparam \in_data[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[11]~FF  (.D(rx_store[11]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[11]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[11]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[11]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[11]~FF .D_POLARITY = 1'b1;
    defparam \in_data[11]~FF .SR_SYNC = 1'b1;
    defparam \in_data[11]~FF .SR_VALUE = 1'b0;
    defparam \in_data[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[12]~FF  (.D(rx_store[12]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[12]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[12]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[12]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[12]~FF .D_POLARITY = 1'b1;
    defparam \in_data[12]~FF .SR_SYNC = 1'b1;
    defparam \in_data[12]~FF .SR_VALUE = 1'b0;
    defparam \in_data[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[13]~FF  (.D(rx_store[13]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[13]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[13]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[13]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[13]~FF .D_POLARITY = 1'b1;
    defparam \in_data[13]~FF .SR_SYNC = 1'b1;
    defparam \in_data[13]~FF .SR_VALUE = 1'b0;
    defparam \in_data[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[14]~FF  (.D(rx_store[14]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[14]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[14]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[14]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[14]~FF .D_POLARITY = 1'b1;
    defparam \in_data[14]~FF .SR_SYNC = 1'b1;
    defparam \in_data[14]~FF .SR_VALUE = 1'b0;
    defparam \in_data[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[15]~FF  (.D(rx_store[15]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[15]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[15]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[15]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[15]~FF .D_POLARITY = 1'b1;
    defparam \in_data[15]~FF .SR_SYNC = 1'b1;
    defparam \in_data[15]~FF .SR_VALUE = 1'b0;
    defparam \in_data[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[16]~FF  (.D(rx_store[16]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[16]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[16]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[16]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[16]~FF .D_POLARITY = 1'b1;
    defparam \in_data[16]~FF .SR_SYNC = 1'b1;
    defparam \in_data[16]~FF .SR_VALUE = 1'b0;
    defparam \in_data[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[17]~FF  (.D(rx_store[17]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[17]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[17]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[17]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[17]~FF .D_POLARITY = 1'b1;
    defparam \in_data[17]~FF .SR_SYNC = 1'b1;
    defparam \in_data[17]~FF .SR_VALUE = 1'b0;
    defparam \in_data[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[18]~FF  (.D(rx_store[18]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[18]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[18]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[18]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[18]~FF .D_POLARITY = 1'b1;
    defparam \in_data[18]~FF .SR_SYNC = 1'b1;
    defparam \in_data[18]~FF .SR_VALUE = 1'b0;
    defparam \in_data[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[19]~FF  (.D(rx_store[19]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[19]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[19]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[19]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[19]~FF .D_POLARITY = 1'b1;
    defparam \in_data[19]~FF .SR_SYNC = 1'b1;
    defparam \in_data[19]~FF .SR_VALUE = 1'b0;
    defparam \in_data[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[20]~FF  (.D(rx_store[20]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[20]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[20]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[20]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[20]~FF .D_POLARITY = 1'b1;
    defparam \in_data[20]~FF .SR_SYNC = 1'b1;
    defparam \in_data[20]~FF .SR_VALUE = 1'b0;
    defparam \in_data[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[21]~FF  (.D(rx_store[21]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[21]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[21]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[21]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[21]~FF .D_POLARITY = 1'b1;
    defparam \in_data[21]~FF .SR_SYNC = 1'b1;
    defparam \in_data[21]~FF .SR_VALUE = 1'b0;
    defparam \in_data[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[22]~FF  (.D(rx_store[22]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[22]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[22]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[22]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[22]~FF .D_POLARITY = 1'b1;
    defparam \in_data[22]~FF .SR_SYNC = 1'b1;
    defparam \in_data[22]~FF .SR_VALUE = 1'b0;
    defparam \in_data[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[23]~FF  (.D(rx_store[23]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[23]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[23]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[23]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[23]~FF .D_POLARITY = 1'b1;
    defparam \in_data[23]~FF .SR_SYNC = 1'b1;
    defparam \in_data[23]~FF .SR_VALUE = 1'b0;
    defparam \in_data[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[24]~FF  (.D(rx_store[24]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[24]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[24]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[24]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[24]~FF .D_POLARITY = 1'b1;
    defparam \in_data[24]~FF .SR_SYNC = 1'b1;
    defparam \in_data[24]~FF .SR_VALUE = 1'b0;
    defparam \in_data[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[25]~FF  (.D(rx_store[25]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[25]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[25]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[25]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[25]~FF .D_POLARITY = 1'b1;
    defparam \in_data[25]~FF .SR_SYNC = 1'b1;
    defparam \in_data[25]~FF .SR_VALUE = 1'b0;
    defparam \in_data[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[26]~FF  (.D(rx_store[26]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[26]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[26]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[26]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[26]~FF .D_POLARITY = 1'b1;
    defparam \in_data[26]~FF .SR_SYNC = 1'b1;
    defparam \in_data[26]~FF .SR_VALUE = 1'b0;
    defparam \in_data[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[27]~FF  (.D(rx_store[27]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[27]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[27]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[27]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[27]~FF .D_POLARITY = 1'b1;
    defparam \in_data[27]~FF .SR_SYNC = 1'b1;
    defparam \in_data[27]~FF .SR_VALUE = 1'b0;
    defparam \in_data[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[28]~FF  (.D(rx_store[28]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[28]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[28]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[28]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[28]~FF .D_POLARITY = 1'b1;
    defparam \in_data[28]~FF .SR_SYNC = 1'b1;
    defparam \in_data[28]~FF .SR_VALUE = 1'b0;
    defparam \in_data[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[29]~FF  (.D(rx_store[29]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[29]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[29]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[29]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[29]~FF .D_POLARITY = 1'b1;
    defparam \in_data[29]~FF .SR_SYNC = 1'b1;
    defparam \in_data[29]~FF .SR_VALUE = 1'b0;
    defparam \in_data[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[30]~FF  (.D(rx_store[30]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[30]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[30]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[30]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[30]~FF .D_POLARITY = 1'b1;
    defparam \in_data[30]~FF .SR_SYNC = 1'b1;
    defparam \in_data[30]~FF .SR_VALUE = 1'b0;
    defparam \in_data[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[31]~FF  (.D(rx_store[31]), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(in_data[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[31]~FF .CLK_POLARITY = 1'b1;
    defparam \in_data[31]~FF .CE_POLARITY = 1'b0;
    defparam \in_data[31]~FF .SR_POLARITY = 1'b1;
    defparam \in_data[31]~FF .D_POLARITY = 1'b1;
    defparam \in_data[31]~FF .SR_SYNC = 1'b1;
    defparam \in_data[31]~FF .SR_VALUE = 1'b0;
    defparam \in_data[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_byte[0]~FF  (.D(uart_rx_pin), .CE(\rx_/n505 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(rx_byte[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_byte[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_byte[0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_byte[0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_byte[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_byte[0]~FF .SR_SYNC = 1'b0;
    defparam \rx_byte[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_byte[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \valid~FF  (.D(\rx_/n224 ), .CE(1'b1), .CLK(\clk~O ), .SR(i_call), 
           .Q(valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \valid~FF .CLK_POLARITY = 1'b1;
    defparam \valid~FF .CE_POLARITY = 1'b1;
    defparam \valid~FF .SR_POLARITY = 1'b1;
    defparam \valid~FF .D_POLARITY = 1'b1;
    defparam \valid~FF .SR_SYNC = 1'b0;
    defparam \valid~FF .SR_VALUE = 1'b0;
    defparam \valid~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/bit_counter[0]~FF  (.D(\rx_/n167 [0]), .CE(ceg_net35), .CLK(\clk~O ), 
           .SR(i_call), .Q(\rx_/bit_counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/bit_counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/bit_counter[0]~FF .CE_POLARITY = 1'b0;
    defparam \rx_/bit_counter[0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/bit_counter[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_/bit_counter[0]~FF .SR_SYNC = 1'b0;
    defparam \rx_/bit_counter[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_/bit_counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[0]~FF  (.D(\rx_/n230 [0]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[0]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/state[0]~FF  (.D(\rx_/n225 [0]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\rx_/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/state[0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/state[0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/state[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_/state[0]~FF .SR_SYNC = 1'b0;
    defparam \rx_/state[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_byte[1]~FF  (.D(uart_rx_pin), .CE(\rx_/n499 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(rx_byte[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_byte[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_byte[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_byte[1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_byte[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_byte[1]~FF .SR_SYNC = 1'b0;
    defparam \rx_byte[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_byte[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_byte[2]~FF  (.D(uart_rx_pin), .CE(\rx_/n498 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(rx_byte[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_byte[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_byte[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_byte[2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_byte[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_byte[2]~FF .SR_SYNC = 1'b0;
    defparam \rx_byte[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_byte[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_byte[3]~FF  (.D(uart_rx_pin), .CE(\rx_/n497 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(rx_byte[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_byte[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_byte[3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_byte[3]~FF .SR_POLARITY = 1'b1;
    defparam \rx_byte[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_byte[3]~FF .SR_SYNC = 1'b0;
    defparam \rx_byte[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_byte[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_byte[4]~FF  (.D(uart_rx_pin), .CE(\rx_/n496 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(rx_byte[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_byte[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_byte[4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_byte[4]~FF .SR_POLARITY = 1'b1;
    defparam \rx_byte[4]~FF .D_POLARITY = 1'b1;
    defparam \rx_byte[4]~FF .SR_SYNC = 1'b0;
    defparam \rx_byte[4]~FF .SR_VALUE = 1'b0;
    defparam \rx_byte[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_byte[5]~FF  (.D(uart_rx_pin), .CE(\rx_/n495 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(rx_byte[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_byte[5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_byte[5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_byte[5]~FF .SR_POLARITY = 1'b1;
    defparam \rx_byte[5]~FF .D_POLARITY = 1'b1;
    defparam \rx_byte[5]~FF .SR_SYNC = 1'b0;
    defparam \rx_byte[5]~FF .SR_VALUE = 1'b0;
    defparam \rx_byte[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_byte[6]~FF  (.D(uart_rx_pin), .CE(\rx_/n494 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(rx_byte[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_byte[6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_byte[6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_byte[6]~FF .SR_POLARITY = 1'b1;
    defparam \rx_byte[6]~FF .D_POLARITY = 1'b1;
    defparam \rx_byte[6]~FF .SR_SYNC = 1'b0;
    defparam \rx_byte[6]~FF .SR_VALUE = 1'b0;
    defparam \rx_byte[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_byte[7]~FF  (.D(uart_rx_pin), .CE(\rx_/n508 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(rx_byte[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_byte[7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_byte[7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_byte[7]~FF .SR_POLARITY = 1'b1;
    defparam \rx_byte[7]~FF .D_POLARITY = 1'b1;
    defparam \rx_byte[7]~FF .SR_SYNC = 1'b0;
    defparam \rx_byte[7]~FF .SR_VALUE = 1'b0;
    defparam \rx_byte[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/bit_counter[1]~FF  (.D(\rx_/n167 [1]), .CE(ceg_net35), .CLK(\clk~O ), 
           .SR(i_call), .Q(\rx_/bit_counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/bit_counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/bit_counter[1]~FF .CE_POLARITY = 1'b0;
    defparam \rx_/bit_counter[1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/bit_counter[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_/bit_counter[1]~FF .SR_SYNC = 1'b0;
    defparam \rx_/bit_counter[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_/bit_counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/bit_counter[2]~FF  (.D(\rx_/n167 [2]), .CE(ceg_net35), .CLK(\clk~O ), 
           .SR(i_call), .Q(\rx_/bit_counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/bit_counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/bit_counter[2]~FF .CE_POLARITY = 1'b0;
    defparam \rx_/bit_counter[2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/bit_counter[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_/bit_counter[2]~FF .SR_SYNC = 1'b0;
    defparam \rx_/bit_counter[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_/bit_counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/bit_counter[3]~FF  (.D(\rx_/n81 ), .CE(ceg_net35), .CLK(\clk~O ), 
           .SR(i_call), .Q(\rx_/bit_counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/bit_counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/bit_counter[3]~FF .CE_POLARITY = 1'b0;
    defparam \rx_/bit_counter[3]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/bit_counter[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_/bit_counter[3]~FF .SR_SYNC = 1'b0;
    defparam \rx_/bit_counter[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_/bit_counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[1]~FF  (.D(\rx_/n230 [1]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[1]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[2]~FF  (.D(\rx_/n230 [2]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[2]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[3]~FF  (.D(\rx_/n230 [3]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[3]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[3]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[4]~FF  (.D(\rx_/n230 [4]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[4]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[4]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[4]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[4]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[5]~FF  (.D(\rx_/n230 [5]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[5]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[5]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[5]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[5]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[6]~FF  (.D(\rx_/n230 [6]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[6]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[6]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[6]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[6]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[7]~FF  (.D(\rx_/n230 [7]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[7]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[7]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[7]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[7]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[8]~FF  (.D(\rx_/n230 [8]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[8]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[8]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[8]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[8]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[8]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[8]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[9]~FF  (.D(\rx_/n230 [9]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[9]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[9]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[9]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[9]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[9]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[9]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[10]~FF  (.D(\rx_/n230 [10]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[10]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[10]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[10]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[10]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[10]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[10]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/BIT_PERIOD_COUNTER[11]~FF  (.D(\rx_/n230 [11]), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/BIT_PERIOD_COUNTER [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/BIT_PERIOD_COUNTER[11]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[11]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[11]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[11]~FF .D_POLARITY = 1'b1;
    defparam \rx_/BIT_PERIOD_COUNTER[11]~FF .SR_SYNC = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[11]~FF .SR_VALUE = 1'b0;
    defparam \rx_/BIT_PERIOD_COUNTER[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/state[1]~FF  (.D(\rx_/n225 [1]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\rx_/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/state[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/state[1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/state[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_/state[1]~FF .SR_SYNC = 1'b0;
    defparam \rx_/state[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_/state[2]~FF  (.D(\rx_/select_54/Select_2/n3 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\rx_/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(89)
    defparam \rx_/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_/state[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_/state[2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_/state[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_/state[2]~FF .SR_SYNC = 1'b0;
    defparam \rx_/state[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/state[0]~FF  (.D(\tx_/n198 [0]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/state[0]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/state[0]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/state[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_/state[0]~FF .SR_SYNC = 1'b0;
    defparam \tx_/state[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \busy~FF  (.D(\tx_/Select_36/n4 ), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(busy)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \busy~FF .CLK_POLARITY = 1'b1;
    defparam \busy~FF .CE_POLARITY = 1'b1;
    defparam \busy~FF .SR_POLARITY = 1'b1;
    defparam \busy~FF .D_POLARITY = 1'b1;
    defparam \busy~FF .SR_SYNC = 1'b0;
    defparam \busy~FF .SR_VALUE = 1'b0;
    defparam \busy~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/bit_counter[0]~FF  (.D(\tx_/select_37/Select_0/n4 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\tx_/bit_counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/bit_counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/bit_counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/bit_counter[0]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/bit_counter[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_/bit_counter[0]~FF .SR_SYNC = 1'b0;
    defparam \tx_/bit_counter[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_/bit_counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[0]~FF  (.D(\tx_/n173 [0]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[0]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[0]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/tx_data_reg[0]~FF  (.D(tx_byte[0]), .CE(\tx_/n483 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\tx_/tx_data_reg [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/tx_data_reg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[0]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[0]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[0]~FF .D_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[0]~FF .SR_SYNC = 1'b1;
    defparam \tx_/tx_data_reg[0]~FF .SR_VALUE = 1'b0;
    defparam \tx_/tx_data_reg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uart_tx_pin~FF  (.D(\tx_/n165 ), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(uart_tx_pin)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \uart_tx_pin~FF .CLK_POLARITY = 1'b1;
    defparam \uart_tx_pin~FF .CE_POLARITY = 1'b1;
    defparam \uart_tx_pin~FF .SR_POLARITY = 1'b1;
    defparam \uart_tx_pin~FF .D_POLARITY = 1'b1;
    defparam \uart_tx_pin~FF .SR_SYNC = 1'b0;
    defparam \uart_tx_pin~FF .SR_VALUE = 1'b1;
    defparam \uart_tx_pin~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/state[1]~FF  (.D(\tx_/n198 [1]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/state[1]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/state[1]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/state[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_/state[1]~FF .SR_SYNC = 1'b0;
    defparam \tx_/state[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/state[2]~FF  (.D(\tx_/select_40/Select_2/n3 ), .CE(1'b1), 
           .CLK(\clk~O ), .SR(i_call), .Q(\tx_/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/state[2]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/state[2]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/state[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_/state[2]~FF .SR_SYNC = 1'b0;
    defparam \tx_/state[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/bit_counter[1]~FF  (.D(\tx_/n169 [1]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/bit_counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/bit_counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/bit_counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/bit_counter[1]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/bit_counter[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_/bit_counter[1]~FF .SR_SYNC = 1'b0;
    defparam \tx_/bit_counter[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_/bit_counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/bit_counter[2]~FF  (.D(\tx_/n169 [2]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/bit_counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/bit_counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/bit_counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/bit_counter[2]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/bit_counter[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_/bit_counter[2]~FF .SR_SYNC = 1'b0;
    defparam \tx_/bit_counter[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_/bit_counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[1]~FF  (.D(\tx_/n173 [1]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[1]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[1]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[1]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[2]~FF  (.D(\tx_/n173 [2]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[2]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[2]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[2]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[3]~FF  (.D(\tx_/n173 [3]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[3]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[3]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[3]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[4]~FF  (.D(\tx_/n173 [4]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[4]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[4]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[4]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[5]~FF  (.D(\tx_/n173 [5]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[5]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[5]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[5]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[6]~FF  (.D(\tx_/n173 [6]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[6]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[6]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[6]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[7]~FF  (.D(\tx_/n173 [7]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[7]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[7]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[7]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[8]~FF  (.D(\tx_/n173 [8]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[8]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[8]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[8]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[8]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[8]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[8]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[9]~FF  (.D(\tx_/n173 [9]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[9]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[9]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[9]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[9]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[9]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[9]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[10]~FF  (.D(\tx_/n173 [10]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[10]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[10]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[10]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[10]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[10]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[10]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/baud_counter[11]~FF  (.D(\tx_/n173 [11]), .CE(1'b1), .CLK(\clk~O ), 
           .SR(i_call), .Q(\tx_/baud_counter [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/baud_counter[11]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/baud_counter[11]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/baud_counter[11]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/baud_counter[11]~FF .D_POLARITY = 1'b1;
    defparam \tx_/baud_counter[11]~FF .SR_SYNC = 1'b0;
    defparam \tx_/baud_counter[11]~FF .SR_VALUE = 1'b0;
    defparam \tx_/baud_counter[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/tx_data_reg[1]~FF  (.D(tx_byte[1]), .CE(\tx_/n483 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\tx_/tx_data_reg [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/tx_data_reg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[1]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[1]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[1]~FF .D_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[1]~FF .SR_SYNC = 1'b1;
    defparam \tx_/tx_data_reg[1]~FF .SR_VALUE = 1'b0;
    defparam \tx_/tx_data_reg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/tx_data_reg[2]~FF  (.D(tx_byte[2]), .CE(\tx_/n483 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\tx_/tx_data_reg [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/tx_data_reg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[2]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[2]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[2]~FF .D_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[2]~FF .SR_SYNC = 1'b1;
    defparam \tx_/tx_data_reg[2]~FF .SR_VALUE = 1'b0;
    defparam \tx_/tx_data_reg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/tx_data_reg[3]~FF  (.D(tx_byte[3]), .CE(\tx_/n483 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\tx_/tx_data_reg [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/tx_data_reg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[3]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[3]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[3]~FF .D_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[3]~FF .SR_SYNC = 1'b1;
    defparam \tx_/tx_data_reg[3]~FF .SR_VALUE = 1'b0;
    defparam \tx_/tx_data_reg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/tx_data_reg[4]~FF  (.D(tx_byte[4]), .CE(\tx_/n483 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\tx_/tx_data_reg [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/tx_data_reg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[4]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[4]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[4]~FF .D_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[4]~FF .SR_SYNC = 1'b1;
    defparam \tx_/tx_data_reg[4]~FF .SR_VALUE = 1'b0;
    defparam \tx_/tx_data_reg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/tx_data_reg[5]~FF  (.D(tx_byte[5]), .CE(\tx_/n483 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\tx_/tx_data_reg [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/tx_data_reg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[5]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[5]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[5]~FF .D_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[5]~FF .SR_SYNC = 1'b1;
    defparam \tx_/tx_data_reg[5]~FF .SR_VALUE = 1'b0;
    defparam \tx_/tx_data_reg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/tx_data_reg[6]~FF  (.D(tx_byte[6]), .CE(\tx_/n483 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\tx_/tx_data_reg [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/tx_data_reg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[6]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[6]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[6]~FF .D_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[6]~FF .SR_SYNC = 1'b1;
    defparam \tx_/tx_data_reg[6]~FF .SR_VALUE = 1'b0;
    defparam \tx_/tx_data_reg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_/tx_data_reg[7]~FF  (.D(tx_byte[7]), .CE(\tx_/n483 ), .CLK(\clk~O ), 
           .SR(1'b0), .Q(\tx_/tx_data_reg [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(97)
    defparam \tx_/tx_data_reg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[7]~FF .CE_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[7]~FF .SR_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[7]~FF .D_POLARITY = 1'b1;
    defparam \tx_/tx_data_reg[7]~FF .SR_SYNC = 1'b1;
    defparam \tx_/tx_data_reg[7]~FF .SR_VALUE = 1'b0;
    defparam \tx_/tx_data_reg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \o_cos[0]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [32]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(o_cos[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \o_cos[0]~FF .CLK_POLARITY = 1'b1;
    defparam \o_cos[0]~FF .CE_POLARITY = 1'b1;
    defparam \o_cos[0]~FF .SR_POLARITY = 1'b0;
    defparam \o_cos[0]~FF .D_POLARITY = 1'b1;
    defparam \o_cos[0]~FF .SR_SYNC = 1'b0;
    defparam \o_cos[0]~FF .SR_VALUE = 1'b0;
    defparam \o_cos[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[0]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [0]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[0]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[0]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[0]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[0]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[0]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[0]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [0]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[0]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[0]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[0]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[0]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[0]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[0]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[0]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [0]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[0]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[0]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[0]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[0]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[0]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[0]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[0]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1107 [0]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[0]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[0]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[0]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[0]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[0]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[0]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n283 ), 
           .CE(ceg_net37), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n2307 ), 
           .CE(ceg_net37), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin~FF .D_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n281 ), 
           .CE(ceg_net37), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \o_done~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/Select_100/n4 ), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(o_done)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \o_done~FF .CLK_POLARITY = 1'b1;
    defparam \o_done~FF .CE_POLARITY = 1'b1;
    defparam \o_done~FF .SR_POLARITY = 1'b0;
    defparam \o_done~FF .D_POLARITY = 1'b1;
    defparam \o_done~FF .SR_SYNC = 1'b0;
    defparam \o_done~FF .SR_VALUE = 1'b0;
    defparam \o_done~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \o_sin[0]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [0]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(o_sin[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \o_sin[0]~FF .CLK_POLARITY = 1'b1;
    defparam \o_sin[0]~FF .CE_POLARITY = 1'b1;
    defparam \o_sin[0]~FF .SR_POLARITY = 1'b0;
    defparam \o_sin[0]~FF .D_POLARITY = 1'b1;
    defparam \o_sin[0]~FF .SR_SYNC = 1'b0;
    defparam \o_sin[0]~FF .SR_VALUE = 1'b0;
    defparam \o_sin[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [33]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [34]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [35]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [36]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [37]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [38]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [39]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [40]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [41]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [42]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [43]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [44]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [45]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [46]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [47]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [48]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [49]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [50]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [51]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [52]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [53]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [54]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [55]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [56]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [57]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [58]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [59]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [60]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [61]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [62]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [63]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[1]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [1]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[1]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[1]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[1]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[1]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[1]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[2]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [2]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[2]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[2]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[2]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[2]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[2]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[3]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [3]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[3]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[3]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[3]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[3]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[3]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[4]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [4]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[4]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[4]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[4]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[4]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[4]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[5]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [5]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[5]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[5]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[5]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[5]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[5]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[6]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [6]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[6]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[6]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[6]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[6]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[6]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[7]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [7]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[7]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[7]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[7]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[7]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[7]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[8]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [8]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[8]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[8]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[8]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[8]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[8]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[8]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[9]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [9]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[9]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[9]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[9]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[9]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[9]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[9]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[10]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [10]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[10]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[10]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[10]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[10]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[10]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[10]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[11]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [11]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[11]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[11]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[11]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[11]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[11]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[11]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[12]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [12]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[12]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[12]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[12]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[12]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[12]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[12]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[13]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [13]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[13]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[13]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[13]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[13]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[13]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[13]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[14]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [14]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[14]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[14]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[14]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[14]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[14]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[14]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[15]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [15]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[15]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[15]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[15]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[15]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[15]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[15]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[16]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [16]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[16]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[16]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[16]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[16]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[16]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[16]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[17]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [17]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[17]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[17]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[17]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[17]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[17]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[17]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[18]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [18]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[18]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[18]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[18]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[18]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[18]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[18]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[19]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [19]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[19]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[19]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[19]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[19]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[19]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[19]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[20]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [20]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[20]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[20]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[20]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[20]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[20]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[20]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[21]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [21]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[21]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[21]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[21]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[21]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[21]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[21]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[22]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [22]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[22]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[22]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[22]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[22]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[22]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[22]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[23]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [23]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[23]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[23]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[23]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[23]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[23]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[23]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[24]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [24]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[24]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[24]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[24]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[24]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[24]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[24]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[25]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [25]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[25]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[25]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[25]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[25]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[25]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[25]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[26]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [26]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[26]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[26]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[26]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[26]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[26]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[26]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[27]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [27]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[27]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[27]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[27]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[27]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[27]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[27]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[28]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [28]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[28]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[28]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[28]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[28]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[28]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[28]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[29]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [29]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[29]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[29]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[29]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[29]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[29]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[29]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[30]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [30]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[30]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[30]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[30]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[30]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[30]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[30]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_deg[31]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [31]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_deg [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_deg[31]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[31]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[31]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_deg[31]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_deg[31]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_deg[31]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_deg[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[1]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [1]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[1]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[1]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[1]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[1]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[1]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[1]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[2]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [2]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[2]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[2]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[2]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[2]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[2]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[2]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[3]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [3]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[3]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[3]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[3]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[3]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[3]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[3]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[4]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [4]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[4]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[4]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[4]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[4]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[4]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[4]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[5]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [5]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[5]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[5]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[5]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[5]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[5]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[5]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[6]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [6]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[6]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[6]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[6]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[6]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[6]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[6]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[7]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [7]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[7]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[7]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[7]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[7]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[7]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[7]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[8]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [8]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[8]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[8]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[8]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[8]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[8]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[8]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[9]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [9]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[9]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[9]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[9]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[9]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[9]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[9]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[10]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [10]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[10]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[10]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[10]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[10]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[10]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[10]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[11]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [11]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[11]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[11]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[11]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[11]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[11]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[11]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[12]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [12]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[12]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[12]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[12]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[12]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[12]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[12]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[13]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [13]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[13]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[13]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[13]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[13]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[13]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[13]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[14]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [14]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[14]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[14]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[14]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[14]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[14]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[14]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[15]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [15]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[15]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[15]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[15]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[15]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[15]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[15]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[16]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [16]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[16]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[16]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[16]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[16]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[16]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[16]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[17]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [17]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[17]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[17]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[17]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[17]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[17]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[17]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[18]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [18]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[18]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[18]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[18]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[18]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[18]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[18]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[19]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [19]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[19]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[19]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[19]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[19]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[19]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[19]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[20]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [20]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[20]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[20]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[20]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[20]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[20]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[20]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[21]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [21]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[21]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[21]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[21]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[21]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[21]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[21]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[22]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [22]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[22]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[22]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[22]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[22]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[22]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[22]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[23]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [23]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[23]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[23]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[23]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[23]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[23]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[23]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[24]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [24]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[24]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[24]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[24]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[24]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[24]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[24]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[25]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [25]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[25]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[25]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[25]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[25]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[25]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[25]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[26]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [26]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[26]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[26]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[26]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[26]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[26]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[26]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[27]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [27]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[27]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[27]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[27]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[27]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[27]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[27]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[28]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [28]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[28]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[28]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[28]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[28]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[28]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[28]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[29]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [29]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[29]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[29]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[29]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[29]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[29]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[29]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[30]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [30]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[30]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[30]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[30]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[30]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[30]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[30]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_y[31]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [31]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_y [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_y[31]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_y[31]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_y[31]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_y[31]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_y[31]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_y[31]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_y[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[1]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [1]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[1]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[1]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[1]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[1]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[1]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[1]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[2]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [2]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[2]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[2]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[2]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[2]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[2]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[2]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[3]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [3]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[3]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[3]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[3]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[3]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[3]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[3]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[4]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [4]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[4]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[4]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[4]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[4]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[4]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[4]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[5]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [5]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[5]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[5]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[5]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[5]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[5]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[5]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[6]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [6]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[6]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[6]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[6]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[6]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[6]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[6]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[7]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [7]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[7]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[7]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[7]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[7]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[7]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[7]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[8]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [8]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[8]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[8]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[8]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[8]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[8]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[8]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[9]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [9]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[9]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[9]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[9]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[9]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[9]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[9]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[10]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [10]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[10]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[10]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[10]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[10]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[10]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[10]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[11]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [11]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[11]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[11]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[11]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[11]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[11]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[11]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[12]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [12]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[12]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[12]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[12]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[12]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[12]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[12]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[13]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [13]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[13]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[13]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[13]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[13]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[13]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[13]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[14]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [14]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[14]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[14]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[14]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[14]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[14]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[14]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[15]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [15]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[15]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[15]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[15]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[15]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[15]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[15]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[16]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [16]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[16]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[16]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[16]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[16]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[16]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[16]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[17]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [17]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[17]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[17]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[17]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[17]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[17]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[17]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[18]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [18]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[18]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[18]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[18]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[18]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[18]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[18]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[19]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [19]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[19]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[19]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[19]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[19]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[19]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[19]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[20]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [20]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[20]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[20]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[20]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[20]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[20]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[20]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[21]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [21]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[21]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[21]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[21]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[21]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[21]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[21]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[22]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [22]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[22]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[22]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[22]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[22]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[22]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[22]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[23]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [23]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[23]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[23]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[23]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[23]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[23]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[23]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[24]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [24]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[24]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[24]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[24]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[24]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[24]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[24]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[25]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [25]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[25]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[25]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[25]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[25]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[25]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[25]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[26]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [26]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[26]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[26]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[26]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[26]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[26]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[26]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[27]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [27]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[27]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[27]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[27]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[27]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[27]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[27]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[28]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [28]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[28]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[28]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[28]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[28]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[28]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[28]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[29]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [29]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[29]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[29]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[29]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[29]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[29]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[29]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[30]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [30]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[30]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[30]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[30]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[30]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[30]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[30]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/o_x[31]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [31]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/o_x [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/o_x[31]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/o_x[31]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/o_x[31]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/o_x[31]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/o_x[31]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/o_x[31]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/o_x[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[1]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1107 [1]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[1]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[1]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[1]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[1]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[1]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[1]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[2]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1107 [2]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[2]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[2]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[2]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[2]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[2]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[2]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[3]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1107 [3]), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[3]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[3]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[3]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[3]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[3]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[3]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[4]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/select_92/Select_4/n32 ), 
           .CE(i_call), .CLK(\clk~O ), .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[4]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[4]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[4]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[4]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[4]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[4]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/i[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [1]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [2]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [3]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [4]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [5]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [6]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [7]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [8]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [9]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [10]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [11]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [12]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [13]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [14]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [15]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [16]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [17]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [18]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [19]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [20]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [21]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [22]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [23]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [24]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [25]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [26]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [27]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [28]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [29]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [30]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31]~FF  (.D(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [31]), 
           .CE(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 ), .CLK(\clk~O ), 
           .SR(i_call), .Q(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31]~FF .CLK_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31]~FF .CE_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31]~FF .SR_POLARITY = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31]~FF .D_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31]~FF .SR_SYNC = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31]~FF .SR_VALUE = 1'b0;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[1]~FF  (.D(rx_byte[1]), .CE(n1410_2), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[1]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[2]~FF  (.D(rx_byte[2]), .CE(n1410_2), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[2]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[3]~FF  (.D(rx_byte[3]), .CE(n1410_2), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[3]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[3]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[4]~FF  (.D(rx_byte[4]), .CE(n1410_2), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[4]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[4]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[4]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[4]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[5]~FF  (.D(rx_byte[5]), .CE(n1410_2), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[5]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[5]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[5]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[5]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[6]~FF  (.D(rx_byte[6]), .CE(n1410_2), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[6]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[6]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[6]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[6]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[7]~FF  (.D(rx_byte[7]), .CE(n1410_2), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[7]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[7]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[7]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[7]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[8]~FF  (.D(rx_byte[0]), .CE(n1030), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[8]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[8]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[8]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[8]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[8]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[8]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[9]~FF  (.D(rx_byte[1]), .CE(n1030), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[9]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[9]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[9]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[9]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[9]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[9]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[10]~FF  (.D(rx_byte[2]), .CE(n1030), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[10]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[10]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[10]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[10]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[10]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[10]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[11]~FF  (.D(rx_byte[3]), .CE(n1030), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[11]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[11]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[11]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[11]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[11]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[11]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[12]~FF  (.D(rx_byte[4]), .CE(n1030), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[12]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[12]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[12]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[12]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[12]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[12]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[13]~FF  (.D(rx_byte[5]), .CE(n1030), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[13]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[13]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[13]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[13]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[13]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[13]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[14]~FF  (.D(rx_byte[6]), .CE(n1030), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[14]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[14]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[14]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[14]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[14]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[14]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[15]~FF  (.D(rx_byte[7]), .CE(n1030), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[15]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[15]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[15]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[15]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[15]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[15]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[16]~FF  (.D(rx_byte[0]), .CE(n1038), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[16]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[16]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[16]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[16]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[16]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[16]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[17]~FF  (.D(rx_byte[1]), .CE(n1038), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[17]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[17]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[17]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[17]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[17]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[17]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[18]~FF  (.D(rx_byte[2]), .CE(n1038), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[18]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[18]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[18]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[18]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[18]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[18]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[19]~FF  (.D(rx_byte[3]), .CE(n1038), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[19]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[19]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[19]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[19]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[19]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[19]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[20]~FF  (.D(rx_byte[4]), .CE(n1038), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[20]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[20]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[20]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[20]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[20]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[20]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[21]~FF  (.D(rx_byte[5]), .CE(n1038), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[21]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[21]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[21]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[21]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[21]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[21]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[22]~FF  (.D(rx_byte[6]), .CE(n1038), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[22]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[22]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[22]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[22]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[22]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[22]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[23]~FF  (.D(rx_byte[7]), .CE(n1038), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[23]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[23]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[23]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[23]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[23]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[23]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[24]~FF  (.D(rx_byte[0]), .CE(n1046), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[24]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[24]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[24]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[24]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[24]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[24]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[25]~FF  (.D(rx_byte[1]), .CE(n1046), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[25]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[25]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[25]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[25]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[25]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[25]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[26]~FF  (.D(rx_byte[2]), .CE(n1046), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[26]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[26]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[26]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[26]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[26]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[26]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[27]~FF  (.D(rx_byte[3]), .CE(n1046), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[27]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[27]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[27]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[27]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[27]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[27]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[28]~FF  (.D(rx_byte[4]), .CE(n1046), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[28]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[28]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[28]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[28]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[28]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[28]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[29]~FF  (.D(rx_byte[5]), .CE(n1046), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[29]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[29]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[29]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[29]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[29]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[29]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[30]~FF  (.D(rx_byte[6]), .CE(n1046), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[30]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[30]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[30]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[30]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[30]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[30]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_store[31]~FF  (.D(rx_byte[7]), .CE(n1046), .CLK(\clk~O ), 
           .SR(1'b0), .Q(rx_store[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \rx_store[31]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_store[31]~FF .CE_POLARITY = 1'b1;
    defparam \rx_store[31]~FF .SR_POLARITY = 1'b1;
    defparam \rx_store[31]~FF .D_POLARITY = 1'b1;
    defparam \rx_store[31]~FF .SR_SYNC = 1'b1;
    defparam \rx_store[31]~FF .SR_VALUE = 1'b0;
    defparam \rx_store[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i30  (.I0(\sin_cos/o_x [29]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [29]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n58 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [29]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i30 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i30 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i29  (.I0(\sin_cos/o_x [28]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [28]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n56 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [28]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i29 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i28  (.I0(\sin_cos/o_x [27]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [27]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n54 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [27]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i28 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i27  (.I0(\sin_cos/o_x [26]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [26]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n52 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [26]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i27 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i27 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i26  (.I0(\sin_cos/o_x [25]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [25]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n50 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [25]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i26 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i26 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i25  (.I0(\sin_cos/o_x [24]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [24]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n48 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [24]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i25 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i24  (.I0(\sin_cos/o_x [23]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [23]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n46 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [23]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i24 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i23  (.I0(\sin_cos/o_x [22]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [22]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n44 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [22]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i23 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i23 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i13  (.I0(\sin_cos/o_deg [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [12]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n24 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [12]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i22  (.I0(\sin_cos/o_x [21]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [21]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n42 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [21]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i22 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i22 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i21  (.I0(\sin_cos/o_x [20]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [20]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n40 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [20]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i21 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i21 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i20  (.I0(\sin_cos/o_x [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [19]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n38 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [19]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i20 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i1  (.I0(\sin_cos/o_y [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [0]), .CI(1'b0), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [0]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i1 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i2  (.I0(\sin_cos/o_y [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [1]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n2 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [1]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i2 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i2 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i19  (.I0(\sin_cos/o_x [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [18]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n36 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [18]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i19 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i18  (.I0(\sin_cos/o_x [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [17]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n34 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [17]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i18 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i17  (.I0(\sin_cos/o_x [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [16]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n32 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [16]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i17 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i14  (.I0(\sin_cos/o_deg [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [13]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n26 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [13]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i16  (.I0(\sin_cos/o_x [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [15]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n30 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [15]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i16 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i15  (.I0(\sin_cos/o_deg [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [14]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n28 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [14]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i27  (.I0(\sin_cos/o_y [26]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [26]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n52 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [26]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i27 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i27 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i15  (.I0(\sin_cos/o_x [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n143 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n28 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [14]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i15 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i14  (.I0(\sin_cos/o_x [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [13]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n26 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [13]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i13  (.I0(\sin_cos/o_x [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [12]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n24 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [12]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i12  (.I0(\sin_cos/o_x [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [11]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n22 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [11]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i11  (.I0(\sin_cos/o_x [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [10]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n20 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [10]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i10  (.I0(\sin_cos/o_x [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [9]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n18 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [9]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i9  (.I0(\sin_cos/o_x [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [8]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n16 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [8]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i8  (.I0(\sin_cos/o_x [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [7]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n14 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [7]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i7  (.I0(\sin_cos/o_x [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n135 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n12 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [6]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i7 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i6  (.I0(\sin_cos/o_x [5]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n134 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n10 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [5]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i6 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i5  (.I0(\sin_cos/o_x [4]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n133 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n8 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [4]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i5 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i4  (.I0(\sin_cos/o_x [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [3]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n6 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [3]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i3  (.I0(\sin_cos/o_x [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [2]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n4 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [2]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i2  (.I0(\sin_cos/o_x [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n130 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n2 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [1]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i2 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i31  (.I0(in_data[31]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n60 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i31 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i30  (.I0(in_data[30]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n58 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [29]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i30 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i12  (.I0(\sin_cos/o_deg [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [11]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n22 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [11]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i29  (.I0(in_data[29]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n56 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [28]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i29 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i28  (.I0(in_data[28]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n54 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [27]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i28 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i27  (.I0(in_data[27]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n52 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [26]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i27 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i26  (.I0(in_data[26]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n50 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [25]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i26 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i25  (.I0(in_data[25]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n48 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [24]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i25 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i9  (.I0(\sin_cos/o_deg [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [8]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n16 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [8]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i9 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i24  (.I0(in_data[24]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n46 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [23]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i24 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i23  (.I0(in_data[23]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n44 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [22]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i23 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i22  (.I0(in_data[22]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n42 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [21]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i22 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i21  (.I0(in_data[21]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n40 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [20]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i21 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i20  (.I0(in_data[20]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n38 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [19]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i19  (.I0(in_data[19]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n36 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [18]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i18  (.I0(in_data[18]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n34 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [17]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i17  (.I0(in_data[17]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n32 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [16]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i16  (.I0(in_data[16]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n30 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [15]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i15  (.I0(in_data[15]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n28 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [14]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i14  (.I0(in_data[14]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n26 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [13]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i13  (.I0(in_data[13]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n24 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [12]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i12  (.I0(in_data[12]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n22 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [11]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i11  (.I0(in_data[11]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n20 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [10]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i10  (.I0(in_data[10]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n18 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [9]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i9  (.I0(in_data[9]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n16 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [8]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i8  (.I0(in_data[8]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n14 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [7]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i7  (.I0(in_data[7]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n12 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [6]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i6  (.I0(in_data[6]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n10 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [5]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i5  (.I0(in_data[5]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n8 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [4]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i4  (.I0(in_data[4]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n6 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [3]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i3  (.I0(in_data[3]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n4 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [2]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i2  (.I0(in_data[2]), 
            .I1(1'b0), .CI(n2486), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [1]), 
            .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i30  (.I0(in_data[31]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n58 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i30 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i29  (.I0(in_data[30]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n56 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [28]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i29 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i28  (.I0(in_data[29]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n54 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [27]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i28 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i27  (.I0(in_data[28]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n52 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [26]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i27 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i26  (.I0(in_data[27]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n50 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [25]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i26 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i25  (.I0(in_data[26]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n48 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [24]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i25 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i3  (.I0(\sin_cos/o_y [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [2]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n4 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [2]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i3 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i1  (.I0(\sin_cos/o_x [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [0]), .CI(1'b0), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [0]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i1 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i7  (.I0(\sin_cos/o_deg [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [6]), .CI(1'b0), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [6]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i7 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i24  (.I0(in_data[25]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n46 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [23]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i24 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i23  (.I0(in_data[24]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n44 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [22]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i23 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i22  (.I0(in_data[23]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n42 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [21]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i22 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i21  (.I0(in_data[22]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n40 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [20]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i21 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i20  (.I0(in_data[21]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n38 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [19]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i19  (.I0(in_data[20]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n36 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [18]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i18  (.I0(in_data[19]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n34 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [17]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i17  (.I0(in_data[18]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n32 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [16]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i16  (.I0(in_data[17]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n30 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [15]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i15  (.I0(in_data[16]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n28 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [14]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i14  (.I0(in_data[15]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n26 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [13]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i13  (.I0(in_data[14]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n24 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [12]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i12  (.I0(in_data[13]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n22 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [11]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i11  (.I0(in_data[12]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n20 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [10]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i10  (.I0(in_data[11]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n18 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [9]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i1  (.I0(in_data[2]), 
            .I1(1'b0), .CI(n2483), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i1  (.I0(in_data[1]), 
            .I1(1'b0), .CI(n2484), .CO(n2485)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i1  (.I0(\sin_cos/o_x [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [0]), .CI(n2488), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [0]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i1 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i7  (.I0(\sin_cos/o_deg [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [6]), .CI(n2489), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [6]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i7 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i1  (.I0(\sin_cos/o_y [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [0]), .CI(n2490), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [0]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i1 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i9  (.I0(in_data[10]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n16 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [8]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i8  (.I0(in_data[9]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n14 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [7]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i7  (.I0(in_data[8]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n12 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [6]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i6  (.I0(in_data[7]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n10 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [5]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i5  (.I0(in_data[6]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n8 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [4]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i4  (.I0(in_data[5]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n6 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [3]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i3  (.I0(in_data[4]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n4 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [2]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i2  (.I0(in_data[3]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n2 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [1]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i31  (.I0(in_data[31]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n60 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i31 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i30  (.I0(in_data[30]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n58 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [29]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i30 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i29  (.I0(in_data[29]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n56 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [28]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i29 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i28  (.I0(in_data[28]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n54 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [27]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i28 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i27  (.I0(in_data[27]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n52 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [26]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i27 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i26  (.I0(in_data[26]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n50 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [25]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i26 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i25  (.I0(in_data[25]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n48 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [24]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i25 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i24  (.I0(in_data[24]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n46 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [23]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i24 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i23  (.I0(in_data[23]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n44 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [22]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i23 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i22  (.I0(in_data[22]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n42 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [21]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i22 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i21  (.I0(in_data[21]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n40 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [20]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i21 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i20  (.I0(in_data[20]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n38 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [19]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i19  (.I0(in_data[19]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n36 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [18]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i18  (.I0(in_data[18]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n34 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [17]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i17  (.I0(in_data[17]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n32 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [16]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i16  (.I0(in_data[16]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n30 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [15]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i15  (.I0(in_data[15]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n28 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [14]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i14  (.I0(in_data[14]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n26 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [13]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i13  (.I0(in_data[13]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n24 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [12]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i12  (.I0(in_data[12]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n22 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [11]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i11  (.I0(in_data[11]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n20 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [10]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i10  (.I0(in_data[10]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n18 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [9]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i9  (.I0(in_data[9]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n16 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [8]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i8  (.I0(in_data[8]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n14 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [7]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i7  (.I0(in_data[7]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n12 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [6]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i6  (.I0(in_data[6]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n10 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [5]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i5  (.I0(in_data[5]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n8 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [4]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i4  (.I0(in_data[4]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n6 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [3]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i3  (.I0(in_data[3]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n4 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [2]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i2  (.I0(in_data[2]), 
            .I1(1'b1), .CI(n2487), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i32  (.I0(\sin_cos/o_deg [31]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n62 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i32 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i31  (.I0(\sin_cos/o_deg [30]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n60 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [30]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i31 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i30  (.I0(\sin_cos/o_deg [29]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n58 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [29]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i30 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i29  (.I0(\sin_cos/o_deg [28]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n56 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [28]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i29 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i28  (.I0(\sin_cos/o_deg [27]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n54 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [27]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i28 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i27  (.I0(\sin_cos/o_deg [26]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n52 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [26]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i27 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i26  (.I0(\sin_cos/o_deg [25]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n50 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [25]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i26 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i25  (.I0(\sin_cos/o_deg [24]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n48 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [24]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i25 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i24  (.I0(\sin_cos/o_deg [23]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n46 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [23]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i24 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i23  (.I0(\sin_cos/o_deg [22]), 
            .I1(1'b0), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n44 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [22]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i23 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i22  (.I0(\sin_cos/o_deg [21]), 
            .I1(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_64/n11 ), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n42 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [21]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i22 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i21  (.I0(\sin_cos/o_deg [20]), 
            .I1(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_65/n11 ), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n40 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [20]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i21 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i20  (.I0(\sin_cos/o_deg [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [19]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n38 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [19]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i20 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i20 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i19  (.I0(\sin_cos/o_deg [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [18]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n36 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [18]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i19 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i18  (.I0(\sin_cos/o_deg [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [17]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n34 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [17]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i18 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i17  (.I0(\sin_cos/o_deg [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [16]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n32 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [16]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i17 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i16  (.I0(\sin_cos/o_deg [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [15]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n30 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [15]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i16 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i16 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i15  (.I0(\sin_cos/o_deg [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [14]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n28 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [14]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i15 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i15 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i14  (.I0(\sin_cos/o_deg [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [13]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n26 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [13]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i14 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i14 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i13  (.I0(\sin_cos/o_deg [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [12]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n24 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [12]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i13 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i13 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i12  (.I0(\sin_cos/o_deg [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [11]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n22 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [11]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i12 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i12 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i26  (.I0(\sin_cos/o_y [25]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [25]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n50 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [25]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i26 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i26 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i32  (.I0(\sin_cos/o_y [31]), 
            .I1(\sin_cos/o_x [31]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n62 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i32 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i32 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i31  (.I0(\sin_cos/o_y [30]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [30]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n60 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [30]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i31 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i30  (.I0(\sin_cos/o_y [29]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [29]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n58 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [29]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i30 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i30 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i29  (.I0(\sin_cos/o_y [28]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [28]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n56 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [28]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i29 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i11  (.I0(\sin_cos/o_deg [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [10]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n20 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [10]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i11 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i10  (.I0(\sin_cos/o_deg [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [9]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n18 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [9]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i10 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i10 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i9  (.I0(\sin_cos/o_deg [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [8]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n16 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [8]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i9 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i8  (.I0(\sin_cos/o_deg [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [7]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n14 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [7]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(484)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i8 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_51/i8 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i32  (.I0(\sin_cos/o_x [31]), 
            .I1(\sin_cos/o_y [31]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n62 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i32 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i31  (.I0(\sin_cos/o_x [30]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [30]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n60 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [30]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i31 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i31 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i30  (.I0(\sin_cos/o_x [29]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [29]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n58 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [29]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i30 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i29  (.I0(\sin_cos/o_x [28]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [28]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n56 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [28]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i29 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i29 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i28  (.I0(\sin_cos/o_x [27]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [27]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n54 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [27]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i28 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i28 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i27  (.I0(\sin_cos/o_x [26]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [26]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n52 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [26]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i27 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i26  (.I0(\sin_cos/o_x [25]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [25]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n50 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [25]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i26 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i25  (.I0(\sin_cos/o_x [24]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [24]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n48 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [24]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i25 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i25 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i24  (.I0(\sin_cos/o_x [23]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [23]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n46 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [23]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i24 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i24 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i23  (.I0(\sin_cos/o_x [22]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [22]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n44 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [22]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i23 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i22  (.I0(\sin_cos/o_x [21]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [21]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n42 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [21]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i22 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i21  (.I0(\sin_cos/o_x [20]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [20]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n40 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [20]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i21 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i20  (.I0(\sin_cos/o_x [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [19]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n38 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [19]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i20 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i19  (.I0(\sin_cos/o_x [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [18]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n36 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [18]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i19 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i18  (.I0(\sin_cos/o_x [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [17]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n34 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [17]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i18 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i17  (.I0(\sin_cos/o_x [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [16]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n32 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [16]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i17 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i16  (.I0(\sin_cos/o_x [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [15]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n30 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [15]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i16 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i15  (.I0(\sin_cos/o_x [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n143 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n28 ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [14]), 
            .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i15 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i14  (.I0(\sin_cos/o_x [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [13]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n26 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [13]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i14 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i14 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i13  (.I0(\sin_cos/o_x [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [12]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n24 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [12]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i13 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i13 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i12  (.I0(\sin_cos/o_x [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [11]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n22 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [11]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i12 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i12 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i11  (.I0(\sin_cos/o_x [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [10]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n20 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [10]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i11 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i11 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i10  (.I0(\sin_cos/o_x [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [9]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n18 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [9]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i10 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i10 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i9  (.I0(\sin_cos/o_x [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [8]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n16 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [8]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i9 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i9 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i8  (.I0(\sin_cos/o_x [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [7]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n14 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [7]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i8 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i8 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i7  (.I0(\sin_cos/o_x [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n135 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n12 ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [6]), 
            .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i7 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i16  (.I0(\sin_cos/o_deg [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [15]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n30 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [15]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i17  (.I0(\sin_cos/o_deg [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [16]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n32 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [16]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i17 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i6  (.I0(\sin_cos/o_x [5]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n134 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n10 ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [5]), 
            .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i6 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i18  (.I0(\sin_cos/o_deg [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [17]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n34 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [17]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i18 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i5  (.I0(\sin_cos/o_x [4]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n133 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n8 ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [4]), 
            .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i5 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i25  (.I0(\sin_cos/o_y [24]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [24]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n48 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [24]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i25 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i4  (.I0(\sin_cos/o_x [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [3]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n6 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [3]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i4 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i4 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i3  (.I0(\sin_cos/o_x [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [2]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n4 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [2]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i3 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i3 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i24  (.I0(\sin_cos/o_y [23]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [23]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n46 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [23]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i24 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i2  (.I0(\sin_cos/o_x [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n130 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n2 ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [1]), 
            .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(482)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i2 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_47/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i32  (.I0(\sin_cos/o_y [31]), 
            .I1(\sin_cos/o_x [31]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n62 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i32 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i19  (.I0(\sin_cos/o_deg [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [18]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n36 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [18]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i19 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i23  (.I0(\sin_cos/o_y [22]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [22]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n44 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [22]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i23 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i23 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i20  (.I0(\sin_cos/o_deg [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [19]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n38 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [19]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i21  (.I0(\sin_cos/o_deg [20]), 
            .I1(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_65/n11 ), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n40 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [20]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i21 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i21 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i22  (.I0(\sin_cos/o_y [21]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [21]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n42 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [21]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i22 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i22 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i31  (.I0(\sin_cos/o_y [30]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [30]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n60 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [30]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i31 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i31 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i21  (.I0(\sin_cos/o_y [20]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [20]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n40 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [20]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i21 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i21 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i31  (.I0(\sin_cos/o_x [30]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [30]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n60 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [30]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i31 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i30  (.I0(\sin_cos/o_y [29]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [29]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n58 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [29]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i30 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i22  (.I0(\sin_cos/o_deg [21]), 
            .I1(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_64/n11 ), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n42 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [21]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i22 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i22 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i20  (.I0(\sin_cos/o_y [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [19]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n38 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [19]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i20 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i20 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i29  (.I0(\sin_cos/o_y [28]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [28]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n56 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [28]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i29 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i29 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i23  (.I0(\sin_cos/o_deg [22]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n44 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [22]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i23 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i28  (.I0(\sin_cos/o_y [27]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [27]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n54 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [27]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i28 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i28 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i24  (.I0(\sin_cos/o_deg [23]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n46 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [23]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i24 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i24 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i19  (.I0(\sin_cos/o_y [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [18]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n36 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [18]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i19 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i19 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i18  (.I0(\sin_cos/o_y [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [17]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n34 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [17]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i18 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i18 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i25  (.I0(\sin_cos/o_deg [24]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n48 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [24]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i25 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i25 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i17  (.I0(\sin_cos/o_y [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [16]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n32 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [16]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i17 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i17 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i26  (.I0(\sin_cos/o_deg [25]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n50 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [25]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i26 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i16  (.I0(\sin_cos/o_y [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [15]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n30 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [15]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i16 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i16 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i27  (.I0(\sin_cos/o_y [26]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [26]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n52 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [26]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i27 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i8  (.I0(\sin_cos/o_deg [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [7]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n14 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [7]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i26  (.I0(\sin_cos/o_y [25]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [25]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n50 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [25]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n52 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i26 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i26 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i25  (.I0(\sin_cos/o_y [24]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [24]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n48 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [24]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n50 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i25 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i25 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i24  (.I0(\sin_cos/o_y [23]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [23]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n46 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [23]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n48 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i24 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i24 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i28  (.I0(\sin_cos/o_y [27]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [27]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n54 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [27]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i28 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i32  (.I0(\sin_cos/o_x [31]), 
            .I1(\sin_cos/o_y [31]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/n62 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i32 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i32 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i23  (.I0(\sin_cos/o_y [22]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [22]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n44 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [22]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n46 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i23 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i23 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i22  (.I0(\sin_cos/o_y [21]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [21]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n42 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [21]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n44 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i22 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i22 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i21  (.I0(\sin_cos/o_y [20]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [20]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n40 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [20]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n42 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i21 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i21 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i20  (.I0(\sin_cos/o_y [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [19]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n38 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [19]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n40 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i20 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i20 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i19  (.I0(\sin_cos/o_y [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [18]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n36 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [18]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n38 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i19 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i19 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i18  (.I0(\sin_cos/o_y [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [17]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n34 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [17]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n36 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i18 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i18 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i17  (.I0(\sin_cos/o_y [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [16]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n32 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [16]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n34 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i17 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i17 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i16  (.I0(\sin_cos/o_y [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [15]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n30 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [15]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i16 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i16 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i15  (.I0(\sin_cos/o_y [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [14]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n28 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [14]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i15 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i15 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i14  (.I0(\sin_cos/o_y [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [13]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n26 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [13]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i14 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i14 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i13  (.I0(\sin_cos/o_y [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [12]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n24 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [12]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i13 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i13 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i12  (.I0(\sin_cos/o_y [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [11]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n22 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [11]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i12 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i12 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i11  (.I0(\sin_cos/o_y [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [10]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n20 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [10]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i11 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i11 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i10  (.I0(\sin_cos/o_y [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [9]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n18 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [9]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i10 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i10 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i10  (.I0(\sin_cos/o_deg [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [9]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n18 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [9]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i9  (.I0(\sin_cos/o_y [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [8]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n16 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [8]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i9 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i9 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i27  (.I0(\sin_cos/o_deg [26]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n52 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [26]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n54 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i27 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i27 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i28  (.I0(\sin_cos/o_deg [27]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n54 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [27]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n56 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i28 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i28 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i29  (.I0(\sin_cos/o_deg [28]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n56 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [28]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n58 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i29 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i29 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i15  (.I0(\sin_cos/o_y [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [14]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n28 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [14]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n30 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i15 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i15 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i14  (.I0(\sin_cos/o_y [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [13]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n26 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [13]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n28 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i14 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i14 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i30  (.I0(\sin_cos/o_deg [29]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n58 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [29]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n60 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i30 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i30 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i13  (.I0(\sin_cos/o_y [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [12]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n24 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [12]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n26 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i13 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i13 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i31  (.I0(\sin_cos/o_deg [30]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n60 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [30]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n62 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i31 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i31 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i32  (.I0(\sin_cos/o_deg [31]), 
            .I1(1'b1), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n62 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i32 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i32 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i12  (.I0(\sin_cos/o_y [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [11]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n22 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [11]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n24 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i12 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i12 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i11  (.I0(\sin_cos/o_y [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [10]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n20 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [10]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i11 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i10  (.I0(\sin_cos/o_y [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [9]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n18 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [9]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i10 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i10 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i8  (.I0(\sin_cos/o_y [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [7]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n14 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [7]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i8 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i8 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i2  (.I0(\sin_cos/o_y [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [1]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n2 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [1]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i3  (.I0(\sin_cos/o_y [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [2]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n4 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [2]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i3 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i9  (.I0(\sin_cos/o_y [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [8]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n16 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [8]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n18 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i9 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i9 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i8  (.I0(\sin_cos/o_y [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [7]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n14 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [7]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n16 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i4  (.I0(\sin_cos/o_y [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [3]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n6 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [3]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i7  (.I0(\sin_cos/o_y [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n135 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n12 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [6]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i7 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i7  (.I0(\sin_cos/o_y [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n135 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n12 ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [6]), 
            .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i7 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i5  (.I0(\sin_cos/o_y [4]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n133 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n8 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [4]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i5 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i6  (.I0(\sin_cos/o_y [5]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n134 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n10 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [5]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i6 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i6  (.I0(\sin_cos/o_y [5]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n134 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n10 ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [5]), 
            .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i6 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i5  (.I0(\sin_cos/o_y [4]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n133 ), 
            .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n8 ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [4]), 
            .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i5 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i4  (.I0(\sin_cos/o_y [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [3]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n6 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [3]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(474)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i4 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/add_38/i4 .I1_POLARITY = 1'b0;
    EFX_ADD \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i11  (.I0(\sin_cos/o_deg [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [10]), .CI(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n20 ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [10]), .CO(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/n22 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i11 .I0_POLARITY = 1'b1;
    defparam \sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i11 .I1_POLARITY = 1'b0;
    EFX_LUT4 LUT__2727 (.I0(n1382), .I1(\sin_cos/o_y [31]), .I2(n1383), 
            .O(n1384)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2727.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2728 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), .O(n1385)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2728.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2729 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), .I2(n1385), 
            .O(n1386)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2729.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2730 (.I0(n1385), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), .O(n1387)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2730.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2731 (.I0(n1386), .I1(n1387), .O(n1388)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2731.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2732 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .O(n1389)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__2732.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__2733 (.I0(n1384), .I1(\sin_cos/o_y [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2733.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2734 (.I0(\sin_cos/o_y [29]), .I1(\sin_cos/o_y [31]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1390)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2734.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2735 (.I0(\sin_cos/o_y [28]), .I1(\sin_cos/o_y [30]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I3(n1390), 
            .O(n1391)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2735.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2736 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .O(n1392)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2736.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2737 (.I0(n1391), .I1(\sin_cos/o_y [31]), .I2(n1392), 
            .O(n1393)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__2737.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2738 (.I0(n1393), .I1(\sin_cos/o_y [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2738.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__2739 (.I0(\sin_cos/o_y [28]), .I1(\sin_cos/o_y [27]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .O(n1394)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2739.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2740 (.I0(n1382), .I1(n1394), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1395)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__2740.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2741 (.I0(n1395), .I1(\sin_cos/o_y [31]), .I2(n1392), 
            .O(n1396)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__2741.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2742 (.I0(n1396), .I1(\sin_cos/o_y [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2742.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__2743 (.I0(\sin_cos/o_y [30]), .I1(\sin_cos/o_y [31]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1397)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;
    defparam LUT__2743.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2744 (.I0(\sin_cos/o_y [27]), .I1(\sin_cos/o_y [29]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1398)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2744.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2745 (.I0(\sin_cos/o_y [26]), .I1(\sin_cos/o_y [28]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1399)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2745.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2746 (.I0(n1399), .I1(n1398), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1400)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__2746.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2747 (.I0(n1400), .I1(n1397), .I2(n1392), .O(n1401)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__2747.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2748 (.I0(n1401), .I1(\sin_cos/o_y [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2748.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2749 (.I0(n1382), .I1(\sin_cos/o_y [31]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1402)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2749.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2750 (.I0(\sin_cos/o_y [25]), .I1(\sin_cos/o_y [27]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1403)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2750.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2751 (.I0(n1399), .I1(n1403), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1404)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2751.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2752 (.I0(n1404), .I1(n1402), .I2(n1392), .O(n1405)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__2752.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2753 (.I0(n1405), .I1(\sin_cos/o_y [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2753.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2754 (.I0(\sin_cos/o_y [24]), .I1(\sin_cos/o_y [26]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1406)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2754.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2755 (.I0(n1403), .I1(n1406), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1407)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2755.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2756 (.I0(n1391), .I1(n1407), .I2(n1392), .O(n1408)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2756.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2757 (.I0(n1408), .I1(\sin_cos/o_y [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2757.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__2758 (.I0(\sin_cos/o_y [23]), .I1(\sin_cos/o_y [25]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1409)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2758.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2759 (.I0(n1406), .I1(n1409), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1410)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2759.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2760 (.I0(n1395), .I1(n1410), .I2(n1392), .O(n1411)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2760.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2761 (.I0(n1411), .I1(\sin_cos/o_y [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2761.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__2762 (.I0(\sin_cos/o_y [30]), .I1(\sin_cos/o_y [31]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I3(n1383), 
            .O(n1412)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;
    defparam LUT__2762.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2763 (.I0(\sin_cos/o_y [22]), .I1(\sin_cos/o_y [24]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1413)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2763.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2764 (.I0(n1409), .I1(n1413), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1414)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2764.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2765 (.I0(n1400), .I1(n1414), .I2(n1392), .O(n1415)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2765.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2766 (.I0(n1415), .I1(n1412), .I2(n1389), .O(n1416)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2766.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2767 (.I0(n1416), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2767.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2768 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef17 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__2768.LUTMASK = 16'hef17;
    EFX_LUT4 LUT__2769 (.I0(\sin_cos/o_y [21]), .I1(\sin_cos/o_y [23]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1417)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2769.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2770 (.I0(n1413), .I1(n1417), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1418)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2770.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2771 (.I0(n1404), .I1(n1418), .I2(n1392), .O(n1419)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2771.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2772 (.I0(n1419), .I1(n1384), .I2(n1389), .O(n1420)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2772.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2773 (.I0(n1420), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2773.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2774 (.I0(\sin_cos/o_y [20]), .I1(\sin_cos/o_y [22]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1421)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2774.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2775 (.I0(n1417), .I1(n1421), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1422)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2775.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2776 (.I0(n1407), .I1(n1422), .I2(n1392), .O(n1423)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2776.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2777 (.I0(n1393), .I1(n1423), .I2(n1389), .O(n1424)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2777.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2778 (.I0(n1424), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2778.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2779 (.I0(\sin_cos/o_y [19]), .I1(\sin_cos/o_y [21]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1425)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2779.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2780 (.I0(n1421), .I1(n1425), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1426)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2780.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2781 (.I0(n1410), .I1(n1426), .I2(n1392), .O(n1427)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2781.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2782 (.I0(n1396), .I1(n1427), .I2(n1389), .O(n1428)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2782.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2783 (.I0(n1428), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2783.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2784 (.I0(\sin_cos/o_x [4]), .I1(\sin_cos/o_x [6]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1429)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2784.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2785 (.I0(\sin_cos/o_x [5]), .I1(\sin_cos/o_x [7]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1430)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2785.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2786 (.I0(n1430), .I1(n1429), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1431)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2786.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2787 (.I0(\sin_cos/o_x [3]), .I1(\sin_cos/o_x [2]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1432)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2787.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2788 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I1(n1432), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .O(n1433)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2788.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2789 (.I0(\sin_cos/o_x [0]), .I1(\sin_cos/o_x [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I3(n1383), .O(n1434)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__2789.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__2790 (.I0(n1431), .I1(n1392), .I2(n1433), .I3(n1434), 
            .O(n1435)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000e */ ;
    defparam LUT__2790.LUTMASK = 16'h000e;
    EFX_LUT4 LUT__2791 (.I0(\sin_cos/o_x [8]), .I1(\sin_cos/o_x [10]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1436)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2791.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2792 (.I0(\sin_cos/o_x [9]), .I1(\sin_cos/o_x [11]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1437)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2792.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2793 (.I0(n1437), .I1(n1436), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1438)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2793.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2794 (.I0(\sin_cos/o_x [12]), .I1(\sin_cos/o_x [14]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1439)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2794.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2795 (.I0(\sin_cos/o_x [13]), .I1(\sin_cos/o_x [15]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1440)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2795.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2796 (.I0(n1440), .I1(n1439), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1441)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2796.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2797 (.I0(n1441), .I1(n1438), .I2(n1392), .O(n1442)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2797.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2798 (.I0(n1442), .I1(n1435), .I2(n1389), .I3(n1388), 
            .O(n1443)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__2798.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__2799 (.I0(\sin_cos/o_x [24]), .I1(\sin_cos/o_x [26]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1444)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2799.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2800 (.I0(\sin_cos/o_x [25]), .I1(\sin_cos/o_x [27]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1445)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2800.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2801 (.I0(n1445), .I1(n1444), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1446)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2801.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2802 (.I0(\sin_cos/o_x [29]), .I1(\sin_cos/o_x [31]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1447)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__2802.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__2803 (.I0(\sin_cos/o_x [28]), .I1(\sin_cos/o_x [30]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I3(n1447), 
            .O(n1448)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2803.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2804 (.I0(n1448), .I1(n1446), .I2(n1392), .O(n1449)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2804.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2805 (.I0(\sin_cos/o_x [16]), .I1(\sin_cos/o_x [18]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1450)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2805.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2806 (.I0(\sin_cos/o_x [17]), .I1(\sin_cos/o_x [19]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1451)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2806.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2807 (.I0(n1451), .I1(n1450), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1452)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2807.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2808 (.I0(\sin_cos/o_x [20]), .I1(\sin_cos/o_x [22]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1453)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2808.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2809 (.I0(\sin_cos/o_x [21]), .I1(\sin_cos/o_x [23]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1454)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2809.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2810 (.I0(n1454), .I1(n1453), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1455)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2810.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2811 (.I0(n1455), .I1(n1452), .I2(n1392), .O(n1456)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2811.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2812 (.I0(n1456), .I1(n1449), .I2(n1389), .O(n1457)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2812.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2813 (.I0(n1457), .I1(n1387), .I2(\sin_cos/o_x [31]), 
            .I3(n1386), .O(n1458)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__2813.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__2814 (.I0(n1443), .I1(n1458), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__2814.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2815 (.I0(\sin_cos/o_x [10]), .I1(\sin_cos/o_x [12]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1459)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2815.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2816 (.I0(n1437), .I1(n1459), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1460)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2816.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2817 (.I0(\sin_cos/o_x [14]), .I1(\sin_cos/o_x [16]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1461)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2817.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2818 (.I0(n1440), .I1(n1461), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1462)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2818.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2819 (.I0(n1462), .I1(n1460), .I2(n1392), .O(n1463)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2819.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2820 (.I0(\sin_cos/o_x [6]), .I1(\sin_cos/o_x [8]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1464)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2820.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2821 (.I0(n1430), .I1(n1464), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1465)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2821.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2822 (.I0(\sin_cos/o_x [2]), .I1(\sin_cos/o_x [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1466)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2822.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2823 (.I0(\sin_cos/o_x [4]), .I1(\sin_cos/o_x [3]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1467)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2823.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2824 (.I0(n1467), .I1(n1466), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .O(n1468)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfacf */ ;
    defparam LUT__2824.LUTMASK = 16'hfacf;
    EFX_LUT4 LUT__2825 (.I0(n1465), .I1(n1392), .I2(n1468), .O(n1469)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2825.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2826 (.I0(n1469), .I1(n1463), .I2(n1389), .O(n1470)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2826.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2827 (.I0(\sin_cos/o_x [30]), .I1(\sin_cos/o_x [29]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .O(n1471)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2827.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2828 (.I0(n1471), .I1(\sin_cos/o_x [31]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1472)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2828.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2829 (.I0(\sin_cos/o_x [26]), .I1(\sin_cos/o_x [28]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1473)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2829.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2830 (.I0(n1445), .I1(n1473), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1474)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2830.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2831 (.I0(n1474), .I1(n1472), .I2(n1392), .O(n1475)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__2831.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2832 (.I0(\sin_cos/o_x [18]), .I1(\sin_cos/o_x [20]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1476)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2832.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2833 (.I0(n1451), .I1(n1476), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1477)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2833.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2834 (.I0(\sin_cos/o_x [22]), .I1(\sin_cos/o_x [24]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1478)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2834.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2835 (.I0(n1454), .I1(n1478), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1479)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2835.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2836 (.I0(n1479), .I1(n1477), .I2(n1392), .O(n1480)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2836.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2837 (.I0(n1480), .I1(n1475), .I2(n1389), .O(n1481)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2837.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2838 (.I0(n1481), .I1(n1470), .I2(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__2838.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2839 (.I0(count[0]), .I1(count[1]), .I2(count[2]), .O(\equal_112/n5 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(33)
    defparam LUT__2839.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__2840 (.I0(byte_count[0]), .I1(state[0]), .O(n1428_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(79)
    defparam LUT__2840.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2841 (.I0(byte_count[0]), .I1(byte_count[2]), .I2(byte_count[1]), 
            .I3(byte_count[3]), .O(n1482)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__2841.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__2842 (.I0(n1482), .I1(state[0]), .O(ceg_net2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__2842.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__2843 (.I0(byte_count[1]), .I1(byte_count[2]), .I2(state[0]), 
            .I3(byte_count[3]), .O(n1483)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__2843.LUTMASK = 16'he000;
    EFX_LUT4 LUT__2844 (.I0(ceg_net2), .I1(n1483), .I2(state[1]), .O(ceg_net48)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(17)
    defparam LUT__2844.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2845 (.I0(n1482), .I1(state[1]), .I2(state[0]), .O(n409_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(79)
    defparam LUT__2845.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__2846 (.I0(ceg_net2), .I1(busy), .I2(n1483), .I3(state[1]), 
            .O(ceg_net50)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(17)
    defparam LUT__2846.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__2847 (.I0(state[1]), .I1(state[0]), .I2(o_done), .O(ceg_net32)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(17)
    defparam LUT__2847.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__2848 (.I0(state[0]), .I1(state[1]), .I2(set), .O(ceg_net33)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;
    defparam LUT__2848.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__2849 (.I0(ceg_net32), .I1(ceg_net33), .O(ceg_net52)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(17)
    defparam LUT__2849.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2850 (.I0(ceg_net50), .I1(ceg_net52), .O(ceg_net56)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(23)
    defparam LUT__2850.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2851 (.I0(out_data[16]), .I1(out_data[75]), .I2(byte_count[1]), 
            .O(n1484)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2851.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2852 (.I0(byte_count[1]), .I1(out_data[40]), .I2(n1484), 
            .I3(byte_count[0]), .O(n1485)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__2852.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__2853 (.I0(byte_count[1]), .I1(byte_count[2]), .I2(byte_count[0]), 
            .O(n1486)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2853.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2854 (.I0(n1486), .I1(out_data[0]), .O(n1487)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2854.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2855 (.I0(n1485), .I1(byte_count[2]), .I2(n1487), .I3(byte_count[3]), 
            .O(n1488)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fbb */ ;
    defparam LUT__2855.LUTMASK = 16'h0fbb;
    EFX_LUT4 LUT__2856 (.I0(byte_count[0]), .I1(byte_count[1]), .I2(byte_count[2]), 
            .I3(byte_count[3]), .O(n1489)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2856.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2857 (.I0(byte_count[0]), .I1(byte_count[3]), .I2(byte_count[1]), 
            .O(n1490)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2857.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2858 (.I0(out_data[24]), .I1(out_data[56]), .I2(byte_count[2]), 
            .I3(n1490), .O(n1491)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__2858.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__2859 (.I0(byte_count[2]), .I1(byte_count[3]), .I2(byte_count[0]), 
            .O(n1492)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2859.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2860 (.I0(out_data[48]), .I1(out_data[64]), .I2(byte_count[1]), 
            .I3(n1492), .O(n1493)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__2860.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__2861 (.I0(n1489), .I1(out_data[8]), .I2(n1491), .I3(n1493), 
            .O(n1494)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__2861.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__2862 (.I0(n1488), .I1(n1494), .O(n355_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(61)
    defparam LUT__2862.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__2863 (.I0(state[0]), .I1(busy), .I2(state[1]), .O(ceg_net51)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(17)
    defparam LUT__2863.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2864 (.I0(\sin_cos/o_y [18]), .I1(\sin_cos/o_y [20]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1495)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2864.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2865 (.I0(n1425), .I1(n1495), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1496)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2865.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2866 (.I0(n1414), .I1(n1496), .I2(n1392), .O(n1497)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2866.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2867 (.I0(n1401), .I1(n1497), .I2(n1389), .O(n1498)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2867.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2868 (.I0(n1498), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2868.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2869 (.I0(count[2]), .I1(count[1]), .I2(count[0]), .I3(valid), 
            .O(n1410_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__2869.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__2870 (.I0(\sin_cos/o_y [17]), .I1(\sin_cos/o_y [19]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1499)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2870.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2871 (.I0(n1495), .I1(n1499), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1500)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2871.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2872 (.I0(n1418), .I1(n1500), .I2(n1392), .O(n1501)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2872.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2873 (.I0(n1405), .I1(n1501), .I2(n1389), .O(n1502)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2873.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2874 (.I0(n1502), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2874.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2875 (.I0(\sin_cos/o_y [16]), .I1(\sin_cos/o_y [18]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1503)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2875.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2876 (.I0(n1499), .I1(n1503), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1504)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2876.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2877 (.I0(n1422), .I1(n1504), .I2(n1392), .O(n1505)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2877.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2878 (.I0(n1408), .I1(n1505), .I2(n1389), .O(n1506)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2878.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2879 (.I0(n1506), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2879.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2880 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfb8f */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__2880.LUTMASK = 16'hfb8f;
    EFX_LUT4 LUT__2881 (.I0(\sin_cos/o_y [15]), .I1(\sin_cos/o_y [17]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1507)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2881.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2882 (.I0(n1503), .I1(n1507), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1508)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2882.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2883 (.I0(n1426), .I1(n1508), .I2(n1392), .O(n1509)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2883.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2884 (.I0(n1411), .I1(n1509), .I2(n1389), .O(n1510)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2884.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2885 (.I0(n1510), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2885.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2886 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hdff3 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__2886.LUTMASK = 16'hdff3;
    EFX_LUT4 LUT__2887 (.I0(\sin_cos/o_x [30]), .I1(\sin_cos/o_x [31]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1511)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;
    defparam LUT__2887.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2888 (.I0(\sin_cos/o_x [27]), .I1(\sin_cos/o_x [29]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1512)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2888.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2889 (.I0(n1473), .I1(n1512), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1513)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__2889.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2890 (.I0(n1513), .I1(n1511), .I2(n1392), .O(n1514)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__2890.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2891 (.I0(n1514), .I1(\sin_cos/o_x [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__2891.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2892 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(n1385), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_64/n11 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2892.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2893 (.I0(\sin_cos/o_y [30]), .I1(\sin_cos/o_y [31]), 
            .I2(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_64/n11 ), .O(n1515)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2893.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2894 (.I0(\sin_cos/o_y [14]), .I1(\sin_cos/o_y [16]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1516)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2894.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2895 (.I0(n1507), .I1(n1516), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1517)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2895.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2896 (.I0(n1496), .I1(n1517), .I2(n1392), .O(n1518)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2896.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2897 (.I0(n1415), .I1(n1518), .I2(n1389), .O(n1519)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2897.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2898 (.I0(n1519), .I1(n1515), .I2(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n143 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2898.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2899 (.I0(n1384), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .I3(n1389), .O(n1520)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__2899.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2900 (.I0(\sin_cos/o_y [13]), .I1(\sin_cos/o_y [15]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1521)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2900.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2901 (.I0(n1516), .I1(n1521), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1522)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2901.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2902 (.I0(n1500), .I1(n1522), .I2(n1392), .O(n1523)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2902.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2903 (.I0(n1523), .I1(n1419), .I2(n1388), .I3(n1520), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2903.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__2904 (.I0(\sin_cos/o_y [12]), .I1(\sin_cos/o_y [14]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1524)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2904.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2905 (.I0(n1521), .I1(n1524), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1525)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2905.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2906 (.I0(n1504), .I1(n1525), .I2(n1392), .O(n1526)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2906.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2907 (.I0(n1526), .I1(n1423), .I2(n1388), .I3(n1389), 
            .O(n1527)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__2907.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__2908 (.I0(n1393), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .I3(n1527), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2908.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2909 (.I0(\sin_cos/o_y [11]), .I1(\sin_cos/o_y [13]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1528)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2909.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2910 (.I0(n1524), .I1(n1528), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1529)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2910.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2911 (.I0(n1508), .I1(n1529), .I2(n1392), .O(n1530)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2911.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2912 (.I0(n1530), .I1(n1427), .I2(n1388), .I3(n1389), 
            .O(n1531)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__2912.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__2913 (.I0(n1396), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .I3(n1531), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2913.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2914 (.I0(\sin_cos/o_y [10]), .I1(\sin_cos/o_y [12]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1532)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2914.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2915 (.I0(n1528), .I1(n1532), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1533)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2915.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2916 (.I0(n1517), .I1(n1533), .I2(n1392), .O(n1534)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2916.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2917 (.I0(n1534), .I1(n1497), .I2(n1388), .I3(n1389), 
            .O(n1535)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__2917.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__2918 (.I0(n1401), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .I3(n1535), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2918.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2919 (.I0(\sin_cos/o_y [9]), .I1(\sin_cos/o_y [11]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1536)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2919.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2920 (.I0(n1532), .I1(n1536), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1537)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2920.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2921 (.I0(n1522), .I1(n1537), .I2(n1392), .O(n1538)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2921.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2922 (.I0(n1538), .I1(n1501), .I2(n1388), .I3(n1389), 
            .O(n1539)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__2922.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__2923 (.I0(n1405), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .I3(n1539), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2923.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2924 (.I0(\sin_cos/o_y [8]), .I1(\sin_cos/o_y [10]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1540)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2924.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2925 (.I0(n1536), .I1(n1540), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1541)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2925.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2926 (.I0(n1525), .I1(n1541), .I2(n1392), .O(n1542)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2926.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2927 (.I0(n1542), .I1(n1505), .I2(n1388), .I3(n1389), 
            .O(n1543)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__2927.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__2928 (.I0(n1408), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .I3(n1543), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2928.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__2929 (.I0(\sin_cos/o_y [7]), .I1(\sin_cos/o_y [9]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1544)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2929.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2930 (.I0(n1540), .I1(n1544), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1545)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2930.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2931 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I1(n1392), .O(n1546)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2931.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2932 (.I0(n1546), .I1(n1388), .O(n1547)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2932.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__2933 (.I0(n1529), .I1(n1545), .I2(n1547), .O(n1548)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2933.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2934 (.I0(n1411), .I1(\sin_cos/o_y [31]), .I2(n1389), 
            .O(n1549)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__2934.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__2935 (.I0(n1509), .I1(n1549), .I2(n1547), .O(n1550)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__2935.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2936 (.I0(n1548), .I1(n1550), .I2(n1389), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2936.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2937 (.I0(\sin_cos/o_y [6]), .I1(\sin_cos/o_y [8]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1551)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2937.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2938 (.I0(n1544), .I1(n1551), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1552)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2938.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2939 (.I0(n1533), .I1(n1552), .I2(n1547), .O(n1553)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2939.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2940 (.I0(n1416), .I1(n1518), .I2(n1547), .O(n1554)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2940.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2941 (.I0(n1553), .I1(n1554), .I2(n1389), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n135 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2941.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2942 (.I0(\sin_cos/o_y [5]), .I1(\sin_cos/o_y [7]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1555)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2942.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2943 (.I0(n1551), .I1(n1555), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1556)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2943.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2944 (.I0(n1537), .I1(n1556), .I2(n1547), .O(n1557)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__2944.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__2945 (.I0(n1420), .I1(n1523), .I2(n1547), .O(n1558)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__2945.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2946 (.I0(n1557), .I1(n1558), .I2(n1389), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n134 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2946.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2947 (.I0(\sin_cos/o_y [4]), .I1(\sin_cos/o_y [6]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1559)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2947.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2948 (.I0(n1555), .I1(n1559), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1560)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2948.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2949 (.I0(n1541), .I1(n1560), .I2(n1547), .O(n1561)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__2949.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__2950 (.I0(n1424), .I1(n1526), .I2(n1547), .O(n1562)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__2950.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__2951 (.I0(n1561), .I1(n1562), .I2(n1389), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n133 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2951.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__2952 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .O(n1563)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he3e3 */ ;
    defparam LUT__2952.LUTMASK = 16'he3e3;
    EFX_LUT4 LUT__2953 (.I0(n1530), .I1(n1545), .I2(n1546), .I3(n1563), 
            .O(n1564)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h050c */ ;
    defparam LUT__2953.LUTMASK = 16'h050c;
    EFX_LUT4 LUT__2954 (.I0(\sin_cos/o_y [6]), .I1(\sin_cos/o_y [5]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1565)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2954.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2955 (.I0(\sin_cos/o_y [4]), .I1(\sin_cos/o_y [3]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1566)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2955.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2956 (.I0(n1566), .I1(n1565), .I2(n1563), .I3(n1546), 
            .O(n1567)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__2956.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__2957 (.I0(n1567), .I1(n1564), .I2(n1428), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2957.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__2958 (.I0(n1534), .I1(n1552), .I2(n1546), .I3(n1563), 
            .O(n1568)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h050c */ ;
    defparam LUT__2958.LUTMASK = 16'h050c;
    EFX_LUT4 LUT__2959 (.I0(\sin_cos/o_y [5]), .I1(\sin_cos/o_y [4]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1569)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2959.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2960 (.I0(\sin_cos/o_y [3]), .I1(\sin_cos/o_y [2]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1570)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2960.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2961 (.I0(n1570), .I1(n1569), .I2(n1563), .I3(n1546), 
            .O(n1571)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__2961.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__2962 (.I0(n1571), .I1(n1568), .I2(n1498), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hee0f */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__2962.LUTMASK = 16'hee0f;
    EFX_LUT4 LUT__2963 (.I0(\sin_cos/o_y [2]), .I1(\sin_cos/o_y [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1572)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2963.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2964 (.I0(n1566), .I1(n1572), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .O(n1573)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfacf */ ;
    defparam LUT__2964.LUTMASK = 16'hfacf;
    EFX_LUT4 LUT__2965 (.I0(n1556), .I1(n1392), .I2(n1573), .O(n1574)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__2965.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__2966 (.I0(n1538), .I1(n1574), .I2(n1389), .O(n1575)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2966.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2967 (.I0(n1502), .I1(n1575), .I2(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_34/n130 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__2967.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__2968 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbc5f */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__2968.LUTMASK = 16'hbc5f;
    EFX_LUT4 LUT__2969 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he331 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__2969.LUTMASK = 16'he331;
    EFX_LUT4 LUT__2970 (.I0(count[0]), .I1(count[1]), .O(n996)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__2970.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__2971 (.I0(count[0]), .I1(count[1]), .I2(count[2]), .O(n1001)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__2971.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__2972 (.I0(byte_count[0]), .I1(byte_count[1]), .I2(state[0]), 
            .O(n1088)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(79)
    defparam LUT__2972.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__2973 (.I0(byte_count[0]), .I1(byte_count[1]), .I2(byte_count[2]), 
            .I3(state[0]), .O(n1090)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(79)
    defparam LUT__2973.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__2974 (.I0(byte_count[0]), .I1(byte_count[2]), .O(n1576)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2974.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2975 (.I0(n1576), .I1(byte_count[1]), .I2(byte_count[3]), 
            .I3(state[0]), .O(n1092)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(79)
    defparam LUT__2975.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__2976 (.I0(n1482), .I1(state[1]), .I2(state[0]), .O(n409_3[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(79)
    defparam LUT__2976.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__2977 (.I0(byte_count[0]), .I1(byte_count[1]), .I2(byte_count[2]), 
            .I3(out_data[75]), .O(n1577)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2977.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2978 (.I0(out_data[17]), .I1(out_data[75]), .I2(byte_count[1]), 
            .I3(n1576), .O(n1578)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__2978.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__2979 (.I0(n1578), .I1(n1577), .I2(byte_count[3]), .O(n1579)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__2979.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2980 (.I0(byte_count[0]), .I1(byte_count[1]), .I2(byte_count[3]), 
            .I3(byte_count[2]), .O(n1580)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__2980.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__2981 (.I0(n1490), .I1(byte_count[2]), .O(n1581)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__2981.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__2982 (.I0(n1581), .I1(out_data[25]), .I2(n1580), .I3(out_data[41]), 
            .O(n1582)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2982.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2983 (.I0(byte_count[2]), .I1(byte_count[3]), .I2(byte_count[1]), 
            .O(n1583)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__2983.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__2984 (.I0(out_data[49]), .I1(out_data[57]), .I2(byte_count[0]), 
            .I3(n1583), .O(n1584)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__2984.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__2985 (.I0(out_data[1]), .I1(out_data[65]), .I2(byte_count[3]), 
            .I3(n1486), .O(n1585)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__2985.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__2986 (.I0(n1489), .I1(out_data[9]), .I2(n1584), .I3(n1585), 
            .O(n1586)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__2986.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__2987 (.I0(n1579), .I1(n1582), .I2(n1586), .O(n355_3[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(61)
    defparam LUT__2987.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__2988 (.I0(out_data[50]), .I1(out_data[58]), .I2(byte_count[0]), 
            .I3(n1583), .O(n1587)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__2988.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__2989 (.I0(out_data[2]), .I1(out_data[66]), .I2(byte_count[3]), 
            .I3(n1486), .O(n1588)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__2989.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__2990 (.I0(n1581), .I1(out_data[26]), .I2(n1587), .I3(n1588), 
            .O(n1589)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__2990.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__2991 (.I0(byte_count[3]), .I1(byte_count[1]), .I2(n1576), 
            .O(n1590)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2991.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__2992 (.I0(n1590), .I1(out_data[18]), .I2(n1580), .I3(out_data[42]), 
            .O(n1591)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2992.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2993 (.I0(n1489), .I1(out_data[10]), .I2(n1589), .I3(n1591), 
            .O(n355_4[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8fff */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(61)
    defparam LUT__2993.LUTMASK = 16'h8fff;
    EFX_LUT4 LUT__2994 (.I0(out_data[19]), .I1(out_data[75]), .I2(byte_count[1]), 
            .I3(n1576), .O(n1592)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__2994.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__2995 (.I0(n1592), .I1(n1577), .I2(byte_count[3]), .O(n1593)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__2995.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__2996 (.I0(n1581), .I1(out_data[27]), .I2(n1580), .I3(out_data[43]), 
            .O(n1594)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__2996.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__2997 (.I0(byte_count[3]), .I1(out_data[3]), .I2(n1486), 
            .I3(n1594), .O(n1595)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__2997.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__2998 (.I0(out_data[51]), .I1(out_data[67]), .I2(byte_count[1]), 
            .I3(n1492), .O(n1596)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__2998.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__2999 (.I0(byte_count[0]), .I1(n1583), .I2(out_data[59]), 
            .O(n1597)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__2999.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3000 (.I0(n1489), .I1(out_data[11]), .I2(n1596), .I3(n1597), 
            .O(n1598)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3000.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3001 (.I0(n1593), .I1(n1595), .I2(n1598), .O(n355_5[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(61)
    defparam LUT__3001.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__3002 (.I0(out_data[4]), .I1(out_data[68]), .I2(byte_count[3]), 
            .I3(n1486), .O(n1599)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3002.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3003 (.I0(out_data[52]), .I1(out_data[60]), .I2(byte_count[0]), 
            .I3(n1583), .O(n1600)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3003.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3004 (.I0(n1580), .I1(out_data[44]), .I2(n1599), .I3(n1600), 
            .O(n1601)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3004.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3005 (.I0(n1581), .I1(out_data[28]), .I2(out_data[12]), 
            .I3(n1489), .O(n1602)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3005.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3006 (.I0(n1590), .I1(out_data[20]), .I2(n1601), .I3(n1602), 
            .O(n355_6[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8fff */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(61)
    defparam LUT__3006.LUTMASK = 16'h8fff;
    EFX_LUT4 LUT__3007 (.I0(out_data[53]), .I1(out_data[61]), .I2(byte_count[0]), 
            .I3(n1583), .O(n1603)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3007.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3008 (.I0(out_data[5]), .I1(out_data[69]), .I2(byte_count[3]), 
            .I3(n1486), .O(n1604)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3008.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3009 (.I0(n1581), .I1(out_data[29]), .I2(n1603), .I3(n1604), 
            .O(n1605)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3009.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3010 (.I0(n1590), .I1(out_data[21]), .I2(n1580), .I3(out_data[45]), 
            .O(n1606)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3010.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3011 (.I0(n1489), .I1(out_data[13]), .I2(n1605), .I3(n1606), 
            .O(n355_7[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8fff */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(61)
    defparam LUT__3011.LUTMASK = 16'h8fff;
    EFX_LUT4 LUT__3012 (.I0(out_data[6]), .I1(out_data[70]), .I2(byte_count[3]), 
            .I3(n1486), .O(n1607)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3012.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3013 (.I0(out_data[54]), .I1(out_data[62]), .I2(byte_count[0]), 
            .I3(n1583), .O(n1608)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3013.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3014 (.I0(n1581), .I1(out_data[30]), .I2(n1607), .I3(n1608), 
            .O(n1609)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3014.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3015 (.I0(n1590), .I1(out_data[22]), .I2(n1580), .I3(out_data[46]), 
            .O(n1610)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3015.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3016 (.I0(n1489), .I1(out_data[14]), .I2(n1609), .I3(n1610), 
            .O(n355_8[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8fff */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(61)
    defparam LUT__3016.LUTMASK = 16'h8fff;
    EFX_LUT4 LUT__3017 (.I0(n1581), .I1(out_data[31]), .I2(n1580), .I3(out_data[47]), 
            .O(n1611)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3017.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3018 (.I0(out_data[55]), .I1(out_data[63]), .I2(byte_count[0]), 
            .I3(n1583), .O(n1612)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3018.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3019 (.I0(out_data[7]), .I1(out_data[71]), .I2(byte_count[3]), 
            .I3(n1486), .O(n1613)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3019.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3020 (.I0(n1590), .I1(out_data[23]), .I2(n1612), .I3(n1613), 
            .O(n1614)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3020.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3021 (.I0(n1489), .I1(out_data[15]), .I2(n1611), .I3(n1614), 
            .O(n355_9[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8fff */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(61)
    defparam LUT__3021.LUTMASK = 16'h8fff;
    EFX_LUT4 LUT__3022 (.I0(o_cos[0]), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1] ), .O(o_cos[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3022.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3023 (.I0(o_cos[0]), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[1] ), 
            .O(n1615)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3023.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3024 (.I0(n1615), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2] ), .O(o_cos[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3024.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3025 (.I0(n1615), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3] ), 
            .O(o_cos[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3025.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3026 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[2] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[3] ), .I2(n1615), 
            .O(n1616)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3026.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3027 (.I0(n1616), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4] ), .O(o_cos[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3027.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3028 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[4] ), 
            .I1(n1616), .O(n1617)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3028.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3029 (.I0(n1617), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5] ), .O(o_cos[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3029.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3030 (.I0(n1617), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6] ), 
            .O(o_cos[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3030.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3031 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5] ), .I2(n1617), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .O(n1618)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3031.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3032 (.I0(n1618), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7] ), 
            .O(o_cos[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3032.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3033 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[5] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[6] ), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[7] ), 
            .I3(n1617), .O(n1619)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3033.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3034 (.I0(n1619), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8] ), .O(o_cos[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3034.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3035 (.I0(n1619), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9] ), 
            .O(o_cos[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3035.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3036 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8] ), .I2(n1619), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .O(n1620)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3036.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3037 (.I0(n1620), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10] ), 
            .O(o_cos[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3037.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3038 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[8] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[9] ), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[10] ), 
            .I3(n1619), .O(n1621)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3038.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3039 (.I0(n1621), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11] ), .O(o_cos[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3039.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3040 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[11] ), 
            .I1(n1621), .O(n1622)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3040.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3041 (.I0(n1622), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12] ), .O(o_cos[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3041.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3042 (.I0(n1622), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13] ), 
            .O(o_cos[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3042.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3043 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[12] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[13] ), .I2(n1622), 
            .O(n1623)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3043.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3044 (.I0(n1623), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14] ), .O(o_cos[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3044.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3045 (.I0(n1623), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15] ), 
            .O(o_cos[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3045.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3046 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14] ), .I2(n1623), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .O(n1624)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3046.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3047 (.I0(n1624), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16] ), 
            .O(o_cos[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3047.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3048 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[14] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[15] ), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[16] ), 
            .I3(n1623), .O(n1625)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3048.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3049 (.I0(n1625), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17] ), .O(o_cos[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3049.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3050 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[17] ), 
            .I1(n1625), .O(n1626)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3050.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3051 (.I0(n1626), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18] ), .O(o_cos[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3051.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3052 (.I0(n1626), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19] ), 
            .O(o_cos[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3052.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3053 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[18] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[19] ), .I2(n1626), 
            .O(n1627)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3053.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3054 (.I0(n1627), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20] ), .O(o_cos[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3054.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3055 (.I0(n1627), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21] ), 
            .O(o_cos[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3055.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3056 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[21] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[20] ), .I2(n1627), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .O(n1628)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3056.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3057 (.I0(n1628), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22] ), 
            .O(o_cos[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3057.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3058 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22] ), .I2(n1628), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23] ), .O(o_cos[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h07f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3058.LUTMASK = 16'h07f8;
    EFX_LUT4 LUT__3059 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[23] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[22] ), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I3(n1628), .O(n1629)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__3059.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__3060 (.I0(n1629), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24] ), 
            .O(o_cos[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3060.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3061 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24] ), .I2(n1629), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25] ), .O(o_cos[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h708f */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3061.LUTMASK = 16'h708f;
    EFX_LUT4 LUT__3062 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[24] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[25] ), .I2(n1629), 
            .O(n1630)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3062.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3063 (.I0(n1630), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26] ), .O(o_cos[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3063.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3064 (.I0(n1630), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[26] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .O(n1631)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__3064.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__3065 (.I0(n1631), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27] ), 
            .O(o_cos[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3065.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3066 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27] ), .I2(n1631), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28] ), .O(o_cos[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h07f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3066.LUTMASK = 16'h07f8;
    EFX_LUT4 LUT__3067 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28] ), .I2(n1631), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .O(n1632)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__3067.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__3068 (.I0(n1632), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29] ), 
            .O(o_cos[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3068.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3069 (.I0(n1631), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[27] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[28] ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[29] ), 
            .O(n1633)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3069.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3070 (.I0(n1633), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30] ), .O(o_cos[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3070.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3071 (.I0(n1633), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[30] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegcos ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rcos[31] ), 
            .O(o_cos[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(505)
    defparam LUT__3071.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3072 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I1(o_sin[0]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1] ), 
            .O(o_sin[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3072.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3073 (.I0(o_sin[0]), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[1] ), 
            .O(n1634)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3073.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3074 (.I0(n1634), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2] ), .O(o_sin[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3074.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3075 (.I0(n1634), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3] ), 
            .O(o_sin[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3075.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3076 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[2] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[3] ), .I2(n1634), 
            .O(n1635)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3076.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3077 (.I0(n1635), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4] ), .O(o_sin[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3077.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3078 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[4] ), 
            .I1(n1635), .O(n1636)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3078.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3079 (.I0(n1636), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5] ), .O(o_sin[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3079.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3080 (.I0(n1636), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6] ), 
            .O(o_sin[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3080.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3081 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5] ), .I2(n1636), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .O(n1637)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3081.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3082 (.I0(n1637), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7] ), 
            .O(o_sin[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3082.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3083 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[5] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[6] ), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[7] ), 
            .I3(n1636), .O(n1638)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3083.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3084 (.I0(n1638), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8] ), .O(o_sin[8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3084.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3085 (.I0(n1638), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9] ), 
            .O(o_sin[9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3085.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3086 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8] ), .I2(n1638), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .O(n1639)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3086.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3087 (.I0(n1639), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10] ), 
            .O(o_sin[10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3087.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3088 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[8] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[9] ), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[10] ), 
            .I3(n1638), .O(n1640)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3088.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3089 (.I0(n1640), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11] ), .O(o_sin[11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3089.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3090 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[11] ), 
            .I1(n1640), .O(n1641)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3090.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3091 (.I0(n1641), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12] ), .O(o_sin[12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3091.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3092 (.I0(n1641), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13] ), 
            .O(o_sin[13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3092.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3093 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[12] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[13] ), .I2(n1641), 
            .O(n1642)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3093.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3094 (.I0(n1642), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14] ), .O(o_sin[14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3094.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3095 (.I0(n1642), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15] ), 
            .O(o_sin[15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3095.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3096 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14] ), .I2(n1642), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .O(n1643)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3096.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3097 (.I0(n1643), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16] ), 
            .O(o_sin[16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3097.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3098 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[14] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[15] ), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[16] ), 
            .I3(n1642), .O(n1644)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3098.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3099 (.I0(n1644), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17] ), .O(o_sin[17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3099.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3100 (.I0(n1644), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18] ), 
            .O(o_sin[18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3100.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3101 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17] ), .I2(n1644), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .O(n1645)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3101.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3102 (.I0(n1645), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19] ), 
            .O(o_sin[19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3102.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3103 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[17] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[18] ), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[19] ), 
            .I3(n1644), .O(n1646)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3103.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3104 (.I0(n1646), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20] ), .O(o_sin[20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3104.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3105 (.I0(n1646), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21] ), 
            .O(o_sin[21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3105.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3106 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[21] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[20] ), .I2(n1646), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .O(n1647)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3106.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3107 (.I0(n1647), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22] ), 
            .O(o_sin[22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3107.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3108 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22] ), .I2(n1647), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23] ), .O(o_sin[23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h07f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3108.LUTMASK = 16'h07f8;
    EFX_LUT4 LUT__3109 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[23] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[22] ), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I3(n1647), .O(n1648)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__3109.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__3110 (.I0(n1648), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24] ), 
            .O(o_sin[24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3110.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3111 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24] ), .I2(n1648), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25] ), .O(o_sin[25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h708f */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3111.LUTMASK = 16'h708f;
    EFX_LUT4 LUT__3112 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[24] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[25] ), .I2(n1648), 
            .O(n1649)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3112.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3113 (.I0(n1649), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26] ), .O(o_sin[26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3113.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3114 (.I0(n1649), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[26] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .O(n1650)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__3114.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__3115 (.I0(n1650), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27] ), 
            .O(o_sin[27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3115.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3116 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27] ), .I2(n1650), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28] ), .O(o_sin[28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h07f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3116.LUTMASK = 16'h07f8;
    EFX_LUT4 LUT__3117 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27] ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28] ), .I2(n1650), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .O(n1651)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__3117.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__3118 (.I0(n1651), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29] ), 
            .O(o_sin[29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3118.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3119 (.I0(n1650), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[27] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[28] ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[29] ), 
            .O(n1652)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3119.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3120 (.I0(n1652), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30] ), .O(o_sin[30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3120.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3121 (.I0(n1652), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[30] ), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isnegsin ), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/rsin[31] ), 
            .O(o_sin[31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(506)
    defparam LUT__3121.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3122 (.I0(\rx_/bit_counter [0]), .I1(\rx_/bit_counter [3]), 
            .O(\rx_/n167 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(67)
    defparam LUT__3122.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3123 (.I0(\rx_/state [2]), .I1(\rx_/state [1]), .O(n1653)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3123.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3124 (.I0(\rx_/state [0]), .I1(\rx_/bit_counter [2]), 
            .I2(n1653), .O(n1654)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3124.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3125 (.I0(\rx_/bit_counter [1]), .I1(\rx_/n167 [0]), .I2(n1654), 
            .O(\rx_/n505 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(83)
    defparam LUT__3125.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3126 (.I0(\rx_/state [0]), .I1(\rx_/state [1]), .I2(valid), 
            .I3(\rx_/state [2]), .O(\rx_/n224 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h31e0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3126.LUTMASK = 16'h31e0;
    EFX_LUT4 LUT__3127 (.I0(\rx_/BIT_PERIOD_COUNTER [2]), .I1(\rx_/BIT_PERIOD_COUNTER [3]), 
            .I2(\rx_/BIT_PERIOD_COUNTER [4]), .O(n1655)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3127.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3128 (.I0(\rx_/BIT_PERIOD_COUNTER [0]), .I1(\rx_/BIT_PERIOD_COUNTER [1]), 
            .O(n1656)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3128.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3129 (.I0(n1656), .I1(n1655), .I2(\rx_/BIT_PERIOD_COUNTER [5]), 
            .O(n1657)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__3129.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__3130 (.I0(\rx_/BIT_PERIOD_COUNTER [6]), .I1(\rx_/BIT_PERIOD_COUNTER [7]), 
            .I2(\rx_/BIT_PERIOD_COUNTER [8]), .I3(\rx_/BIT_PERIOD_COUNTER [9]), 
            .O(n1658)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3130.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3131 (.I0(n1657), .I1(\rx_/BIT_PERIOD_COUNTER [10]), .I2(n1658), 
            .I3(\rx_/BIT_PERIOD_COUNTER [11]), .O(n1659)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3131.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3132 (.I0(n1659), .I1(\rx_/bit_counter [3]), .I2(\rx_/state [0]), 
            .I3(n1653), .O(ceg_net35)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf1ff */ ;
    defparam LUT__3132.LUTMASK = 16'hf1ff;
    EFX_LUT4 LUT__3133 (.I0(\rx_/state [0]), .I1(\rx_/state [1]), .I2(\rx_/state [2]), 
            .I3(uart_rx_pin), .O(n1660)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3133.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3134 (.I0(\rx_/BIT_PERIOD_COUNTER [0]), .I1(\rx_/BIT_PERIOD_COUNTER [1]), 
            .I2(\rx_/BIT_PERIOD_COUNTER [2]), .I3(\rx_/BIT_PERIOD_COUNTER [3]), 
            .O(n1661)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3134.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3135 (.I0(n1661), .I1(\rx_/BIT_PERIOD_COUNTER [4]), .I2(\rx_/BIT_PERIOD_COUNTER [5]), 
            .I3(n1658), .O(n1662)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__3135.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__3136 (.I0(n1662), .I1(\rx_/BIT_PERIOD_COUNTER [10]), .I2(\rx_/BIT_PERIOD_COUNTER [11]), 
            .O(n1663)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__3136.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3137 (.I0(\rx_/state [0]), .I1(\rx_/bit_counter [3]), 
            .I2(n1659), .I3(n1653), .O(n1664)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__3137.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__3138 (.I0(\rx_/state [1]), .I1(n1663), .I2(\rx_/state [0]), 
            .I3(n1664), .O(n1665)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__3138.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__3139 (.I0(n1665), .I1(n1660), .I2(\rx_/BIT_PERIOD_COUNTER [0]), 
            .O(\rx_/n230 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3139.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__3140 (.I0(uart_rx_pin), .I1(\rx_/bit_counter [3]), .I2(\rx_/state [2]), 
            .I3(\rx_/state [1]), .O(n1666)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c05 */ ;
    defparam LUT__3140.LUTMASK = 16'h0c05;
    EFX_LUT4 LUT__3141 (.I0(n1665), .I1(n1666), .I2(\rx_/state [0]), .O(\rx_/n225 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3141.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__3142 (.I0(\rx_/bit_counter [1]), .I1(\rx_/bit_counter [3]), 
            .I2(n1654), .I3(\rx_/bit_counter [0]), .O(\rx_/n499 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(83)
    defparam LUT__3142.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3143 (.I0(n1654), .I1(\rx_/n167 [0]), .I2(\rx_/bit_counter [1]), 
            .O(\rx_/n498 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(83)
    defparam LUT__3143.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3144 (.I0(\rx_/bit_counter [3]), .I1(\rx_/bit_counter [0]), 
            .I2(\rx_/bit_counter [1]), .I3(n1654), .O(\rx_/n497 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(83)
    defparam LUT__3144.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3145 (.I0(\rx_/state [0]), .I1(n1653), .I2(\rx_/bit_counter [2]), 
            .O(n1667)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3145.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3146 (.I0(\rx_/bit_counter [1]), .I1(\rx_/n167 [0]), .I2(n1667), 
            .O(\rx_/n496 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(83)
    defparam LUT__3146.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3147 (.I0(\rx_/bit_counter [1]), .I1(\rx_/bit_counter [3]), 
            .I2(n1667), .I3(\rx_/bit_counter [0]), .O(\rx_/n495 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(83)
    defparam LUT__3147.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3148 (.I0(n1667), .I1(\rx_/n167 [0]), .I2(\rx_/bit_counter [1]), 
            .O(\rx_/n494 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(83)
    defparam LUT__3148.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3149 (.I0(\rx_/bit_counter [3]), .I1(\rx_/bit_counter [1]), 
            .I2(\rx_/bit_counter [2]), .I3(\rx_/bit_counter [0]), .O(\rx_/n81 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(56)
    defparam LUT__3149.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3150 (.I0(\rx_/state [0]), .I1(\rx_/n81 ), .I2(n1653), 
            .O(\rx_/n508 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(83)
    defparam LUT__3150.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3151 (.I0(\rx_/bit_counter [3]), .I1(\rx_/bit_counter [0]), 
            .I2(\rx_/bit_counter [1]), .O(\rx_/n167 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(67)
    defparam LUT__3151.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3152 (.I0(\rx_/bit_counter [0]), .I1(\rx_/bit_counter [1]), 
            .I2(\rx_/bit_counter [3]), .I3(\rx_/bit_counter [2]), .O(\rx_/n167 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(67)
    defparam LUT__3152.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__3153 (.I0(\rx_/state [1]), .I1(\rx_/state [2]), .I2(n1660), 
            .O(n1668)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3153.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3154 (.I0(n1668), .I1(n1665), .I2(\rx_/BIT_PERIOD_COUNTER [0]), 
            .I3(\rx_/BIT_PERIOD_COUNTER [1]), .O(\rx_/n230 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5730 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3154.LUTMASK = 16'h5730;
    EFX_LUT4 LUT__3155 (.I0(n1660), .I1(n1665), .I2(n1656), .I3(\rx_/BIT_PERIOD_COUNTER [2]), 
            .O(n1669)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h54cf */ ;
    defparam LUT__3155.LUTMASK = 16'h54cf;
    EFX_LUT4 LUT__3156 (.I0(\rx_/state [1]), .I1(\rx_/state [2]), .I2(\rx_/BIT_PERIOD_COUNTER [1]), 
            .I3(n1669), .O(\rx_/n230 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h80ff */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3156.LUTMASK = 16'h80ff;
    EFX_LUT4 LUT__3157 (.I0(n1656), .I1(\rx_/BIT_PERIOD_COUNTER [2]), .O(n1670)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3157.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3158 (.I0(n1660), .I1(n1665), .I2(n1670), .I3(\rx_/BIT_PERIOD_COUNTER [3]), 
            .O(n1671)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h54cf */ ;
    defparam LUT__3158.LUTMASK = 16'h54cf;
    EFX_LUT4 LUT__3159 (.I0(\rx_/state [1]), .I1(\rx_/state [2]), .I2(\rx_/BIT_PERIOD_COUNTER [1]), 
            .I3(n1671), .O(\rx_/n230 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h80ff */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3159.LUTMASK = 16'h80ff;
    EFX_LUT4 LUT__3160 (.I0(n1670), .I1(\rx_/BIT_PERIOD_COUNTER [3]), .O(n1672)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3160.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3161 (.I0(n1660), .I1(n1665), .I2(n1672), .I3(\rx_/BIT_PERIOD_COUNTER [4]), 
            .O(n1673)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h54cf */ ;
    defparam LUT__3161.LUTMASK = 16'h54cf;
    EFX_LUT4 LUT__3162 (.I0(\rx_/state [1]), .I1(\rx_/state [2]), .I2(\rx_/BIT_PERIOD_COUNTER [1]), 
            .I3(n1673), .O(\rx_/n230 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h80ff */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3162.LUTMASK = 16'h80ff;
    EFX_LUT4 LUT__3163 (.I0(n1672), .I1(\rx_/BIT_PERIOD_COUNTER [4]), .O(n1674)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3163.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3164 (.I0(n1660), .I1(n1665), .I2(n1674), .I3(\rx_/BIT_PERIOD_COUNTER [5]), 
            .O(\rx_/n230 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3164.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3165 (.I0(n1674), .I1(\rx_/BIT_PERIOD_COUNTER [5]), .O(n1675)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3165.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3166 (.I0(n1660), .I1(n1665), .I2(n1675), .I3(\rx_/BIT_PERIOD_COUNTER [6]), 
            .O(\rx_/n230 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3166.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3167 (.I0(n1675), .I1(\rx_/BIT_PERIOD_COUNTER [6]), .O(n1676)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3167.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3168 (.I0(n1660), .I1(n1665), .I2(n1676), .I3(\rx_/BIT_PERIOD_COUNTER [7]), 
            .O(\rx_/n230 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3168.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3169 (.I0(n1676), .I1(\rx_/BIT_PERIOD_COUNTER [7]), .O(n1677)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3169.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3170 (.I0(n1660), .I1(n1665), .I2(n1677), .I3(\rx_/BIT_PERIOD_COUNTER [8]), 
            .O(\rx_/n230 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3170.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3171 (.I0(n1677), .I1(\rx_/BIT_PERIOD_COUNTER [8]), .O(n1678)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3171.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3172 (.I0(n1660), .I1(n1665), .I2(n1678), .I3(\rx_/BIT_PERIOD_COUNTER [9]), 
            .O(\rx_/n230 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hab30 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3172.LUTMASK = 16'hab30;
    EFX_LUT4 LUT__3173 (.I0(\rx_/state [0]), .I1(\rx_/state [1]), .I2(\rx_/state [2]), 
            .O(n1679)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__3173.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__3174 (.I0(n1660), .I1(n1679), .O(n1680)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3174.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3175 (.I0(n1678), .I1(\rx_/BIT_PERIOD_COUNTER [9]), .O(n1681)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3175.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3176 (.I0(n1680), .I1(n1665), .I2(n1681), .I3(\rx_/BIT_PERIOD_COUNTER [10]), 
            .O(\rx_/n230 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5730 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3176.LUTMASK = 16'h5730;
    EFX_LUT4 LUT__3177 (.I0(n1681), .I1(n1664), .I2(n1679), .I3(\rx_/BIT_PERIOD_COUNTER [10]), 
            .O(n1682)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__3177.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__3178 (.I0(n1660), .I1(n1664), .I2(\rx_/BIT_PERIOD_COUNTER [11]), 
            .I3(n1682), .O(\rx_/n230 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffe0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3178.LUTMASK = 16'hffe0;
    EFX_LUT4 LUT__3179 (.I0(n1663), .I1(uart_rx_pin), .I2(\rx_/state [1]), 
            .I3(\rx_/state [0]), .O(n1683)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3179.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3180 (.I0(\rx_/state [0]), .I1(n1659), .I2(n1653), .I3(n1683), 
            .O(\rx_/n225 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff70 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3180.LUTMASK = 16'hff70;
    EFX_LUT4 LUT__3181 (.I0(n1659), .I1(n1653), .I2(\rx_/state [0]), .O(\rx_/select_54/Select_2/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_rx.v(88)
    defparam LUT__3181.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3182 (.I0(\tx_/baud_counter [1]), .I1(\tx_/baud_counter [2]), 
            .I2(\tx_/baud_counter [3]), .I3(\tx_/baud_counter [4]), .O(n1684)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3182.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3183 (.I0(\tx_/baud_counter [6]), .I1(\tx_/baud_counter [7]), 
            .I2(\tx_/baud_counter [8]), .I3(\tx_/baud_counter [9]), .O(n1685)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3183.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3184 (.I0(n1684), .I1(\tx_/baud_counter [5]), .I2(\tx_/baud_counter [10]), 
            .I3(n1685), .O(n1686)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b00 */ ;
    defparam LUT__3184.LUTMASK = 16'h0b00;
    EFX_LUT4 LUT__3185 (.I0(n1686), .I1(\tx_/baud_counter [11]), .O(n1687)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3185.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3186 (.I0(n1687), .I1(\tx_/bit_counter [0]), .I2(\tx_/bit_counter [1]), 
            .O(n1688)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3186.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3187 (.I0(\tx_/bit_counter [2]), .I1(n1688), .I2(tx_valid), 
            .I3(\tx_/state [1]), .O(n1689)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h770f */ ;
    defparam LUT__3187.LUTMASK = 16'h770f;
    EFX_LUT4 LUT__3188 (.I0(n1687), .I1(\tx_/state [0]), .O(n1690)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3188.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3189 (.I0(n1689), .I1(\tx_/state [0]), .I2(n1690), .I3(\tx_/state [2]), 
            .O(\tx_/n198 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000d */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3189.LUTMASK = 16'h000d;
    EFX_LUT4 LUT__3190 (.I0(\tx_/state [0]), .I1(\tx_/state [1]), .O(n1691)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3190.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3191 (.I0(tx_valid), .I1(busy), .I2(\tx_/state [2]), 
            .I3(n1691), .O(\tx_/Select_36/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0a0c */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3191.LUTMASK = 16'h0a0c;
    EFX_LUT4 LUT__3192 (.I0(\tx_/state [0]), .I1(\tx_/state [2]), .I2(\tx_/state [1]), 
            .O(n1692)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3192.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3193 (.I0(n1687), .I1(\tx_/bit_counter [0]), .I2(n1692), 
            .O(\tx_/select_37/Select_0/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3193.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3194 (.I0(n1687), .I1(n1691), .I2(\tx_/state [2]), .O(n1693)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3194.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3195 (.I0(\tx_/baud_counter [0]), .I1(n1693), .O(\tx_/n173 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3195.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3196 (.I0(i_call), .I1(\tx_/state [2]), .I2(n1691), 
            .I3(tx_valid), .O(\tx_/n483 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(91)
    defparam LUT__3196.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3197 (.I0(\tx_/tx_data_reg [6]), .I1(\tx_/tx_data_reg [4]), 
            .I2(\tx_/bit_counter [0]), .I3(\tx_/bit_counter [1]), .O(n1694)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__3197.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__3198 (.I0(\tx_/tx_data_reg [7]), .I1(\tx_/tx_data_reg [5]), 
            .I2(\tx_/bit_counter [1]), .I3(\tx_/bit_counter [0]), .O(n1695)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__3198.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__3199 (.I0(\tx_/tx_data_reg [3]), .I1(\tx_/tx_data_reg [1]), 
            .I2(\tx_/bit_counter [0]), .I3(\tx_/bit_counter [1]), .O(n1696)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__3199.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__3200 (.I0(\tx_/tx_data_reg [2]), .I1(\tx_/tx_data_reg [0]), 
            .I2(\tx_/bit_counter [0]), .I3(n1696), .O(n1697)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__3200.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__3201 (.I0(n1695), .I1(n1694), .I2(n1697), .I3(\tx_/bit_counter [2]), 
            .O(n1698)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__3201.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__3202 (.I0(tx_valid), .I1(\tx_/state [2]), .I2(\tx_/state [1]), 
            .I3(\tx_/state [0]), .O(n1699)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcff2 */ ;
    defparam LUT__3202.LUTMASK = 16'hcff2;
    EFX_LUT4 LUT__3203 (.I0(n1698), .I1(n1692), .I2(n1699), .O(\tx_/n165 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f4f */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3203.LUTMASK = 16'h4f4f;
    EFX_LUT4 LUT__3204 (.I0(\tx_/state [2]), .I1(n1690), .I2(\tx_/state [1]), 
            .O(\tx_/n198 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3204.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3205 (.I0(\tx_/state [2]), .I1(\tx_/state [1]), .I2(n1690), 
            .O(\tx_/select_40/Select_2/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3205.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3206 (.I0(n1687), .I1(\tx_/bit_counter [0]), .I2(\tx_/bit_counter [1]), 
            .I3(n1692), .O(\tx_/n169 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3206.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__3207 (.I0(n1688), .I1(\tx_/bit_counter [2]), .I2(n1692), 
            .O(\tx_/n169 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3207.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3208 (.I0(n1687), .I1(\tx_/state [2]), .I2(n1691), .O(n1700)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__3208.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__3209 (.I0(\tx_/state [2]), .I1(\tx_/baud_counter [0]), 
            .I2(\tx_/baud_counter [1]), .I3(n1700), .O(\tx_/n173 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3209.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__3210 (.I0(\tx_/baud_counter [0]), .I1(\tx_/baud_counter [1]), 
            .I2(\tx_/baud_counter [2]), .I3(n1693), .O(n1701)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__3210.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__3211 (.I0(n1691), .I1(\tx_/state [2]), .I2(\tx_/baud_counter [9]), 
            .O(n1702)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3211.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3212 (.I0(n1701), .I1(n1702), .O(\tx_/n173 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3212.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__3213 (.I0(\tx_/baud_counter [0]), .I1(\tx_/baud_counter [1]), 
            .I2(\tx_/baud_counter [2]), .I3(\tx_/baud_counter [3]), .O(n1703)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__3213.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3214 (.I0(n1691), .I1(\tx_/state [2]), .I2(\tx_/baud_counter [10]), 
            .O(n1704)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3214.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3215 (.I0(n1693), .I1(n1703), .I2(n1704), .O(\tx_/n173 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3215.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3216 (.I0(\tx_/baud_counter [0]), .I1(\tx_/baud_counter [1]), 
            .I2(\tx_/baud_counter [2]), .I3(\tx_/baud_counter [3]), .O(n1705)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3216.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3217 (.I0(\tx_/state [2]), .I1(n1705), .I2(\tx_/baud_counter [4]), 
            .I3(n1700), .O(\tx_/n173 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3217.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__3218 (.I0(n1705), .I1(\tx_/baud_counter [4]), .I2(\tx_/baud_counter [5]), 
            .I3(n1693), .O(n1706)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__3218.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__3219 (.I0(n1706), .I1(n1704), .O(\tx_/n173 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3219.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__3220 (.I0(n1705), .I1(\tx_/baud_counter [4]), .I2(\tx_/baud_counter [5]), 
            .O(n1707)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3220.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3221 (.I0(n1702), .I1(n1707), .I2(\tx_/baud_counter [6]), 
            .I3(n1693), .O(\tx_/n173 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3221.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__3222 (.I0(n1707), .I1(\tx_/baud_counter [6]), .I2(\tx_/baud_counter [7]), 
            .I3(n1693), .O(\tx_/n173 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3222.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__3223 (.I0(n1707), .I1(\tx_/baud_counter [6]), .I2(\tx_/baud_counter [7]), 
            .I3(\tx_/baud_counter [8]), .O(n1708)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__3223.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__3224 (.I0(n1693), .I1(n1708), .I2(n1704), .O(\tx_/n173 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3224.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3225 (.I0(n1707), .I1(\tx_/baud_counter [6]), .I2(\tx_/baud_counter [7]), 
            .I3(\tx_/baud_counter [8]), .O(n1709)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3225.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3226 (.I0(n1702), .I1(n1709), .I2(\tx_/baud_counter [9]), 
            .I3(n1693), .O(\tx_/n173 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeaa */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3226.LUTMASK = 16'hbeaa;
    EFX_LUT4 LUT__3227 (.I0(n1709), .I1(\tx_/baud_counter [9]), .I2(\tx_/baud_counter [10]), 
            .I3(n1693), .O(n1710)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__3227.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__3228 (.I0(n1710), .I1(n1704), .O(\tx_/n173 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3228.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__3229 (.I0(\tx_/state [2]), .I1(n1709), .I2(\tx_/baud_counter [9]), 
            .I3(\tx_/baud_counter [10]), .O(n1711)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3229.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3230 (.I0(n1711), .I1(\tx_/baud_counter [11]), .I2(n1700), 
            .O(\tx_/n173 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_tx.v(96)
    defparam LUT__3230.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3231 (.I0(\sin_cos/o_x [19]), .I1(\sin_cos/o_x [21]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1712)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3231.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3232 (.I0(n1476), .I1(n1712), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1713)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3232.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3233 (.I0(\sin_cos/o_x [23]), .I1(\sin_cos/o_x [25]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1714)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3233.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3234 (.I0(n1478), .I1(n1714), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1715)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3234.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3235 (.I0(n1715), .I1(n1713), .I2(n1392), .O(n1716)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3235.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3236 (.I0(n1514), .I1(n1716), .I2(n1389), .O(n1717)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3236.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3237 (.I0(\sin_cos/o_x [2]), .I1(\sin_cos/o_x [4]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I3(n1563), .O(n1718)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__3237.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__3238 (.I0(\sin_cos/o_x [3]), .I1(\sin_cos/o_x [5]), .I2(n1563), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .O(n1719)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__3238.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__3239 (.I0(\sin_cos/o_x [7]), .I1(\sin_cos/o_x [9]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n1720)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3239.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3240 (.I0(n1464), .I1(n1720), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1721)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3240.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3241 (.I0(\sin_cos/o_x [11]), .I1(\sin_cos/o_x [13]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1722)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3241.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3242 (.I0(n1459), .I1(n1722), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1723)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3242.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3243 (.I0(\sin_cos/o_x [15]), .I1(\sin_cos/o_x [17]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1724)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3243.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3244 (.I0(n1461), .I1(n1724), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1725)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3244.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3245 (.I0(n1725), .I1(n1723), .I2(n1392), .O(n1726)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3245.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3246 (.I0(n1726), .I1(n1721), .I2(n1563), .O(n1727)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__3246.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__3247 (.I0(n1719), .I1(n1718), .I2(n1727), .I3(n1546), 
            .O(n1728)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hee0f */ ;
    defparam LUT__3247.LUTMASK = 16'hee0f;
    EFX_LUT4 LUT__3248 (.I0(n1728), .I1(n1717), .I2(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__3248.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__3249 (.I0(\sin_cos/o_y [0]), .I1(\sin_cos/o_y [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n1729)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3249.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3250 (.I0(n1570), .I1(n1729), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .O(n1730)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfacf */ ;
    defparam LUT__3250.LUTMASK = 16'hfacf;
    EFX_LUT4 LUT__3251 (.I0(n1560), .I1(n1392), .I2(n1730), .O(n1731)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3251.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3252 (.I0(n1542), .I1(n1731), .I2(n1389), .O(n1732)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__3252.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3253 (.I0(n1506), .I1(n1732), .I2(n1388), .O(n1733)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__3253.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__3254 (.I0(n1733), .I1(\sin_cos/o_y [31]), .I2(n1386), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n778 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(471)
    defparam LUT__3254.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3255 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hec3a */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__3255.LUTMASK = 16'hec3a;
    EFX_LUT4 LUT__3256 (.I0(\sin_cos/o_y [0]), .I1(\sin_cos/o_x [0]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [32])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3256.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3257 (.I0(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_64/n11 ), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), .O(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_80/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3257.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3258 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1734)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3258.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3259 (.I0(rx_store[0]), .I1(rx_store[1]), .I2(rx_store[2]), 
            .I3(rx_store[3]), .O(n1735)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3259.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3260 (.I0(rx_store[4]), .I1(rx_store[5]), .I2(rx_store[6]), 
            .I3(rx_store[7]), .O(n1736)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3260.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3261 (.I0(n1735), .I1(n1736), .O(n1737)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3261.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3262 (.I0(rx_store[8]), .I1(rx_store[9]), .I2(rx_store[10]), 
            .I3(n1737), .O(n1738)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3262.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3263 (.I0(rx_store[11]), .I1(rx_store[12]), .O(n1739)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3263.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3264 (.I0(rx_store[13]), .I1(rx_store[14]), .I2(rx_store[15]), 
            .I3(n1739), .O(n1740)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3264.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3265 (.I0(n1738), .I1(n1740), .I2(rx_store[31]), .I3(rx_store[16]), 
            .O(n1741)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f70 */ ;
    defparam LUT__3265.LUTMASK = 16'h8f70;
    EFX_LUT4 LUT__3266 (.I0(rx_store[8]), .I1(rx_store[9]), .I2(rx_store[10]), 
            .I3(rx_store[14]), .O(n1742)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3266.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3267 (.I0(n1735), .I1(n1736), .I2(n1739), .I3(n1742), 
            .O(n1743)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3267.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3268 (.I0(n1743), .I1(rx_store[13]), .I2(rx_store[31]), 
            .I3(rx_store[15]), .O(n1744)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;
    defparam LUT__3268.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3269 (.I0(rx_store[13]), .I1(rx_store[15]), .I2(rx_store[16]), 
            .I3(n1743), .O(n1745)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3269.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3270 (.I0(n1745), .I1(rx_store[31]), .I2(rx_store[17]), 
            .O(n1746)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3270.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3271 (.I0(rx_store[22]), .I1(rx_store[23]), .I2(rx_store[24]), 
            .I3(rx_store[25]), .O(n1747)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3271.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3272 (.I0(rx_store[13]), .I1(rx_store[15]), .I2(rx_store[16]), 
            .I3(rx_store[21]), .O(n1748)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3272.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3273 (.I0(rx_store[17]), .I1(rx_store[18]), .I2(rx_store[19]), 
            .I3(rx_store[20]), .O(n1749)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3273.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3274 (.I0(n1747), .I1(n1748), .I2(n1749), .O(n1750)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3274.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3275 (.I0(n1743), .I1(n1750), .I2(rx_store[31]), .I3(rx_store[26]), 
            .O(n1751)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f70 */ ;
    defparam LUT__3275.LUTMASK = 16'h8f70;
    EFX_LUT4 LUT__3276 (.I0(rx_store[11]), .I1(rx_store[12]), .I2(rx_store[17]), 
            .I3(rx_store[18]), .O(n1752)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3276.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3277 (.I0(n1735), .I1(n1736), .I2(n1742), .I3(n1752), 
            .O(n1753)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3277.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3278 (.I0(rx_store[22]), .I1(rx_store[23]), .I2(rx_store[24]), 
            .O(n1754)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3278.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3279 (.I0(rx_store[19]), .I1(rx_store[20]), .O(n1755)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3279.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3280 (.I0(n1754), .I1(n1755), .I2(n1748), .O(n1756)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3280.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3281 (.I0(n1753), .I1(n1756), .I2(rx_store[31]), .I3(rx_store[25]), 
            .O(n1757)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f70 */ ;
    defparam LUT__3281.LUTMASK = 16'h8f70;
    EFX_LUT4 LUT__3282 (.I0(rx_store[26]), .I1(rx_store[27]), .O(n1758)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3282.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3283 (.I0(n1747), .I1(n1758), .I2(n1755), .I3(n1748), 
            .O(n1759)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3283.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3284 (.I0(n1753), .I1(n1759), .I2(rx_store[31]), .I3(rx_store[28]), 
            .O(n1760)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f70 */ ;
    defparam LUT__3284.LUTMASK = 16'h8f70;
    EFX_LUT4 LUT__3285 (.I0(rx_store[26]), .I1(n1748), .I2(n1749), .I3(n1747), 
            .O(n1761)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3285.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3286 (.I0(n1743), .I1(n1761), .I2(rx_store[31]), .I3(rx_store[27]), 
            .O(n1762)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f70 */ ;
    defparam LUT__3286.LUTMASK = 16'h8f70;
    EFX_LUT4 LUT__3287 (.I0(n1757), .I1(n1751), .I2(n1760), .I3(n1762), 
            .O(n1763)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__3287.LUTMASK = 16'he000;
    EFX_LUT4 LUT__3288 (.I0(rx_store[26]), .I1(rx_store[27]), .I2(rx_store[28]), 
            .O(n1764)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3288.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3289 (.I0(n1747), .I1(n1755), .I2(n1748), .I3(n1764), 
            .O(n1765)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3289.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3290 (.I0(n1765), .I1(rx_store[30]), .I2(rx_store[29]), 
            .O(n1766)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he3e3 */ ;
    defparam LUT__3290.LUTMASK = 16'he3e3;
    EFX_LUT4 LUT__3291 (.I0(rx_store[30]), .I1(rx_store[31]), .O(n1767)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3291.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3292 (.I0(n1763), .I1(n1766), .I2(n1767), .I3(n1757), 
            .O(n1768)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1fe0 */ ;
    defparam LUT__3292.LUTMASK = 16'h1fe0;
    EFX_LUT4 LUT__3293 (.I0(rx_store[22]), .I1(rx_store[23]), .I2(n1755), 
            .I3(n1748), .O(n1769)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__3293.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3294 (.I0(n1753), .I1(n1769), .I2(rx_store[31]), .I3(rx_store[24]), 
            .O(n1770)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f70 */ ;
    defparam LUT__3294.LUTMASK = 16'h8f70;
    EFX_LUT4 LUT__3295 (.I0(n1753), .I1(n1755), .I2(n1748), .O(n1771)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__3295.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__3296 (.I0(n1771), .I1(rx_store[22]), .I2(rx_store[31]), 
            .I3(rx_store[23]), .O(n1772)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;
    defparam LUT__3296.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3297 (.I0(n1757), .I1(n1770), .I2(n1751), .I3(n1762), 
            .O(n1773)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__3297.LUTMASK = 16'he000;
    EFX_LUT4 LUT__3298 (.I0(n1753), .I1(n1765), .I2(rx_store[31]), .O(n1774)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3298.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3299 (.I0(n1774), .I1(rx_store[29]), .O(n1775)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3299.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3300 (.I0(n1774), .I1(rx_store[29]), .I2(rx_store[30]), 
            .O(n1776)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__3300.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__3301 (.I0(n1760), .I1(n1773), .I2(n1775), .I3(n1776), 
            .O(n1777)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__3301.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__3302 (.I0(n1763), .I1(n1766), .I2(n1767), .O(n1778)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3302.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3303 (.I0(n1777), .I1(n1778), .O(n1779)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3303.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3304 (.I0(n1779), .I1(n1768), .I2(n1770), .I3(n1772), 
            .O(n1780)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he77b */ ;
    defparam LUT__3304.LUTMASK = 16'he77b;
    EFX_LUT4 LUT__3305 (.I0(n1757), .I1(n1751), .I2(n1762), .I3(n1767), 
            .O(n1781)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__3305.LUTMASK = 16'he000;
    EFX_LUT4 LUT__3306 (.I0(n1773), .I1(n1781), .I2(n1760), .O(n1782)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__3306.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__3307 (.I0(n1765), .I1(rx_store[29]), .I2(rx_store[30]), 
            .I3(rx_store[31]), .O(n1783)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf43f */ ;
    defparam LUT__3307.LUTMASK = 16'hf43f;
    EFX_LUT4 LUT__3308 (.I0(n1763), .I1(n1783), .I2(n1775), .O(n1784)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3308.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3309 (.I0(n1784), .I1(n1776), .I2(n1782), .O(n1785)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3309.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3310 (.I0(n1771), .I1(rx_store[31]), .I2(rx_store[22]), 
            .O(n1786)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3310.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3311 (.I0(n1786), .I1(n1772), .I2(n1785), .O(n1787)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__3311.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3312 (.I0(n1757), .I1(n1770), .O(n1788)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3312.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3313 (.I0(n1760), .I1(n1775), .I2(n1776), .I3(n1788), 
            .O(n1789)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__3313.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__3314 (.I0(n1776), .I1(n1772), .I2(n1770), .O(n1790)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1717 */ ;
    defparam LUT__3314.LUTMASK = 16'h1717;
    EFX_LUT4 LUT__3315 (.I0(n1789), .I1(n1768), .I2(n1790), .O(n1791)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;
    defparam LUT__3315.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__3316 (.I0(n1763), .I1(n1767), .I2(n1766), .I3(n1788), 
            .O(n1792)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3316.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3317 (.I0(n1757), .I1(n1767), .O(n1793)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3317.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3318 (.I0(n1763), .I1(n1793), .I2(n1766), .I3(n1751), 
            .O(n1794)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc83f */ ;
    defparam LUT__3318.LUTMASK = 16'hc83f;
    EFX_LUT4 LUT__3319 (.I0(n1777), .I1(n1792), .I2(n1794), .O(n1795)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3319.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3320 (.I0(n1760), .I1(n1766), .I2(n1767), .O(n1796)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3320.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3321 (.I0(n1757), .I1(n1751), .O(n1797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3321.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3322 (.I0(n1796), .I1(n1783), .I2(n1797), .I3(n1762), 
            .O(n1798)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0afc */ ;
    defparam LUT__3322.LUTMASK = 16'h0afc;
    EFX_LUT4 LUT__3323 (.I0(n1777), .I1(n1794), .I2(n1792), .I3(n1798), 
            .O(n1799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h10ef */ ;
    defparam LUT__3323.LUTMASK = 16'h10ef;
    EFX_LUT4 LUT__3324 (.I0(n1763), .I1(n1766), .I2(n1767), .I3(n1773), 
            .O(n1800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h001f */ ;
    defparam LUT__3324.LUTMASK = 16'h001f;
    EFX_LUT4 LUT__3325 (.I0(n1766), .I1(n1760), .I2(n1781), .O(n1801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;
    defparam LUT__3325.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__3326 (.I0(n1777), .I1(n1800), .I2(n1801), .O(n1802)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3326.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3327 (.I0(n1795), .I1(n1791), .I2(n1799), .I3(n1802), 
            .O(n1803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__3327.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__3328 (.I0(n1777), .I1(n1778), .I2(n1757), .I3(n1770), 
            .O(n1804)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2c00 */ ;
    defparam LUT__3328.LUTMASK = 16'h2c00;
    EFX_LUT4 LUT__3329 (.I0(n1772), .I1(n1786), .O(n1805)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3329.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3331 (.I0(n1804), .I1(n1789), .I2(n1805), .I3(n1785), 
            .O(n1807)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e00 */ ;
    defparam LUT__3331.LUTMASK = 16'h0e00;
    EFX_LUT4 LUT__3332 (.I0(n1803), .I1(n1807), .I2(n1780), .I3(n1787), 
            .O(n1808)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__3332.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__2726 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n1383)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__2726.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3333 (.I0(n1791), .I1(n1795), .I2(n1802), .I3(n1799), 
            .O(n1809)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000e */ ;
    defparam LUT__3333.LUTMASK = 16'h000e;
    EFX_LUT4 LUT__3334 (.I0(n1785), .I1(n1802), .I2(n1791), .O(n1810)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3334.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3335 (.I0(n1809), .I1(n1795), .I2(n1810), .O(n1811)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbcbc */ ;
    defparam LUT__3335.LUTMASK = 16'hbcbc;
    EFX_LUT4 LUT__3336 (.I0(n1791), .I1(n1795), .O(n1812)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3336.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3337 (.I0(n1802), .I1(n1812), .I2(n1785), .I3(n1799), 
            .O(n1813)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h13fc */ ;
    defparam LUT__3337.LUTMASK = 16'h13fc;
    EFX_LUT4 LUT__3338 (.I0(n1795), .I1(n1791), .I2(n1799), .I3(n1785), 
            .O(n1814)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__3338.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__3339 (.I0(n1814), .I1(n1809), .O(n1815)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3339.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3340 (.I0(n1811), .I1(n1808), .I2(n1813), .I3(n1815), 
            .O(n1816)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__3340.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__3341 (.I0(n1816), .I1(n1786), .O(n1817)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3341.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3342 (.I0(n1772), .I1(n1786), .O(n1818)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3342.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3343 (.I0(n1803), .I1(n1785), .O(n1819)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3343.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3344 (.I0(n1778), .I1(n1777), .O(n1820)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3344.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3345 (.I0(n1820), .I1(n1770), .O(n1821)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3345.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3346 (.I0(n1805), .I1(n1818), .I2(n1821), .I3(n1819), 
            .O(n1822)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h35fe */ ;
    defparam LUT__3346.LUTMASK = 16'h35fe;
    EFX_LUT4 LUT__3347 (.I0(n1819), .I1(n1772), .I2(n1821), .O(n1823)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__3347.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__3348 (.I0(rx_store[13]), .I1(rx_store[15]), .I2(rx_store[16]), 
            .I3(n1753), .O(n1824)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3348.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3349 (.I0(n1824), .I1(n1755), .I2(rx_store[31]), .I3(rx_store[21]), 
            .O(n1825)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f70 */ ;
    defparam LUT__3349.LUTMASK = 16'h8f70;
    EFX_LUT4 LUT__3350 (.I0(n1814), .I1(n1809), .I2(n1825), .I3(n1786), 
            .O(n1826)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e01 */ ;
    defparam LUT__3350.LUTMASK = 16'h0e01;
    EFX_LUT4 LUT__3351 (.I0(n1823), .I1(n1822), .I2(n1826), .I3(n1816), 
            .O(n1827)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__3351.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__3352 (.I0(n1819), .I1(n1772), .I2(n1821), .O(n1828)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3352.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3353 (.I0(n1786), .I1(n1785), .I2(n1772), .O(n1829)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__3353.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3354 (.I0(n1770), .I1(n1820), .I2(n1768), .O(n1830)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__3354.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3355 (.I0(n1821), .I1(n1772), .I2(n1819), .I3(n1830), 
            .O(n1831)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf20d */ ;
    defparam LUT__3355.LUTMASK = 16'hf20d;
    EFX_LUT4 LUT__3356 (.I0(n1816), .I1(n1829), .I2(n1828), .I3(n1831), 
            .O(n1832)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;
    defparam LUT__3356.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3357 (.I0(n1813), .I1(n1815), .I2(n1808), .I3(n1811), 
            .O(n1833)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcf70 */ ;
    defparam LUT__3357.LUTMASK = 16'hcf70;
    EFX_LUT4 LUT__3358 (.I0(n1813), .I1(n1815), .I2(n1811), .I3(n1808), 
            .O(n1834)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haccc */ ;
    defparam LUT__3358.LUTMASK = 16'haccc;
    EFX_LUT4 LUT__3359 (.I0(n1827), .I1(n1832), .I2(n1833), .I3(n1834), 
            .O(n1835)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__3359.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__3360 (.I0(n1824), .I1(rx_store[19]), .I2(rx_store[31]), 
            .I3(rx_store[20]), .O(n1836)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;
    defparam LUT__3360.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3361 (.I0(n1817), .I1(n1835), .I2(n1825), .I3(n1836), 
            .O(n1837)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdd7 */ ;
    defparam LUT__3361.LUTMASK = 16'hbdd7;
    EFX_LUT4 LUT__3362 (.I0(n1835), .I1(n1817), .I2(n1825), .O(n1838)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7e7e */ ;
    defparam LUT__3362.LUTMASK = 16'h7e7e;
    EFX_LUT4 LUT__3363 (.I0(n1833), .I1(n1834), .I2(n1827), .I3(n1832), 
            .O(n1839)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcafc */ ;
    defparam LUT__3363.LUTMASK = 16'hcafc;
    EFX_LUT4 LUT__3364 (.I0(n1824), .I1(rx_store[31]), .I2(rx_store[19]), 
            .O(n1840)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3364.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3365 (.I0(n1840), .I1(n1839), .I2(n1836), .O(n1841)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__3365.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3366 (.I0(n1819), .I1(n1772), .O(n1842)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3366.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3367 (.I0(n1815), .I1(n1811), .I2(n1813), .I3(n1826), 
            .O(n1843)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h007d */ ;
    defparam LUT__3367.LUTMASK = 16'h007d;
    EFX_LUT4 LUT__3368 (.I0(n1816), .I1(n1786), .I2(n1842), .I3(n1843), 
            .O(n1844)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he100 */ ;
    defparam LUT__3368.LUTMASK = 16'he100;
    EFX_LUT4 LUT__3369 (.I0(n1816), .I1(n1829), .I2(n1828), .O(n1845)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__3369.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3370 (.I0(n1834), .I1(n1832), .I2(n1844), .I3(n1845), 
            .O(n1846)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf08f */ ;
    defparam LUT__3370.LUTMASK = 16'hf08f;
    EFX_LUT4 LUT__3371 (.I0(n1836), .I1(n1815), .I2(n1786), .I3(n1825), 
            .O(n1847)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0230 */ ;
    defparam LUT__3371.LUTMASK = 16'h0230;
    EFX_LUT4 LUT__3372 (.I0(n1786), .I1(n1825), .I2(n1836), .I3(n1815), 
            .O(n1848)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3372.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3373 (.I0(n1826), .I1(n1847), .I2(n1848), .I3(n1842), 
            .O(n1849)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__3373.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__3374 (.I0(n1825), .I1(n1836), .O(n1850)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3374.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3375 (.I0(n1850), .I1(n1816), .I2(n1842), .I3(n1786), 
            .O(n1851)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__3375.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__3376 (.I0(n1833), .I1(n1831), .O(n1852)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3376.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3377 (.I0(n1851), .I1(n1849), .I2(n1852), .I3(n1834), 
            .O(n1853)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0a0c */ ;
    defparam LUT__3377.LUTMASK = 16'h0a0c;
    EFX_LUT4 LUT__3378 (.I0(n1833), .I1(n1827), .I2(n1834), .I3(n1832), 
            .O(n1854)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc13 */ ;
    defparam LUT__3378.LUTMASK = 16'hfc13;
    EFX_LUT4 LUT__3379 (.I0(n1853), .I1(n1846), .I2(n1854), .I3(n1839), 
            .O(n1855)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__3379.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__3380 (.I0(n1838), .I1(n1837), .I2(n1841), .I3(n1855), 
            .O(n1856)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__3380.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__3381 (.I0(n1836), .I1(n1835), .I2(n1825), .I3(n1817), 
            .O(n1857)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h17fc */ ;
    defparam LUT__3381.LUTMASK = 16'h17fc;
    EFX_LUT4 LUT__3382 (.I0(n1816), .I1(n1786), .I2(n1842), .O(n1858)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3382.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3383 (.I0(n1835), .I1(n1826), .I2(n1858), .O(n1859)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3383.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3384 (.I0(n1855), .I1(n1857), .I2(n1859), .O(n1860)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3384.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3385 (.I0(n1854), .I1(n1853), .I2(n1846), .I3(n1839), 
            .O(n1861)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he100 */ ;
    defparam LUT__3385.LUTMASK = 16'he100;
    EFX_LUT4 LUT__3386 (.I0(n1854), .I1(n1839), .I2(n1853), .I3(n1846), 
            .O(n1862)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;
    defparam LUT__3386.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__3387 (.I0(n1856), .I1(n1860), .I2(n1861), .I3(n1862), 
            .O(n1863)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h040b */ ;
    defparam LUT__3387.LUTMASK = 16'h040b;
    EFX_LUT4 LUT__3388 (.I0(n1745), .I1(rx_store[17]), .I2(rx_store[31]), 
            .I3(rx_store[18]), .O(n1864)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;
    defparam LUT__3388.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3389 (.I0(n1856), .I1(n1862), .I2(n1860), .I3(n1861), 
            .O(n1865)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__3389.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__3390 (.I0(n1865), .I1(n1840), .O(n1866)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3390.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3391 (.I0(n1746), .I1(n1863), .I2(n1864), .I3(n1866), 
            .O(n1867)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf34d */ ;
    defparam LUT__3391.LUTMASK = 16'hf34d;
    EFX_LUT4 LUT__3392 (.I0(n1861), .I1(n1841), .O(n1868)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3392.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3393 (.I0(n1856), .I1(n1862), .I2(n1860), .I3(n1868), 
            .O(n1869)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__3393.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__3394 (.I0(n1835), .I1(n1825), .O(n1870)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3394.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3395 (.I0(n1855), .I1(n1836), .I2(n1870), .O(n1871)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3395.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3396 (.I0(n1836), .I1(n1835), .I2(n1825), .I3(n1855), 
            .O(n1872)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc17 */ ;
    defparam LUT__3396.LUTMASK = 16'hfc17;
    EFX_LUT4 LUT__3397 (.I0(n1872), .I1(n1817), .O(n1873)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3397.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3398 (.I0(n1871), .I1(n1869), .I2(n1873), .O(n1874)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3398.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3399 (.I0(n1855), .I1(n1870), .I2(n1836), .O(n1875)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7e7e */ ;
    defparam LUT__3399.LUTMASK = 16'h7e7e;
    EFX_LUT4 LUT__3400 (.I0(n1870), .I1(n1855), .I2(n1836), .I3(n1840), 
            .O(n1876)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdd7 */ ;
    defparam LUT__3400.LUTMASK = 16'hbdd7;
    EFX_LUT4 LUT__3401 (.I0(n1876), .I1(n1875), .I2(n1863), .I3(n1865), 
            .O(n1877)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0a0c */ ;
    defparam LUT__3401.LUTMASK = 16'h0a0c;
    EFX_LUT4 LUT__3402 (.I0(n1862), .I1(n1861), .I2(n1856), .I3(n1860), 
            .O(n1878)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h05fc */ ;
    defparam LUT__3402.LUTMASK = 16'h05fc;
    EFX_LUT4 LUT__3403 (.I0(n1864), .I1(n1862), .I2(n1840), .O(n1879)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__3403.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3404 (.I0(n1863), .I1(n1878), .I2(n1879), .O(n1880)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__3404.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__3405 (.I0(n1856), .I1(n1860), .I2(n1862), .O(n1881)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3405.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3406 (.I0(n1861), .I1(n1840), .O(n1882)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3406.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3407 (.I0(n1855), .I1(n1836), .O(n1883)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3407.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3408 (.I0(n1881), .I1(n1882), .I2(n1883), .O(n1884)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__3408.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3409 (.I0(n1874), .I1(n1877), .I2(n1880), .I3(n1884), 
            .O(n1885)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f70 */ ;
    defparam LUT__3409.LUTMASK = 16'h8f70;
    EFX_LUT4 LUT__3410 (.I0(n1867), .I1(n1885), .O(n1886)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3410.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3411 (.I0(n1876), .I1(n1875), .I2(n1879), .I3(n1865), 
            .O(n1887)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__3411.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__3412 (.I0(n1887), .I1(n1874), .I2(n1878), .I3(n1863), 
            .O(n1888)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3412.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3413 (.I0(n1881), .I1(n1882), .I2(n1879), .I3(n1883), 
            .O(n1889)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h040b */ ;
    defparam LUT__3413.LUTMASK = 16'h040b;
    EFX_LUT4 LUT__3414 (.I0(n1869), .I1(n1871), .O(n1890)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3414.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3415 (.I0(n1878), .I1(n1863), .I2(n1887), .I3(n1874), 
            .O(n1891)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;
    defparam LUT__3415.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__3416 (.I0(n1888), .I1(n1889), .I2(n1891), .I3(n1890), 
            .O(n1892)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h040b */ ;
    defparam LUT__3416.LUTMASK = 16'h040b;
    EFX_LUT4 LUT__3417 (.I0(n1863), .I1(n1874), .I2(n1878), .O(n1893)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__3417.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3418 (.I0(n1886), .I1(n1892), .I2(n1893), .I3(n1746), 
            .O(n1894)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bf4 */ ;
    defparam LUT__3418.LUTMASK = 16'h0bf4;
    EFX_LUT4 LUT__3419 (.I0(n1738), .I1(n1739), .I2(rx_store[31]), .O(n1895)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3419.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3420 (.I0(rx_store[13]), .I1(rx_store[31]), .I2(n1895), 
            .I3(rx_store[14]), .O(n1896)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h07f8 */ ;
    defparam LUT__3420.LUTMASK = 16'h07f8;
    EFX_LUT4 LUT__3421 (.I0(n1744), .I1(n1896), .I2(n1894), .I3(n1741), 
            .O(n1897)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ff2 */ ;
    defparam LUT__3421.LUTMASK = 16'h7ff2;
    EFX_LUT4 LUT__3422 (.I0(n1863), .I1(n1864), .I2(n1746), .I3(n1741), 
            .O(n1898)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6000 */ ;
    defparam LUT__3422.LUTMASK = 16'h6000;
    EFX_LUT4 LUT__3423 (.I0(n1898), .I1(n1890), .I2(n1884), .I3(n1863), 
            .O(n1899)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__3423.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__3424 (.I0(n1888), .I1(n1864), .I2(n1866), .O(n1900)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3424.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3425 (.I0(n1900), .I1(n1899), .I2(n1891), .O(n1901)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__3425.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__3426 (.I0(n1746), .I1(n1741), .O(n1902)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3426.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3427 (.I0(n1866), .I1(n1864), .I2(n1902), .O(n1903)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__3427.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__3428 (.I0(n1873), .I1(n1866), .I2(n1903), .I3(n1885), 
            .O(n1904)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h008f */ ;
    defparam LUT__3428.LUTMASK = 16'h008f;
    EFX_LUT4 LUT__3429 (.I0(n1890), .I1(n1893), .O(n1905)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3429.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3430 (.I0(n1889), .I1(n1888), .I2(n1890), .I3(n1874), 
            .O(n1906)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfed3 */ ;
    defparam LUT__3430.LUTMASK = 16'hfed3;
    EFX_LUT4 LUT__3431 (.I0(n1886), .I1(n1906), .I2(n1904), .I3(n1905), 
            .O(n1907)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0ee */ ;
    defparam LUT__3431.LUTMASK = 16'he0ee;
    EFX_LUT4 LUT__3432 (.I0(n1901), .I1(n1907), .O(n1908)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3432.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3433 (.I0(n1897), .I1(n1894), .I2(n1744), .I3(n1908), 
            .O(n1909)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbeed */ ;
    defparam LUT__3433.LUTMASK = 16'hbeed;
    EFX_LUT4 LUT__3434 (.I0(n1901), .I1(n1907), .I2(n1894), .I3(n1741), 
            .O(n1910)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfb4f */ ;
    defparam LUT__3434.LUTMASK = 16'hfb4f;
    EFX_LUT4 LUT__3435 (.I0(n1896), .I1(n1744), .I2(n1910), .O(n1911)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__3435.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__3436 (.I0(n1741), .I1(n1901), .I2(n1744), .I3(n1907), 
            .O(n1912)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4d5f */ ;
    defparam LUT__3436.LUTMASK = 16'h4d5f;
    EFX_LUT4 LUT__3437 (.I0(n1901), .I1(n1907), .I2(n1741), .O(n1913)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__3437.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3438 (.I0(n1741), .I1(n1902), .I2(n1891), .O(n1914)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he3e3 */ ;
    defparam LUT__3438.LUTMASK = 16'he3e3;
    EFX_LUT4 LUT__3439 (.I0(n1893), .I1(n1746), .O(n1915)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3439.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3440 (.I0(n1888), .I1(n1864), .O(n1916)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3440.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3441 (.I0(n1886), .I1(n1892), .I2(n1915), .I3(n1916), 
            .O(n1917)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;
    defparam LUT__3441.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__3442 (.I0(n1901), .I1(n1907), .I2(n1914), .I3(n1917), 
            .O(n1918)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;
    defparam LUT__3442.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__3443 (.I0(n1913), .I1(n1912), .I2(n1894), .I3(n1918), 
            .O(n1919)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha300 */ ;
    defparam LUT__3443.LUTMASK = 16'ha300;
    EFX_LUT4 LUT__3444 (.I0(n1892), .I1(n1915), .I2(n1916), .I3(n1741), 
            .O(n1920)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__3444.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__3445 (.I0(n1892), .I1(n1893), .I2(n1916), .I3(n1746), 
            .O(n1921)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1ffe */ ;
    defparam LUT__3445.LUTMASK = 16'h1ffe;
    EFX_LUT4 LUT__3446 (.I0(n1920), .I1(n1921), .O(n1922)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3446.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3447 (.I0(n1746), .I1(n1863), .I2(n1864), .I3(n1893), 
            .O(n1923)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;
    defparam LUT__3447.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__3448 (.I0(n1886), .I1(n1892), .I2(n1923), .I3(n1900), 
            .O(n1924)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;
    defparam LUT__3448.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__3449 (.I0(n1908), .I1(n1922), .I2(n1924), .O(n1925)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3449.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3450 (.I0(n1920), .I1(n1921), .I2(n1924), .O(n1926)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__3450.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3451 (.I0(n1892), .I1(n1867), .I2(n1893), .I3(n1885), 
            .O(n1927)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h03fe */ ;
    defparam LUT__3451.LUTMASK = 16'h03fe;
    EFX_LUT4 LUT__3452 (.I0(n1908), .I1(n1926), .I2(n1927), .O(n1928)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3452.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3453 (.I0(n1888), .I1(n1889), .I2(n1890), .O(n1929)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__3453.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3454 (.I0(n1929), .I1(n1891), .I2(n1906), .O(n1930)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__3454.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__3455 (.I0(n1929), .I1(n1891), .I2(n1885), .O(n1931)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3455.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3456 (.I0(n1931), .I1(n1893), .I2(n1929), .I3(n1867), 
            .O(n1932)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5d0f */ ;
    defparam LUT__3456.LUTMASK = 16'h5d0f;
    EFX_LUT4 LUT__3457 (.I0(n1932), .I1(n1927), .I2(n1930), .I3(n1926), 
            .O(n1933)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf075 */ ;
    defparam LUT__3457.LUTMASK = 16'hf075;
    EFX_LUT4 LUT__3458 (.I0(n1925), .I1(n1919), .I2(n1928), .I3(n1933), 
            .O(n1934)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__3458.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__3459 (.I0(n1911), .I1(n1909), .I2(n1934), .O(n1935)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__3459.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__3460 (.I0(n1919), .I1(n1925), .O(n1936)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3460.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3461 (.I0(n1928), .I1(n1933), .I2(n1936), .O(n1937)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__3461.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__3462 (.I0(n1928), .I1(n1919), .I2(n1933), .I3(n1925), 
            .O(n1938)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h23fc */ ;
    defparam LUT__3462.LUTMASK = 16'h23fc;
    EFX_LUT4 LUT__3463 (.I0(n1911), .I1(n1909), .I2(n1938), .I3(n1934), 
            .O(n1939)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h050c */ ;
    defparam LUT__3463.LUTMASK = 16'h050c;
    EFX_LUT4 LUT__3464 (.I0(n1913), .I1(n1912), .I2(n1894), .O(n1940)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__3464.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__3465 (.I0(n1934), .I1(n1940), .I2(n1918), .O(n1941)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3465.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3466 (.I0(n1939), .I1(n1935), .I2(n1937), .I3(n1941), 
            .O(n1942)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ea */ ;
    defparam LUT__3466.LUTMASK = 16'hf0ea;
    EFX_LUT4 LUT__3467 (.I0(n1896), .I1(n1934), .I2(n1744), .O(n1943)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__3467.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3468 (.I0(n1919), .I1(n1925), .I2(n1928), .O(n1944)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3468.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3469 (.I0(n1918), .I1(n1924), .I2(n1922), .O(n1945)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4141 */ ;
    defparam LUT__3469.LUTMASK = 16'h4141;
    EFX_LUT4 LUT__3470 (.I0(n1940), .I1(n1933), .I2(n1909), .I3(n1945), 
            .O(n1946)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__3470.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3471 (.I0(n1744), .I1(n1896), .I2(n1910), .I3(n1918), 
            .O(n1947)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__3471.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__3472 (.I0(n1925), .I1(n1947), .I2(n1928), .I3(n1933), 
            .O(n1948)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d00 */ ;
    defparam LUT__3472.LUTMASK = 16'h0d00;
    EFX_LUT4 LUT__3473 (.I0(n1944), .I1(n1946), .I2(n1948), .O(n1949)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3473.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3474 (.I0(n1908), .I1(n1741), .O(n1950)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3474.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3475 (.I0(n1744), .I1(n1933), .I2(n1950), .O(n1951)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__3475.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3476 (.I0(n1928), .I1(n1933), .I2(n1744), .I3(n1950), 
            .O(n1952)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bf4 */ ;
    defparam LUT__3476.LUTMASK = 16'h0bf4;
    EFX_LUT4 LUT__3477 (.I0(n1952), .I1(n1951), .I2(n1936), .O(n1953)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__3477.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__3478 (.I0(n1913), .I1(n1912), .I2(n1934), .I3(n1894), 
            .O(n1954)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha35c */ ;
    defparam LUT__3478.LUTMASK = 16'ha35c;
    EFX_LUT4 LUT__3479 (.I0(n1943), .I1(n1953), .I2(n1949), .I3(n1954), 
            .O(n1955)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef10 */ ;
    defparam LUT__3479.LUTMASK = 16'hef10;
    EFX_LUT4 LUT__3480 (.I0(n1937), .I1(n1941), .I2(n1939), .O(n1956)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4141 */ ;
    defparam LUT__3480.LUTMASK = 16'h4141;
    EFX_LUT4 LUT__3481 (.I0(n1942), .I1(n1956), .I2(n1955), .O(n1957)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he3e3 */ ;
    defparam LUT__3481.LUTMASK = 16'he3e3;
    EFX_LUT4 LUT__3482 (.I0(n1896), .I1(n1934), .I2(n1744), .I3(n1950), 
            .O(n1958)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1400 */ ;
    defparam LUT__3482.LUTMASK = 16'h1400;
    EFX_LUT4 LUT__3483 (.I0(n1895), .I1(rx_store[13]), .O(n1959)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3483.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3484 (.I0(n1896), .I1(n1959), .O(n1960)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3484.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3485 (.I0(n1934), .I1(n1744), .I2(n1950), .I3(n1960), 
            .O(n1961)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1800 */ ;
    defparam LUT__3485.LUTMASK = 16'h1800;
    EFX_LUT4 LUT__3486 (.I0(n1896), .I1(n1959), .O(n1962)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3486.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3487 (.I0(n1962), .I1(n1934), .I2(n1950), .I3(n1744), 
            .O(n1963)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4001 */ ;
    defparam LUT__3487.LUTMASK = 16'h4001;
    EFX_LUT4 LUT__3488 (.I0(n1961), .I1(n1958), .I2(n1963), .I3(n1949), 
            .O(n1964)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__3488.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__3489 (.I0(n1956), .I1(n1964), .I2(n1955), .I3(n1942), 
            .O(n1965)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h03fe */ ;
    defparam LUT__3489.LUTMASK = 16'h03fe;
    EFX_LUT4 LUT__3490 (.I0(n1896), .I1(n1949), .I2(n1934), .I3(n1744), 
            .O(n1966)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4bb4 */ ;
    defparam LUT__3490.LUTMASK = 16'h4bb4;
    EFX_LUT4 LUT__3491 (.I0(n1944), .I1(n1946), .I2(n1948), .I3(n1896), 
            .O(n1967)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h01fe */ ;
    defparam LUT__3491.LUTMASK = 16'h01fe;
    EFX_LUT4 LUT__3492 (.I0(n1959), .I1(n1967), .O(n1968)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3492.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3493 (.I0(n1966), .I1(n1968), .O(n1969)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3493.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3494 (.I0(n1738), .I1(rx_store[11]), .I2(rx_store[31]), 
            .I3(rx_store[12]), .O(n1970)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;
    defparam LUT__3494.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3495 (.I0(n1967), .I1(n1959), .I2(n1970), .I3(n1966), 
            .O(n1971)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__3495.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__3496 (.I0(n1959), .I1(n1970), .I2(n1966), .I3(n1967), 
            .O(n1972)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h000e */ ;
    defparam LUT__3496.LUTMASK = 16'h000e;
    EFX_LUT4 LUT__3497 (.I0(n1942), .I1(n1955), .I2(n1964), .I3(n1956), 
            .O(n1973)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00fe */ ;
    defparam LUT__3497.LUTMASK = 16'h00fe;
    EFX_LUT4 LUT__3498 (.I0(n1971), .I1(n1969), .I2(n1972), .I3(n1973), 
            .O(n1974)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;
    defparam LUT__3498.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__3499 (.I0(n1964), .I1(n1942), .I2(n1955), .O(n1975)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3499.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3500 (.I0(n1956), .I1(n1968), .I2(n1966), .O(n1976)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3500.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3501 (.I0(n1943), .I1(n1949), .I2(n1953), .O(n1977)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__3501.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3502 (.I0(n1975), .I1(n1976), .I2(n1977), .O(n1978)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__3502.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3503 (.I0(n1965_q), .I1(n1957_q), .I2(n1974_q), .I3(n1978_q), 
            .O(n1979)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf30a */ ;
    defparam LUT__3503.LUTMASK = 16'hf30a;
    EFX_LUT4 LUT__3504 (.I0(n1942), .I1(n1956), .I2(n1964), .I3(n1955), 
            .O(n1980)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc0a */ ;
    defparam LUT__3504.LUTMASK = 16'hfc0a;
    EFX_LUT4 LUT__3505 (.I0(n1980_q), .I1(n1965_q), .I2(n1974_q), .I3(n1978_q), 
            .O(n1981)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hccca */ ;
    defparam LUT__3505.LUTMASK = 16'hccca;
    EFX_LUT4 LUT__3506 (.I0(n1738), .I1(rx_store[31]), .I2(rx_store[11]), 
            .O(n1982)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3506.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3507 (.I0(n1981), .I1(n1979), .I2(n1982_q), .O(n1983)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__3507.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__3508 (.I0(n1956), .I1(n1966), .I2(n1977), .O(n1984)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3508.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3509 (.I0(n1984), .I1(n1965), .O(n1985)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3509.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3510 (.I0(n1970), .I1(n1959), .I2(n1973), .I3(n1967), 
            .O(n1986)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcf71 */ ;
    defparam LUT__3510.LUTMASK = 16'hcf71;
    EFX_LUT4 LUT__3511 (.I0(n1975), .I1(n1956), .I2(n1968), .I3(n1966), 
            .O(n1987)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe01 */ ;
    defparam LUT__3511.LUTMASK = 16'hfe01;
    EFX_LUT4 LUT__3512 (.I0(n1985_q), .I1(n1986_q), .I2(n1957_q), .I3(n1987_q), 
            .O(n1988)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc07f */ ;
    defparam LUT__3512.LUTMASK = 16'hc07f;
    EFX_LUT4 LUT__3513 (.I0(n1981), .I1(n1988), .O(n1989)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3513.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3514 (.I0(rx_store[9]), .I1(rx_store[8]), .I2(n1737), 
            .I3(rx_store[31]), .O(n1990)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__3514.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__3515 (.I0(n1990_q), .I1(in_data[10]), .O(n1991)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3515.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3516 (.I0(n1985_q), .I1(n1974_q), .I2(n1957_q), .I3(n1970_q), 
            .O(n1992)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he01f */ ;
    defparam LUT__3516.LUTMASK = 16'he01f;
    EFX_LUT4 LUT__3517 (.I0(n1992), .I1(n1991), .O(n1993)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3517.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3518 (.I0(n1989), .I1(n1983), .I2(n1993), .O(n1994)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__3518.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__3519 (.I0(n1981), .I1(n1982_q), .O(n1995)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3519.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3520 (.I0(n1992), .I1(n1995), .O(n1996)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3520.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3521 (.I0(n1989), .I1(n1992), .I2(n1983), .O(n1997)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3521.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3522 (.I0(n1994), .I1(n1996), .I2(n1997), .O(n1998)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__3522.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__3523 (.I0(n1973), .I1(n1967), .I2(n1959), .O(n1999)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__3523.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__3524 (.I0(n1970_q), .I1(n1982_q), .I2(n1999_q), .O(n2000)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3524.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3525 (.I0(n1973), .I1(n1959), .O(n2001)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3525.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3526 (.I0(n1967), .I1(n1959), .I2(n1973), .I3(n1982), 
            .O(n2002)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1800 */ ;
    defparam LUT__3526.LUTMASK = 16'h1800;
    EFX_LUT4 LUT__3527 (.I0(n1967_q), .I1(n2001_q), .I2(n2002_q), .I3(n1970_q), 
            .O(n2003)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0fdd */ ;
    defparam LUT__3527.LUTMASK = 16'h0fdd;
    EFX_LUT4 LUT__3528 (.I0(n1985_q), .I1(n1974_q), .I2(n1957_q), .O(n2004)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3528.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3529 (.I0(n2003), .I1(n2000), .I2(n2004), .I3(n1988), 
            .O(n2005)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha300 */ ;
    defparam LUT__3529.LUTMASK = 16'ha300;
    EFX_LUT4 LUT__3530 (.I0(n1979), .I1(n1981), .I2(n2005), .O(n2006)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3530.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3531 (.I0(n1982_q), .I1(n2004), .I2(n1970_q), .I3(n2001_q), 
            .O(n2007)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4df3 */ ;
    defparam LUT__3531.LUTMASK = 16'h4df3;
    EFX_LUT4 LUT__3532 (.I0(n1981), .I1(n1979), .O(n2008)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3532.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3533 (.I0(n1959_q), .I1(n1973_q), .I2(n1967_q), .O(n2009)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__3533.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3534 (.I0(n2001_q), .I1(n1970_q), .I2(n2004), .I3(n2009), 
            .O(n2010)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he01f */ ;
    defparam LUT__3534.LUTMASK = 16'he01f;
    EFX_LUT4 LUT__3535 (.I0(n1989), .I1(n2007), .I2(n2008), .I3(n2010), 
            .O(n2011)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h03fe */ ;
    defparam LUT__3535.LUTMASK = 16'h03fe;
    EFX_LUT4 LUT__3536 (.I0(n1998), .I1(n2006), .I2(n2011), .O(n2012)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7c7c */ ;
    defparam LUT__3536.LUTMASK = 16'h7c7c;
    EFX_LUT4 LUT__3537 (.I0(n2003), .I1(n2000), .I2(n2004), .O(n2013)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__3537.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__3538 (.I0(n1982_q), .I1(n1992), .I2(n1979), .I3(n1981), 
            .O(n2014)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbb0 */ ;
    defparam LUT__3538.LUTMASK = 16'hbbb0;
    EFX_LUT4 LUT__3539 (.I0(n1970_q), .I1(n2004), .I2(n2001_q), .O(n2015)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3539.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3540 (.I0(n2013), .I1(n1989), .I2(n2014), .I3(n2015), 
            .O(n2016)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;
    defparam LUT__3540.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__3541 (.I0(n2012), .I1(n2016), .O(n2017)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3541.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3542 (.I0(n2005), .I1(n1979), .I2(n1981), .I3(n1982_q), 
            .O(n2018)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bf4 */ ;
    defparam LUT__3542.LUTMASK = 16'h0bf4;
    EFX_LUT4 LUT__3543 (.I0(n2018), .I1(n1991), .O(n2019)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3543.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3544 (.I0(n1737_q), .I1(in_data[8]), .I2(in_data[31]), 
            .I3(in_data[9]), .O(n2020)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1fe0 */ ;
    defparam LUT__3544.LUTMASK = 16'h1fe0;
    EFX_LUT4 LUT__3545 (.I0(n1991), .I1(n2006), .I2(n2020), .I3(n2018), 
            .O(n2021)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__3545.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__3546 (.I0(n2013), .I1(n1989), .I2(n1983), .I3(n1992), 
            .O(n2022)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb04f */ ;
    defparam LUT__3546.LUTMASK = 16'hb04f;
    EFX_LUT4 LUT__3547 (.I0(n2006), .I1(n2011), .O(n2023)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3547.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3548 (.I0(n1997), .I1(n1994), .I2(n1996), .I3(n2016), 
            .O(n2024)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00fe */ ;
    defparam LUT__3548.LUTMASK = 16'h00fe;
    EFX_LUT4 LUT__3549 (.I0(n1981), .I1(n1988), .I2(n1979), .O(n2025)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__3549.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3550 (.I0(n2024), .I1(n2023), .I2(n2025), .O(n2026)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__3550.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3551 (.I0(n2019), .I1(n2021), .I2(n2022), .I3(n2026), 
            .O(n2027)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5b3f */ ;
    defparam LUT__3551.LUTMASK = 16'h5b3f;
    EFX_LUT4 LUT__3552 (.I0(n1981), .I1(n2008), .I2(n2013), .I3(n1988), 
            .O(n2028)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0afc */ ;
    defparam LUT__3552.LUTMASK = 16'h0afc;
    EFX_LUT4 LUT__3553 (.I0(n2024), .I1(n2028), .I2(n2023), .O(n2029)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbcbc */ ;
    defparam LUT__3553.LUTMASK = 16'hbcbc;
    EFX_LUT4 LUT__3554 (.I0(n2027), .I1(n2017), .I2(n2029), .O(n2030)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3554.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3555 (.I0(n1737_q), .I1(in_data[31]), .I2(in_data[8]), 
            .O(n2031)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__3555.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3556 (.I0(n2031), .I1(n2020), .I2(n2030), .O(n2032)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4141 */ ;
    defparam LUT__3556.LUTMASK = 16'h4141;
    EFX_LUT4 LUT__3557 (.I0(n2026), .I1(n1991), .O(n2033)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3557.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3558 (.I0(n2020), .I1(n2030), .I2(n2033), .O(n2034)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__3558.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3559 (.I0(n2026), .I1(n2018), .I2(n1991), .O(n2035)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__3559.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__3560 (.I0(n2026), .I1(n2018), .I2(n1991), .I3(n2020), 
            .O(n2036)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he77b */ ;
    defparam LUT__3560.LUTMASK = 16'he77b;
    EFX_LUT4 LUT__3561 (.I0(n2036), .I1(n2035), .I2(n2030), .O(n2037)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__3561.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3562 (.I0(n2019), .I1(n2026), .I2(n2022), .O(n2038)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3562.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3563 (.I0(n2019), .I1(n2026), .I2(n2021), .I3(n2029), 
            .O(n2039)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f8 */ ;
    defparam LUT__3563.LUTMASK = 16'h00f8;
    EFX_LUT4 LUT__3564 (.I0(n2006), .I1(n2025), .I2(n2024), .I3(n2011), 
            .O(n2040)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0afc */ ;
    defparam LUT__3564.LUTMASK = 16'h0afc;
    EFX_LUT4 LUT__3565 (.I0(n2028), .I1(n2006), .I2(n2024), .I3(n2011), 
            .O(n2041)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;
    defparam LUT__3565.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__3566 (.I0(n2023), .I1(n1998), .I2(n2025), .I3(n2016), 
            .O(n2042)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe03 */ ;
    defparam LUT__3566.LUTMASK = 16'hfe03;
    EFX_LUT4 LUT__3567 (.I0(n2040), .I1(n2041), .I2(n2027), .I3(n2042), 
            .O(n2043)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'haccc */ ;
    defparam LUT__3567.LUTMASK = 16'haccc;
    EFX_LUT4 LUT__3568 (.I0(n2043), .I1(n2039), .I2(n2038), .O(n2044)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4141 */ ;
    defparam LUT__3568.LUTMASK = 16'h4141;
    EFX_LUT4 LUT__3569 (.I0(n2041), .I1(n2042), .I2(n2040), .O(n2045)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__3569.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3570 (.I0(n2044), .I1(n2037), .I2(n2045), .O(n2046)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__3570.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__3571 (.I0(n2020), .I1(n2026), .I2(n1991), .I3(n2030), 
            .O(n2047)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4df3 */ ;
    defparam LUT__3571.LUTMASK = 16'h4df3;
    EFX_LUT4 LUT__3572 (.I0(n2047), .I1(n2018), .O(n2048)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3572.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3573 (.I0(n2032), .I1(n2034), .I2(n2046), .I3(n2048), 
            .O(n2049)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__3573.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__3574 (.I0(in_data[5]), .I1(in_data[4]), .I2(n1735_q), 
            .I3(in_data[31]), .O(n2050)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__3574.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__3575 (.I0(n2050), .I1(in_data[6]), .I2(in_data[31]), 
            .I3(in_data[7]), .O(n2051)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1fe0 */ ;
    defparam LUT__3575.LUTMASK = 16'h1fe0;
    EFX_LUT4 LUT__3576 (.I0(n2031), .I1(n2051), .O(n2052)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3576.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3577 (.I0(n2020), .I1(n2030), .I2(n2033), .I3(n2052), 
            .O(n2053)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2b00 */ ;
    defparam LUT__3577.LUTMASK = 16'h2b00;
    EFX_LUT4 LUT__3578 (.I0(n2032), .I1(n2053), .I2(n2052), .I3(n2033), 
            .O(n2054)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f45 */ ;
    defparam LUT__3578.LUTMASK = 16'h3f45;
    EFX_LUT4 LUT__3579 (.I0(n2032), .I1(n2037), .I2(n2044), .I3(n2045), 
            .O(n2055)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__3579.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__3580 (.I0(n2033), .I1(n2029), .I2(n2020), .O(n2056)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__3580.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__3581 (.I0(n2051), .I1(n2031), .I2(n2056), .O(n2057)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__3581.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__3582 (.I0(n2057), .I1(n2054), .I2(n2055), .O(n2058)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__3582.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__3583 (.I0(n2049), .I1(n2058), .O(n2059)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3583.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3584 (.I0(n2032), .I1(n2037), .O(n2060)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3584.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3585 (.I0(n2017), .I1(n2038), .I2(n2039), .O(n2061)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he3e3 */ ;
    defparam LUT__3585.LUTMASK = 16'he3e3;
    EFX_LUT4 LUT__3586 (.I0(n2045), .I1(n2060), .I2(n2061), .I3(n2044), 
            .O(n2062)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;
    defparam LUT__3586.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__3587 (.I0(n2030), .I1(n2020), .O(n2063)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3587.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3588 (.I0(n2051), .I1(n2063), .I2(n2031), .I3(n2055), 
            .O(n2064)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb82b */ ;
    defparam LUT__3588.LUTMASK = 16'hb82b;
    EFX_LUT4 LUT__3589 (.I0(n2050), .I1(in_data[6]), .O(n2065)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3589.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3590 (.I0(n2065), .I1(n2064), .I2(n2051), .O(n2066)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;
    defparam LUT__3590.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__3591 (.I0(n2059), .I1(n2062), .I2(n2066), .O(n2067)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__3591.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3592 (.I0(n2046), .I1(n2063), .I2(n2031), .O(n2068)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__3592.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__3593 (.I0(n2051), .I1(n2065), .I2(n2068), .O(n2069)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__3593.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__3594 (.I0(n2041), .I1(n2029), .I2(n2027), .I3(n2042), 
            .O(n2070)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha8cf */ ;
    defparam LUT__3594.LUTMASK = 16'ha8cf;
    EFX_LUT4 LUT__3595 (.I0(n2070), .I1(n2043), .I2(n2060), .I3(n2061), 
            .O(n2071)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;
    defparam LUT__3595.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__3596 (.I0(n2069), .I1(n2062), .I2(n2071), .O(n2072)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3596.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3597 (.I0(n2051), .I1(n2043), .I2(n2063), .O(n2073)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3a3a */ ;
    defparam LUT__3597.LUTMASK = 16'h3a3a;
    EFX_LUT4 LUT__3598 (.I0(n2046), .I1(n2073), .I2(n2031), .I3(n2063), 
            .O(n2074)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc2b */ ;
    defparam LUT__3598.LUTMASK = 16'hfc2b;
    EFX_LUT4 LUT__3599 (.I0(n2032), .I1(n2046), .I2(n2034), .O(n2075)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3599.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3600 (.I0(n2058), .I1(n2049), .I2(n2062), .I3(n2071), 
            .O(n2076)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f00 */ ;
    defparam LUT__3600.LUTMASK = 16'h8f00;
    EFX_LUT4 LUT__3601 (.I0(n2074), .I1(n2076), .I2(n2075), .O(n2077)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__3601.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__3602 (.I0(n2049), .I1(n2062), .I2(n2071), .O(n2078)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__3602.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3603 (.I0(n2072), .I1(n2067), .I2(n2077), .I3(n2078), 
            .O(n2079)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f1 */ ;
    defparam LUT__3603.LUTMASK = 16'h00f1;
    EFX_LUT4 LUT__3604 (.I0(n2079), .I1(n2065), .O(n2080)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3604.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3605 (.I0(n1735_q), .I1(in_data[4]), .I2(in_data[31]), 
            .I3(in_data[5]), .O(n2081)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1fe0 */ ;
    defparam LUT__3605.LUTMASK = 16'h1fe0;
    EFX_LUT4 LUT__3606 (.I0(n2055), .I1(n2031), .O(n2082)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3606.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3607 (.I0(n2076), .I1(n2051), .I2(n2082), .O(n2083)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__3607.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__3608 (.I0(n2065), .I1(n2081), .I2(n2083), .O(n2084)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__3608.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__3609 (.I0(n2082), .I1(n2051), .I2(n2076), .I3(n2065), 
            .O(n2085)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7eeb */ ;
    defparam LUT__3609.LUTMASK = 16'h7eeb;
    EFX_LUT4 LUT__3610 (.I0(n2081), .I1(n2065), .I2(n2085), .O(n2086)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__3610.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3611 (.I0(n2086), .I1(n2084), .I2(n2079), .O(n2087)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__3611.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__3612 (.I0(n2076), .I1(n2051), .O(n2088)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3612.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3613 (.I0(n2076), .I1(n2051), .I2(n2065), .O(n2089)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;
    defparam LUT__3613.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__3614 (.I0(n2088), .I1(n2089), .I2(n2082), .O(n2090)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;
    defparam LUT__3614.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__3615 (.I0(n2051), .I1(n2055), .I2(n2031), .I3(n2076), 
            .O(n2091)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf34d */ ;
    defparam LUT__3615.LUTMASK = 16'hf34d;
    EFX_LUT4 LUT__3616 (.I0(n2091), .I1(n2063), .O(n2092)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3616.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3617 (.I0(n2090), .I1(n2079), .I2(n2092), .O(n2093)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__3617.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3618 (.I0(n2062), .I1(n2071), .I2(n2059), .O(n2094)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__3618.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__3619 (.I0(n2069), .I1(n2066), .I2(n2076), .O(n2095)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__3619.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__3620 (.I0(n2078), .I1(n2094), .I2(n2095), .I3(n2077), 
            .O(n2096)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h50cf */ ;
    defparam LUT__3620.LUTMASK = 16'h50cf;
    EFX_LUT4 LUT__3621 (.I0(n2062), .I1(n2071), .I2(n2058), .I3(n2049), 
            .O(n2097)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcfb0 */ ;
    defparam LUT__3621.LUTMASK = 16'hcfb0;
    EFX_LUT4 LUT__3622 (.I0(n2097), .I1(n2094), .I2(n2077), .I3(n2095), 
            .O(n2098)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;
    defparam LUT__3622.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__3623 (.I0(n2093), .I1(n2087), .I2(n2096), .I3(n2098), 
            .O(n2099)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00f4 */ ;
    defparam LUT__3623.LUTMASK = 16'h00f4;
    EFX_LUT4 LUT__3624 (.I0(n2079), .I1(n2065), .I2(n2081), .O(n2100)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2b2b */ ;
    defparam LUT__3624.LUTMASK = 16'h2b2b;
    EFX_LUT4 LUT__3625 (.I0(n2080), .I1(n2099), .I2(n2100), .I3(n2088), 
            .O(n2101)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h43bc */ ;
    defparam LUT__3625.LUTMASK = 16'h43bc;
    EFX_LUT4 LUT__3626 (.I0(n2078), .I1(n2081), .O(n2102)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3626.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3627 (.I0(n2067), .I1(n2072), .O(n2103)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3627.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3628 (.I0(n2103), .I1(n2102), .I2(n2088), .I3(n2065), 
            .O(n2104)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7000 */ ;
    defparam LUT__3628.LUTMASK = 16'h7000;
    EFX_LUT4 LUT__3629 (.I0(n2065), .I1(n2081), .I2(n2088), .I3(n2079), 
            .O(n2105)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfa3f */ ;
    defparam LUT__3629.LUTMASK = 16'hfa3f;
    EFX_LUT4 LUT__3630 (.I0(n2088), .I1(n2079), .I2(n2089), .I3(n2082), 
            .O(n2106)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc23d */ ;
    defparam LUT__3630.LUTMASK = 16'hc23d;
    EFX_LUT4 LUT__3631 (.I0(n2104), .I1(n2105), .I2(n2106), .O(n2107)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3631.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3632 (.I0(n1735_q), .I1(in_data[31]), .I2(in_data[4]), 
            .O(n2108)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__3632.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__3633 (.I0(n2108), .I1(n2065), .I2(n2079), .I3(n2081), 
            .O(n2109)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd7fc */ ;
    defparam LUT__3633.LUTMASK = 16'hd7fc;
    EFX_LUT4 LUT__3634 (.I0(n2103), .I1(n2102), .O(n2110)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3634.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3635 (.I0(n2110), .I1(n2109), .I2(n2065), .I3(n2088), 
            .O(n2111)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5ccf */ ;
    defparam LUT__3635.LUTMASK = 16'h5ccf;
    EFX_LUT4 LUT__3636 (.I0(n2081), .I1(n2108), .O(n2112)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3636.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3637 (.I0(n2112), .I1(n2088), .I2(n2065), .I3(n2079), 
            .O(n2113)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0140 */ ;
    defparam LUT__3637.LUTMASK = 16'h0140;
    EFX_LUT4 LUT__3638 (.I0(n2113), .I1(n2106), .O(n2114)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3638.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3639 (.I0(n2111), .I1(n2107), .I2(n2114), .I3(n2099), 
            .O(n2115)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f77 */ ;
    defparam LUT__3639.LUTMASK = 16'h0f77;
    EFX_LUT4 LUT__3640 (.I0(n2096), .I1(n2098), .I2(n2093), .I3(n2087), 
            .O(n2116)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf32f */ ;
    defparam LUT__3640.LUTMASK = 16'hf32f;
    EFX_LUT4 LUT__3641 (.I0(n2093), .I1(n2096), .I2(n2087), .O(n2117)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3641.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3642 (.I0(n2116), .I1(n2098), .I2(n2117), .O(n2118)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3642.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3643 (.I0(n2096), .I1(n2087), .I2(n2098), .I3(n2093), 
            .O(n2119)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc43f */ ;
    defparam LUT__3643.LUTMASK = 16'hc43f;
    EFX_LUT4 LUT__3644 (.I0(n2118), .I1(n2115), .I2(n2119), .O(n2120)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__3644.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__3645 (.I0(n2101), .I1(n2120), .O(n2121)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3645.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3646 (.I0(n2104), .I1(n2105), .I2(n2099), .I3(n2106), 
            .O(n2122)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf40b */ ;
    defparam LUT__3646.LUTMASK = 16'hf40b;
    EFX_LUT4 LUT__3647 (.I0(n2108), .I1(n2099), .I2(n2081), .I3(n2080), 
            .O(n2123)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc17 */ ;
    defparam LUT__3647.LUTMASK = 16'hfc17;
    EFX_LUT4 LUT__3648 (.I0(n2122), .I1(n2119), .I2(n2101), .I3(n2123), 
            .O(n2124)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2003 */ ;
    defparam LUT__3648.LUTMASK = 16'h2003;
    EFX_LUT4 LUT__3649 (.I0(n2099), .I1(n2081), .O(n2125)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3649.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3650 (.I0(n2098), .I1(n2093), .I2(n2096), .O(n2126)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__3650.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3651 (.I0(n2118), .I1(n2115), .I2(n2126), .O(n2127)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__3651.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__3652 (.I0(n2099), .I1(n2081), .I2(n2080), .O(n2128)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3652.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3653 (.I0(n2125), .I1(n2108), .I2(n2127), .I3(n2128), 
            .O(n2129)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;
    defparam LUT__3653.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3654 (.I0(in_data[0]), .I1(in_data[1]), .O(n2130)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3654.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3655 (.I0(n2130), .I1(in_data[2]), .I2(in_data[31]), 
            .I3(in_data[3]), .O(n2131)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h2fd0 */ ;
    defparam LUT__3655.LUTMASK = 16'h2fd0;
    EFX_LUT4 LUT__3656 (.I0(n2131), .I1(n2127), .I2(n2108), .I3(n2125), 
            .O(n2132)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf34d */ ;
    defparam LUT__3656.LUTMASK = 16'hf34d;
    EFX_LUT4 LUT__3657 (.I0(n2132), .I1(n2129), .I2(n2121), .I3(n2124), 
            .O(n2133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbb0 */ ;
    defparam LUT__3657.LUTMASK = 16'hbbb0;
    EFX_LUT4 LUT__3658 (.I0(n2113), .I1(n2093), .I2(n2096), .O(n2134)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3658.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3659 (.I0(n2111), .I1(n2116), .I2(n2134), .O(n2135)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__3659.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__3660 (.I0(n2122), .I1(n2135), .I2(n2118), .O(n2136)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__3660.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__3661 (.I0(n2127), .I1(n2108), .O(n2137)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3661.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3662 (.I0(n2137), .I1(n2131), .O(n2138)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3662.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3663 (.I0(in_data[0]), .I1(in_data[31]), .I2(in_data[2]), 
            .I3(in_data[1]), .O(n2139)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ff8 */ ;
    defparam LUT__3663.LUTMASK = 16'h7ff8;
    EFX_LUT4 LUT__3664 (.I0(n2131), .I1(n2108), .I2(n2127), .I3(n2136), 
            .O(n2140)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00be */ ;
    defparam LUT__3664.LUTMASK = 16'h00be;
    EFX_LUT4 LUT__3665 (.I0(n2108), .I1(n2127), .I2(n2125), .O(n2141)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;
    defparam LUT__3665.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3666 (.I0(n2124), .I1(n2121), .I2(n2140), .I3(n2141), 
            .O(n2142)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__3666.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__3667 (.I0(n2138), .I1(n2101), .I2(n2139), .I3(n2142), 
            .O(n2143)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__3667.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__3668 (.I0(n2141), .I1(n2140), .O(n2144)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3668.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3669 (.I0(n2144), .I1(n2129), .O(n2145)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3669.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3670 (.I0(n2132), .I1(n2129), .O(n2146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3670.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3671 (.I0(n2123), .I1(n2101), .O(n2147)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3671.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3672 (.I0(n2126), .I1(n2118), .I2(n2147), .I3(n2122), 
            .O(n2148)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h05fc */ ;
    defparam LUT__3672.LUTMASK = 16'h05fc;
    EFX_LUT4 LUT__3673 (.I0(n2123), .I1(n2127), .I2(n2101), .O(n2149)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3673.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3674 (.I0(n2136), .I1(n2148), .I2(n2146), .I3(n2149), 
            .O(n2150)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h45fc */ ;
    defparam LUT__3674.LUTMASK = 16'h45fc;
    EFX_LUT4 LUT__3675 (.I0(n2143), .I1(n2145), .I2(n2150), .I3(in_data[31]), 
            .O(n2151)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__3675.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__3676 (.I0(n2133), .I1(n2136), .I2(n2127), .I3(n2151), 
            .O(n2152)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heff1 */ ;
    defparam LUT__3676.LUTMASK = 16'heff1;
    EFX_LUT4 LUT__3677 (.I0(n2099), .I1(n2076), .I2(n2079), .I3(n2055), 
            .O(n2153)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__3677.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3678 (.I0(n2079), .I1(n2055), .I2(n2076), .I3(n2099), 
            .O(n2154)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__3678.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__3679 (.I0(n2154), .I1(n2153), .I2(n2033), .O(n2155)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__3679.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__3680 (.I0(n2152), .I1(n2155), .O(n2156)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3680.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3681 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .O(n2157)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3681.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3682 (.I0(n2157), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), 
            .I2(n1385), .O(n2158)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3682.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3683 (.I0(n2156), .I1(n1734), .I2(n2158), .O(n2159)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0b0 */ ;
    defparam LUT__3683.LUTMASK = 16'hb0b0;
    EFX_LUT4 LUT__3684 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(n1386), .I2(n2156), .O(n2160)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3684.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3685 (.I0(n2160), .I1(in_data[0]), .I2(n2159), .I3(\sin_cos/o_deg [0]), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f88 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3685.LUTMASK = 16'h8f88;
    EFX_LUT4 LUT__3686 (.I0(n1386), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n2161)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3686.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3687 (.I0(n1388), .I1(n2161), .O(n2162)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3687.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3688 (.I0(\sin_cos/o_deg [8]), .I1(\sin_cos/o_deg [9]), 
            .I2(\sin_cos/o_deg [10]), .I3(\sin_cos/o_deg [11]), .O(n2163)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3688.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3689 (.I0(\sin_cos/o_deg [12]), .I1(\sin_cos/o_deg [13]), 
            .I2(\sin_cos/o_deg [14]), .I3(\sin_cos/o_deg [15]), .O(n2164)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3689.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3690 (.I0(\sin_cos/o_deg [0]), .I1(\sin_cos/o_deg [1]), 
            .I2(\sin_cos/o_deg [2]), .I3(\sin_cos/o_deg [3]), .O(n2165)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3690.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3691 (.I0(\sin_cos/o_deg [4]), .I1(\sin_cos/o_deg [5]), 
            .I2(\sin_cos/o_deg [6]), .I3(\sin_cos/o_deg [7]), .O(n2166)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3691.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3692 (.I0(n2163), .I1(n2164), .I2(n2165), .I3(n2166), 
            .O(n2167)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3692.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3693 (.I0(\sin_cos/o_deg [24]), .I1(\sin_cos/o_deg [25]), 
            .I2(\sin_cos/o_deg [26]), .I3(\sin_cos/o_deg [27]), .O(n2168)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3693.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3694 (.I0(\sin_cos/o_deg [28]), .I1(\sin_cos/o_deg [29]), 
            .I2(\sin_cos/o_deg [30]), .I3(n2168), .O(n2169)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3694.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3695 (.I0(\sin_cos/o_deg [16]), .I1(\sin_cos/o_deg [17]), 
            .I2(\sin_cos/o_deg [18]), .I3(\sin_cos/o_deg [19]), .O(n2170)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3695.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3696 (.I0(\sin_cos/o_deg [20]), .I1(\sin_cos/o_deg [21]), 
            .I2(\sin_cos/o_deg [22]), .I3(\sin_cos/o_deg [23]), .O(n2171)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__3696.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__3697 (.I0(n2167), .I1(n2169), .I2(n2170), .I3(n2171), 
            .O(n2172)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3697.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3698 (.I0(n2172), .I1(\sin_cos/o_deg [31]), .O(n2173)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__3698.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__3699 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [0]), .I2(n2173), 
            .I3(n1388), .O(n2174)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3699.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3700 (.I0(\sin_cos/o_y [0]), .I1(n2162), .I2(n2174), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3700.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3701 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [0]), .I2(n2173), 
            .I3(n1388), .O(n2175)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__3701.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__3702 (.I0(n2162), .I1(\sin_cos/o_x [0]), .I2(n2175), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3702.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__3703 (.I0(n1385), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1107 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3703.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__3704 (.I0(n2133), .I1(n2136), .I2(n2146), .I3(n2149), 
            .O(n2176)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h05fc */ ;
    defparam LUT__3704.LUTMASK = 16'h05fc;
    EFX_LUT4 LUT__3705 (.I0(n2130), .I1(in_data[31]), .I2(in_data[2]), 
            .O(n2177)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__3705.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__3706 (.I0(n2136), .I1(n2177), .I2(n2131), .I3(n2137), 
            .O(n2178)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h05fc */ ;
    defparam LUT__3706.LUTMASK = 16'h05fc;
    EFX_LUT4 LUT__3707 (.I0(n2131), .I1(n2177), .I2(n2140), .O(n2179)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3707.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3708 (.I0(n2142), .I1(n2144), .I2(n2129), .O(n2180)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__3708.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3709 (.I0(n2144), .I1(n2129), .O(n2181)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__3709.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__3710 (.I0(n2179), .I1(n2180), .I2(n2178), .I3(n2181), 
            .O(n2182)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00ef */ ;
    defparam LUT__3710.LUTMASK = 16'h00ef;
    EFX_LUT4 LUT__3711 (.I0(in_data[0]), .I1(in_data[2]), .I2(in_data[1]), 
            .I3(in_data[31]), .O(n2183)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hed3f */ ;
    defparam LUT__3711.LUTMASK = 16'hed3f;
    EFX_LUT4 LUT__3712 (.I0(n2183), .I1(n2131), .I2(n2137), .I3(n2133), 
            .O(n2184)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3002 */ ;
    defparam LUT__3712.LUTMASK = 16'h3002;
    EFX_LUT4 LUT__3713 (.I0(n2133), .I1(n2183), .I2(n2137), .I3(n2140), 
            .O(n2185)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd000 */ ;
    defparam LUT__3713.LUTMASK = 16'hd000;
    EFX_LUT4 LUT__3714 (.I0(n2146), .I1(n2149), .I2(n2136), .I3(n2148), 
            .O(n2186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b04 */ ;
    defparam LUT__3714.LUTMASK = 16'h0b04;
    EFX_LUT4 LUT__3715 (.I0(n2185), .I1(n2184), .I2(n2180), .I3(n2186), 
            .O(n2187)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__3715.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__3716 (.I0(n2150), .I1(n2143), .I2(n2145), .O(n2188)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3716.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3717 (.I0(n2182), .I1(n2176), .I2(n2187), .I3(n2188), 
            .O(n2189)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__3717.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__3718 (.I0(n2156), .I1(n2189), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n283 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(458)
    defparam LUT__3718.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__3719 (.I0(n2160), .I1(i_call), .O(ceg_net37)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3719.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3720 (.I0(n2182), .I1(n2176), .I2(n2186), .O(n2190)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__3720.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__3721 (.I0(n2189), .I1(in_data[31]), .I2(n2190), .I3(n2156), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n2307 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb400 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(458)
    defparam LUT__3721.LUTMASK = 16'hb400;
    EFX_LUT4 LUT__3722 (.I0(in_data[31]), .I1(n2189), .I2(n2190), .O(n2191)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;
    defparam LUT__3722.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__3723 (.I0(n2191), .I1(n2156), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n281 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(458)
    defparam LUT__3723.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3724 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .O(n2192)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__3724.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__3725 (.I0(n1385), .I1(n2157), .O(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_65/n11 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__3725.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__3726 (.I0(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_65/n11 ), 
            .I1(n2192), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), 
            .I3(o_done), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/Select_100/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfa0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3726.LUTMASK = 16'hbfa0;
    EFX_LUT4 LUT__3727 (.I0(\sin_cos/o_y [0]), .I1(\sin_cos/o_x [0]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3727.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__3728 (.I0(n1385), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I2(n2192), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__3728.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3729 (.I0(n2157), .I1(n1546), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__3729.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3730 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I1(n2157), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__3730.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__3731 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0a0c */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__3731.LUTMASK = 16'h0a0c;
    EFX_LUT4 LUT__3732 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe1f */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__3732.LUTMASK = 16'hfe1f;
    EFX_LUT4 LUT__3733 (.I0(\sin_cos/o_y [1]), .I1(\sin_cos/o_x [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [33])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3733.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3734 (.I0(\sin_cos/o_y [2]), .I1(\sin_cos/o_x [2]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [34])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3734.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3735 (.I0(\sin_cos/o_y [3]), .I1(\sin_cos/o_x [3]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [35])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3735.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3736 (.I0(\sin_cos/o_y [4]), .I1(\sin_cos/o_x [4]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [36])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3736.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3737 (.I0(\sin_cos/o_y [5]), .I1(\sin_cos/o_x [5]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [37])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3737.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3738 (.I0(\sin_cos/o_y [6]), .I1(\sin_cos/o_x [6]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [38])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3738.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3739 (.I0(\sin_cos/o_y [7]), .I1(\sin_cos/o_x [7]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [39])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3739.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3740 (.I0(\sin_cos/o_y [8]), .I1(\sin_cos/o_x [8]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [40])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3740.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3741 (.I0(\sin_cos/o_y [9]), .I1(\sin_cos/o_x [9]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [41])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3741.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3742 (.I0(\sin_cos/o_y [10]), .I1(\sin_cos/o_x [10]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [42])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3742.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3743 (.I0(\sin_cos/o_y [11]), .I1(\sin_cos/o_x [11]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [43])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3743.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3744 (.I0(\sin_cos/o_y [12]), .I1(\sin_cos/o_x [12]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [44])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3744.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3745 (.I0(\sin_cos/o_y [13]), .I1(\sin_cos/o_x [13]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [45])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3745.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3746 (.I0(\sin_cos/o_y [14]), .I1(\sin_cos/o_x [14]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [46])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3746.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3747 (.I0(\sin_cos/o_y [15]), .I1(\sin_cos/o_x [15]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [47])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3747.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3748 (.I0(\sin_cos/o_y [16]), .I1(\sin_cos/o_x [16]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [48])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3748.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3749 (.I0(\sin_cos/o_y [17]), .I1(\sin_cos/o_x [17]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [49])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3749.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3750 (.I0(\sin_cos/o_y [18]), .I1(\sin_cos/o_x [18]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [50])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3750.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3751 (.I0(\sin_cos/o_y [19]), .I1(\sin_cos/o_x [19]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [51])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3751.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3752 (.I0(\sin_cos/o_y [20]), .I1(\sin_cos/o_x [20]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [52])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3752.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3753 (.I0(\sin_cos/o_y [21]), .I1(\sin_cos/o_x [21]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [53])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3753.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3754 (.I0(\sin_cos/o_y [22]), .I1(\sin_cos/o_x [22]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [54])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3754.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3755 (.I0(\sin_cos/o_y [23]), .I1(\sin_cos/o_x [23]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [55])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3755.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3756 (.I0(\sin_cos/o_y [24]), .I1(\sin_cos/o_x [24]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [56])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3756.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3757 (.I0(\sin_cos/o_y [25]), .I1(\sin_cos/o_x [25]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [57])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3757.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3758 (.I0(\sin_cos/o_y [26]), .I1(\sin_cos/o_x [26]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [58])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3758.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3759 (.I0(\sin_cos/o_y [27]), .I1(\sin_cos/o_x [27]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [59])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3759.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3760 (.I0(\sin_cos/o_y [28]), .I1(\sin_cos/o_x [28]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [60])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3760.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3761 (.I0(\sin_cos/o_y [29]), .I1(\sin_cos/o_x [29]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [61])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3761.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3762 (.I0(\sin_cos/o_y [30]), .I1(\sin_cos/o_x [30]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [62])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3762.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3763 (.I0(\sin_cos/o_y [31]), .I1(\sin_cos/o_x [31]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [63])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__3763.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3764 (.I0(n2189), .I1(in_data[1]), .O(n2193)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__3764.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__3765 (.I0(n2193), .I1(n2160), .I2(n2159), .I3(\sin_cos/o_deg [1]), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f88 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3765.LUTMASK = 16'h8f88;
    EFX_LUT4 LUT__3766 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(n1386), .O(n2194)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__3766.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__3767 (.I0(in_data[2]), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [1]), 
            .I2(n2189), .I3(n2194), .O(n2195)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__3767.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__3768 (.I0(n2156), .I1(n2191), .I2(n2195), .I3(n2194), 
            .O(n2196)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h287f */ ;
    defparam LUT__3768.LUTMASK = 16'h287f;
    EFX_LUT4 LUT__3769 (.I0(n2156), .I1(n2158), .I2(\sin_cos/o_deg [2]), 
            .I3(n2196), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h30fa */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3769.LUTMASK = 16'h30fa;
    EFX_LUT4 LUT__3771 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [2]), 
            .I1(\sin_cos/o_deg [3]), .I2(n2156), .O(n2198)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3771.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__2725 (.I0(\sin_cos/o_y [30]), .I1(\sin_cos/o_y [29]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .O(n1382)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__2725.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3772 (.I0(n2127), .I1(n2101), .I2(n2136), .O(n2199)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3772.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3773 (.I0(n2143), .I1(n2145), .I2(n2199), .I3(n2154), 
            .O(n2200)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb000 */ ;
    defparam LUT__3773.LUTMASK = 16'hb000;
    EFX_LUT4 LUT__3774 (.I0(n2200), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I2(n1386), .O(n2201)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__3774.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__3775 (.I0(n2156), .I1(n2191), .I2(n2201), .O(n2202)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3775.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3776 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [2]), .I2(n2189), 
            .O(n2203)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3776.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3777 (.I0(n2191), .I1(n2203), .I2(n2156), .I3(n2201), 
            .O(n2204)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3777.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3778 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(n1386), .I2(n2200), .O(n2205)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__3778.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__3779 (.I0(n2205), .I1(in_data[3]), .I2(n2158), .I3(\sin_cos/o_deg [3]), 
            .O(n2206)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__3779.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__3780 (.I0(n2202), .I1(n2198), .I2(n2204), .I3(n2206), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3780.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3781 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [3]), 
            .I1(\sin_cos/o_deg [4]), .I2(n2156), .O(n2207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3781.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3782 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [3]), .I2(n2189), 
            .O(n2208)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3782.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3783 (.I0(n2191), .I1(n2208), .I2(n2156), .I3(n2201), 
            .O(n2209)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3783.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3784 (.I0(n2205), .I1(in_data[4]), .I2(n2158), .I3(\sin_cos/o_deg [4]), 
            .O(n2210)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__3784.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__3785 (.I0(n2202), .I1(n2207), .I2(n2209), .I3(n2210), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3785.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3786 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [4]), 
            .I1(\sin_cos/o_deg [5]), .I2(n2156), .O(n2211)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3786.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3787 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [4]), .I2(n2189), 
            .O(n2212)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3787.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3788 (.I0(n2191), .I1(n2212), .I2(n2156), .I3(n2201), 
            .O(n2213)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3788.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3789 (.I0(n2205), .I1(in_data[5]), .I2(n2158), .I3(\sin_cos/o_deg [5]), 
            .O(n2214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7077 */ ;
    defparam LUT__3789.LUTMASK = 16'h7077;
    EFX_LUT4 LUT__3790 (.I0(n2202), .I1(n2211), .I2(n2213), .I3(n2214), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3790.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3791 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [5]), 
            .I1(\sin_cos/o_deg [6]), .I2(n2156), .O(n2215)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3791.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3792 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [4]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [5]), .I2(n2189), 
            .O(n2216)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3792.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3793 (.I0(n2191), .I1(n2216), .I2(n2156), .I3(n2201), 
            .O(n2217)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3793.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3794 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [6]), .I2(n2173), 
            .I3(n1388), .O(n2218)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3794.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3795 (.I0(n1387), .I1(\sin_cos/o_deg [6]), .I2(n2218), 
            .O(n2219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3795.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3796 (.I0(n2205), .I1(in_data[6]), .I2(n2219), .O(n2220)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3796.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3797 (.I0(n2202), .I1(n2215), .I2(n2217), .I3(n2220), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3797.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3798 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [6]), 
            .I1(\sin_cos/o_deg [7]), .I2(n2156), .O(n2221)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3798.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3799 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [5]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [6]), .I2(n2189), 
            .O(n2222)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3799.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3800 (.I0(n2191), .I1(n2222), .I2(n2156), .I3(n2201), 
            .O(n2223)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3800.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3801 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [7]), .I2(n2173), 
            .I3(n1388), .O(n2224)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3801.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3802 (.I0(n1387), .I1(\sin_cos/o_deg [7]), .I2(n2224), 
            .O(n2225)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3802.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3803 (.I0(n2205), .I1(in_data[7]), .I2(n2225), .O(n2226)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3803.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3804 (.I0(n2202), .I1(n2221), .I2(n2223), .I3(n2226), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3804.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3805 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [7]), 
            .I1(\sin_cos/o_deg [8]), .I2(n2156), .O(n2227)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3805.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3806 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [7]), .I2(n2189), 
            .O(n2228)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3806.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3807 (.I0(n2191), .I1(n2228), .I2(n2156), .I3(n2201), 
            .O(n2229)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3807.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3808 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [8]), .I2(n2173), 
            .I3(n1388), .O(n2230)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3808.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3809 (.I0(n1387), .I1(\sin_cos/o_deg [8]), .I2(n2230), 
            .O(n2231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3809.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3810 (.I0(n2205), .I1(in_data[7]), .I2(n2231), .O(n2232)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3810.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3811 (.I0(n2202), .I1(n2227), .I2(n2229), .I3(n2232), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3811.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3812 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [8]), 
            .I1(\sin_cos/o_deg [9]), .I2(n2156), .O(n2233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3812.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3813 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [8]), .I2(n2189), 
            .O(n2234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3813.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3814 (.I0(n2191), .I1(n2234), .I2(n2156), .I3(n2201), 
            .O(n2235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3814.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3815 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [9]), .I2(n2173), 
            .I3(n1388), .O(n2236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3815.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3816 (.I0(n1387), .I1(\sin_cos/o_deg [9]), .I2(n2236), 
            .O(n2237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3816.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3817 (.I0(n2205), .I1(in_data[9]), .I2(n2237), .O(n2238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3817.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3818 (.I0(n2202), .I1(n2233), .I2(n2235), .I3(n2238), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3818.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3819 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [9]), 
            .I1(\sin_cos/o_deg [10]), .I2(n2156), .O(n2239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3819.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3820 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [9]), .I2(n2189), 
            .O(n2240)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3820.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3821 (.I0(n2191), .I1(n2240), .I2(n2156), .I3(n2201), 
            .O(n2241)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3821.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3822 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [10]), .I2(n2173), 
            .I3(n1388), .O(n2242)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3822.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3823 (.I0(n1387), .I1(\sin_cos/o_deg [10]), .I2(n2242), 
            .O(n2243)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3823.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3824 (.I0(n2205), .I1(in_data[10]), .I2(n2243), .O(n2244)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3824.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3825 (.I0(n2202), .I1(n2239), .I2(n2241), .I3(n2244), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3825.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3826 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [10]), 
            .I1(\sin_cos/o_deg [11]), .I2(n2156), .O(n2245)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3826.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3827 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [10]), .I2(n2189), 
            .O(n2246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3827.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3828 (.I0(n2191), .I1(n2246), .I2(n2156), .I3(n2201), 
            .O(n2247)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3828.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3829 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [11]), .I2(n2173), 
            .I3(n1388), .O(n2248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3829.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3830 (.I0(n1387), .I1(\sin_cos/o_deg [11]), .I2(n2248), 
            .O(n2249)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3830.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3831 (.I0(n2205), .I1(in_data[11]), .I2(n2249), .O(n2250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3831.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3832 (.I0(n2202), .I1(n2245), .I2(n2247), .I3(n2250), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3832.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3833 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [11]), 
            .I1(\sin_cos/o_deg [12]), .I2(n2156), .O(n2251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3833.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3834 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [11]), .I2(n2189), 
            .O(n2252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3834.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3835 (.I0(n2191), .I1(n2252), .I2(n2156), .I3(n2201), 
            .O(n2253)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3835.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3836 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [12]), .I2(n2173), 
            .I3(n1388), .O(n2254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3836.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3837 (.I0(n1387), .I1(\sin_cos/o_deg [12]), .I2(n2254), 
            .O(n2255)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3837.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3838 (.I0(n2205), .I1(in_data[12]), .I2(n2255), .O(n2256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3838.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3839 (.I0(n2202), .I1(n2251), .I2(n2253), .I3(n2256), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3839.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3840 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [12]), 
            .I1(\sin_cos/o_deg [13]), .I2(n2156), .O(n2257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3840.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3841 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [12]), .I2(n2189), 
            .O(n2258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3841.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3842 (.I0(n2191), .I1(n2258), .I2(n2156), .I3(n2201), 
            .O(n2259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3842.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3843 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [13]), .I2(n2173), 
            .I3(n1388), .O(n2260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3843.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3844 (.I0(n1387), .I1(\sin_cos/o_deg [13]), .I2(n2260), 
            .O(n2261)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3844.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3845 (.I0(n2205), .I1(in_data[13]), .I2(n2261), .O(n2262)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3845.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3846 (.I0(n2202), .I1(n2257), .I2(n2259), .I3(n2262), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3846.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3847 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [13]), 
            .I1(\sin_cos/o_deg [14]), .I2(n2156), .O(n2263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3847.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3848 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [13]), .I2(n2189), 
            .O(n2264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3848.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3849 (.I0(n2191), .I1(n2264), .I2(n2156), .I3(n2201), 
            .O(n2265)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3849.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3850 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [14]), .I2(n2173), 
            .I3(n1388), .O(n2266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3850.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3851 (.I0(n1387), .I1(\sin_cos/o_deg [14]), .I2(n2266), 
            .O(n2267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3851.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3852 (.I0(n2205), .I1(in_data[14]), .I2(n2267), .O(n2268)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3852.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3853 (.I0(n2202), .I1(n2263), .I2(n2265), .I3(n2268), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3853.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3854 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [14]), 
            .I1(\sin_cos/o_deg [15]), .I2(n2156), .O(n2269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3854.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3855 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [14]), .I2(n2189), 
            .O(n2270)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3855.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3856 (.I0(n2191), .I1(n2270), .I2(n2156), .I3(n2201), 
            .O(n2271)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3856.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3857 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [15]), .I2(n2173), 
            .I3(n1388), .O(n2272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3857.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3858 (.I0(n1387), .I1(\sin_cos/o_deg [15]), .I2(n2272), 
            .O(n2273)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__3858.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__3859 (.I0(n2205), .I1(in_data[15]), .I2(n2273), .O(n2274)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__3859.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__3860 (.I0(n2202), .I1(n2269), .I2(n2271), .I3(n2274), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3860.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3861 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [15]), 
            .I1(\sin_cos/o_deg [16]), .I2(n2156), .O(n2275)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3861.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3862 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [15]), .I2(n2189), 
            .O(n2276)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3862.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3863 (.I0(n2191), .I1(n2276), .I2(n2156), .I3(n2201), 
            .O(n2277)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3863.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3864 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [16]), .I2(n2173), 
            .I3(n1388), .O(n2278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3864.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3865 (.I0(n2161), .I1(\sin_cos/o_deg [0]), .I2(n1387), 
            .I3(\sin_cos/o_deg [16]), .O(n2279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3865.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3866 (.I0(n2205), .I1(in_data[16]), .I2(n2278), .I3(n2279), 
            .O(n2280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3866.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3867 (.I0(n2202), .I1(n2275), .I2(n2277), .I3(n2280), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3867.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3868 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [16]), 
            .I1(\sin_cos/o_deg [17]), .I2(n2156), .O(n2281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3868.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3869 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [16]), .I2(n2189), 
            .O(n2282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3869.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3870 (.I0(n2191), .I1(n2282), .I2(n2156), .I3(n2201), 
            .O(n2283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3870.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3871 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [17]), .I2(n2173), 
            .I3(n1388), .O(n2284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3871.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3872 (.I0(n2161), .I1(\sin_cos/o_deg [1]), .I2(n1387), 
            .I3(\sin_cos/o_deg [17]), .O(n2285)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3872.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3873 (.I0(n2205), .I1(in_data[17]), .I2(n2284), .I3(n2285), 
            .O(n2286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3873.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3874 (.I0(n2202), .I1(n2281), .I2(n2283), .I3(n2286), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3874.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3875 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [17]), 
            .I1(\sin_cos/o_deg [18]), .I2(n2156), .O(n2287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3875.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3876 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [17]), .I2(n2189), 
            .O(n2288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3876.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3877 (.I0(n2191), .I1(n2288), .I2(n2156), .I3(n2201), 
            .O(n2289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3877.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3878 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [18]), .I2(n2173), 
            .I3(n1388), .O(n2290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3878.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3879 (.I0(n2161), .I1(\sin_cos/o_deg [2]), .I2(n1387), 
            .I3(\sin_cos/o_deg [18]), .O(n2291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3879.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3880 (.I0(n2205), .I1(in_data[18]), .I2(n2290), .I3(n2291), 
            .O(n2292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3880.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3881 (.I0(n2202), .I1(n2287), .I2(n2289), .I3(n2292), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3881.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3882 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [18]), 
            .I1(\sin_cos/o_deg [19]), .I2(n2156), .O(n2293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3882.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3883 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [18]), .I2(n2189), 
            .O(n2294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3883.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3884 (.I0(n2191), .I1(n2294), .I2(n2156), .I3(n2201), 
            .O(n2295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3884.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3885 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [19]), .I2(n2173), 
            .I3(n1388), .O(n2296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3885.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3886 (.I0(n2161), .I1(\sin_cos/o_deg [3]), .I2(n1387), 
            .I3(\sin_cos/o_deg [19]), .O(n2297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3886.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3887 (.I0(n2205), .I1(in_data[19]), .I2(n2296), .I3(n2297), 
            .O(n2298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3887.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3888 (.I0(n2202), .I1(n2293), .I2(n2295), .I3(n2298), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3888.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3889 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [19]), 
            .I1(\sin_cos/o_deg [20]), .I2(n2156), .O(n2299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3889.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3890 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [19]), .I2(n2189), 
            .O(n2300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3890.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3891 (.I0(n2191), .I1(n2300), .I2(n2156), .I3(n2201), 
            .O(n2301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3891.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3892 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [20]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [20]), .I2(n2173), 
            .I3(n1388), .O(n2302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3892.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3893 (.I0(n2161), .I1(\sin_cos/o_deg [4]), .I2(n1387), 
            .I3(\sin_cos/o_deg [20]), .O(n2303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3893.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3894 (.I0(n2205), .I1(in_data[20]), .I2(n2302), .I3(n2303), 
            .O(n2304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3894.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3895 (.I0(n2202), .I1(n2299), .I2(n2301), .I3(n2304), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3895.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3896 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [20]), 
            .I1(\sin_cos/o_deg [21]), .I2(n2156), .O(n2305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3896.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3897 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [20]), .I2(n2189), 
            .O(n2306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3897.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3898 (.I0(n2191), .I1(n2306), .I2(n2156), .I3(n2201), 
            .O(n2307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3898.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3899 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [21]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [21]), .I2(n2173), 
            .I3(n1388), .O(n2308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3899.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3900 (.I0(n2161), .I1(\sin_cos/o_deg [5]), .I2(n1387), 
            .I3(\sin_cos/o_deg [21]), .O(n2309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3900.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3901 (.I0(n2205), .I1(in_data[21]), .I2(n2308), .I3(n2309), 
            .O(n2310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3901.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3902 (.I0(n2202), .I1(n2305), .I2(n2307), .I3(n2310), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3902.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3903 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [21]), 
            .I1(\sin_cos/o_deg [22]), .I2(n2156), .O(n2311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3903.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3904 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [20]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [21]), .I2(n2189), 
            .O(n2312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3904.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3905 (.I0(n2191), .I1(n2312), .I2(n2156), .I3(n2201), 
            .O(n2313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3905.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3906 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [22]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [22]), .I2(n2173), 
            .I3(n1388), .O(n2314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3906.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3907 (.I0(n2161), .I1(\sin_cos/o_deg [6]), .I2(n1387), 
            .I3(\sin_cos/o_deg [22]), .O(n2315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3907.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3908 (.I0(n2205), .I1(in_data[22]), .I2(n2314), .I3(n2315), 
            .O(n2316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3908.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3909 (.I0(n2202), .I1(n2311), .I2(n2313), .I3(n2316), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3909.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3910 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [22]), 
            .I1(\sin_cos/o_deg [23]), .I2(n2156), .O(n2317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3910.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3911 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [21]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [22]), .I2(n2189), 
            .O(n2318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3911.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3912 (.I0(n2191), .I1(n2318), .I2(n2156), .I3(n2201), 
            .O(n2319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3912.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3913 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [23]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [23]), .I2(n2173), 
            .I3(n1388), .O(n2320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3913.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3914 (.I0(n2161), .I1(\sin_cos/o_deg [7]), .I2(n1387), 
            .I3(\sin_cos/o_deg [23]), .O(n2321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3914.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3915 (.I0(n2205), .I1(in_data[23]), .I2(n2320), .I3(n2321), 
            .O(n2322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3915.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3916 (.I0(n2202), .I1(n2317), .I2(n2319), .I3(n2322), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3916.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3917 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [23]), 
            .I1(\sin_cos/o_deg [24]), .I2(n2156), .O(n2323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3917.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3918 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [22]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [23]), .I2(n2189), 
            .O(n2324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3918.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3919 (.I0(n2191), .I1(n2324), .I2(n2156), .I3(n2201), 
            .O(n2325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3919.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3920 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [24]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [24]), .I2(n2173), 
            .I3(n1388), .O(n2326)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3920.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3921 (.I0(n2161), .I1(\sin_cos/o_deg [8]), .I2(n1387), 
            .I3(\sin_cos/o_deg [24]), .O(n2327)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3921.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3922 (.I0(n2205), .I1(in_data[24]), .I2(n2326), .I3(n2327), 
            .O(n2328)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3922.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3923 (.I0(n2202), .I1(n2323), .I2(n2325), .I3(n2328), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3923.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3924 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [24]), 
            .I1(\sin_cos/o_deg [25]), .I2(n2156), .O(n2329)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3924.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3925 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [23]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [24]), .I2(n2189), 
            .O(n2330)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3925.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3926 (.I0(n2191), .I1(n2330), .I2(n2156), .I3(n2201), 
            .O(n2331)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3926.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3927 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [25]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [25]), .I2(n2173), 
            .I3(n1388), .O(n2332)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3927.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3928 (.I0(n2161), .I1(\sin_cos/o_deg [9]), .I2(n1387), 
            .I3(\sin_cos/o_deg [25]), .O(n2333)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3928.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3929 (.I0(n2205), .I1(in_data[25]), .I2(n2332), .I3(n2333), 
            .O(n2334)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3929.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3930 (.I0(n2202), .I1(n2329), .I2(n2331), .I3(n2334), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3930.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3931 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [25]), 
            .I1(\sin_cos/o_deg [26]), .I2(n2156), .O(n2335)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3931.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3932 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [24]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [25]), .I2(n2189), 
            .O(n2336)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3932.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3933 (.I0(n2191), .I1(n2336), .I2(n2156), .I3(n2201), 
            .O(n2337)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3933.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3934 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [26]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [26]), .I2(n2173), 
            .I3(n1388), .O(n2338)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3934.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3935 (.I0(n2161), .I1(\sin_cos/o_deg [10]), .I2(n1387), 
            .I3(\sin_cos/o_deg [26]), .O(n2339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3935.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3936 (.I0(n2205), .I1(in_data[26]), .I2(n2338), .I3(n2339), 
            .O(n2340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3936.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3937 (.I0(n2202), .I1(n2335), .I2(n2337), .I3(n2340), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3937.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3938 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [26]), 
            .I1(\sin_cos/o_deg [27]), .I2(n2156), .O(n2341)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3938.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3939 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [25]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [26]), .I2(n2189), 
            .O(n2342)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3939.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3940 (.I0(n2191), .I1(n2342), .I2(n2156), .I3(n2201), 
            .O(n2343)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3940.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3941 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [27]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [27]), .I2(n2173), 
            .I3(n1388), .O(n2344)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3941.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3942 (.I0(n2161), .I1(\sin_cos/o_deg [11]), .I2(n1387), 
            .I3(\sin_cos/o_deg [27]), .O(n2345)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3942.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3943 (.I0(n2205), .I1(in_data[27]), .I2(n2344), .I3(n2345), 
            .O(n2346)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3943.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3944 (.I0(n2202), .I1(n2341), .I2(n2343), .I3(n2346), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3944.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3945 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [27]), 
            .I1(\sin_cos/o_deg [28]), .I2(n2156), .O(n2347)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3945.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3946 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [26]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [27]), .I2(n2189), 
            .O(n2348)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3946.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3947 (.I0(n2191), .I1(n2348), .I2(n2156), .I3(n2201), 
            .O(n2349)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3947.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3948 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [28]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [28]), .I2(n2173), 
            .I3(n1388), .O(n2350)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3948.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3949 (.I0(n2161), .I1(\sin_cos/o_deg [12]), .I2(n1387), 
            .I3(\sin_cos/o_deg [28]), .O(n2351)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3949.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3950 (.I0(n2205), .I1(in_data[28]), .I2(n2350), .I3(n2351), 
            .O(n2352)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3950.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3951 (.I0(n2202), .I1(n2347), .I2(n2349), .I3(n2352), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3951.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3952 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [28]), 
            .I1(\sin_cos/o_deg [29]), .I2(n2156), .O(n2353)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3952.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3953 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [27]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [28]), .I2(n2189), 
            .O(n2354)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3953.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3954 (.I0(n2191), .I1(n2354), .I2(n2156), .I3(n2201), 
            .O(n2355)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3954.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3955 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [29]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [29]), .I2(n2173), 
            .I3(n1388), .O(n2356)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3955.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3956 (.I0(n2161), .I1(\sin_cos/o_deg [13]), .I2(n1387), 
            .I3(\sin_cos/o_deg [29]), .O(n2357)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3956.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3957 (.I0(n2205), .I1(in_data[29]), .I2(n2356), .I3(n2357), 
            .O(n2358)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3957.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3958 (.I0(n2202), .I1(n2353), .I2(n2355), .I3(n2358), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3958.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3959 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [29]), 
            .I1(\sin_cos/o_deg [30]), .I2(n2156), .O(n2359)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3959.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3960 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [28]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [29]), .I2(n2189), 
            .O(n2360)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3960.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3961 (.I0(n2191), .I1(n2360), .I2(n2156), .I3(n2201), 
            .O(n2361)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3961.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3962 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [30]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [30]), .I2(n2173), 
            .I3(n1388), .O(n2362)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3962.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3963 (.I0(n2161), .I1(\sin_cos/o_deg [14]), .I2(n1387), 
            .I3(\sin_cos/o_deg [30]), .O(n2363)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3963.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3964 (.I0(n2205), .I1(in_data[30]), .I2(n2362), .I3(n2363), 
            .O(n2364)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3964.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3965 (.I0(n2202), .I1(n2359), .I2(n2361), .I3(n2364), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3965.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3966 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n108 [30]), 
            .I1(\sin_cos/o_deg [31]), .I2(n2156), .O(n2365)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3966.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3967 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n76 [29]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n43 [30]), .I2(n2189), 
            .O(n2366)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__3967.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__3968 (.I0(n2191), .I1(n2366), .I2(n2156), .I3(n2201), 
            .O(n2367)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__3968.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__3969 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n498 [31]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n735 [31]), .I2(n2173), 
            .I3(n1388), .O(n2368)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3969.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3970 (.I0(n2161), .I1(\sin_cos/o_deg [15]), .I2(n1387), 
            .I3(\sin_cos/o_deg [31]), .O(n2369)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0777 */ ;
    defparam LUT__3970.LUTMASK = 16'h0777;
    EFX_LUT4 LUT__3971 (.I0(n2205), .I1(in_data[31]), .I2(n2368), .I3(n2369), 
            .O(n2370)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__3971.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__3972 (.I0(n2202), .I1(n2365), .I2(n2367), .I3(n2370), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1068 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8ff */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3972.LUTMASK = 16'hf8ff;
    EFX_LUT4 LUT__3973 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [1]), .I2(n2173), 
            .I3(n1388), .O(n2371)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3973.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3974 (.I0(\sin_cos/o_y [1]), .I1(n2162), .I2(n2371), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3974.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3975 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [2]), .I2(n2173), 
            .I3(n1388), .O(n2372)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3975.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3976 (.I0(\sin_cos/o_y [2]), .I1(n2162), .I2(n2372), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3976.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3977 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [3]), .I2(n2173), 
            .I3(n1388), .O(n2373)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3977.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3978 (.I0(\sin_cos/o_y [3]), .I1(n2162), .I2(n2373), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3978.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3979 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [4]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [4]), .I2(n2173), 
            .I3(n1388), .O(n2374)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3979.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3980 (.I0(\sin_cos/o_y [4]), .I1(n2162), .I2(n2374), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3980.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3981 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [5]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [5]), .I2(n2173), 
            .I3(n1388), .O(n2375)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3981.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3982 (.I0(\sin_cos/o_y [5]), .I1(n2162), .I2(n2375), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3982.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3983 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [6]), .I2(n2173), 
            .I3(n1388), .O(n2376)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3983.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3984 (.I0(\sin_cos/o_y [6]), .I1(n2162), .I2(n2376), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3984.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3985 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [7]), .I2(n2173), 
            .I3(n1388), .O(n2377)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3985.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3986 (.I0(\sin_cos/o_y [7]), .I1(n2162), .I2(n2377), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3986.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3987 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [8]), .I2(n2173), 
            .I3(n1388), .O(n2378)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3987.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3988 (.I0(\sin_cos/o_y [8]), .I1(n2162), .I2(n2378), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3988.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3989 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [9]), .I2(n2173), 
            .I3(n1388), .O(n2379)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3989.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3990 (.I0(\sin_cos/o_y [9]), .I1(n2162), .I2(n2379), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3990.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3991 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [10]), .I2(n2173), 
            .I3(n1388), .O(n2380)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3991.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3992 (.I0(\sin_cos/o_y [10]), .I1(n2162), .I2(n2380), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3992.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3993 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [11]), .I2(n2173), 
            .I3(n1388), .O(n2381)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3993.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3994 (.I0(\sin_cos/o_y [11]), .I1(n2162), .I2(n2381), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3994.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3995 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [12]), .I2(n2173), 
            .I3(n1388), .O(n2382)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3995.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3996 (.I0(\sin_cos/o_y [12]), .I1(n2162), .I2(n2382), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3996.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3997 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [13]), .I2(n2173), 
            .I3(n1388), .O(n2383)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3997.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__3998 (.I0(\sin_cos/o_y [13]), .I1(n2162), .I2(n2383), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__3998.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__3999 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [14]), .I2(n2173), 
            .I3(n1388), .O(n2384)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__3999.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4000 (.I0(\sin_cos/o_y [14]), .I1(n2162), .I2(n2384), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4000.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4001 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [15]), .I2(n2173), 
            .I3(n1388), .O(n2385)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4001.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4002 (.I0(\sin_cos/o_y [15]), .I1(n2162), .I2(n2385), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4002.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4003 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [16]), .I2(n2173), 
            .I3(n1388), .O(n2386)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4003.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4004 (.I0(\sin_cos/o_y [16]), .I1(n2162), .I2(n2386), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4004.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4005 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [17]), .I2(n2173), 
            .I3(n1388), .O(n2387)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4005.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4006 (.I0(\sin_cos/o_y [17]), .I1(n2162), .I2(n2387), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4006.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4007 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [18]), .I2(n2173), 
            .I3(n1388), .O(n2388)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4007.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4008 (.I0(\sin_cos/o_y [18]), .I1(n2162), .I2(n2388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4008.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4009 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [19]), .I2(n2173), 
            .I3(n1388), .O(n2389)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4009.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4010 (.I0(\sin_cos/o_y [19]), .I1(n2162), .I2(n2389), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4010.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4011 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [20]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [20]), .I2(n2173), 
            .I3(n1388), .O(n2390)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4011.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4012 (.I0(\sin_cos/o_y [20]), .I1(n2162), .I2(n2390), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4012.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4013 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [21]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [21]), .I2(n2173), 
            .I3(n1388), .O(n2391)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4013.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4014 (.I0(\sin_cos/o_y [21]), .I1(n2162), .I2(n2391), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4014.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4015 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [22]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [22]), .I2(n2173), 
            .I3(n1388), .O(n2392)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4015.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4016 (.I0(\sin_cos/o_y [22]), .I1(n2162), .I2(n2392), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4016.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4017 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [23]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [23]), .I2(n2173), 
            .I3(n1388), .O(n2393)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4017.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4018 (.I0(\sin_cos/o_y [23]), .I1(n2162), .I2(n2393), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4018.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4019 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [24]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [24]), .I2(n2173), 
            .I3(n1388), .O(n2394)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4019.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4020 (.I0(\sin_cos/o_y [24]), .I1(n2162), .I2(n2394), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4020.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4021 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [25]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [25]), .I2(n2173), 
            .I3(n1388), .O(n2395)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4021.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4022 (.I0(\sin_cos/o_y [25]), .I1(n2162), .I2(n2395), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4022.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4023 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [26]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [26]), .I2(n2173), 
            .I3(n1388), .O(n2396)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4023.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4024 (.I0(\sin_cos/o_y [26]), .I1(n2162), .I2(n2396), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4024.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4025 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [27]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [27]), .I2(n2173), 
            .I3(n1388), .O(n2397)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4025.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4026 (.I0(\sin_cos/o_y [27]), .I1(n2162), .I2(n2397), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4026.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4027 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [28]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [28]), .I2(n2173), 
            .I3(n1388), .O(n2398)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4027.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4028 (.I0(\sin_cos/o_y [28]), .I1(n2162), .I2(n2398), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4028.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4029 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [29]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [29]), .I2(n2173), 
            .I3(n1388), .O(n2399)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4029.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4030 (.I0(\sin_cos/o_y [29]), .I1(n2162), .I2(n2399), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4030.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4031 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [30]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [30]), .I2(n2173), 
            .I3(n1388), .O(n2400)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4031.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4032 (.I0(\sin_cos/o_y [30]), .I1(n2162), .I2(n2400), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4032.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4033 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n423 [31]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n659 [31]), .I2(n2173), 
            .I3(n1388), .O(n2401)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4033.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4034 (.I0(\sin_cos/o_y [31]), .I1(n2162), .I2(n2401), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1149 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4034.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4035 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [1]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [1]), .I2(n2173), 
            .I3(n1388), .O(n2402)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4035.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4036 (.I0(\sin_cos/o_x [1]), .I1(n2162), .I2(n2402), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4036.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4037 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [2]), .I2(n2173), 
            .I3(n1388), .O(n2403)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4037.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4038 (.I0(n2162), .I1(\sin_cos/o_x [2]), .I2(n2403), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4038.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4039 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [3]), .I2(n2173), 
            .I3(n1388), .O(n2404)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4039.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4040 (.I0(\sin_cos/o_x [3]), .I1(n2162), .I2(n2404), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4040.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4041 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [4]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [4]), .I2(n2173), 
            .I3(n1388), .O(n2405)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4041.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4042 (.I0(n2162), .I1(\sin_cos/o_x [4]), .I2(n2405), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4042.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4043 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [5]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [5]), .I2(n2173), 
            .I3(n1388), .O(n2406)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4043.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4044 (.I0(n2162), .I1(\sin_cos/o_x [5]), .I2(n2406), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4044.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4045 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [6]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [6]), .I2(n2173), 
            .I3(n1388), .O(n2407)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4045.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4046 (.I0(n2162), .I1(\sin_cos/o_x [6]), .I2(n2407), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4046.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4047 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [7]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [7]), .I2(n2173), 
            .I3(n1388), .O(n2408)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4047.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4048 (.I0(\sin_cos/o_x [7]), .I1(n2162), .I2(n2408), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4048.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4049 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [8]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [8]), .I2(n2173), 
            .I3(n1388), .O(n2409)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4049.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4050 (.I0(n2162), .I1(\sin_cos/o_x [8]), .I2(n2409), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4050.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4051 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [9]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [9]), .I2(n2173), 
            .I3(n1388), .O(n2410)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4051.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4052 (.I0(n2162), .I1(\sin_cos/o_x [9]), .I2(n2410), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4052.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4053 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [10]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [10]), .I2(n2173), 
            .I3(n1388), .O(n2411)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4053.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4054 (.I0(\sin_cos/o_x [10]), .I1(n2162), .I2(n2411), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4054.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4055 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [11]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [11]), .I2(n2173), 
            .I3(n1388), .O(n2412)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4055.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4056 (.I0(n2162), .I1(\sin_cos/o_x [11]), .I2(n2412), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4056.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4057 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [12]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [12]), .I2(n2173), 
            .I3(n1388), .O(n2413)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4057.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4058 (.I0(n2162), .I1(\sin_cos/o_x [12]), .I2(n2413), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4058.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4059 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [13]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [13]), .I2(n2173), 
            .I3(n1388), .O(n2414)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4059.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4060 (.I0(\sin_cos/o_x [13]), .I1(n2162), .I2(n2414), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4060.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4061 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [14]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [14]), .I2(n2173), 
            .I3(n1388), .O(n2415)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4061.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4062 (.I0(\sin_cos/o_x [14]), .I1(n2162), .I2(n2415), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4062.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4063 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [15]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [15]), .I2(n2173), 
            .I3(n1388), .O(n2416)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4063.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4064 (.I0(n2162), .I1(\sin_cos/o_x [15]), .I2(n2416), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4064.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__4065 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [16]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [16]), .I2(n2173), 
            .I3(n1388), .O(n2417)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4065.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4066 (.I0(\sin_cos/o_x [16]), .I1(n2162), .I2(n2417), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4066.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4067 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [17]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [17]), .I2(n2173), 
            .I3(n1388), .O(n2418)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4067.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4068 (.I0(\sin_cos/o_x [17]), .I1(n2162), .I2(n2418), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4068.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4069 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [18]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [18]), .I2(n2173), 
            .I3(n1388), .O(n2419)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4069.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4070 (.I0(\sin_cos/o_x [18]), .I1(n2162), .I2(n2419), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4070.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4071 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [19]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [19]), .I2(n2173), 
            .I3(n1388), .O(n2420)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4071.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4072 (.I0(\sin_cos/o_x [19]), .I1(n2162), .I2(n2420), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4072.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4073 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [20]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [20]), .I2(n2173), 
            .I3(n1388), .O(n2421)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4073.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4074 (.I0(\sin_cos/o_x [20]), .I1(n2162), .I2(n2421), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4074.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4075 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [21]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [21]), .I2(n2173), 
            .I3(n1388), .O(n2422)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4075.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4076 (.I0(\sin_cos/o_x [21]), .I1(n2162), .I2(n2422), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4076.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4077 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [22]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [22]), .I2(n2173), 
            .I3(n1388), .O(n2423)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4077.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4078 (.I0(\sin_cos/o_x [22]), .I1(n2162), .I2(n2423), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4078.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4079 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [23]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [23]), .I2(n2173), 
            .I3(n1388), .O(n2424)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4079.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4080 (.I0(\sin_cos/o_x [23]), .I1(n2162), .I2(n2424), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4080.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4081 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [24]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [24]), .I2(n2173), 
            .I3(n1388), .O(n2425)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4081.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4082 (.I0(\sin_cos/o_x [24]), .I1(n2162), .I2(n2425), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4082.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4083 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [25]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [25]), .I2(n2173), 
            .I3(n1388), .O(n2426)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4083.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4084 (.I0(\sin_cos/o_x [25]), .I1(n2162), .I2(n2426), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4084.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4085 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [26]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [26]), .I2(n2173), 
            .I3(n1388), .O(n2427)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4085.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4086 (.I0(\sin_cos/o_x [26]), .I1(n2162), .I2(n2427), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4086.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4087 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [27]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [27]), .I2(n2173), 
            .I3(n1388), .O(n2428)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4087.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4088 (.I0(\sin_cos/o_x [27]), .I1(n2162), .I2(n2428), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4088.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4089 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [28]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [28]), .I2(n2173), 
            .I3(n1388), .O(n2429)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4089.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4090 (.I0(\sin_cos/o_x [28]), .I1(n2162), .I2(n2429), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4090.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4091 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [29]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [29]), .I2(n2173), 
            .I3(n1388), .O(n2430)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4091.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4092 (.I0(\sin_cos/o_x [29]), .I1(n2162), .I2(n2430), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4092.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4093 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [30]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [30]), .I2(n2173), 
            .I3(n1388), .O(n2431)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4093.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4094 (.I0(\sin_cos/o_x [30]), .I1(n2162), .I2(n2431), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4094.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4095 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n389 [31]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n626 [31]), .I2(n2173), 
            .I3(n1388), .O(n2432)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__4095.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__4096 (.I0(\sin_cos/o_x [31]), .I1(n2162), .I2(n2432), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1116 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf8f8 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4096.LUTMASK = 16'hf8f8;
    EFX_LUT4 LUT__4097 (.I0(n1385), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1107 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4fb0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4097.LUTMASK = 16'h4fb0;
    EFX_LUT4 LUT__4098 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), .I2(n2157), 
            .O(n2433)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__4098.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__4099 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .I2(n2157), 
            .O(n2434)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__4099.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__4100 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), .I2(n1734), 
            .I3(n2434), .O(n2435)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00bf */ ;
    defparam LUT__4100.LUTMASK = 16'h00bf;
    EFX_LUT4 LUT__4101 (.I0(n2433), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I2(n2435), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1107 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4101.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__4102 (.I0(n2434), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n1107 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4102.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__4103 (.I0(n2157), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), .O(n2436)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__4103.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__4104 (.I0(n2192), .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [4]), 
            .I2(n2436), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/select_92/Select_4/n32 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(502)
    defparam LUT__4104.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__4105 (.I0(\sin_cos/o_x [1]), .I1(\sin_cos/o_y [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4105.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4106 (.I0(\sin_cos/o_x [2]), .I1(\sin_cos/o_y [2]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4106.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4107 (.I0(\sin_cos/o_x [3]), .I1(\sin_cos/o_y [3]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4107.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4108 (.I0(\sin_cos/o_x [4]), .I1(\sin_cos/o_y [4]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4108.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4109 (.I0(\sin_cos/o_x [5]), .I1(\sin_cos/o_y [5]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4109.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4110 (.I0(\sin_cos/o_x [6]), .I1(\sin_cos/o_y [6]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4110.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4111 (.I0(\sin_cos/o_x [7]), .I1(\sin_cos/o_y [7]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4111.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4112 (.I0(\sin_cos/o_x [8]), .I1(\sin_cos/o_y [8]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4112.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4113 (.I0(\sin_cos/o_x [9]), .I1(\sin_cos/o_y [9]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4113.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4114 (.I0(\sin_cos/o_x [10]), .I1(\sin_cos/o_y [10]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4114.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4115 (.I0(\sin_cos/o_x [11]), .I1(\sin_cos/o_y [11]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4115.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4116 (.I0(\sin_cos/o_x [12]), .I1(\sin_cos/o_y [12]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4116.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4117 (.I0(\sin_cos/o_x [13]), .I1(\sin_cos/o_y [13]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4117.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4118 (.I0(\sin_cos/o_x [14]), .I1(\sin_cos/o_y [14]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4118.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4119 (.I0(\sin_cos/o_x [15]), .I1(\sin_cos/o_y [15]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4119.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4120 (.I0(\sin_cos/o_x [16]), .I1(\sin_cos/o_y [16]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4120.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4121 (.I0(\sin_cos/o_x [17]), .I1(\sin_cos/o_y [17]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4121.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4122 (.I0(\sin_cos/o_x [18]), .I1(\sin_cos/o_y [18]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4122.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4123 (.I0(\sin_cos/o_x [19]), .I1(\sin_cos/o_y [19]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4123.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4124 (.I0(\sin_cos/o_x [20]), .I1(\sin_cos/o_y [20]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4124.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4125 (.I0(\sin_cos/o_x [21]), .I1(\sin_cos/o_y [21]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4125.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4126 (.I0(\sin_cos/o_x [22]), .I1(\sin_cos/o_y [22]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4126.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4127 (.I0(\sin_cos/o_x [23]), .I1(\sin_cos/o_y [23]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4127.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4128 (.I0(\sin_cos/o_x [24]), .I1(\sin_cos/o_y [24]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4128.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4129 (.I0(\sin_cos/o_x [25]), .I1(\sin_cos/o_y [25]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4129.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4130 (.I0(\sin_cos/o_x [26]), .I1(\sin_cos/o_y [26]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4130.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4131 (.I0(\sin_cos/o_x [27]), .I1(\sin_cos/o_y [27]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4131.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4132 (.I0(\sin_cos/o_x [28]), .I1(\sin_cos/o_y [28]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4132.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4133 (.I0(\sin_cos/o_x [29]), .I1(\sin_cos/o_y [29]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4133.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4134 (.I0(\sin_cos/o_x [30]), .I1(\sin_cos/o_y [30]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4134.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4135 (.I0(\sin_cos/o_x [31]), .I1(\sin_cos/o_y [31]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/isswap ), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n952 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(489)
    defparam LUT__4135.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4136 (.I0(n1475), .I1(\sin_cos/o_x [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4136.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__4137 (.I0(\sin_cos/o_x [30]), .I1(\sin_cos/o_x [31]), 
            .I2(\~sin_cos/u_efx_cordic/genblk1.u_sin_cos/equal_64/n11 ), .O(n2437)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__4137.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4138 (.I0(n2437), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4138.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4139 (.I0(n1471), .I1(\sin_cos/o_x [31]), .I2(n1383), 
            .O(n2438)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__4139.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4140 (.I0(n2438), .I1(\sin_cos/o_x [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4140.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__4141 (.I0(n1448), .I1(\sin_cos/o_x [31]), .I2(n1392), 
            .O(n2439)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__4141.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__4142 (.I0(n2439), .I1(\sin_cos/o_x [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4142.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__4143 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n465 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b00 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__4143.LUTMASK = 16'h4b00;
    EFX_LUT4 LUT__4144 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8d3f */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__4144.LUTMASK = 16'h8d3f;
    EFX_LUT4 LUT__4145 (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [3]), 
            .I1(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .I3(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [2]), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/n1 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h730f */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam LUT__4145.LUTMASK = 16'h730f;
    EFX_LUT4 LUT__4146 (.I0(n1515), .I1(\sin_cos/o_y [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/n1 [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam LUT__4146.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4147 (.I0(count[0]), .I1(count[2]), .I2(count[1]), .I3(valid), 
            .O(n1030)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__4147.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__4148 (.I0(count[1]), .I1(count[2]), .I2(count[0]), .I3(valid), 
            .O(n1038)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__4148.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__4149 (.I0(count[0]), .I1(count[1]), .I2(count[2]), .I3(valid), 
            .O(n1046)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__4149.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__4150 (.I0(n1449), .I1(\sin_cos/o_x [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4150.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__4151 (.I0(n1444), .I1(n1714), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n2440)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4151.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4152 (.I0(\sin_cos/o_x [28]), .I1(\sin_cos/o_x [27]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .O(n2441)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4152.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4153 (.I0(n1471), .I1(n2441), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [1]), 
            .O(n2442)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__4153.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__4154 (.I0(n2442), .I1(n2440), .I2(n1392), .O(n2443)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4154.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4155 (.I0(n2443), .I1(\sin_cos/o_x [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4155.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__4156 (.I0(\sin_cos/o_x [30]), .I1(\sin_cos/o_x [31]), 
            .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), .I3(n1383), 
            .O(n2444)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;
    defparam LUT__4156.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__4157 (.I0(n1513), .I1(n1715), .I2(n1392), .O(n2445)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4157.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4158 (.I0(n2445), .I1(n2444), .I2(n1389), .O(n2446)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__4158.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4159 (.I0(n2446), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4159.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4160 (.I0(n1479), .I1(n1474), .I2(n1392), .O(n2447)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4160.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4161 (.I0(n2447), .I1(n2438), .I2(n1389), .O(n2448)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__4161.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__4162 (.I0(n2448), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4162.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4163 (.I0(n1455), .I1(n1446), .I2(n1392), .O(n2449)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4163.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4164 (.I0(n2439), .I1(n2449), .I2(n1389), .O(n2450)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4164.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4165 (.I0(n2450), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4165.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__4166 (.I0(n2442), .I1(\sin_cos/o_x [31]), .I2(n1392), 
            .O(n2451)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__4166.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__4167 (.I0(n1453), .I1(n1712), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n2452)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4167.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4168 (.I0(n2440), .I1(n2452), .I2(n1392), .O(n2453)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4168.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4169 (.I0(n2453), .I1(n2451), .I2(n1389), .O(n2454)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4169.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4170 (.I0(n2454), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4170.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__4171 (.I0(n2451), .I1(\sin_cos/o_x [31]), .I2(n1389), 
            .I3(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3533 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4171.LUTMASK = 16'h3533;
    EFX_LUT4 LUT__4172 (.I0(n1717), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4172.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4173 (.I0(n1481), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4173.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4174 (.I0(n1457), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4174.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__4175 (.I0(n1450), .I1(n1724), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n2455)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4175.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4176 (.I0(n2452), .I1(n2455), .I2(n1392), .O(n2456)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4176.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4177 (.I0(n2443), .I1(n2456), .I2(n1389), .O(n2457)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__4177.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4178 (.I0(n2457), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/n811 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4178.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4179 (.I0(n1725), .I1(n1713), .I2(n1392), .O(n2458)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4179.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4180 (.I0(n2445), .I1(n2458), .I2(n1389), .O(n2459)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4180.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4181 (.I0(n2459), .I1(n2437), .I2(n1388), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4181.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__4182 (.I0(n2438), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .I3(n1389), .O(n2460)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__4182.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4183 (.I0(n1477), .I1(n1462), .I2(n1392), .O(n2461)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4183.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4184 (.I0(n2461), .I1(n2447), .I2(n1388), .I3(n2460), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4184.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__4185 (.I0(n1452), .I1(n1441), .I2(n1392), .O(n2462)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4185.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4186 (.I0(n2462), .I1(n2449), .I2(n1388), .I3(n1389), 
            .O(n2463)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__4186.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__4187 (.I0(n2439), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .I3(n2463), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4187.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4188 (.I0(n1439), .I1(n1722), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n2464)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4188.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4189 (.I0(n2455), .I1(n2464), .I2(n1392), .O(n2465)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4189.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4190 (.I0(n2465), .I1(n2453), .I2(n1388), .I3(n1389), 
            .O(n2466)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__4190.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__4191 (.I0(n2451), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .I3(n2466), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4191.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4192 (.I0(n1726), .I1(n1716), .I2(n1388), .I3(n1389), 
            .O(n2467)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__4192.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__4193 (.I0(n1514), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .I3(n2467), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4193.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4194 (.I0(n1463), .I1(n1480), .I2(n1388), .I3(n1389), 
            .O(n2468)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__4194.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__4195 (.I0(n1475), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .I3(n2468), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4195.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4196 (.I0(n1442), .I1(n1456), .I2(n1388), .I3(n1389), 
            .O(n2469)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3f50 */ ;
    defparam LUT__4196.LUTMASK = 16'h3f50;
    EFX_LUT4 LUT__4197 (.I0(n1449), .I1(\sin_cos/o_x [31]), .I2(n1388), 
            .I3(n2469), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4197.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__4198 (.I0(n1436), .I1(n1720), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n2470)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4198.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4199 (.I0(n2464), .I1(n2470), .I2(n1547), .O(n2471)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__4199.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4200 (.I0(n2443), .I1(\sin_cos/o_x [31]), .I2(n1389), 
            .O(n2472)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__4200.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__4201 (.I0(n2456), .I1(n2472), .I2(n1547), .O(n2473)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__4201.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__4202 (.I0(n2471), .I1(n2473), .I2(n1389), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4202.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__4203 (.I0(n2465), .I1(n2470), .I2(n1546), .I3(n1563), 
            .O(n2474)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h050c */ ;
    defparam LUT__4203.LUTMASK = 16'h050c;
    EFX_LUT4 LUT__4204 (.I0(\sin_cos/o_x [6]), .I1(\sin_cos/o_x [5]), .I2(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/i [0]), 
            .O(n2475)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__4204.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4205 (.I0(n1467), .I1(n2475), .I2(n1563), .I3(n1546), 
            .O(n2476)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__4205.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__4206 (.I0(n2476), .I1(n2474), .I2(n2454), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/n1 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heef0 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam LUT__4206.LUTMASK = 16'heef0;
    EFX_LUT4 LUT__4207 (.I0(n1723), .I1(n1721), .I2(n1547), .O(n2477)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4207.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4208 (.I0(n2458), .I1(n2446), .I2(n1547), .O(n2478)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__4208.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4209 (.I0(n2477), .I1(n2478), .I2(n1389), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n135 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4209.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__4210 (.I0(n1438), .I1(n1431), .I2(n1547), .O(n2479)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5c5c */ ;
    defparam LUT__4210.LUTMASK = 16'h5c5c;
    EFX_LUT4 LUT__4211 (.I0(n2462), .I1(n2450), .I2(n1547), .O(n2480)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'ha3a3 */ ;
    defparam LUT__4211.LUTMASK = 16'ha3a3;
    EFX_LUT4 LUT__4212 (.I0(n2479), .I1(n2480), .I2(n1389), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n133 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4212.LUTMASK = 16'hcacc;
    EFX_LUT4 LUT__4213 (.I0(n1460), .I1(n1465), .I2(n1547), .O(n2481)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__4213.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__4214 (.I0(n2461), .I1(n2448), .I2(n1547), .O(n2482)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__4214.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__4215 (.I0(n2481), .I1(n2482), .I2(n1389), .I3(n1388), 
            .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/shift_right_36/n134 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcacc */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(472)
    defparam LUT__4215.LUTMASK = 16'hcacc;
    EFX_ADD \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i2  (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n2 ), 
            .I1(1'b1), .CI(1'b0), .CO(n2487)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(440)
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_9/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_FF \in_data[0]~FF_frt_1  (.D(n1735), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(n1735_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF_frt_1 .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1 .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1 .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1 .D_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1 .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF_frt_1 .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF_frt_1 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[9]~FF_frt_243  (.D(n1990), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(n1990_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[9]~FF_frt_243 .CLK_POLARITY = 1'b1;
    defparam \in_data[9]~FF_frt_243 .CE_POLARITY = 1'b0;
    defparam \in_data[9]~FF_frt_243 .SR_POLARITY = 1'b1;
    defparam \in_data[9]~FF_frt_243 .D_POLARITY = 1'b1;
    defparam \in_data[9]~FF_frt_243 .SR_SYNC = 1'b1;
    defparam \in_data[9]~FF_frt_243 .SR_VALUE = 1'b0;
    defparam \in_data[9]~FF_frt_243 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[8]~FF_frt_128_frt_233  (.D(n1970), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(n1970_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[8]~FF_frt_128_frt_233 .CLK_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_233 .CE_POLARITY = 1'b0;
    defparam \in_data[8]~FF_frt_128_frt_233 .SR_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_233 .D_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_233 .SR_SYNC = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_233 .SR_VALUE = 1'b0;
    defparam \in_data[8]~FF_frt_128_frt_233 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_244  (.D(n1978), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1978_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_244 .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_244 .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_244 .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_244 .D_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_244 .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_244 .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_244 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[8]~FF_frt_128_frt_233_frt_248  (.D(n1986), .CE(ceg_net33), 
           .CLK(\clk~O ), .SR(1'b0), .Q(n1986_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[8]~FF_frt_128_frt_233_frt_248 .CLK_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_233_frt_248 .CE_POLARITY = 1'b0;
    defparam \in_data[8]~FF_frt_128_frt_233_frt_248 .SR_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_233_frt_248 .D_POLARITY = 1'b0;
    defparam \in_data[8]~FF_frt_128_frt_233_frt_248 .SR_SYNC = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_233_frt_248 .SR_VALUE = 1'b0;
    defparam \in_data[8]~FF_frt_128_frt_233_frt_248 .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i1  (.I0(1'b1), 
            .I1(1'b1), .CI(1'b0), .CO(n2488)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(473)
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_37/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_FF \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_240  (.D(n1965), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1965_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_240 .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_240 .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_240 .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_240 .D_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_240 .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_240 .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_240 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[8]~FF_frt_128_frt_242  (.D(n1982), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(n1982_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[8]~FF_frt_128_frt_242 .CLK_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_242 .CE_POLARITY = 1'b0;
    defparam \in_data[8]~FF_frt_128_frt_242 .SR_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_242 .D_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_242 .SR_SYNC = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_242 .SR_VALUE = 1'b0;
    defparam \in_data[8]~FF_frt_128_frt_242 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_241_frt_249  (.D(n1985), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1985_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_241_frt_249 .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_241_frt_249 .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_241_frt_249 .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_241_frt_249 .D_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_241_frt_249 .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_241_frt_249 .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_197_frt_220_frt_229_frt_241_frt_249 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_250  (.D(n1980), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1980_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_250 .CLK_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_250 .CE_POLARITY = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_250 .SR_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_250 .D_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_250 .SR_SYNC = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_250 .SR_VALUE = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_250 .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_FF \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236  (.D(n1973), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1973_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236 .CLK_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236 .CE_POLARITY = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236 .SR_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236 .D_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236 .SR_SYNC = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236 .SR_VALUE = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_253  (.D(n2002), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n2002_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_253 .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_253 .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_253 .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_253 .D_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_253 .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_253 .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_253 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_252  (.D(n1999), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1999_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_252 .CLK_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_252 .CE_POLARITY = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_252 .SR_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_252 .D_POLARITY = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_252 .SR_SYNC = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_252 .SR_VALUE = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_252 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[8]~FF_frt_128_frt_170_frt_202  (.D(n1959), .CE(ceg_net33), 
           .CLK(\clk~O ), .SR(1'b0), .Q(n1959_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[8]~FF_frt_128_frt_170_frt_202 .CLK_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_170_frt_202 .CE_POLARITY = 1'b0;
    defparam \in_data[8]~FF_frt_128_frt_170_frt_202 .SR_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_170_frt_202 .D_POLARITY = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_170_frt_202 .SR_SYNC = 1'b1;
    defparam \in_data[8]~FF_frt_128_frt_170_frt_202 .SR_VALUE = 1'b0;
    defparam \in_data[8]~FF_frt_128_frt_170_frt_202 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217  (.D(n1967), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1967_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217 .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217 .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217 .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217 .D_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217 .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217 .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217 .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i1  (.I0(1'b1), 
            .I1(1'b1), .CI(1'b0), .CO(n2490)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(483)
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_48/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_FF \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_246  (.D(n1957), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1957_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_246 .CLK_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_246 .CE_POLARITY = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_246 .SR_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_246 .D_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_246 .SR_SYNC = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_246 .SR_VALUE = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_246 .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i1  (.I0(1'b1), 
            .I1(1'b1), .CI(1'b0), .CO(n2484)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i2  (.I0(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n2 ), 
            .I1(1'b1), .CI(1'b0), .CO(n2486)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i1  (.I0(1'b1), 
            .I1(1'b1), .CI(1'b0), .CO(n2483)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(447)
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_11/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_FF \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_239_frt_245  (.D(n1974), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1974_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_239_frt_245 .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_239_frt_245 .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_239_frt_245 .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_239_frt_245 .D_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_239_frt_245 .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_239_frt_245 .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_186_frt_194_frt_208_frt_217_frt_239_frt_245 .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \AUX_ADD_CO__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i1  (.I0(1'b0), 
            .I1(1'b0), .CI(n2485), .O(\sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(454)
    defparam \AUX_ADD_CO__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CO__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_13/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_FF \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_247  (.D(n1987), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n1987_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_247 .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_247 .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_247 .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_247 .D_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_247 .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_247 .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_12_frt_24_frt_41_frt_58_frt_64_frt_74_frt_88_frt_96_frt_109_frt_126_frt_137_frt_145_frt_150_frt_159_frt_175_frt_183_frt_193_frt_209_frt_225_frt_232_frt_235_frt_247 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_251  (.D(n2001), 
           .CE(ceg_net33), .CLK(\clk~O ), .SR(1'b0), .Q(n2001_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_251 .CLK_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_251 .CE_POLARITY = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_251 .SR_POLARITY = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_251 .D_POLARITY = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_251 .SR_SYNC = 1'b1;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_251 .SR_VALUE = 1'b0;
    defparam \in_data[13]~FF_frt_181_frt_211_frt_218_frt_231_frt_236_frt_251 .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i7  (.I0(1'b1), 
            .I1(1'b1), .CI(1'b0), .CO(n2489)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/ip/sin_cos/sin_cos.v(475)
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__sin_cos/u_efx_cordic/genblk1.u_sin_cos/sub_41/add_2/i7 .I1_POLARITY = 1'b1;
    EFX_FF \in_data[0]~FF_frt_1_frt_111  (.D(n1737), .CE(ceg_net33), .CLK(\clk~O ), 
           .SR(1'b0), .Q(n1737_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/dev/Vicharak/uart_interface/rtl/uart_top.v(80)
    defparam \in_data[0]~FF_frt_1_frt_111 .CLK_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_111 .CE_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_111 .SR_POLARITY = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_111 .D_POLARITY = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_111 .SR_SYNC = 1'b1;
    defparam \in_data[0]~FF_frt_1_frt_111 .SR_VALUE = 1'b0;
    defparam \in_data[0]~FF_frt_1_frt_111 .SR_SYNC_PRIORITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_FF_5d0ac440_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5d0ac440_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_5d0ac440_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_5d0ac440_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_67
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_68
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_69
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_70
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_71
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_72
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_73
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_74
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_75
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_76
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_77
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_78
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_79
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_80
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_81
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_82
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_83
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_84
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_85
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_86
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_87
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_88
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_89
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_90
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_91
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_92
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_93
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_94
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_95
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_96
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_97
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_98
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_99
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_100
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_101
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_102
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_103
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_104
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_105
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_106
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_107
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_108
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_109
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_110
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_111
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_112
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_113
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_114
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_115
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_116
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_117
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_118
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_119
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_120
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_121
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_122
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_123
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_124
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_125
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_126
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_127
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_128
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_129
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_130
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_131
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_132
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_133
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_134
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_135
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_136
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_137
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_138
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_139
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_140
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_141
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_142
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_143
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_144
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_145
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_146
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_147
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_148
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_149
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_150
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_151
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_152
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_153
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_154
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_155
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_156
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_157
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_158
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_159
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_160
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_161
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_162
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_163
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_164
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_165
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_166
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_167
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_168
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_169
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_170
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_171
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_172
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_173
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_174
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_175
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_176
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_177
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_178
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_179
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_180
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_181
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_182
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_183
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_184
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_185
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_186
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_187
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_188
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_189
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_190
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_191
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_192
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_193
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_194
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_195
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_196
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_197
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_198
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_199
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_200
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_201
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_202
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_203
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_204
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_205
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_206
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_207
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_208
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_209
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_210
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_211
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_212
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_213
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_214
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_215
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_216
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_217
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_218
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_219
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_220
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_221
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_222
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_223
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_224
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_225
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5d0ac440_226
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_5d0ac440_0
// module not written out since it is a black box. 
//

