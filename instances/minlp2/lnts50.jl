using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 257]
@variable(m, x[x_Idx])
set_lower_bound(x[52], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[255], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[257], 0.0)
set_lower_bound(x[1], -1.5707963267949)
set_upper_bound(x[1], 1.5707963267949)
set_lower_bound(x[2], -1.5707963267949)
set_upper_bound(x[2], 1.5707963267949)
set_lower_bound(x[3], -1.5707963267949)
set_upper_bound(x[3], 1.5707963267949)
set_lower_bound(x[4], -1.5707963267949)
set_upper_bound(x[4], 1.5707963267949)
set_lower_bound(x[5], -1.5707963267949)
set_upper_bound(x[5], 1.5707963267949)
set_lower_bound(x[6], -1.5707963267949)
set_upper_bound(x[6], 1.5707963267949)
set_lower_bound(x[7], -1.5707963267949)
set_upper_bound(x[7], 1.5707963267949)
set_lower_bound(x[8], -1.5707963267949)
set_upper_bound(x[8], 1.5707963267949)
set_lower_bound(x[9], -1.5707963267949)
set_upper_bound(x[9], 1.5707963267949)
set_lower_bound(x[10], -1.5707963267949)
set_upper_bound(x[10], 1.5707963267949)
set_lower_bound(x[11], -1.5707963267949)
set_upper_bound(x[11], 1.5707963267949)
set_lower_bound(x[12], -1.5707963267949)
set_upper_bound(x[12], 1.5707963267949)
set_lower_bound(x[13], -1.5707963267949)
set_upper_bound(x[13], 1.5707963267949)
set_lower_bound(x[14], -1.5707963267949)
set_upper_bound(x[14], 1.5707963267949)
set_lower_bound(x[15], -1.5707963267949)
set_upper_bound(x[15], 1.5707963267949)
set_lower_bound(x[16], -1.5707963267949)
set_upper_bound(x[16], 1.5707963267949)
set_lower_bound(x[17], -1.5707963267949)
set_upper_bound(x[17], 1.5707963267949)
set_lower_bound(x[18], -1.5707963267949)
set_upper_bound(x[18], 1.5707963267949)
set_lower_bound(x[19], -1.5707963267949)
set_upper_bound(x[19], 1.5707963267949)
set_lower_bound(x[20], -1.5707963267949)
set_upper_bound(x[20], 1.5707963267949)
set_lower_bound(x[21], -1.5707963267949)
set_upper_bound(x[21], 1.5707963267949)
set_lower_bound(x[22], -1.5707963267949)
set_upper_bound(x[22], 1.5707963267949)
set_lower_bound(x[23], -1.5707963267949)
set_upper_bound(x[23], 1.5707963267949)
set_lower_bound(x[24], -1.5707963267949)
set_upper_bound(x[24], 1.5707963267949)
set_lower_bound(x[25], -1.5707963267949)
set_upper_bound(x[25], 1.5707963267949)
set_lower_bound(x[26], -1.5707963267949)
set_upper_bound(x[26], 1.5707963267949)
set_lower_bound(x[27], -1.5707963267949)
set_upper_bound(x[27], 1.5707963267949)
set_lower_bound(x[28], -1.5707963267949)
set_upper_bound(x[28], 1.5707963267949)
set_lower_bound(x[29], -1.5707963267949)
set_upper_bound(x[29], 1.5707963267949)
set_lower_bound(x[30], -1.5707963267949)
set_upper_bound(x[30], 1.5707963267949)
set_lower_bound(x[31], -1.5707963267949)
set_upper_bound(x[31], 1.5707963267949)
set_lower_bound(x[32], -1.5707963267949)
set_upper_bound(x[32], 1.5707963267949)
set_lower_bound(x[33], -1.5707963267949)
set_upper_bound(x[33], 1.5707963267949)
set_lower_bound(x[34], -1.5707963267949)
set_upper_bound(x[34], 1.5707963267949)
set_lower_bound(x[35], -1.5707963267949)
set_upper_bound(x[35], 1.5707963267949)
set_lower_bound(x[36], -1.5707963267949)
set_upper_bound(x[36], 1.5707963267949)
set_lower_bound(x[37], -1.5707963267949)
set_upper_bound(x[37], 1.5707963267949)
set_lower_bound(x[38], -1.5707963267949)
set_upper_bound(x[38], 1.5707963267949)
set_lower_bound(x[39], -1.5707963267949)
set_upper_bound(x[39], 1.5707963267949)
set_lower_bound(x[40], -1.5707963267949)
set_upper_bound(x[40], 1.5707963267949)
set_lower_bound(x[41], -1.5707963267949)
set_upper_bound(x[41], 1.5707963267949)
set_lower_bound(x[42], -1.5707963267949)
set_upper_bound(x[42], 1.5707963267949)
set_lower_bound(x[43], -1.5707963267949)
set_upper_bound(x[43], 1.5707963267949)
set_lower_bound(x[44], -1.5707963267949)
set_upper_bound(x[44], 1.5707963267949)
set_lower_bound(x[45], -1.5707963267949)
set_upper_bound(x[45], 1.5707963267949)
set_lower_bound(x[46], -1.5707963267949)
set_upper_bound(x[46], 1.5707963267949)
set_lower_bound(x[47], -1.5707963267949)
set_upper_bound(x[47], 1.5707963267949)
set_lower_bound(x[48], -1.5707963267949)
set_upper_bound(x[48], 1.5707963267949)
set_lower_bound(x[49], -1.5707963267949)
set_upper_bound(x[49], 1.5707963267949)
set_lower_bound(x[50], -1.5707963267949)
set_upper_bound(x[50], 1.5707963267949)
set_lower_bound(x[51], -1.5707963267949)
set_upper_bound(x[51], 1.5707963267949)
set_lower_bound(x[52], 0.0)
set_upper_bound(x[52], 0.0)
set_lower_bound(x[103], 0.0)
set_upper_bound(x[103], 0.0)
set_lower_bound(x[153], 5.0)
set_upper_bound(x[153], 5.0)
set_lower_bound(x[154], 0.0)
set_upper_bound(x[154], 0.0)
set_lower_bound(x[204], 45.0)
set_upper_bound(x[204], 45.0)
set_lower_bound(x[205], 0.0)
set_upper_bound(x[205], 0.0)
set_lower_bound(x[255], 0.0)
set_upper_bound(x[255], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-50*x[257] == 0.0)
@NLconstraint(m, e2, -0.5*x[257]*(x[154]+x[155])-x[52]+x[53] == 0.0)
@NLconstraint(m, e3, -0.5*x[257]*(x[155]+x[156])-x[53]+x[54] == 0.0)
@NLconstraint(m, e4, -0.5*x[257]*(x[156]+x[157])-x[54]+x[55] == 0.0)
@NLconstraint(m, e5, -0.5*x[257]*(x[157]+x[158])-x[55]+x[56] == 0.0)
@NLconstraint(m, e6, -0.5*x[257]*(x[158]+x[159])-x[56]+x[57] == 0.0)
@NLconstraint(m, e7, -0.5*x[257]*(x[159]+x[160])-x[57]+x[58] == 0.0)
@NLconstraint(m, e8, -0.5*x[257]*(x[160]+x[161])-x[58]+x[59] == 0.0)
@NLconstraint(m, e9, -0.5*x[257]*(x[161]+x[162])-x[59]+x[60] == 0.0)
@NLconstraint(m, e10, -0.5*x[257]*(x[162]+x[163])-x[60]+x[61] == 0.0)
@NLconstraint(m, e11, -0.5*x[257]*(x[163]+x[164])-x[61]+x[62] == 0.0)
@NLconstraint(m, e12, -0.5*x[257]*(x[164]+x[165])-x[62]+x[63] == 0.0)
@NLconstraint(m, e13, -0.5*x[257]*(x[165]+x[166])-x[63]+x[64] == 0.0)
@NLconstraint(m, e14, -0.5*x[257]*(x[166]+x[167])-x[64]+x[65] == 0.0)
@NLconstraint(m, e15, -0.5*x[257]*(x[167]+x[168])-x[65]+x[66] == 0.0)
@NLconstraint(m, e16, -0.5*x[257]*(x[168]+x[169])-x[66]+x[67] == 0.0)
@NLconstraint(m, e17, -0.5*x[257]*(x[169]+x[170])-x[67]+x[68] == 0.0)
@NLconstraint(m, e18, -0.5*x[257]*(x[170]+x[171])-x[68]+x[69] == 0.0)
@NLconstraint(m, e19, -0.5*x[257]*(x[171]+x[172])-x[69]+x[70] == 0.0)
@NLconstraint(m, e20, -0.5*x[257]*(x[172]+x[173])-x[70]+x[71] == 0.0)
@NLconstraint(m, e21, -0.5*x[257]*(x[173]+x[174])-x[71]+x[72] == 0.0)
@NLconstraint(m, e22, -0.5*x[257]*(x[174]+x[175])-x[72]+x[73] == 0.0)
@NLconstraint(m, e23, -0.5*x[257]*(x[175]+x[176])-x[73]+x[74] == 0.0)
@NLconstraint(m, e24, -0.5*x[257]*(x[176]+x[177])-x[74]+x[75] == 0.0)
@NLconstraint(m, e25, -0.5*x[257]*(x[177]+x[178])-x[75]+x[76] == 0.0)
@NLconstraint(m, e26, -0.5*x[257]*(x[178]+x[179])-x[76]+x[77] == 0.0)
@NLconstraint(m, e27, -0.5*x[257]*(x[179]+x[180])-x[77]+x[78] == 0.0)
@NLconstraint(m, e28, -0.5*x[257]*(x[180]+x[181])-x[78]+x[79] == 0.0)
@NLconstraint(m, e29, -0.5*x[257]*(x[181]+x[182])-x[79]+x[80] == 0.0)
@NLconstraint(m, e30, -0.5*x[257]*(x[182]+x[183])-x[80]+x[81] == 0.0)
@NLconstraint(m, e31, -0.5*x[257]*(x[183]+x[184])-x[81]+x[82] == 0.0)
@NLconstraint(m, e32, -0.5*x[257]*(x[184]+x[185])-x[82]+x[83] == 0.0)
@NLconstraint(m, e33, -0.5*x[257]*(x[185]+x[186])-x[83]+x[84] == 0.0)
@NLconstraint(m, e34, -0.5*x[257]*(x[186]+x[187])-x[84]+x[85] == 0.0)
@NLconstraint(m, e35, -0.5*x[257]*(x[187]+x[188])-x[85]+x[86] == 0.0)
@NLconstraint(m, e36, -0.5*x[257]*(x[188]+x[189])-x[86]+x[87] == 0.0)
@NLconstraint(m, e37, -0.5*x[257]*(x[189]+x[190])-x[87]+x[88] == 0.0)
@NLconstraint(m, e38, -0.5*x[257]*(x[190]+x[191])-x[88]+x[89] == 0.0)
@NLconstraint(m, e39, -0.5*x[257]*(x[191]+x[192])-x[89]+x[90] == 0.0)
@NLconstraint(m, e40, -0.5*x[257]*(x[192]+x[193])-x[90]+x[91] == 0.0)
@NLconstraint(m, e41, -0.5*x[257]*(x[193]+x[194])-x[91]+x[92] == 0.0)
@NLconstraint(m, e42, -0.5*x[257]*(x[194]+x[195])-x[92]+x[93] == 0.0)
@NLconstraint(m, e43, -0.5*x[257]*(x[195]+x[196])-x[93]+x[94] == 0.0)
@NLconstraint(m, e44, -0.5*x[257]*(x[196]+x[197])-x[94]+x[95] == 0.0)
@NLconstraint(m, e45, -0.5*x[257]*(x[197]+x[198])-x[95]+x[96] == 0.0)
@NLconstraint(m, e46, -0.5*x[257]*(x[198]+x[199])-x[96]+x[97] == 0.0)
@NLconstraint(m, e47, -0.5*x[257]*(x[199]+x[200])-x[97]+x[98] == 0.0)
@NLconstraint(m, e48, -0.5*x[257]*(x[200]+x[201])-x[98]+x[99] == 0.0)
@NLconstraint(m, e49, -0.5*x[257]*(x[201]+x[202])-x[99]+x[100] == 0.0)
@NLconstraint(m, e50, -0.5*x[257]*(x[202]+x[203])-x[100]+x[101] == 0.0)
@NLconstraint(m, e51, -0.5*x[257]*(x[203]+x[204])-x[101]+x[102] == 0.0)
@NLconstraint(m, e52, -0.5*x[257]*(x[205]+x[206])-x[103]+x[104] == 0.0)
@NLconstraint(m, e53, -0.5*x[257]*(x[206]+x[207])-x[104]+x[105] == 0.0)
@NLconstraint(m, e54, -0.5*x[257]*(x[207]+x[208])-x[105]+x[106] == 0.0)
@NLconstraint(m, e55, -0.5*x[257]*(x[208]+x[209])-x[106]+x[107] == 0.0)
@NLconstraint(m, e56, -0.5*x[257]*(x[209]+x[210])-x[107]+x[108] == 0.0)
@NLconstraint(m, e57, -0.5*x[257]*(x[210]+x[211])-x[108]+x[109] == 0.0)
@NLconstraint(m, e58, -0.5*x[257]*(x[211]+x[212])-x[109]+x[110] == 0.0)
@NLconstraint(m, e59, -0.5*x[257]*(x[212]+x[213])-x[110]+x[111] == 0.0)
@NLconstraint(m, e60, -0.5*x[257]*(x[213]+x[214])-x[111]+x[112] == 0.0)
@NLconstraint(m, e61, -0.5*x[257]*(x[214]+x[215])-x[112]+x[113] == 0.0)
@NLconstraint(m, e62, -0.5*x[257]*(x[215]+x[216])-x[113]+x[114] == 0.0)
@NLconstraint(m, e63, -0.5*x[257]*(x[216]+x[217])-x[114]+x[115] == 0.0)
@NLconstraint(m, e64, -0.5*x[257]*(x[217]+x[218])-x[115]+x[116] == 0.0)
@NLconstraint(m, e65, -0.5*x[257]*(x[218]+x[219])-x[116]+x[117] == 0.0)
@NLconstraint(m, e66, -0.5*x[257]*(x[219]+x[220])-x[117]+x[118] == 0.0)
@NLconstraint(m, e67, -0.5*x[257]*(x[220]+x[221])-x[118]+x[119] == 0.0)
@NLconstraint(m, e68, -0.5*x[257]*(x[221]+x[222])-x[119]+x[120] == 0.0)
@NLconstraint(m, e69, -0.5*x[257]*(x[222]+x[223])-x[120]+x[121] == 0.0)
@NLconstraint(m, e70, -0.5*x[257]*(x[223]+x[224])-x[121]+x[122] == 0.0)
@NLconstraint(m, e71, -0.5*x[257]*(x[224]+x[225])-x[122]+x[123] == 0.0)
@NLconstraint(m, e72, -0.5*x[257]*(x[225]+x[226])-x[123]+x[124] == 0.0)
@NLconstraint(m, e73, -0.5*x[257]*(x[226]+x[227])-x[124]+x[125] == 0.0)
@NLconstraint(m, e74, -0.5*x[257]*(x[227]+x[228])-x[125]+x[126] == 0.0)
@NLconstraint(m, e75, -0.5*x[257]*(x[228]+x[229])-x[126]+x[127] == 0.0)
@NLconstraint(m, e76, -0.5*x[257]*(x[229]+x[230])-x[127]+x[128] == 0.0)
@NLconstraint(m, e77, -0.5*x[257]*(x[230]+x[231])-x[128]+x[129] == 0.0)
@NLconstraint(m, e78, -0.5*x[257]*(x[231]+x[232])-x[129]+x[130] == 0.0)
@NLconstraint(m, e79, -0.5*x[257]*(x[232]+x[233])-x[130]+x[131] == 0.0)
@NLconstraint(m, e80, -0.5*x[257]*(x[233]+x[234])-x[131]+x[132] == 0.0)
@NLconstraint(m, e81, -0.5*x[257]*(x[234]+x[235])-x[132]+x[133] == 0.0)
@NLconstraint(m, e82, -0.5*x[257]*(x[235]+x[236])-x[133]+x[134] == 0.0)
@NLconstraint(m, e83, -0.5*x[257]*(x[236]+x[237])-x[134]+x[135] == 0.0)
@NLconstraint(m, e84, -0.5*x[257]*(x[237]+x[238])-x[135]+x[136] == 0.0)
@NLconstraint(m, e85, -0.5*x[257]*(x[238]+x[239])-x[136]+x[137] == 0.0)
@NLconstraint(m, e86, -0.5*x[257]*(x[239]+x[240])-x[137]+x[138] == 0.0)
@NLconstraint(m, e87, -0.5*x[257]*(x[240]+x[241])-x[138]+x[139] == 0.0)
@NLconstraint(m, e88, -0.5*x[257]*(x[241]+x[242])-x[139]+x[140] == 0.0)
@NLconstraint(m, e89, -0.5*x[257]*(x[242]+x[243])-x[140]+x[141] == 0.0)
@NLconstraint(m, e90, -0.5*x[257]*(x[243]+x[244])-x[141]+x[142] == 0.0)
@NLconstraint(m, e91, -0.5*x[257]*(x[244]+x[245])-x[142]+x[143] == 0.0)
@NLconstraint(m, e92, -0.5*x[257]*(x[245]+x[246])-x[143]+x[144] == 0.0)
@NLconstraint(m, e93, -0.5*x[257]*(x[246]+x[247])-x[144]+x[145] == 0.0)
@NLconstraint(m, e94, -0.5*x[257]*(x[247]+x[248])-x[145]+x[146] == 0.0)
@NLconstraint(m, e95, -0.5*x[257]*(x[248]+x[249])-x[146]+x[147] == 0.0)
@NLconstraint(m, e96, -0.5*x[257]*(x[249]+x[250])-x[147]+x[148] == 0.0)
@NLconstraint(m, e97, -0.5*x[257]*(x[250]+x[251])-x[148]+x[149] == 0.0)
@NLconstraint(m, e98, -0.5*x[257]*(x[251]+x[252])-x[149]+x[150] == 0.0)
@NLconstraint(m, e99, -0.5*x[257]*(x[252]+x[253])-x[150]+x[151] == 0.0)
@NLconstraint(m, e100, -0.5*x[257]*(x[253]+x[254])-x[151]+x[152] == 0.0)
@NLconstraint(m, e101, -0.5*x[257]*(x[254]+x[255])-x[152]+x[153] == 0.0)
@NLconstraint(m, e102, -0.5*(100*cos(x[1])+100*cos(x[2]))*x[257]-x[154]+x[155] == 0.0)
@NLconstraint(m, e103, -0.5*(100*cos(x[2])+100*cos(x[3]))*x[257]-x[155]+x[156] == 0.0)
@NLconstraint(m, e104, -0.5*(100*cos(x[3])+100*cos(x[4]))*x[257]-x[156]+x[157] == 0.0)
@NLconstraint(m, e105, -0.5*(100*cos(x[4])+100*cos(x[5]))*x[257]-x[157]+x[158] == 0.0)
@NLconstraint(m, e106, -0.5*(100*cos(x[5])+100*cos(x[6]))*x[257]-x[158]+x[159] == 0.0)
@NLconstraint(m, e107, -0.5*(100*cos(x[6])+100*cos(x[7]))*x[257]-x[159]+x[160] == 0.0)
@NLconstraint(m, e108, -0.5*(100*cos(x[7])+100*cos(x[8]))*x[257]-x[160]+x[161] == 0.0)
@NLconstraint(m, e109, -0.5*(100*cos(x[8])+100*cos(x[9]))*x[257]-x[161]+x[162] == 0.0)
@NLconstraint(m, e110, -0.5*(100*cos(x[9])+100*cos(x[10]))*x[257]-x[162]+x[163] == 0.0)
@NLconstraint(m, e111, -0.5*(100*cos(x[10])+100*cos(x[11]))*x[257]-x[163]+x[164] == 0.0)
@NLconstraint(m, e112, -0.5*(100*cos(x[11])+100*cos(x[12]))*x[257]-x[164]+x[165] == 0.0)
@NLconstraint(m, e113, -0.5*(100*cos(x[12])+100*cos(x[13]))*x[257]-x[165]+x[166] == 0.0)
@NLconstraint(m, e114, -0.5*(100*cos(x[13])+100*cos(x[14]))*x[257]-x[166]+x[167] == 0.0)
@NLconstraint(m, e115, -0.5*(100*cos(x[14])+100*cos(x[15]))*x[257]-x[167]+x[168] == 0.0)
@NLconstraint(m, e116, -0.5*(100*cos(x[15])+100*cos(x[16]))*x[257]-x[168]+x[169] == 0.0)
@NLconstraint(m, e117, -0.5*(100*cos(x[16])+100*cos(x[17]))*x[257]-x[169]+x[170] == 0.0)
@NLconstraint(m, e118, -0.5*(100*cos(x[17])+100*cos(x[18]))*x[257]-x[170]+x[171] == 0.0)
@NLconstraint(m, e119, -0.5*(100*cos(x[18])+100*cos(x[19]))*x[257]-x[171]+x[172] == 0.0)
@NLconstraint(m, e120, -0.5*(100*cos(x[19])+100*cos(x[20]))*x[257]-x[172]+x[173] == 0.0)
@NLconstraint(m, e121, -0.5*(100*cos(x[20])+100*cos(x[21]))*x[257]-x[173]+x[174] == 0.0)
@NLconstraint(m, e122, -0.5*(100*cos(x[21])+100*cos(x[22]))*x[257]-x[174]+x[175] == 0.0)
@NLconstraint(m, e123, -0.5*(100*cos(x[22])+100*cos(x[23]))*x[257]-x[175]+x[176] == 0.0)
@NLconstraint(m, e124, -0.5*(100*cos(x[23])+100*cos(x[24]))*x[257]-x[176]+x[177] == 0.0)
@NLconstraint(m, e125, -0.5*(100*cos(x[24])+100*cos(x[25]))*x[257]-x[177]+x[178] == 0.0)
@NLconstraint(m, e126, -0.5*(100*cos(x[25])+100*cos(x[26]))*x[257]-x[178]+x[179] == 0.0)
@NLconstraint(m, e127, -0.5*(100*cos(x[26])+100*cos(x[27]))*x[257]-x[179]+x[180] == 0.0)
@NLconstraint(m, e128, -0.5*(100*cos(x[27])+100*cos(x[28]))*x[257]-x[180]+x[181] == 0.0)
@NLconstraint(m, e129, -0.5*(100*cos(x[28])+100*cos(x[29]))*x[257]-x[181]+x[182] == 0.0)
@NLconstraint(m, e130, -0.5*(100*cos(x[29])+100*cos(x[30]))*x[257]-x[182]+x[183] == 0.0)
@NLconstraint(m, e131, -0.5*(100*cos(x[30])+100*cos(x[31]))*x[257]-x[183]+x[184] == 0.0)
@NLconstraint(m, e132, -0.5*(100*cos(x[31])+100*cos(x[32]))*x[257]-x[184]+x[185] == 0.0)
@NLconstraint(m, e133, -0.5*(100*cos(x[32])+100*cos(x[33]))*x[257]-x[185]+x[186] == 0.0)
@NLconstraint(m, e134, -0.5*(100*cos(x[33])+100*cos(x[34]))*x[257]-x[186]+x[187] == 0.0)
@NLconstraint(m, e135, -0.5*(100*cos(x[34])+100*cos(x[35]))*x[257]-x[187]+x[188] == 0.0)
@NLconstraint(m, e136, -0.5*(100*cos(x[35])+100*cos(x[36]))*x[257]-x[188]+x[189] == 0.0)
@NLconstraint(m, e137, -0.5*(100*cos(x[36])+100*cos(x[37]))*x[257]-x[189]+x[190] == 0.0)
@NLconstraint(m, e138, -0.5*(100*cos(x[37])+100*cos(x[38]))*x[257]-x[190]+x[191] == 0.0)
@NLconstraint(m, e139, -0.5*(100*cos(x[38])+100*cos(x[39]))*x[257]-x[191]+x[192] == 0.0)
@NLconstraint(m, e140, -0.5*(100*cos(x[39])+100*cos(x[40]))*x[257]-x[192]+x[193] == 0.0)
@NLconstraint(m, e141, -0.5*(100*cos(x[40])+100*cos(x[41]))*x[257]-x[193]+x[194] == 0.0)
@NLconstraint(m, e142, -0.5*(100*cos(x[41])+100*cos(x[42]))*x[257]-x[194]+x[195] == 0.0)
@NLconstraint(m, e143, -0.5*(100*cos(x[42])+100*cos(x[43]))*x[257]-x[195]+x[196] == 0.0)
@NLconstraint(m, e144, -0.5*(100*cos(x[43])+100*cos(x[44]))*x[257]-x[196]+x[197] == 0.0)
@NLconstraint(m, e145, -0.5*(100*cos(x[44])+100*cos(x[45]))*x[257]-x[197]+x[198] == 0.0)
@NLconstraint(m, e146, -0.5*(100*cos(x[45])+100*cos(x[46]))*x[257]-x[198]+x[199] == 0.0)
@NLconstraint(m, e147, -0.5*(100*cos(x[46])+100*cos(x[47]))*x[257]-x[199]+x[200] == 0.0)
@NLconstraint(m, e148, -0.5*(100*cos(x[47])+100*cos(x[48]))*x[257]-x[200]+x[201] == 0.0)
@NLconstraint(m, e149, -0.5*(100*cos(x[48])+100*cos(x[49]))*x[257]-x[201]+x[202] == 0.0)
@NLconstraint(m, e150, -0.5*(100*cos(x[49])+100*cos(x[50]))*x[257]-x[202]+x[203] == 0.0)
@NLconstraint(m, e151, -0.5*(100*cos(x[50])+100*cos(x[51]))*x[257]-x[203]+x[204] == 0.0)
@NLconstraint(m, e152, -0.5*(100*sin(x[1])+100*sin(x[2]))*x[257]-x[205]+x[206] == 0.0)
@NLconstraint(m, e153, -0.5*(100*sin(x[2])+100*sin(x[3]))*x[257]-x[206]+x[207] == 0.0)
@NLconstraint(m, e154, -0.5*(100*sin(x[3])+100*sin(x[4]))*x[257]-x[207]+x[208] == 0.0)
@NLconstraint(m, e155, -0.5*(100*sin(x[4])+100*sin(x[5]))*x[257]-x[208]+x[209] == 0.0)
@NLconstraint(m, e156, -0.5*(100*sin(x[5])+100*sin(x[6]))*x[257]-x[209]+x[210] == 0.0)
@NLconstraint(m, e157, -0.5*(100*sin(x[6])+100*sin(x[7]))*x[257]-x[210]+x[211] == 0.0)
@NLconstraint(m, e158, -0.5*(100*sin(x[7])+100*sin(x[8]))*x[257]-x[211]+x[212] == 0.0)
@NLconstraint(m, e159, -0.5*(100*sin(x[8])+100*sin(x[9]))*x[257]-x[212]+x[213] == 0.0)
@NLconstraint(m, e160, -0.5*(100*sin(x[9])+100*sin(x[10]))*x[257]-x[213]+x[214] == 0.0)
@NLconstraint(m, e161, -0.5*(100*sin(x[10])+100*sin(x[11]))*x[257]-x[214]+x[215] == 0.0)
@NLconstraint(m, e162, -0.5*(100*sin(x[11])+100*sin(x[12]))*x[257]-x[215]+x[216] == 0.0)
@NLconstraint(m, e163, -0.5*(100*sin(x[12])+100*sin(x[13]))*x[257]-x[216]+x[217] == 0.0)
@NLconstraint(m, e164, -0.5*(100*sin(x[13])+100*sin(x[14]))*x[257]-x[217]+x[218] == 0.0)
@NLconstraint(m, e165, -0.5*(100*sin(x[14])+100*sin(x[15]))*x[257]-x[218]+x[219] == 0.0)
@NLconstraint(m, e166, -0.5*(100*sin(x[15])+100*sin(x[16]))*x[257]-x[219]+x[220] == 0.0)
@NLconstraint(m, e167, -0.5*(100*sin(x[16])+100*sin(x[17]))*x[257]-x[220]+x[221] == 0.0)
@NLconstraint(m, e168, -0.5*(100*sin(x[17])+100*sin(x[18]))*x[257]-x[221]+x[222] == 0.0)
@NLconstraint(m, e169, -0.5*(100*sin(x[18])+100*sin(x[19]))*x[257]-x[222]+x[223] == 0.0)
@NLconstraint(m, e170, -0.5*(100*sin(x[19])+100*sin(x[20]))*x[257]-x[223]+x[224] == 0.0)
@NLconstraint(m, e171, -0.5*(100*sin(x[20])+100*sin(x[21]))*x[257]-x[224]+x[225] == 0.0)
@NLconstraint(m, e172, -0.5*(100*sin(x[21])+100*sin(x[22]))*x[257]-x[225]+x[226] == 0.0)
@NLconstraint(m, e173, -0.5*(100*sin(x[22])+100*sin(x[23]))*x[257]-x[226]+x[227] == 0.0)
@NLconstraint(m, e174, -0.5*(100*sin(x[23])+100*sin(x[24]))*x[257]-x[227]+x[228] == 0.0)
@NLconstraint(m, e175, -0.5*(100*sin(x[24])+100*sin(x[25]))*x[257]-x[228]+x[229] == 0.0)
@NLconstraint(m, e176, -0.5*(100*sin(x[25])+100*sin(x[26]))*x[257]-x[229]+x[230] == 0.0)
@NLconstraint(m, e177, -0.5*(100*sin(x[26])+100*sin(x[27]))*x[257]-x[230]+x[231] == 0.0)
@NLconstraint(m, e178, -0.5*(100*sin(x[27])+100*sin(x[28]))*x[257]-x[231]+x[232] == 0.0)
@NLconstraint(m, e179, -0.5*(100*sin(x[28])+100*sin(x[29]))*x[257]-x[232]+x[233] == 0.0)
@NLconstraint(m, e180, -0.5*(100*sin(x[29])+100*sin(x[30]))*x[257]-x[233]+x[234] == 0.0)
@NLconstraint(m, e181, -0.5*(100*sin(x[30])+100*sin(x[31]))*x[257]-x[234]+x[235] == 0.0)
@NLconstraint(m, e182, -0.5*(100*sin(x[31])+100*sin(x[32]))*x[257]-x[235]+x[236] == 0.0)
@NLconstraint(m, e183, -0.5*(100*sin(x[32])+100*sin(x[33]))*x[257]-x[236]+x[237] == 0.0)
@NLconstraint(m, e184, -0.5*(100*sin(x[33])+100*sin(x[34]))*x[257]-x[237]+x[238] == 0.0)
@NLconstraint(m, e185, -0.5*(100*sin(x[34])+100*sin(x[35]))*x[257]-x[238]+x[239] == 0.0)
@NLconstraint(m, e186, -0.5*(100*sin(x[35])+100*sin(x[36]))*x[257]-x[239]+x[240] == 0.0)
@NLconstraint(m, e187, -0.5*(100*sin(x[36])+100*sin(x[37]))*x[257]-x[240]+x[241] == 0.0)
@NLconstraint(m, e188, -0.5*(100*sin(x[37])+100*sin(x[38]))*x[257]-x[241]+x[242] == 0.0)
@NLconstraint(m, e189, -0.5*(100*sin(x[38])+100*sin(x[39]))*x[257]-x[242]+x[243] == 0.0)
@NLconstraint(m, e190, -0.5*(100*sin(x[39])+100*sin(x[40]))*x[257]-x[243]+x[244] == 0.0)
@NLconstraint(m, e191, -0.5*(100*sin(x[40])+100*sin(x[41]))*x[257]-x[244]+x[245] == 0.0)
@NLconstraint(m, e192, -0.5*(100*sin(x[41])+100*sin(x[42]))*x[257]-x[245]+x[246] == 0.0)
@NLconstraint(m, e193, -0.5*(100*sin(x[42])+100*sin(x[43]))*x[257]-x[246]+x[247] == 0.0)
@NLconstraint(m, e194, -0.5*(100*sin(x[43])+100*sin(x[44]))*x[257]-x[247]+x[248] == 0.0)
@NLconstraint(m, e195, -0.5*(100*sin(x[44])+100*sin(x[45]))*x[257]-x[248]+x[249] == 0.0)
@NLconstraint(m, e196, -0.5*(100*sin(x[45])+100*sin(x[46]))*x[257]-x[249]+x[250] == 0.0)
@NLconstraint(m, e197, -0.5*(100*sin(x[46])+100*sin(x[47]))*x[257]-x[250]+x[251] == 0.0)
@NLconstraint(m, e198, -0.5*(100*sin(x[47])+100*sin(x[48]))*x[257]-x[251]+x[252] == 0.0)
@NLconstraint(m, e199, -0.5*(100*sin(x[48])+100*sin(x[49]))*x[257]-x[252]+x[253] == 0.0)
@NLconstraint(m, e200, -0.5*(100*sin(x[49])+100*sin(x[50]))*x[257]-x[253]+x[254] == 0.0)
@NLconstraint(m, e201, -0.5*(100*sin(x[50])+100*sin(x[51]))*x[257]-x[254]+x[255] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
