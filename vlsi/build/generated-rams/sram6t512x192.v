`timescale 1ns/10ps

module sram6t512x192 ( A1, CE1, WEB1, WBM1, OEB1, CSB1, I1, O1 );
input CE1;
input WEB1;
input OEB1;
input CSB1;
input [8:0] A1;
input [191:0] I1;
output reg [191:0] O1;
input [23:0] WBM1;

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
$setuphold(posedge CE1, I1[128], 0, 0, notifier);
$setuphold(posedge CE1, I1[129], 0, 0, notifier);
$setuphold(posedge CE1, I1[130], 0, 0, notifier);
$setuphold(posedge CE1, I1[131], 0, 0, notifier);
$setuphold(posedge CE1, I1[132], 0, 0, notifier);
$setuphold(posedge CE1, I1[133], 0, 0, notifier);
$setuphold(posedge CE1, I1[134], 0, 0, notifier);
$setuphold(posedge CE1, I1[135], 0, 0, notifier);
$setuphold(posedge CE1, I1[136], 0, 0, notifier);
$setuphold(posedge CE1, I1[137], 0, 0, notifier);
$setuphold(posedge CE1, I1[138], 0, 0, notifier);
$setuphold(posedge CE1, I1[139], 0, 0, notifier);
$setuphold(posedge CE1, I1[140], 0, 0, notifier);
$setuphold(posedge CE1, I1[141], 0, 0, notifier);
$setuphold(posedge CE1, I1[142], 0, 0, notifier);
$setuphold(posedge CE1, I1[143], 0, 0, notifier);
$setuphold(posedge CE1, I1[144], 0, 0, notifier);
$setuphold(posedge CE1, I1[145], 0, 0, notifier);
$setuphold(posedge CE1, I1[146], 0, 0, notifier);
$setuphold(posedge CE1, I1[147], 0, 0, notifier);
$setuphold(posedge CE1, I1[148], 0, 0, notifier);
$setuphold(posedge CE1, I1[149], 0, 0, notifier);
$setuphold(posedge CE1, I1[150], 0, 0, notifier);
$setuphold(posedge CE1, I1[151], 0, 0, notifier);
$setuphold(posedge CE1, I1[152], 0, 0, notifier);
$setuphold(posedge CE1, I1[153], 0, 0, notifier);
$setuphold(posedge CE1, I1[154], 0, 0, notifier);
$setuphold(posedge CE1, I1[155], 0, 0, notifier);
$setuphold(posedge CE1, I1[156], 0, 0, notifier);
$setuphold(posedge CE1, I1[157], 0, 0, notifier);
$setuphold(posedge CE1, I1[158], 0, 0, notifier);
$setuphold(posedge CE1, I1[159], 0, 0, notifier);
$setuphold(posedge CE1, I1[160], 0, 0, notifier);
$setuphold(posedge CE1, I1[161], 0, 0, notifier);
$setuphold(posedge CE1, I1[162], 0, 0, notifier);
$setuphold(posedge CE1, I1[163], 0, 0, notifier);
$setuphold(posedge CE1, I1[164], 0, 0, notifier);
$setuphold(posedge CE1, I1[165], 0, 0, notifier);
$setuphold(posedge CE1, I1[166], 0, 0, notifier);
$setuphold(posedge CE1, I1[167], 0, 0, notifier);
$setuphold(posedge CE1, I1[168], 0, 0, notifier);
$setuphold(posedge CE1, I1[169], 0, 0, notifier);
$setuphold(posedge CE1, I1[170], 0, 0, notifier);
$setuphold(posedge CE1, I1[171], 0, 0, notifier);
$setuphold(posedge CE1, I1[172], 0, 0, notifier);
$setuphold(posedge CE1, I1[173], 0, 0, notifier);
$setuphold(posedge CE1, I1[174], 0, 0, notifier);
$setuphold(posedge CE1, I1[175], 0, 0, notifier);
$setuphold(posedge CE1, I1[176], 0, 0, notifier);
$setuphold(posedge CE1, I1[177], 0, 0, notifier);
$setuphold(posedge CE1, I1[178], 0, 0, notifier);
$setuphold(posedge CE1, I1[179], 0, 0, notifier);
$setuphold(posedge CE1, I1[180], 0, 0, notifier);
$setuphold(posedge CE1, I1[181], 0, 0, notifier);
$setuphold(posedge CE1, I1[182], 0, 0, notifier);
$setuphold(posedge CE1, I1[183], 0, 0, notifier);
$setuphold(posedge CE1, I1[184], 0, 0, notifier);
$setuphold(posedge CE1, I1[185], 0, 0, notifier);
$setuphold(posedge CE1, I1[186], 0, 0, notifier);
$setuphold(posedge CE1, I1[187], 0, 0, notifier);
$setuphold(posedge CE1, I1[188], 0, 0, notifier);
$setuphold(posedge CE1, I1[189], 0, 0, notifier);
$setuphold(posedge CE1, I1[190], 0, 0, notifier);
$setuphold(posedge CE1, I1[191], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[0], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[1], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[2], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[3], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[4], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[5], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[6], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[7], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[8], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[9], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[10], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[11], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[12], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[13], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[14], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[15], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[16], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[17], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[18], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[19], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[20], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[21], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[22], 0, 0, notifier);
$setuphold(posedge CE1, WBM1[23], 0, 0, notifier);
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
(posedge CE1 => O1[128]) = (0.3:0.3:0.3);
(posedge CE1 => O1[129]) = (0.3:0.3:0.3);
(posedge CE1 => O1[130]) = (0.3:0.3:0.3);
(posedge CE1 => O1[131]) = (0.3:0.3:0.3);
(posedge CE1 => O1[132]) = (0.3:0.3:0.3);
(posedge CE1 => O1[133]) = (0.3:0.3:0.3);
(posedge CE1 => O1[134]) = (0.3:0.3:0.3);
(posedge CE1 => O1[135]) = (0.3:0.3:0.3);
(posedge CE1 => O1[136]) = (0.3:0.3:0.3);
(posedge CE1 => O1[137]) = (0.3:0.3:0.3);
(posedge CE1 => O1[138]) = (0.3:0.3:0.3);
(posedge CE1 => O1[139]) = (0.3:0.3:0.3);
(posedge CE1 => O1[140]) = (0.3:0.3:0.3);
(posedge CE1 => O1[141]) = (0.3:0.3:0.3);
(posedge CE1 => O1[142]) = (0.3:0.3:0.3);
(posedge CE1 => O1[143]) = (0.3:0.3:0.3);
(posedge CE1 => O1[144]) = (0.3:0.3:0.3);
(posedge CE1 => O1[145]) = (0.3:0.3:0.3);
(posedge CE1 => O1[146]) = (0.3:0.3:0.3);
(posedge CE1 => O1[147]) = (0.3:0.3:0.3);
(posedge CE1 => O1[148]) = (0.3:0.3:0.3);
(posedge CE1 => O1[149]) = (0.3:0.3:0.3);
(posedge CE1 => O1[150]) = (0.3:0.3:0.3);
(posedge CE1 => O1[151]) = (0.3:0.3:0.3);
(posedge CE1 => O1[152]) = (0.3:0.3:0.3);
(posedge CE1 => O1[153]) = (0.3:0.3:0.3);
(posedge CE1 => O1[154]) = (0.3:0.3:0.3);
(posedge CE1 => O1[155]) = (0.3:0.3:0.3);
(posedge CE1 => O1[156]) = (0.3:0.3:0.3);
(posedge CE1 => O1[157]) = (0.3:0.3:0.3);
(posedge CE1 => O1[158]) = (0.3:0.3:0.3);
(posedge CE1 => O1[159]) = (0.3:0.3:0.3);
(posedge CE1 => O1[160]) = (0.3:0.3:0.3);
(posedge CE1 => O1[161]) = (0.3:0.3:0.3);
(posedge CE1 => O1[162]) = (0.3:0.3:0.3);
(posedge CE1 => O1[163]) = (0.3:0.3:0.3);
(posedge CE1 => O1[164]) = (0.3:0.3:0.3);
(posedge CE1 => O1[165]) = (0.3:0.3:0.3);
(posedge CE1 => O1[166]) = (0.3:0.3:0.3);
(posedge CE1 => O1[167]) = (0.3:0.3:0.3);
(posedge CE1 => O1[168]) = (0.3:0.3:0.3);
(posedge CE1 => O1[169]) = (0.3:0.3:0.3);
(posedge CE1 => O1[170]) = (0.3:0.3:0.3);
(posedge CE1 => O1[171]) = (0.3:0.3:0.3);
(posedge CE1 => O1[172]) = (0.3:0.3:0.3);
(posedge CE1 => O1[173]) = (0.3:0.3:0.3);
(posedge CE1 => O1[174]) = (0.3:0.3:0.3);
(posedge CE1 => O1[175]) = (0.3:0.3:0.3);
(posedge CE1 => O1[176]) = (0.3:0.3:0.3);
(posedge CE1 => O1[177]) = (0.3:0.3:0.3);
(posedge CE1 => O1[178]) = (0.3:0.3:0.3);
(posedge CE1 => O1[179]) = (0.3:0.3:0.3);
(posedge CE1 => O1[180]) = (0.3:0.3:0.3);
(posedge CE1 => O1[181]) = (0.3:0.3:0.3);
(posedge CE1 => O1[182]) = (0.3:0.3:0.3);
(posedge CE1 => O1[183]) = (0.3:0.3:0.3);
(posedge CE1 => O1[184]) = (0.3:0.3:0.3);
(posedge CE1 => O1[185]) = (0.3:0.3:0.3);
(posedge CE1 => O1[186]) = (0.3:0.3:0.3);
(posedge CE1 => O1[187]) = (0.3:0.3:0.3);
(posedge CE1 => O1[188]) = (0.3:0.3:0.3);
(posedge CE1 => O1[189]) = (0.3:0.3:0.3);
(posedge CE1 => O1[190]) = (0.3:0.3:0.3);
(posedge CE1 => O1[191]) = (0.3:0.3:0.3);
endspecify

reg [191:0] memory[511:0];
always @ (posedge CE1)
begin
  if (~CSB1 & WEB1)
    O1 <= memory[A1];
  else if (~CSB1 & ~WEB1)
  begin
    if (WBM1[0])
      memory[A1][7:0] <= I1[7:0];
    if (WBM1[1])
      memory[A1][15:8] <= I1[15:8];
    if (WBM1[2])
      memory[A1][23:16] <= I1[23:16];
    if (WBM1[3])
      memory[A1][31:24] <= I1[31:24];
    if (WBM1[4])
      memory[A1][39:32] <= I1[39:32];
    if (WBM1[5])
      memory[A1][47:40] <= I1[47:40];
    if (WBM1[6])
      memory[A1][55:48] <= I1[55:48];
    if (WBM1[7])
      memory[A1][63:56] <= I1[63:56];
    if (WBM1[8])
      memory[A1][71:64] <= I1[71:64];
    if (WBM1[9])
      memory[A1][79:72] <= I1[79:72];
    if (WBM1[10])
      memory[A1][87:80] <= I1[87:80];
    if (WBM1[11])
      memory[A1][95:88] <= I1[95:88];
    if (WBM1[12])
      memory[A1][103:96] <= I1[103:96];
    if (WBM1[13])
      memory[A1][111:104] <= I1[111:104];
    if (WBM1[14])
      memory[A1][119:112] <= I1[119:112];
    if (WBM1[15])
      memory[A1][127:120] <= I1[127:120];
    if (WBM1[16])
      memory[A1][135:128] <= I1[135:128];
    if (WBM1[17])
      memory[A1][143:136] <= I1[143:136];
    if (WBM1[18])
      memory[A1][151:144] <= I1[151:144];
    if (WBM1[19])
      memory[A1][159:152] <= I1[159:152];
    if (WBM1[20])
      memory[A1][167:160] <= I1[167:160];
    if (WBM1[21])
      memory[A1][175:168] <= I1[175:168];
    if (WBM1[22])
      memory[A1][183:176] <= I1[183:176];
    if (WBM1[23])
      memory[A1][191:184] <= I1[191:184];
  end
end


endmodule