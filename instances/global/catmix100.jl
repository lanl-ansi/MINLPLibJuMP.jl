using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303]
@variable(m, x[x_Idx])
set_lower_bound(x[85], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)
set_upper_bound(x[51], 1.0)
set_upper_bound(x[52], 1.0)
set_upper_bound(x[53], 1.0)
set_upper_bound(x[54], 1.0)
set_upper_bound(x[55], 1.0)
set_upper_bound(x[56], 1.0)
set_upper_bound(x[57], 1.0)
set_upper_bound(x[58], 1.0)
set_upper_bound(x[59], 1.0)
set_upper_bound(x[60], 1.0)
set_upper_bound(x[61], 1.0)
set_upper_bound(x[62], 1.0)
set_upper_bound(x[63], 1.0)
set_upper_bound(x[64], 1.0)
set_upper_bound(x[65], 1.0)
set_upper_bound(x[66], 1.0)
set_upper_bound(x[67], 1.0)
set_upper_bound(x[68], 1.0)
set_upper_bound(x[69], 1.0)
set_upper_bound(x[70], 1.0)
set_upper_bound(x[71], 1.0)
set_upper_bound(x[72], 1.0)
set_upper_bound(x[73], 1.0)
set_upper_bound(x[74], 1.0)
set_upper_bound(x[75], 1.0)
set_upper_bound(x[76], 1.0)
set_upper_bound(x[77], 1.0)
set_upper_bound(x[78], 1.0)
set_upper_bound(x[79], 1.0)
set_upper_bound(x[80], 1.0)
set_upper_bound(x[81], 1.0)
set_upper_bound(x[82], 1.0)
set_upper_bound(x[83], 1.0)
set_upper_bound(x[84], 1.0)
set_upper_bound(x[85], 1.0)
set_upper_bound(x[86], 1.0)
set_upper_bound(x[87], 1.0)
set_upper_bound(x[88], 1.0)
set_upper_bound(x[89], 1.0)
set_upper_bound(x[90], 1.0)
set_upper_bound(x[91], 1.0)
set_upper_bound(x[92], 1.0)
set_upper_bound(x[93], 1.0)
set_upper_bound(x[94], 1.0)
set_upper_bound(x[95], 1.0)
set_upper_bound(x[96], 1.0)
set_upper_bound(x[97], 1.0)
set_upper_bound(x[98], 1.0)
set_upper_bound(x[99], 1.0)
set_upper_bound(x[100], 1.0)
set_upper_bound(x[101], 1.0)
set_lower_bound(x[102], 1.0)
set_upper_bound(x[102], 1.0)
set_lower_bound(x[203], 0.0)
set_upper_bound(x[203], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[202]-x[303]+objvar == -1.0)
@NLconstraint(m, e2, x[103]-(0.005*(x[1]*(10*x[203]-x[102])+x[2]*(10*x[204]-x[103]))+x[102]) == 0.0)
@NLconstraint(m, e3, x[104]-(0.005*(x[2]*(10*x[204]-x[103])+x[3]*(10*x[205]-x[104]))+x[103]) == 0.0)
@NLconstraint(m, e4, x[105]-(0.005*(x[3]*(10*x[205]-x[104])+x[4]*(10*x[206]-x[105]))+x[104]) == 0.0)
@NLconstraint(m, e5, x[106]-(0.005*(x[4]*(10*x[206]-x[105])+x[5]*(10*x[207]-x[106]))+x[105]) == 0.0)
@NLconstraint(m, e6, x[107]-(0.005*(x[5]*(10*x[207]-x[106])+x[6]*(10*x[208]-x[107]))+x[106]) == 0.0)
@NLconstraint(m, e7, x[108]-(0.005*(x[6]*(10*x[208]-x[107])+x[7]*(10*x[209]-x[108]))+x[107]) == 0.0)
@NLconstraint(m, e8, x[109]-(0.005*(x[7]*(10*x[209]-x[108])+x[8]*(10*x[210]-x[109]))+x[108]) == 0.0)
@NLconstraint(m, e9, x[110]-(0.005*(x[8]*(10*x[210]-x[109])+x[9]*(10*x[211]-x[110]))+x[109]) == 0.0)
@NLconstraint(m, e10, x[111]-(0.005*(x[9]*(10*x[211]-x[110])+x[10]*(10*x[212]-x[111]))+x[110]) == 0.0)
@NLconstraint(m, e11, x[112]-(0.005*(x[10]*(10*x[212]-x[111])+x[11]*(10*x[213]-x[112]))+x[111]) == 0.0)
@NLconstraint(m, e12, x[113]-(0.005*(x[11]*(10*x[213]-x[112])+x[12]*(10*x[214]-x[113]))+x[112]) == 0.0)
@NLconstraint(m, e13, x[114]-(0.005*(x[12]*(10*x[214]-x[113])+x[13]*(10*x[215]-x[114]))+x[113]) == 0.0)
@NLconstraint(m, e14, x[115]-(0.005*(x[13]*(10*x[215]-x[114])+x[14]*(10*x[216]-x[115]))+x[114]) == 0.0)
@NLconstraint(m, e15, x[116]-(0.005*(x[14]*(10*x[216]-x[115])+x[15]*(10*x[217]-x[116]))+x[115]) == 0.0)
@NLconstraint(m, e16, x[117]-(0.005*(x[15]*(10*x[217]-x[116])+x[16]*(10*x[218]-x[117]))+x[116]) == 0.0)
@NLconstraint(m, e17, x[118]-(0.005*(x[16]*(10*x[218]-x[117])+x[17]*(10*x[219]-x[118]))+x[117]) == 0.0)
@NLconstraint(m, e18, x[119]-(0.005*(x[17]*(10*x[219]-x[118])+x[18]*(10*x[220]-x[119]))+x[118]) == 0.0)
@NLconstraint(m, e19, x[120]-(0.005*(x[18]*(10*x[220]-x[119])+x[19]*(10*x[221]-x[120]))+x[119]) == 0.0)
@NLconstraint(m, e20, x[121]-(0.005*(x[19]*(10*x[221]-x[120])+x[20]*(10*x[222]-x[121]))+x[120]) == 0.0)
@NLconstraint(m, e21, x[122]-(0.005*(x[20]*(10*x[222]-x[121])+x[21]*(10*x[223]-x[122]))+x[121]) == 0.0)
@NLconstraint(m, e22, x[123]-(0.005*(x[21]*(10*x[223]-x[122])+x[22]*(10*x[224]-x[123]))+x[122]) == 0.0)
@NLconstraint(m, e23, x[124]-(0.005*(x[22]*(10*x[224]-x[123])+x[23]*(10*x[225]-x[124]))+x[123]) == 0.0)
@NLconstraint(m, e24, x[125]-(0.005*(x[23]*(10*x[225]-x[124])+x[24]*(10*x[226]-x[125]))+x[124]) == 0.0)
@NLconstraint(m, e25, x[126]-(0.005*(x[24]*(10*x[226]-x[125])+x[25]*(10*x[227]-x[126]))+x[125]) == 0.0)
@NLconstraint(m, e26, x[127]-(0.005*(x[25]*(10*x[227]-x[126])+x[26]*(10*x[228]-x[127]))+x[126]) == 0.0)
@NLconstraint(m, e27, x[128]-(0.005*(x[26]*(10*x[228]-x[127])+x[27]*(10*x[229]-x[128]))+x[127]) == 0.0)
@NLconstraint(m, e28, x[129]-(0.005*(x[27]*(10*x[229]-x[128])+x[28]*(10*x[230]-x[129]))+x[128]) == 0.0)
@NLconstraint(m, e29, x[130]-(0.005*(x[28]*(10*x[230]-x[129])+x[29]*(10*x[231]-x[130]))+x[129]) == 0.0)
@NLconstraint(m, e30, x[131]-(0.005*(x[29]*(10*x[231]-x[130])+x[30]*(10*x[232]-x[131]))+x[130]) == 0.0)
@NLconstraint(m, e31, x[132]-(0.005*(x[30]*(10*x[232]-x[131])+x[31]*(10*x[233]-x[132]))+x[131]) == 0.0)
@NLconstraint(m, e32, x[133]-(0.005*(x[31]*(10*x[233]-x[132])+x[32]*(10*x[234]-x[133]))+x[132]) == 0.0)
@NLconstraint(m, e33, x[134]-(0.005*(x[32]*(10*x[234]-x[133])+x[33]*(10*x[235]-x[134]))+x[133]) == 0.0)
@NLconstraint(m, e34, x[135]-(0.005*(x[33]*(10*x[235]-x[134])+x[34]*(10*x[236]-x[135]))+x[134]) == 0.0)
@NLconstraint(m, e35, x[136]-(0.005*(x[34]*(10*x[236]-x[135])+x[35]*(10*x[237]-x[136]))+x[135]) == 0.0)
@NLconstraint(m, e36, x[137]-(0.005*(x[35]*(10*x[237]-x[136])+x[36]*(10*x[238]-x[137]))+x[136]) == 0.0)
@NLconstraint(m, e37, x[138]-(0.005*(x[36]*(10*x[238]-x[137])+x[37]*(10*x[239]-x[138]))+x[137]) == 0.0)
@NLconstraint(m, e38, x[139]-(0.005*(x[37]*(10*x[239]-x[138])+x[38]*(10*x[240]-x[139]))+x[138]) == 0.0)
@NLconstraint(m, e39, x[140]-(0.005*(x[38]*(10*x[240]-x[139])+x[39]*(10*x[241]-x[140]))+x[139]) == 0.0)
@NLconstraint(m, e40, x[141]-(0.005*(x[39]*(10*x[241]-x[140])+x[40]*(10*x[242]-x[141]))+x[140]) == 0.0)
@NLconstraint(m, e41, x[142]-(0.005*(x[40]*(10*x[242]-x[141])+x[41]*(10*x[243]-x[142]))+x[141]) == 0.0)
@NLconstraint(m, e42, x[143]-(0.005*(x[41]*(10*x[243]-x[142])+x[42]*(10*x[244]-x[143]))+x[142]) == 0.0)
@NLconstraint(m, e43, x[144]-(0.005*(x[42]*(10*x[244]-x[143])+x[43]*(10*x[245]-x[144]))+x[143]) == 0.0)
@NLconstraint(m, e44, x[145]-(0.005*(x[43]*(10*x[245]-x[144])+x[44]*(10*x[246]-x[145]))+x[144]) == 0.0)
@NLconstraint(m, e45, x[146]-(0.005*(x[44]*(10*x[246]-x[145])+x[45]*(10*x[247]-x[146]))+x[145]) == 0.0)
@NLconstraint(m, e46, x[147]-(0.005*(x[45]*(10*x[247]-x[146])+x[46]*(10*x[248]-x[147]))+x[146]) == 0.0)
@NLconstraint(m, e47, x[148]-(0.005*(x[46]*(10*x[248]-x[147])+x[47]*(10*x[249]-x[148]))+x[147]) == 0.0)
@NLconstraint(m, e48, x[149]-(0.005*(x[47]*(10*x[249]-x[148])+x[48]*(10*x[250]-x[149]))+x[148]) == 0.0)
@NLconstraint(m, e49, x[150]-(0.005*(x[48]*(10*x[250]-x[149])+x[49]*(10*x[251]-x[150]))+x[149]) == 0.0)
@NLconstraint(m, e50, x[151]-(0.005*(x[49]*(10*x[251]-x[150])+x[50]*(10*x[252]-x[151]))+x[150]) == 0.0)
@NLconstraint(m, e51, x[152]-(0.005*(x[50]*(10*x[252]-x[151])+x[51]*(10*x[253]-x[152]))+x[151]) == 0.0)
@NLconstraint(m, e52, x[153]-(0.005*(x[51]*(10*x[253]-x[152])+x[52]*(10*x[254]-x[153]))+x[152]) == 0.0)
@NLconstraint(m, e53, x[154]-(0.005*(x[52]*(10*x[254]-x[153])+x[53]*(10*x[255]-x[154]))+x[153]) == 0.0)
@NLconstraint(m, e54, x[155]-(0.005*(x[53]*(10*x[255]-x[154])+x[54]*(10*x[256]-x[155]))+x[154]) == 0.0)
@NLconstraint(m, e55, x[156]-(0.005*(x[54]*(10*x[256]-x[155])+x[55]*(10*x[257]-x[156]))+x[155]) == 0.0)
@NLconstraint(m, e56, x[157]-(0.005*(x[55]*(10*x[257]-x[156])+x[56]*(10*x[258]-x[157]))+x[156]) == 0.0)
@NLconstraint(m, e57, x[158]-(0.005*(x[56]*(10*x[258]-x[157])+x[57]*(10*x[259]-x[158]))+x[157]) == 0.0)
@NLconstraint(m, e58, x[159]-(0.005*(x[57]*(10*x[259]-x[158])+x[58]*(10*x[260]-x[159]))+x[158]) == 0.0)
@NLconstraint(m, e59, x[160]-(0.005*(x[58]*(10*x[260]-x[159])+x[59]*(10*x[261]-x[160]))+x[159]) == 0.0)
@NLconstraint(m, e60, x[161]-(0.005*(x[59]*(10*x[261]-x[160])+x[60]*(10*x[262]-x[161]))+x[160]) == 0.0)
@NLconstraint(m, e61, x[162]-(0.005*(x[60]*(10*x[262]-x[161])+x[61]*(10*x[263]-x[162]))+x[161]) == 0.0)
@NLconstraint(m, e62, x[163]-(0.005*(x[61]*(10*x[263]-x[162])+x[62]*(10*x[264]-x[163]))+x[162]) == 0.0)
@NLconstraint(m, e63, x[164]-(0.005*(x[62]*(10*x[264]-x[163])+x[63]*(10*x[265]-x[164]))+x[163]) == 0.0)
@NLconstraint(m, e64, x[165]-(0.005*(x[63]*(10*x[265]-x[164])+x[64]*(10*x[266]-x[165]))+x[164]) == 0.0)
@NLconstraint(m, e65, x[166]-(0.005*(x[64]*(10*x[266]-x[165])+x[65]*(10*x[267]-x[166]))+x[165]) == 0.0)
@NLconstraint(m, e66, x[167]-(0.005*(x[65]*(10*x[267]-x[166])+x[66]*(10*x[268]-x[167]))+x[166]) == 0.0)
@NLconstraint(m, e67, x[168]-(0.005*(x[66]*(10*x[268]-x[167])+x[67]*(10*x[269]-x[168]))+x[167]) == 0.0)
@NLconstraint(m, e68, x[169]-(0.005*(x[67]*(10*x[269]-x[168])+x[68]*(10*x[270]-x[169]))+x[168]) == 0.0)
@NLconstraint(m, e69, x[170]-(0.005*(x[68]*(10*x[270]-x[169])+x[69]*(10*x[271]-x[170]))+x[169]) == 0.0)
@NLconstraint(m, e70, x[171]-(0.005*(x[69]*(10*x[271]-x[170])+x[70]*(10*x[272]-x[171]))+x[170]) == 0.0)
@NLconstraint(m, e71, x[172]-(0.005*(x[70]*(10*x[272]-x[171])+x[71]*(10*x[273]-x[172]))+x[171]) == 0.0)
@NLconstraint(m, e72, x[173]-(0.005*(x[71]*(10*x[273]-x[172])+x[72]*(10*x[274]-x[173]))+x[172]) == 0.0)
@NLconstraint(m, e73, x[174]-(0.005*(x[72]*(10*x[274]-x[173])+x[73]*(10*x[275]-x[174]))+x[173]) == 0.0)
@NLconstraint(m, e74, x[175]-(0.005*(x[73]*(10*x[275]-x[174])+x[74]*(10*x[276]-x[175]))+x[174]) == 0.0)
@NLconstraint(m, e75, x[176]-(0.005*(x[74]*(10*x[276]-x[175])+x[75]*(10*x[277]-x[176]))+x[175]) == 0.0)
@NLconstraint(m, e76, x[177]-(0.005*(x[75]*(10*x[277]-x[176])+x[76]*(10*x[278]-x[177]))+x[176]) == 0.0)
@NLconstraint(m, e77, x[178]-(0.005*(x[76]*(10*x[278]-x[177])+x[77]*(10*x[279]-x[178]))+x[177]) == 0.0)
@NLconstraint(m, e78, x[179]-(0.005*(x[77]*(10*x[279]-x[178])+x[78]*(10*x[280]-x[179]))+x[178]) == 0.0)
@NLconstraint(m, e79, x[180]-(0.005*(x[78]*(10*x[280]-x[179])+x[79]*(10*x[281]-x[180]))+x[179]) == 0.0)
@NLconstraint(m, e80, x[181]-(0.005*(x[79]*(10*x[281]-x[180])+x[80]*(10*x[282]-x[181]))+x[180]) == 0.0)
@NLconstraint(m, e81, x[182]-(0.005*(x[80]*(10*x[282]-x[181])+x[81]*(10*x[283]-x[182]))+x[181]) == 0.0)
@NLconstraint(m, e82, x[183]-(0.005*(x[81]*(10*x[283]-x[182])+x[82]*(10*x[284]-x[183]))+x[182]) == 0.0)
@NLconstraint(m, e83, x[184]-(0.005*(x[82]*(10*x[284]-x[183])+x[83]*(10*x[285]-x[184]))+x[183]) == 0.0)
@NLconstraint(m, e84, x[185]-(0.005*(x[83]*(10*x[285]-x[184])+x[84]*(10*x[286]-x[185]))+x[184]) == 0.0)
@NLconstraint(m, e85, x[186]-(0.005*(x[84]*(10*x[286]-x[185])+x[85]*(10*x[287]-x[186]))+x[185]) == 0.0)
@NLconstraint(m, e86, x[187]-(0.005*(x[85]*(10*x[287]-x[186])+x[86]*(10*x[288]-x[187]))+x[186]) == 0.0)
@NLconstraint(m, e87, x[188]-(0.005*(x[86]*(10*x[288]-x[187])+x[87]*(10*x[289]-x[188]))+x[187]) == 0.0)
@NLconstraint(m, e88, x[189]-(0.005*(x[87]*(10*x[289]-x[188])+x[88]*(10*x[290]-x[189]))+x[188]) == 0.0)
@NLconstraint(m, e89, x[190]-(0.005*(x[88]*(10*x[290]-x[189])+x[89]*(10*x[291]-x[190]))+x[189]) == 0.0)
@NLconstraint(m, e90, x[191]-(0.005*(x[89]*(10*x[291]-x[190])+x[90]*(10*x[292]-x[191]))+x[190]) == 0.0)
@NLconstraint(m, e91, x[192]-(0.005*(x[90]*(10*x[292]-x[191])+x[91]*(10*x[293]-x[192]))+x[191]) == 0.0)
@NLconstraint(m, e92, x[193]-(0.005*(x[91]*(10*x[293]-x[192])+x[92]*(10*x[294]-x[193]))+x[192]) == 0.0)
@NLconstraint(m, e93, x[194]-(0.005*(x[92]*(10*x[294]-x[193])+x[93]*(10*x[295]-x[194]))+x[193]) == 0.0)
@NLconstraint(m, e94, x[195]-(0.005*(x[93]*(10*x[295]-x[194])+x[94]*(10*x[296]-x[195]))+x[194]) == 0.0)
@NLconstraint(m, e95, x[196]-(0.005*(x[94]*(10*x[296]-x[195])+x[95]*(10*x[297]-x[196]))+x[195]) == 0.0)
@NLconstraint(m, e96, x[197]-(0.005*(x[95]*(10*x[297]-x[196])+x[96]*(10*x[298]-x[197]))+x[196]) == 0.0)
@NLconstraint(m, e97, x[198]-(0.005*(x[96]*(10*x[298]-x[197])+x[97]*(10*x[299]-x[198]))+x[197]) == 0.0)
@NLconstraint(m, e98, x[199]-(0.005*(x[97]*(10*x[299]-x[198])+x[98]*(10*x[300]-x[199]))+x[198]) == 0.0)
@NLconstraint(m, e99, x[200]-(0.005*(x[98]*(10*x[300]-x[199])+x[99]*(10*x[301]-x[200]))+x[199]) == 0.0)
@NLconstraint(m, e100, x[201]-(0.005*(x[99]*(10*x[301]-x[200])+x[100]*(10*x[302]-x[201]))+x[200]) == 0.0)
@NLconstraint(m, e101, x[202]-(0.005*(x[100]*(10*x[302]-x[201])+x[101]*(10*x[303]-x[202]))+x[201]) == 0.0)
@NLconstraint(m, e102, x[204]-(0.005*(x[1]*(x[102]-10*x[203])-(1-x[1])*x[203]+x[2]*(x[103]-10*x[204])-(1-x[2])*x[204])+x[203]) == 0.0)
@NLconstraint(m, e103, x[205]-(0.005*(x[2]*(x[103]-10*x[204])-(1-x[2])*x[204]+x[3]*(x[104]-10*x[205])-(1-x[3])*x[205])+x[204]) == 0.0)
@NLconstraint(m, e104, x[206]-(0.005*(x[3]*(x[104]-10*x[205])-(1-x[3])*x[205]+x[4]*(x[105]-10*x[206])-(1-x[4])*x[206])+x[205]) == 0.0)
@NLconstraint(m, e105, x[207]-(0.005*(x[4]*(x[105]-10*x[206])-(1-x[4])*x[206]+x[5]*(x[106]-10*x[207])-(1-x[5])*x[207])+x[206]) == 0.0)
@NLconstraint(m, e106, x[208]-(0.005*(x[5]*(x[106]-10*x[207])-(1-x[5])*x[207]+x[6]*(x[107]-10*x[208])-(1-x[6])*x[208])+x[207]) == 0.0)
@NLconstraint(m, e107, x[209]-(0.005*(x[6]*(x[107]-10*x[208])-(1-x[6])*x[208]+x[7]*(x[108]-10*x[209])-(1-x[7])*x[209])+x[208]) == 0.0)
@NLconstraint(m, e108, x[210]-(0.005*(x[7]*(x[108]-10*x[209])-(1-x[7])*x[209]+x[8]*(x[109]-10*x[210])-(1-x[8])*x[210])+x[209]) == 0.0)
@NLconstraint(m, e109, x[211]-(0.005*(x[8]*(x[109]-10*x[210])-(1-x[8])*x[210]+x[9]*(x[110]-10*x[211])-(1-x[9])*x[211])+x[210]) == 0.0)
@NLconstraint(m, e110, x[212]-(0.005*(x[9]*(x[110]-10*x[211])-(1-x[9])*x[211]+x[10]*(x[111]-10*x[212])-(1-x[10])*x[212])+x[211]) == 0.0)
@NLconstraint(m, e111, x[213]-(0.005*(x[10]*(x[111]-10*x[212])-(1-x[10])*x[212]+x[11]*(x[112]-10*x[213])-(1-x[11])*x[213])+x[212]) == 0.0)
@NLconstraint(m, e112, x[214]-(0.005*(x[11]*(x[112]-10*x[213])-(1-x[11])*x[213]+x[12]*(x[113]-10*x[214])-(1-x[12])*x[214])+x[213]) == 0.0)
@NLconstraint(m, e113, x[215]-(0.005*(x[12]*(x[113]-10*x[214])-(1-x[12])*x[214]+x[13]*(x[114]-10*x[215])-(1-x[13])*x[215])+x[214]) == 0.0)
@NLconstraint(m, e114, x[216]-(0.005*(x[13]*(x[114]-10*x[215])-(1-x[13])*x[215]+x[14]*(x[115]-10*x[216])-(1-x[14])*x[216])+x[215]) == 0.0)
@NLconstraint(m, e115, x[217]-(0.005*(x[14]*(x[115]-10*x[216])-(1-x[14])*x[216]+x[15]*(x[116]-10*x[217])-(1-x[15])*x[217])+x[216]) == 0.0)
@NLconstraint(m, e116, x[218]-(0.005*(x[15]*(x[116]-10*x[217])-(1-x[15])*x[217]+x[16]*(x[117]-10*x[218])-(1-x[16])*x[218])+x[217]) == 0.0)
@NLconstraint(m, e117, x[219]-(0.005*(x[16]*(x[117]-10*x[218])-(1-x[16])*x[218]+x[17]*(x[118]-10*x[219])-(1-x[17])*x[219])+x[218]) == 0.0)
@NLconstraint(m, e118, x[220]-(0.005*(x[17]*(x[118]-10*x[219])-(1-x[17])*x[219]+x[18]*(x[119]-10*x[220])-(1-x[18])*x[220])+x[219]) == 0.0)
@NLconstraint(m, e119, x[221]-(0.005*(x[18]*(x[119]-10*x[220])-(1-x[18])*x[220]+x[19]*(x[120]-10*x[221])-(1-x[19])*x[221])+x[220]) == 0.0)
@NLconstraint(m, e120, x[222]-(0.005*(x[19]*(x[120]-10*x[221])-(1-x[19])*x[221]+x[20]*(x[121]-10*x[222])-(1-x[20])*x[222])+x[221]) == 0.0)
@NLconstraint(m, e121, x[223]-(0.005*(x[20]*(x[121]-10*x[222])-(1-x[20])*x[222]+x[21]*(x[122]-10*x[223])-(1-x[21])*x[223])+x[222]) == 0.0)
@NLconstraint(m, e122, x[224]-(0.005*(x[21]*(x[122]-10*x[223])-(1-x[21])*x[223]+x[22]*(x[123]-10*x[224])-(1-x[22])*x[224])+x[223]) == 0.0)
@NLconstraint(m, e123, x[225]-(0.005*(x[22]*(x[123]-10*x[224])-(1-x[22])*x[224]+x[23]*(x[124]-10*x[225])-(1-x[23])*x[225])+x[224]) == 0.0)
@NLconstraint(m, e124, x[226]-(0.005*(x[23]*(x[124]-10*x[225])-(1-x[23])*x[225]+x[24]*(x[125]-10*x[226])-(1-x[24])*x[226])+x[225]) == 0.0)
@NLconstraint(m, e125, x[227]-(0.005*(x[24]*(x[125]-10*x[226])-(1-x[24])*x[226]+x[25]*(x[126]-10*x[227])-(1-x[25])*x[227])+x[226]) == 0.0)
@NLconstraint(m, e126, x[228]-(0.005*(x[25]*(x[126]-10*x[227])-(1-x[25])*x[227]+x[26]*(x[127]-10*x[228])-(1-x[26])*x[228])+x[227]) == 0.0)
@NLconstraint(m, e127, x[229]-(0.005*(x[26]*(x[127]-10*x[228])-(1-x[26])*x[228]+x[27]*(x[128]-10*x[229])-(1-x[27])*x[229])+x[228]) == 0.0)
@NLconstraint(m, e128, x[230]-(0.005*(x[27]*(x[128]-10*x[229])-(1-x[27])*x[229]+x[28]*(x[129]-10*x[230])-(1-x[28])*x[230])+x[229]) == 0.0)
@NLconstraint(m, e129, x[231]-(0.005*(x[28]*(x[129]-10*x[230])-(1-x[28])*x[230]+x[29]*(x[130]-10*x[231])-(1-x[29])*x[231])+x[230]) == 0.0)
@NLconstraint(m, e130, x[232]-(0.005*(x[29]*(x[130]-10*x[231])-(1-x[29])*x[231]+x[30]*(x[131]-10*x[232])-(1-x[30])*x[232])+x[231]) == 0.0)
@NLconstraint(m, e131, x[233]-(0.005*(x[30]*(x[131]-10*x[232])-(1-x[30])*x[232]+x[31]*(x[132]-10*x[233])-(1-x[31])*x[233])+x[232]) == 0.0)
@NLconstraint(m, e132, x[234]-(0.005*(x[31]*(x[132]-10*x[233])-(1-x[31])*x[233]+x[32]*(x[133]-10*x[234])-(1-x[32])*x[234])+x[233]) == 0.0)
@NLconstraint(m, e133, x[235]-(0.005*(x[32]*(x[133]-10*x[234])-(1-x[32])*x[234]+x[33]*(x[134]-10*x[235])-(1-x[33])*x[235])+x[234]) == 0.0)
@NLconstraint(m, e134, x[236]-(0.005*(x[33]*(x[134]-10*x[235])-(1-x[33])*x[235]+x[34]*(x[135]-10*x[236])-(1-x[34])*x[236])+x[235]) == 0.0)
@NLconstraint(m, e135, x[237]-(0.005*(x[34]*(x[135]-10*x[236])-(1-x[34])*x[236]+x[35]*(x[136]-10*x[237])-(1-x[35])*x[237])+x[236]) == 0.0)
@NLconstraint(m, e136, x[238]-(0.005*(x[35]*(x[136]-10*x[237])-(1-x[35])*x[237]+x[36]*(x[137]-10*x[238])-(1-x[36])*x[238])+x[237]) == 0.0)
@NLconstraint(m, e137, x[239]-(0.005*(x[36]*(x[137]-10*x[238])-(1-x[36])*x[238]+x[37]*(x[138]-10*x[239])-(1-x[37])*x[239])+x[238]) == 0.0)
@NLconstraint(m, e138, x[240]-(0.005*(x[37]*(x[138]-10*x[239])-(1-x[37])*x[239]+x[38]*(x[139]-10*x[240])-(1-x[38])*x[240])+x[239]) == 0.0)
@NLconstraint(m, e139, x[241]-(0.005*(x[38]*(x[139]-10*x[240])-(1-x[38])*x[240]+x[39]*(x[140]-10*x[241])-(1-x[39])*x[241])+x[240]) == 0.0)
@NLconstraint(m, e140, x[242]-(0.005*(x[39]*(x[140]-10*x[241])-(1-x[39])*x[241]+x[40]*(x[141]-10*x[242])-(1-x[40])*x[242])+x[241]) == 0.0)
@NLconstraint(m, e141, x[243]-(0.005*(x[40]*(x[141]-10*x[242])-(1-x[40])*x[242]+x[41]*(x[142]-10*x[243])-(1-x[41])*x[243])+x[242]) == 0.0)
@NLconstraint(m, e142, x[244]-(0.005*(x[41]*(x[142]-10*x[243])-(1-x[41])*x[243]+x[42]*(x[143]-10*x[244])-(1-x[42])*x[244])+x[243]) == 0.0)
@NLconstraint(m, e143, x[245]-(0.005*(x[42]*(x[143]-10*x[244])-(1-x[42])*x[244]+x[43]*(x[144]-10*x[245])-(1-x[43])*x[245])+x[244]) == 0.0)
@NLconstraint(m, e144, x[246]-(0.005*(x[43]*(x[144]-10*x[245])-(1-x[43])*x[245]+x[44]*(x[145]-10*x[246])-(1-x[44])*x[246])+x[245]) == 0.0)
@NLconstraint(m, e145, x[247]-(0.005*(x[44]*(x[145]-10*x[246])-(1-x[44])*x[246]+x[45]*(x[146]-10*x[247])-(1-x[45])*x[247])+x[246]) == 0.0)
@NLconstraint(m, e146, x[248]-(0.005*(x[45]*(x[146]-10*x[247])-(1-x[45])*x[247]+x[46]*(x[147]-10*x[248])-(1-x[46])*x[248])+x[247]) == 0.0)
@NLconstraint(m, e147, x[249]-(0.005*(x[46]*(x[147]-10*x[248])-(1-x[46])*x[248]+x[47]*(x[148]-10*x[249])-(1-x[47])*x[249])+x[248]) == 0.0)
@NLconstraint(m, e148, x[250]-(0.005*(x[47]*(x[148]-10*x[249])-(1-x[47])*x[249]+x[48]*(x[149]-10*x[250])-(1-x[48])*x[250])+x[249]) == 0.0)
@NLconstraint(m, e149, x[251]-(0.005*(x[48]*(x[149]-10*x[250])-(1-x[48])*x[250]+x[49]*(x[150]-10*x[251])-(1-x[49])*x[251])+x[250]) == 0.0)
@NLconstraint(m, e150, x[252]-(0.005*(x[49]*(x[150]-10*x[251])-(1-x[49])*x[251]+x[50]*(x[151]-10*x[252])-(1-x[50])*x[252])+x[251]) == 0.0)
@NLconstraint(m, e151, x[253]-(0.005*(x[50]*(x[151]-10*x[252])-(1-x[50])*x[252]+x[51]*(x[152]-10*x[253])-(1-x[51])*x[253])+x[252]) == 0.0)
@NLconstraint(m, e152, x[254]-(0.005*(x[51]*(x[152]-10*x[253])-(1-x[51])*x[253]+x[52]*(x[153]-10*x[254])-(1-x[52])*x[254])+x[253]) == 0.0)
@NLconstraint(m, e153, x[255]-(0.005*(x[52]*(x[153]-10*x[254])-(1-x[52])*x[254]+x[53]*(x[154]-10*x[255])-(1-x[53])*x[255])+x[254]) == 0.0)
@NLconstraint(m, e154, x[256]-(0.005*(x[53]*(x[154]-10*x[255])-(1-x[53])*x[255]+x[54]*(x[155]-10*x[256])-(1-x[54])*x[256])+x[255]) == 0.0)
@NLconstraint(m, e155, x[257]-(0.005*(x[54]*(x[155]-10*x[256])-(1-x[54])*x[256]+x[55]*(x[156]-10*x[257])-(1-x[55])*x[257])+x[256]) == 0.0)
@NLconstraint(m, e156, x[258]-(0.005*(x[55]*(x[156]-10*x[257])-(1-x[55])*x[257]+x[56]*(x[157]-10*x[258])-(1-x[56])*x[258])+x[257]) == 0.0)
@NLconstraint(m, e157, x[259]-(0.005*(x[56]*(x[157]-10*x[258])-(1-x[56])*x[258]+x[57]*(x[158]-10*x[259])-(1-x[57])*x[259])+x[258]) == 0.0)
@NLconstraint(m, e158, x[260]-(0.005*(x[57]*(x[158]-10*x[259])-(1-x[57])*x[259]+x[58]*(x[159]-10*x[260])-(1-x[58])*x[260])+x[259]) == 0.0)
@NLconstraint(m, e159, x[261]-(0.005*(x[58]*(x[159]-10*x[260])-(1-x[58])*x[260]+x[59]*(x[160]-10*x[261])-(1-x[59])*x[261])+x[260]) == 0.0)
@NLconstraint(m, e160, x[262]-(0.005*(x[59]*(x[160]-10*x[261])-(1-x[59])*x[261]+x[60]*(x[161]-10*x[262])-(1-x[60])*x[262])+x[261]) == 0.0)
@NLconstraint(m, e161, x[263]-(0.005*(x[60]*(x[161]-10*x[262])-(1-x[60])*x[262]+x[61]*(x[162]-10*x[263])-(1-x[61])*x[263])+x[262]) == 0.0)
@NLconstraint(m, e162, x[264]-(0.005*(x[61]*(x[162]-10*x[263])-(1-x[61])*x[263]+x[62]*(x[163]-10*x[264])-(1-x[62])*x[264])+x[263]) == 0.0)
@NLconstraint(m, e163, x[265]-(0.005*(x[62]*(x[163]-10*x[264])-(1-x[62])*x[264]+x[63]*(x[164]-10*x[265])-(1-x[63])*x[265])+x[264]) == 0.0)
@NLconstraint(m, e164, x[266]-(0.005*(x[63]*(x[164]-10*x[265])-(1-x[63])*x[265]+x[64]*(x[165]-10*x[266])-(1-x[64])*x[266])+x[265]) == 0.0)
@NLconstraint(m, e165, x[267]-(0.005*(x[64]*(x[165]-10*x[266])-(1-x[64])*x[266]+x[65]*(x[166]-10*x[267])-(1-x[65])*x[267])+x[266]) == 0.0)
@NLconstraint(m, e166, x[268]-(0.005*(x[65]*(x[166]-10*x[267])-(1-x[65])*x[267]+x[66]*(x[167]-10*x[268])-(1-x[66])*x[268])+x[267]) == 0.0)
@NLconstraint(m, e167, x[269]-(0.005*(x[66]*(x[167]-10*x[268])-(1-x[66])*x[268]+x[67]*(x[168]-10*x[269])-(1-x[67])*x[269])+x[268]) == 0.0)
@NLconstraint(m, e168, x[270]-(0.005*(x[67]*(x[168]-10*x[269])-(1-x[67])*x[269]+x[68]*(x[169]-10*x[270])-(1-x[68])*x[270])+x[269]) == 0.0)
@NLconstraint(m, e169, x[271]-(0.005*(x[68]*(x[169]-10*x[270])-(1-x[68])*x[270]+x[69]*(x[170]-10*x[271])-(1-x[69])*x[271])+x[270]) == 0.0)
@NLconstraint(m, e170, x[272]-(0.005*(x[69]*(x[170]-10*x[271])-(1-x[69])*x[271]+x[70]*(x[171]-10*x[272])-(1-x[70])*x[272])+x[271]) == 0.0)
@NLconstraint(m, e171, x[273]-(0.005*(x[70]*(x[171]-10*x[272])-(1-x[70])*x[272]+x[71]*(x[172]-10*x[273])-(1-x[71])*x[273])+x[272]) == 0.0)
@NLconstraint(m, e172, x[274]-(0.005*(x[71]*(x[172]-10*x[273])-(1-x[71])*x[273]+x[72]*(x[173]-10*x[274])-(1-x[72])*x[274])+x[273]) == 0.0)
@NLconstraint(m, e173, x[275]-(0.005*(x[72]*(x[173]-10*x[274])-(1-x[72])*x[274]+x[73]*(x[174]-10*x[275])-(1-x[73])*x[275])+x[274]) == 0.0)
@NLconstraint(m, e174, x[276]-(0.005*(x[73]*(x[174]-10*x[275])-(1-x[73])*x[275]+x[74]*(x[175]-10*x[276])-(1-x[74])*x[276])+x[275]) == 0.0)
@NLconstraint(m, e175, x[277]-(0.005*(x[74]*(x[175]-10*x[276])-(1-x[74])*x[276]+x[75]*(x[176]-10*x[277])-(1-x[75])*x[277])+x[276]) == 0.0)
@NLconstraint(m, e176, x[278]-(0.005*(x[75]*(x[176]-10*x[277])-(1-x[75])*x[277]+x[76]*(x[177]-10*x[278])-(1-x[76])*x[278])+x[277]) == 0.0)
@NLconstraint(m, e177, x[279]-(0.005*(x[76]*(x[177]-10*x[278])-(1-x[76])*x[278]+x[77]*(x[178]-10*x[279])-(1-x[77])*x[279])+x[278]) == 0.0)
@NLconstraint(m, e178, x[280]-(0.005*(x[77]*(x[178]-10*x[279])-(1-x[77])*x[279]+x[78]*(x[179]-10*x[280])-(1-x[78])*x[280])+x[279]) == 0.0)
@NLconstraint(m, e179, x[281]-(0.005*(x[78]*(x[179]-10*x[280])-(1-x[78])*x[280]+x[79]*(x[180]-10*x[281])-(1-x[79])*x[281])+x[280]) == 0.0)
@NLconstraint(m, e180, x[282]-(0.005*(x[79]*(x[180]-10*x[281])-(1-x[79])*x[281]+x[80]*(x[181]-10*x[282])-(1-x[80])*x[282])+x[281]) == 0.0)
@NLconstraint(m, e181, x[283]-(0.005*(x[80]*(x[181]-10*x[282])-(1-x[80])*x[282]+x[81]*(x[182]-10*x[283])-(1-x[81])*x[283])+x[282]) == 0.0)
@NLconstraint(m, e182, x[284]-(0.005*(x[81]*(x[182]-10*x[283])-(1-x[81])*x[283]+x[82]*(x[183]-10*x[284])-(1-x[82])*x[284])+x[283]) == 0.0)
@NLconstraint(m, e183, x[285]-(0.005*(x[82]*(x[183]-10*x[284])-(1-x[82])*x[284]+x[83]*(x[184]-10*x[285])-(1-x[83])*x[285])+x[284]) == 0.0)
@NLconstraint(m, e184, x[286]-(0.005*(x[83]*(x[184]-10*x[285])-(1-x[83])*x[285]+x[84]*(x[185]-10*x[286])-(1-x[84])*x[286])+x[285]) == 0.0)
@NLconstraint(m, e185, x[287]-(0.005*(x[84]*(x[185]-10*x[286])-(1-x[84])*x[286]+x[85]*(x[186]-10*x[287])-(1-x[85])*x[287])+x[286]) == 0.0)
@NLconstraint(m, e186, x[288]-(0.005*(x[85]*(x[186]-10*x[287])-(1-x[85])*x[287]+x[86]*(x[187]-10*x[288])-(1-x[86])*x[288])+x[287]) == 0.0)
@NLconstraint(m, e187, x[289]-(0.005*(x[86]*(x[187]-10*x[288])-(1-x[86])*x[288]+x[87]*(x[188]-10*x[289])-(1-x[87])*x[289])+x[288]) == 0.0)
@NLconstraint(m, e188, x[290]-(0.005*(x[87]*(x[188]-10*x[289])-(1-x[87])*x[289]+x[88]*(x[189]-10*x[290])-(1-x[88])*x[290])+x[289]) == 0.0)
@NLconstraint(m, e189, x[291]-(0.005*(x[88]*(x[189]-10*x[290])-(1-x[88])*x[290]+x[89]*(x[190]-10*x[291])-(1-x[89])*x[291])+x[290]) == 0.0)
@NLconstraint(m, e190, x[292]-(0.005*(x[89]*(x[190]-10*x[291])-(1-x[89])*x[291]+x[90]*(x[191]-10*x[292])-(1-x[90])*x[292])+x[291]) == 0.0)
@NLconstraint(m, e191, x[293]-(0.005*(x[90]*(x[191]-10*x[292])-(1-x[90])*x[292]+x[91]*(x[192]-10*x[293])-(1-x[91])*x[293])+x[292]) == 0.0)
@NLconstraint(m, e192, x[294]-(0.005*(x[91]*(x[192]-10*x[293])-(1-x[91])*x[293]+x[92]*(x[193]-10*x[294])-(1-x[92])*x[294])+x[293]) == 0.0)
@NLconstraint(m, e193, x[295]-(0.005*(x[92]*(x[193]-10*x[294])-(1-x[92])*x[294]+x[93]*(x[194]-10*x[295])-(1-x[93])*x[295])+x[294]) == 0.0)
@NLconstraint(m, e194, x[296]-(0.005*(x[93]*(x[194]-10*x[295])-(1-x[93])*x[295]+x[94]*(x[195]-10*x[296])-(1-x[94])*x[296])+x[295]) == 0.0)
@NLconstraint(m, e195, x[297]-(0.005*(x[94]*(x[195]-10*x[296])-(1-x[94])*x[296]+x[95]*(x[196]-10*x[297])-(1-x[95])*x[297])+x[296]) == 0.0)
@NLconstraint(m, e196, x[298]-(0.005*(x[95]*(x[196]-10*x[297])-(1-x[95])*x[297]+x[96]*(x[197]-10*x[298])-(1-x[96])*x[298])+x[297]) == 0.0)
@NLconstraint(m, e197, x[299]-(0.005*(x[96]*(x[197]-10*x[298])-(1-x[96])*x[298]+x[97]*(x[198]-10*x[299])-(1-x[97])*x[299])+x[298]) == 0.0)
@NLconstraint(m, e198, x[300]-(0.005*(x[97]*(x[198]-10*x[299])-(1-x[97])*x[299]+x[98]*(x[199]-10*x[300])-(1-x[98])*x[300])+x[299]) == 0.0)
@NLconstraint(m, e199, x[301]-(0.005*(x[98]*(x[199]-10*x[300])-(1-x[98])*x[300]+x[99]*(x[200]-10*x[301])-(1-x[99])*x[301])+x[300]) == 0.0)
@NLconstraint(m, e200, x[302]-(0.005*(x[99]*(x[200]-10*x[301])-(1-x[99])*x[301]+x[100]*(x[201]-10*x[302])-(1-x[100])*x[302])+x[301]) == 0.0)
@NLconstraint(m, e201, x[303]-(0.005*(x[100]*(x[201]-10*x[302])-(1-x[100])*x[302]+x[101]*(x[202]-10*x[303])-(1-x[101])*x[303])+x[302]) == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
