using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, 1 <= i[i_Idx] <= 10, Int)
setupperbound(x[36], 0.0)
setupperbound(x[32], 0.0)
setupperbound(x[27], 0.0)
setupperbound(x[25], 0.0)
setupperbound(x[38], 0.0)
setupperbound(x[30], 0.0)
setupperbound(x[26], 0.0)
setupperbound(x[23], 0.0)
setupperbound(x[34], 0.0)
setupperbound(x[29], 0.0)
setupperbound(x[22], 0.0)
setupperbound(x[37], 0.0)
setupperbound(x[40], 0.0)
setupperbound(x[24], 0.0)
setupperbound(x[41], 0.0)
setupperbound(x[39], 0.0)
setupperbound(x[31], 0.0)
setupperbound(x[33], 0.0)
setupperbound(x[28], 0.0)
setupperbound(x[35], 0.0)
setlowerbound(x[11], 1.0)
setupperbound(x[11], 10.0)
setlowerbound(x[12], 1.0)
setupperbound(x[12], 10.0)
setlowerbound(x[13], 1.0)
setupperbound(x[13], 10.0)
setlowerbound(x[14], 1.0)
setupperbound(x[14], 10.0)
setlowerbound(x[15], 1.0)
setupperbound(x[15], 10.0)
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
setlowerbound(x[21], 1.0e-8)


# ----- Constraints ----- #
@constraint(m, e1, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20]+20000*x[21]-objvar == 0.0)
@constraint(m, e2, x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42] <= 0.0)
@NLconstraint(m, e3, -0.32*log(i[1])-x[22] <= 0.0)
@NLconstraint(m, e4, -0.19*log(i[2])-x[23] <= 0.0)
@NLconstraint(m, e5, -0.405*log(i[3])-x[24] <= 0.0)
@NLconstraint(m, e6, -0.265*log(i[4])-x[25] <= 0.0)
@NLconstraint(m, e7, -0.175*log(i[5])-x[26] <= 0.0)
@NLconstraint(m, e8, -0.44*log(i[6])-x[27] <= 0.0)
@NLconstraint(m, e9, -0.275*log(i[7])-x[28] <= 0.0)
@NLconstraint(m, e10, -0.47*log(i[8])-x[29] <= 0.0)
@NLconstraint(m, e11, -0.31*log(i[9])-x[30] <= 0.0)
@NLconstraint(m, e12, -0.295*log(i[10])-x[31] <= 0.0)
@NLconstraint(m, e13, -0.105*log(x[11])-x[32] <= 0.0)
@NLconstraint(m, e14, -0.15*log(x[12])-x[33] <= 0.0)
@NLconstraint(m, e15, -0.235*log(x[13])-x[34] <= 0.0)
@NLconstraint(m, e16, -0.115*log(x[14])-x[35] <= 0.0)
@NLconstraint(m, e17, -0.42*log(x[15])-x[36] <= 0.0)
@NLconstraint(m, e18, -0.095*log(x[16])-x[37] <= 0.0)
@NLconstraint(m, e19, -0.115*log(x[17])-x[38] <= 0.0)
@NLconstraint(m, e20, -0.085*log(x[18])-x[39] <= 0.0)
@NLconstraint(m, e21, -0.115*log(x[19])-x[40] <= 0.0)
@NLconstraint(m, e22, -0.022*log(x[20])-x[41] <= 0.0)
@NLconstraint(m, e23, -log(x[21])-x[42] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
