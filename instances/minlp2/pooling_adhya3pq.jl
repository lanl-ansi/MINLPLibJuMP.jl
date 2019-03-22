using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]
@variable(m, x[x_Idx])
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 10.0)
setupperbound(x[11], 25.0)
setupperbound(x[12], 30.0)
setupperbound(x[13], 10.0)
setupperbound(x[14], 10.0)
setupperbound(x[15], 25.0)
setupperbound(x[16], 30.0)
setupperbound(x[17], 10.0)
setupperbound(x[18], 10.0)
setupperbound(x[19], 25.0)
setupperbound(x[20], 30.0)
setupperbound(x[21], 10.0)
setupperbound(x[22], 10.0)
setupperbound(x[23], 25.0)
setupperbound(x[24], 30.0)
setupperbound(x[25], 10.0)
setupperbound(x[26], 10.0)
setupperbound(x[27], 25.0)
setupperbound(x[28], 30.0)
setupperbound(x[29], 10.0)
setupperbound(x[30], 10.0)
setupperbound(x[31], 25.0)
setupperbound(x[32], 30.0)
setupperbound(x[33], 10.0)
setupperbound(x[34], 10.0)
setupperbound(x[35], 25.0)
setupperbound(x[36], 30.0)
setupperbound(x[37], 10.0)
setupperbound(x[38], 10.0)
setupperbound(x[39], 25.0)
setupperbound(x[40], 30.0)
setupperbound(x[41], 10.0)
setupperbound(x[42], 10.0)
setupperbound(x[43], 25.0)
setupperbound(x[44], 30.0)
setupperbound(x[45], 10.0)
setupperbound(x[46], 10.0)
setupperbound(x[47], 25.0)
setupperbound(x[48], 30.0)
setupperbound(x[49], 10.0)
setupperbound(x[50], 10.0)
setupperbound(x[51], 25.0)
setupperbound(x[52], 30.0)
setupperbound(x[53], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+9*x[22]+18*x[23]+8*x[24]+3*x[25]+13*x[26]+22*x[27]+12*x[28]+7*x[29]+14*x[30]+23*x[31]+13*x[32]+8*x[33]+6*x[34]+15*x[35]+5*x[36]+11*x[38]+20*x[39]+10*x[40]+5*x[41]+11*x[42]+20*x[43]+10*x[44]+5*x[45]+7*x[46]+16*x[47]+6*x[48]+x[49]+5*x[50]+14*x[51]+4*x[52]-x[53] == 0.0)
@constraint(m, e2, x[22]+x[23]+x[24]+x[25] <= 75.0)
@constraint(m, e3, x[26]+x[27]+x[28]+x[29] <= 75.0)
@constraint(m, e4, x[30]+x[31]+x[32]+x[33] <= 75.0)
@constraint(m, e5, x[34]+x[35]+x[36]+x[37] <= 75.0)
@constraint(m, e6, x[38]+x[39]+x[40]+x[41] <= 75.0)
@constraint(m, e7, x[42]+x[43]+x[44]+x[45] <= 75.0)
@constraint(m, e8, x[46]+x[47]+x[48]+x[49] <= 75.0)
@constraint(m, e9, x[50]+x[51]+x[52]+x[53] <= 75.0)
@constraint(m, e10, x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29] <= 75.0)
@constraint(m, e11, x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41] <= 75.0)
@constraint(m, e12, x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53] <= 75.0)
@constraint(m, e13, x[22]+x[26]+x[30]+x[34]+x[38]+x[42]+x[46]+x[50] <= 10.0)
@constraint(m, e14, x[23]+x[27]+x[31]+x[35]+x[39]+x[43]+x[47]+x[51] <= 25.0)
@constraint(m, e15, x[24]+x[28]+x[32]+x[36]+x[40]+x[44]+x[48]+x[52] <= 30.0)
@constraint(m, e16, x[25]+x[29]+x[33]+x[37]+x[41]+x[45]+x[49]+x[53] <= 10.0)
@constraint(m, e17, -2*x[22]+x[26]+x[30]-2*x[38]-1.2*x[42]+2*x[46] <= 0.0)
@constraint(m, e18, 3*x[22]-2*x[26]+2.5*x[30]-0.3*x[38]-0.3*x[42]-2*x[46] <= 0.0)
@constraint(m, e19, 0.75*x[22]-0.25*x[26]-0.25*x[30]-0.25*x[34]+0.75*x[38]+0.75*x[42]-1.55*x[46]-0.25*x[50] <= 0.0)
@constraint(m, e20, -0.25*x[22]+1.25*x[26]+0.15*x[30]+0.25*x[34]+0.85*x[38]+2.75*x[42]+2.15*x[46]+0.25*x[50] <= 0.0)
@constraint(m, e21, -x[22]-2*x[26]+x[30]-3*x[34]-3*x[38]+0.0999999999999996*x[42]-2.5*x[46]-x[50] <= 0.0)
@constraint(m, e22, 4*x[22]-x[26]+5*x[30]-x[34]+2*x[38]-2*x[42]-2.1*x[46]-3*x[50] <= 0.0)
@constraint(m, e23, -3*x[23]-x[35]-3*x[39]-2.2*x[43]+x[47]-x[51] <= 0.0)
@constraint(m, e24, 3.5*x[23]-1.5*x[27]+3*x[31]+0.5*x[35]+0.2*x[39]+0.2*x[43]-1.5*x[47]+0.5*x[51] <= 0.0)
@constraint(m, e25, 0.5*x[23]-0.5*x[27]-0.5*x[31]-0.5*x[35]+0.5*x[39]+0.5*x[43]-1.8*x[47]-0.5*x[51] <= 0.0)
@constraint(m, e26, -x[23]+0.5*x[27]-0.6*x[31]-0.5*x[35]+0.1*x[39]+2*x[43]+1.4*x[47]-0.5*x[51] <= 0.0)
@constraint(m, e27, -2*x[23]-3*x[27]-4*x[35]-4*x[39]-0.9*x[43]-3.5*x[47]-2*x[51] <= 0.0)
@constraint(m, e28, 3*x[23]-2*x[27]+4*x[31]-2*x[35]+x[39]-3*x[43]-3.1*x[47]-4*x[51] <= 0.0)
@constraint(m, e29, -0.5*x[24]+2.5*x[28]+2.5*x[32]+1.5*x[36]-0.5*x[40]+0.3*x[44]+3.5*x[48]+1.5*x[52] <= 0.0)
@constraint(m, e30, 0.5*x[24]-4.5*x[28]-2.5*x[36]-2.8*x[40]-2.8*x[44]-4.5*x[48]-2.5*x[52] <= 0.0)
@constraint(m, e31, 0.1*x[24]-0.9*x[28]-0.9*x[32]-0.9*x[36]+0.1*x[40]+0.1*x[44]-2.2*x[48]-0.9*x[52] <= 0.0)
@constraint(m, e32, -0.3*x[24]+1.2*x[28]+0.1*x[32]+0.2*x[36]+0.8*x[40]+2.7*x[44]+2.1*x[48]+0.2*x[52] <= 0.0)
@constraint(m, e33, -2*x[24]-3*x[28]-4*x[36]-4*x[40]-0.9*x[44]-3.5*x[48]-2*x[52] <= 0.0)
@constraint(m, e34, 3*x[24]-2*x[28]+4*x[32]-2*x[36]+x[40]-3*x[44]-3.1*x[48]-4*x[52] <= 0.0)
@constraint(m, e35, -2*x[25]+x[29]+x[33]-2*x[41]-1.2*x[45]+2*x[49] <= 0.0)
@constraint(m, e36, 2*x[25]-3*x[29]+1.5*x[33]-x[37]-1.3*x[41]-1.3*x[45]-3*x[49]-x[53] <= 0.0)
@constraint(m, e37, -x[29]-x[33]-x[37]-2.3*x[49]-x[53] <= 0.0)
@constraint(m, e38, -1.3*x[25]+0.2*x[29]-0.9*x[33]-0.8*x[37]-0.2*x[41]+1.7*x[45]+1.1*x[49]-0.8*x[53] <= 0.0)
@constraint(m, e39, -x[25]-2*x[29]+x[33]-3*x[37]-3*x[41]+0.0999999999999996*x[45]-2.5*x[49]-x[53] <= 0.0)
@constraint(m, e40, 3*x[25]-2*x[29]+4*x[33]-2*x[37]+x[41]-3*x[45]-3.1*x[49]-4*x[53] <= 0.0)
@constraint(m, e41, x[2]+x[3] == 1.0)
@constraint(m, e42, x[4]+x[5]+x[6] == 1.0)
@constraint(m, e43, x[7]+x[8]+x[9] == 1.0)
@NLconstraint(m, e44, -x[2]*x[10]+x[22] == 0.0)
@NLconstraint(m, e45, -x[2]*x[11]+x[23] == 0.0)
@NLconstraint(m, e46, -x[2]*x[12]+x[24] == 0.0)
@NLconstraint(m, e47, -x[2]*x[13]+x[25] == 0.0)
@NLconstraint(m, e48, -x[3]*x[10]+x[26] == 0.0)
@NLconstraint(m, e49, -x[3]*x[11]+x[27] == 0.0)
@NLconstraint(m, e50, -x[3]*x[12]+x[28] == 0.0)
@NLconstraint(m, e51, -x[3]*x[13]+x[29] == 0.0)
@NLconstraint(m, e52, -x[4]*x[14]+x[30] == 0.0)
@NLconstraint(m, e53, -x[4]*x[15]+x[31] == 0.0)
@NLconstraint(m, e54, -x[4]*x[16]+x[32] == 0.0)
@NLconstraint(m, e55, -x[4]*x[17]+x[33] == 0.0)
@NLconstraint(m, e56, -x[5]*x[14]+x[34] == 0.0)
@NLconstraint(m, e57, -x[5]*x[15]+x[35] == 0.0)
@NLconstraint(m, e58, -x[5]*x[16]+x[36] == 0.0)
@NLconstraint(m, e59, -x[5]*x[17]+x[37] == 0.0)
@NLconstraint(m, e60, -x[6]*x[14]+x[38] == 0.0)
@NLconstraint(m, e61, -x[6]*x[15]+x[39] == 0.0)
@NLconstraint(m, e62, -x[6]*x[16]+x[40] == 0.0)
@NLconstraint(m, e63, -x[6]*x[17]+x[41] == 0.0)
@NLconstraint(m, e64, -x[7]*x[18]+x[42] == 0.0)
@NLconstraint(m, e65, -x[7]*x[19]+x[43] == 0.0)
@NLconstraint(m, e66, -x[7]*x[20]+x[44] == 0.0)
@NLconstraint(m, e67, -x[7]*x[21]+x[45] == 0.0)
@NLconstraint(m, e68, -x[8]*x[18]+x[46] == 0.0)
@NLconstraint(m, e69, -x[8]*x[19]+x[47] == 0.0)
@NLconstraint(m, e70, -x[8]*x[20]+x[48] == 0.0)
@NLconstraint(m, e71, -x[8]*x[21]+x[49] == 0.0)
@NLconstraint(m, e72, -x[9]*x[18]+x[50] == 0.0)
@NLconstraint(m, e73, -x[9]*x[19]+x[51] == 0.0)
@NLconstraint(m, e74, -x[9]*x[20]+x[52] == 0.0)
@NLconstraint(m, e75, -x[9]*x[21]+x[53] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 