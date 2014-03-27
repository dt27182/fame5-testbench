`timescale 1ns/10ps

module sram6t512x128 ( A1, CE1, WEB1, OEB1, CSB1, I1, O1 );
input CE1;
input WEB1;
input OEB1;
input CSB1;
input [8:0] A1;
input [127:0] I1;
output reg [127:0] O1;

reg notifier;

specify
$setuphold(posedge CE1, WEB1, 0, 0, notifier);
$setuphold(posedge CE1, OEB1, 0, 0, notifier);
$setuphold(posedge CE1, CSB1, 0, 0, notifier);
$setuphold(posedge CE1, A1[0], 0, 0, notifier);
$setuphold(posedge CE1, A1[1], 0, 0, notifier);
$setuphold(posedge CE1, A1[2], 0, 0, notifier);
$setuphold(posedge CE1, A1[3], 0, 0, notifier);
$setuphold(posedge CE1, A1[4], 0, 0, notifier);
$setuphold(posedge CE1, A1[5], 0, 0, notifier);
$setuphold(posedge CE1, A1[6], 0, 0, notifier);
$setuphold(posedge CE1, A1[7], 0, 0, notifier);
$setuphold(posedge CE1, A1[8], 0, 0, notifier);
$setuphold(posedge CE1, I1[0], 0, 0, notifier);
$setuphold(posedge CE1, I1[1], 0, 0, notifier);
$setuphold(posedge CE1, I1[2], 0, 0, notifier);
$setuphold(posedge CE1, I1[3], 0, 0, notifier);
$setuphold(posedge CE1, I1[4], 0, 0, notifier);
$setuphold(posedge CE1, I1[5], 0, 0, notifier);
$setuphold(posedge CE1, I1[6], 0, 0, notifier);
$setuphold(posedge CE1, I1[7], 0, 0, notifier);
$setuphold(posedge CE1, I1[8], 0, 0, notifier);
$setuphold(posedge CE1, I1[9], 0, 0, notifier);
$setuphold(posedge CE1, I1[10], 0, 0, notifier);
$setuphold(posedge CE1, I1[11], 0, 0, notifier);
$setuphold(posedge CE1, I1[12], 0, 0, notifier);
$setuphold(posedge CE1, I1[13], 0, 0, notifier);
$setuphold(posedge CE1, I1[14], 0, 0, notifier);
$setuphold(posedge CE1, I1[15], 0, 0, notifier);
$setuphold(posedge CE1, I1[16], 0, 0, notifier);
$setuphold(posedge CE1, I1[17], 0, 0, notifier);
$setuphold(posedge CE1, I1[18], 0, 0, notifier);
$setuphold(posedge CE1, I1[19], 0, 0, notifier);
$setuphold(posedge CE1, I1[20], 0, 0, notifier);
$setuphold(posedge CE1, I1[21], 0, 0, notifier);
$setuphold(posedge CE1, I1[22], 0, 0, notifier);
$setuphold(posedge CE1, I1[23], 0, 0, notifier);
$setuphold(posedge CE1, I1[24], 0, 0, notifier);
$setuphold(posedge CE1, I1[25], 0, 0, notifier);
$setuphold(posedge CE1, I1[26], 0, 0, notifier);
$setuphold(posedge CE1, I1[27], 0, 0, notifier);
$setuphold(posedge CE1, I1[28], 0, 0, notifier);
$setuphold(posedge CE1, I1[29], 0, 0, notifier);
$setuphold(posedge CE1, I1[30], 0, 0, notifier);
$setuphold(posedge CE1, I1[31], 0, 0, notifier);
$setuphold(posedge CE1, I1[32], 0, 0, notifier);
$setuphold(posedge CE1, I1[33], 0, 0, notifier);
$setuphold(posedge CE1, I1[34], 0, 0, notifier);
$setuphold(posedge CE1, I1[35], 0, 0, notifier);
$setuphold(posedge CE1, I1[36], 0, 0, notifier);
$setuphold(posedge CE1, I1[37], 0, 0, notifier);
$setuphold(posedge CE1, I1[38], 0, 0, notifier);
$setuphold(posedge CE1, I1[39], 0, 0, notifier);
$setuphold(posedge CE1, I1[40], 0, 0, notifier);
$setuphold(posedge CE1, I1[41], 0, 0, notifier);
$setuphold(posedge CE1, I1[42], 0, 0, notifier);
$setuphold(posedge CE1, I1[43], 0, 0, notifier);
$setuphold(posedge CE1, I1[44], 0, 0, notifier);
$setuphold(posedge CE1, I1[45], 0, 0, notifier);
$setuphold(posedge CE1, I1[46], 0, 0, notifier);
$setuphold(posedge CE1, I1[47], 0, 0, notifier);
$setuphold(posedge CE1, I1[48], 0, 0, notifier);
$setuphold(posedge CE1, I1[49], 0, 0, notifier);
$setuphold(posedge CE1, I1[50], 0, 0, notifier);
$setuphold(posedge CE1, I1[51], 0, 0, notifier);
$setuphold(posedge CE1, I1[52], 0, 0, notifier);
$setuphold(posedge CE1, I1[53], 0, 0, notifier);
$setuphold(posedge CE1, I1[54], 0, 0, notifier);
$setuphold(posedge CE1, I1[55], 0, 0, notifier);
$setuphold(posedge CE1, I1[56], 0, 0, notifier);
$setuphold(posedge CE1, I1[57], 0, 0, notifier);
$setuphold(posedge CE1, I1[58], 0, 0, notifier);
$setuphold(posedge CE1, I1[59], 0, 0, notifier);
$setuphold(posedge CE1, I1[60], 0, 0, notifier);
$setuphold(posedge CE1, I1[61], 0, 0, notifier);
$setuphold(posedge CE1, I1[62], 0, 0, notifier);
$setuphold(posedge CE1, I1[63], 0, 0, notifier);
$setuphold(posedge CE1, I1[64], 0, 0, notifier);
$setuphold(posedge CE1, I1[65], 0, 0, notifier);
$setuphold(posedge CE1, I1[66], 0, 0, notifier);
$setuphold(posedge CE1, I1[67], 0, 0, notifier);
$setuphold(posedge CE1, I1[68], 0, 0, notifier);
$setuphold(posedge CE1, I1[69], 0, 0, notifier);
$setuphold(posedge CE1, I1[70], 0, 0, notifier);
$setuphold(posedge CE1, I1[71], 0, 0, notifier);
$setuphold(posedge CE1, I1[72], 0, 0, notifier);
$setuphold(posedge CE1, I1[73], 0, 0, notifier);
$setuphold(posedge CE1, I1[74], 0, 0, notifier);
$setuphold(posedge CE1, I1[75], 0, 0, notifier);
$setuphold(posedge CE1, I1[76], 0, 0, notifier);
$setuphold(posedge CE1, I1[77], 0, 0, notifier);
$setuphold(posedge CE1, I1[78], 0, 0, notifier);
$setuphold(posedge CE1, I1[79], 0, 0, notifier);
$setuphold(posedge CE1, I1[80], 0, 0, notifier);
$setuphold(posedge CE1, I1[81], 0, 0, notifier);
$setuphold(posedge CE1, I1[82], 0, 0, notifier);
$setuphold(posedge CE1, I1[83], 0, 0, notifier);
$setuphold(posedge CE1, I1[84], 0, 0, notifier);
$setuphold(posedge CE1, I1[85], 0, 0, notifier);
$setuphold(posedge CE1, I1[86], 0, 0, notifier);
$setuphold(posedge CE1, I1[87], 0, 0, notifier);
$setuphold(posedge CE1, I1[88], 0, 0, notifier);
$setuphold(posedge CE1, I1[89], 0, 0, notifier);
$setuphold(posedge CE1, I1[90], 0, 0, notifier);
$setuphold(posedge CE1, I1[91], 0, 0, notifier);
$setuphold(posedge CE1, I1[92], 0, 0, notifier);
$setuphold(posedge CE1, I1[93], 0, 0, notifier);
$setuphold(posedge CE1, I1[94], 0, 0, notifier);
$setuphold(posedge CE1, I1[95], 0, 0, notifier);
$setuphold(posedge CE1, I1[96], 0, 0, notifier);
$setuphold(posedge CE1, I1[97], 0, 0, notifier);
$setuphold(posedge CE1, I1[98], 0, 0, notifier);
$setuphold(posedge CE1, I1[99], 0, 0, notifier);
$setuphold(posedge CE1, I1[100], 0, 0, notifier);
$setuphold(posedge CE1, I1[101], 0, 0, notifier);
$setuphold(posedge CE1, I1[102], 0, 0, notifier);
$setuphold(posedge CE1, I1[103], 0, 0, notifier);
$setuphold(posedge CE1, I1[104], 0, 0, notifier);
$setuphold(posedge CE1, I1[105], 0, 0, notifier);
$setuphold(posedge CE1, I1[106], 0, 0, notifier);
$setuphold(posedge CE1, I1[107], 0, 0, notifier);
$setuphold(posedge CE1, I1[108], 0, 0, notifier);
$setuphold(posedge CE1, I1[109], 0, 0, notifier);
$setuphold(posedge CE1, I1[110], 0, 0, notifier);
$setuphold(posedge CE1, I1[111], 0, 0, notifier);
$setuphold(posedge CE1, I1[112], 0, 0, notifier);
$setuphold(posedge CE1, I1[113], 0, 0, notifier);
$setuphold(posedge CE1, I1[114], 0, 0, notifier);
$setuphold(posedge CE1, I1[115], 0, 0, notifier);
$setuphold(posedge CE1, I1[116], 0, 0, notifier);
$setuphold(posedge CE1, I1[117], 0, 0, notifier);
$setuphold(posedge CE1, I1[118], 0, 0, notifier);
$setuphold(posedge CE1, I1[119], 0, 0, notifier);
$setuphold(posedge CE1, I1[120], 0, 0, notifier);
$setuphold(posedge CE1, I1[121], 0, 0, notifier);
$setuphold(posedge CE1, I1[122], 0, 0, notifier);
$setuphold(posedge CE1, I1[123], 0, 0, notifier);
$setuphold(posedge CE1, I1[124], 0, 0, notifier);
$setuphold(posedge CE1, I1[125], 0, 0, notifier);
$setuphold(posedge CE1, I1[126], 0, 0, notifier);
$setuphold(posedge CE1, I1[127], 0, 0, notifier);
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
(posedge CE1 => O1[96]) = (0.3:0.3:0.3);
(posedge CE1 => O1[97]) = (0.3:0.3:0.3);
(posedge CE1 => O1[98]) = (0.3:0.3:0.3);
(posedge CE1 => O1[99]) = (0.3:0.3:0.3);
(posedge CE1 => O1[100]) = (0.3:0.3:0.3);
(posedge CE1 => O1[101]) = (0.3:0.3:0.3);
(posedge CE1 => O1[102]) = (0.3:0.3:0.3);
(posedge CE1 => O1[103]) = (0.3:0.3:0.3);
(posedge CE1 => O1[104]) = (0.3:0.3:0.3);
(posedge CE1 => O1[105]) = (0.3:0.3:0.3);
(posedge CE1 => O1[106]) = (0.3:0.3:0.3);
(posedge CE1 => O1[107]) = (0.3:0.3:0.3);
(posedge CE1 => O1[108]) = (0.3:0.3:0.3);
(posedge CE1 => O1[109]) = (0.3:0.3:0.3);
(posedge CE1 => O1[110]) = (0.3:0.3:0.3);
(posedge CE1 => O1[111]) = (0.3:0.3:0.3);
(posedge CE1 => O1[112]) = (0.3:0.3:0.3);
(posedge CE1 => O1[113]) = (0.3:0.3:0.3);
(posedge CE1 => O1[114]) = (0.3:0.3:0.3);
(posedge CE1 => O1[115]) = (0.3:0.3:0.3);
(posedge CE1 => O1[116]) = (0.3:0.3:0.3);
(posedge CE1 => O1[117]) = (0.3:0.3:0.3);
(posedge CE1 => O1[118]) = (0.3:0.3:0.3);
(posedge CE1 => O1[119]) = (0.3:0.3:0.3);
(posedge CE1 => O1[120]) = (0.3:0.3:0.3);
(posedge CE1 => O1[121]) = (0.3:0.3:0.3);
(posedge CE1 => O1[122]) = (0.3:0.3:0.3);
(posedge CE1 => O1[123]) = (0.3:0.3:0.3);
(posedge CE1 => O1[124]) = (0.3:0.3:0.3);
(posedge CE1 => O1[125]) = (0.3:0.3:0.3);
(posedge CE1 => O1[126]) = (0.3:0.3:0.3);
(posedge CE1 => O1[127]) = (0.3:0.3:0.3);
endspecify

reg [127:0] memory[511:0];
always @ (posedge CE1)
begin
  if (~CSB1 & WEB1)
    O1 <= memory[A1];
  else if (~CSB1 & ~WEB1)
  begin
    memory[A1] <= I1;
  end
end


endmodule
