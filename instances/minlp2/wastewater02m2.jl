using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0e6)
set_upper_bound(x[2], 1.0e6)
set_upper_bound(x[3], 1.0e6)
set_upper_bound(x[4], 1.0e6)
set_upper_bound(x[5], 1.0e6)
set_upper_bound(x[6], 1.0e6)
set_upper_bound(x[7], 1.0e6)
set_upper_bound(x[8], 1.0e6)
set_upper_bound(x[9], 1.0e6)
set_upper_bound(x[10], 1.0e6)
set_upper_bound(x[11], 1.0e6)
set_upper_bound(x[12], 1.0e6)
set_upper_bound(x[13], 1.0e6)
set_upper_bound(x[14], 1.0e6)
set_upper_bound(x[15], 1.0e6)
set_upper_bound(x[16], 1.0e6)
set_upper_bound(x[17], 1.0e6)
set_upper_bound(x[18], 1.0e6)
set_upper_bound(x[19], 1.0e6)
set_upper_bound(x[20], 1.0e6)
set_upper_bound(x[21], 1.0e6)
set_upper_bound(x[22], 1.0e6)
set_upper_bound(x[23], 1.0e6)
set_upper_bound(x[24], 1.0e6)
set_upper_bound(x[25], 1.0e6)
set_upper_bound(x[26], 1.0e6)
set_upper_bound(x[27], 1.0e6)
set_upper_bound(x[28], 1.0e6)
set_upper_bound(x[29], 1.0e6)
set_upper_bound(x[30], 1.0e6)
set_upper_bound(x[31], 1.0e6)
set_upper_bound(x[32], 1.0e6)
set_upper_bound(x[33], 1.0e6)
set_upper_bound(x[34], 1.0e6)
set_upper_bound(x[35], 1.0e6)
set_upper_bound(x[36], 1.0e6)
set_upper_bound(x[37], 1.0e6)
set_upper_bound(x[38], 1.0e6)
set_upper_bound(x[39], 1.0e6)
set_upper_bound(x[40], 1.0e6)
set_upper_bound(x[41], 1.0e6)


# ----- Constraints ----- #
@constraint(m, e1, -x[14]-x[15]+objvar == 0.0)
@constraint(m, e2, -x[5]-x[9]-x[10] == -60.0)
@constraint(m, e3, -x[6]-x[11]-x[12] == -20.0)
@constraint(m, e4, -x[1]-x[3]-x[9]-x[11]+x[14] == 0.0)
@constraint(m, e5, -x[2]-x[4]-x[10]-x[12]+x[15] == 0.0)
@constraint(m, e6, -x[1]-x[2]-x[7]+x[14] == 0.0)
@constraint(m, e7, -x[3]-x[4]-x[8]+x[15] == 0.0)
@constraint(m, e8, -x[5]-x[6]-x[7]-x[8]+x[13] == 0.0)
@constraint(m, e9, -x[20]-x[24]-x[25] == -24000.0)
@constraint(m, e10, -x[21]-x[26]-x[27] == -16000.0)
@constraint(m, e11, -x[24]+24000*x[38] == 0.0)
@constraint(m, e12, -x[25]+24000*x[39] == 0.0)
@constraint(m, e13, -x[26]+16000*x[40] == 0.0)
@constraint(m, e14, -x[27]+16000*x[41] == 0.0)
@constraint(m, e15, -x[20]+24000*x[34] == 0.0)
@constraint(m, e16, -x[21]+16000*x[35] == 0.0)
@constraint(m, e17, -x[9]+60*x[38] == 0.0)
@constraint(m, e18, -x[10]+60*x[39] == 0.0)
@constraint(m, e19, -x[11]+20*x[40] == 0.0)
@constraint(m, e20, -x[12]+20*x[41] == 0.0)
@constraint(m, e21, -x[5]+60*x[34] == 0.0)
@constraint(m, e22, -x[6]+20*x[35] == 0.0)
@constraint(m, e23, x[34]+x[38]+x[39] == 1.0)
@constraint(m, e24, x[35]+x[40]+x[41] == 1.0)
@constraint(m, e25, -200*x[14]+x[16]+x[18]+x[24]+x[26] <= 0.0)
@constraint(m, e26, -1000*x[15]+x[17]+x[19]+x[25]+x[27] <= 0.0)
@constraint(m, e27, 0.01*x[16]+0.01*x[18]+0.01*x[24]+0.01*x[26]-x[28] == 0.0)
@constraint(m, e28, 0.2*x[17]+0.2*x[19]+0.2*x[25]+0.2*x[27]-x[29] == 0.0)
@constraint(m, e29, -x[16]-x[17]-x[22]+x[28] == 0.0)
@constraint(m, e30, -x[18]-x[19]-x[23]+x[29] == 0.0)
@NLconstraint(m, e31, x[28]*x[30]-x[16] == 0.0)
@NLconstraint(m, e32, x[28]*x[31]-x[17] == 0.0)
@NLconstraint(m, e33, x[29]*x[32]-x[18] == 0.0)
@NLconstraint(m, e34, x[29]*x[33]-x[19] == 0.0)
@NLconstraint(m, e35, x[28]*x[36]-x[22] == 0.0)
@NLconstraint(m, e36, x[29]*x[37]-x[23] == 0.0)
@NLconstraint(m, e37, x[14]*x[30]-x[1] == 0.0)
@NLconstraint(m, e38, x[14]*x[31]-x[2] == 0.0)
@NLconstraint(m, e39, x[15]*x[32]-x[3] == 0.0)
@NLconstraint(m, e40, x[15]*x[33]-x[4] == 0.0)
@NLconstraint(m, e41, x[14]*x[36]-x[7] == 0.0)
@NLconstraint(m, e42, x[15]*x[37]-x[8] == 0.0)
@constraint(m, e43, x[30]+x[31]+x[36] == 1.0)
@constraint(m, e44, x[32]+x[33]+x[37] == 1.0)
@constraint(m, e45, -10*x[13]+x[20]+x[21]+x[22]+x[23] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
