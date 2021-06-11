using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
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
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 60.98)
set_upper_bound(x[9], 161.29)
set_upper_bound(x[10], 161.29)
set_upper_bound(x[11], 5.0)
set_upper_bound(x[12], 12.5)
set_upper_bound(x[13], 12.5)
set_upper_bound(x[14], 12.5)
set_upper_bound(x[15], 17.5)
set_upper_bound(x[16], 17.5)
set_upper_bound(x[17], 17.5)
set_upper_bound(x[18], 12.5)
set_upper_bound(x[19], 12.5)
set_upper_bound(x[20], 12.5)
set_upper_bound(x[21], 17.5)
set_upper_bound(x[22], 17.5)
set_upper_bound(x[23], 17.5)
set_upper_bound(x[24], 12.5)
set_upper_bound(x[25], 12.5)
set_upper_bound(x[26], 12.5)
set_upper_bound(x[27], 17.5)
set_upper_bound(x[28], 17.5)
set_upper_bound(x[29], 17.5)
set_upper_bound(x[30], 5.0)
set_upper_bound(x[31], 5.0)
set_upper_bound(x[32], 5.0)
set_upper_bound(x[33], 5.0)
set_upper_bound(x[34], 5.0)
set_upper_bound(x[35], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+180.8*x[8]+128*x[9]+88*x[10]-110*x[11]+140.8*x[18]+180.8*x[19]+100.8*x[20]+140.8*x[21]+180.8*x[22]+100.8*x[23]+128*x[24]+168*x[25]+88*x[26]+128*x[27]+168*x[28]+88*x[29]-110*x[30]-70*x[31]-150*x[32]-110*x[33]-70*x[34]-150*x[35] == 0.0)
@constraint(m, e2, x[8]+x[18]+x[19]+x[20]+x[21]+x[22]+x[23] <= 60.98)
@constraint(m, e3, x[9]+x[10]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29] <= 161.29)
@constraint(m, e4, x[11]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35] <= 5.0)
@constraint(m, e5, x[18]+x[19]+x[20]+x[24]+x[25]+x[26]+x[30]+x[31]+x[32] <= 12.5)
@constraint(m, e6, x[21]+x[22]+x[23]+x[27]+x[28]+x[29]+x[33]+x[34]+x[35] <= 17.5)
@constraint(m, e7, x[9]+x[11]+x[18]+x[21]+x[24]+x[27]+x[30]+x[33] >= 5.0)
@constraint(m, e8, x[8]+x[19]+x[22]+x[25]+x[28]+x[31]+x[34] >= 5.0)
@constraint(m, e9, x[10]+x[20]+x[23]+x[26]+x[29]+x[32]+x[35] >= 5.0)
@constraint(m, e10, x[9]+x[11]+x[18]+x[21]+x[24]+x[27]+x[30]+x[33] <= 300.0)
@constraint(m, e11, x[8]+x[19]+x[22]+x[25]+x[28]+x[31]+x[34] <= 300.0)
@constraint(m, e12, x[10]+x[20]+x[23]+x[26]+x[29]+x[32]+x[35] <= 300.0)
@constraint(m, e13, -0.17*x[9]-0.04*x[11]+0.0299999999999999*x[18]+0.0299999999999999*x[21]-0.17*x[24]-0.17*x[27]-0.04*x[30]-0.04*x[33] <= 0.0)
@constraint(m, e14, -3*x[9]-3*x[11]-3*x[24]-3*x[27]-3*x[30]-3*x[33] <= 0.0)
@constraint(m, e15, -26.1*x[9]-14.8*x[18]-14.8*x[21]-26.1*x[24]-26.1*x[27] <= 0.0)
@constraint(m, e16, -15.2*x[9]-8.2*x[18]-8.2*x[21]-15.2*x[24]-15.2*x[27] <= 0.0)
@constraint(m, e17, 0.12*x[9]-0.01*x[11]-0.08*x[18]-0.08*x[21]+0.12*x[24]+0.12*x[27]-0.01*x[30]-0.01*x[33] <= 0.0)
@constraint(m, e18, 7.09999999999999*x[9]-19*x[11]-4.2*x[18]-4.2*x[21]+7.09999999999999*x[24]+7.09999999999999*x[27]-19*x[30]-19*x[33] <= 0.0)
@constraint(m, e19, 1.5*x[9]-13.7*x[11]-5.5*x[18]-5.5*x[21]+1.5*x[24]+1.5*x[27]-13.7*x[30]-13.7*x[33] <= 0.0)
@constraint(m, e20, 0.0299999999999999*x[8]+0.0299999999999999*x[19]+0.0299999999999999*x[22]-0.17*x[25]-0.17*x[28]-0.04*x[31]-0.04*x[34] <= 0.0)
@constraint(m, e21, 2.1*x[8]+2.1*x[19]+2.1*x[22]-0.9*x[25]-0.9*x[28]-0.9*x[31]-0.9*x[34] <= 0.0)
@constraint(m, e22, -14.8*x[8]-14.8*x[19]-14.8*x[22]-26.1*x[25]-26.1*x[28] <= 0.0)
@constraint(m, e23, -8.2*x[8]-8.2*x[19]-8.2*x[22]-15.2*x[25]-15.2*x[28] <= 0.0)
@constraint(m, e24, -0.08*x[8]-0.08*x[19]-0.08*x[22]+0.12*x[25]+0.12*x[28]-0.01*x[31]-0.01*x[34] <= 0.0)
@constraint(m, e25, -3.2*x[8]-3.2*x[19]-3.2*x[22]+8.09999999999999*x[25]+8.09999999999999*x[28]-18*x[31]-18*x[34] <= 0.0)
@constraint(m, e26, -2.5*x[8]-2.5*x[19]-2.5*x[22]+4.5*x[25]+4.5*x[28]-10.7*x[31]-10.7*x[34] <= 0.0)
@constraint(m, e27, -0.17*x[10]+0.0299999999999999*x[20]+0.0299999999999999*x[23]-0.17*x[26]-0.17*x[29]-0.04*x[32]-0.04*x[35] <= 0.0)
@constraint(m, e28, -3*x[10]-3*x[26]-3*x[29]-3*x[32]-3*x[35] <= 0.0)
@constraint(m, e29, -26.1*x[10]-14.8*x[20]-14.8*x[23]-26.1*x[26]-26.1*x[29] <= 0.0)
@constraint(m, e30, -15.2*x[10]-8.2*x[20]-8.2*x[23]-15.2*x[26]-15.2*x[29] <= 0.0)
@constraint(m, e31, 0.12*x[10]-0.08*x[20]-0.08*x[23]+0.12*x[26]+0.12*x[29]-0.01*x[32]-0.01*x[35] <= 0.0)
@constraint(m, e32, 3.09999999999999*x[10]-8.2*x[20]-8.2*x[23]+3.09999999999999*x[26]+3.09999999999999*x[29]-23*x[32]-23*x[35] <= 0.0)
@constraint(m, e33, -7*x[20]-7*x[23]-15.2*x[32]-15.2*x[35] <= 0.0)
@constraint(m, e34, x[2]+x[4]+x[6] == 1.0)
@constraint(m, e35, x[3]+x[5]+x[7] == 1.0)
@NLconstraint(m, e36, -x[2]*x[12]+x[18] == 0.0)
@NLconstraint(m, e37, -x[2]*x[13]+x[19] == 0.0)
@NLconstraint(m, e38, -x[2]*x[14]+x[20] == 0.0)
@NLconstraint(m, e39, -x[3]*x[15]+x[21] == 0.0)
@NLconstraint(m, e40, -x[3]*x[16]+x[22] == 0.0)
@NLconstraint(m, e41, -x[3]*x[17]+x[23] == 0.0)
@NLconstraint(m, e42, -x[4]*x[12]+x[24] == 0.0)
@NLconstraint(m, e43, -x[4]*x[13]+x[25] == 0.0)
@NLconstraint(m, e44, -x[4]*x[14]+x[26] == 0.0)
@NLconstraint(m, e45, -x[5]*x[15]+x[27] == 0.0)
@NLconstraint(m, e46, -x[5]*x[16]+x[28] == 0.0)
@NLconstraint(m, e47, -x[5]*x[17]+x[29] == 0.0)
@NLconstraint(m, e48, -x[6]*x[12]+x[30] == 0.0)
@NLconstraint(m, e49, -x[6]*x[13]+x[31] == 0.0)
@NLconstraint(m, e50, -x[6]*x[14]+x[32] == 0.0)
@NLconstraint(m, e51, -x[7]*x[15]+x[33] == 0.0)
@NLconstraint(m, e52, -x[7]*x[16]+x[34] == 0.0)
@NLconstraint(m, e53, -x[7]*x[17]+x[35] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
