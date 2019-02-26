using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[1], 0.25)
setupperbound(x[1], 7.5)
setupperbound(x[2], 3.0)
setupperbound(x[3], 2.5)
setupperbound(x[4], 3.90512483795333)
setupperbound(x[5], 3.90512483795333)
setupperbound(x[6], 3.90512483795333)
setupperbound(x[7], 3.90512483795333)
setlowerbound(x[8], -3.90512483795333)
setupperbound(x[8], 3.90512483795333)
setlowerbound(x[9], -3.90512483795333)
setupperbound(x[9], 3.90512483795333)
setlowerbound(x[10], -3.90512483795333)
setupperbound(x[10], 3.90512483795333)
setlowerbound(x[11], -3.90512483795333)
setupperbound(x[11], 3.90512483795333)
setlowerbound(x[12], -3.90512483795333)
setupperbound(x[12], 3.90512483795333)
setlowerbound(x[13], -1.0)
setupperbound(x[13], 1.0)
setlowerbound(x[14], -1.0)
setupperbound(x[14], 1.0)
setlowerbound(x[15], -1.0)
setupperbound(x[15], 1.0)
setlowerbound(x[16], -1.0)
setupperbound(x[16], 1.0)
setlowerbound(x[17], -3.90512483795333)
setupperbound(x[17], 3.90512483795333)
setlowerbound(x[18], -3.90512483795333)
setupperbound(x[18], 3.90512483795333)
setlowerbound(x[19], -3.90512483795333)
setupperbound(x[19], 3.90512483795333)
setlowerbound(x[20], -3.90512483795333)
setupperbound(x[20], 3.90512483795333)
setlowerbound(x[21], -3.90512483795333)
setupperbound(x[21], 3.90512483795333)
setlowerbound(x[22], -3.90512483795333)
setupperbound(x[22], 3.90512483795333)
setlowerbound(x[23], -3.90512483795333)
setupperbound(x[23], 3.90512483795333)
setlowerbound(x[24], -3.90512483795333)
setupperbound(x[24], 3.90512483795333)
setlowerbound(x[25], -3.90512483795333)
setupperbound(x[25], 3.90512483795333)
setlowerbound(x[26], -3.90512483795333)
setupperbound(x[26], 3.90512483795333)
setlowerbound(x[27], -1.0)
setupperbound(x[27], 1.0)
setlowerbound(x[28], -1.5)
setupperbound(x[28], 1.5)
setlowerbound(x[29], -1.0)
setupperbound(x[29], 1.0)
setlowerbound(x[30], -1.5)
setupperbound(x[30], 1.5)
setlowerbound(x[31], -1.0)
setupperbound(x[31], 1.0)
setlowerbound(x[32], -1.5)
setupperbound(x[32], 1.5)
setlowerbound(x[33], -1.0)
setupperbound(x[33], 1.0)
setlowerbound(x[34], -1.5)
setupperbound(x[34], 1.5)
setlowerbound(x[35], 0.5)
setupperbound(x[35], 2.5)
setlowerbound(x[36], 0.5)
setupperbound(x[36], 2.0)
setupperbound(x[37], 3.0)
setupperbound(x[38], 2.5)
setupperbound(x[39], 3.0)
setupperbound(x[40], 2.5)
setupperbound(x[41], 3.0)
setupperbound(x[42], 2.5)
setupperbound(x[43], 3.0)
setupperbound(x[44], 2.5)
setupperbound(x[45], 3.0)
setupperbound(x[46], 2.5)
setupperbound(x[47], 3.0)
setupperbound(x[48], 2.5)
setlowerbound(objvar, 0.0)
setupperbound(objvar, 7.5)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -2.28539816339745)
@NLconstraint(m, e2, -x[37]*x[38]+x[1] == 0.0)
@constraint(m, e3, x[35]-x[37] <= -0.5)
@constraint(m, e4, x[36]-x[38] <= -0.5)
@constraint(m, e5, -x[37]+x[39] <= 0.0)
@constraint(m, e6, -x[38]+x[40] <= 0.0)
@constraint(m, e7, -x[37]+x[41] <= 0.0)
@constraint(m, e8, -x[38]+x[42] <= 0.0)
@constraint(m, e9, -x[37]+x[43] <= 0.0)
@constraint(m, e10, -x[38]+x[44] <= 0.0)
@constraint(m, e11, -x[37]+x[45] <= 0.0)
@constraint(m, e12, -x[38]+x[46] <= 0.0)
@constraint(m, e13, x[27]+x[39]-x[41] == 0.0)
@constraint(m, e14, x[28]+x[40]-x[42] == 0.0)
@constraint(m, e15, x[29]+x[41]-x[43] == 0.0)
@constraint(m, e16, x[30]+x[42]-x[44] == 0.0)
@constraint(m, e17, x[31]+x[43]-x[45] == 0.0)
@constraint(m, e18, x[32]+x[44]-x[46] == 0.0)
@constraint(m, e19, x[33]-x[39]+2*x[45]-x[47] == 0.0)
@constraint(m, e20, x[34]-x[40]+2*x[46]-x[48] == 0.0)
@NLconstraint(m, e21, x[27]*x[29]+x[28]*x[30] == 0.0)
@constraint(m, e22, x[27]+x[31] == 0.0)
@constraint(m, e23, x[28]+x[32] == 0.0)
@constraint(m, e24, x[29]+x[33] == 0.0)
@constraint(m, e25, x[30]+x[34] == 0.0)
@NLconstraint(m, e26, x[27]*x[27]+x[28]*x[28] == 2.25)
@NLconstraint(m, e27, x[29]*x[29]+x[30]*x[30] == 1.0)
@NLconstraint(m, e28, x[13]*x[13]+x[14]*x[14] == 1.0)
@constraint(m, e29, -x[14]+x[15] == 0.0)
@constraint(m, e30, x[13]+x[16] == 0.0)
@NLconstraint(m, e31, x[13]*x[8]+x[2]+x[17]-x[39] == 0.0)
@NLconstraint(m, e32, x[14]*x[8]+x[3]+x[18]-x[40] == 0.0)
@NLconstraint(m, e33, x[13]*x[9]+x[2]+x[19]-x[41] == 0.0)
@NLconstraint(m, e34, x[14]*x[9]+x[3]+x[20]-x[42] == 0.0)
@NLconstraint(m, e35, x[13]*x[10]+x[2]+x[21]-x[43] == 0.0)
@NLconstraint(m, e36, x[14]*x[10]+x[3]+x[22]-x[44] == 0.0)
@NLconstraint(m, e37, x[13]*x[11]+x[2]+x[23]-x[45] == 0.0)
@NLconstraint(m, e38, x[14]*x[11]+x[3]+x[24]-x[46] == 0.0)
@NLconstraint(m, e39, x[13]*x[12]+x[2]+x[25]-x[35] == 0.0)
@NLconstraint(m, e40, x[14]*x[12]+x[3]+x[26]-x[36] == 0.0)
@NLconstraint(m, e41, -x[4]*x[15]+x[17] == 0.0)
@NLconstraint(m, e42, -x[4]*x[16]+x[18] == 0.0)
@NLconstraint(m, e43, -x[5]*x[15]+x[19] == 0.0)
@NLconstraint(m, e44, -x[5]*x[16]+x[20] == 0.0)
@NLconstraint(m, e45, -x[6]*x[15]+x[21] == 0.0)
@NLconstraint(m, e46, -x[6]*x[16]+x[22] == 0.0)
@NLconstraint(m, e47, -x[7]*x[15]+x[23] == 0.0)
@NLconstraint(m, e48, -x[7]*x[16]+x[24] == 0.0)
@constraint(m, e49, 0.5*x[15]+x[25] == 0.0)
@constraint(m, e50, 0.5*x[16]+x[26] == 0.0)
@constraint(m, e51, x[35] <= 1.5)
@constraint(m, e52, x[36] <= 1.25)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
