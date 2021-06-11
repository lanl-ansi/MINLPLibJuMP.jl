using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169]
@variable(m, x[x_Idx])
b_Idx = Any[170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[146], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[108], 0.0)
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
set_upper_bound(x[31], 0.26351883)
set_upper_bound(x[32], 0.26351883)
set_upper_bound(x[33], 0.22891574)
set_upper_bound(x[34], 0.22891574)
set_upper_bound(x[35], 0.21464835)
set_upper_bound(x[36], 0.21464835)
set_upper_bound(x[37], 0.17964414)
set_upper_bound(x[38], 0.17964414)
set_upper_bound(x[39], 0.17402843)
set_upper_bound(x[40], 0.17402843)
set_upper_bound(x[41], 0.15355962)
set_upper_bound(x[42], 0.15355962)
set_upper_bound(x[43], 0.1942283)
set_upper_bound(x[44], 0.1942283)
set_upper_bound(x[45], 0.25670555)
set_upper_bound(x[46], 0.25670555)
set_upper_bound(x[47], 0.27088619)
set_upper_bound(x[48], 0.27088619)
set_upper_bound(x[49], 0.28985675)
set_upper_bound(x[50], 0.28985675)
set_upper_bound(x[51], 0.25550303)
set_upper_bound(x[52], 0.25550303)
set_upper_bound(x[53], 0.19001726)
set_upper_bound(x[54], 0.19001726)
set_upper_bound(x[55], 0.23803143)
set_upper_bound(x[56], 0.23803143)
set_upper_bound(x[57], 0.23312962)
set_upper_bound(x[58], 0.23312962)
set_upper_bound(x[59], 0.27705307)
set_upper_bound(x[60], 0.27705307)
set_upper_bound(x[61], 2.02)
set_upper_bound(x[62], 4.01333333333333)
set_upper_bound(x[63], 4.76)
set_upper_bound(x[64], 5.96)
set_upper_bound(x[65], 42.0933333333333)
set_upper_bound(x[66], 99.28)
set_upper_bound(x[67], 6.59333333333333)
set_upper_bound(x[68], 61.8666666666667)
set_upper_bound(x[69], 56.2866666666667)
set_upper_bound(x[70], 41.5)
set_upper_bound(x[71], 62.4933333333333)
set_upper_bound(x[72], 80.9066666666667)
set_upper_bound(x[73], 26.1466666666667)
set_upper_bound(x[74], 38.0)
set_upper_bound(x[75], 62.24)
set_upper_bound(x[76], 0.5323080366)
set_upper_bound(x[77], 0.918715169866666)
set_upper_bound(x[78], 1.021726146)
set_upper_bound(x[79], 1.0706790744)
set_upper_bound(x[80], 7.32543671346667)
set_upper_bound(x[81], 15.2453990736)
set_upper_bound(x[82], 1.28061192466667)
set_upper_bound(x[83], 15.8815166933333)
set_upper_bound(x[84], 15.2472806811333)
set_upper_bound(x[85], 12.029055125)
set_upper_bound(x[86], 15.9672360214667)
set_upper_bound(x[87], 15.3736631157333)
set_upper_bound(x[88], 6.2237284564)
set_upper_bound(x[89], 8.85892556)
set_upper_bound(x[90], 17.2437830768)
set_lower_bound(x[91], 0.25788969)
set_upper_bound(x[91], 0.35227087)
set_lower_bound(x[92], 0.25788969)
set_upper_bound(x[92], 0.35227087)
set_lower_bound(x[93], -0.98493628)
set_upper_bound(x[93], -0.7794471)
set_lower_bound(x[94], -0.98493628)
set_upper_bound(x[94], -0.7794471)
set_upper_bound(x[95], 0.0580296499999999)
set_upper_bound(x[96], 0.0580296499999999)
set_upper_bound(x[97], 0.0546689399999999)
set_upper_bound(x[98], 0.0546689399999999)
set_upper_bound(x[99], 0.09360565)
set_upper_bound(x[100], 0.09360565)
set_upper_bound(x[101], 0.0476880399999999)
set_upper_bound(x[102], 0.0476880399999999)
set_upper_bound(x[103], 0.05276021)
set_upper_bound(x[104], 0.05276021)
set_upper_bound(x[105], 0.04905388)
set_upper_bound(x[106], 0.04905388)
set_upper_bound(x[107], 0.07731692)
set_upper_bound(x[108], 0.07731692)
set_upper_bound(x[109], 0.08211741)
set_upper_bound(x[110], 0.08211741)
set_upper_bound(x[111], 0.09438118)
set_upper_bound(x[112], 0.09438118)
set_upper_bound(x[113], 0.08436757)
set_upper_bound(x[114], 0.08436757)
set_upper_bound(x[115], 0.06987597)
set_upper_bound(x[116], 0.06987597)
set_upper_bound(x[117], 0.04788831)
set_upper_bound(x[118], 0.04788831)
set_upper_bound(x[119], 0.0668875099999999)
set_upper_bound(x[120], 0.0668875099999999)
set_upper_bound(x[121], 0.07276512)
set_upper_bound(x[122], 0.07276512)
set_upper_bound(x[123], 0.09438118)
set_upper_bound(x[124], 0.09438118)
set_upper_bound(x[125], 0.20548918)
set_upper_bound(x[126], 0.20548918)
set_upper_bound(x[127], 0.1742468)
set_upper_bound(x[128], 0.1742468)
set_upper_bound(x[129], 0.1210427)
set_upper_bound(x[130], 0.1210427)
set_upper_bound(x[131], 0.1319561)
set_upper_bound(x[132], 0.1319561)
set_upper_bound(x[133], 0.12126822)
set_upper_bound(x[134], 0.12126822)
set_upper_bound(x[135], 0.10450574)
set_upper_bound(x[136], 0.10450574)
set_upper_bound(x[137], 0.11691138)
set_upper_bound(x[138], 0.11691138)
set_upper_bound(x[139], 0.17458814)
set_upper_bound(x[140], 0.17458814)
set_upper_bound(x[141], 0.17650501)
set_upper_bound(x[142], 0.17650501)
set_upper_bound(x[143], 0.20548918)
set_upper_bound(x[144], 0.20548918)
set_upper_bound(x[145], 0.18562706)
set_upper_bound(x[146], 0.18562706)
set_upper_bound(x[147], 0.14212895)
set_upper_bound(x[148], 0.14212895)
set_upper_bound(x[149], 0.17114392)
set_upper_bound(x[150], 0.17114392)
set_upper_bound(x[151], 0.1603645)
set_upper_bound(x[152], 0.1603645)
set_upper_bound(x[153], 0.18267189)
set_upper_bound(x[154], 0.18267189)
set_upper_bound(x[155], 0.5323080366)
set_upper_bound(x[156], 0.918715169866666)
set_upper_bound(x[157], 1.021726146)
set_upper_bound(x[158], 1.0706790744)
set_upper_bound(x[159], 7.32543671346667)
set_upper_bound(x[160], 15.2453990736)
set_upper_bound(x[161], 1.28061192466667)
set_upper_bound(x[162], 15.8815166933333)
set_upper_bound(x[163], 15.2472806811333)
set_upper_bound(x[164], 12.029055125)
set_upper_bound(x[165], 15.9672360214667)
set_upper_bound(x[166], 15.3736631157333)
set_upper_bound(x[167], 6.2237284564)
set_upper_bound(x[168], 8.85892556)
set_upper_bound(x[169], 17.2437830768)


# ----- Constraints ----- #
@constraint(m, e1, x[76]+x[77]+x[78]+x[79]+x[80]+x[81]+x[82]+x[83]+x[84]+x[85]+x[86]+x[87]+x[88]+x[89]+x[90]-objvar == 0.0)
@NLconstraint(m, e2, (-x[61]*x[32]*x[2])-x[61]*x[31]*x[1]+x[155] == 0.0)
@NLconstraint(m, e3, (-x[62]*x[34]*x[4])-x[62]*x[33]*x[3]+x[156] == 0.0)
@NLconstraint(m, e4, (-x[63]*x[36]*x[6])-x[63]*x[35]*x[5]+x[157] == 0.0)
@NLconstraint(m, e5, (-x[64]*x[38]*x[8])-x[64]*x[37]*x[7]+x[158] == 0.0)
@NLconstraint(m, e6, (-x[65]*x[40]*x[10])-x[65]*x[39]*x[9]+x[159] == 0.0)
@NLconstraint(m, e7, (-x[66]*x[42]*x[12])-x[66]*x[41]*x[11]+x[160] == 0.0)
@NLconstraint(m, e8, (-x[67]*x[44]*x[14])-x[67]*x[43]*x[13]+x[161] == 0.0)
@NLconstraint(m, e9, (-x[68]*x[46]*x[16])-x[68]*x[45]*x[15]+x[162] == 0.0)
@NLconstraint(m, e10, (-x[69]*x[48]*x[18])-x[69]*x[47]*x[17]+x[163] == 0.0)
@NLconstraint(m, e11, (-x[70]*x[50]*x[20])-x[70]*x[49]*x[19]+x[164] == 0.0)
@NLconstraint(m, e12, (-x[71]*x[52]*x[22])-x[71]*x[51]*x[21]+x[165] == 0.0)
@NLconstraint(m, e13, (-x[72]*x[54]*x[24])-x[72]*x[53]*x[23]+x[166] == 0.0)
@NLconstraint(m, e14, (-x[73]*x[56]*x[26])-x[73]*x[55]*x[25]+x[167] == 0.0)
@NLconstraint(m, e15, (-x[74]*x[58]*x[28])-x[74]*x[57]*x[27]+x[168] == 0.0)
@NLconstraint(m, e16, (-x[75]*x[60]*x[30])-x[75]*x[59]*x[29]+x[169] == 0.0)
@constraint(m, e17, x[1]+x[2] == 1.0)
@constraint(m, e18, x[3]+x[4] == 1.0)
@constraint(m, e19, x[5]+x[6] == 1.0)
@constraint(m, e20, x[7]+x[8] == 1.0)
@constraint(m, e21, x[9]+x[10] == 1.0)
@constraint(m, e22, x[11]+x[12] == 1.0)
@constraint(m, e23, x[13]+x[14] == 1.0)
@constraint(m, e24, x[15]+x[16] == 1.0)
@constraint(m, e25, x[17]+x[18] == 1.0)
@constraint(m, e26, x[19]+x[20] == 1.0)
@constraint(m, e27, x[21]+x[22] == 1.0)
@constraint(m, e28, x[23]+x[24] == 1.0)
@constraint(m, e29, x[25]+x[26] == 1.0)
@constraint(m, e30, x[27]+x[28] == 1.0)
@constraint(m, e31, x[29]+x[30] == 1.0)
@constraint(m, e32, 2.02*x[1]+4.01333333333333*x[3]+4.76*x[5]+5.96*x[7]+42.0933333333333*x[9]+99.28*x[11]+6.59333333333333*x[13]+61.8666666666667*x[15]+56.2866666666667*x[17]+41.5*x[19]+62.4933333333333*x[21]+80.9066666666667*x[23]+26.1466666666667*x[25]+38*x[27]+62.24*x[29] <= 302.08)
@constraint(m, e33, 2.02*x[2]+4.01333333333333*x[4]+4.76*x[6]+5.96*x[8]+42.0933333333333*x[10]+99.28*x[12]+6.59333333333333*x[14]+61.8666666666667*x[16]+56.2866666666667*x[18]+41.5*x[20]+62.4933333333333*x[22]+80.9066666666667*x[24]+26.1466666666667*x[26]+38*x[28]+62.24*x[30] <= 302.08)
@constraint(m, e34, x[91]+x[95] >= 0.29424122)
@constraint(m, e35, x[92]+x[96] >= 0.29424122)
@constraint(m, e36, x[91]+x[97] >= 0.29760193)
@constraint(m, e37, x[92]+x[98] >= 0.29760193)
@constraint(m, e38, x[91]+x[99] >= 0.35149534)
@constraint(m, e39, x[92]+x[100] >= 0.35149534)
@constraint(m, e40, x[91]+x[101] >= 0.30458283)
@constraint(m, e41, x[92]+x[102] >= 0.30458283)
@constraint(m, e42, x[91]+x[103] >= 0.29951066)
@constraint(m, e43, x[92]+x[104] >= 0.29951066)
@constraint(m, e44, x[91]+x[105] >= 0.30694357)
@constraint(m, e45, x[92]+x[106] >= 0.30694357)
@constraint(m, e46, x[91]+x[107] >= 0.33520661)
@constraint(m, e47, x[92]+x[108] >= 0.33520661)
@constraint(m, e48, x[91]+x[109] >= 0.3400071)
@constraint(m, e49, x[92]+x[110] >= 0.3400071)
@constraint(m, e50, x[91]+x[111] >= 0.35227087)
@constraint(m, e51, x[92]+x[112] >= 0.35227087)
@constraint(m, e52, x[91]+x[113] >= 0.34225726)
@constraint(m, e53, x[92]+x[114] >= 0.34225726)
@constraint(m, e54, x[91]+x[115] >= 0.32776566)
@constraint(m, e55, x[92]+x[116] >= 0.32776566)
@constraint(m, e56, x[91]+x[117] >= 0.30438256)
@constraint(m, e57, x[92]+x[118] >= 0.30438256)
@constraint(m, e58, x[91]+x[119] >= 0.28538336)
@constraint(m, e59, x[92]+x[120] >= 0.28538336)
@constraint(m, e60, x[91]+x[121] >= 0.27950575)
@constraint(m, e61, x[92]+x[122] >= 0.27950575)
@constraint(m, e62, -x[91]+x[95] >= -0.29424122)
@constraint(m, e63, -x[92]+x[96] >= -0.29424122)
@constraint(m, e64, -x[91]+x[97] >= -0.29760193)
@constraint(m, e65, -x[92]+x[98] >= -0.29760193)
@constraint(m, e66, -x[91]+x[99] >= -0.35149534)
@constraint(m, e67, -x[92]+x[100] >= -0.35149534)
@constraint(m, e68, -x[91]+x[101] >= -0.30458283)
@constraint(m, e69, -x[92]+x[102] >= -0.30458283)
@constraint(m, e70, -x[91]+x[103] >= -0.29951066)
@constraint(m, e71, -x[92]+x[104] >= -0.29951066)
@constraint(m, e72, -x[91]+x[105] >= -0.30694357)
@constraint(m, e73, -x[92]+x[106] >= -0.30694357)
@constraint(m, e74, -x[91]+x[107] >= -0.33520661)
@constraint(m, e75, -x[92]+x[108] >= -0.33520661)
@constraint(m, e76, -x[91]+x[109] >= -0.3400071)
@constraint(m, e77, -x[92]+x[110] >= -0.3400071)
@constraint(m, e78, -x[91]+x[113] >= -0.34225726)
@constraint(m, e79, -x[92]+x[114] >= -0.34225726)
@constraint(m, e80, -x[91]+x[115] >= -0.32776566)
@constraint(m, e81, -x[92]+x[116] >= -0.32776566)
@constraint(m, e82, -x[91]+x[117] >= -0.30438256)
@constraint(m, e83, -x[92]+x[118] >= -0.30438256)
@constraint(m, e84, -x[91]+x[119] >= -0.28538336)
@constraint(m, e85, -x[92]+x[120] >= -0.28538336)
@constraint(m, e86, -x[91]+x[121] >= -0.27950575)
@constraint(m, e87, -x[92]+x[122] >= -0.27950575)
@constraint(m, e88, -x[91]+x[123] >= -0.25788969)
@constraint(m, e89, -x[92]+x[124] >= -0.25788969)
@constraint(m, e90, x[93]+x[127] >= -0.9536939)
@constraint(m, e91, x[94]+x[128] >= -0.9536939)
@constraint(m, e92, x[93]+x[129] >= -0.9004898)
@constraint(m, e93, x[94]+x[130] >= -0.9004898)
@constraint(m, e94, x[93]+x[131] >= -0.9114032)
@constraint(m, e95, x[94]+x[132] >= -0.9114032)
@constraint(m, e96, x[93]+x[133] >= -0.90071532)
@constraint(m, e97, x[94]+x[134] >= -0.90071532)
@constraint(m, e98, x[93]+x[135] >= -0.88043054)
@constraint(m, e99, x[94]+x[136] >= -0.88043054)
@constraint(m, e100, x[93]+x[137] >= -0.8680249)
@constraint(m, e101, x[94]+x[138] >= -0.8680249)
@constraint(m, e102, x[93]+x[139] >= -0.81034814)
@constraint(m, e103, x[94]+x[140] >= -0.81034814)
@constraint(m, e104, x[93]+x[141] >= -0.80843127)
@constraint(m, e105, x[94]+x[142] >= -0.80843127)
@constraint(m, e106, x[93]+x[143] >= -0.7794471)
@constraint(m, e107, x[94]+x[144] >= -0.7794471)
@constraint(m, e108, x[93]+x[145] >= -0.79930922)
@constraint(m, e109, x[94]+x[146] >= -0.79930922)
@constraint(m, e110, x[93]+x[147] >= -0.84280733)
@constraint(m, e111, x[94]+x[148] >= -0.84280733)
@constraint(m, e112, x[93]+x[149] >= -0.81379236)
@constraint(m, e113, x[94]+x[150] >= -0.81379236)
@constraint(m, e114, x[93]+x[151] >= -0.82457178)
@constraint(m, e115, x[94]+x[152] >= -0.82457178)
@constraint(m, e116, x[93]+x[153] >= -0.80226439)
@constraint(m, e117, x[94]+x[154] >= -0.80226439)
@constraint(m, e118, -x[93]+x[125] >= 0.98493628)
@constraint(m, e119, -x[94]+x[126] >= 0.98493628)
@constraint(m, e120, -x[93]+x[127] >= 0.9536939)
@constraint(m, e121, -x[94]+x[128] >= 0.9536939)
@constraint(m, e122, -x[93]+x[129] >= 0.9004898)
@constraint(m, e123, -x[94]+x[130] >= 0.9004898)
@constraint(m, e124, -x[93]+x[131] >= 0.9114032)
@constraint(m, e125, -x[94]+x[132] >= 0.9114032)
@constraint(m, e126, -x[93]+x[133] >= 0.90071532)
@constraint(m, e127, -x[94]+x[134] >= 0.90071532)
@constraint(m, e128, -x[93]+x[135] >= 0.88043054)
@constraint(m, e129, -x[94]+x[136] >= 0.88043054)
@constraint(m, e130, -x[93]+x[137] >= 0.8680249)
@constraint(m, e131, -x[94]+x[138] >= 0.8680249)
@constraint(m, e132, -x[93]+x[139] >= 0.81034814)
@constraint(m, e133, -x[94]+x[140] >= 0.81034814)
@constraint(m, e134, -x[93]+x[141] >= 0.80843127)
@constraint(m, e135, -x[94]+x[142] >= 0.80843127)
@constraint(m, e136, -x[93]+x[145] >= 0.79930922)
@constraint(m, e137, -x[94]+x[146] >= 0.79930922)
@constraint(m, e138, -x[93]+x[147] >= 0.84280733)
@constraint(m, e139, -x[94]+x[148] >= 0.84280733)
@constraint(m, e140, -x[93]+x[149] >= 0.81379236)
@constraint(m, e141, -x[94]+x[150] >= 0.81379236)
@constraint(m, e142, -x[93]+x[151] >= 0.82457178)
@constraint(m, e143, -x[94]+x[152] >= 0.82457178)
@constraint(m, e144, -x[93]+x[153] >= 0.80226439)
@constraint(m, e145, -x[94]+x[154] >= 0.80226439)
@constraint(m, e146, x[31]-x[95]-x[125] == 0.0)
@constraint(m, e147, x[32]-x[96]-x[126] == 0.0)
@constraint(m, e148, x[33]-x[97]-x[127] == 0.0)
@constraint(m, e149, x[34]-x[98]-x[128] == 0.0)
@constraint(m, e150, x[35]-x[99]-x[129] == 0.0)
@constraint(m, e151, x[36]-x[100]-x[130] == 0.0)
@constraint(m, e152, x[37]-x[101]-x[131] == 0.0)
@constraint(m, e153, x[38]-x[102]-x[132] == 0.0)
@constraint(m, e154, x[39]-x[103]-x[133] == 0.0)
@constraint(m, e155, x[40]-x[104]-x[134] == 0.0)
@constraint(m, e156, x[41]-x[105]-x[135] == 0.0)
@constraint(m, e157, x[42]-x[106]-x[136] == 0.0)
@constraint(m, e158, x[43]-x[107]-x[137] == 0.0)
@constraint(m, e159, x[44]-x[108]-x[138] == 0.0)
@constraint(m, e160, x[45]-x[109]-x[139] == 0.0)
@constraint(m, e161, x[46]-x[110]-x[140] == 0.0)
@constraint(m, e162, x[47]-x[111]-x[141] == 0.0)
@constraint(m, e163, x[48]-x[112]-x[142] == 0.0)
@constraint(m, e164, x[49]-x[113]-x[143] == 0.0)
@constraint(m, e165, x[50]-x[114]-x[144] == 0.0)
@constraint(m, e166, x[51]-x[115]-x[145] == 0.0)
@constraint(m, e167, x[52]-x[116]-x[146] == 0.0)
@constraint(m, e168, x[53]-x[117]-x[147] == 0.0)
@constraint(m, e169, x[54]-x[118]-x[148] == 0.0)
@constraint(m, e170, x[55]-x[119]-x[149] == 0.0)
@constraint(m, e171, x[56]-x[120]-x[150] == 0.0)
@constraint(m, e172, x[57]-x[121]-x[151] == 0.0)
@constraint(m, e173, x[58]-x[122]-x[152] == 0.0)
@constraint(m, e174, x[59]-x[123]-x[153] == 0.0)
@constraint(m, e175, x[60]-x[124]-x[154] == 0.0)
@constraint(m, e176, b[177]+b[178] >= 1.0)
@constraint(m, e177, b[175]+b[180] >= 1.0)
@constraint(m, e178, b[174]+b[178] >= 1.0)
@constraint(m, e179, b[174]+b[177]+b[179] >= 1.0)
@constraint(m, e180, b[174]+b[176]+b[180] >= 1.0)
@constraint(m, e181, b[174]+b[175] >= 1.0)
@constraint(m, e182, b[173]+b[180] >= 1.0)
@constraint(m, e183, b[173]+b[177] >= 1.0)
@constraint(m, e184, b[172]+b[179] >= 1.0)
@constraint(m, e185, b[172]+b[177]+b[180] >= 1.0)
@constraint(m, e186, b[172]+b[176] >= 1.0)
@constraint(m, e187, b[172]+b[174]+b[180] >= 1.0)
@constraint(m, e188, b[172]+b[174]+b[177] >= 1.0)
@constraint(m, e189, b[172]+b[173] >= 1.0)
@constraint(m, e190, b[171]+b[179] >= 1.0)
@constraint(m, e191, b[171]+b[177]+b[180] >= 1.0)
@constraint(m, e192, b[171]+b[176] >= 1.0)
@constraint(m, e193, b[171]+b[174] >= 1.0)
@constraint(m, e194, b[171]+b[172] >= 1.0)
@constraint(m, e195, b[170]+b[179] >= 1.0)
@constraint(m, e196, b[170]+b[177]+b[180] >= 1.0)
@constraint(m, e197, b[170]+b[176] >= 1.0)
@constraint(m, e198, b[170]+b[174]+b[180] >= 1.0)
@constraint(m, e199, b[170]+b[174]+b[177] >= 1.0)
@constraint(m, e200, b[170]+b[173] >= 1.0)
@constraint(m, e201, b[170]+b[172] >= 1.0)
@constraint(m, e202, b[170]+b[171] >= 1.0)
@constraint(m, e203, b[180]+b[185] >= 1.0)
@constraint(m, e204, b[180]+b[184]+b[186] >= 1.0)
@constraint(m, e205, b[180]+b[183]+b[187] >= 1.0)
@constraint(m, e206, b[180]+b[182] >= 1.0)
@constraint(m, e207, b[180]+b[181]+b[187] >= 1.0)
@constraint(m, e208, b[180]+b[181]+b[184] >= 1.0)
@constraint(m, e209, b[179]+b[186] >= 1.0)
@constraint(m, e210, b[179]+b[184]+b[187] >= 1.0)
@constraint(m, e211, b[179]+b[183] >= 1.0)
@constraint(m, e212, b[179]+b[181] >= 1.0)
@constraint(m, e213, b[178]+b[187] >= 1.0)
@constraint(m, e214, b[178]+b[184] >= 1.0)
@constraint(m, e215, b[178]+b[181] >= 1.0)
@constraint(m, e216, b[177]+b[185] >= 1.0)
@constraint(m, e217, b[177]+b[184]+b[186] >= 1.0)
@constraint(m, e218, b[177]+b[183]+b[187] >= 1.0)
@constraint(m, e219, b[177]+b[182] >= 1.0)
@constraint(m, e220, b[177]+b[181]+b[187] >= 1.0)
@constraint(m, e221, b[177]+b[181]+b[184] >= 1.0)
@constraint(m, e222, b[177]+b[180]+b[186] >= 1.0)
@constraint(m, e223, b[177]+b[180]+b[184]+b[187] >= 1.0)
@constraint(m, e224, b[177]+b[180]+b[183] >= 1.0)
@constraint(m, e225, b[177]+b[180]+b[181] >= 1.0)
@constraint(m, e226, b[177]+b[179]+b[187] >= 1.0)
@constraint(m, e227, b[177]+b[179]+b[184] >= 1.0)
@constraint(m, e228, b[177]+b[179]+b[181] >= 1.0)
@constraint(m, e229, b[176]+b[186] >= 1.0)
@constraint(m, e230, b[176]+b[184]+b[187] >= 1.0)
@constraint(m, e231, b[176]+b[183] >= 1.0)
@constraint(m, e232, b[176]+b[181] >= 1.0)
@constraint(m, e233, b[176]+b[180]+b[187] >= 1.0)
@constraint(m, e234, b[176]+b[180]+b[184] >= 1.0)
@constraint(m, e235, b[176]+b[180]+b[181] >= 1.0)
@constraint(m, e236, b[176]+b[179]+b[187] >= 1.0)
@constraint(m, e237, b[176]+b[179]+b[184] >= 1.0)
@constraint(m, e238, b[176]+b[179]+b[181] >= 1.0)
@constraint(m, e239, b[175]+b[187] >= 1.0)
@constraint(m, e240, b[175]+b[184] >= 1.0)
@constraint(m, e241, b[175]+b[181] >= 1.0)
@constraint(m, e242, b[174]+b[185] >= 1.0)
@constraint(m, e243, b[174]+b[184]+b[186] >= 1.0)
@constraint(m, e244, b[174]+b[183]+b[187] >= 1.0)
@constraint(m, e245, b[174]+b[182] >= 1.0)
@constraint(m, e246, b[174]+b[181]+b[187] >= 1.0)
@constraint(m, e247, b[174]+b[181]+b[184] >= 1.0)
@constraint(m, e248, b[174]+b[180]+b[186] >= 1.0)
@constraint(m, e249, b[174]+b[180]+b[184]+b[187] >= 1.0)
@constraint(m, e250, b[174]+b[180]+b[183] >= 1.0)
@constraint(m, e251, b[174]+b[180]+b[181] >= 1.0)
@constraint(m, e252, b[174]+b[179]+b[187] >= 1.0)
@constraint(m, e253, b[174]+b[179]+b[184] >= 1.0)
@constraint(m, e254, b[174]+b[179]+b[181] >= 1.0)
@constraint(m, e255, b[174]+b[177]+b[186] >= 1.0)
@constraint(m, e256, b[174]+b[177]+b[184]+b[187] >= 1.0)
@constraint(m, e257, b[174]+b[177]+b[183] >= 1.0)
@constraint(m, e258, b[174]+b[177]+b[181] >= 1.0)
@constraint(m, e259, b[174]+b[177]+b[180]+b[187] >= 1.0)
@constraint(m, e260, b[174]+b[177]+b[180]+b[184] >= 1.0)
@constraint(m, e261, b[174]+b[177]+b[180]+b[181] >= 1.0)
@constraint(m, e262, b[174]+b[176]+b[187] >= 1.0)
@constraint(m, e263, b[174]+b[176]+b[184] >= 1.0)
@constraint(m, e264, b[174]+b[176]+b[181] >= 1.0)
@constraint(m, e265, b[173]+b[187] >= 1.0)
@constraint(m, e266, b[173]+b[184] >= 1.0)
@constraint(m, e267, b[173]+b[181] >= 1.0)
@constraint(m, e268, b[172]+b[186] >= 1.0)
@constraint(m, e269, b[172]+b[184]+b[187] >= 1.0)
@constraint(m, e270, b[172]+b[183] >= 1.0)
@constraint(m, e271, b[172]+b[181] >= 1.0)
@constraint(m, e272, b[172]+b[180]+b[187] >= 1.0)
@constraint(m, e273, b[172]+b[180]+b[184] >= 1.0)
@constraint(m, e274, b[172]+b[180]+b[181] >= 1.0)
@constraint(m, e275, b[172]+b[177]+b[187] >= 1.0)
@constraint(m, e276, b[172]+b[177]+b[184] >= 1.0)
@constraint(m, e277, b[172]+b[177]+b[181] >= 1.0)
@constraint(m, e278, b[172]+b[174]+b[187] >= 1.0)
@constraint(m, e279, b[172]+b[174]+b[184] >= 1.0)
@constraint(m, e280, b[172]+b[174]+b[181] >= 1.0)
@constraint(m, e281, b[171]+b[186] >= 1.0)
@constraint(m, e282, b[171]+b[184]+b[187] >= 1.0)
@constraint(m, e283, b[171]+b[183] >= 1.0)
@constraint(m, e284, b[171]+b[181] >= 1.0)
@constraint(m, e285, b[171]+b[180]+b[187] >= 1.0)
@constraint(m, e286, b[171]+b[180]+b[184] >= 1.0)
@constraint(m, e287, b[171]+b[180]+b[181] >= 1.0)
@constraint(m, e288, b[171]+b[177]+b[187] >= 1.0)
@constraint(m, e289, b[171]+b[177]+b[184] >= 1.0)
@constraint(m, e290, b[171]+b[177]+b[181] >= 1.0)
@constraint(m, e291, b[170]+b[186] >= 1.0)
@constraint(m, e292, b[170]+b[184]+b[187] >= 1.0)
@constraint(m, e293, b[170]+b[183] >= 1.0)
@constraint(m, e294, b[170]+b[181] >= 1.0)
@constraint(m, e295, b[170]+b[180]+b[187] >= 1.0)
@constraint(m, e296, b[170]+b[180]+b[184] >= 1.0)
@constraint(m, e297, b[170]+b[180]+b[181] >= 1.0)
@constraint(m, e298, b[170]+b[177]+b[187] >= 1.0)
@constraint(m, e299, b[170]+b[177]+b[184] >= 1.0)
@constraint(m, e300, b[170]+b[177]+b[181] >= 1.0)
@constraint(m, e301, b[170]+b[174]+b[187] >= 1.0)
@constraint(m, e302, b[170]+b[174]+b[184] >= 1.0)
@constraint(m, e303, b[170]+b[174]+b[181] >= 1.0)
@constraint(m, e304, b[173]-b[174] >= 0.0)
@constraint(m, e305, b[175]-b[176] >= 0.0)
@constraint(m, e306, b[176]-b[177] >= 0.0)
@constraint(m, e307, b[178]-b[179] >= 0.0)
@constraint(m, e308, b[179]-b[180] >= 0.0)
@constraint(m, e309, b[182]-b[183] >= 0.0)
@constraint(m, e310, b[183]-b[184] >= 0.0)
@constraint(m, e311, b[185]-b[186] >= 0.0)
@constraint(m, e312, b[186]-b[187] >= 0.0)
@constraint(m, e313, b[188]-b[189] >= 0.0)
@constraint(m, e314, b[189]-b[190] >= 0.0)
@constraint(m, e315, b[190]-b[191] >= 0.0)
@constraint(m, e316, b[192]-b[193] >= 0.0)
@constraint(m, e317, b[193]-b[194] >= 0.0)
@constraint(m, e318, b[198]-b[199] >= 0.0)
@constraint(m, e319, x[93]-x[94] >= 0.0)
@constraint(m, e320, x[61]-0.1*b[170] == 1.92)
@constraint(m, e321, x[62]-0.193333333333333*b[171] == 3.82)
@constraint(m, e322, x[63]-0.226666666666667*b[172] == 4.53333333333333)
@constraint(m, e323, x[64]-0.286666666666667*b[173]-0.28*b[174] == 5.39333333333333)
@constraint(m, e324, x[65]-1.91333333333333*b[175]-1.91333333333333*b[176]-1.91333333333333*b[177] == 36.3533333333333)
@constraint(m, e325, x[66]-4.50666666666667*b[178]-4.51333333333333*b[179]-4.51333333333333*b[180] == 85.7466666666667)
@constraint(m, e326, x[67]-0.313333333333333*b[181] == 6.28)
@constraint(m, e327, x[68]-2.80666666666667*b[182]-2.81333333333333*b[183]-2.81333333333333*b[184] == 53.4333333333333)
@constraint(m, e328, x[69]-2.56*b[185]-2.56*b[186]-2.55333333333333*b[187] == 48.6133333333333)
@constraint(m, e329, x[70]-1.88666666666667*b[188]-1.88666666666667*b[189]-1.88666666666667*b[190]-1.88666666666667*b[191] == 33.9533333333333)
@constraint(m, e330, x[71]-2.84*b[192]-2.84*b[193]-2.84666666666667*b[194] == 53.9666666666667)
@constraint(m, e331, x[72]-3.85333333333333*b[195] == 77.0533333333333)
@constraint(m, e332, x[73]-1.24*b[196] == 24.9066666666667)
@constraint(m, e333, x[74]-1.81333333333333*b[197] == 36.1866666666667)
@constraint(m, e334, x[75]-2.96*b[198]-2.96666666666667*b[199] == 56.3133333333333)
@constraint(m, e335, -x[76]+x[155] <= 0.0)
@constraint(m, e336, -x[77]+x[156] <= 0.0)
@constraint(m, e337, -x[78]+x[157] <= 0.0)
@constraint(m, e338, -x[79]+x[158] <= 0.0)
@constraint(m, e339, -x[80]+x[159] <= 0.0)
@constraint(m, e340, -x[81]+x[160] <= 0.0)
@constraint(m, e341, -x[82]+x[161] <= 0.0)
@constraint(m, e342, -x[83]+x[162] <= 0.0)
@constraint(m, e343, -x[84]+x[163] <= 0.0)
@constraint(m, e344, -x[85]+x[164] <= 0.0)
@constraint(m, e345, -x[86]+x[165] <= 0.0)
@constraint(m, e346, -x[87]+x[166] <= 0.0)
@constraint(m, e347, -x[88]+x[167] <= 0.0)
@constraint(m, e348, -x[89]+x[168] <= 0.0)
@constraint(m, e349, -x[90]+x[169] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
