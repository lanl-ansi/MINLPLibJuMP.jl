using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171]
@variable(m, x[x_Idx])
b_Idx = Any[82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[81], 0.0)
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
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[79], 0.0)
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
set_upper_bound(x[24], 30.0)
set_upper_bound(x[25], 30.0)
set_upper_bound(x[58], 20.0)
set_upper_bound(x[59], 20.0)
set_upper_bound(x[60], 20.0)
set_upper_bound(x[61], 20.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]-5*x[14]-10*x[15]+2*x[24]+x[25]-500*x[50]-600*x[51]-350*x[52]-400*x[53]+10*x[58]+5*x[59]+5*x[60]+5*x[61]-80*x[74]-130*x[75]-110*x[76]-120*x[77]-110*x[78]-130*x[79]-80*x[80]-90*x[81]+5*b[112]+4*b[113]+8*b[114]+7*b[115]+6*b[116]+9*b[117]+10*b[118]+9*b[119]+6*b[120]+10*b[121]+7*b[122]+7*b[123]+4*b[124]+3*b[125]+5*b[126]+6*b[127]+2*b[128]+5*b[129]+4*b[130]+7*b[131]+3*b[132]+9*b[133]+7*b[134]+2*b[135]+3*b[136]+b[137]+2*b[138]+6*b[139]+4*b[140]+8*b[141] == 0.0)
@constraint(m, e2, x[2]-x[4]-x[6] == 0.0)
@constraint(m, e3, x[3]-x[5]-x[7] == 0.0)
@constraint(m, e4, -x[8]-x[10]+x[12] == 0.0)
@constraint(m, e5, -x[9]-x[11]+x[13] == 0.0)
@constraint(m, e6, x[12]-x[14]-x[16] == 0.0)
@constraint(m, e7, x[13]-x[15]-x[17] == 0.0)
@constraint(m, e8, x[16]-x[18]-x[20]-x[22] == 0.0)
@constraint(m, e9, x[17]-x[19]-x[21]-x[23] == 0.0)
@constraint(m, e10, x[26]-x[32]-x[34] == 0.0)
@constraint(m, e11, x[27]-x[33]-x[35] == 0.0)
@constraint(m, e12, x[30]-x[36]-x[38]-x[40] == 0.0)
@constraint(m, e13, x[31]-x[37]-x[39]-x[41] == 0.0)
@constraint(m, e14, x[46]-x[54]-x[56] == 0.0)
@constraint(m, e15, x[47]-x[55]-x[57] == 0.0)
@constraint(m, e16, -x[48]-x[60]+x[62] == 0.0)
@constraint(m, e17, -x[49]-x[61]+x[63] == 0.0)
@constraint(m, e18, x[50]-x[64]-x[66] == 0.0)
@constraint(m, e19, x[51]-x[65]-x[67] == 0.0)
@constraint(m, e20, x[52]-x[68]-x[70]-x[72] == 0.0)
@constraint(m, e21, x[53]-x[69]-x[71]-x[73] == 0.0)
@NLconstraint(m, e22, -log(1+x[4])+x[8]+b[82] <= 1.0)
@NLconstraint(m, e23, -log(1+x[5])+x[9]+b[83] <= 1.0)
@constraint(m, e24, x[4]-40*b[82] <= 0.0)
@constraint(m, e25, x[5]-40*b[83] <= 0.0)
@constraint(m, e26, x[8]-3.71357206670431*b[82] <= 0.0)
@constraint(m, e27, x[9]-3.71357206670431*b[83] <= 0.0)
@NLconstraint(m, e28, -1.2*log(1+x[6])+x[10]+b[84] <= 1.0)
@NLconstraint(m, e29, -1.2*log(1+x[7])+x[11]+b[85] <= 1.0)
@constraint(m, e30, x[6]-40*b[84] <= 0.0)
@constraint(m, e31, x[7]-40*b[85] <= 0.0)
@constraint(m, e32, x[10]-4.45628648004517*b[84] <= 0.0)
@constraint(m, e33, x[11]-4.45628648004517*b[85] <= 0.0)
@constraint(m, e34, -0.75*x[18]+x[26]+b[86] <= 1.0)
@constraint(m, e35, -0.75*x[19]+x[27]+b[87] <= 1.0)
@constraint(m, e36, -0.75*x[18]+x[26]-b[86] >= -1.0)
@constraint(m, e37, -0.75*x[19]+x[27]-b[87] >= -1.0)
@constraint(m, e38, x[18]-4.45628648004517*b[86] <= 0.0)
@constraint(m, e39, x[19]-4.45628648004517*b[87] <= 0.0)
@constraint(m, e40, x[26]-3.34221486003388*b[86] <= 0.0)
@constraint(m, e41, x[27]-3.34221486003388*b[87] <= 0.0)
@NLconstraint(m, e42, -1.5*log(1+x[20])+x[28]+b[88] <= 1.0)
@NLconstraint(m, e43, -1.5*log(1+x[21])+x[29]+b[89] <= 1.0)
@constraint(m, e44, x[20]-4.45628648004517*b[88] <= 0.0)
@constraint(m, e45, x[21]-4.45628648004517*b[89] <= 0.0)
@constraint(m, e46, x[28]-2.54515263975353*b[88] <= 0.0)
@constraint(m, e47, x[29]-2.54515263975353*b[89] <= 0.0)
@constraint(m, e48, -x[22]+x[30]+b[90] <= 1.0)
@constraint(m, e49, -x[23]+x[31]+b[91] <= 1.0)
@constraint(m, e50, -x[22]+x[30]-b[90] >= -1.0)
@constraint(m, e51, -x[23]+x[31]-b[91] >= -1.0)
@constraint(m, e52, -0.5*x[24]+x[30]+b[90] <= 1.0)
@constraint(m, e53, -0.5*x[25]+x[31]+b[91] <= 1.0)
@constraint(m, e54, -0.5*x[24]+x[30]-b[90] >= -1.0)
@constraint(m, e55, -0.5*x[25]+x[31]-b[91] >= -1.0)
@constraint(m, e56, x[22]-4.45628648004517*b[90] <= 0.0)
@constraint(m, e57, x[23]-4.45628648004517*b[91] <= 0.0)
@constraint(m, e58, x[24]-30*b[90] <= 0.0)
@constraint(m, e59, x[25]-30*b[91] <= 0.0)
@constraint(m, e60, x[30]-15*b[90] <= 0.0)
@constraint(m, e61, x[31]-15*b[91] <= 0.0)
@NLconstraint(m, e62, -1.25*log(1+x[32])+x[42]+b[92] <= 1.0)
@NLconstraint(m, e63, -1.25*log(1+x[33])+x[43]+b[93] <= 1.0)
@constraint(m, e64, x[32]-3.34221486003388*b[92] <= 0.0)
@constraint(m, e65, x[33]-3.34221486003388*b[93] <= 0.0)
@constraint(m, e66, x[42]-1.83548069293539*b[92] <= 0.0)
@constraint(m, e67, x[43]-1.83548069293539*b[93] <= 0.0)
@NLconstraint(m, e68, -0.9*log(1+x[34])+x[44]+b[94] <= 1.0)
@NLconstraint(m, e69, -0.9*log(1+x[35])+x[45]+b[95] <= 1.0)
@constraint(m, e70, x[34]-3.34221486003388*b[94] <= 0.0)
@constraint(m, e71, x[35]-3.34221486003388*b[95] <= 0.0)
@constraint(m, e72, x[44]-1.32154609891348*b[94] <= 0.0)
@constraint(m, e73, x[45]-1.32154609891348*b[95] <= 0.0)
@NLconstraint(m, e74, -log(1+x[28])+x[46]+b[96] <= 1.0)
@NLconstraint(m, e75, -log(1+x[29])+x[47]+b[97] <= 1.0)
@constraint(m, e76, x[28]-2.54515263975353*b[96] <= 0.0)
@constraint(m, e77, x[29]-2.54515263975353*b[97] <= 0.0)
@constraint(m, e78, x[46]-1.26558121681553*b[96] <= 0.0)
@constraint(m, e79, x[47]-1.26558121681553*b[97] <= 0.0)
@constraint(m, e80, -0.9*x[36]+x[48]+b[98] <= 1.0)
@constraint(m, e81, -0.9*x[37]+x[49]+b[99] <= 1.0)
@constraint(m, e82, -0.9*x[36]+x[48]-b[98] >= -1.0)
@constraint(m, e83, -0.9*x[37]+x[49]-b[99] >= -1.0)
@constraint(m, e84, x[36]-15*b[98] <= 0.0)
@constraint(m, e85, x[37]-15*b[99] <= 0.0)
@constraint(m, e86, x[48]-13.5*b[98] <= 0.0)
@constraint(m, e87, x[49]-13.5*b[99] <= 0.0)
@constraint(m, e88, -0.6*x[38]+x[50]+b[100] <= 1.0)
@constraint(m, e89, -0.6*x[39]+x[51]+b[101] <= 1.0)
@constraint(m, e90, -0.6*x[38]+x[50]-b[100] >= -1.0)
@constraint(m, e91, -0.6*x[39]+x[51]-b[101] >= -1.0)
@constraint(m, e92, x[38]-15*b[100] <= 0.0)
@constraint(m, e93, x[39]-15*b[101] <= 0.0)
@constraint(m, e94, x[50]-9*b[100] <= 0.0)
@constraint(m, e95, x[51]-9*b[101] <= 0.0)
@NLconstraint(m, e96, -1.1*log(1+x[40])+x[52]+b[102] <= 1.0)
@NLconstraint(m, e97, -1.1*log(1+x[41])+x[53]+b[103] <= 1.0)
@constraint(m, e98, x[40]-15*b[102] <= 0.0)
@constraint(m, e99, x[41]-15*b[103] <= 0.0)
@constraint(m, e100, x[52]-3.04984759446376*b[102] <= 0.0)
@constraint(m, e101, x[53]-3.04984759446376*b[103] <= 0.0)
@constraint(m, e102, -0.9*x[42]+x[74]+b[104] <= 1.0)
@constraint(m, e103, -0.9*x[43]+x[75]+b[105] <= 1.0)
@constraint(m, e104, -0.9*x[42]+x[74]-b[104] >= -1.0)
@constraint(m, e105, -0.9*x[43]+x[75]-b[105] >= -1.0)
@constraint(m, e106, -x[58]+x[74]+b[104] <= 1.0)
@constraint(m, e107, -x[59]+x[75]+b[105] <= 1.0)
@constraint(m, e108, -x[58]+x[74]-b[104] >= -1.0)
@constraint(m, e109, -x[59]+x[75]-b[105] >= -1.0)
@constraint(m, e110, x[42]-1.83548069293539*b[104] <= 0.0)
@constraint(m, e111, x[43]-1.83548069293539*b[105] <= 0.0)
@constraint(m, e112, x[58]-20*b[104] <= 0.0)
@constraint(m, e113, x[59]-20*b[105] <= 0.0)
@constraint(m, e114, x[74]-20*b[104] <= 0.0)
@constraint(m, e115, x[75]-20*b[105] <= 0.0)
@NLconstraint(m, e116, -log(1+x[44])+x[76]+b[106] <= 1.0)
@NLconstraint(m, e117, -log(1+x[45])+x[77]+b[107] <= 1.0)
@constraint(m, e118, x[44]-1.32154609891348*b[106] <= 0.0)
@constraint(m, e119, x[45]-1.32154609891348*b[107] <= 0.0)
@constraint(m, e120, x[76]-0.842233385663186*b[106] <= 0.0)
@constraint(m, e121, x[77]-0.842233385663186*b[107] <= 0.0)
@NLconstraint(m, e122, -0.7*log(1+x[54])+x[78]+b[108] <= 1.0)
@NLconstraint(m, e123, -0.7*log(1+x[55])+x[79]+b[109] <= 1.0)
@constraint(m, e124, x[54]-1.26558121681553*b[108] <= 0.0)
@constraint(m, e125, x[55]-1.26558121681553*b[109] <= 0.0)
@constraint(m, e126, x[78]-0.572481933717686*b[108] <= 0.0)
@constraint(m, e127, x[79]-0.572481933717686*b[109] <= 0.0)
@NLconstraint(m, e128, -0.65*log(1+x[56])+x[80]+b[110] <= 1.0)
@NLconstraint(m, e129, -0.65*log(1+x[57])+x[81]+b[111] <= 1.0)
@NLconstraint(m, e130, -0.65*log(1+x[62])+x[80]+b[110] <= 1.0)
@NLconstraint(m, e131, -0.65*log(1+x[63])+x[81]+b[111] <= 1.0)
@constraint(m, e132, x[56]-1.26558121681553*b[110] <= 0.0)
@constraint(m, e133, x[57]-1.26558121681553*b[111] <= 0.0)
@constraint(m, e134, x[62]-33.5*b[110] <= 0.0)
@constraint(m, e135, x[63]-33.5*b[111] <= 0.0)
@constraint(m, e136, x[80]-2.30162356062425*b[110] <= 0.0)
@constraint(m, e137, x[81]-2.30162356062425*b[111] <= 0.0)
@constraint(m, e138, 5*b[112]+x[142] <= 0.0)
@constraint(m, e139, 4*b[113]+x[143] <= 0.0)
@constraint(m, e140, 8*b[114]+x[144] <= 0.0)
@constraint(m, e141, 7*b[115]+x[145] <= 0.0)
@constraint(m, e142, 6*b[116]+x[146] <= 0.0)
@constraint(m, e143, 9*b[117]+x[147] <= 0.0)
@constraint(m, e144, 10*b[118]+x[148] <= 0.0)
@constraint(m, e145, 9*b[119]+x[149] <= 0.0)
@constraint(m, e146, 6*b[120]+x[150] <= 0.0)
@constraint(m, e147, 10*b[121]+x[151] <= 0.0)
@constraint(m, e148, 7*b[122]+x[152] <= 0.0)
@constraint(m, e149, 7*b[123]+x[153] <= 0.0)
@constraint(m, e150, 4*b[124]+x[154] <= 0.0)
@constraint(m, e151, 3*b[125]+x[155] <= 0.0)
@constraint(m, e152, 5*b[126]+x[156] <= 0.0)
@constraint(m, e153, 6*b[127]+x[157] <= 0.0)
@constraint(m, e154, 2*b[128]+x[158] <= 0.0)
@constraint(m, e155, 5*b[129]+x[159] <= 0.0)
@constraint(m, e156, 4*b[130]+x[160] <= 0.0)
@constraint(m, e157, 7*b[131]+x[161] <= 0.0)
@constraint(m, e158, 3*b[132]+x[162] <= 0.0)
@constraint(m, e159, 9*b[133]+x[163] <= 0.0)
@constraint(m, e160, 7*b[134]+x[164] <= 0.0)
@constraint(m, e161, 2*b[135]+x[165] <= 0.0)
@constraint(m, e162, 3*b[136]+x[166] <= 0.0)
@constraint(m, e163, b[137]+x[167] <= 0.0)
@constraint(m, e164, 2*b[138]+x[168] <= 0.0)
@constraint(m, e165, 6*b[139]+x[169] <= 0.0)
@constraint(m, e166, 4*b[140]+x[170] <= 0.0)
@constraint(m, e167, 8*b[141]+x[171] <= 0.0)
@constraint(m, e168, 5*b[112]+x[142] >= 0.0)
@constraint(m, e169, 4*b[113]+x[143] >= 0.0)
@constraint(m, e170, 8*b[114]+x[144] >= 0.0)
@constraint(m, e171, 7*b[115]+x[145] >= 0.0)
@constraint(m, e172, 6*b[116]+x[146] >= 0.0)
@constraint(m, e173, 9*b[117]+x[147] >= 0.0)
@constraint(m, e174, 10*b[118]+x[148] >= 0.0)
@constraint(m, e175, 9*b[119]+x[149] >= 0.0)
@constraint(m, e176, 6*b[120]+x[150] >= 0.0)
@constraint(m, e177, 10*b[121]+x[151] >= 0.0)
@constraint(m, e178, 7*b[122]+x[152] >= 0.0)
@constraint(m, e179, 7*b[123]+x[153] >= 0.0)
@constraint(m, e180, 4*b[124]+x[154] >= 0.0)
@constraint(m, e181, 3*b[125]+x[155] >= 0.0)
@constraint(m, e182, 5*b[126]+x[156] >= 0.0)
@constraint(m, e183, 6*b[127]+x[157] >= 0.0)
@constraint(m, e184, 2*b[128]+x[158] >= 0.0)
@constraint(m, e185, 5*b[129]+x[159] >= 0.0)
@constraint(m, e186, 4*b[130]+x[160] >= 0.0)
@constraint(m, e187, 7*b[131]+x[161] >= 0.0)
@constraint(m, e188, 3*b[132]+x[162] >= 0.0)
@constraint(m, e189, 9*b[133]+x[163] >= 0.0)
@constraint(m, e190, 7*b[134]+x[164] >= 0.0)
@constraint(m, e191, 2*b[135]+x[165] >= 0.0)
@constraint(m, e192, 3*b[136]+x[166] >= 0.0)
@constraint(m, e193, b[137]+x[167] >= 0.0)
@constraint(m, e194, 2*b[138]+x[168] >= 0.0)
@constraint(m, e195, 6*b[139]+x[169] >= 0.0)
@constraint(m, e196, 4*b[140]+x[170] >= 0.0)
@constraint(m, e197, 8*b[141]+x[171] >= 0.0)
@constraint(m, e198, b[82]-b[83] <= 0.0)
@constraint(m, e199, b[84]-b[85] <= 0.0)
@constraint(m, e200, b[86]-b[87] <= 0.0)
@constraint(m, e201, b[88]-b[89] <= 0.0)
@constraint(m, e202, b[90]-b[91] <= 0.0)
@constraint(m, e203, b[92]-b[93] <= 0.0)
@constraint(m, e204, b[94]-b[95] <= 0.0)
@constraint(m, e205, b[96]-b[97] <= 0.0)
@constraint(m, e206, b[98]-b[99] <= 0.0)
@constraint(m, e207, b[100]-b[101] <= 0.0)
@constraint(m, e208, b[102]-b[103] <= 0.0)
@constraint(m, e209, b[104]-b[105] <= 0.0)
@constraint(m, e210, b[106]-b[107] <= 0.0)
@constraint(m, e211, b[108]-b[109] <= 0.0)
@constraint(m, e212, b[110]-b[111] <= 0.0)
@constraint(m, e213, b[112]+b[113] <= 1.0)
@constraint(m, e214, b[112]+b[113] <= 1.0)
@constraint(m, e215, b[114]+b[115] <= 1.0)
@constraint(m, e216, b[114]+b[115] <= 1.0)
@constraint(m, e217, b[116]+b[117] <= 1.0)
@constraint(m, e218, b[116]+b[117] <= 1.0)
@constraint(m, e219, b[118]+b[119] <= 1.0)
@constraint(m, e220, b[118]+b[119] <= 1.0)
@constraint(m, e221, b[120]+b[121] <= 1.0)
@constraint(m, e222, b[120]+b[121] <= 1.0)
@constraint(m, e223, b[122]+b[123] <= 1.0)
@constraint(m, e224, b[122]+b[123] <= 1.0)
@constraint(m, e225, b[124]+b[125] <= 1.0)
@constraint(m, e226, b[124]+b[125] <= 1.0)
@constraint(m, e227, b[126]+b[127] <= 1.0)
@constraint(m, e228, b[126]+b[127] <= 1.0)
@constraint(m, e229, b[128]+b[129] <= 1.0)
@constraint(m, e230, b[128]+b[129] <= 1.0)
@constraint(m, e231, b[130]+b[131] <= 1.0)
@constraint(m, e232, b[130]+b[131] <= 1.0)
@constraint(m, e233, b[132]+b[133] <= 1.0)
@constraint(m, e234, b[132]+b[133] <= 1.0)
@constraint(m, e235, b[134]+b[135] <= 1.0)
@constraint(m, e236, b[134]+b[135] <= 1.0)
@constraint(m, e237, b[136]+b[137] <= 1.0)
@constraint(m, e238, b[136]+b[137] <= 1.0)
@constraint(m, e239, b[138]+b[139] <= 1.0)
@constraint(m, e240, b[138]+b[139] <= 1.0)
@constraint(m, e241, b[140]+b[141] <= 1.0)
@constraint(m, e242, b[140]+b[141] <= 1.0)
@constraint(m, e243, b[82]-b[112] <= 0.0)
@constraint(m, e244, -b[82]+b[83]-b[113] <= 0.0)
@constraint(m, e245, b[84]-b[114] <= 0.0)
@constraint(m, e246, -b[84]+b[85]-b[115] <= 0.0)
@constraint(m, e247, b[86]-b[116] <= 0.0)
@constraint(m, e248, -b[86]+b[87]-b[117] <= 0.0)
@constraint(m, e249, b[88]-b[118] <= 0.0)
@constraint(m, e250, -b[88]+b[89]-b[119] <= 0.0)
@constraint(m, e251, b[90]-b[120] <= 0.0)
@constraint(m, e252, -b[90]+b[91]-b[121] <= 0.0)
@constraint(m, e253, b[92]-b[122] <= 0.0)
@constraint(m, e254, -b[92]+b[93]-b[123] <= 0.0)
@constraint(m, e255, b[94]-b[124] <= 0.0)
@constraint(m, e256, -b[94]+b[95]-b[125] <= 0.0)
@constraint(m, e257, b[96]-b[126] <= 0.0)
@constraint(m, e258, -b[96]+b[97]-b[127] <= 0.0)
@constraint(m, e259, b[98]-b[128] <= 0.0)
@constraint(m, e260, -b[98]+b[99]-b[129] <= 0.0)
@constraint(m, e261, b[100]-b[130] <= 0.0)
@constraint(m, e262, -b[100]+b[101]-b[131] <= 0.0)
@constraint(m, e263, b[102]-b[132] <= 0.0)
@constraint(m, e264, -b[102]+b[103]-b[133] <= 0.0)
@constraint(m, e265, b[104]-b[134] <= 0.0)
@constraint(m, e266, -b[104]+b[105]-b[135] <= 0.0)
@constraint(m, e267, b[106]-b[136] <= 0.0)
@constraint(m, e268, -b[106]+b[107]-b[137] <= 0.0)
@constraint(m, e269, b[108]-b[138] <= 0.0)
@constraint(m, e270, -b[108]+b[109]-b[139] <= 0.0)
@constraint(m, e271, b[110]-b[140] <= 0.0)
@constraint(m, e272, -b[110]+b[111]-b[141] <= 0.0)
@constraint(m, e273, b[82]+b[84] == 1.0)
@constraint(m, e274, b[83]+b[85] == 1.0)
@constraint(m, e275, -b[86]+b[92]+b[94] >= 0.0)
@constraint(m, e276, -b[87]+b[93]+b[95] >= 0.0)
@constraint(m, e277, -b[92]+b[104] >= 0.0)
@constraint(m, e278, -b[93]+b[105] >= 0.0)
@constraint(m, e279, -b[94]+b[106] >= 0.0)
@constraint(m, e280, -b[95]+b[107] >= 0.0)
@constraint(m, e281, -b[88]+b[96] >= 0.0)
@constraint(m, e282, -b[89]+b[97] >= 0.0)
@constraint(m, e283, -b[96]+b[108]+b[110] >= 0.0)
@constraint(m, e284, -b[97]+b[109]+b[111] >= 0.0)
@constraint(m, e285, -b[90]+b[98]+b[100]+b[102] >= 0.0)
@constraint(m, e286, -b[91]+b[99]+b[101]+b[103] >= 0.0)
@constraint(m, e287, -b[98]+b[110] >= 0.0)
@constraint(m, e288, -b[99]+b[111] >= 0.0)
@constraint(m, e289, b[82]+b[84]-b[86] >= 0.0)
@constraint(m, e290, b[83]+b[85]-b[87] >= 0.0)
@constraint(m, e291, b[82]+b[84]-b[88] >= 0.0)
@constraint(m, e292, b[83]+b[85]-b[89] >= 0.0)
@constraint(m, e293, b[82]+b[84]-b[90] >= 0.0)
@constraint(m, e294, b[83]+b[85]-b[91] >= 0.0)
@constraint(m, e295, b[86]-b[92] >= 0.0)
@constraint(m, e296, b[87]-b[93] >= 0.0)
@constraint(m, e297, b[86]-b[94] >= 0.0)
@constraint(m, e298, b[87]-b[95] >= 0.0)
@constraint(m, e299, b[88]-b[96] >= 0.0)
@constraint(m, e300, b[89]-b[97] >= 0.0)
@constraint(m, e301, b[90]-b[98] >= 0.0)
@constraint(m, e302, b[91]-b[99] >= 0.0)
@constraint(m, e303, b[90]-b[100] >= 0.0)
@constraint(m, e304, b[91]-b[101] >= 0.0)
@constraint(m, e305, b[90]-b[102] >= 0.0)
@constraint(m, e306, b[91]-b[103] >= 0.0)
@constraint(m, e307, b[92]-b[104] >= 0.0)
@constraint(m, e308, b[93]-b[105] >= 0.0)
@constraint(m, e309, b[94]-b[106] >= 0.0)
@constraint(m, e310, b[95]-b[107] >= 0.0)
@constraint(m, e311, b[96]-b[108] >= 0.0)
@constraint(m, e312, b[97]-b[109] >= 0.0)
@constraint(m, e313, b[96]-b[110] >= 0.0)
@constraint(m, e314, b[97]-b[111] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
