using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111]
@variable(m, x[x_Idx])
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setupperbound(x[2], 1000.0)
setupperbound(x[3], 1000.0)
setupperbound(x[4], 1000.0)
setupperbound(x[5], 1000.0)
setupperbound(x[6], 1000.0)
setupperbound(x[7], 1000.0)
setupperbound(x[8], 1000.0)
setupperbound(x[9], 1000.0)
setupperbound(x[10], 1000.0)
setupperbound(x[11], 1000.0)
setupperbound(x[12], 10.0)
setupperbound(x[13], 10.0)
setupperbound(x[14], 10.0)
setupperbound(x[15], 10.0)
setupperbound(x[16], 10.0)
setupperbound(x[17], 10.0)
setupperbound(x[18], 10.0)
setupperbound(x[19], 10.0)
setupperbound(x[20], 10.0)
setupperbound(x[21], 10.0)
setupperbound(x[22], 10.0)
setupperbound(x[23], 10.0)
setupperbound(x[24], 10.0)
setupperbound(x[25], 10.0)
setupperbound(x[26], 10.0)
setupperbound(x[27], 10.0)
setupperbound(x[28], 10.0)
setupperbound(x[29], 10.0)
setupperbound(x[30], 10.0)
setupperbound(x[31], 10.0)
setupperbound(x[32], 1000.0)
setupperbound(x[33], 1000.0)
setupperbound(x[34], 1000.0)
setupperbound(x[35], 1000.0)
setupperbound(x[36], 1000.0)
setupperbound(x[37], 10.0)
setupperbound(x[38], 10.0)
setupperbound(x[39], 10.0)
setupperbound(x[40], 10.0)
setupperbound(x[41], 10.0)
setupperbound(x[42], 10.0)
setupperbound(x[43], 10.0)
setupperbound(x[44], 10.0)
setupperbound(x[45], 10.0)
setupperbound(x[46], 10.0)
setupperbound(x[47], 10.0)
setupperbound(x[48], 10.0)
setupperbound(x[49], 10.0)
setupperbound(x[50], 10.0)
setupperbound(x[51], 10.0)
setupperbound(x[52], 10.0)
setupperbound(x[53], 10.0)
setupperbound(x[54], 10.0)
setupperbound(x[55], 10.0)
setupperbound(x[56], 10.0)
setupperbound(x[57], 1000.0)
setupperbound(x[58], 1000.0)
setupperbound(x[59], 1000.0)
setupperbound(x[60], 1000.0)
setupperbound(x[61], 1000.0)
setupperbound(x[62], 1000.0)
setupperbound(x[63], 1000.0)
setupperbound(x[64], 1000.0)
setupperbound(x[65], 1000.0)
setupperbound(x[66], 1000.0)
setupperbound(x[67], 1000.0)
setupperbound(x[68], 1000.0)
setupperbound(x[69], 1000.0)
setupperbound(x[70], 1000.0)
setupperbound(x[71], 1000.0)
setupperbound(x[72], 1000.0)
setupperbound(x[73], 1000.0)
setupperbound(x[74], 1000.0)
setupperbound(x[75], 1000.0)
setupperbound(x[76], 1000.0)
setupperbound(x[77], 1000.0)
setupperbound(x[78], 1000.0)
setupperbound(x[79], 1000.0)
setupperbound(x[80], 1000.0)
setupperbound(x[81], 1000.0)
setupperbound(x[82], 1000.0)
setupperbound(x[83], 1000.0)
setupperbound(x[84], 1000.0)
setupperbound(x[85], 1000.0)
setupperbound(x[86], 1000.0)
setupperbound(x[87], 1000.0)
setupperbound(x[88], 10.0)
setupperbound(x[89], 10.0)
setupperbound(x[90], 10.0)
setupperbound(x[91], 10.0)
setupperbound(x[92], 10000.0)
setupperbound(x[93], 10000.0)
setupperbound(x[94], 10000.0)
setupperbound(x[95], 10000.0)
setupperbound(x[96], 10000.0)
setupperbound(x[97], 10000.0)
setupperbound(x[98], 10000.0)
setupperbound(x[99], 10000.0)
setupperbound(x[100], 10000.0)
setupperbound(x[101], 10000.0)
setupperbound(x[102], 10000.0)
setupperbound(x[103], 10000.0)
setupperbound(x[104], 10000.0)
setupperbound(x[105], 10000.0)
setupperbound(x[106], 10000.0)
setupperbound(x[107], 10000.0)
setupperbound(x[108], 10000.0)
setupperbound(x[109], 10000.0)
setupperbound(x[110], 10000.0)
setupperbound(x[111], 10000.0)


# ----- Constraints ----- #
@constraint(m, e1, -objvar-x[89] == 0.0)
@constraint(m, e2, -x[2]-x[3]-x[4]-x[5]-x[6] == -100.0)
@constraint(m, e3, -x[2]+x[7]-x[57]-x[62]-x[67]-x[72]-x[77] == 0.0)
@constraint(m, e4, -x[3]+x[8]-x[58]-x[63]-x[68]-x[73]-x[78] == 0.0)
@constraint(m, e5, -x[4]+x[9]-x[59]-x[64]-x[69]-x[74]-x[79] == 0.0)
@constraint(m, e6, -x[5]+x[10]-x[60]-x[65]-x[70]-x[75]-x[80] == 0.0)
@constraint(m, e7, -x[6]+x[11]-x[61]-x[66]-x[71]-x[76]-x[81] == 0.0)
@NLconstraint(m, e8, x[12]*x[7]-(x[37]*x[57]+x[41]*x[62]+x[45]*x[67]+x[49]*x[72]+x[53]*x[77])-x[2] == 0.0)
@NLconstraint(m, e9, x[13]*x[7]-(x[38]*x[57]+x[42]*x[62]+x[46]*x[67]+x[50]*x[72]+x[54]*x[77]) == 0.0)
@NLconstraint(m, e10, x[14]*x[7]-(x[39]*x[57]+x[43]*x[62]+x[47]*x[67]+x[51]*x[72]+x[55]*x[77]) == 0.0)
@NLconstraint(m, e11, x[15]*x[7]-(x[40]*x[57]+x[44]*x[62]+x[48]*x[67]+x[52]*x[72]+x[56]*x[77]) == 0.0)
@NLconstraint(m, e12, x[16]*x[8]-(x[37]*x[58]+x[41]*x[63]+x[45]*x[68]+x[49]*x[73]+x[53]*x[78])-x[3] == 0.0)
@NLconstraint(m, e13, x[17]*x[8]-(x[38]*x[58]+x[42]*x[63]+x[46]*x[68]+x[50]*x[73]+x[54]*x[78]) == 0.0)
@NLconstraint(m, e14, x[18]*x[8]-(x[39]*x[58]+x[43]*x[63]+x[47]*x[68]+x[51]*x[73]+x[55]*x[78]) == 0.0)
@NLconstraint(m, e15, x[19]*x[8]-(x[40]*x[58]+x[44]*x[63]+x[48]*x[68]+x[52]*x[73]+x[56]*x[78]) == 0.0)
@NLconstraint(m, e16, x[20]*x[9]-(x[37]*x[59]+x[41]*x[64]+x[45]*x[69]+x[49]*x[74]+x[53]*x[79])-x[4] == 0.0)
@NLconstraint(m, e17, x[21]*x[9]-(x[38]*x[59]+x[42]*x[64]+x[46]*x[69]+x[50]*x[74]+x[54]*x[79]) == 0.0)
@NLconstraint(m, e18, x[22]*x[9]-(x[39]*x[59]+x[43]*x[64]+x[47]*x[69]+x[51]*x[74]+x[55]*x[79]) == 0.0)
@NLconstraint(m, e19, x[23]*x[9]-(x[40]*x[59]+x[44]*x[64]+x[48]*x[69]+x[52]*x[74]+x[56]*x[79]) == 0.0)
@NLconstraint(m, e20, x[24]*x[10]-(x[37]*x[60]+x[41]*x[65]+x[45]*x[70]+x[49]*x[75]+x[53]*x[80])-x[5] == 0.0)
@NLconstraint(m, e21, x[25]*x[10]-(x[38]*x[60]+x[42]*x[65]+x[46]*x[70]+x[50]*x[75]+x[54]*x[80]) == 0.0)
@NLconstraint(m, e22, x[26]*x[10]-(x[39]*x[60]+x[43]*x[65]+x[47]*x[70]+x[51]*x[75]+x[55]*x[80]) == 0.0)
@NLconstraint(m, e23, x[27]*x[10]-(x[40]*x[60]+x[44]*x[65]+x[48]*x[70]+x[52]*x[75]+x[56]*x[80]) == 0.0)
@NLconstraint(m, e24, x[28]*x[11]-(x[37]*x[61]+x[41]*x[66]+x[45]*x[71]+x[49]*x[76]+x[53]*x[81])-x[6] == 0.0)
@NLconstraint(m, e25, x[29]*x[11]-(x[38]*x[61]+x[42]*x[66]+x[46]*x[71]+x[50]*x[76]+x[54]*x[81]) == 0.0)
@NLconstraint(m, e26, x[30]*x[11]-(x[39]*x[61]+x[43]*x[66]+x[47]*x[71]+x[51]*x[76]+x[55]*x[81]) == 0.0)
@NLconstraint(m, e27, x[31]*x[11]-(x[40]*x[61]+x[44]*x[66]+x[48]*x[71]+x[52]*x[76]+x[56]*x[81]) == 0.0)
@constraint(m, e28, -x[7]+x[32] == 0.0)
@constraint(m, e29, -x[8]+x[33] == 0.0)
@constraint(m, e30, -x[9]+x[34] == 0.0)
@constraint(m, e31, -x[10]+x[35] == 0.0)
@constraint(m, e32, -x[11]+x[36] == 0.0)
@NLconstraint(m, e33, x[37]*x[32]-(x[12]*x[7]+x[92]*(-x[97]-2*x[99])) == 0.0)
@NLconstraint(m, e34, x[38]*x[32]-(x[13]*x[7]+x[92]*(x[97]-x[98])) == 0.0)
@NLconstraint(m, e35, x[39]*x[32]-(x[14]*x[7]+x[92]*x[98]) == 0.0)
@NLconstraint(m, e36, x[40]*x[32]-(x[15]*x[7]+x[92]*x[99]) == 0.0)
@NLconstraint(m, e37, x[41]*x[33]-(x[16]*x[8]+x[93]*(-x[100]-2*x[102])) == 0.0)
@NLconstraint(m, e38, x[42]*x[33]-(x[17]*x[8]+x[93]*(x[100]-x[101])) == 0.0)
@NLconstraint(m, e39, x[43]*x[33]-(x[18]*x[8]+x[93]*x[101]) == 0.0)
@NLconstraint(m, e40, x[44]*x[33]-(x[19]*x[8]+x[93]*x[102]) == 0.0)
@NLconstraint(m, e41, x[45]*x[34]-(x[20]*x[9]+x[94]*(-x[103]-2*x[105])) == 0.0)
@NLconstraint(m, e42, x[46]*x[34]-(x[21]*x[9]+x[94]*(x[103]-x[104])) == 0.0)
@NLconstraint(m, e43, x[47]*x[34]-(x[22]*x[9]+x[94]*x[104]) == 0.0)
@NLconstraint(m, e44, x[48]*x[34]-(x[23]*x[9]+x[94]*x[105]) == 0.0)
@NLconstraint(m, e45, x[49]*x[35]-(x[24]*x[10]+x[95]*(-x[106]-2*x[108])) == 0.0)
@NLconstraint(m, e46, x[50]*x[35]-(x[25]*x[10]+x[95]*(x[106]-x[107])) == 0.0)
@NLconstraint(m, e47, x[51]*x[35]-(x[26]*x[10]+x[95]*x[107]) == 0.0)
@NLconstraint(m, e48, x[52]*x[35]-(x[27]*x[10]+x[95]*x[108]) == 0.0)
@NLconstraint(m, e49, x[53]*x[36]-(x[28]*x[11]+x[96]*(-x[109]-2*x[111])) == 0.0)
@NLconstraint(m, e50, x[54]*x[36]-(x[29]*x[11]+x[96]*(x[109]-x[110])) == 0.0)
@NLconstraint(m, e51, x[55]*x[36]-(x[30]*x[11]+x[96]*x[110]) == 0.0)
@NLconstraint(m, e52, x[56]*x[36]-(x[31]*x[11]+x[96]*x[111]) == 0.0)
@constraint(m, e53, -x[37]+x[97] == 0.0)
@constraint(m, e54, -x[41]+x[100] == 0.0)
@constraint(m, e55, -x[45]+x[103] == 0.0)
@constraint(m, e56, -x[49]+x[106] == 0.0)
@constraint(m, e57, -x[53]+x[109] == 0.0)
@constraint(m, e58, -2*x[38]+x[98] == 0.0)
@constraint(m, e59, -2*x[42]+x[101] == 0.0)
@constraint(m, e60, -2*x[46]+x[104] == 0.0)
@constraint(m, e61, -2*x[50]+x[107] == 0.0)
@constraint(m, e62, -2*x[54]+x[110] == 0.0)
@NLconstraint(m, e63, -10*x[37]*x[37]+x[99] == 0.0)
@NLconstraint(m, e64, -10*x[41]*x[41]+x[102] == 0.0)
@NLconstraint(m, e65, -10*x[45]*x[45]+x[105] == 0.0)
@NLconstraint(m, e66, -10*x[49]*x[49]+x[108] == 0.0)
@NLconstraint(m, e67, -10*x[53]*x[53]+x[111] == 0.0)
@constraint(m, e68, x[32]-x[57]-x[58]-x[59]-x[60]-x[61]-x[82] == 0.0)
@constraint(m, e69, x[33]-x[62]-x[63]-x[64]-x[65]-x[66]-x[83] == 0.0)
@constraint(m, e70, x[34]-x[67]-x[68]-x[69]-x[70]-x[71]-x[84] == 0.0)
@constraint(m, e71, x[35]-x[72]-x[73]-x[74]-x[75]-x[76]-x[85] == 0.0)
@constraint(m, e72, x[36]-x[77]-x[78]-x[79]-x[80]-x[81]-x[86] == 0.0)
@constraint(m, e73, -x[82]-x[83]-x[84]-x[85]-x[86]+x[87] == 0.0)
@NLconstraint(m, e74, x[87]*x[88]-(x[82]*x[37]+x[83]*x[41]+x[84]*x[45]+x[85]*x[49]+x[86]*x[53]) == 0.0)
@NLconstraint(m, e75, x[87]*x[89]-(x[82]*x[38]+x[83]*x[42]+x[84]*x[46]+x[85]*x[50]+x[86]*x[54]) == 0.0)
@NLconstraint(m, e76, x[87]*x[90]-(x[82]*x[39]+x[83]*x[43]+x[84]*x[47]+x[85]*x[51]+x[86]*x[55]) == 0.0)
@NLconstraint(m, e77, x[87]*x[91]-(x[82]*x[40]+x[83]*x[44]+x[84]*x[48]+x[85]*x[52]+x[86]*x[56]) == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
