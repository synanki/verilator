
//
// Verific Verilog Description of module tbtop
//

module tbtop (clk, en, q_b9, q_a8);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(2)
    input en /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(3)
    output [7:0]q_b9 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(4)
    output [7:0]q_a8 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(5)
    
    wire [5:0]n110_2;
    wire [5:0]n110_3;
    wire [5:0]n110_4;
    wire [5:0]n110_5;
    wire [5:0]n110_6;
    
    wire \clk~O ;
    wire [5:0]addr_b;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(9)
    wire [1:0]t_state;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(15)
    wire [5:0]addr_a;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(10)
    wire [7:0]data_b;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(11)
    wire [7:0]data_a;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(12)
    
    wire n117_q, n115_q, n112_q, n110_q;
    wire [7:0]\data_bdata_b[7]_q ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(11)
    wire [7:0]\data_bdata_b[6]_q ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(11)
    wire [7:0]\data_bdata_b[5]_q ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(11)
    wire [7:0]\data_adata_a[7]_q ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(12)
    wire [7:0]\data_adata_a[6]_q ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(12)
    wire [7:0]\data_adata_a[5]_q ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(12)
    wire [5:0]\addr_baddr_b[5]_q ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(9)
    
    wire ceg_net1;
    wire [5:0]\addr_baddr_b[4]_q ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(9)
    wire [1:0]n142;
    wire [5:0]n117_2;
    wire [5:0]n117_3;
    wire [5:0]n117_4;
    wire [5:0]n117_5;
    
    wire n793, n795, n797, n799, n801, n803, n805;
    wire [7:0]n133;
    
    wire n107, n108, n109, n110, n112, n113, n114, n115, n116, 
        n117;
    
    EFX_LUT4 LUT__210 (.I0(t_state[0]), .I1(t_state[1]), .O(n142[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__210.LUTMASK = 16'h1111;
    EFX_FF \addr_b[0]~FF  (.D(addr_b[0]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(addr_b[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_b[0]~FF .CLK_POLARITY = 1'b1;
    defparam \addr_b[0]~FF .CE_POLARITY = 1'b0;
    defparam \addr_b[0]~FF .SR_POLARITY = 1'b0;
    defparam \addr_b[0]~FF .D_POLARITY = 1'b0;
    defparam \addr_b[0]~FF .SR_SYNC = 1'b1;
    defparam \addr_b[0]~FF .SR_VALUE = 1'b0;
    defparam \addr_b[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \t_state[0]~FF  (.D(n142[0]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(t_state[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \t_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \t_state[0]~FF .CE_POLARITY = 1'b0;
    defparam \t_state[0]~FF .SR_POLARITY = 1'b0;
    defparam \t_state[0]~FF .D_POLARITY = 1'b1;
    defparam \t_state[0]~FF .SR_SYNC = 1'b1;
    defparam \t_state[0]~FF .SR_VALUE = 1'b0;
    defparam \t_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_b[1]~FF  (.D(n110_2[1]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(addr_b[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_b[1]~FF .CLK_POLARITY = 1'b1;
    defparam \addr_b[1]~FF .CE_POLARITY = 1'b0;
    defparam \addr_b[1]~FF .SR_POLARITY = 1'b0;
    defparam \addr_b[1]~FF .D_POLARITY = 1'b1;
    defparam \addr_b[1]~FF .SR_SYNC = 1'b1;
    defparam \addr_b[1]~FF .SR_VALUE = 1'b0;
    defparam \addr_b[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_b[2]~FF  (.D(n110_3[2]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(addr_b[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_b[2]~FF .CLK_POLARITY = 1'b1;
    defparam \addr_b[2]~FF .CE_POLARITY = 1'b0;
    defparam \addr_b[2]~FF .SR_POLARITY = 1'b0;
    defparam \addr_b[2]~FF .D_POLARITY = 1'b1;
    defparam \addr_b[2]~FF .SR_SYNC = 1'b1;
    defparam \addr_b[2]~FF .SR_VALUE = 1'b0;
    defparam \addr_b[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_b[3]~FF  (.D(n110_4[3]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(addr_b[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_b[3]~FF .CLK_POLARITY = 1'b1;
    defparam \addr_b[3]~FF .CE_POLARITY = 1'b0;
    defparam \addr_b[3]~FF .SR_POLARITY = 1'b0;
    defparam \addr_b[3]~FF .D_POLARITY = 1'b1;
    defparam \addr_b[3]~FF .SR_SYNC = 1'b1;
    defparam \addr_b[3]~FF .SR_VALUE = 1'b0;
    defparam \addr_b[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_a[2]~FF  (.D(n117_2[2]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(addr_a[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_a[2]~FF .CLK_POLARITY = 1'b1;
    defparam \addr_a[2]~FF .CE_POLARITY = 1'b0;
    defparam \addr_a[2]~FF .SR_POLARITY = 1'b0;
    defparam \addr_a[2]~FF .D_POLARITY = 1'b1;
    defparam \addr_a[2]~FF .SR_SYNC = 1'b1;
    defparam \addr_a[2]~FF .SR_VALUE = 1'b0;
    defparam \addr_a[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_a[3]~FF  (.D(n117_3[3]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(addr_a[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_a[3]~FF .CLK_POLARITY = 1'b1;
    defparam \addr_a[3]~FF .CE_POLARITY = 1'b0;
    defparam \addr_a[3]~FF .SR_POLARITY = 1'b0;
    defparam \addr_a[3]~FF .D_POLARITY = 1'b1;
    defparam \addr_a[3]~FF .SR_SYNC = 1'b1;
    defparam \addr_a[3]~FF .SR_VALUE = 1'b0;
    defparam \addr_a[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_a[4]~FF  (.D(n117_4[4]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(addr_a[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_a[4]~FF .CLK_POLARITY = 1'b1;
    defparam \addr_a[4]~FF .CE_POLARITY = 1'b0;
    defparam \addr_a[4]~FF .SR_POLARITY = 1'b0;
    defparam \addr_a[4]~FF .D_POLARITY = 1'b1;
    defparam \addr_a[4]~FF .SR_SYNC = 1'b1;
    defparam \addr_a[4]~FF .SR_VALUE = 1'b0;
    defparam \addr_a[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_a[5]~FF  (.D(n117_5[5]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(addr_a[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_a[5]~FF .CLK_POLARITY = 1'b1;
    defparam \addr_a[5]~FF .CE_POLARITY = 1'b0;
    defparam \addr_a[5]~FF .SR_POLARITY = 1'b0;
    defparam \addr_a[5]~FF .D_POLARITY = 1'b1;
    defparam \addr_a[5]~FF .SR_SYNC = 1'b1;
    defparam \addr_a[5]~FF .SR_VALUE = 1'b0;
    defparam \addr_a[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_b[1]~FF  (.D(n793), .CE(t_state[1]), .CLK(\clk~O ), .SR(en), 
           .Q(data_b[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_b[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data_b[1]~FF .CE_POLARITY = 1'b0;
    defparam \data_b[1]~FF .SR_POLARITY = 1'b0;
    defparam \data_b[1]~FF .D_POLARITY = 1'b1;
    defparam \data_b[1]~FF .SR_SYNC = 1'b1;
    defparam \data_b[1]~FF .SR_VALUE = 1'b0;
    defparam \data_b[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_b[2]~FF  (.D(n795), .CE(t_state[1]), .CLK(\clk~O ), .SR(en), 
           .Q(data_b[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_b[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data_b[2]~FF .CE_POLARITY = 1'b0;
    defparam \data_b[2]~FF .SR_POLARITY = 1'b0;
    defparam \data_b[2]~FF .D_POLARITY = 1'b1;
    defparam \data_b[2]~FF .SR_SYNC = 1'b1;
    defparam \data_b[2]~FF .SR_VALUE = 1'b0;
    defparam \data_b[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_b[3]~FF  (.D(n797), .CE(t_state[1]), .CLK(\clk~O ), .SR(en), 
           .Q(data_b[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_b[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data_b[3]~FF .CE_POLARITY = 1'b0;
    defparam \data_b[3]~FF .SR_POLARITY = 1'b0;
    defparam \data_b[3]~FF .D_POLARITY = 1'b1;
    defparam \data_b[3]~FF .SR_SYNC = 1'b1;
    defparam \data_b[3]~FF .SR_VALUE = 1'b0;
    defparam \data_b[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_b[4]~FF  (.D(n799), .CE(t_state[1]), .CLK(\clk~O ), .SR(en), 
           .Q(data_b[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_b[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data_b[4]~FF .CE_POLARITY = 1'b0;
    defparam \data_b[4]~FF .SR_POLARITY = 1'b0;
    defparam \data_b[4]~FF .D_POLARITY = 1'b1;
    defparam \data_b[4]~FF .SR_SYNC = 1'b1;
    defparam \data_b[4]~FF .SR_VALUE = 1'b0;
    defparam \data_b[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_a[1]~FF  (.D(n133[1]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(data_a[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_a[1]~FF .CLK_POLARITY = 1'b1;
    defparam \data_a[1]~FF .CE_POLARITY = 1'b0;
    defparam \data_a[1]~FF .SR_POLARITY = 1'b0;
    defparam \data_a[1]~FF .D_POLARITY = 1'b1;
    defparam \data_a[1]~FF .SR_SYNC = 1'b1;
    defparam \data_a[1]~FF .SR_VALUE = 1'b0;
    defparam \data_a[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_a[2]~FF  (.D(n133[2]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(data_a[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_a[2]~FF .CLK_POLARITY = 1'b1;
    defparam \data_a[2]~FF .CE_POLARITY = 1'b0;
    defparam \data_a[2]~FF .SR_POLARITY = 1'b0;
    defparam \data_a[2]~FF .D_POLARITY = 1'b1;
    defparam \data_a[2]~FF .SR_SYNC = 1'b1;
    defparam \data_a[2]~FF .SR_VALUE = 1'b0;
    defparam \data_a[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_a[3]~FF  (.D(n133[3]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(data_a[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_a[3]~FF .CLK_POLARITY = 1'b1;
    defparam \data_a[3]~FF .CE_POLARITY = 1'b0;
    defparam \data_a[3]~FF .SR_POLARITY = 1'b0;
    defparam \data_a[3]~FF .D_POLARITY = 1'b1;
    defparam \data_a[3]~FF .SR_SYNC = 1'b1;
    defparam \data_a[3]~FF .SR_VALUE = 1'b0;
    defparam \data_a[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_a[4]~FF  (.D(n133[4]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(data_a[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_a[4]~FF .CLK_POLARITY = 1'b1;
    defparam \data_a[4]~FF .CE_POLARITY = 1'b0;
    defparam \data_a[4]~FF .SR_POLARITY = 1'b0;
    defparam \data_a[4]~FF .D_POLARITY = 1'b1;
    defparam \data_a[4]~FF .SR_SYNC = 1'b1;
    defparam \data_a[4]~FF .SR_VALUE = 1'b0;
    defparam \data_a[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_FF \t_state[1]~FF  (.D(n142[1]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(t_state[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \t_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \t_state[1]~FF .CE_POLARITY = 1'b0;
    defparam \t_state[1]~FF .SR_POLARITY = 1'b0;
    defparam \t_state[1]~FF .D_POLARITY = 1'b1;
    defparam \t_state[1]~FF .SR_SYNC = 1'b1;
    defparam \t_state[1]~FF .SR_VALUE = 1'b0;
    defparam \t_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_DPRAM_5K \min/ram  (.CLKA(\clk~O ), .CLKB(\clk~O ), .WEA(data_a[1]), 
            .WEB(addr_a[2]), .CLKEA(1'b1), .CLKEB(1'b1), .WDATAA({n133[7:5], 
            data_a[4:1], t_state[0]}), .WDATAB({n805, n803, n801, 
            data_b[4:1], addr_a[2]}), .ADDRA({3'b000, addr_a[5:2], t_state}), 
            .ADDRB({3'b000, n110_6[5], n110_5[4], addr_b[3:0]}), .RDATAA({q_a8}), 
            .RDATAB({q_b9})) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_DPRAM_5K, EFX_ATTRIBUTE_INSTANCE__IS_PRE_SYNTHESISED_DPRAM_5K=TRUE, READ_WIDTH_A=8, READ_WIDTH_B=8, WRITE_WIDTH_A=8, WRITE_WIDTH_B=8, CLKA_POLARITY=1'b1, CLKB_POLARITY=1'b1, CLKEA_POLARITY=1'b1, CLKEB_POLARITY=1'b1, WEA_POLARITY=1'b1, WEB_POLARITY=1'b1, OUTPUT_REG_A=1'b1, OUTPUT_REG_B=1'b1, WRITE_MODE_A="NO_CHANGE", WRITE_MODE_B="NO_CHANGE", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(78)
    defparam \min/ram .READ_WIDTH_A = 8;
    defparam \min/ram .READ_WIDTH_B = 8;
    defparam \min/ram .WRITE_WIDTH_A = 8;
    defparam \min/ram .WRITE_WIDTH_B = 8;
    defparam \min/ram .WRITE_MODE_A = "NO_CHANGE";
    defparam \min/ram .WRITE_MODE_B = "NO_CHANGE";
    defparam \min/ram .CLKA_POLARITY = 1'b1;
    defparam \min/ram .CLKB_POLARITY = 1'b1;
    defparam \min/ram .CLKEA_POLARITY = 1'b1;
    defparam \min/ram .CLKEB_POLARITY = 1'b1;
    defparam \min/ram .WEA_POLARITY = 1'b1;
    defparam \min/ram .WEB_POLARITY = 1'b1;
    defparam \min/ram .INIT_0 = 256'h00000000000000000000000000000000000000000000000000000000000000e0;
    defparam \min/ram .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \min/ram .OUTPUT_REG_A = 1'b1;
    defparam \min/ram .OUTPUT_REG_B = 1'b1;
    EFX_LUT4 LUT__211 (.I0(t_state[1]), .I1(t_state[0]), .O(n142[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__211.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__212 (.I0(n142[1]), .I1(addr_b[0]), .I2(addr_b[1]), .O(n110_2[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6969 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__212.LUTMASK = 16'h6969;
    EFX_LUT4 LUT__213 (.I0(t_state[0]), .I1(t_state[1]), .I2(addr_b[0]), 
            .I3(addr_b[1]), .O(n107)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h133e */ ;
    defparam LUT__213.LUTMASK = 16'h133e;
    EFX_LUT4 LUT__214 (.I0(n107), .I1(addr_b[2]), .O(n110_3[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__214.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__215 (.I0(addr_b[1]), .I1(addr_b[0]), .I2(addr_b[2]), 
            .O(n108)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__215.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__216 (.I0(addr_b[0]), .I1(t_state[0]), .I2(addr_b[1]), 
            .I3(addr_b[2]), .O(n109)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7ffe */ ;
    defparam LUT__216.LUTMASK = 16'h7ffe;
    EFX_LUT4 LUT__217 (.I0(n108), .I1(n109), .I2(t_state[1]), .I3(addr_b[3]), 
            .O(n110_4[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h53ac */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__217.LUTMASK = 16'h53ac;
    EFX_LUT4 LUT__218 (.I0(n108), .I1(addr_b[3]), .O(n110)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__218.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__220 (.I0(addr_b[3]), .I1(addr_b[0]), .I2(t_state[1]), 
            .I3(n109), .O(n112)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0a0c */ ;
    defparam LUT__220.LUTMASK = 16'h0a0c;
    EFX_LUT4 LUT__209 (.I0(en), .I1(t_state[0]), .I2(t_state[1]), .O(ceg_net1)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(15)
    defparam LUT__209.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__221 (.I0(n110_q), .I1(n112_q), .I2(\addr_baddr_b[4]_q [4]), 
            .O(n110_5[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1e1e */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__221.LUTMASK = 16'h1e1e;
    EFX_LUT4 LUT__222 (.I0(n110_q), .I1(n112_q), .I2(\addr_baddr_b[4]_q [4]), 
            .I3(\addr_baddr_b[5]_q [5]), .O(n110_6[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1fe0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__222.LUTMASK = 16'h1fe0;
    EFX_LUT4 LUT__223 (.I0(n142[0]), .I1(addr_a[2]), .O(n117_2[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__223.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__224 (.I0(t_state[0]), .I1(addr_a[2]), .I2(t_state[1]), 
            .I3(addr_a[3]), .O(n117_3[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bf4 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__224.LUTMASK = 16'h0bf4;
    EFX_LUT4 LUT__225 (.I0(t_state[0]), .I1(addr_a[2]), .I2(t_state[1]), 
            .I3(addr_a[3]), .O(n113)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__225.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__226 (.I0(n113), .I1(addr_a[4]), .O(n117_4[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__226.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__227 (.I0(n113), .I1(addr_a[4]), .I2(addr_a[5]), .O(n117_5[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__227.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__228 (.I0(t_state[0]), .I1(addr_a[2]), .I2(data_b[1]), 
            .O(n793)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4b4b */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__228.LUTMASK = 16'h4b4b;
    EFX_LUT4 LUT__229 (.I0(t_state[0]), .I1(addr_a[2]), .I2(data_b[1]), 
            .I3(data_b[2]), .O(n795)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0bf4 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__229.LUTMASK = 16'h0bf4;
    EFX_LUT4 LUT__230 (.I0(t_state[0]), .I1(addr_a[2]), .I2(data_b[1]), 
            .I3(data_b[2]), .O(n114)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf400 */ ;
    defparam LUT__230.LUTMASK = 16'hf400;
    EFX_LUT4 LUT__231 (.I0(n114), .I1(data_b[3]), .O(n797)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__231.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__232 (.I0(n114), .I1(data_b[3]), .I2(data_b[4]), .O(n799)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__232.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__233 (.I0(n114), .I1(data_b[3]), .I2(data_b[4]), .O(n115)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__233.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__234 (.I0(n115_q), .I1(\data_bdata_b[5]_q [5]), .O(n801)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__234.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__235 (.I0(n115_q), .I1(\data_bdata_b[5]_q [5]), .I2(\data_bdata_b[6]_q [6]), 
            .O(n803)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__235.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__236 (.I0(n115_q), .I1(\data_bdata_b[5]_q [5]), .I2(\data_bdata_b[6]_q [6]), 
            .I3(\data_bdata_b[7]_q [7]), .O(n805)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__236.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__237 (.I0(data_a[1]), .I1(t_state[1]), .O(n133[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__237.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__238 (.I0(t_state[0]), .I1(data_a[1]), .I2(data_a[2]), 
            .I3(t_state[1]), .O(n133[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc3a5 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__238.LUTMASK = 16'hc3a5;
    EFX_LUT4 LUT__239 (.I0(data_a[1]), .I1(t_state[0]), .I2(data_a[2]), 
            .I3(t_state[1]), .O(n116)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__239.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__240 (.I0(n116), .I1(data_a[3]), .O(n133[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__240.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__241 (.I0(n116), .I1(data_a[3]), .I2(data_a[4]), .O(n133[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__241.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__242 (.I0(n116), .I1(data_a[3]), .I2(data_a[4]), .O(n117)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__242.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__243 (.I0(n117_q), .I1(\data_adata_a[5]_q [5]), .O(n133[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__243.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__244 (.I0(n117_q), .I1(\data_adata_a[5]_q [5]), .I2(\data_adata_a[6]_q [6]), 
            .O(n133[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__244.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__245 (.I0(n117_q), .I1(\data_adata_a[5]_q [5]), .I2(\data_adata_a[6]_q [6]), 
            .I3(\data_adata_a[7]_q [7]), .O(n133[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(58)
    defparam LUT__245.LUTMASK = 16'h7f80;
    EFX_FF \data_a[6]~FF_brt_11  (.D(n117), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(n117_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_a[6]~FF_brt_11 .CLK_POLARITY = 1'b1;
    defparam \data_a[6]~FF_brt_11 .CE_POLARITY = 1'b0;
    defparam \data_a[6]~FF_brt_11 .SR_POLARITY = 1'b0;
    defparam \data_a[6]~FF_brt_11 .D_POLARITY = 1'b1;
    defparam \data_a[6]~FF_brt_11 .SR_SYNC = 1'b1;
    defparam \data_a[6]~FF_brt_11 .SR_VALUE = 1'b0;
    defparam \data_a[6]~FF_brt_11 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_b[7]~FF_brt_10  (.D(n115), .CE(t_state[1]), .CLK(\clk~O ), 
           .SR(en), .Q(n115_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_b[7]~FF_brt_10 .CLK_POLARITY = 1'b1;
    defparam \data_b[7]~FF_brt_10 .CE_POLARITY = 1'b0;
    defparam \data_b[7]~FF_brt_10 .SR_POLARITY = 1'b0;
    defparam \data_b[7]~FF_brt_10 .D_POLARITY = 1'b1;
    defparam \data_b[7]~FF_brt_10 .SR_SYNC = 1'b1;
    defparam \data_b[7]~FF_brt_10 .SR_VALUE = 1'b0;
    defparam \data_b[7]~FF_brt_10 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_b[4]~FF_brt_9  (.D(n112), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(n112_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_b[4]~FF_brt_9 .CLK_POLARITY = 1'b1;
    defparam \addr_b[4]~FF_brt_9 .CE_POLARITY = 1'b0;
    defparam \addr_b[4]~FF_brt_9 .SR_POLARITY = 1'b0;
    defparam \addr_b[4]~FF_brt_9 .D_POLARITY = 1'b1;
    defparam \addr_b[4]~FF_brt_9 .SR_SYNC = 1'b1;
    defparam \addr_b[4]~FF_brt_9 .SR_VALUE = 1'b0;
    defparam \addr_b[4]~FF_brt_9 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_b[5]~FF_brt_8  (.D(n110), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(n110_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_b[5]~FF_brt_8 .CLK_POLARITY = 1'b1;
    defparam \addr_b[5]~FF_brt_8 .CE_POLARITY = 1'b0;
    defparam \addr_b[5]~FF_brt_8 .SR_POLARITY = 1'b0;
    defparam \addr_b[5]~FF_brt_8 .D_POLARITY = 1'b1;
    defparam \addr_b[5]~FF_brt_8 .SR_SYNC = 1'b1;
    defparam \addr_b[5]~FF_brt_8 .SR_VALUE = 1'b0;
    defparam \addr_b[5]~FF_brt_8 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_b[7]~FF_brt_7  (.D(n805), .CE(t_state[1]), .CLK(\clk~O ), 
           .SR(en), .Q(\data_bdata_b[7]_q [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_b[7]~FF_brt_7 .CLK_POLARITY = 1'b1;
    defparam \data_b[7]~FF_brt_7 .CE_POLARITY = 1'b0;
    defparam \data_b[7]~FF_brt_7 .SR_POLARITY = 1'b0;
    defparam \data_b[7]~FF_brt_7 .D_POLARITY = 1'b1;
    defparam \data_b[7]~FF_brt_7 .SR_SYNC = 1'b1;
    defparam \data_b[7]~FF_brt_7 .SR_VALUE = 1'b0;
    defparam \data_b[7]~FF_brt_7 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_b[6]~FF_brt_6  (.D(n803), .CE(t_state[1]), .CLK(\clk~O ), 
           .SR(en), .Q(\data_bdata_b[6]_q [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_b[6]~FF_brt_6 .CLK_POLARITY = 1'b1;
    defparam \data_b[6]~FF_brt_6 .CE_POLARITY = 1'b0;
    defparam \data_b[6]~FF_brt_6 .SR_POLARITY = 1'b0;
    defparam \data_b[6]~FF_brt_6 .D_POLARITY = 1'b1;
    defparam \data_b[6]~FF_brt_6 .SR_SYNC = 1'b1;
    defparam \data_b[6]~FF_brt_6 .SR_VALUE = 1'b0;
    defparam \data_b[6]~FF_brt_6 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_b[5]~FF_brt_5  (.D(n801), .CE(t_state[1]), .CLK(\clk~O ), 
           .SR(en), .Q(\data_bdata_b[5]_q [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_b[5]~FF_brt_5 .CLK_POLARITY = 1'b1;
    defparam \data_b[5]~FF_brt_5 .CE_POLARITY = 1'b0;
    defparam \data_b[5]~FF_brt_5 .SR_POLARITY = 1'b0;
    defparam \data_b[5]~FF_brt_5 .D_POLARITY = 1'b1;
    defparam \data_b[5]~FF_brt_5 .SR_SYNC = 1'b1;
    defparam \data_b[5]~FF_brt_5 .SR_VALUE = 1'b0;
    defparam \data_b[5]~FF_brt_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_a[7]~FF_brt_4  (.D(n133[7]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(\data_adata_a[7]_q [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_a[7]~FF_brt_4 .CLK_POLARITY = 1'b1;
    defparam \data_a[7]~FF_brt_4 .CE_POLARITY = 1'b0;
    defparam \data_a[7]~FF_brt_4 .SR_POLARITY = 1'b0;
    defparam \data_a[7]~FF_brt_4 .D_POLARITY = 1'b1;
    defparam \data_a[7]~FF_brt_4 .SR_SYNC = 1'b1;
    defparam \data_a[7]~FF_brt_4 .SR_VALUE = 1'b0;
    defparam \data_a[7]~FF_brt_4 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_a[7]~FF_brt_3  (.D(n133[6]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(\data_adata_a[6]_q [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_a[7]~FF_brt_3 .CLK_POLARITY = 1'b1;
    defparam \data_a[7]~FF_brt_3 .CE_POLARITY = 1'b0;
    defparam \data_a[7]~FF_brt_3 .SR_POLARITY = 1'b0;
    defparam \data_a[7]~FF_brt_3 .D_POLARITY = 1'b1;
    defparam \data_a[7]~FF_brt_3 .SR_SYNC = 1'b1;
    defparam \data_a[7]~FF_brt_3 .SR_VALUE = 1'b0;
    defparam \data_a[7]~FF_brt_3 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \data_a[7]~FF_brt_2  (.D(n133[5]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(\data_adata_a[5]_q [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \data_a[7]~FF_brt_2 .CLK_POLARITY = 1'b1;
    defparam \data_a[7]~FF_brt_2 .CE_POLARITY = 1'b0;
    defparam \data_a[7]~FF_brt_2 .SR_POLARITY = 1'b0;
    defparam \data_a[7]~FF_brt_2 .D_POLARITY = 1'b1;
    defparam \data_a[7]~FF_brt_2 .SR_SYNC = 1'b1;
    defparam \data_a[7]~FF_brt_2 .SR_VALUE = 1'b0;
    defparam \data_a[7]~FF_brt_2 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_b[5]~FF_brt_1  (.D(n110_6[5]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(\addr_baddr_b[5]_q [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_b[5]~FF_brt_1 .CLK_POLARITY = 1'b1;
    defparam \addr_b[5]~FF_brt_1 .CE_POLARITY = 1'b0;
    defparam \addr_b[5]~FF_brt_1 .SR_POLARITY = 1'b0;
    defparam \addr_b[5]~FF_brt_1 .D_POLARITY = 1'b1;
    defparam \addr_b[5]~FF_brt_1 .SR_SYNC = 1'b1;
    defparam \addr_b[5]~FF_brt_1 .SR_VALUE = 1'b0;
    defparam \addr_b[5]~FF_brt_1 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \addr_b[4]~FF_brt_0  (.D(n110_5[4]), .CE(ceg_net1), .CLK(\clk~O ), 
           .SR(en), .Q(\addr_baddr_b[4]_q [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0, INIT_VALUE=1'b0 */ ;   // /home/mrinalyadav/Downloads/softwares/efinity/2024.2/project/dpram_1_0_0/dpram.v(60)
    defparam \addr_b[4]~FF_brt_0 .CLK_POLARITY = 1'b1;
    defparam \addr_b[4]~FF_brt_0 .CE_POLARITY = 1'b0;
    defparam \addr_b[4]~FF_brt_0 .SR_POLARITY = 1'b0;
    defparam \addr_b[4]~FF_brt_0 .D_POLARITY = 1'b1;
    defparam \addr_b[4]~FF_brt_0 .SR_SYNC = 1'b1;
    defparam \addr_b[4]~FF_brt_0 .SR_VALUE = 1'b0;
    defparam \addr_b[4]~FF_brt_0 .SR_SYNC_PRIORITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_85c88e79_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_85c88e79_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_85c88e79_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_85c88e79_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_DPRAM_5K_85c88e79__8_8_8_8_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_85c88e79_22
// module not written out since it is a black box. 
//



