using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111]
@variable(m, x[x_Idx])
set_lower_bound(x[85], 0.0)
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
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[111], 0.0)
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
set_lower_bound(x[104], 0.0)
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
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[95], 0.0)
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
set_lower_bound(x[109], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[2], 10000.0)
set_upper_bound(x[3], 10000.0)
set_upper_bound(x[4], 10000.0)
set_upper_bound(x[5], 10000.0)
set_upper_bound(x[6], 10000.0)
set_upper_bound(x[7], 10000.0)
set_upper_bound(x[8], 10000.0)
set_upper_bound(x[9], 10000.0)
set_upper_bound(x[10], 10000.0)
set_upper_bound(x[11], 10000.0)
set_upper_bound(x[12], 100.0)
set_upper_bound(x[13], 100.0)
set_upper_bound(x[14], 100.0)
set_upper_bound(x[15], 100.0)
set_upper_bound(x[16], 100.0)
set_upper_bound(x[17], 100.0)
set_upper_bound(x[18], 100.0)
set_upper_bound(x[19], 100.0)
set_upper_bound(x[20], 100.0)
set_upper_bound(x[21], 100.0)
set_upper_bound(x[22], 100.0)
set_upper_bound(x[23], 100.0)
set_upper_bound(x[24], 100.0)
set_upper_bound(x[25], 100.0)
set_upper_bound(x[26], 100.0)
set_upper_bound(x[27], 100.0)
set_upper_bound(x[28], 100.0)
set_upper_bound(x[29], 100.0)
set_upper_bound(x[30], 100.0)
set_upper_bound(x[31], 100.0)
set_upper_bound(x[32], 10000.0)
set_upper_bound(x[33], 10000.0)
set_upper_bound(x[34], 10000.0)
set_upper_bound(x[35], 10000.0)
set_upper_bound(x[36], 10000.0)
set_upper_bound(x[37], 100.0)
set_upper_bound(x[38], 100.0)
set_upper_bound(x[39], 100.0)
set_upper_bound(x[40], 100.0)
set_upper_bound(x[41], 100.0)
set_upper_bound(x[42], 100.0)
set_upper_bound(x[43], 100.0)
set_upper_bound(x[44], 100.0)
set_upper_bound(x[45], 100.0)
set_upper_bound(x[46], 100.0)
set_upper_bound(x[47], 100.0)
set_upper_bound(x[48], 100.0)
set_upper_bound(x[49], 100.0)
set_upper_bound(x[50], 100.0)
set_upper_bound(x[51], 100.0)
set_upper_bound(x[52], 100.0)
set_upper_bound(x[53], 100.0)
set_upper_bound(x[54], 100.0)
set_upper_bound(x[55], 100.0)
set_upper_bound(x[56], 100.0)
set_upper_bound(x[57], 10000.0)
set_upper_bound(x[58], 10000.0)
set_upper_bound(x[59], 10000.0)
set_upper_bound(x[60], 10000.0)
set_upper_bound(x[61], 10000.0)
set_upper_bound(x[62], 10000.0)
set_upper_bound(x[63], 10000.0)
set_upper_bound(x[64], 10000.0)
set_upper_bound(x[65], 10000.0)
set_upper_bound(x[66], 10000.0)
set_upper_bound(x[67], 10000.0)
set_upper_bound(x[68], 10000.0)
set_upper_bound(x[69], 10000.0)
set_upper_bound(x[70], 10000.0)
set_upper_bound(x[71], 10000.0)
set_upper_bound(x[72], 10000.0)
set_upper_bound(x[73], 10000.0)
set_upper_bound(x[74], 10000.0)
set_upper_bound(x[75], 10000.0)
set_upper_bound(x[76], 10000.0)
set_upper_bound(x[77], 10000.0)
set_upper_bound(x[78], 10000.0)
set_upper_bound(x[79], 10000.0)
set_upper_bound(x[80], 10000.0)
set_upper_bound(x[81], 10000.0)
set_upper_bound(x[82], 10000.0)
set_upper_bound(x[83], 10000.0)
set_upper_bound(x[84], 10000.0)
set_upper_bound(x[85], 10000.0)
set_upper_bound(x[86], 10000.0)
set_upper_bound(x[87], 10000.0)
set_upper_bound(x[88], 100.0)
set_upper_bound(x[89], 100.0)
set_upper_bound(x[90], 100.0)
set_upper_bound(x[91], 100.0)
set_upper_bound(x[92], 50000.0)
set_upper_bound(x[93], 50000.0)
set_upper_bound(x[94], 50000.0)
set_upper_bound(x[95], 50000.0)
set_upper_bound(x[96], 50000.0)
set_lower_bound(x[97], 300.0)
set_upper_bound(x[97], 1200.0)
set_lower_bound(x[98], 300.0)
set_upper_bound(x[98], 1200.0)
set_lower_bound(x[99], 300.0)
set_upper_bound(x[99], 1200.0)
set_lower_bound(x[100], 300.0)
set_upper_bound(x[100], 1200.0)
set_lower_bound(x[101], 300.0)
set_upper_bound(x[101], 1200.0)
set_upper_bound(x[102], 100000.0)
set_upper_bound(x[103], 100000.0)
set_upper_bound(x[104], 100000.0)
set_upper_bound(x[105], 100000.0)
set_upper_bound(x[106], 100000.0)
set_upper_bound(x[107], 100000.0)
set_upper_bound(x[108], 100000.0)
set_upper_bound(x[109], 100000.0)
set_upper_bound(x[110], 100000.0)
set_upper_bound(x[111], 100000.0)


# ----- Constraints ----- #
@constraint(m, e1, -objvar-x[90] == 0.0)
@constraint(m, e2, -x[2]-x[3]-x[4]-x[5]-x[6] == -7731.0)
@constraint(m, e3, -x[2]+x[7]-x[57]-x[62]-x[67]-x[72]-x[77] == 0.0)
@constraint(m, e4, -x[3]+x[8]-x[58]-x[63]-x[68]-x[73]-x[78] == 0.0)
@constraint(m, e5, -x[4]+x[9]-x[59]-x[64]-x[69]-x[74]-x[79] == 0.0)
@constraint(m, e6, -x[5]+x[10]-x[60]-x[65]-x[70]-x[75]-x[80] == 0.0)
@constraint(m, e7, -x[6]+x[11]-x[61]-x[66]-x[71]-x[76]-x[81] == 0.0)
@NLconstraint(m, e8, x[12]*x[7]-(x[37]*x[57]+x[41]*x[62]+x[45]*x[67]+x[49]*x[72]+x[53]*x[77])-2.5*x[2] == 0.0)
@NLconstraint(m, e9, x[13]*x[7]-(x[38]*x[57]+x[42]*x[62]+x[46]*x[67]+x[50]*x[72]+x[54]*x[77])-3.46*x[2] == 0.0)
@NLconstraint(m, e10, x[14]*x[7]-(x[39]*x[57]+x[43]*x[62]+x[47]*x[67]+x[51]*x[72]+x[55]*x[77]) == 0.0)
@NLconstraint(m, e11, x[15]*x[7]-(x[40]*x[57]+x[44]*x[62]+x[48]*x[67]+x[52]*x[72]+x[56]*x[77])-26.05*x[2] == 0.0)
@NLconstraint(m, e12, x[16]*x[8]-(x[37]*x[58]+x[41]*x[63]+x[45]*x[68]+x[49]*x[73]+x[53]*x[78])-2.5*x[3] == 0.0)
@NLconstraint(m, e13, x[17]*x[8]-(x[38]*x[58]+x[42]*x[63]+x[46]*x[68]+x[50]*x[73]+x[54]*x[78])-3.46*x[3] == 0.0)
@NLconstraint(m, e14, x[18]*x[8]-(x[39]*x[58]+x[43]*x[63]+x[47]*x[68]+x[51]*x[73]+x[55]*x[78]) == 0.0)
@NLconstraint(m, e15, x[19]*x[8]-(x[40]*x[58]+x[44]*x[63]+x[48]*x[68]+x[52]*x[73]+x[56]*x[78])-26.05*x[3] == 0.0)
@NLconstraint(m, e16, x[20]*x[9]-(x[37]*x[59]+x[41]*x[64]+x[45]*x[69]+x[49]*x[74]+x[53]*x[79])-2.5*x[4] == 0.0)
@NLconstraint(m, e17, x[21]*x[9]-(x[38]*x[59]+x[42]*x[64]+x[46]*x[69]+x[50]*x[74]+x[54]*x[79])-3.46*x[4] == 0.0)
@NLconstraint(m, e18, x[22]*x[9]-(x[39]*x[59]+x[43]*x[64]+x[47]*x[69]+x[51]*x[74]+x[55]*x[79]) == 0.0)
@NLconstraint(m, e19, x[23]*x[9]-(x[40]*x[59]+x[44]*x[64]+x[48]*x[69]+x[52]*x[74]+x[56]*x[79])-26.05*x[4] == 0.0)
@NLconstraint(m, e20, x[24]*x[10]-(x[37]*x[60]+x[41]*x[65]+x[45]*x[70]+x[49]*x[75]+x[53]*x[80])-2.5*x[5] == 0.0)
@NLconstraint(m, e21, x[25]*x[10]-(x[38]*x[60]+x[42]*x[65]+x[46]*x[70]+x[50]*x[75]+x[54]*x[80])-3.46*x[5] == 0.0)
@NLconstraint(m, e22, x[26]*x[10]-(x[39]*x[60]+x[43]*x[65]+x[47]*x[70]+x[51]*x[75]+x[55]*x[80]) == 0.0)
@NLconstraint(m, e23, x[27]*x[10]-(x[40]*x[60]+x[44]*x[65]+x[48]*x[70]+x[52]*x[75]+x[56]*x[80])-26.05*x[5] == 0.0)
@NLconstraint(m, e24, x[28]*x[11]-(x[37]*x[61]+x[41]*x[66]+x[45]*x[71]+x[49]*x[76]+x[53]*x[81])-2.5*x[6] == 0.0)
@NLconstraint(m, e25, x[29]*x[11]-(x[38]*x[61]+x[42]*x[66]+x[46]*x[71]+x[50]*x[76]+x[54]*x[81])-3.46*x[6] == 0.0)
@NLconstraint(m, e26, x[30]*x[11]-(x[39]*x[61]+x[43]*x[66]+x[47]*x[71]+x[51]*x[76]+x[55]*x[81]) == 0.0)
@NLconstraint(m, e27, x[31]*x[11]-(x[40]*x[61]+x[44]*x[66]+x[48]*x[71]+x[52]*x[76]+x[56]*x[81])-26.05*x[6] == 0.0)
@constraint(m, e28, -x[7]+x[32] == 0.0)
@constraint(m, e29, -x[8]+x[33] == 0.0)
@constraint(m, e30, -x[9]+x[34] == 0.0)
@constraint(m, e31, -x[10]+x[35] == 0.0)
@constraint(m, e32, -x[11]+x[36] == 0.0)
@NLconstraint(m, e33, x[37]*x[32]-(x[12]*x[7]+x[92]*(x[103]-x[102])) == 0.0)
@NLconstraint(m, e34, x[38]*x[32]-(x[13]*x[7]+x[92]*(0.5*x[103]-0.5*x[102])) == 0.0)
@NLconstraint(m, e35, x[39]*x[32]-(x[14]*x[7]+x[92]*(x[102]-x[103])) == 0.0)
@NLconstraint(m, e36, x[40]*x[32]-x[15]*x[7] == 0.0)
@NLconstraint(m, e37, x[41]*x[33]-(x[16]*x[8]+x[93]*(x[105]-x[104])) == 0.0)
@NLconstraint(m, e38, x[42]*x[33]-(x[17]*x[8]+x[93]*(0.5*x[105]-0.5*x[104])) == 0.0)
@NLconstraint(m, e39, x[43]*x[33]-(x[18]*x[8]+x[93]*(x[104]-x[105])) == 0.0)
@NLconstraint(m, e40, x[44]*x[33]-x[19]*x[8] == 0.0)
@NLconstraint(m, e41, x[45]*x[34]-(x[20]*x[9]+x[94]*(x[107]-x[106])) == 0.0)
@NLconstraint(m, e42, x[46]*x[34]-(x[21]*x[9]+x[94]*(0.5*x[107]-0.5*x[106])) == 0.0)
@NLconstraint(m, e43, x[47]*x[34]-(x[22]*x[9]+x[94]*(x[106]-x[107])) == 0.0)
@NLconstraint(m, e44, x[48]*x[34]-x[23]*x[9] == 0.0)
@NLconstraint(m, e45, x[49]*x[35]-(x[24]*x[10]+x[95]*(x[109]-x[108])) == 0.0)
@NLconstraint(m, e46, x[50]*x[35]-(x[25]*x[10]+x[95]*(0.5*x[109]-0.5*x[108])) == 0.0)
@NLconstraint(m, e47, x[51]*x[35]-(x[26]*x[10]+x[95]*(x[108]-x[109])) == 0.0)
@NLconstraint(m, e48, x[52]*x[35]-x[27]*x[10] == 0.0)
@NLconstraint(m, e49, x[53]*x[36]-(x[28]*x[11]+x[96]*(x[111]-x[110])) == 0.0)
@NLconstraint(m, e50, x[54]*x[36]-(x[29]*x[11]+x[96]*(0.5*x[111]-0.5*x[110])) == 0.0)
@NLconstraint(m, e51, x[55]*x[36]-(x[30]*x[11]+x[96]*(x[110]-x[111])) == 0.0)
@NLconstraint(m, e52, x[56]*x[36]-x[31]*x[11] == 0.0)
@NLconstraint(m, e53, -628400000000*exp(-15500/x[97])*x[37]^0.5*x[38]/(x[37]+x[38]+x[39]+x[40])^1.5+x[102] == 0.0)
@NLconstraint(m, e54, -628400000000*exp(-15500/x[98])*x[41]^0.5*x[42]/(x[41]+x[42]+x[43]+x[44])^1.5+x[104] == 0.0)
@NLconstraint(m, e55, -628400000000*exp(-15500/x[99])*x[45]^0.5*x[46]/(x[45]+x[46]+x[47]+x[48])^1.5+x[106] == 0.0)
@NLconstraint(m, e56, -628400000000*exp(-15500/x[100])*x[49]^0.5*x[50]/(x[49]+x[50]+x[51]+x[52])^1.5+x[108] == 0.0)
@NLconstraint(m, e57, -628400000000*exp(-15500/x[101])*x[53]^0.5*x[54]/(x[53]+x[54]+x[55]+x[56])^1.5+x[110] == 0.0)
@NLconstraint(m, e58, -2.732e16*exp(-26799.5/x[97])*x[38]^0.5*x[39]/x[37]^0.5/(x[37]+x[38]+x[39]+x[40])+x[103] == 0.0)
@NLconstraint(m, e59, -2.732e16*exp(-26799.5/x[98])*x[42]^0.5*x[43]/x[41]^0.5/(x[41]+x[42]+x[43]+x[44])+x[105] == 0.0)
@NLconstraint(m, e60, -2.732e16*exp(-26799.5/x[99])*x[46]^0.5*x[47]/x[45]^0.5/(x[45]+x[46]+x[47]+x[48])+x[107] == 0.0)
@NLconstraint(m, e61, -2.732e16*exp(-26799.5/x[100])*x[50]^0.5*x[51]/x[49]^0.5/(x[49]+x[50]+x[51]+x[52])+x[109] == 0.0)
@NLconstraint(m, e62, -2.732e16*exp(-26799.5/x[101])*x[54]^0.5*x[55]/x[53]^0.5/(x[53]+x[54]+x[55]+x[56])+x[111] == 0.0)
@constraint(m, e63, x[32]-x[57]-x[58]-x[59]-x[60]-x[61]-x[82] == 0.0)
@constraint(m, e64, x[33]-x[62]-x[63]-x[64]-x[65]-x[66]-x[83] == 0.0)
@constraint(m, e65, x[34]-x[67]-x[68]-x[69]-x[70]-x[71]-x[84] == 0.0)
@constraint(m, e66, x[35]-x[72]-x[73]-x[74]-x[75]-x[76]-x[85] == 0.0)
@constraint(m, e67, x[36]-x[77]-x[78]-x[79]-x[80]-x[81]-x[86] == 0.0)
@constraint(m, e68, -x[82]-x[83]-x[84]-x[85]-x[86]+x[87] == 0.0)
@NLconstraint(m, e69, x[87]*x[88]-(x[82]*x[37]+x[83]*x[41]+x[84]*x[45]+x[85]*x[49]+x[86]*x[53]) == 0.0)
@NLconstraint(m, e70, x[87]*x[89]-(x[82]*x[38]+x[83]*x[42]+x[84]*x[46]+x[85]*x[50]+x[86]*x[54]) == 0.0)
@NLconstraint(m, e71, x[87]*x[90]-(x[82]*x[39]+x[83]*x[43]+x[84]*x[47]+x[85]*x[51]+x[86]*x[55]) == 0.0)
@NLconstraint(m, e72, x[87]*x[91]-(x[82]*x[40]+x[83]*x[44]+x[84]*x[48]+x[85]*x[52]+x[86]*x[56]) == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
