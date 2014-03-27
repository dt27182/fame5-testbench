`timescale 1ns/10ps

module sram8t128x96 ( A1, CE1, OEB1, CSB1, O1, A2, CE2, WEB2, WBM2, CSB2, I2 );
input CE1;
input OEB1;
input CSB1;
input [6:0] A1;
output reg [95:0] O1;
input CE2;
input WEB2;
input CSB2;
input [6:0] A2;
input [95:0] I2;
input [11:0] WBM2;

reg notifier;

specify
$setuphold(posedge CE1, OEB1, 0, 0, notifier);
$setuphold(posedge CE1, CSB1, 0, 0, notifier);
$setuphold(posedge CE1, A1[0], 0, 0, notifier);
$setuphold(posedge CE1, A1[1], 0, 0, notifier);
$setuphold(posedge CE1, A1[2], 0, 0, notifier);
$setuphold(posedge CE1, A1[3], 0, 0, notifier);
$setuphold(posedge CE1, A1[4], 0, 0, notifier);
$setuphold(posedge CE1, A1[5], 0, 0, notifier);
$setuphold(posedge CE1, A1[6], 0, 0, notifier);
(posedge CE1 => O1[0]) = (0.3:0.3:0.3);
(posedge CE1 => O1[1]) = (0.3:0.3:0.3);
(posedge CE1 => O1[2]) = (0.3:0.3:0.3);
(posedge CE1 => O1[3]) = (0.3:0.3:0.3);
(posedge CE1 => O1[4]) = (0.3:0.3:0.3);
(posedge CE1 => O1[5]) = (0.3:0.3:0.3);
(posedge CE1 => O1[6]) = (0.3:0.3:0.3);
(posedge CE1 => O1[7]) = (0.3:0.3:0.3);
(posedge CE1 => O1[8]) = (0.3:0.3:0.3);
(posedge CE1 => O1[9]) = (0.3:0.3:0.3);
(posedge CE1 => O1[10]) = (0.3:0.3:0.3);
(posedge CE1 => O1[11]) = (0.3:0.3:0.3);
(posedge CE1 => O1[12]) = (0.3:0.3:0.3);
(posedge CE1 => O1[13]) = (0.3:0.3:0.3);
(posedge CE1 => O1[14]) = (0.3:0.3:0.3);
(posedge CE1 => O1[15]) = (0.3:0.3:0.3);
(posedge CE1 => O1[16]) = (0.3:0.3:0.3);
(posedge CE1 => O1[17]) = (0.3:0.3:0.3);
(posedge CE1 => O1[18]) = (0.3:0.3:0.3);
(posedge CE1 => O1[19]) = (0.3:0.3:0.3);
(posedge CE1 => O1[20]) = (0.3:0.3:0.3);
(posedge CE1 => O1[21]) = (0.3:0.3:0.3);
(posedge CE1 => O1[22]) = (0.3:0.3:0.3);
(posedge CE1 => O1[23]) = (0.3:0.3:0.3);
(posedge CE1 => O1[24]) = (0.3:0.3:0.3);
(posedge CE1 => O1[25]) = (0.3:0.3:0.3);
(posedge CE1 => O1[26]) = (0.3:0.3:0.3);
(posedge CE1 => O1[27]) = (0.3:0.3:0.3);
(posedge CE1 => O1[28]) = (0.3:0.3:0.3);
(posedge CE1 => O1[29]) = (0.3:0.3:0.3);
(posedge CE1 => O1[30]) = (0.3:0.3:0.3);
(posedge CE1 => O1[31]) = (0.3:0.3:0.3);
(posedge CE1 => O1[32]) = (0.3:0.3:0.3);
(posedge CE1 => O1[33]) = (0.3:0.3:0.3);
(posedge CE1 => O1[34]) = (0.3:0.3:0.3);
(posedge CE1 => O1[35]) = (0.3:0.3:0.3);
(posedge CE1 => O1[36]) = (0.3:0.3:0.3);
(posedge CE1 => O1[37]) = (0.3:0.3:0.3);
(posedge CE1 => O1[38]) = (0.3:0.3:0.3);
(posedge CE1 => O1[39]) = (0.3:0.3:0.3);
(posedge CE1 => O1[40]) = (0.3:0.3:0.3);
(posedge CE1 => O1[41]) = (0.3:0.3:0.3);
(posedge CE1 => O1[42]) = (0.3:0.3:0.3);
(posedge CE1 => O1[43]) = (0.3:0.3:0.3);
(posedge CE1 => O1[44]) = (0.3:0.3:0.3);
(posedge CE1 => O1[45]) = (0.3:0.3:0.3);
(posedge CE1 => O1[46]) = (0.3:0.3:0.3);
(posedge CE1 => O1[47]) = (0.3:0.3:0.3);
(posedge CE1 => O1[48]) = (0.3:0.3:0.3);
(posedge CE1 => O1[49]) = (0.3:0.3:0.3);
(posedge CE1 => O1[50]) = (0.3:0.3:0.3);
(posedge CE1 => O1[51]) = (0.3:0.3:0.3);
(posedge CE1 => O1[52]) = (0.3:0.3:0.3);
(posedge CE1 => O1[53]) = (0.3:0.3:0.3);
(posedge CE1 => O1[54]) = (0.3:0.3:0.3);
(posedge CE1 => O1[55]) = (0.3:0.3:0.3);
(posedge CE1 => O1[56]) = (0.3:0.3:0.3);
(posedge CE1 => O1[57]) = (0.3:0.3:0.3);
(posedge CE1 => O1[58]) = (0.3:0.3:0.3);
(posedge CE1 => O1[59]) = (0.3:0.3:0.3);
(posedge CE1 => O1[60]) = (0.3:0.3:0.3);
(posedge CE1 => O1[61]) = (0.3:0.3:0.3);
(posedge CE1 => O1[62]) = (0.3:0.3:0.3);
(posedge CE1 => O1[63]) = (0.3:0.3:0.3);
(posedge CE1 => O1[64]) = (0.3:0.3:0.3);
(posedge CE1 => O1[65]) = (0.3:0.3:0.3);
(posedge CE1 => O1[66]) = (0.3:0.3:0.3);
(posedge CE1 => O1[67]) = (0.3:0.3:0.3);
(posedge CE1 => O1[68]) = (0.3:0.3:0.3);
(posedge CE1 => O1[69]) = (0.3:0.3:0.3);
(posedge CE1 => O1[70]) = (0.3:0.3:0.3);
(posedge CE1 => O1[71]) = (0.3:0.3:0.3);
(posedge CE1 => O1[72]) = (0.3:0.3:0.3);
(posedge CE1 => O1[73]) = (0.3:0.3:0.3);
(posedge CE1 => O1[74]) = (0.3:0.3:0.3);
(posedge CE1 => O1[75]) = (0.3:0.3:0.3);
(posedge CE1 => O1[76]) = (0.3:0.3:0.3);
(posedge CE1 => O1[77]) = (0.3:0.3:0.3);
(posedge CE1 => O1[78]) = (0.3:0.3:0.3);
(posedge CE1 => O1[79]) = (0.3:0.3:0.3);
(posedge CE1 => O1[80]) = (0.3:0.3:0.3);
(posedge CE1 => O1[81]) = (0.3:0.3:0.3);
(posedge CE1 => O1[82]) = (0.3:0.3:0.3);
(posedge CE1 => O1[83]) = (0.3:0.3:0.3);
(posedge CE1 => O1[84]) = (0.3:0.3:0.3);
(posedge CE1 => O1[85]) = (0.3:0.3:0.3);
(posedge CE1 => O1[86]) = (0.3:0.3:0.3);
(posedge CE1 => O1[87]) = (0.3:0.3:0.3);
(posedge CE1 => O1[88]) = (0.3:0.3:0.3);
(posedge CE1 => O1[89]) = (0.3:0.3:0.3);
(posedge CE1 => O1[90]) = (0.3:0.3:0.3);
(posedge CE1 => O1[91]) = (0.3:0.3:0.3);
(posedge CE1 => O1[92]) = (0.3:0.3:0.3);
(posedge CE1 => O1[93]) = (0.3:0.3:0.3);
(posedge CE1 => O1[94]) = (0.3:0.3:0.3);
(posedge CE1 => O1[95]) = (0.3:0.3:0.3);
$setuphold(posedge CE2, WEB2, 0, 0, notifier);
$setuphold(posedge CE2, CSB2, 0, 0, notifier);
$setuphold(posedge CE2, A2[0], 0, 0, notifier);
$setuphold(posedge CE2, A2[1], 0, 0, notifier);
$setuphold(posedge CE2, A2[2], 0, 0, notifier);
$setuphold(posedge CE2, A2[3], 0, 0, notifier);
$setuphold(posedge CE2, A2[4], 0, 0, notifier);
$setuphold(posedge CE2, A2[5], 0, 0, notifier);
$setuphold(posedge CE2, A2[6], 0, 0, notifier);
$setuphold(posedge CE2, I2[0], 0, 0, notifier);
$setuphold(posedge CE2, I2[1], 0, 0, notifier);
$setuphold(posedge CE2, I2[2], 0, 0, notifier);
$setuphold(posedge CE2, I2[3], 0, 0, notifier);
$setuphold(posedge CE2, I2[4], 0, 0, notifier);
$setuphold(posedge CE2, I2[5], 0, 0, notifier);
$setuphold(posedge CE2, I2[6], 0, 0, notifier);
$setuphold(posedge CE2, I2[7], 0, 0, notifier);
$setuphold(posedge CE2, I2[8], 0, 0, notifier);
$setuphold(posedge CE2, I2[9], 0, 0, notifier);
$setuphold(posedge CE2, I2[10], 0, 0, notifier);
$setuphold(posedge CE2, I2[11], 0, 0, notifier);
$setuphold(posedge CE2, I2[12], 0, 0, notifier);
$setuphold(posedge CE2, I2[13], 0, 0, notifier);
$setuphold(posedge CE2, I2[14], 0, 0, notifier);
$setuphold(posedge CE2, I2[15], 0, 0, notifier);
$setuphold(posedge CE2, I2[16], 0, 0, notifier);
$setuphold(posedge CE2, I2[17], 0, 0, notifier);
$setuphold(posedge CE2, I2[18], 0, 0, notifier);
$setuphold(posedge CE2, I2[19], 0, 0, notifier);
$setuphold(posedge CE2, I2[20], 0, 0, notifier);
$setuphold(posedge CE2, I2[21], 0, 0, notifier);
$setuphold(posedge CE2, I2[22], 0, 0, notifier);
$setuphold(posedge CE2, I2[23], 0, 0, notifier);
$setuphold(posedge CE2, I2[24], 0, 0, notifier);
$setuphold(posedge CE2, I2[25], 0, 0, notifier);
$setuphold(posedge CE2, I2[26], 0, 0, notifier);
$setuphold(posedge CE2, I2[27], 0, 0, notifier);
$setuphold(posedge CE2, I2[28], 0, 0, notifier);
$setuphold(posedge CE2, I2[29], 0, 0, notifier);
$setuphold(posedge CE2, I2[30], 0, 0, notifier);
$setuphold(posedge CE2, I2[31], 0, 0, notifier);
$setuphold(posedge CE2, I2[32], 0, 0, notifier);
$setuphold(posedge CE2, I2[33], 0, 0, notifier);
$setuphold(posedge CE2, I2[34], 0, 0, notifier);
$setuphold(posedge CE2, I2[35], 0, 0, notifier);
$setuphold(posedge CE2, I2[36], 0, 0, notifier);
$setuphold(posedge CE2, I2[37], 0, 0, notifier);
$setuphold(posedge CE2, I2[38], 0, 0, notifier);
$setuphold(posedge CE2, I2[39], 0, 0, notifier);
$setuphold(posedge CE2, I2[40], 0, 0, notifier);
$setuphold(posedge CE2, I2[41], 0, 0, notifier);
$setuphold(posedge CE2, I2[42], 0, 0, notifier);
$setuphold(posedge CE2, I2[43], 0, 0, notifier);
$setuphold(posedge CE2, I2[44], 0, 0, notifier);
$setuphold(posedge CE2, I2[45], 0, 0, notifier);
$setuphold(posedge CE2, I2[46], 0, 0, notifier);
$setuphold(posedge CE2, I2[47], 0, 0, notifier);
$setuphold(posedge CE2, I2[48], 0, 0, notifier);
$setuphold(posedge CE2, I2[49], 0, 0, notifier);
$setuphold(posedge CE2, I2[50], 0, 0, notifier);
$setuphold(posedge CE2, I2[51], 0, 0, notifier);
$setuphold(posedge CE2, I2[52], 0, 0, notifier);
$setuphold(posedge CE2, I2[53], 0, 0, notifier);
$setuphold(posedge CE2, I2[54], 0, 0, notifier);
$setuphold(posedge CE2, I2[55], 0, 0, notifier);
$setuphold(posedge CE2, I2[56], 0, 0, notifier);
$setuphold(posedge CE2, I2[57], 0, 0, notifier);
$setuphold(posedge CE2, I2[58], 0, 0, notifier);
$setuphold(posedge CE2, I2[59], 0, 0, notifier);
$setuphold(posedge CE2, I2[60], 0, 0, notifier);
$setuphold(posedge CE2, I2[61], 0, 0, notifier);
$setuphold(posedge CE2, I2[62], 0, 0, notifier);
$setuphold(posedge CE2, I2[63], 0, 0, notifier);
$setuphold(posedge CE2, I2[64], 0, 0, notifier);
$setuphold(posedge CE2, I2[65], 0, 0, notifier);
$setuphold(posedge CE2, I2[66], 0, 0, notifier);
$setuphold(posedge CE2, I2[67], 0, 0, notifier);
$setuphold(posedge CE2, I2[68], 0, 0, notifier);
$setuphold(posedge CE2, I2[69], 0, 0, notifier);
$setuphold(posedge CE2, I2[70], 0, 0, notifier);
$setuphold(posedge CE2, I2[71], 0, 0, notifier);
$setuphold(posedge CE2, I2[72], 0, 0, notifier);
$setuphold(posedge CE2, I2[73], 0, 0, notifier);
$setuphold(posedge CE2, I2[74], 0, 0, notifier);
$setuphold(posedge CE2, I2[75], 0, 0, notifier);
$setuphold(posedge CE2, I2[76], 0, 0, notifier);
$setuphold(posedge CE2, I2[77], 0, 0, notifier);
$setuphold(posedge CE2, I2[78], 0, 0, notifier);
$setuphold(posedge CE2, I2[79], 0, 0, notifier);
$setuphold(posedge CE2, I2[80], 0, 0, notifier);
$setuphold(posedge CE2, I2[81], 0, 0, notifier);
$setuphold(posedge CE2, I2[82], 0, 0, notifier);
$setuphold(posedge CE2, I2[83], 0, 0, notifier);
$setuphold(posedge CE2, I2[84], 0, 0, notifier);
$setuphold(posedge CE2, I2[85], 0, 0, notifier);
$setuphold(posedge CE2, I2[86], 0, 0, notifier);
$setuphold(posedge CE2, I2[87], 0, 0, notifier);
$setuphold(posedge CE2, I2[88], 0, 0, notifier);
$setuphold(posedge CE2, I2[89], 0, 0, notifier);
$setuphold(posedge CE2, I2[90], 0, 0, notifier);
$setuphold(posedge CE2, I2[91], 0, 0, notifier);
$setuphold(posedge CE2, I2[92], 0, 0, notifier);
$setuphold(posedge CE2, I2[93], 0, 0, notifier);
$setuphold(posedge CE2, I2[94], 0, 0, notifier);
$setuphold(posedge CE2, I2[95], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[0], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[1], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[2], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[3], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[4], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[5], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[6], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[7], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[8], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[9], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[10], 0, 0, notifier);
$setuphold(posedge CE2, WBM2[11], 0, 0, notifier);
endspecify

reg [95:0] memory[127:0];
always @ (posedge CE1)
  if (~CSB1)
    O1 <= memory[A1];

always @ (posedge CE2)
begin
  if (~CSB2 & ~WEB2)
  begin
    if (WBM2[0])
      memory[A2][7:0] <= I2[7:0];
    if (WBM2[1])
      memory[A2][15:8] <= I2[15:8];
    if (WBM2[2])
      memory[A2][23:16] <= I2[23:16];
    if (WBM2[3])
      memory[A2][31:24] <= I2[31:24];
    if (WBM2[4])
      memory[A2][39:32] <= I2[39:32];
    if (WBM2[5])
      memory[A2][47:40] <= I2[47:40];
    if (WBM2[6])
      memory[A2][55:48] <= I2[55:48];
    if (WBM2[7])
      memory[A2][63:56] <= I2[63:56];
    if (WBM2[8])
      memory[A2][71:64] <= I2[71:64];
    if (WBM2[9])
      memory[A2][79:72] <= I2[79:72];
    if (WBM2[10])
      memory[A2][87:80] <= I2[87:80];
    if (WBM2[11])
      memory[A2][95:88] <= I2[95:88];
  end
end

endmodule