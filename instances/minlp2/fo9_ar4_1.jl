using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]
@variable(m, i[i_Idx] <= 100, Int)
set_lower_bound(x[94], 2.0)
set_upper_bound(x[94], 8.0)
set_lower_bound(x[95], 2.0)
set_upper_bound(x[95], 8.0)
set_lower_bound(x[96], 2.0)
set_upper_bound(x[96], 8.0)
set_lower_bound(x[97], 2.0)
set_upper_bound(x[97], 8.0)
set_lower_bound(x[98], 2.0)
set_upper_bound(x[98], 8.0)
set_lower_bound(x[100], 2.0)
set_upper_bound(x[100], 8.0)
set_lower_bound(x[102], 3.0)
set_upper_bound(x[102], 12.0)
set_lower_bound(x[104], 3.0)
set_upper_bound(x[104], 12.0)
set_lower_bound(x[106], 3.0)
set_upper_bound(x[106], 12.0)
set_lower_bound(x[108], 3.0)
set_upper_bound(x[108], 12.0)
set_lower_bound(x[110], 1.5)
set_upper_bound(x[110], 6.0)
set_lower_bound(x[112], 1.5)
set_upper_bound(x[112], 6.0)
set_lower_bound(x[114], 1.5)
set_upper_bound(x[114], 6.0)
set_lower_bound(x[116], 1.5)
set_upper_bound(x[116], 6.0)
set_lower_bound(x[118], 1.5)
set_upper_bound(x[118], 6.0)
set_lower_bound(x[120], 1.5)
set_upper_bound(x[120], 6.0)
set_lower_bound(x[122], 1.5)
set_upper_bound(x[122], 6.0)
set_lower_bound(x[124], 1.5)
set_upper_bound(x[124], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[74]-x[75]-x[76]-x[77]-x[78]-x[79]-x[80]-x[81]-x[82]-x[83]-x[84]-x[85]-x[86]-x[87]-x[88]-x[89] == 0.0)
@constraint(m, e2, x[90]-x[91] >= 0.0)
@constraint(m, e3, x[92]-x[93] >= 0.0)
@constraint(m, e4, i[1]-i[2] == 0.0)
@constraint(m, e5, -12*i[1]-x[74]+0.5*x[94]+0.5*x[95] <= 0.0)
@constraint(m, e6, 13*i[1]-x[75]+0.5*x[96]+0.5*x[97] <= 13.0)
@constraint(m, e7, -12*i[3]+0.5*x[94]+0.5*x[98]-x[99] <= 0.0)
@constraint(m, e8, 13*i[3]+0.5*x[96]+0.5*x[100]-x[101] <= 13.0)
@constraint(m, e9, -12*i[5]+0.5*x[94]+0.5*x[102]-x[103] <= 0.0)
@constraint(m, e10, 13*i[5]+0.5*x[96]+0.5*x[104]-x[105] <= 13.0)
@constraint(m, e11, -12*i[7]+0.5*x[94]+0.5*x[106]-x[107] <= 0.0)
@constraint(m, e12, 13*i[7]+0.5*x[96]+0.5*x[108]-x[109] <= 13.0)
@constraint(m, e13, -12*i[9]+0.5*x[94]+0.5*x[110]-x[111] <= 0.0)
@constraint(m, e14, 13*i[9]+0.5*x[96]+0.5*x[112]-x[113] <= 13.0)
@constraint(m, e15, -12*i[11]+0.5*x[94]+0.5*x[114]-x[115] <= 0.0)
@constraint(m, e16, 13*i[11]+0.5*x[96]+0.5*x[116]-x[117] <= 13.0)
@constraint(m, e17, -12*i[13]+0.5*x[94]+0.5*x[118]-x[119] <= 0.0)
@constraint(m, e18, 13*i[13]+0.5*x[96]+0.5*x[120]-x[121] <= 13.0)
@constraint(m, e19, -12*i[15]+0.5*x[94]+0.5*x[122]-x[123] <= 0.0)
@constraint(m, e20, 13*i[15]+0.5*x[96]+0.5*x[124]-x[125] <= 13.0)
@constraint(m, e21, -12*i[17]-x[76]+0.5*x[95]+0.5*x[98] <= 0.0)
@constraint(m, e22, 13*i[17]-x[77]+0.5*x[97]+0.5*x[100] <= 13.0)
@constraint(m, e23, -12*i[19]+0.5*x[95]+0.5*x[102]-x[126] <= 0.0)
@constraint(m, e24, 13*i[19]+0.5*x[97]+0.5*x[104]-x[127] <= 13.0)
@constraint(m, e25, -12*i[21]+0.5*x[95]+0.5*x[106]-x[128] <= 0.0)
@constraint(m, e26, 13*i[21]+0.5*x[97]+0.5*x[108]-x[129] <= 13.0)
@constraint(m, e27, -12*i[23]+0.5*x[95]+0.5*x[110]-x[130] <= 0.0)
@constraint(m, e28, 13*i[23]+0.5*x[97]+0.5*x[112]-x[131] <= 13.0)
@constraint(m, e29, -12*i[25]+0.5*x[95]+0.5*x[114]-x[132] <= 0.0)
@constraint(m, e30, 13*i[25]+0.5*x[97]+0.5*x[116]-x[133] <= 13.0)
@constraint(m, e31, -12*i[27]+0.5*x[95]+0.5*x[118]-x[134] <= 0.0)
@constraint(m, e32, 13*i[27]+0.5*x[97]+0.5*x[120]-x[135] <= 13.0)
@constraint(m, e33, -12*i[29]+0.5*x[95]+0.5*x[122]-x[136] <= 0.0)
@constraint(m, e34, 13*i[29]+0.5*x[97]+0.5*x[124]-x[137] <= 13.0)
@constraint(m, e35, -12*i[31]-x[78]+0.5*x[98]+0.5*x[102] <= 0.0)
@constraint(m, e36, 13*i[31]-x[79]+0.5*x[100]+0.5*x[104] <= 13.0)
@constraint(m, e37, -12*i[33]+0.5*x[98]+0.5*x[106]-x[138] <= 0.0)
@constraint(m, e38, 13*i[33]+0.5*x[100]+0.5*x[108]-x[139] <= 13.0)
@constraint(m, e39, -12*i[35]+0.5*x[98]+0.5*x[110]-x[140] <= 0.0)
@constraint(m, e40, 13*i[35]+0.5*x[100]+0.5*x[112]-x[141] <= 13.0)
@constraint(m, e41, -12*i[37]+0.5*x[98]+0.5*x[114]-x[142] <= 0.0)
@constraint(m, e42, 13*i[37]+0.5*x[100]+0.5*x[116]-x[143] <= 13.0)
@constraint(m, e43, -12*i[39]+0.5*x[98]+0.5*x[118]-x[144] <= 0.0)
@constraint(m, e44, 13*i[39]+0.5*x[100]+0.5*x[120]-x[145] <= 13.0)
@constraint(m, e45, -12*i[41]+0.5*x[98]+0.5*x[122]-x[146] <= 0.0)
@constraint(m, e46, 13*i[41]+0.5*x[100]+0.5*x[124]-x[147] <= 13.0)
@constraint(m, e47, -12*i[43]-x[80]+0.5*x[102]+0.5*x[106] <= 0.0)
@constraint(m, e48, 13*i[43]-x[81]+0.5*x[104]+0.5*x[108] <= 13.0)
@constraint(m, e49, -12*i[45]+0.5*x[102]+0.5*x[110]-x[148] <= 0.0)
@constraint(m, e50, 13*i[45]+0.5*x[104]+0.5*x[112]-x[149] <= 13.0)
@constraint(m, e51, -12*i[47]+0.5*x[102]+0.5*x[114]-x[150] <= 0.0)
@constraint(m, e52, 13*i[47]+0.5*x[104]+0.5*x[116]-x[151] <= 13.0)
@constraint(m, e53, -12*i[49]+0.5*x[102]+0.5*x[118]-x[152] <= 0.0)
@constraint(m, e54, 13*i[49]+0.5*x[104]+0.5*x[120]-x[153] <= 13.0)
@constraint(m, e55, -12*i[51]+0.5*x[102]+0.5*x[122]-x[154] <= 0.0)
@constraint(m, e56, 13*i[51]+0.5*x[104]+0.5*x[124]-x[155] <= 13.0)
@constraint(m, e57, -12*i[53]-x[82]+0.5*x[106]+0.5*x[110] <= 0.0)
@constraint(m, e58, 13*i[53]-x[83]+0.5*x[108]+0.5*x[112] <= 13.0)
@constraint(m, e59, -12*i[55]+0.5*x[106]+0.5*x[114]-x[156] <= 0.0)
@constraint(m, e60, 13*i[55]+0.5*x[108]+0.5*x[116]-x[157] <= 13.0)
@constraint(m, e61, -12*i[57]+0.5*x[106]+0.5*x[118]-x[158] <= 0.0)
@constraint(m, e62, 13*i[57]+0.5*x[108]+0.5*x[120]-x[159] <= 13.0)
@constraint(m, e63, -12*i[59]+0.5*x[106]+0.5*x[122]-x[160] <= 0.0)
@constraint(m, e64, 13*i[59]+0.5*x[108]+0.5*x[124]-x[161] <= 13.0)
@constraint(m, e65, -12*i[61]-x[84]+0.5*x[110]+0.5*x[114] <= 0.0)
@constraint(m, e66, 13*i[61]-x[85]+0.5*x[112]+0.5*x[116] <= 13.0)
@constraint(m, e67, -12*i[63]+0.5*x[110]+0.5*x[118]-x[162] <= 0.0)
@constraint(m, e68, 13*i[63]+0.5*x[112]+0.5*x[120]-x[163] <= 13.0)
@constraint(m, e69, -12*i[65]+0.5*x[110]+0.5*x[122]-x[164] <= 0.0)
@constraint(m, e70, 13*i[65]+0.5*x[112]+0.5*x[124]-x[165] <= 13.0)
@constraint(m, e71, -12*i[67]-x[86]+0.5*x[114]+0.5*x[118] <= 0.0)
@constraint(m, e72, 13*i[67]-x[87]+0.5*x[116]+0.5*x[120] <= 13.0)
@constraint(m, e73, -12*i[69]+0.5*x[114]+0.5*x[122]-x[166] <= 0.0)
@constraint(m, e74, 13*i[69]+0.5*x[116]+0.5*x[124]-x[167] <= 13.0)
@constraint(m, e75, -12*i[71]-x[88]+0.5*x[118]+0.5*x[122] <= 0.0)
@constraint(m, e76, 13*i[71]-x[89]+0.5*x[120]+0.5*x[124] <= 13.0)
@constraint(m, e77, -0.5*x[94]-0.125*x[96] <= -2.0)
@constraint(m, e78, -0.125*x[94]-0.5*x[96] <= -2.0)
@constraint(m, e79, -0.5*x[95]-0.125*x[97] <= -2.0)
@constraint(m, e80, -0.125*x[95]-0.5*x[97] <= -2.0)
@constraint(m, e81, -0.5*x[98]-0.125*x[100] <= -2.0)
@constraint(m, e82, -0.125*x[98]-0.5*x[100] <= -2.0)
@constraint(m, e83, -0.333333*x[102]-0.083333*x[104] <= -2.0)
@constraint(m, e84, -0.083333*x[102]-0.333333*x[104] <= -2.0)
@constraint(m, e85, -0.333333*x[106]-0.083333*x[108] <= -2.0)
@constraint(m, e86, -0.083333*x[106]-0.333333*x[108] <= -2.0)
@constraint(m, e87, -0.666667*x[110]-0.166667*x[112] <= -2.0)
@constraint(m, e88, -0.166667*x[110]-0.666667*x[112] <= -2.0)
@constraint(m, e89, -0.666667*x[114]-0.166667*x[116] <= -2.0)
@constraint(m, e90, -0.166667*x[114]-0.666667*x[116] <= -2.0)
@constraint(m, e91, -0.666667*x[118]-0.166667*x[120] <= -2.0)
@constraint(m, e92, -0.166667*x[118]-0.666667*x[120] <= -2.0)
@constraint(m, e93, -0.666667*x[122]-0.166667*x[124] <= -2.0)
@constraint(m, e94, -0.166667*x[122]-0.666667*x[124] <= -2.0)
@constraint(m, e95, x[90]+0.5*x[94] <= 12.0)
@constraint(m, e96, -x[90]+0.5*x[94] <= 0.0)
@constraint(m, e97, x[93]+0.5*x[96] <= 13.0)
@constraint(m, e98, -x[93]+0.5*x[96] <= 0.0)
@constraint(m, e99, x[91]+0.5*x[95] <= 12.0)
@constraint(m, e100, -x[91]+0.5*x[95] <= 0.0)
@constraint(m, e101, x[92]+0.5*x[97] <= 13.0)
@constraint(m, e102, -x[92]+0.5*x[97] <= 0.0)
@constraint(m, e103, 0.5*x[98]+x[168] <= 12.0)
@constraint(m, e104, 0.5*x[98]-x[168] <= 0.0)
@constraint(m, e105, 0.5*x[100]+x[169] <= 13.0)
@constraint(m, e106, 0.5*x[100]-x[169] <= 0.0)
@constraint(m, e107, 0.5*x[102]+x[170] <= 12.0)
@constraint(m, e108, 0.5*x[102]-x[170] <= 0.0)
@constraint(m, e109, 0.5*x[104]+x[171] <= 13.0)
@constraint(m, e110, 0.5*x[104]-x[171] <= 0.0)
@constraint(m, e111, 0.5*x[106]+x[172] <= 12.0)
@constraint(m, e112, 0.5*x[106]-x[172] <= 0.0)
@constraint(m, e113, 0.5*x[108]+x[173] <= 13.0)
@constraint(m, e114, 0.5*x[108]-x[173] <= 0.0)
@constraint(m, e115, 0.5*x[110]+x[174] <= 12.0)
@constraint(m, e116, 0.5*x[110]-x[174] <= 0.0)
@constraint(m, e117, 0.5*x[112]+x[175] <= 13.0)
@constraint(m, e118, 0.5*x[112]-x[175] <= 0.0)
@constraint(m, e119, 0.5*x[114]+x[176] <= 12.0)
@constraint(m, e120, 0.5*x[114]-x[176] <= 0.0)
@constraint(m, e121, 0.5*x[116]+x[177] <= 13.0)
@constraint(m, e122, 0.5*x[116]-x[177] <= 0.0)
@constraint(m, e123, 0.5*x[118]+x[178] <= 12.0)
@constraint(m, e124, 0.5*x[118]-x[178] <= 0.0)
@constraint(m, e125, 0.5*x[120]+x[179] <= 13.0)
@constraint(m, e126, 0.5*x[120]-x[179] <= 0.0)
@constraint(m, e127, 0.5*x[122]+x[180] <= 12.0)
@constraint(m, e128, 0.5*x[122]-x[180] <= 0.0)
@constraint(m, e129, 0.5*x[124]+x[181] <= 13.0)
@constraint(m, e130, 0.5*x[124]-x[181] <= 0.0)
@constraint(m, e131, -x[74]+x[90]-x[91] <= 0.0)
@constraint(m, e132, -x[74]-x[90]+x[91] <= 0.0)
@constraint(m, e133, -x[75]-x[92]+x[93] <= 0.0)
@constraint(m, e134, -x[75]+x[92]-x[93] <= 0.0)
@constraint(m, e135, -12*i[1]-12*i[2]-x[90]+x[91]+0.5*x[94]+0.5*x[95] <= 0.0)
@constraint(m, e136, -12*i[1]+12*i[2]+x[90]-x[91]+0.5*x[94]+0.5*x[95] <= 12.0)
@constraint(m, e137, 13*i[1]-13*i[2]+x[92]-x[93]+0.5*x[96]+0.5*x[97] <= 13.0)
@constraint(m, e138, 13*i[1]+13*i[2]-x[92]+x[93]+0.5*x[96]+0.5*x[97] <= 26.0)
@constraint(m, e139, x[90]-x[99]-x[168] <= 0.0)
@constraint(m, e140, -x[90]-x[99]+x[168] <= 0.0)
@constraint(m, e141, x[93]-x[101]-x[169] <= 0.0)
@constraint(m, e142, -x[93]-x[101]+x[169] <= 0.0)
@constraint(m, e143, -12*i[3]-12*i[4]-x[90]+0.5*x[94]+0.5*x[98]+x[168] <= 0.0)
@constraint(m, e144, -12*i[3]+12*i[4]+x[90]+0.5*x[94]+0.5*x[98]-x[168] <= 12.0)
@constraint(m, e145, 13*i[3]-13*i[4]-x[93]+0.5*x[96]+0.5*x[100]+x[169] <= 13.0)
@constraint(m, e146, 13*i[3]+13*i[4]+x[93]+0.5*x[96]+0.5*x[100]-x[169] <= 26.0)
@constraint(m, e147, x[90]-x[103]-x[170] <= 0.0)
@constraint(m, e148, -x[90]-x[103]+x[170] <= 0.0)
@constraint(m, e149, x[93]-x[105]-x[171] <= 0.0)
@constraint(m, e150, -x[93]-x[105]+x[171] <= 0.0)
@constraint(m, e151, -12*i[5]-12*i[6]-x[90]+0.5*x[94]+0.5*x[102]+x[170] <= 0.0)
@constraint(m, e152, -12*i[5]+12*i[6]+x[90]+0.5*x[94]+0.5*x[102]-x[170] <= 12.0)
@constraint(m, e153, 13*i[5]-13*i[6]-x[93]+0.5*x[96]+0.5*x[104]+x[171] <= 13.0)
@constraint(m, e154, 13*i[5]+13*i[6]+x[93]+0.5*x[96]+0.5*x[104]-x[171] <= 26.0)
@constraint(m, e155, x[90]-x[107]-x[172] <= 0.0)
@constraint(m, e156, -x[90]-x[107]+x[172] <= 0.0)
@constraint(m, e157, x[93]-x[109]-x[173] <= 0.0)
@constraint(m, e158, -x[93]-x[109]+x[173] <= 0.0)
@constraint(m, e159, -12*i[7]-12*i[8]-x[90]+0.5*x[94]+0.5*x[106]+x[172] <= 0.0)
@constraint(m, e160, -12*i[7]+12*i[8]+x[90]+0.5*x[94]+0.5*x[106]-x[172] <= 12.0)
@constraint(m, e161, 13*i[7]-13*i[8]-x[93]+0.5*x[96]+0.5*x[108]+x[173] <= 13.0)
@constraint(m, e162, 13*i[7]+13*i[8]+x[93]+0.5*x[96]+0.5*x[108]-x[173] <= 26.0)
@constraint(m, e163, x[90]-x[111]-x[174] <= 0.0)
@constraint(m, e164, -x[90]-x[111]+x[174] <= 0.0)
@constraint(m, e165, x[93]-x[113]-x[175] <= 0.0)
@constraint(m, e166, -x[93]-x[113]+x[175] <= 0.0)
@constraint(m, e167, -12*i[9]-12*i[10]-x[90]+0.5*x[94]+0.5*x[110]+x[174] <= 0.0)
@constraint(m, e168, -12*i[9]+12*i[10]+x[90]+0.5*x[94]+0.5*x[110]-x[174] <= 12.0)
@constraint(m, e169, 13*i[9]-13*i[10]-x[93]+0.5*x[96]+0.5*x[112]+x[175] <= 13.0)
@constraint(m, e170, 13*i[9]+13*i[10]+x[93]+0.5*x[96]+0.5*x[112]-x[175] <= 26.0)
@constraint(m, e171, x[90]-x[115]-x[176] <= 0.0)
@constraint(m, e172, -x[90]-x[115]+x[176] <= 0.0)
@constraint(m, e173, x[93]-x[117]-x[177] <= 0.0)
@constraint(m, e174, -x[93]-x[117]+x[177] <= 0.0)
@constraint(m, e175, -12*i[11]-12*i[12]-x[90]+0.5*x[94]+0.5*x[114]+x[176] <= 0.0)
@constraint(m, e176, -12*i[11]+12*i[12]+x[90]+0.5*x[94]+0.5*x[114]-x[176] <= 12.0)
@constraint(m, e177, 13*i[11]-13*i[12]-x[93]+0.5*x[96]+0.5*x[116]+x[177] <= 13.0)
@constraint(m, e178, 13*i[11]+13*i[12]+x[93]+0.5*x[96]+0.5*x[116]-x[177] <= 26.0)
@constraint(m, e179, x[90]-x[119]-x[178] <= 0.0)
@constraint(m, e180, -x[90]-x[119]+x[178] <= 0.0)
@constraint(m, e181, x[93]-x[121]-x[179] <= 0.0)
@constraint(m, e182, -x[93]-x[121]+x[179] <= 0.0)
@constraint(m, e183, -12*i[13]-12*i[14]-x[90]+0.5*x[94]+0.5*x[118]+x[178] <= 0.0)
@constraint(m, e184, -12*i[13]+12*i[14]+x[90]+0.5*x[94]+0.5*x[118]-x[178] <= 12.0)
@constraint(m, e185, 13*i[13]-13*i[14]-x[93]+0.5*x[96]+0.5*x[120]+x[179] <= 13.0)
@constraint(m, e186, 13*i[13]+13*i[14]+x[93]+0.5*x[96]+0.5*x[120]-x[179] <= 26.0)
@constraint(m, e187, x[90]-x[123]-x[180] <= 0.0)
@constraint(m, e188, -x[90]-x[123]+x[180] <= 0.0)
@constraint(m, e189, x[93]-x[125]-x[181] <= 0.0)
@constraint(m, e190, -x[93]-x[125]+x[181] <= 0.0)
@constraint(m, e191, -12*i[15]-12*i[16]-x[90]+0.5*x[94]+0.5*x[122]+x[180] <= 0.0)
@constraint(m, e192, -12*i[15]+12*i[16]+x[90]+0.5*x[94]+0.5*x[122]-x[180] <= 12.0)
@constraint(m, e193, 13*i[15]-13*i[16]-x[93]+0.5*x[96]+0.5*x[124]+x[181] <= 13.0)
@constraint(m, e194, 13*i[15]+13*i[16]+x[93]+0.5*x[96]+0.5*x[124]-x[181] <= 26.0)
@constraint(m, e195, -x[76]+x[91]-x[168] <= 0.0)
@constraint(m, e196, -x[76]-x[91]+x[168] <= 0.0)
@constraint(m, e197, -x[77]+x[92]-x[169] <= 0.0)
@constraint(m, e198, -x[77]-x[92]+x[169] <= 0.0)
@constraint(m, e199, -12*i[17]-12*i[18]-x[91]+0.5*x[95]+0.5*x[98]+x[168] <= 0.0)
@constraint(m, e200, -12*i[17]+12*i[18]+x[91]+0.5*x[95]+0.5*x[98]-x[168] <= 12.0)
@constraint(m, e201, 13*i[17]-13*i[18]-x[92]+0.5*x[97]+0.5*x[100]+x[169] <= 13.0)
@constraint(m, e202, 13*i[17]+13*i[18]+x[92]+0.5*x[97]+0.5*x[100]-x[169] <= 26.0)
@constraint(m, e203, x[91]-x[126]-x[170] <= 0.0)
@constraint(m, e204, -x[91]-x[126]+x[170] <= 0.0)
@constraint(m, e205, x[92]-x[127]-x[171] <= 0.0)
@constraint(m, e206, -x[92]-x[127]+x[171] <= 0.0)
@constraint(m, e207, -12*i[19]-12*i[20]-x[91]+0.5*x[95]+0.5*x[102]+x[170] <= 0.0)
@constraint(m, e208, -12*i[19]+12*i[20]+x[91]+0.5*x[95]+0.5*x[102]-x[170] <= 12.0)
@constraint(m, e209, 13*i[19]-13*i[20]-x[92]+0.5*x[97]+0.5*x[104]+x[171] <= 13.0)
@constraint(m, e210, 13*i[19]+13*i[20]+x[92]+0.5*x[97]+0.5*x[104]-x[171] <= 26.0)
@constraint(m, e211, x[91]-x[128]-x[172] <= 0.0)
@constraint(m, e212, -x[91]-x[128]+x[172] <= 0.0)
@constraint(m, e213, x[92]-x[129]-x[173] <= 0.0)
@constraint(m, e214, -x[92]-x[129]+x[173] <= 0.0)
@constraint(m, e215, -12*i[21]-12*i[22]-x[91]+0.5*x[95]+0.5*x[106]+x[172] <= 0.0)
@constraint(m, e216, -12*i[21]+12*i[22]+x[91]+0.5*x[95]+0.5*x[106]-x[172] <= 12.0)
@constraint(m, e217, 13*i[21]-13*i[22]-x[92]+0.5*x[97]+0.5*x[108]+x[173] <= 13.0)
@constraint(m, e218, 13*i[21]+13*i[22]+x[92]+0.5*x[97]+0.5*x[108]-x[173] <= 26.0)
@constraint(m, e219, x[91]-x[130]-x[174] <= 0.0)
@constraint(m, e220, -x[91]-x[130]+x[174] <= 0.0)
@constraint(m, e221, x[92]-x[131]-x[175] <= 0.0)
@constraint(m, e222, -x[92]-x[131]+x[175] <= 0.0)
@constraint(m, e223, -12*i[23]-12*i[24]-x[91]+0.5*x[95]+0.5*x[110]+x[174] <= 0.0)
@constraint(m, e224, -12*i[23]+12*i[24]+x[91]+0.5*x[95]+0.5*x[110]-x[174] <= 12.0)
@constraint(m, e225, 13*i[23]-13*i[24]-x[92]+0.5*x[97]+0.5*x[112]+x[175] <= 13.0)
@constraint(m, e226, 13*i[23]+13*i[24]+x[92]+0.5*x[97]+0.5*x[112]-x[175] <= 26.0)
@constraint(m, e227, x[91]-x[132]-x[176] <= 0.0)
@constraint(m, e228, -x[91]-x[132]+x[176] <= 0.0)
@constraint(m, e229, x[92]-x[133]-x[177] <= 0.0)
@constraint(m, e230, -x[92]-x[133]+x[177] <= 0.0)
@constraint(m, e231, -12*i[25]-12*i[26]-x[91]+0.5*x[95]+0.5*x[114]+x[176] <= 0.0)
@constraint(m, e232, -12*i[25]+12*i[26]+x[91]+0.5*x[95]+0.5*x[114]-x[176] <= 12.0)
@constraint(m, e233, 13*i[25]-13*i[26]-x[92]+0.5*x[97]+0.5*x[116]+x[177] <= 13.0)
@constraint(m, e234, 13*i[25]+13*i[26]+x[92]+0.5*x[97]+0.5*x[116]-x[177] <= 26.0)
@constraint(m, e235, x[91]-x[134]-x[178] <= 0.0)
@constraint(m, e236, -x[91]-x[134]+x[178] <= 0.0)
@constraint(m, e237, x[92]-x[135]-x[179] <= 0.0)
@constraint(m, e238, -x[92]-x[135]+x[179] <= 0.0)
@constraint(m, e239, -12*i[27]-12*i[28]-x[91]+0.5*x[95]+0.5*x[118]+x[178] <= 0.0)
@constraint(m, e240, -12*i[27]+12*i[28]+x[91]+0.5*x[95]+0.5*x[118]-x[178] <= 12.0)
@constraint(m, e241, 13*i[27]-13*i[28]-x[92]+0.5*x[97]+0.5*x[120]+x[179] <= 13.0)
@constraint(m, e242, 13*i[27]+13*i[28]+x[92]+0.5*x[97]+0.5*x[120]-x[179] <= 26.0)
@constraint(m, e243, x[91]-x[136]-x[180] <= 0.0)
@constraint(m, e244, -x[91]-x[136]+x[180] <= 0.0)
@constraint(m, e245, x[92]-x[137]-x[181] <= 0.0)
@constraint(m, e246, -x[92]-x[137]+x[181] <= 0.0)
@constraint(m, e247, -12*i[29]-12*i[30]-x[91]+0.5*x[95]+0.5*x[122]+x[180] <= 0.0)
@constraint(m, e248, -12*i[29]+12*i[30]+x[91]+0.5*x[95]+0.5*x[122]-x[180] <= 12.0)
@constraint(m, e249, 13*i[29]-13*i[30]-x[92]+0.5*x[97]+0.5*x[124]+x[181] <= 13.0)
@constraint(m, e250, 13*i[29]+13*i[30]+x[92]+0.5*x[97]+0.5*x[124]-x[181] <= 26.0)
@constraint(m, e251, -x[78]+x[168]-x[170] <= 0.0)
@constraint(m, e252, -x[78]-x[168]+x[170] <= 0.0)
@constraint(m, e253, -x[79]+x[169]-x[171] <= 0.0)
@constraint(m, e254, -x[79]-x[169]+x[171] <= 0.0)
@constraint(m, e255, -12*i[31]-12*i[32]+0.5*x[98]+0.5*x[102]-x[168]+x[170] <= 0.0)
@constraint(m, e256, -12*i[31]+12*i[32]+0.5*x[98]+0.5*x[102]+x[168]-x[170] <= 12.0)
@constraint(m, e257, 13*i[31]-13*i[32]+0.5*x[100]+0.5*x[104]-x[169]+x[171] <= 13.0)
@constraint(m, e258, 13*i[31]+13*i[32]+0.5*x[100]+0.5*x[104]+x[169]-x[171] <= 26.0)
@constraint(m, e259, -x[138]+x[168]-x[172] <= 0.0)
@constraint(m, e260, -x[138]-x[168]+x[172] <= 0.0)
@constraint(m, e261, -x[139]+x[169]-x[173] <= 0.0)
@constraint(m, e262, -x[139]-x[169]+x[173] <= 0.0)
@constraint(m, e263, -12*i[33]-12*i[34]+0.5*x[98]+0.5*x[106]-x[168]+x[172] <= 0.0)
@constraint(m, e264, -12*i[33]+12*i[34]+0.5*x[98]+0.5*x[106]+x[168]-x[172] <= 12.0)
@constraint(m, e265, 13*i[33]-13*i[34]+0.5*x[100]+0.5*x[108]-x[169]+x[173] <= 13.0)
@constraint(m, e266, 13*i[33]+13*i[34]+0.5*x[100]+0.5*x[108]+x[169]-x[173] <= 26.0)
@constraint(m, e267, -x[140]+x[168]-x[174] <= 0.0)
@constraint(m, e268, -x[140]-x[168]+x[174] <= 0.0)
@constraint(m, e269, -x[141]+x[169]-x[175] <= 0.0)
@constraint(m, e270, -x[141]-x[169]+x[175] <= 0.0)
@constraint(m, e271, -12*i[35]-12*i[36]+0.5*x[98]+0.5*x[110]-x[168]+x[174] <= 0.0)
@constraint(m, e272, -12*i[35]+12*i[36]+0.5*x[98]+0.5*x[110]+x[168]-x[174] <= 12.0)
@constraint(m, e273, 13*i[35]-13*i[36]+0.5*x[100]+0.5*x[112]-x[169]+x[175] <= 13.0)
@constraint(m, e274, 13*i[35]+13*i[36]+0.5*x[100]+0.5*x[112]+x[169]-x[175] <= 26.0)
@constraint(m, e275, -x[142]+x[168]-x[176] <= 0.0)
@constraint(m, e276, -x[142]-x[168]+x[176] <= 0.0)
@constraint(m, e277, -x[143]+x[169]-x[177] <= 0.0)
@constraint(m, e278, -x[143]-x[169]+x[177] <= 0.0)
@constraint(m, e279, -12*i[37]-12*i[38]+0.5*x[98]+0.5*x[114]-x[168]+x[176] <= 0.0)
@constraint(m, e280, -12*i[37]+12*i[38]+0.5*x[98]+0.5*x[114]+x[168]-x[176] <= 12.0)
@constraint(m, e281, 13*i[37]-13*i[38]+0.5*x[100]+0.5*x[116]-x[169]+x[177] <= 13.0)
@constraint(m, e282, 13*i[37]+13*i[38]+0.5*x[100]+0.5*x[116]+x[169]-x[177] <= 26.0)
@constraint(m, e283, -x[144]+x[168]-x[178] <= 0.0)
@constraint(m, e284, -x[144]-x[168]+x[178] <= 0.0)
@constraint(m, e285, -x[145]+x[169]-x[179] <= 0.0)
@constraint(m, e286, -x[145]-x[169]+x[179] <= 0.0)
@constraint(m, e287, -12*i[39]-12*i[40]+0.5*x[98]+0.5*x[118]-x[168]+x[178] <= 0.0)
@constraint(m, e288, -12*i[39]+12*i[40]+0.5*x[98]+0.5*x[118]+x[168]-x[178] <= 12.0)
@constraint(m, e289, 13*i[39]-13*i[40]+0.5*x[100]+0.5*x[120]-x[169]+x[179] <= 13.0)
@constraint(m, e290, 13*i[39]+13*i[40]+0.5*x[100]+0.5*x[120]+x[169]-x[179] <= 26.0)
@constraint(m, e291, -x[146]+x[168]-x[180] <= 0.0)
@constraint(m, e292, -x[146]-x[168]+x[180] <= 0.0)
@constraint(m, e293, -x[147]+x[169]-x[181] <= 0.0)
@constraint(m, e294, -x[147]-x[169]+x[181] <= 0.0)
@constraint(m, e295, -12*i[41]-12*i[42]+0.5*x[98]+0.5*x[122]-x[168]+x[180] <= 0.0)
@constraint(m, e296, -12*i[41]+12*i[42]+0.5*x[98]+0.5*x[122]+x[168]-x[180] <= 12.0)
@constraint(m, e297, 13*i[41]-13*i[42]+0.5*x[100]+0.5*x[124]-x[169]+x[181] <= 13.0)
@constraint(m, e298, 13*i[41]+13*i[42]+0.5*x[100]+0.5*x[124]+x[169]-x[181] <= 26.0)
@constraint(m, e299, -x[80]+x[170]-x[172] <= 0.0)
@constraint(m, e300, -x[80]-x[170]+x[172] <= 0.0)
@constraint(m, e301, -x[81]+x[171]-x[173] <= 0.0)
@constraint(m, e302, -x[81]-x[171]+x[173] <= 0.0)
@constraint(m, e303, -12*i[43]-12*i[44]+0.5*x[102]+0.5*x[106]-x[170]+x[172] <= 0.0)
@constraint(m, e304, -12*i[43]+12*i[44]+0.5*x[102]+0.5*x[106]+x[170]-x[172] <= 12.0)
@constraint(m, e305, 13*i[43]-13*i[44]+0.5*x[104]+0.5*x[108]-x[171]+x[173] <= 13.0)
@constraint(m, e306, 13*i[43]+13*i[44]+0.5*x[104]+0.5*x[108]+x[171]-x[173] <= 26.0)
@constraint(m, e307, -x[148]+x[170]-x[174] <= 0.0)
@constraint(m, e308, -x[148]-x[170]+x[174] <= 0.0)
@constraint(m, e309, -x[149]+x[171]-x[175] <= 0.0)
@constraint(m, e310, -x[149]-x[171]+x[175] <= 0.0)
@constraint(m, e311, -12*i[45]-12*i[46]+0.5*x[102]+0.5*x[110]-x[170]+x[174] <= 0.0)
@constraint(m, e312, -12*i[45]+12*i[46]+0.5*x[102]+0.5*x[110]+x[170]-x[174] <= 12.0)
@constraint(m, e313, 13*i[45]-13*i[46]+0.5*x[104]+0.5*x[112]-x[171]+x[175] <= 13.0)
@constraint(m, e314, 13*i[45]+13*i[46]+0.5*x[104]+0.5*x[112]+x[171]-x[175] <= 26.0)
@constraint(m, e315, -x[150]+x[170]-x[176] <= 0.0)
@constraint(m, e316, -x[150]-x[170]+x[176] <= 0.0)
@constraint(m, e317, -x[151]+x[171]-x[177] <= 0.0)
@constraint(m, e318, -x[151]-x[171]+x[177] <= 0.0)
@constraint(m, e319, -12*i[47]-12*i[48]+0.5*x[102]+0.5*x[114]-x[170]+x[176] <= 0.0)
@constraint(m, e320, -12*i[47]+12*i[48]+0.5*x[102]+0.5*x[114]+x[170]-x[176] <= 12.0)
@constraint(m, e321, 13*i[47]-13*i[48]+0.5*x[104]+0.5*x[116]-x[171]+x[177] <= 13.0)
@constraint(m, e322, 13*i[47]+13*i[48]+0.5*x[104]+0.5*x[116]+x[171]-x[177] <= 26.0)
@constraint(m, e323, -x[152]+x[170]-x[178] <= 0.0)
@constraint(m, e324, -x[152]-x[170]+x[178] <= 0.0)
@constraint(m, e325, -x[153]+x[171]-x[179] <= 0.0)
@constraint(m, e326, -x[153]-x[171]+x[179] <= 0.0)
@constraint(m, e327, -12*i[49]-12*i[50]+0.5*x[102]+0.5*x[118]-x[170]+x[178] <= 0.0)
@constraint(m, e328, -12*i[49]+12*i[50]+0.5*x[102]+0.5*x[118]+x[170]-x[178] <= 12.0)
@constraint(m, e329, 13*i[49]-13*i[50]+0.5*x[104]+0.5*x[120]-x[171]+x[179] <= 13.0)
@constraint(m, e330, 13*i[49]+13*i[50]+0.5*x[104]+0.5*x[120]+x[171]-x[179] <= 26.0)
@constraint(m, e331, -x[154]+x[170]-x[180] <= 0.0)
@constraint(m, e332, -x[154]-x[170]+x[180] <= 0.0)
@constraint(m, e333, -x[155]+x[171]-x[181] <= 0.0)
@constraint(m, e334, -x[155]-x[171]+x[181] <= 0.0)
@constraint(m, e335, -12*i[51]-12*i[52]+0.5*x[102]+0.5*x[122]-x[170]+x[180] <= 0.0)
@constraint(m, e336, -12*i[51]+12*i[52]+0.5*x[102]+0.5*x[122]+x[170]-x[180] <= 12.0)
@constraint(m, e337, 13*i[51]-13*i[52]+0.5*x[104]+0.5*x[124]-x[171]+x[181] <= 13.0)
@constraint(m, e338, 13*i[51]+13*i[52]+0.5*x[104]+0.5*x[124]+x[171]-x[181] <= 26.0)
@constraint(m, e339, -x[82]+x[172]-x[174] <= 0.0)
@constraint(m, e340, -x[82]-x[172]+x[174] <= 0.0)
@constraint(m, e341, -x[83]+x[173]-x[175] <= 0.0)
@constraint(m, e342, -x[83]-x[173]+x[175] <= 0.0)
@constraint(m, e343, -12*i[53]-12*i[54]+0.5*x[106]+0.5*x[110]-x[172]+x[174] <= 0.0)
@constraint(m, e344, -12*i[53]+12*i[54]+0.5*x[106]+0.5*x[110]+x[172]-x[174] <= 12.0)
@constraint(m, e345, 13*i[53]-13*i[54]+0.5*x[108]+0.5*x[112]-x[173]+x[175] <= 13.0)
@constraint(m, e346, 13*i[53]+13*i[54]+0.5*x[108]+0.5*x[112]+x[173]-x[175] <= 26.0)
@constraint(m, e347, -x[156]+x[172]-x[176] <= 0.0)
@constraint(m, e348, -x[156]-x[172]+x[176] <= 0.0)
@constraint(m, e349, -x[157]+x[173]-x[177] <= 0.0)
@constraint(m, e350, -x[157]-x[173]+x[177] <= 0.0)
@constraint(m, e351, -12*i[55]-12*i[56]+0.5*x[106]+0.5*x[114]-x[172]+x[176] <= 0.0)
@constraint(m, e352, -12*i[55]+12*i[56]+0.5*x[106]+0.5*x[114]+x[172]-x[176] <= 12.0)
@constraint(m, e353, 13*i[55]-13*i[56]+0.5*x[108]+0.5*x[116]-x[173]+x[177] <= 13.0)
@constraint(m, e354, 13*i[55]+13*i[56]+0.5*x[108]+0.5*x[116]+x[173]-x[177] <= 26.0)
@constraint(m, e355, -x[158]+x[172]-x[178] <= 0.0)
@constraint(m, e356, -x[158]-x[172]+x[178] <= 0.0)
@constraint(m, e357, -x[159]+x[173]-x[179] <= 0.0)
@constraint(m, e358, -x[159]-x[173]+x[179] <= 0.0)
@constraint(m, e359, -12*i[57]-12*i[58]+0.5*x[106]+0.5*x[118]-x[172]+x[178] <= 0.0)
@constraint(m, e360, -12*i[57]+12*i[58]+0.5*x[106]+0.5*x[118]+x[172]-x[178] <= 12.0)
@constraint(m, e361, 13*i[57]-13*i[58]+0.5*x[108]+0.5*x[120]-x[173]+x[179] <= 13.0)
@constraint(m, e362, 13*i[57]+13*i[58]+0.5*x[108]+0.5*x[120]+x[173]-x[179] <= 26.0)
@constraint(m, e363, -x[160]+x[172]-x[180] <= 0.0)
@constraint(m, e364, -x[160]-x[172]+x[180] <= 0.0)
@constraint(m, e365, -x[161]+x[173]-x[181] <= 0.0)
@constraint(m, e366, -x[161]-x[173]+x[181] <= 0.0)
@constraint(m, e367, -12*i[59]-12*i[60]+0.5*x[106]+0.5*x[122]-x[172]+x[180] <= 0.0)
@constraint(m, e368, -12*i[59]+12*i[60]+0.5*x[106]+0.5*x[122]+x[172]-x[180] <= 12.0)
@constraint(m, e369, 13*i[59]-13*i[60]+0.5*x[108]+0.5*x[124]-x[173]+x[181] <= 13.0)
@constraint(m, e370, 13*i[59]+13*i[60]+0.5*x[108]+0.5*x[124]+x[173]-x[181] <= 26.0)
@constraint(m, e371, -x[84]+x[174]-x[176] <= 0.0)
@constraint(m, e372, -x[84]-x[174]+x[176] <= 0.0)
@constraint(m, e373, -x[85]+x[175]-x[177] <= 0.0)
@constraint(m, e374, -x[85]-x[175]+x[177] <= 0.0)
@constraint(m, e375, -12*i[61]-12*i[62]+0.5*x[110]+0.5*x[114]-x[174]+x[176] <= 0.0)
@constraint(m, e376, -12*i[61]+12*i[62]+0.5*x[110]+0.5*x[114]+x[174]-x[176] <= 12.0)
@constraint(m, e377, 13*i[61]-13*i[62]+0.5*x[112]+0.5*x[116]-x[175]+x[177] <= 13.0)
@constraint(m, e378, 13*i[61]+13*i[62]+0.5*x[112]+0.5*x[116]+x[175]-x[177] <= 26.0)
@constraint(m, e379, -x[162]+x[174]-x[178] <= 0.0)
@constraint(m, e380, -x[162]-x[174]+x[178] <= 0.0)
@constraint(m, e381, -x[163]+x[175]-x[179] <= 0.0)
@constraint(m, e382, -x[163]-x[175]+x[179] <= 0.0)
@constraint(m, e383, -12*i[63]-12*i[64]+0.5*x[110]+0.5*x[118]-x[174]+x[178] <= 0.0)
@constraint(m, e384, -12*i[63]+12*i[64]+0.5*x[110]+0.5*x[118]+x[174]-x[178] <= 12.0)
@constraint(m, e385, 13*i[63]-13*i[64]+0.5*x[112]+0.5*x[120]-x[175]+x[179] <= 13.0)
@constraint(m, e386, 13*i[63]+13*i[64]+0.5*x[112]+0.5*x[120]+x[175]-x[179] <= 26.0)
@constraint(m, e387, -x[164]+x[174]-x[180] <= 0.0)
@constraint(m, e388, -x[164]-x[174]+x[180] <= 0.0)
@constraint(m, e389, -x[165]+x[175]-x[181] <= 0.0)
@constraint(m, e390, -x[165]-x[175]+x[181] <= 0.0)
@constraint(m, e391, -12*i[65]-12*i[66]+0.5*x[110]+0.5*x[122]-x[174]+x[180] <= 0.0)
@constraint(m, e392, -12*i[65]+12*i[66]+0.5*x[110]+0.5*x[122]+x[174]-x[180] <= 12.0)
@constraint(m, e393, 13*i[65]-13*i[66]+0.5*x[112]+0.5*x[124]-x[175]+x[181] <= 13.0)
@constraint(m, e394, 13*i[65]+13*i[66]+0.5*x[112]+0.5*x[124]+x[175]-x[181] <= 26.0)
@constraint(m, e395, -x[86]+x[176]-x[178] <= 0.0)
@constraint(m, e396, -x[86]-x[176]+x[178] <= 0.0)
@constraint(m, e397, -x[87]+x[177]-x[179] <= 0.0)
@constraint(m, e398, -x[87]-x[177]+x[179] <= 0.0)
@constraint(m, e399, -12*i[67]-12*i[68]+0.5*x[114]+0.5*x[118]-x[176]+x[178] <= 0.0)
@constraint(m, e400, -12*i[67]+12*i[68]+0.5*x[114]+0.5*x[118]+x[176]-x[178] <= 12.0)
@constraint(m, e401, 13*i[67]-13*i[68]+0.5*x[116]+0.5*x[120]-x[177]+x[179] <= 13.0)
@constraint(m, e402, 13*i[67]+13*i[68]+0.5*x[116]+0.5*x[120]+x[177]-x[179] <= 26.0)
@constraint(m, e403, -x[166]+x[176]-x[180] <= 0.0)
@constraint(m, e404, -x[166]-x[176]+x[180] <= 0.0)
@constraint(m, e405, -x[167]+x[177]-x[181] <= 0.0)
@constraint(m, e406, -x[167]-x[177]+x[181] <= 0.0)
@constraint(m, e407, -12*i[69]-12*i[70]+0.5*x[114]+0.5*x[122]-x[176]+x[180] <= 0.0)
@constraint(m, e408, -12*i[69]+12*i[70]+0.5*x[114]+0.5*x[122]+x[176]-x[180] <= 12.0)
@constraint(m, e409, 13*i[69]-13*i[70]+0.5*x[116]+0.5*x[124]-x[177]+x[181] <= 13.0)
@constraint(m, e410, 13*i[69]+13*i[70]+0.5*x[116]+0.5*x[124]+x[177]-x[181] <= 26.0)
@constraint(m, e411, -x[88]+x[178]-x[180] <= 0.0)
@constraint(m, e412, -x[88]-x[178]+x[180] <= 0.0)
@constraint(m, e413, -x[89]+x[179]-x[181] <= 0.0)
@constraint(m, e414, -x[89]-x[179]+x[181] <= 0.0)
@constraint(m, e415, -12*i[71]-12*i[72]+0.5*x[118]+0.5*x[122]-x[178]+x[180] <= 0.0)
@constraint(m, e416, -12*i[71]+12*i[72]+0.5*x[118]+0.5*x[122]+x[178]-x[180] <= 12.0)
@constraint(m, e417, 13*i[71]-13*i[72]+0.5*x[120]+0.5*x[124]-x[179]+x[181] <= 13.0)
@constraint(m, e418, 13*i[71]+13*i[72]+0.5*x[120]+0.5*x[124]+x[179]-x[181] <= 26.0)
@NLconstraint(m, e419, 16/x[94]-x[96] <= 0.0)
@NLconstraint(m, e420, 16/x[96]-x[94] <= 0.0)
@NLconstraint(m, e421, 16/x[95]-x[97] <= 0.0)
@NLconstraint(m, e422, 16/x[97]-x[95] <= 0.0)
@NLconstraint(m, e423, 16/x[98]-x[100] <= 0.0)
@NLconstraint(m, e424, 16/x[100]-x[98] <= 0.0)
@NLconstraint(m, e425, 36/x[102]-x[104] <= 0.0)
@NLconstraint(m, e426, 36/x[104]-x[102] <= 0.0)
@NLconstraint(m, e427, 36/x[106]-x[108] <= 0.0)
@NLconstraint(m, e428, 36/x[108]-x[106] <= 0.0)
@NLconstraint(m, e429, 9/x[110]-x[112] <= 0.0)
@NLconstraint(m, e430, 9/x[112]-x[110] <= 0.0)
@NLconstraint(m, e431, 9/x[114]-x[116] <= 0.0)
@NLconstraint(m, e432, 9/x[116]-x[114] <= 0.0)
@NLconstraint(m, e433, 9/x[118]-x[120] <= 0.0)
@NLconstraint(m, e434, 9/x[120]-x[118] <= 0.0)
@NLconstraint(m, e435, 9/x[122]-x[124] <= 0.0)
@NLconstraint(m, e436, 9/x[124]-x[122] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
