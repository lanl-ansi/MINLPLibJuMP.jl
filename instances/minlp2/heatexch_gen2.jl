using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148]
@variable(m, x[x_Idx])
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[146], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[17], 320.0)
set_upper_bound(x[17], 500.0)
set_lower_bound(x[18], 320.0)
set_upper_bound(x[18], 500.0)
set_lower_bound(x[19], 320.0)
set_upper_bound(x[19], 500.0)
set_lower_bound(x[20], 380.0)
set_upper_bound(x[20], 480.0)
set_lower_bound(x[21], 380.0)
set_upper_bound(x[21], 480.0)
set_lower_bound(x[22], 380.0)
set_upper_bound(x[22], 480.0)
set_lower_bound(x[23], 360.0)
set_upper_bound(x[23], 460.0)
set_lower_bound(x[24], 360.0)
set_upper_bound(x[24], 460.0)
set_lower_bound(x[25], 360.0)
set_upper_bound(x[25], 460.0)
set_lower_bound(x[26], 360.0)
set_upper_bound(x[26], 380.0)
set_lower_bound(x[27], 360.0)
set_upper_bound(x[27], 380.0)
set_lower_bound(x[28], 360.0)
set_upper_bound(x[28], 380.0)
set_lower_bound(x[29], 320.0)
set_upper_bound(x[29], 380.0)
set_lower_bound(x[30], 320.0)
set_upper_bound(x[30], 380.0)
set_lower_bound(x[31], 320.0)
set_upper_bound(x[31], 380.0)
set_lower_bound(x[32], 290.0)
set_upper_bound(x[32], 660.0)
set_lower_bound(x[33], 290.0)
set_upper_bound(x[33], 660.0)
set_lower_bound(x[34], 290.0)
set_upper_bound(x[34], 660.0)
set_lower_bound(x[51], 10.0)
set_lower_bound(x[52], 10.0)
set_lower_bound(x[53], 10.0)
set_lower_bound(x[54], 10.0)
set_lower_bound(x[55], 10.0)
set_lower_bound(x[56], 10.0)
set_lower_bound(x[57], 10.0)
set_lower_bound(x[58], 10.0)
set_lower_bound(x[59], 10.0)
set_lower_bound(x[60], 10.0)
set_lower_bound(x[61], 10.0)
set_lower_bound(x[62], 10.0)
set_lower_bound(x[63], 10.0)
set_lower_bound(x[64], 10.0)
set_lower_bound(x[65], 10.0)
set_lower_bound(x[66], 10.0)
set_lower_bound(x[67], 10.0)
set_lower_bound(x[68], 10.0)
set_lower_bound(x[69], 10.0)
set_lower_bound(x[70], 10.0)
set_lower_bound(x[71], 10.0)
set_upper_bound(x[72], 6.0)
set_upper_bound(x[73], 6.0)
set_upper_bound(x[74], 4.0)
set_upper_bound(x[75], 4.0)
set_upper_bound(x[76], 6.0)
set_upper_bound(x[77], 6.0)
set_upper_bound(x[78], 20.0)
set_upper_bound(x[79], 20.0)
set_upper_bound(x[80], 12.0)
set_upper_bound(x[81], 12.0)
set_upper_bound(x[82], 18.0)
set_upper_bound(x[83], 18.0)
set_upper_bound(x[84], 18.0)
set_upper_bound(x[85], 18.0)
set_upper_bound(x[86], 18.0)
set_upper_bound(x[87], 18.0)
set_upper_bound(x[88], 18.0)
set_upper_bound(x[89], 18.0)
set_upper_bound(x[90], 18.0)
set_upper_bound(x[91], 18.0)
set_lower_bound(x[92], 320.0)
set_upper_bound(x[92], 500.0)
set_lower_bound(x[93], 320.0)
set_upper_bound(x[93], 500.0)
set_lower_bound(x[94], 380.0)
set_upper_bound(x[94], 480.0)
set_lower_bound(x[95], 380.0)
set_upper_bound(x[95], 480.0)
set_lower_bound(x[96], 360.0)
set_upper_bound(x[96], 460.0)
set_lower_bound(x[97], 360.0)
set_upper_bound(x[97], 460.0)
set_lower_bound(x[98], 360.0)
set_upper_bound(x[98], 380.0)
set_lower_bound(x[99], 360.0)
set_upper_bound(x[99], 380.0)
set_lower_bound(x[100], 320.0)
set_upper_bound(x[100], 380.0)
set_lower_bound(x[101], 320.0)
set_upper_bound(x[101], 380.0)
set_lower_bound(x[102], 290.0)
set_upper_bound(x[102], 660.0)
set_lower_bound(x[103], 290.0)
set_upper_bound(x[103], 660.0)
set_lower_bound(x[104], 290.0)
set_upper_bound(x[104], 660.0)
set_lower_bound(x[105], 290.0)
set_upper_bound(x[105], 660.0)
set_lower_bound(x[106], 290.0)
set_upper_bound(x[106], 660.0)
set_lower_bound(x[107], 290.0)
set_upper_bound(x[107], 660.0)
set_lower_bound(x[108], 290.0)
set_upper_bound(x[108], 660.0)
set_lower_bound(x[109], 290.0)
set_upper_bound(x[109], 660.0)
set_lower_bound(x[110], 290.0)
set_upper_bound(x[110], 660.0)
set_lower_bound(x[111], 290.0)
set_upper_bound(x[111], 660.0)


# ----- Constraints ----- #
@constraint(m, e1, 6*x[17]-6*x[18]-x[35] == 0.0)
@constraint(m, e2, 6*x[18]-6*x[19]-x[36] == 0.0)
@constraint(m, e3, 4*x[20]-4*x[21]-x[37] == 0.0)
@constraint(m, e4, 4*x[21]-4*x[22]-x[38] == 0.0)
@constraint(m, e5, 6*x[23]-6*x[24]-x[39] == 0.0)
@constraint(m, e6, 6*x[24]-6*x[25]-x[40] == 0.0)
@constraint(m, e7, 20*x[26]-20*x[27]-x[41] == 0.0)
@constraint(m, e8, 20*x[27]-20*x[28]-x[42] == 0.0)
@constraint(m, e9, 12*x[29]-12*x[30]-x[43] == 0.0)
@constraint(m, e10, 12*x[30]-12*x[31]-x[44] == 0.0)
@constraint(m, e11, 18*x[32]-18*x[33]-x[35]-x[37]-x[39]-x[41]-x[43] == 0.0)
@constraint(m, e12, 18*x[33]-18*x[34]-x[36]-x[38]-x[40]-x[42]-x[44] == 0.0)
@constraint(m, e13, 6*x[19]-x[45] == 1920.0)
@constraint(m, e14, 4*x[22]-x[46] == 1520.0)
@constraint(m, e15, 6*x[25]-x[47] == 2160.0)
@constraint(m, e16, 20*x[28]-x[48] == 7200.0)
@constraint(m, e17, 12*x[31]-x[49] == 3840.0)
@constraint(m, e18, -x[35]-x[36]-x[45] == -1080.0)
@constraint(m, e19, -x[37]-x[38]-x[46] == -400.0)
@constraint(m, e20, -x[39]-x[40]-x[47] == -600.0)
@constraint(m, e21, -x[41]-x[42]-x[48] == -400.0)
@constraint(m, e22, -x[43]-x[44]-x[49] == -720.0)
@constraint(m, e23, -18*x[32]-x[50] == -11880.0)
@constraint(m, e24, -x[35]-x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[43]-x[44]-x[50] == -6660.0)
@constraint(m, e25, x[17]-x[18] >= 0.0)
@constraint(m, e26, x[18]-x[19] >= 0.0)
@constraint(m, e27, x[20]-x[21] >= 0.0)
@constraint(m, e28, x[21]-x[22] >= 0.0)
@constraint(m, e29, x[23]-x[24] >= 0.0)
@constraint(m, e30, x[24]-x[25] >= 0.0)
@constraint(m, e31, x[26]-x[27] >= 0.0)
@constraint(m, e32, x[27]-x[28] >= 0.0)
@constraint(m, e33, x[29]-x[30] >= 0.0)
@constraint(m, e34, x[30]-x[31] >= 0.0)
@constraint(m, e35, x[32]-x[33] >= 0.0)
@constraint(m, e36, x[33]-x[34] >= 0.0)
@constraint(m, e37, x[19] >= 320.0)
@constraint(m, e38, x[22] >= 380.0)
@constraint(m, e39, x[25] >= 360.0)
@constraint(m, e40, x[28] >= 360.0)
@constraint(m, e41, x[31] >= 320.0)
@constraint(m, e42, -x[32] >= -660.0)
@constraint(m, e43, -x[17] == -500.0)
@constraint(m, e44, -x[20] == -480.0)
@constraint(m, e45, -x[23] == -460.0)
@constraint(m, e46, -x[26] == -380.0)
@constraint(m, e47, -x[29] == -380.0)
@constraint(m, e48, -x[34] == -290.0)
@constraint(m, e49, -x[72] == -6.0)
@constraint(m, e50, -x[73] == -6.0)
@constraint(m, e51, -x[74] == -4.0)
@constraint(m, e52, -x[75] == -4.0)
@constraint(m, e53, -x[76] == -6.0)
@constraint(m, e54, -x[77] == -6.0)
@constraint(m, e55, -x[78] == -20.0)
@constraint(m, e56, -x[79] == -20.0)
@constraint(m, e57, -x[80] == -12.0)
@constraint(m, e58, -x[81] == -12.0)
@constraint(m, e59, -x[82]-x[84]-x[86]-x[88]-x[90] == -18.0)
@constraint(m, e60, -x[83]-x[85]-x[87]-x[89]-x[91] == -18.0)
@NLconstraint(m, e61, -x[72]*(x[17]-x[92])+x[35] == 0.0)
@NLconstraint(m, e62, -x[73]*(x[18]-x[93])+x[36] == 0.0)
@NLconstraint(m, e63, -x[74]*(x[20]-x[94])+x[37] == 0.0)
@NLconstraint(m, e64, -x[75]*(x[21]-x[95])+x[38] == 0.0)
@NLconstraint(m, e65, -x[76]*(x[23]-x[96])+x[39] == 0.0)
@NLconstraint(m, e66, -x[77]*(x[24]-x[97])+x[40] == 0.0)
@NLconstraint(m, e67, -x[78]*(x[26]-x[98])+x[41] == 0.0)
@NLconstraint(m, e68, -x[79]*(x[27]-x[99])+x[42] == 0.0)
@NLconstraint(m, e69, -x[80]*(x[29]-x[100])+x[43] == 0.0)
@NLconstraint(m, e70, -x[81]*(x[30]-x[101])+x[44] == 0.0)
@NLconstraint(m, e71, -x[82]*(x[102]-x[33])+x[35] == 0.0)
@NLconstraint(m, e72, -x[83]*(x[103]-x[34])+x[36] == 0.0)
@NLconstraint(m, e73, -x[84]*(x[104]-x[33])+x[37] == 0.0)
@NLconstraint(m, e74, -x[85]*(x[105]-x[34])+x[38] == 0.0)
@NLconstraint(m, e75, -x[86]*(x[106]-x[33])+x[39] == 0.0)
@NLconstraint(m, e76, -x[87]*(x[107]-x[34])+x[40] == 0.0)
@NLconstraint(m, e77, -x[88]*(x[108]-x[33])+x[41] == 0.0)
@NLconstraint(m, e78, -x[89]*(x[109]-x[34])+x[42] == 0.0)
@NLconstraint(m, e79, -x[90]*(x[110]-x[33])+x[43] == 0.0)
@NLconstraint(m, e80, -x[91]*(x[111]-x[34])+x[44] == 0.0)
@NLconstraint(m, e81, -x[72]*x[92]+6*x[18] == 0.0)
@NLconstraint(m, e82, -x[73]*x[93]+6*x[19] == 0.0)
@NLconstraint(m, e83, -x[74]*x[94]+4*x[21] == 0.0)
@NLconstraint(m, e84, -x[75]*x[95]+4*x[22] == 0.0)
@NLconstraint(m, e85, -x[76]*x[96]+6*x[24] == 0.0)
@NLconstraint(m, e86, -x[77]*x[97]+6*x[25] == 0.0)
@NLconstraint(m, e87, -x[78]*x[98]+20*x[27] == 0.0)
@NLconstraint(m, e88, -x[79]*x[99]+20*x[28] == 0.0)
@NLconstraint(m, e89, -x[80]*x[100]+12*x[30] == 0.0)
@NLconstraint(m, e90, -x[81]*x[101]+12*x[31] == 0.0)
@NLconstraint(m, e91, -(x[82]*x[102]+x[84]*x[104]+x[86]*x[106]+x[88]*x[108]+x[90]*x[110])+18*x[32] == 0.0)
@NLconstraint(m, e92, -(x[83]*x[103]+x[85]*x[105]+x[87]*x[107]+x[89]*x[109]+x[91]*x[111])+18*x[33] == 0.0)
@NLconstraint(m, e93, -(x[51]-x[52])/log(x[51]/(1e-6+x[52]))+x[112] == 0.0)
@NLconstraint(m, e94, -(x[52]-x[53])/log(x[52]/(1e-6+x[53]))+x[113] == 0.0)
@NLconstraint(m, e95, -(x[54]-x[55])/log(x[54]/(1e-6+x[55]))+x[114] == 0.0)
@NLconstraint(m, e96, -(x[55]-x[56])/log(x[55]/(1e-6+x[56]))+x[115] == 0.0)
@NLconstraint(m, e97, -(x[57]-x[58])/log(x[57]/(1e-6+x[58]))+x[116] == 0.0)
@NLconstraint(m, e98, -(x[58]-x[59])/log(x[58]/(1e-6+x[59]))+x[117] == 0.0)
@NLconstraint(m, e99, -(x[60]-x[61])/log(x[60]/(1e-6+x[61]))+x[118] == 0.0)
@NLconstraint(m, e100, -(x[61]-x[62])/log(x[61]/(1e-6+x[62]))+x[119] == 0.0)
@NLconstraint(m, e101, -(x[63]-x[64])/log(x[63]/(1e-6+x[64]))+x[120] == 0.0)
@NLconstraint(m, e102, -(x[64]-x[65])/log(x[64]/(1e-6+x[65]))+x[121] == 0.0)
@NLconstraint(m, e103, -x[35]/(0.01+x[112])+x[128] == 0.0)
@NLconstraint(m, e104, -x[36]/(0.01+x[113])+x[129] == 0.0)
@NLconstraint(m, e105, -x[37]/(0.01+x[114])+x[131] == 0.0)
@NLconstraint(m, e106, -x[38]/(0.01+x[115])+x[132] == 0.0)
@NLconstraint(m, e107, -x[39]/(0.01+x[116])+x[134] == 0.0)
@NLconstraint(m, e108, -x[40]/(0.01+x[117])+x[135] == 0.0)
@NLconstraint(m, e109, -x[41]/(0.01+x[118])+x[137] == 0.0)
@NLconstraint(m, e110, -x[42]/(0.01+x[119])+x[138] == 0.0)
@NLconstraint(m, e111, -x[43]/(0.01+x[120])+x[140] == 0.0)
@NLconstraint(m, e112, -x[44]/(0.01+x[121])+x[141] == 0.0)
@NLconstraint(m, e113, -(-20+x[66])/log(0.0499999975000001*x[66])+x[122] == 0.0)
@NLconstraint(m, e114, -(-80+x[67])/log(0.01249999984375*x[67])+x[123] == 0.0)
@NLconstraint(m, e115, -(-60+x[68])/log(0.0166666663888889*x[68])+x[124] == 0.0)
@NLconstraint(m, e116, -(-60+x[69])/log(0.0166666663888889*x[69])+x[125] == 0.0)
@NLconstraint(m, e117, -(-20+x[70])/log(0.0499999975000001*x[70])+x[126] == 0.0)
@NLconstraint(m, e118, -(-40+x[71])/log(0.024999999375*x[71])+x[127] == 0.0)
@NLconstraint(m, e119, -x[45]/(0.01+x[122])+x[143] == 0.0)
@NLconstraint(m, e120, -x[46]/(0.01+x[123])+x[144] == 0.0)
@NLconstraint(m, e121, -x[47]/(0.01+x[124])+x[145] == 0.0)
@NLconstraint(m, e122, -x[48]/(0.01+x[125])+x[146] == 0.0)
@NLconstraint(m, e123, -x[49]/(0.01+x[126])+x[147] == 0.0)
@NLconstraint(m, e124, -x[50]/(0.01+x[127])+x[148] == 0.0)
@constraint(m, e125, -1080*b[1]+x[35] <= 0.0)
@constraint(m, e126, -1080*b[2]+x[36] <= 0.0)
@constraint(m, e127, -400*b[3]+x[37] <= 0.0)
@constraint(m, e128, -400*b[4]+x[38] <= 0.0)
@constraint(m, e129, -600*b[5]+x[39] <= 0.0)
@constraint(m, e130, -600*b[6]+x[40] <= 0.0)
@constraint(m, e131, -400*b[7]+x[41] <= 0.0)
@constraint(m, e132, -400*b[8]+x[42] <= 0.0)
@constraint(m, e133, -720*b[9]+x[43] <= 0.0)
@constraint(m, e134, -720*b[10]+x[44] <= 0.0)
@constraint(m, e135, -6660*b[16]+x[50] <= 0.0)
@constraint(m, e136, -1080*b[11]+x[45] <= 0.0)
@constraint(m, e137, -400*b[12]+x[46] <= 0.0)
@constraint(m, e138, -600*b[13]+x[47] <= 0.0)
@constraint(m, e139, -400*b[14]+x[48] <= 0.0)
@constraint(m, e140, -720*b[15]+x[49] <= 0.0)
@constraint(m, e141, 340*b[1]-x[17]+x[32]+x[51] <= 340.0)
@constraint(m, e142, 340*b[2]-x[18]+x[33]+x[52] <= 340.0)
@constraint(m, e143, 280*b[3]-x[20]+x[32]+x[54] <= 280.0)
@constraint(m, e144, 280*b[4]-x[21]+x[33]+x[55] <= 280.0)
@constraint(m, e145, 300*b[5]-x[23]+x[32]+x[57] <= 300.0)
@constraint(m, e146, 300*b[6]-x[24]+x[33]+x[58] <= 300.0)
@constraint(m, e147, 300*b[7]-x[26]+x[32]+x[60] <= 300.0)
@constraint(m, e148, 300*b[8]-x[27]+x[33]+x[61] <= 300.0)
@constraint(m, e149, 340*b[9]-x[29]+x[32]+x[63] <= 340.0)
@constraint(m, e150, 340*b[10]-x[30]+x[33]+x[64] <= 340.0)
@constraint(m, e151, 340*b[1]-x[18]+x[33]+x[52] <= 340.0)
@constraint(m, e152, 340*b[2]-x[19]+x[34]+x[53] <= 340.0)
@constraint(m, e153, 280*b[3]-x[21]+x[33]+x[55] <= 280.0)
@constraint(m, e154, 280*b[4]-x[22]+x[34]+x[56] <= 280.0)
@constraint(m, e155, 300*b[5]-x[24]+x[33]+x[58] <= 300.0)
@constraint(m, e156, 300*b[6]-x[25]+x[34]+x[59] <= 300.0)
@constraint(m, e157, 300*b[7]-x[27]+x[33]+x[61] <= 300.0)
@constraint(m, e158, 300*b[8]-x[28]+x[34]+x[62] <= 300.0)
@constraint(m, e159, 340*b[9]-x[30]+x[33]+x[64] <= 340.0)
@constraint(m, e160, 340*b[10]-x[31]+x[34]+x[65] <= 340.0)
@constraint(m, e161, -x[19]+x[66] <= -320.0)
@constraint(m, e162, -x[22]+x[67] <= -320.0)
@constraint(m, e163, -x[25]+x[68] <= -320.0)
@constraint(m, e164, -x[28]+x[69] <= -320.0)
@constraint(m, e165, -x[31]+x[70] <= -320.0)
@constraint(m, e166, x[32]+x[71] <= 700.0)
@NLconstraint(m, e167, -(1200*(0.01+x[128])^0.6+1200*(0.01+x[129])^0.6+1200*(0.01+x[130])^0.6+1200*(0.01+x[131])^0.6+1200*(0.01+x[132])^0.6+1200*(0.01+x[133])^0.6+1200*(0.01+x[134])^0.6+1200*(0.01+x[135])^0.6+1200*(0.01+x[136])^0.6+1200*(0.01+x[137])^0.6+1200*(0.01+x[138])^0.6+1200*(0.01+x[139])^0.6+1200*(0.01+x[140])^0.6+1200*(0.01+x[141])^0.6+1200*(0.01+x[142])^0.6+1200*(0.01+x[143])^0.6+1200*(0.01+x[144])^0.6+1200*(0.01+x[145])^0.6+1200*(0.01+x[146])^0.6+1200*(0.01+x[147])^0.6+1200*(0.01+x[148])^0.6)-5500*b[1]-5500*b[2]-5500*b[3]-5500*b[4]-5500*b[5]-5500*b[6]-5500*b[7]-5500*b[8]-5500*b[9]-5500*b[10]-5500*b[11]-5500*b[12]-5500*b[13]-5500*b[14]-5500*b[15]-5500*b[16]-10*x[45]-10*x[46]-10*x[47]-10*x[48]-10*x[49]-140*x[50]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
