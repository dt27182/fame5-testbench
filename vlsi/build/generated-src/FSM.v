module TICache(input clk, input reset,
    input  io_req_valid,
    input [3:0] mem_addr,
    output[31:0] io_resp
);

  wire[31:0] T0;
  wire[31:0] T3;
  wire[31:0] T10;
  wire[31:0] T22;
  reg[31:0] imem_0;
  wire[31:0] T46;
  wire[31:0] T94;
  wire[31:0] T93;
  wire T92;
  reg[31:0] imem_1;
  wire[31:0] T45;
  wire[31:0] T91;
  wire[31:0] T90;
  wire T89;
  wire T30;
  wire[3:0] T4;
  wire[31:0] T21;
  reg[31:0] imem_2;
  wire[31:0] T44;
  wire[31:0] T88;
  wire[31:0] T87;
  wire T86;
  reg[31:0] imem_3;
  wire[31:0] T43;
  wire[31:0] T85;
  wire[31:0] T84;
  wire T83;
  wire T29;
  wire T20;
  wire[31:0] T9;
  wire[31:0] T19;
  reg[31:0] imem_4;
  wire[31:0] T42;
  wire[31:0] T82;
  wire[31:0] T81;
  wire T80;
  reg[31:0] imem_5;
  wire[31:0] T41;
  wire[31:0] T79;
  wire[31:0] T78;
  wire T77;
  wire T28;
  wire[31:0] T18;
  reg[31:0] imem_6;
  wire[31:0] T40;
  wire[31:0] T76;
  wire[31:0] T75;
  wire T74;
  reg[31:0] imem_7;
  wire[31:0] T39;
  wire[31:0] T73;
  wire[31:0] T72;
  wire T71;
  wire T27;
  wire T17;
  wire T8;
  wire[31:0] T2;
  wire[31:0] T7;
  wire[31:0] T16;
  reg[31:0] imem_8;
  wire[31:0] T38;
  wire[31:0] T70;
  wire[31:0] T69;
  wire T68;
  reg[31:0] imem_9;
  wire[31:0] T37;
  wire[31:0] T67;
  wire[31:0] T66;
  wire T65;
  wire T26;
  wire[31:0] T15;
  reg[31:0] imem_10;
  wire[31:0] T36;
  wire[31:0] T64;
  wire[31:0] T63;
  wire T62;
  reg[31:0] imem_11;
  wire[31:0] T35;
  wire[31:0] T61;
  wire[31:0] T60;
  wire T59;
  wire T25;
  wire T14;
  wire[31:0] T6;
  wire[31:0] T13;
  reg[31:0] imem_12;
  wire[31:0] T34;
  wire[31:0] T58;
  wire[31:0] T57;
  wire T56;
  reg[31:0] imem_13;
  wire[31:0] T33;
  wire[31:0] T55;
  wire[31:0] T54;
  wire T53;
  wire T24;
  wire[31:0] T12;
  reg[31:0] imem_14;
  wire[31:0] T32;
  wire[31:0] T52;
  wire[31:0] T51;
  wire T50;
  reg[31:0] imem_15;
  wire[31:0] T31;
  wire[31:0] T49;
  wire[31:0] T48;
  wire T47;
  wire T23;
  wire T11;
  wire T5;
  wire T1;

  assign io_resp = T0;
  assign T0 = T1 ? T2 : T3;
  assign T3 = T8 ? T9 : T10;
  assign T10 = T20 ? T21 : T22;
  assign T22 = T30 ? imem_1 : imem_0;
  assign T46 = T92 ? T93 : T94;
  assign T94 = imem_0;
  assign T93 = 32'hc000/* 49152*/;
  assign T92 = reset;
  assign T45 = T89 ? T90 : T91;
  assign T91 = imem_1;
  assign T90 = 32'hc101/* 49409*/;
  assign T89 = reset;
  assign T30 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = mem_addr;
  assign T21 = T29 ? imem_3 : imem_2;
  assign T44 = T86 ? T87 : T88;
  assign T88 = imem_2;
  assign T87 = 32'ha0f0/* 41200*/;
  assign T86 = reset;
  assign T43 = T83 ? T84 : T85;
  assign T85 = imem_3;
  assign T84 = 32'h121f1/* 74225*/;
  assign T83 = reset;
  assign T29 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T20 = T4[1'h1/* 1*/:1'h1/* 1*/];
  assign T9 = T17 ? T18 : T19;
  assign T19 = T28 ? imem_5 : imem_4;
  assign T42 = T80 ? T81 : T82;
  assign T82 = imem_4;
  assign T81 = 32'h12/* 18*/;
  assign T80 = reset;
  assign T41 = T77 ? T78 : T79;
  assign T79 = imem_5;
  assign T78 = 32'h1203/* 4611*/;
  assign T77 = reset;
  assign T28 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T18 = T27 ? imem_7 : imem_6;
  assign T40 = T74 ? T75 : T76;
  assign T76 = imem_6;
  assign T75 = 32'hc4f4/* 50420*/;
  assign T74 = reset;
  assign T39 = T71 ? T72 : T73;
  assign T73 = imem_7;
  assign T72 = 32'h4e0f0/* 319728*/;
  assign T71 = reset;
  assign T27 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = T4[1'h1/* 1*/:1'h1/* 1*/];
  assign T8 = T4[2'h2/* 2*/:2'h2/* 2*/];
  assign T2 = T5 ? T6 : T7;
  assign T7 = T14 ? T15 : T16;
  assign T16 = T26 ? imem_9 : imem_8;
  assign T38 = T68 ? T69 : T70;
  assign T70 = imem_8;
  assign T69 = 32'ha4f4/* 42228*/;
  assign T68 = reset;
  assign T37 = T65 ? T66 : T67;
  assign T67 = imem_9;
  assign T66 = 32'h124f4/* 74996*/;
  assign T65 = reset;
  assign T26 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T15 = T25 ? imem_11 : imem_10;
  assign T36 = T62 ? T63 : T64;
  assign T64 = imem_10;
  assign T63 = 32'h560f0/* 352496*/;
  assign T62 = reset;
  assign T35 = T59 ? T60 : T61;
  assign T61 = imem_11;
  assign T60 = 32'h50f0/* 20720*/;
  assign T59 = reset;
  assign T25 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T14 = T4[1'h1/* 1*/:1'h1/* 1*/];
  assign T6 = T11 ? T12 : T13;
  assign T13 = T24 ? imem_13 : imem_12;
  assign T34 = T56 ? T57 : T58;
  assign T58 = imem_12;
  assign T57 = 32'h50f0/* 20720*/;
  assign T56 = reset;
  assign T33 = T53 ? T54 : T55;
  assign T55 = imem_13;
  assign T54 = 32'h50f0/* 20720*/;
  assign T53 = reset;
  assign T24 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T12 = T23 ? imem_15 : imem_14;
  assign T32 = T50 ? T51 : T52;
  assign T52 = imem_14;
  assign T51 = 32'h50f0/* 20720*/;
  assign T50 = reset;
  assign T31 = T47 ? T48 : T49;
  assign T49 = imem_15;
  assign T48 = 32'h50f0/* 20720*/;
  assign T47 = reset;
  assign T23 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T11 = T4[1'h1/* 1*/:1'h1/* 1*/];
  assign T5 = T4[2'h2/* 2*/:2'h2/* 2*/];
  assign T1 = T4[2'h3/* 3*/:2'h3/* 3*/];

  always @(posedge clk) begin
    imem_0 <= T46;
    imem_1 <= T45;
    imem_2 <= T44;
    imem_3 <= T43;
    imem_4 <= T42;
    imem_5 <= T41;
    imem_6 <= T40;
    imem_7 <= T39;
    imem_8 <= T38;
    imem_9 <= T37;
    imem_10 <= T36;
    imem_11 <= T35;
    imem_12 <= T34;
    imem_13 <= T33;
    imem_14 <= T32;
    imem_15 <= T31;
  end
endmodule

module TransactionMem(input clk,
    input  io_reads_0_is,
    input [3:0] io_reads_0_adr,
    output[31:0] io_reads_0_dat,
    input  io_reads_1_is,
    input [3:0] io_reads_1_adr,
    output[31:0] io_reads_1_dat,
    input  io_reads_2_is,
    input [3:0] io_reads_2_adr,
    output[31:0] io_reads_2_dat,
    input  io_writes_0_is,
    input [3:0] io_writes_0_adr,
    input [31:0] io_writes_0_dat,
    input  io_writes_1_is,
    input [3:0] io_writes_1_adr,
    input [31:0] io_writes_1_dat
);

  wire[31:0] T2;
  wire[31:0] T5;
  reg [31:0] mem [15:0];
  wire[31:0] T9;
  wire[31:0] T10;
  wire[31:0] datas_0;
  wire[31:0] T14;
  wire[31:0] T16;
  wire[31:0] T18;
  wire[31:0] T19;
  wire ens_0;
  wire T12;
  wire[3:0] addrs_0;
  wire[3:0] T11;
  wire[3:0] T13;
  wire[3:0] T15;
  wire[3:0] T17;
  wire[3:0] T8;
  wire[31:0] T1;
  wire[31:0] T4;
  wire[3:0] T7;
  wire[31:0] T0;
  wire[31:0] T3;
  wire[3:0] T6;

  assign io_reads_2_dat = T2;
  assign T2 = T5;
  assign T5 = mem[T8];
  assign T10 = datas_0;
  assign datas_0 = T14;
  assign T14 = T16;
  assign T16 = io_writes_1_is ? io_writes_1_dat : T18;
  assign T18 = io_writes_0_is ? io_writes_0_dat : T19;
  assign T19 = {31'h0/* 0*/, 1'h0/* 0*/};
  assign ens_0 = T12;
  assign T12 = io_writes_0_is || io_writes_1_is;
  assign addrs_0 = T11;
  assign T11 = T13;
  assign T13 = io_writes_1_is ? io_writes_1_adr : T15;
  assign T15 = io_writes_0_is ? io_writes_0_adr : T17;
  assign T17 = {3'h0/* 0*/, 1'h0/* 0*/};
  assign T8 = io_reads_2_adr;
  assign io_reads_1_dat = T1;
  assign T1 = T4;
  assign T4 = mem[T7];
  assign T7 = io_reads_1_adr;
  assign io_reads_0_dat = T0;
  assign T0 = T3;
  assign T3 = mem[T6];
  assign T6 = io_reads_0_adr;

  always @(posedge clk) begin
    if (ens_0)
      mem[addrs_0] <= T10;
  end
endmodule

module FSM(input clk, input reset,
    input  io_read_data_ready,
    output io_read_data_valid,
    output[31:0] io_read_data_bits,
    output io_read_addr_ready,
    input  io_read_addr_valid,
    input [3:0] io_read_addr_bits
);

  wire[31:0] subtract_out;
  wire[31:0] T6;
  wire[31:0] operand2;
  wire[31:0] T17;
  wire[31:0] rs2_data;
  wire[31:0] regfile_io_reads_1_dat;
  wire[31:0] imm;
  wire[31:0] T31;
  wire[16:0] T36;
  wire[31:0] inst;
  wire[31:0] imem_io_resp;
  wire T24;
  wire[2:0] op;
  wire[2:0] T30;
  wire[2:0] T35;
  wire[31:0] operand1;
  wire[31:0] T16;
  wire[31:0] rs1_data;
  wire[31:0] regfile_io_reads_0_dat;
  wire[31:0] T23;
  wire T22;
  wire[3:0] rd;
  wire[3:0] T3;
  wire subtract_sel;
  wire T5;
  wire T12;
  wire[2:0] T26;
  wire T11;
  wire[2:0] T25;
  wire[31:0] adder_out;
  wire[31:0] T4;
  wire adder_sel;
  wire T2;
  wire T10;
  wire T21;
  wire T20;
  wire[2:0] T33;
  wire T9;
  wire[2:0] T19;
  wire[3:0] rs2;
  wire[3:0] T1;
  wire[3:0] rs1;
  wire[3:0] T0;
  wire[3:0] imem_addr;
  reg[3:0] pc_reg;
  wire T8;
  wire T13;
  wire isJmp;
  wire T27;
  wire T18;
  wire isNotJmp;
  wire T32;
  wire T37;
  wire[3:0] T7;
  wire[3:0] T15;
  wire[3:0] pc_plus4;
  wire[3:0] T29;
  wire[3:0] T34;
  wire[3:0] T14;
  wire[3:0] jmpTarget;
  wire[3:0] T28;
  wire[31:0] regfile_io_reads_2_dat;

  assign subtract_out = T6;
  assign T6 = operand1 - operand2;
  assign operand2 = T17;
  assign T17 = T24 ? imm : rs2_data;
  assign rs2_data = regfile_io_reads_1_dat;
  assign imm = T31;
  assign T31 = {15'h0/* 0*/, T36};
  assign T36 = inst[5'h1f/* 31*/:4'hf/* 15*/];
  assign inst = imem_io_resp;
  assign T24 = T35 < op;
  assign op = T30;
  assign T30 = inst[4'he/* 14*/:4'hc/* 12*/];
  assign T35 = {2'h0/* 0*/, 1'h1/* 1*/};
  assign operand1 = T16;
  assign T16 = T22 ? T23 : rs1_data;
  assign rs1_data = regfile_io_reads_0_dat;
  assign T23 = {31'h0/* 0*/, 1'h0/* 0*/};
  assign T22 = op == 3'h4/* 4*/;
  assign rd = T3;
  assign T3 = inst[2'h3/* 3*/:1'h0/* 0*/];
  assign subtract_sel = T5;
  assign T5 = T11 || T12;
  assign T12 = op == T26;
  assign T26 = {1'h0/* 0*/, 2'h3/* 3*/};
  assign T11 = op == T25;
  assign T25 = {2'h0/* 0*/, 1'h1/* 1*/};
  assign adder_out = T4;
  assign T4 = operand1 + operand2;
  assign adder_sel = T2;
  assign T2 = T9 || T10;
  assign T10 = T20 || T21;
  assign T21 = op == 3'h4/* 4*/;
  assign T20 = op == T33;
  assign T33 = {1'h0/* 0*/, 2'h2/* 2*/};
  assign T9 = op == T19;
  assign T19 = {2'h0/* 0*/, 1'h0/* 0*/};
  assign rs2 = T1;
  assign T1 = inst[3'h7/* 7*/:3'h4/* 4*/];
  assign rs1 = T0;
  assign T0 = inst[4'hb/* 11*/:4'h8/* 8*/];
  assign imem_addr = pc_reg;
  assign T8 = T18 || T13;
  assign T13 = isJmp;
  assign isJmp = T27;
  assign T27 = op == 3'h6/* 6*/;
  assign T18 = isNotJmp;
  assign isNotJmp = T32;
  assign T32 = ~ T37;
  assign T37 = op == 3'h6/* 6*/;
  assign T7 = T13 ? T14 : T15;
  assign T15 = pc_plus4;
  assign pc_plus4 = T29;
  assign T29 = pc_reg + T34;
  assign T34 = {3'h0/* 0*/, 1'h1/* 1*/};
  assign T14 = jmpTarget;
  assign jmpTarget = T28;
  assign T28 = imm[2'h3/* 3*/:1'h0/* 0*/];
  assign io_read_addr_ready = 1'h1/* 1*/;
  assign io_read_data_bits = regfile_io_reads_2_dat;
  assign io_read_data_valid = io_read_addr_valid;
  TICache imem(.clk(clk), .reset(reset),
       .io_req_valid( 1'h1/* 1*/ ),
       .mem_addr( imem_addr ),
       .io_resp( imem_io_resp )
  );
  TransactionMem regfile(.clk(clk),
       .io_reads_0_is( 1'h1/* 1*/ ),
       .io_reads_0_adr( rs1 ),
       .io_reads_0_dat( regfile_io_reads_0_dat ),
       .io_reads_1_is( 1'h1/* 1*/ ),
       .io_reads_1_adr( rs2 ),
       .io_reads_1_dat( regfile_io_reads_1_dat ),
       .io_reads_2_is( 1'h1/* 1*/ ),
       .io_reads_2_adr( io_read_addr_bits ),
       .io_reads_2_dat( regfile_io_reads_2_dat ),
       .io_writes_0_is( adder_sel ),
       .io_writes_0_adr( rd ),
       .io_writes_0_dat( adder_out ),
       .io_writes_1_is( subtract_sel ),
       .io_writes_1_adr( rd ),
       .io_writes_1_dat( subtract_out )
  );

  always @(posedge clk) begin
    if(reset) begin
      pc_reg <= 4'h0/* 0*/;
    end else if(T8) begin
      pc_reg <= T7;
    end
  end
endmodule

