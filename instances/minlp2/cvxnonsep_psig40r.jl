using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 1 <= i[i_Idx] <= 10, Int)
setlowerbound(x[21], 1.0)
setupperbound(x[21], 10.0)
setlowerbound(x[22], 1.0)
setupperbound(x[22], 10.0)
setlowerbound(x[23], 1.0)
setupperbound(x[23], 10.0)
setlowerbound(x[24], 1.0)
setupperbound(x[24], 10.0)
setlowerbound(x[25], 1.0)
setupperbound(x[25], 10.0)
setlowerbound(x[26], 1.0)
setupperbound(x[26], 10.0)
setlowerbound(x[27], 1.0)
setupperbound(x[27], 10.0)
setlowerbound(x[28], 1.0)
setupperbound(x[28], 10.0)
setlowerbound(x[29], 1.0)
setupperbound(x[29], 10.0)
setlowerbound(x[30], 1.0)
setupperbound(x[30], 10.0)
setlowerbound(x[31], 1.0)
setupperbound(x[31], 10.0)
setlowerbound(x[32], 1.0)
setupperbound(x[32], 10.0)
setlowerbound(x[33], 1.0)
setupperbound(x[33], 10.0)
setlowerbound(x[34], 1.0)
setupperbound(x[34], 10.0)
setlowerbound(x[35], 1.0)
setupperbound(x[35], 10.0)
setlowerbound(x[36], 1.0)
setupperbound(x[36], 10.0)
setlowerbound(x[37], 1.0)
setupperbound(x[37], 10.0)
setlowerbound(x[38], 1.0)
setupperbound(x[38], 10.0)
setlowerbound(x[39], 1.0)
setupperbound(x[39], 10.0)
setlowerbound(x[40], 1.0)
setupperbound(x[40], 10.0)
setlowerbound(x[83], 1.0e-9)


# ----- Constraints ----- #
@constraint(m, e1, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+i[11]+i[12]+i[13]+i[14]+i[15]+i[16]+i[17]+i[18]+i[19]+i[20]+x[21]+x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]-objvar+40000*x[83] == 0.0)
@constraint(m, e2, x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61]+x[62]+x[63]+x[64]+x[65]+x[66]+x[67]+x[68]+x[69]+x[70]+x[71]+x[72]+x[73]+x[74]+x[75]+x[76]+x[77]+x[78]+x[79]+x[80]+x[81]+x[82] <= 0.0)
@NLconstraint(m, e3, -0.015*log(i[1])-x[42] <= 0.0)
@NLconstraint(m, e4, -0.37*log(i[2])-x[43] <= 0.0)
@NLconstraint(m, e5, -0.25*log(i[3])-x[44] <= 0.0)
@NLconstraint(m, e6, -0.24*log(i[4])-x[45] <= 0.0)
@NLconstraint(m, e7, -0.45*log(i[5])-x[46] <= 0.0)
@NLconstraint(m, e8, -0.305*log(i[6])-x[47] <= 0.0)
@NLconstraint(m, e9, -0.31*log(i[7])-x[48] <= 0.0)
@NLconstraint(m, e10, -0.43*log(i[8])-x[49] <= 0.0)
@NLconstraint(m, e11, -0.405*log(i[9])-x[50] <= 0.0)
@NLconstraint(m, e12, -0.29*log(i[10])-x[51] <= 0.0)
@NLconstraint(m, e13, -0.09*log(i[11])-x[52] <= 0.0)
@NLconstraint(m, e14, -0.12*log(i[12])-x[53] <= 0.0)
@NLconstraint(m, e15, -0.445*log(i[13])-x[54] <= 0.0)
@NLconstraint(m, e16, -0.015*log(i[14])-x[55] <= 0.0)
@NLconstraint(m, e17, -0.245*log(i[15])-x[56] <= 0.0)
@NLconstraint(m, e18, -0.085*log(i[16])-x[57] <= 0.0)
@NLconstraint(m, e19, -0.49*log(i[17])-x[58] <= 0.0)
@NLconstraint(m, e20, -0.355*log(i[18])-x[59] <= 0.0)
@NLconstraint(m, e21, -0.25*log(i[19])-x[60] <= 0.0)
@NLconstraint(m, e22, -0.235*log(i[20])-x[61] <= 0.0)
@NLconstraint(m, e23, -0.03*log(x[21])-x[62] <= 0.0)
@NLconstraint(m, e24, -0.34*log(x[22])-x[63] <= 0.0)
@NLconstraint(m, e25, -0.02*log(x[23])-x[64] <= 0.0)
@NLconstraint(m, e26, -0.035*log(x[24])-x[65] <= 0.0)
@NLconstraint(m, e27, -0.26*log(x[25])-x[66] <= 0.0)
@NLconstraint(m, e28, -0.05*log(x[26])-x[67] <= 0.0)
@NLconstraint(m, e29, -0.41*log(x[27])-x[68] <= 0.0)
@NLconstraint(m, e30, -0.41*log(x[28])-x[69] <= 0.0)
@NLconstraint(m, e31, -0.36*log(x[29])-x[70] <= 0.0)
@NLconstraint(m, e32, -0.075*log(x[30])-x[71] <= 0.0)
@NLconstraint(m, e33, -0.36*log(x[31])-x[72] <= 0.0)
@NLconstraint(m, e34, -0.33*log(x[32])-x[73] <= 0.0)
@NLconstraint(m, e35, -0.26*log(x[33])-x[74] <= 0.0)
@NLconstraint(m, e36, -0.485*log(x[34])-x[75] <= 0.0)
@NLconstraint(m, e37, -0.4*log(x[35])-x[76] <= 0.0)
@NLconstraint(m, e38, -0.225*log(x[36])-x[77] <= 0.0)
@NLconstraint(m, e39, -0.215*log(x[37])-x[78] <= 0.0)
@NLconstraint(m, e40, -0.415*log(x[38])-x[79] <= 0.0)
@NLconstraint(m, e41, -0.04*log(x[39])-x[80] <= 0.0)
@NLconstraint(m, e42, -0.065*log(x[40])-x[81] <= 0.0)
@NLconstraint(m, e43, -log(x[83])-x[82] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
