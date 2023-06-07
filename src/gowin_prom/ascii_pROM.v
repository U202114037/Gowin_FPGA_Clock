//Copyright (C)2014-2022 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//GOWIN Version: V1.9.8.05
//Part Number: GW1N-LV1QN48C6/I5
//Device: GW1N-1
//Created Time: Wed Jun 07 18:22:22 2023

module ascii_pROM (dout, clk, oce, ce, reset, ad);

output [7:0] dout;
input clk;
input oce;
input ce;
input reset;
input [11:0] ad;

wire [27:0] prom_inst_0_dout_w;
wire [27:0] prom_inst_1_dout_w;
wire gw_gnd;

assign gw_gnd = 1'b0;

pROM prom_inst_0 (
    .DO({prom_inst_0_dout_w[27:0],dout[3:0]}),
    .CLK(clk),
    .OCE(oce),
    .CE(ce),
    .RESET(reset),
    .AD({ad[11:0],gw_gnd,gw_gnd})
);

defparam prom_inst_0.READ_MODE = 1'b0;
defparam prom_inst_0.BIT_WIDTH = 4;
defparam prom_inst_0.RESET_MODE = "SYNC";
defparam prom_inst_0.INIT_RAM_00 = 256'h520004F54C655E4000AAFA4F440000000000AA40004044444400000000000000;
defparam prom_inst_0.INIT_RAM_01 = 256'h5EE54000024888888420000888888000000000001220006955EAA400002AC4AD;
defparam prom_inst_0.INIT_RAM_02 = 256'h012224488800002000000000000000F00000122000000000000444F444000004;
defparam prom_inst_0.INIT_RAM_03 = 256'h1F000088E9AAC80000E100C01E0000F124811E0000E44444640000E111111E00;
defparam prom_inst_0.INIT_RAM_04 = 256'h0004000000E20E111E0000E111E11E00004444489F0000E111F19E0000E100F1;
defparam prom_inst_0.INIT_RAM_05 = 256'h004044811E000024800084200000F00F00000000842480000440004000000040;
defparam prom_inst_0.INIT_RAM_06 = 256'h2F0000F222222F0000E111111E0000F222E22F000032EAAC440000E1D5591E00;
defparam prom_inst_0.INIT_RAM_07 = 256'h88888E0000F444444F00003222E2230000C219112C0000722AEA2F0000F22AEA;
defparam prom_inst_0.INIT_RAM_08 = 256'h00E111111E000072AA662B00005555BBBB0000F2222227000072AA6A27000798;
defparam prom_inst_0.INIT_RAM_09 = 256'h230000E444445F0000F108611E0000722AE22F0008E971111E00007222E22F00;
defparam prom_inst_0.INIT_RAM_0A = 256'h24489F0000E4444AAB0000BAA44AAB0000AAAAE555000044CAA2230000C22222;
defparam prom_inst_0.INIT_RAM_0B = 256'hF00000000000000000000A400E88888888E00008884422200C44444444C000F2;
defparam prom_inst_0.INIT_RAM_0C = 256'h000000C222C0080000C222C0000000E222E2230000C2C2C00000000000000040;
defparam prom_inst_0.INIT_RAM_0D = 256'h88C0080000E444600400007222E22300C2E2C2C0000000E444E4480000C2E2C0;
defparam prom_inst_0.INIT_RAM_0E = 256'h00C222C00000007222F00000005555F0000000F4444447000072EAA223007888;
defparam prom_inst_0.INIT_RAM_0F = 256'h0000008444E4400000E0C2E00000007226B0000080C222C0000072E222F00000;
defparam prom_inst_0.INIT_RAM_10 = 256'h48E00000344CA270000000BA4AB0000000AAE5500000004CA270000000C222B0;
defparam prom_inst_0.INIT_RAM_11 = 256'h00000000000000000000085206444484446088888888888808888848888000E4;
defparam prom_inst_0.INIT_RAM_12 = 256'hA888CAAAC80000222F222F4440000000000000024C8000880088888880000000;
defparam prom_inst_0.INIT_RAM_13 = 256'h088888800000000000000003466000E11956A222C0000024448A5555200088CA;
defparam prom_inst_0.INIT_RAM_14 = 256'h0000000000000008888F88880000000088BCCB88000002488000000884200000;
defparam prom_inst_0.INIT_RAM_15 = 256'h222222248000022448800000000000660000000000000000000E000000003466;
defparam prom_inst_0.INIT_RAM_16 = 256'h0E224480000000C220008022C00000E248000222C00000E88888888E80000084;
defparam prom_inst_0.INIT_RAM_17 = 256'h22484222C000008888880022E00000842226A224800000C22006A222E0000080;
defparam prom_inst_0.INIT_RAM_18 = 256'h0842480000004880000080000000008800008800000000C400842224800000C2;
defparam prom_inst_0.INIT_RAM_19 = 256'h2D5555A2C000008800000622C000002480000084200000000F000F0000000000;
defparam prom_inst_0.INIT_RAM_1A = 256'h22222222F00000C221111122C00000F22222E222F000007222C44488800000C2;
defparam prom_inst_0.INIT_RAM_1B = 256'h222E2222700000C221111122C00000722222E222F00000F22222E222F00000F2;
defparam prom_inst_0.INIT_RAM_1C = 256'h2222222270000072222AEA227000F10000000000C00000E888888888E0000072;
defparam prom_inst_0.INIT_RAM_1D = 256'h222E2222F00000C211111112C00000722222AA66300000BAAAAA6666700000F2;
defparam prom_inst_0.INIT_RAM_1E = 256'h88888889F00000E220084222C00000722222E222F00000C23D111112C0000072;
defparam prom_inst_0.INIT_RAM_1F = 256'h448884427000002226559999B000008884444222700000C222222222700000C8;
defparam prom_inst_0.INIT_RAM_20 = 256'h000888442200088888888888888000F224480001E00000C88888442270000072;
defparam prom_inst_0.INIT_RAM_21 = 256'h000000000860F00000000000000000000000000004800E000000000000E00000;
defparam prom_inst_0.INIT_RAM_22 = 256'h222480000000008422248000000000A62226A222300000C22482C00000000000;
defparam prom_inst_0.INIT_RAM_23 = 256'h2226A2223000C22C2C22C000000000E88888E888000000C222E2C00000000084;
defparam prom_inst_0.INIT_RAM_24 = 256'h88888888E000007226A222223000E20000008000000000E88888E00CC0000072;
defparam prom_inst_0.INIT_RAM_25 = 256'h2226B000000000C22222C000000000722226B000000000722222F000000000E8;
defparam prom_inst_0.INIT_RAM_26 = 256'h8888E880000000E20C22C000000000F4444C70000000008422248000000072E2;
defparam prom_inst_0.INIT_RAM_27 = 256'h88846000000000225599B0000000008844427000000000C22222300000000008;
defparam prom_inst_0.INIT_RAM_28 = 256'h000000000000000000000000000000E48802E0000000788844427000000000E4;
defparam prom_inst_0.INIT_RAM_29 = 256'h22AABA2A40000000884447D70000000000000000022C06888888088888600000;
defparam prom_inst_0.INIT_RAM_2A = 256'h00000000000000000000000000000009AC4E44EAA000000D240E0D6C80000002;

pROM prom_inst_1 (
    .DO({prom_inst_1_dout_w[27:0],dout[7:4]}),
    .CLK(clk),
    .OCE(oce),
    .CE(ce),
    .RESET(reset),
    .AD({ad[11:0],gw_gnd,gw_gnd})
);

defparam prom_inst_1.READ_MODE = 1'b0;
defparam prom_inst_1.BIT_WIDTH = 4;
defparam prom_inst_1.RESET_MODE = "SYNC";
defparam prom_inst_1.INIT_RAM_00 = 256'h1100000110001100000030131100000000000010000000000000000000000000;
defparam prom_inst_1.INIT_RAM_01 = 256'h1001000000000000000002100000012000000000000000301110000000122100;
defparam prom_inst_1.INIT_RAM_02 = 256'h0000000000100000000000000000001000000000000000000000001000000000;
defparam prom_inst_1.INIT_RAM_03 = 256'h0100001010000000000111011000001000011000000000000000000111111000;
defparam prom_inst_1.INIT_RAM_04 = 256'h0000000000011111100000011101100000000000010000011100000000011100;
defparam prom_inst_1.INIT_RAM_05 = 256'h0000000110000000012100000000100100000021000001200000000000000000;
defparam prom_inst_1.INIT_RAM_06 = 256'h1100000111111000000100001100000111011000003110000000001011111000;
defparam prom_inst_1.INIT_RAM_07 = 256'h0000030000100000010000311111130000011300110000000000110000110000;
defparam prom_inst_1.INIT_RAM_08 = 256'h0001111110000011111113000011111111000032000000000031000013000000;
defparam prom_inst_1.INIT_RAM_09 = 256'h1300000000001100000110001100003110011000010111111000000000011000;
defparam prom_inst_1.INIT_RAM_0A = 256'h0000010000000000010000100000010000000001110000000001130000011111;
defparam prom_inst_1.INIT_RAM_0B = 256'h3000000000000000000000000000000000000010000000000100000000100011;
defparam prom_inst_1.INIT_RAM_0C = 256'h0000003111111100001001100000000111000000003111000000000000000000;
defparam prom_inst_1.INIT_RAM_0D = 256'h0000000000000000000000311100000012100130000000100010030000101100;
defparam prom_inst_1.INIT_RAM_0E = 256'h0001110000000031110000000011110000000010000000000031003000000000;
defparam prom_inst_1.INIT_RAM_0F = 256'h0000001000000000001100100000000000100000311111100000000111000000;
defparam prom_inst_1.INIT_RAM_10 = 256'h0010000000000130000000100010000000000110000000000130000000311110;
defparam prom_inst_1.INIT_RAM_11 = 256'h0000000000000000000001200000000000000000000000000100000000100010;
defparam prom_inst_1.INIT_RAM_12 = 256'h2221002210000011171117222000000000000001264000110000000000000000;
defparam prom_inst_1.INIT_RAM_13 = 256'h1000000112400000000000000000006912270111000000255552111220000012;
defparam prom_inst_1.INIT_RAM_14 = 256'h0000000000000000000700000000000000611600000000000111111000000421;
defparam prom_inst_1.INIT_RAM_15 = 256'h444444421000000000011224480000000000000000000000000F000000000000;
defparam prom_inst_1.INIT_RAM_16 = 256'h2722222320000012444212443000007400122444300000300000000000000012;
defparam prom_inst_1.INIT_RAM_17 = 256'h4421244430000000000011227000001244421002300000124442100070000072;
defparam prom_inst_1.INIT_RAM_18 = 256'h1000001240000000000000000000001100001100000000124456444210000034;
defparam prom_inst_1.INIT_RAM_19 = 256'h4255555210000011011244443000000001242100000000000700070000000042;
defparam prom_inst_1.INIT_RAM_1A = 256'h4444444210000012400000447000001244421222100000E44232111000000012;
defparam prom_inst_1.INIT_RAM_1B = 256'h44474444E0000012227000223000000000111114300000344011111430000012;
defparam prom_inst_1.INIT_RAM_1C = 256'h00000000000000722110001270000111111111117000003000000000300000E4;
defparam prom_inst_1.INIT_RAM_1D = 256'h0003444430000012444444421000004665554444E00000622222333370000074;
defparam prom_inst_1.INIT_RAM_1E = 256'h000000047000003444210044700000C422113444300006135444444210000000;
defparam prom_inst_1.INIT_RAM_1F = 256'h22111224E0000022235544446000000011122244E000003444444444E0000010;
defparam prom_inst_1.INIT_RAM_20 = 256'h21100000000007000000000000700034400011227000001000001122700000E4;
defparam prom_inst_1.INIT_RAM_21 = 256'h000000000000F000000000000000000000000000043001111111111111104422;
defparam prom_inst_1.INIT_RAM_22 = 256'h4444744460000034000430000000001244421000000000F44474300000000000;
defparam prom_inst_1.INIT_RAM_23 = 256'h4444300000003443012270000000003000007008F000003400743000000000D6;
defparam prom_inst_1.INIT_RAM_24 = 256'h00000000000000721101700000001222222230033000003000000000000000E4;
defparam prom_inst_1.INIT_RAM_25 = 256'h444210000000003444443000000000E444443000000000B99999700000000030;
defparam prom_inst_1.INIT_RAM_26 = 256'h00003000000000344304700000000010000470000000E4744444700000000012;
defparam prom_inst_1.INIT_RAM_27 = 256'h11127000000000225544E000000000001224E000000000D64444600000000030;
defparam prom_inst_1.INIT_RAM_28 = 256'h1111111111110C222222122222C0007400127000000000011224E00000000062;
defparam prom_inst_1.INIT_RAM_29 = 256'h4476674F000000007000000700000000000000000C3000000000100000001111;
defparam prom_inst_1.INIT_RAM_2A = 256'h000000000000000000000000000000026AA7666AE0000005953F1B4210000006;

endmodule //ascii_pROM
