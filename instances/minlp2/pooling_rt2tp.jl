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
set_upper_bound(x[8], 12.5)
set_upper_bound(x[9], 12.5)
set_upper_bound(x[10], 12.5)
set_upper_bound(x[11], 17.5)
set_upper_bound(x[12], 17.5)
set_upper_bound(x[13], 17.5)
set_upper_bound(x[14], 12.5)
set_upper_bound(x[15], 12.5)
set_upper_bound(x[16], 12.5)
set_upper_bound(x[17], 17.5)
set_upper_bound(x[18], 17.5)
set_upper_bound(x[19], 17.5)
set_upper_bound(x[20], 5.0)
set_upper_bound(x[21], 5.0)
set_upper_bound(x[22], 5.0)
set_upper_bound(x[23], 5.0)
set_upper_bound(x[24], 5.0)
set_upper_bound(x[25], 5.0)
set_upper_bound(x[26], 12.5)
set_upper_bound(x[27], 17.5)
set_upper_bound(x[28], 60.98)
set_upper_bound(x[29], 12.5)
set_upper_bound(x[30], 17.5)
set_upper_bound(x[31], 161.29)
set_upper_bound(x[32], 161.29)
set_upper_bound(x[33], 5.0)
set_upper_bound(x[34], 5.0)
set_upper_bound(x[35], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+140.8*x[8]+180.8*x[9]+100.8*x[10]+140.8*x[11]+180.8*x[12]+100.8*x[13]+128*x[14]+168*x[15]+88*x[16]+128*x[17]+168*x[18]+88*x[19]-110*x[20]-70*x[21]-150*x[22]-110*x[23]-70*x[24]-150*x[25]+180.8*x[28]+128*x[31]+88*x[32]-110*x[35] == 0.0)
@constraint(m, e2, x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+x[28] <= 60.98)
@constraint(m, e3, x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[31]+x[32] <= 161.29)
@constraint(m, e4, x[20]+x[21]+x[22]+x[23]+x[24]+x[25]+x[35] <= 5.0)
@constraint(m, e5, x[8]+x[9]+x[10]+x[14]+x[15]+x[16]+x[20]+x[21]+x[22] <= 12.5)
@constraint(m, e6, x[11]+x[12]+x[13]+x[17]+x[18]+x[19]+x[23]+x[24]+x[25] <= 17.5)
@constraint(m, e7, x[8]+x[11]+x[14]+x[17]+x[20]+x[23]+x[31]+x[35] >= 5.0)
@constraint(m, e8, x[9]+x[12]+x[15]+x[18]+x[21]+x[24]+x[28] >= 5.0)
@constraint(m, e9, x[10]+x[13]+x[16]+x[19]+x[22]+x[25]+x[32] >= 5.0)
@constraint(m, e10, x[8]+x[11]+x[14]+x[17]+x[20]+x[23]+x[31]+x[35] <= 300.0)
@constraint(m, e11, x[9]+x[12]+x[15]+x[18]+x[21]+x[24]+x[28] <= 300.0)
@constraint(m, e12, x[10]+x[13]+x[16]+x[19]+x[22]+x[25]+x[32] <= 300.0)
@constraint(m, e13, 0.0299999999999999*x[8]+0.0299999999999999*x[11]-0.17*x[14]-0.17*x[17]-0.04*x[20]-0.04*x[23]-0.17*x[31]-0.04*x[35] <= 0.0)
@constraint(m, e14, -3*x[14]-3*x[17]-3*x[20]-3*x[23]-3*x[31]-3*x[35] <= 0.0)
@constraint(m, e15, -14.8*x[8]-14.8*x[11]-26.1*x[14]-26.1*x[17]-26.1*x[31] <= 0.0)
@constraint(m, e16, -8.2*x[8]-8.2*x[11]-15.2*x[14]-15.2*x[17]-15.2*x[31] <= 0.0)
@constraint(m, e17, -0.08*x[8]-0.08*x[11]+0.12*x[14]+0.12*x[17]-0.01*x[20]-0.01*x[23]+0.12*x[31]-0.01*x[35] <= 0.0)
@constraint(m, e18, -4.2*x[8]-4.2*x[11]+7.09999999999999*x[14]+7.09999999999999*x[17]-19*x[20]-19*x[23]+7.09999999999999*x[31]-19*x[35] <= 0.0)
@constraint(m, e19, -5.5*x[8]-5.5*x[11]+1.5*x[14]+1.5*x[17]-13.7*x[20]-13.7*x[23]+1.5*x[31]-13.7*x[35] <= 0.0)
@constraint(m, e20, 0.0299999999999999*x[9]+0.0299999999999999*x[12]-0.17*x[15]-0.17*x[18]-0.04*x[21]-0.04*x[24]+0.0299999999999999*x[28] <= 0.0)
@constraint(m, e21, 2.1*x[9]+2.1*x[12]-0.9*x[15]-0.9*x[18]-0.9*x[21]-0.9*x[24]+2.1*x[28] <= 0.0)
@constraint(m, e22, -14.8*x[9]-14.8*x[12]-26.1*x[15]-26.1*x[18]-14.8*x[28] <= 0.0)
@constraint(m, e23, -8.2*x[9]-8.2*x[12]-15.2*x[15]-15.2*x[18]-8.2*x[28] <= 0.0)
@constraint(m, e24, -0.08*x[9]-0.08*x[12]+0.12*x[15]+0.12*x[18]-0.01*x[21]-0.01*x[24]-0.08*x[28] <= 0.0)
@constraint(m, e25, -3.2*x[9]-3.2*x[12]+8.09999999999999*x[15]+8.09999999999999*x[18]-18*x[21]-18*x[24]-3.2*x[28] <= 0.0)
@constraint(m, e26, -2.5*x[9]-2.5*x[12]+4.5*x[15]+4.5*x[18]-10.7*x[21]-10.7*x[24]-2.5*x[28] <= 0.0)
@constraint(m, e27, 0.0299999999999999*x[10]+0.0299999999999999*x[13]-0.17*x[16]-0.17*x[19]-0.04*x[22]-0.04*x[25]-0.17*x[32] <= 0.0)
@constraint(m, e28, -3*x[16]-3*x[19]-3*x[22]-3*x[25]-3*x[32] <= 0.0)
@constraint(m, e29, -14.8*x[10]-14.8*x[13]-26.1*x[16]-26.1*x[19]-26.1*x[32] <= 0.0)
@constraint(m, e30, -8.2*x[10]-8.2*x[13]-15.2*x[16]-15.2*x[19]-15.2*x[32] <= 0.0)
@constraint(m, e31, -0.08*x[10]-0.08*x[13]+0.12*x[16]+0.12*x[19]-0.01*x[22]-0.01*x[25]+0.12*x[32] <= 0.0)
@constraint(m, e32, -8.2*x[10]-8.2*x[13]+3.09999999999999*x[16]+3.09999999999999*x[19]-23*x[22]-23*x[25]+3.09999999999999*x[32] <= 0.0)
@constraint(m, e33, -7*x[10]-7*x[13]-15.2*x[22]-15.2*x[25] <= 0.0)
@constraint(m, e34, x[2]+x[3]+x[4] == 1.0)
@constraint(m, e35, x[5]+x[6]+x[7] == 1.0)
@NLconstraint(m, e36, -x[2]*x[26]+x[8] == 0.0)
@NLconstraint(m, e37, -x[3]*x[26]+x[9] == 0.0)
@NLconstraint(m, e38, -x[4]*x[26]+x[10] == 0.0)
@NLconstraint(m, e39, -x[5]*x[27]+x[11] == 0.0)
@NLconstraint(m, e40, -x[6]*x[27]+x[12] == 0.0)
@NLconstraint(m, e41, -x[7]*x[27]+x[13] == 0.0)
@NLconstraint(m, e42, -x[2]*x[29]+x[14] == 0.0)
@NLconstraint(m, e43, -x[3]*x[29]+x[15] == 0.0)
@NLconstraint(m, e44, -x[4]*x[29]+x[16] == 0.0)
@NLconstraint(m, e45, -x[5]*x[30]+x[17] == 0.0)
@NLconstraint(m, e46, -x[6]*x[30]+x[18] == 0.0)
@NLconstraint(m, e47, -x[7]*x[30]+x[19] == 0.0)
@NLconstraint(m, e48, -x[2]*x[33]+x[20] == 0.0)
@NLconstraint(m, e49, -x[3]*x[33]+x[21] == 0.0)
@NLconstraint(m, e50, -x[4]*x[33]+x[22] == 0.0)
@NLconstraint(m, e51, -x[5]*x[34]+x[23] == 0.0)
@NLconstraint(m, e52, -x[6]*x[34]+x[24] == 0.0)
@NLconstraint(m, e53, -x[7]*x[34]+x[25] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
