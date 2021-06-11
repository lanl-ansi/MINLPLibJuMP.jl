using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166]
@variable(m, x[x_Idx])
b_Idx = Any[77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
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
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[2], 40.0)
set_upper_bound(x[3], 40.0)
set_upper_bound(x[4], 40.0)
set_upper_bound(x[35], 30.0)
set_upper_bound(x[36], 30.0)
set_upper_bound(x[37], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4]-5*x[20]-10*x[21]-5*x[22]+2*x[35]+x[36]+2*x[37]-80*x[59]-90*x[60]-120*x[61]-285*x[62]-390*x[63]-350*x[64]-290*x[65]-405*x[66]-190*x[67]-280*x[68]-400*x[69]-430*x[70]-290*x[71]-300*x[72]-240*x[73]-350*x[74]-250*x[75]-300*x[76]+5*b[107]+4*b[108]+6*b[109]+8*b[110]+7*b[111]+6*b[112]+6*b[113]+9*b[114]+4*b[115]+10*b[116]+9*b[117]+5*b[118]+6*b[119]+10*b[120]+6*b[121]+7*b[122]+7*b[123]+4*b[124]+4*b[125]+3*b[126]+2*b[127]+5*b[128]+6*b[129]+7*b[130]+2*b[131]+5*b[132]+2*b[133]+4*b[134]+7*b[135]+4*b[136] == 0.0)
@constraint(m, e2, x[2]-x[5]-x[8] == 0.0)
@constraint(m, e3, x[3]-x[6]-x[9] == 0.0)
@constraint(m, e4, x[4]-x[7]-x[10] == 0.0)
@constraint(m, e5, -x[11]-x[14]+x[17] == 0.0)
@constraint(m, e6, -x[12]-x[15]+x[18] == 0.0)
@constraint(m, e7, -x[13]-x[16]+x[19] == 0.0)
@constraint(m, e8, x[17]-x[20]-x[23] == 0.0)
@constraint(m, e9, x[18]-x[21]-x[24] == 0.0)
@constraint(m, e10, x[19]-x[22]-x[25] == 0.0)
@constraint(m, e11, x[23]-x[26]-x[29]-x[32] == 0.0)
@constraint(m, e12, x[24]-x[27]-x[30]-x[33] == 0.0)
@constraint(m, e13, x[25]-x[28]-x[31]-x[34] == 0.0)
@constraint(m, e14, x[38]-x[47]-x[50] == 0.0)
@constraint(m, e15, x[39]-x[48]-x[51] == 0.0)
@constraint(m, e16, x[40]-x[49]-x[52] == 0.0)
@constraint(m, e17, x[44]-x[53]-x[56]-x[59] == 0.0)
@constraint(m, e18, x[45]-x[54]-x[57]-x[60] == 0.0)
@constraint(m, e19, x[46]-x[55]-x[58]-x[61] == 0.0)
@NLconstraint(m, e20, -log(1+x[5])+x[11]+b[77] <= 1.0)
@NLconstraint(m, e21, -log(1+x[6])+x[12]+b[78] <= 1.0)
@NLconstraint(m, e22, -log(1+x[7])+x[13]+b[79] <= 1.0)
@constraint(m, e23, x[5]-40*b[77] <= 0.0)
@constraint(m, e24, x[6]-40*b[78] <= 0.0)
@constraint(m, e25, x[7]-40*b[79] <= 0.0)
@constraint(m, e26, x[11]-3.71357206670431*b[77] <= 0.0)
@constraint(m, e27, x[12]-3.71357206670431*b[78] <= 0.0)
@constraint(m, e28, x[13]-3.71357206670431*b[79] <= 0.0)
@NLconstraint(m, e29, -1.2*log(1+x[8])+x[14]+b[80] <= 1.0)
@NLconstraint(m, e30, -1.2*log(1+x[9])+x[15]+b[81] <= 1.0)
@NLconstraint(m, e31, -1.2*log(1+x[10])+x[16]+b[82] <= 1.0)
@constraint(m, e32, x[8]-40*b[80] <= 0.0)
@constraint(m, e33, x[9]-40*b[81] <= 0.0)
@constraint(m, e34, x[10]-40*b[82] <= 0.0)
@constraint(m, e35, x[14]-4.45628648004517*b[80] <= 0.0)
@constraint(m, e36, x[15]-4.45628648004517*b[81] <= 0.0)
@constraint(m, e37, x[16]-4.45628648004517*b[82] <= 0.0)
@constraint(m, e38, -0.75*x[26]+x[38]+b[83] <= 1.0)
@constraint(m, e39, -0.75*x[27]+x[39]+b[84] <= 1.0)
@constraint(m, e40, -0.75*x[28]+x[40]+b[85] <= 1.0)
@constraint(m, e41, -0.75*x[26]+x[38]-b[83] >= -1.0)
@constraint(m, e42, -0.75*x[27]+x[39]-b[84] >= -1.0)
@constraint(m, e43, -0.75*x[28]+x[40]-b[85] >= -1.0)
@constraint(m, e44, x[26]-4.45628648004517*b[83] <= 0.0)
@constraint(m, e45, x[27]-4.45628648004517*b[84] <= 0.0)
@constraint(m, e46, x[28]-4.45628648004517*b[85] <= 0.0)
@constraint(m, e47, x[38]-3.34221486003388*b[83] <= 0.0)
@constraint(m, e48, x[39]-3.34221486003388*b[84] <= 0.0)
@constraint(m, e49, x[40]-3.34221486003388*b[85] <= 0.0)
@NLconstraint(m, e50, -1.5*log(1+x[29])+x[41]+b[86] <= 1.0)
@NLconstraint(m, e51, -1.5*log(1+x[30])+x[42]+b[87] <= 1.0)
@NLconstraint(m, e52, -1.5*log(1+x[31])+x[43]+b[88] <= 1.0)
@constraint(m, e53, x[29]-4.45628648004517*b[86] <= 0.0)
@constraint(m, e54, x[30]-4.45628648004517*b[87] <= 0.0)
@constraint(m, e55, x[31]-4.45628648004517*b[88] <= 0.0)
@constraint(m, e56, x[41]-2.54515263975353*b[86] <= 0.0)
@constraint(m, e57, x[42]-2.54515263975353*b[87] <= 0.0)
@constraint(m, e58, x[43]-2.54515263975353*b[88] <= 0.0)
@constraint(m, e59, -x[32]+x[44]+b[89] <= 1.0)
@constraint(m, e60, -x[33]+x[45]+b[90] <= 1.0)
@constraint(m, e61, -x[34]+x[46]+b[91] <= 1.0)
@constraint(m, e62, -x[32]+x[44]-b[89] >= -1.0)
@constraint(m, e63, -x[33]+x[45]-b[90] >= -1.0)
@constraint(m, e64, -x[34]+x[46]-b[91] >= -1.0)
@constraint(m, e65, -0.5*x[35]+x[44]+b[89] <= 1.0)
@constraint(m, e66, -0.5*x[36]+x[45]+b[90] <= 1.0)
@constraint(m, e67, -0.5*x[37]+x[46]+b[91] <= 1.0)
@constraint(m, e68, -0.5*x[35]+x[44]-b[89] >= -1.0)
@constraint(m, e69, -0.5*x[36]+x[45]-b[90] >= -1.0)
@constraint(m, e70, -0.5*x[37]+x[46]-b[91] >= -1.0)
@constraint(m, e71, x[32]-4.45628648004517*b[89] <= 0.0)
@constraint(m, e72, x[33]-4.45628648004517*b[90] <= 0.0)
@constraint(m, e73, x[34]-4.45628648004517*b[91] <= 0.0)
@constraint(m, e74, x[35]-30*b[89] <= 0.0)
@constraint(m, e75, x[36]-30*b[90] <= 0.0)
@constraint(m, e76, x[37]-30*b[91] <= 0.0)
@constraint(m, e77, x[44]-15*b[89] <= 0.0)
@constraint(m, e78, x[45]-15*b[90] <= 0.0)
@constraint(m, e79, x[46]-15*b[91] <= 0.0)
@NLconstraint(m, e80, -1.25*log(1+x[47])+x[62]+b[92] <= 1.0)
@NLconstraint(m, e81, -1.25*log(1+x[48])+x[63]+b[93] <= 1.0)
@NLconstraint(m, e82, -1.25*log(1+x[49])+x[64]+b[94] <= 1.0)
@constraint(m, e83, x[47]-3.34221486003388*b[92] <= 0.0)
@constraint(m, e84, x[48]-3.34221486003388*b[93] <= 0.0)
@constraint(m, e85, x[49]-3.34221486003388*b[94] <= 0.0)
@constraint(m, e86, x[62]-1.83548069293539*b[92] <= 0.0)
@constraint(m, e87, x[63]-1.83548069293539*b[93] <= 0.0)
@constraint(m, e88, x[64]-1.83548069293539*b[94] <= 0.0)
@NLconstraint(m, e89, -0.9*log(1+x[50])+x[65]+b[95] <= 1.0)
@NLconstraint(m, e90, -0.9*log(1+x[51])+x[66]+b[96] <= 1.0)
@NLconstraint(m, e91, -0.9*log(1+x[52])+x[67]+b[97] <= 1.0)
@constraint(m, e92, x[50]-3.34221486003388*b[95] <= 0.0)
@constraint(m, e93, x[51]-3.34221486003388*b[96] <= 0.0)
@constraint(m, e94, x[52]-3.34221486003388*b[97] <= 0.0)
@constraint(m, e95, x[65]-1.32154609891348*b[95] <= 0.0)
@constraint(m, e96, x[66]-1.32154609891348*b[96] <= 0.0)
@constraint(m, e97, x[67]-1.32154609891348*b[97] <= 0.0)
@NLconstraint(m, e98, -log(1+x[41])+x[68]+b[98] <= 1.0)
@NLconstraint(m, e99, -log(1+x[42])+x[69]+b[99] <= 1.0)
@NLconstraint(m, e100, -log(1+x[43])+x[70]+b[100] <= 1.0)
@constraint(m, e101, x[41]-2.54515263975353*b[98] <= 0.0)
@constraint(m, e102, x[42]-2.54515263975353*b[99] <= 0.0)
@constraint(m, e103, x[43]-2.54515263975353*b[100] <= 0.0)
@constraint(m, e104, x[68]-1.26558121681553*b[98] <= 0.0)
@constraint(m, e105, x[69]-1.26558121681553*b[99] <= 0.0)
@constraint(m, e106, x[70]-1.26558121681553*b[100] <= 0.0)
@constraint(m, e107, -0.9*x[53]+x[71]+b[101] <= 1.0)
@constraint(m, e108, -0.9*x[54]+x[72]+b[102] <= 1.0)
@constraint(m, e109, -0.9*x[55]+x[73]+b[103] <= 1.0)
@constraint(m, e110, -0.9*x[53]+x[71]-b[101] >= -1.0)
@constraint(m, e111, -0.9*x[54]+x[72]-b[102] >= -1.0)
@constraint(m, e112, -0.9*x[55]+x[73]-b[103] >= -1.0)
@constraint(m, e113, x[53]-15*b[101] <= 0.0)
@constraint(m, e114, x[54]-15*b[102] <= 0.0)
@constraint(m, e115, x[55]-15*b[103] <= 0.0)
@constraint(m, e116, x[71]-13.5*b[101] <= 0.0)
@constraint(m, e117, x[72]-13.5*b[102] <= 0.0)
@constraint(m, e118, x[73]-13.5*b[103] <= 0.0)
@constraint(m, e119, -0.6*x[56]+x[74]+b[104] <= 1.0)
@constraint(m, e120, -0.6*x[57]+x[75]+b[105] <= 1.0)
@constraint(m, e121, -0.6*x[58]+x[76]+b[106] <= 1.0)
@constraint(m, e122, -0.6*x[56]+x[74]-b[104] >= -1.0)
@constraint(m, e123, -0.6*x[57]+x[75]-b[105] >= -1.0)
@constraint(m, e124, -0.6*x[58]+x[76]-b[106] >= -1.0)
@constraint(m, e125, x[56]-15*b[104] <= 0.0)
@constraint(m, e126, x[57]-15*b[105] <= 0.0)
@constraint(m, e127, x[58]-15*b[106] <= 0.0)
@constraint(m, e128, x[74]-9*b[104] <= 0.0)
@constraint(m, e129, x[75]-9*b[105] <= 0.0)
@constraint(m, e130, x[76]-9*b[106] <= 0.0)
@constraint(m, e131, 5*b[107]+x[137] <= 0.0)
@constraint(m, e132, 4*b[108]+x[138] <= 0.0)
@constraint(m, e133, 6*b[109]+x[139] <= 0.0)
@constraint(m, e134, 8*b[110]+x[140] <= 0.0)
@constraint(m, e135, 7*b[111]+x[141] <= 0.0)
@constraint(m, e136, 6*b[112]+x[142] <= 0.0)
@constraint(m, e137, 6*b[113]+x[143] <= 0.0)
@constraint(m, e138, 9*b[114]+x[144] <= 0.0)
@constraint(m, e139, 4*b[115]+x[145] <= 0.0)
@constraint(m, e140, 10*b[116]+x[146] <= 0.0)
@constraint(m, e141, 9*b[117]+x[147] <= 0.0)
@constraint(m, e142, 5*b[118]+x[148] <= 0.0)
@constraint(m, e143, 6*b[119]+x[149] <= 0.0)
@constraint(m, e144, 10*b[120]+x[150] <= 0.0)
@constraint(m, e145, 6*b[121]+x[151] <= 0.0)
@constraint(m, e146, 7*b[122]+x[152] <= 0.0)
@constraint(m, e147, 7*b[123]+x[153] <= 0.0)
@constraint(m, e148, 4*b[124]+x[154] <= 0.0)
@constraint(m, e149, 4*b[125]+x[155] <= 0.0)
@constraint(m, e150, 3*b[126]+x[156] <= 0.0)
@constraint(m, e151, 2*b[127]+x[157] <= 0.0)
@constraint(m, e152, 5*b[128]+x[158] <= 0.0)
@constraint(m, e153, 6*b[129]+x[159] <= 0.0)
@constraint(m, e154, 7*b[130]+x[160] <= 0.0)
@constraint(m, e155, 2*b[131]+x[161] <= 0.0)
@constraint(m, e156, 5*b[132]+x[162] <= 0.0)
@constraint(m, e157, 2*b[133]+x[163] <= 0.0)
@constraint(m, e158, 4*b[134]+x[164] <= 0.0)
@constraint(m, e159, 7*b[135]+x[165] <= 0.0)
@constraint(m, e160, 4*b[136]+x[166] <= 0.0)
@constraint(m, e161, 5*b[107]+x[137] >= 0.0)
@constraint(m, e162, 4*b[108]+x[138] >= 0.0)
@constraint(m, e163, 6*b[109]+x[139] >= 0.0)
@constraint(m, e164, 8*b[110]+x[140] >= 0.0)
@constraint(m, e165, 7*b[111]+x[141] >= 0.0)
@constraint(m, e166, 6*b[112]+x[142] >= 0.0)
@constraint(m, e167, 6*b[113]+x[143] >= 0.0)
@constraint(m, e168, 9*b[114]+x[144] >= 0.0)
@constraint(m, e169, 4*b[115]+x[145] >= 0.0)
@constraint(m, e170, 10*b[116]+x[146] >= 0.0)
@constraint(m, e171, 9*b[117]+x[147] >= 0.0)
@constraint(m, e172, 5*b[118]+x[148] >= 0.0)
@constraint(m, e173, 6*b[119]+x[149] >= 0.0)
@constraint(m, e174, 10*b[120]+x[150] >= 0.0)
@constraint(m, e175, 6*b[121]+x[151] >= 0.0)
@constraint(m, e176, 7*b[122]+x[152] >= 0.0)
@constraint(m, e177, 7*b[123]+x[153] >= 0.0)
@constraint(m, e178, 4*b[124]+x[154] >= 0.0)
@constraint(m, e179, 4*b[125]+x[155] >= 0.0)
@constraint(m, e180, 3*b[126]+x[156] >= 0.0)
@constraint(m, e181, 2*b[127]+x[157] >= 0.0)
@constraint(m, e182, 5*b[128]+x[158] >= 0.0)
@constraint(m, e183, 6*b[129]+x[159] >= 0.0)
@constraint(m, e184, 7*b[130]+x[160] >= 0.0)
@constraint(m, e185, 2*b[131]+x[161] >= 0.0)
@constraint(m, e186, 5*b[132]+x[162] >= 0.0)
@constraint(m, e187, 2*b[133]+x[163] >= 0.0)
@constraint(m, e188, 4*b[134]+x[164] >= 0.0)
@constraint(m, e189, 7*b[135]+x[165] >= 0.0)
@constraint(m, e190, 4*b[136]+x[166] >= 0.0)
@constraint(m, e191, b[77]-b[78] <= 0.0)
@constraint(m, e192, b[77]-b[79] <= 0.0)
@constraint(m, e193, b[78]-b[79] <= 0.0)
@constraint(m, e194, b[80]-b[81] <= 0.0)
@constraint(m, e195, b[80]-b[82] <= 0.0)
@constraint(m, e196, b[81]-b[82] <= 0.0)
@constraint(m, e197, b[83]-b[84] <= 0.0)
@constraint(m, e198, b[83]-b[85] <= 0.0)
@constraint(m, e199, b[84]-b[85] <= 0.0)
@constraint(m, e200, b[86]-b[87] <= 0.0)
@constraint(m, e201, b[86]-b[88] <= 0.0)
@constraint(m, e202, b[87]-b[88] <= 0.0)
@constraint(m, e203, b[89]-b[90] <= 0.0)
@constraint(m, e204, b[89]-b[91] <= 0.0)
@constraint(m, e205, b[90]-b[91] <= 0.0)
@constraint(m, e206, b[92]-b[93] <= 0.0)
@constraint(m, e207, b[92]-b[94] <= 0.0)
@constraint(m, e208, b[93]-b[94] <= 0.0)
@constraint(m, e209, b[95]-b[96] <= 0.0)
@constraint(m, e210, b[95]-b[97] <= 0.0)
@constraint(m, e211, b[96]-b[97] <= 0.0)
@constraint(m, e212, b[98]-b[99] <= 0.0)
@constraint(m, e213, b[98]-b[100] <= 0.0)
@constraint(m, e214, b[99]-b[100] <= 0.0)
@constraint(m, e215, b[101]-b[102] <= 0.0)
@constraint(m, e216, b[101]-b[103] <= 0.0)
@constraint(m, e217, b[102]-b[103] <= 0.0)
@constraint(m, e218, b[104]-b[105] <= 0.0)
@constraint(m, e219, b[104]-b[106] <= 0.0)
@constraint(m, e220, b[105]-b[106] <= 0.0)
@constraint(m, e221, b[107]+b[108] <= 1.0)
@constraint(m, e222, b[107]+b[109] <= 1.0)
@constraint(m, e223, b[107]+b[108] <= 1.0)
@constraint(m, e224, b[108]+b[109] <= 1.0)
@constraint(m, e225, b[107]+b[109] <= 1.0)
@constraint(m, e226, b[108]+b[109] <= 1.0)
@constraint(m, e227, b[110]+b[111] <= 1.0)
@constraint(m, e228, b[110]+b[112] <= 1.0)
@constraint(m, e229, b[110]+b[111] <= 1.0)
@constraint(m, e230, b[111]+b[112] <= 1.0)
@constraint(m, e231, b[110]+b[112] <= 1.0)
@constraint(m, e232, b[111]+b[112] <= 1.0)
@constraint(m, e233, b[113]+b[114] <= 1.0)
@constraint(m, e234, b[113]+b[115] <= 1.0)
@constraint(m, e235, b[113]+b[114] <= 1.0)
@constraint(m, e236, b[114]+b[115] <= 1.0)
@constraint(m, e237, b[113]+b[115] <= 1.0)
@constraint(m, e238, b[114]+b[115] <= 1.0)
@constraint(m, e239, b[116]+b[117] <= 1.0)
@constraint(m, e240, b[116]+b[118] <= 1.0)
@constraint(m, e241, b[116]+b[117] <= 1.0)
@constraint(m, e242, b[117]+b[118] <= 1.0)
@constraint(m, e243, b[116]+b[118] <= 1.0)
@constraint(m, e244, b[117]+b[118] <= 1.0)
@constraint(m, e245, b[119]+b[120] <= 1.0)
@constraint(m, e246, b[119]+b[121] <= 1.0)
@constraint(m, e247, b[119]+b[120] <= 1.0)
@constraint(m, e248, b[120]+b[121] <= 1.0)
@constraint(m, e249, b[119]+b[121] <= 1.0)
@constraint(m, e250, b[120]+b[121] <= 1.0)
@constraint(m, e251, b[122]+b[123] <= 1.0)
@constraint(m, e252, b[122]+b[124] <= 1.0)
@constraint(m, e253, b[122]+b[123] <= 1.0)
@constraint(m, e254, b[123]+b[124] <= 1.0)
@constraint(m, e255, b[122]+b[124] <= 1.0)
@constraint(m, e256, b[123]+b[124] <= 1.0)
@constraint(m, e257, b[125]+b[126] <= 1.0)
@constraint(m, e258, b[125]+b[127] <= 1.0)
@constraint(m, e259, b[125]+b[126] <= 1.0)
@constraint(m, e260, b[126]+b[127] <= 1.0)
@constraint(m, e261, b[125]+b[127] <= 1.0)
@constraint(m, e262, b[126]+b[127] <= 1.0)
@constraint(m, e263, b[128]+b[129] <= 1.0)
@constraint(m, e264, b[128]+b[130] <= 1.0)
@constraint(m, e265, b[128]+b[129] <= 1.0)
@constraint(m, e266, b[129]+b[130] <= 1.0)
@constraint(m, e267, b[128]+b[130] <= 1.0)
@constraint(m, e268, b[129]+b[130] <= 1.0)
@constraint(m, e269, b[131]+b[132] <= 1.0)
@constraint(m, e270, b[131]+b[133] <= 1.0)
@constraint(m, e271, b[131]+b[132] <= 1.0)
@constraint(m, e272, b[132]+b[133] <= 1.0)
@constraint(m, e273, b[131]+b[133] <= 1.0)
@constraint(m, e274, b[132]+b[133] <= 1.0)
@constraint(m, e275, b[134]+b[135] <= 1.0)
@constraint(m, e276, b[134]+b[136] <= 1.0)
@constraint(m, e277, b[134]+b[135] <= 1.0)
@constraint(m, e278, b[135]+b[136] <= 1.0)
@constraint(m, e279, b[134]+b[136] <= 1.0)
@constraint(m, e280, b[135]+b[136] <= 1.0)
@constraint(m, e281, b[77]-b[107] <= 0.0)
@constraint(m, e282, -b[77]+b[78]-b[108] <= 0.0)
@constraint(m, e283, -b[77]-b[78]+b[79]-b[109] <= 0.0)
@constraint(m, e284, b[80]-b[110] <= 0.0)
@constraint(m, e285, -b[80]+b[81]-b[111] <= 0.0)
@constraint(m, e286, -b[80]-b[81]+b[82]-b[112] <= 0.0)
@constraint(m, e287, b[83]-b[113] <= 0.0)
@constraint(m, e288, -b[83]+b[84]-b[114] <= 0.0)
@constraint(m, e289, -b[83]-b[84]+b[85]-b[115] <= 0.0)
@constraint(m, e290, b[86]-b[116] <= 0.0)
@constraint(m, e291, -b[86]+b[87]-b[117] <= 0.0)
@constraint(m, e292, -b[86]-b[87]+b[88]-b[118] <= 0.0)
@constraint(m, e293, b[89]-b[119] <= 0.0)
@constraint(m, e294, -b[89]+b[90]-b[120] <= 0.0)
@constraint(m, e295, -b[89]-b[90]+b[91]-b[121] <= 0.0)
@constraint(m, e296, b[92]-b[122] <= 0.0)
@constraint(m, e297, -b[92]+b[93]-b[123] <= 0.0)
@constraint(m, e298, -b[92]-b[93]+b[94]-b[124] <= 0.0)
@constraint(m, e299, b[95]-b[125] <= 0.0)
@constraint(m, e300, -b[95]+b[96]-b[126] <= 0.0)
@constraint(m, e301, -b[95]-b[96]+b[97]-b[127] <= 0.0)
@constraint(m, e302, b[98]-b[128] <= 0.0)
@constraint(m, e303, -b[98]+b[99]-b[129] <= 0.0)
@constraint(m, e304, -b[98]-b[99]+b[100]-b[130] <= 0.0)
@constraint(m, e305, b[101]-b[131] <= 0.0)
@constraint(m, e306, -b[101]+b[102]-b[132] <= 0.0)
@constraint(m, e307, -b[101]-b[102]+b[103]-b[133] <= 0.0)
@constraint(m, e308, b[104]-b[134] <= 0.0)
@constraint(m, e309, -b[104]+b[105]-b[135] <= 0.0)
@constraint(m, e310, -b[104]-b[105]+b[106]-b[136] <= 0.0)
@constraint(m, e311, b[77]+b[80] == 1.0)
@constraint(m, e312, b[78]+b[81] == 1.0)
@constraint(m, e313, b[79]+b[82] == 1.0)
@constraint(m, e314, -b[83]+b[92]+b[95] >= 0.0)
@constraint(m, e315, -b[84]+b[93]+b[96] >= 0.0)
@constraint(m, e316, -b[85]+b[94]+b[97] >= 0.0)
@constraint(m, e317, -b[86]+b[98] >= 0.0)
@constraint(m, e318, -b[87]+b[99] >= 0.0)
@constraint(m, e319, -b[88]+b[100] >= 0.0)
@constraint(m, e320, b[77]+b[80]-b[83] >= 0.0)
@constraint(m, e321, b[78]+b[81]-b[84] >= 0.0)
@constraint(m, e322, b[79]+b[82]-b[85] >= 0.0)
@constraint(m, e323, b[77]+b[80]-b[86] >= 0.0)
@constraint(m, e324, b[78]+b[81]-b[87] >= 0.0)
@constraint(m, e325, b[79]+b[82]-b[88] >= 0.0)
@constraint(m, e326, b[77]+b[80]-b[89] >= 0.0)
@constraint(m, e327, b[78]+b[81]-b[90] >= 0.0)
@constraint(m, e328, b[79]+b[82]-b[91] >= 0.0)
@constraint(m, e329, b[83]-b[92] >= 0.0)
@constraint(m, e330, b[84]-b[93] >= 0.0)
@constraint(m, e331, b[85]-b[94] >= 0.0)
@constraint(m, e332, b[83]-b[95] >= 0.0)
@constraint(m, e333, b[84]-b[96] >= 0.0)
@constraint(m, e334, b[85]-b[97] >= 0.0)
@constraint(m, e335, b[86]-b[98] >= 0.0)
@constraint(m, e336, b[87]-b[99] >= 0.0)
@constraint(m, e337, b[88]-b[100] >= 0.0)
@constraint(m, e338, b[89]-b[101] >= 0.0)
@constraint(m, e339, b[90]-b[102] >= 0.0)
@constraint(m, e340, b[91]-b[103] >= 0.0)
@constraint(m, e341, b[89]-b[104] >= 0.0)
@constraint(m, e342, b[90]-b[105] >= 0.0)
@constraint(m, e343, b[91]-b[106] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
