using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, i[i_Idx])
setupperbound(x[38], 0.0)
setcategory(i[5], :Int)
setlowerbound(i[5], 0.0)
setupperbound(i[5], 100.0)
setcategory(i[3], :Int)
setlowerbound(i[3], 0.0)
setupperbound(i[3], 100.0)
setupperbound(x[42], 0.0)
setupperbound(x[56], 0.0)
setupperbound(x[59], 0.0)
setcategory(i[14], :Int)
setlowerbound(i[14], 0.0)
setupperbound(i[14], 100.0)
setcategory(i[15], :Int)
setlowerbound(i[15], 0.0)
setupperbound(i[15], 100.0)
setupperbound(x[43], 0.0)
setupperbound(x[36], 0.0)
setupperbound(x[54], 0.0)
setupperbound(x[32], 0.0)
setupperbound(x[58], 0.0)
setupperbound(x[53], 0.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setcategory(i[13], :Int)
setlowerbound(i[13], 0.0)
setupperbound(i[13], 100.0)
setcategory(i[6], :Int)
setlowerbound(i[6], 0.0)
setupperbound(i[6], 100.0)
setupperbound(x[37], 0.0)
setupperbound(x[57], 0.0)
setupperbound(x[55], 0.0)
setupperbound(x[41], 0.0)
setupperbound(x[52], 0.0)
setupperbound(x[49], 0.0)
setcategory(i[11], :Int)
setlowerbound(i[11], 0.0)
setupperbound(i[11], 100.0)
setcategory(i[1], :Int)
setlowerbound(i[1], 0.0)
setupperbound(i[1], 100.0)
setcategory(i[8], :Int)
setlowerbound(i[8], 0.0)
setupperbound(i[8], 100.0)
setupperbound(x[45], 0.0)
setupperbound(x[40], 0.0)
setcategory(i[4], :Int)
setlowerbound(i[4], 0.0)
setupperbound(i[4], 100.0)
setupperbound(x[44], 0.0)
setcategory(i[9], :Int)
setlowerbound(i[9], 0.0)
setupperbound(i[9], 100.0)
setupperbound(x[61], 0.0)
setupperbound(x[50], 0.0)
setupperbound(x[33], 0.0)
setupperbound(x[47], 0.0)
setcategory(i[7], :Int)
setlowerbound(i[7], 0.0)
setupperbound(i[7], 100.0)
setupperbound(x[35], 0.0)
setcategory(i[12], :Int)
setlowerbound(i[12], 0.0)
setupperbound(i[12], 100.0)
setupperbound(x[60], 0.0)
setupperbound(x[34], 0.0)
setupperbound(x[46], 0.0)
setupperbound(x[51], 0.0)
setupperbound(x[48], 0.0)
setcategory(i[10], :Int)
setlowerbound(i[10], 0.0)
setupperbound(i[10], 100.0)
setupperbound(x[39], 0.0)
setlowerbound(i[1], 1.0)
setupperbound(i[1], 10.0)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 10.0)
setlowerbound(i[3], 1.0)
setupperbound(i[3], 10.0)
setlowerbound(i[4], 1.0)
setupperbound(i[4], 10.0)
setlowerbound(i[5], 1.0)
setupperbound(i[5], 10.0)
setlowerbound(i[6], 1.0)
setupperbound(i[6], 10.0)
setlowerbound(i[7], 1.0)
setupperbound(i[7], 10.0)
setlowerbound(i[8], 1.0)
setupperbound(i[8], 10.0)
setlowerbound(i[9], 1.0)
setupperbound(i[9], 10.0)
setlowerbound(i[10], 1.0)
setupperbound(i[10], 10.0)
setlowerbound(i[11], 1.0)
setupperbound(i[11], 10.0)
setlowerbound(i[12], 1.0)
setupperbound(i[12], 10.0)
setlowerbound(i[13], 1.0)
setupperbound(i[13], 10.0)
setlowerbound(i[14], 1.0)
setupperbound(i[14], 10.0)
setlowerbound(i[15], 1.0)
setupperbound(i[15], 10.0)
setlowerbound(x[16], 1.0)
setupperbound(x[16], 10.0)
setlowerbound(x[17], 1.0)
setupperbound(x[17], 10.0)
setlowerbound(x[18], 1.0)
setupperbound(x[18], 10.0)
setlowerbound(x[19], 1.0)
setupperbound(x[19], 10.0)
setlowerbound(x[20], 1.0)
setupperbound(x[20], 10.0)
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
setlowerbound(x[63], 1.0e-10)


# ----- Constraints ----- #
@constraint(m, e1, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+i[11]+i[12]+i[13]+i[14]+i[15]+x[16]+x[17]+x[18]+x[19]+x[20]+x[21]+x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]-objvar+30000*x[63] == 0.0)
@constraint(m, e2, x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61]+x[62] <= 0.0)
@NLconstraint(m, e3, -0.48*log(i[1])-x[32] <= 0.0)
@NLconstraint(m, e4, -0.275*log(i[2])-x[33] <= 0.0)
@NLconstraint(m, e5, -0.26*log(i[3])-x[34] <= 0.0)
@NLconstraint(m, e6, -0.215*log(i[4])-x[35] <= 0.0)
@NLconstraint(m, e7, -0.245*log(i[5])-x[36] <= 0.0)
@NLconstraint(m, e8, -0.31*log(i[6])-x[37] <= 0.0)
@NLconstraint(m, e9, -0.34*log(i[7])-x[38] <= 0.0)
@NLconstraint(m, e10, -0.2*log(i[8])-x[39] <= 0.0)
@NLconstraint(m, e11, -0.185*log(i[9])-x[40] <= 0.0)
@NLconstraint(m, e12, -0.495*log(i[10])-x[41] <= 0.0)
@NLconstraint(m, e13, -0.02*log(i[11])-x[42] <= 0.0)
@NLconstraint(m, e14, -0.445*log(i[12])-x[43] <= 0.0)
@NLconstraint(m, e15, -0.455*log(i[13])-x[44] <= 0.0)
@NLconstraint(m, e16, -0.4*log(i[14])-x[45] <= 0.0)
@NLconstraint(m, e17, -0.05*log(i[15])-x[46] <= 0.0)
@NLconstraint(m, e18, -0.13*log(x[16])-x[47] <= 0.0)
@NLconstraint(m, e19, -0.17*log(x[17])-x[48] <= 0.0)
@NLconstraint(m, e20, -0.34*log(x[18])-x[49] <= 0.0)
@NLconstraint(m, e21, -0.07*log(x[19])-x[50] <= 0.0)
@NLconstraint(m, e22, -0.36*log(x[20])-x[51] <= 0.0)
@NLconstraint(m, e23, -0.05*log(x[21])-x[52] <= 0.0)
@NLconstraint(m, e24, -0.325*log(x[22])-x[53] <= 0.0)
@NLconstraint(m, e25, -0.245*log(x[23])-x[54] <= 0.0)
@NLconstraint(m, e26, -0.39*log(x[24])-x[55] <= 0.0)
@NLconstraint(m, e27, -0.36*log(x[25])-x[56] <= 0.0)
@NLconstraint(m, e28, -0.45*log(x[26])-x[57] <= 0.0)
@NLconstraint(m, e29, -0.445*log(x[27])-x[58] <= 0.0)
@NLconstraint(m, e30, -0.165*log(x[28])-x[59] <= 0.0)
@NLconstraint(m, e31, -0.35*log(x[29])-x[60] <= 0.0)
@NLconstraint(m, e32, -0.1*log(x[30])-x[61] <= 0.0)
@NLconstraint(m, e33, -log(x[63])-x[62] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 