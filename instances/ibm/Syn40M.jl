using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91]
@variable(m, x[x_Idx])
b_Idx = Any[92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
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
set_lower_bound(x[87], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
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
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[64], 0.0)
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
set_upper_bound(x[2], 40.0)
set_upper_bound(x[13], 30.0)
set_upper_bound(x[30], 20.0)
set_upper_bound(x[31], 20.0)
set_upper_bound(x[58], 30.0)
set_upper_bound(x[75], 25.0)
set_upper_bound(x[76], 25.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]-5*x[8]+2*x[13]+10*x[30]+5*x[31]-40*x[38]-15*x[39]-10*x[40]-30*x[41]-35*x[42]-20*x[43]-25*x[44]-15*x[45]-30*x[53]+x[58]+5*x[75]+x[76]-120*x[83]-140*x[84]-90*x[85]-80*x[86]-285*x[87]-290*x[88]-280*x[89]-290*x[90]-350*x[91]+5*b[92]+8*b[93]+6*b[94]+10*b[95]+6*b[96]+7*b[97]+4*b[98]+5*b[99]+2*b[100]+4*b[101]+3*b[102]+7*b[103]+3*b[104]+2*b[105]+4*b[106]+2*b[107]+3*b[108]+5*b[109]+2*b[110]+b[111]+2*b[112]+9*b[113]+5*b[114]+2*b[115]+10*b[116]+4*b[117]+7*b[118]+4*b[119]+2*b[120]+8*b[121]+9*b[122]+3*b[123]+5*b[124]+5*b[125]+6*b[126]+2*b[127]+6*b[128]+3*b[129]+5*b[130]+9*b[131] == 0.0)
@constraint(m, e2, x[2]-x[3]-x[4] == 0.0)
@constraint(m, e3, -x[5]-x[6]+x[7] == 0.0)
@constraint(m, e4, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e5, x[9]-x[10]-x[11]-x[12] == 0.0)
@constraint(m, e6, x[14]-x[17]-x[18] == 0.0)
@constraint(m, e7, x[16]-x[19]-x[20]-x[21] == 0.0)
@constraint(m, e8, x[24]-x[28]-x[29] == 0.0)
@constraint(m, e9, -x[25]-x[31]+x[32] == 0.0)
@constraint(m, e10, x[26]-x[33]-x[34] == 0.0)
@constraint(m, e11, x[27]-x[35]-x[36]-x[37] == 0.0)
@constraint(m, e12, x[46]-x[47] == 0.0)
@constraint(m, e13, x[47]-x[48]-x[49] == 0.0)
@constraint(m, e14, -x[50]-x[51]+x[52] == 0.0)
@constraint(m, e15, x[52]-x[53]-x[54] == 0.0)
@constraint(m, e16, x[54]-x[55]-x[56]-x[57] == 0.0)
@constraint(m, e17, x[59]-x[62]-x[63] == 0.0)
@constraint(m, e18, x[61]-x[64]-x[65]-x[66] == 0.0)
@constraint(m, e19, x[69]-x[73]-x[74] == 0.0)
@constraint(m, e20, -x[70]-x[76]+x[77] == 0.0)
@constraint(m, e21, x[71]-x[78]-x[79] == 0.0)
@constraint(m, e22, x[72]-x[80]-x[81]-x[82] == 0.0)
@NLconstraint(m, e23, -log(1+x[3])+x[5]+b[92] <= 1.0)
@constraint(m, e24, x[3]-40*b[92] <= 0.0)
@constraint(m, e25, x[5]-3.71357206670431*b[92] <= 0.0)
@NLconstraint(m, e26, -1.2*log(1+x[4])+x[6]+b[93] <= 1.0)
@constraint(m, e27, x[4]-40*b[93] <= 0.0)
@constraint(m, e28, x[6]-4.45628648004517*b[93] <= 0.0)
@constraint(m, e29, -0.75*x[10]+x[14]+b[94] <= 1.0)
@constraint(m, e30, -0.75*x[10]+x[14]-b[94] >= -1.0)
@constraint(m, e31, x[10]-4.45628648004517*b[94] <= 0.0)
@constraint(m, e32, x[14]-3.34221486003388*b[94] <= 0.0)
@NLconstraint(m, e33, -1.5*log(1+x[11])+x[15]+b[95] <= 1.0)
@constraint(m, e34, x[11]-4.45628648004517*b[95] <= 0.0)
@constraint(m, e35, x[15]-2.54515263975353*b[95] <= 0.0)
@constraint(m, e36, -x[12]+x[16]+b[96] <= 1.0)
@constraint(m, e37, -x[12]+x[16]-b[96] >= -1.0)
@constraint(m, e38, -0.5*x[13]+x[16]+b[96] <= 1.0)
@constraint(m, e39, -0.5*x[13]+x[16]-b[96] >= -1.0)
@constraint(m, e40, x[12]-4.45628648004517*b[96] <= 0.0)
@constraint(m, e41, x[13]-30*b[96] <= 0.0)
@constraint(m, e42, x[16]-15*b[96] <= 0.0)
@NLconstraint(m, e43, -1.25*log(1+x[17])+x[22]+b[97] <= 1.0)
@constraint(m, e44, x[17]-3.34221486003388*b[97] <= 0.0)
@constraint(m, e45, x[22]-1.83548069293539*b[97] <= 0.0)
@NLconstraint(m, e46, -0.9*log(1+x[18])+x[23]+b[98] <= 1.0)
@constraint(m, e47, x[18]-3.34221486003388*b[98] <= 0.0)
@constraint(m, e48, x[23]-1.32154609891348*b[98] <= 0.0)
@NLconstraint(m, e49, -log(1+x[15])+x[24]+b[99] <= 1.0)
@constraint(m, e50, x[15]-2.54515263975353*b[99] <= 0.0)
@constraint(m, e51, x[24]-1.26558121681553*b[99] <= 0.0)
@constraint(m, e52, -0.9*x[19]+x[25]+b[100] <= 1.0)
@constraint(m, e53, -0.9*x[19]+x[25]-b[100] >= -1.0)
@constraint(m, e54, x[19]-15*b[100] <= 0.0)
@constraint(m, e55, x[25]-13.5*b[100] <= 0.0)
@constraint(m, e56, -0.6*x[20]+x[26]+b[101] <= 1.0)
@constraint(m, e57, -0.6*x[20]+x[26]-b[101] >= -1.0)
@constraint(m, e58, x[20]-15*b[101] <= 0.0)
@constraint(m, e59, x[26]-9*b[101] <= 0.0)
@NLconstraint(m, e60, -1.1*log(1+x[21])+x[27]+b[102] <= 1.0)
@constraint(m, e61, x[21]-15*b[102] <= 0.0)
@constraint(m, e62, x[27]-3.04984759446376*b[102] <= 0.0)
@constraint(m, e63, -0.9*x[22]+x[38]+b[103] <= 1.0)
@constraint(m, e64, -0.9*x[22]+x[38]-b[103] >= -1.0)
@constraint(m, e65, -x[30]+x[38]+b[103] <= 1.0)
@constraint(m, e66, -x[30]+x[38]-b[103] >= -1.0)
@constraint(m, e67, x[22]-1.83548069293539*b[103] <= 0.0)
@constraint(m, e68, x[30]-20*b[103] <= 0.0)
@constraint(m, e69, x[38]-20*b[103] <= 0.0)
@NLconstraint(m, e70, -log(1+x[23])+x[39]+b[104] <= 1.0)
@constraint(m, e71, x[23]-1.32154609891348*b[104] <= 0.0)
@constraint(m, e72, x[39]-0.842233385663186*b[104] <= 0.0)
@NLconstraint(m, e73, -0.7*log(1+x[28])+x[40]+b[105] <= 1.0)
@constraint(m, e74, x[28]-1.26558121681553*b[105] <= 0.0)
@constraint(m, e75, x[40]-0.572481933717686*b[105] <= 0.0)
@NLconstraint(m, e76, -0.65*log(1+x[29])+x[41]+b[106] <= 1.0)
@NLconstraint(m, e77, -0.65*log(1+x[32])+x[41]+b[106] <= 1.0)
@constraint(m, e78, x[29]-1.26558121681553*b[106] <= 0.0)
@constraint(m, e79, x[32]-33.5*b[106] <= 0.0)
@constraint(m, e80, x[41]-2.30162356062425*b[106] <= 0.0)
@constraint(m, e81, -x[33]+x[42]+b[107] <= 1.0)
@constraint(m, e82, -x[33]+x[42]-b[107] >= -1.0)
@constraint(m, e83, x[33]-9*b[107] <= 0.0)
@constraint(m, e84, x[42]-9*b[107] <= 0.0)
@constraint(m, e85, -x[34]+x[43]+b[108] <= 1.0)
@constraint(m, e86, -x[34]+x[43]-b[108] >= -1.0)
@constraint(m, e87, x[34]-9*b[108] <= 0.0)
@constraint(m, e88, x[43]-9*b[108] <= 0.0)
@NLconstraint(m, e89, -0.75*log(1+x[35])+x[44]+b[109] <= 1.0)
@constraint(m, e90, x[35]-3.04984759446376*b[109] <= 0.0)
@constraint(m, e91, x[44]-1.04900943706034*b[109] <= 0.0)
@NLconstraint(m, e92, -0.8*log(1+x[36])+x[45]+b[110] <= 1.0)
@constraint(m, e93, x[36]-3.04984759446376*b[110] <= 0.0)
@constraint(m, e94, x[45]-1.11894339953103*b[110] <= 0.0)
@NLconstraint(m, e95, -0.85*log(1+x[37])+x[46]+b[111] <= 1.0)
@constraint(m, e96, x[37]-3.04984759446376*b[111] <= 0.0)
@constraint(m, e97, x[46]-1.18887736200171*b[111] <= 0.0)
@NLconstraint(m, e98, -log(1+x[48])+x[50]+b[112] <= 1.0)
@constraint(m, e99, x[48]-1.18887736200171*b[112] <= 0.0)
@constraint(m, e100, x[50]-0.78338879230327*b[112] <= 0.0)
@NLconstraint(m, e101, -1.2*log(1+x[49])+x[51]+b[113] <= 1.0)
@constraint(m, e102, x[49]-1.18887736200171*b[113] <= 0.0)
@constraint(m, e103, x[51]-0.940066550763924*b[113] <= 0.0)
@constraint(m, e104, -0.75*x[55]+x[59]+b[114] <= 1.0)
@constraint(m, e105, -0.75*x[55]+x[59]-b[114] >= -1.0)
@constraint(m, e106, x[55]-0.940066550763924*b[114] <= 0.0)
@constraint(m, e107, x[59]-0.705049913072943*b[114] <= 0.0)
@NLconstraint(m, e108, -1.5*log(1+x[56])+x[60]+b[115] <= 1.0)
@constraint(m, e109, x[56]-0.940066550763924*b[115] <= 0.0)
@constraint(m, e110, x[60]-0.994083415506506*b[115] <= 0.0)
@constraint(m, e111, -x[57]+x[61]+b[116] <= 1.0)
@constraint(m, e112, -x[57]+x[61]-b[116] >= -1.0)
@constraint(m, e113, -0.5*x[58]+x[61]+b[116] <= 1.0)
@constraint(m, e114, -0.5*x[58]+x[61]-b[116] >= -1.0)
@constraint(m, e115, x[57]-0.940066550763924*b[116] <= 0.0)
@constraint(m, e116, x[58]-30*b[116] <= 0.0)
@constraint(m, e117, x[61]-15*b[116] <= 0.0)
@NLconstraint(m, e118, -1.25*log(1+x[62])+x[67]+b[117] <= 1.0)
@constraint(m, e119, x[62]-0.705049913072943*b[117] <= 0.0)
@constraint(m, e120, x[67]-0.666992981045719*b[117] <= 0.0)
@NLconstraint(m, e121, -0.9*log(1+x[63])+x[68]+b[118] <= 1.0)
@constraint(m, e122, x[63]-0.705049913072943*b[118] <= 0.0)
@constraint(m, e123, x[68]-0.480234946352917*b[118] <= 0.0)
@NLconstraint(m, e124, -log(1+x[60])+x[69]+b[119] <= 1.0)
@constraint(m, e125, x[60]-0.994083415506506*b[119] <= 0.0)
@constraint(m, e126, x[69]-0.690184503917672*b[119] <= 0.0)
@constraint(m, e127, -0.9*x[64]+x[70]+b[120] <= 1.0)
@constraint(m, e128, -0.9*x[64]+x[70]-b[120] >= -1.0)
@constraint(m, e129, x[64]-15*b[120] <= 0.0)
@constraint(m, e130, x[70]-13.5*b[120] <= 0.0)
@constraint(m, e131, -0.6*x[65]+x[71]+b[121] <= 1.0)
@constraint(m, e132, -0.6*x[65]+x[71]-b[121] >= -1.0)
@constraint(m, e133, x[65]-15*b[121] <= 0.0)
@constraint(m, e134, x[71]-9*b[121] <= 0.0)
@NLconstraint(m, e135, -1.1*log(1+x[66])+x[72]+b[122] <= 1.0)
@constraint(m, e136, x[66]-15*b[122] <= 0.0)
@constraint(m, e137, x[72]-3.04984759446376*b[122] <= 0.0)
@constraint(m, e138, -0.9*x[67]+x[83]+b[123] <= 1.0)
@constraint(m, e139, -0.9*x[67]+x[83]-b[123] >= -1.0)
@constraint(m, e140, -x[75]+x[83]+b[123] <= 1.0)
@constraint(m, e141, -x[75]+x[83]-b[123] >= -1.0)
@constraint(m, e142, x[67]-0.666992981045719*b[123] <= 0.0)
@constraint(m, e143, x[75]-25*b[123] <= 0.0)
@constraint(m, e144, x[83]-25*b[123] <= 0.0)
@NLconstraint(m, e145, -log(1+x[68])+x[84]+b[124] <= 1.0)
@constraint(m, e146, x[68]-0.480234946352917*b[124] <= 0.0)
@constraint(m, e147, x[84]-0.392200822712722*b[124] <= 0.0)
@NLconstraint(m, e148, -0.7*log(1+x[73])+x[85]+b[125] <= 1.0)
@constraint(m, e149, x[73]-0.690184503917672*b[125] <= 0.0)
@constraint(m, e150, x[85]-0.367386387824208*b[125] <= 0.0)
@NLconstraint(m, e151, -0.65*log(1+x[74])+x[86]+b[126] <= 1.0)
@NLconstraint(m, e152, -0.65*log(1+x[77])+x[86]+b[126] <= 1.0)
@constraint(m, e153, x[74]-0.690184503917672*b[126] <= 0.0)
@constraint(m, e154, x[77]-38.5*b[126] <= 0.0)
@constraint(m, e155, x[86]-2.3895954367396*b[126] <= 0.0)
@constraint(m, e156, -x[78]+x[87]+b[127] <= 1.0)
@constraint(m, e157, -x[78]+x[87]-b[127] >= -1.0)
@constraint(m, e158, x[78]-9*b[127] <= 0.0)
@constraint(m, e159, x[87]-9*b[127] <= 0.0)
@constraint(m, e160, -x[79]+x[88]+b[128] <= 1.0)
@constraint(m, e161, -x[79]+x[88]-b[128] >= -1.0)
@constraint(m, e162, x[79]-9*b[128] <= 0.0)
@constraint(m, e163, x[88]-9*b[128] <= 0.0)
@NLconstraint(m, e164, -0.75*log(1+x[80])+x[89]+b[129] <= 1.0)
@constraint(m, e165, x[80]-3.04984759446376*b[129] <= 0.0)
@constraint(m, e166, x[89]-1.04900943706034*b[129] <= 0.0)
@NLconstraint(m, e167, -0.8*log(1+x[81])+x[90]+b[130] <= 1.0)
@constraint(m, e168, x[81]-3.04984759446376*b[130] <= 0.0)
@constraint(m, e169, x[90]-1.11894339953103*b[130] <= 0.0)
@NLconstraint(m, e170, -0.85*log(1+x[82])+x[91]+b[131] <= 1.0)
@constraint(m, e171, x[82]-3.04984759446376*b[131] <= 0.0)
@constraint(m, e172, x[91]-1.18887736200171*b[131] <= 0.0)
@constraint(m, e173, b[92]+b[93] == 1.0)
@constraint(m, e174, -b[94]+b[97]+b[98] >= 0.0)
@constraint(m, e175, -b[97]+b[103] >= 0.0)
@constraint(m, e176, -b[98]+b[104] >= 0.0)
@constraint(m, e177, -b[95]+b[99] >= 0.0)
@constraint(m, e178, -b[99]+b[105]+b[106] >= 0.0)
@constraint(m, e179, -b[96]+b[100]+b[101]+b[102] >= 0.0)
@constraint(m, e180, -b[100]+b[106] >= 0.0)
@constraint(m, e181, -b[101]+b[107]+b[108] >= 0.0)
@constraint(m, e182, -b[102]+b[109]+b[110]+b[111] >= 0.0)
@constraint(m, e183, b[94]-b[97] >= 0.0)
@constraint(m, e184, b[94]-b[98] >= 0.0)
@constraint(m, e185, b[95]-b[99] >= 0.0)
@constraint(m, e186, b[96]-b[100] >= 0.0)
@constraint(m, e187, b[96]-b[101] >= 0.0)
@constraint(m, e188, b[96]-b[102] >= 0.0)
@constraint(m, e189, b[97]-b[103] >= 0.0)
@constraint(m, e190, b[98]-b[104] >= 0.0)
@constraint(m, e191, b[99]-b[105] >= 0.0)
@constraint(m, e192, b[99]-b[106] >= 0.0)
@constraint(m, e193, b[101]-b[107] >= 0.0)
@constraint(m, e194, b[101]-b[108] >= 0.0)
@constraint(m, e195, b[102]-b[109] >= 0.0)
@constraint(m, e196, b[102]-b[110] >= 0.0)
@constraint(m, e197, b[102]-b[111] >= 0.0)
@constraint(m, e198, -b[111]+b[112]+b[113] >= 0.0)
@constraint(m, e199, -b[114]+b[117]+b[118] >= 0.0)
@constraint(m, e200, -b[117]+b[123] >= 0.0)
@constraint(m, e201, -b[118]+b[124] >= 0.0)
@constraint(m, e202, -b[115]+b[119] >= 0.0)
@constraint(m, e203, -b[119]+b[125]+b[126] >= 0.0)
@constraint(m, e204, -b[116]+b[120]+b[121]+b[122] >= 0.0)
@constraint(m, e205, -b[120]+b[126] >= 0.0)
@constraint(m, e206, -b[121]+b[127]+b[128] >= 0.0)
@constraint(m, e207, -b[122]+b[129]+b[130]+b[131] >= 0.0)
@constraint(m, e208, b[114]-b[117] >= 0.0)
@constraint(m, e209, b[114]-b[118] >= 0.0)
@constraint(m, e210, b[117]-b[123] >= 0.0)
@constraint(m, e211, b[118]-b[124] >= 0.0)
@constraint(m, e212, b[115]-b[119] >= 0.0)
@constraint(m, e213, b[119]-b[125] >= 0.0)
@constraint(m, e214, b[119]-b[126] >= 0.0)
@constraint(m, e215, b[116]-b[120] >= 0.0)
@constraint(m, e216, b[116]-b[121] >= 0.0)
@constraint(m, e217, b[116]-b[122] >= 0.0)
@constraint(m, e218, b[121]-b[127] >= 0.0)
@constraint(m, e219, b[121]-b[128] >= 0.0)
@constraint(m, e220, b[122]-b[129] >= 0.0)
@constraint(m, e221, b[122]-b[130] >= 0.0)
@constraint(m, e222, b[122]-b[131] >= 0.0)
@constraint(m, e223, b[92]+b[93]-b[94] >= 0.0)
@constraint(m, e224, b[92]+b[93]-b[95] >= 0.0)
@constraint(m, e225, b[92]+b[93]-b[96] >= 0.0)
@constraint(m, e226, b[111]-b[112] >= 0.0)
@constraint(m, e227, b[111]-b[113] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
