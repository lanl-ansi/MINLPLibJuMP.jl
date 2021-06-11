using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
@variable(m, x[x_Idx])
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[8], 0.01)
set_upper_bound(x[8], 1000.0)
set_lower_bound(x[9], 0.01)
set_upper_bound(x[9], 1000.0)
set_lower_bound(x[10], 0.01)
set_upper_bound(x[10], 1000.0)
set_lower_bound(x[11], 0.01)
set_upper_bound(x[11], 1000.0)
set_lower_bound(x[12], 0.01)
set_upper_bound(x[12], 1000.0)
set_lower_bound(x[13], 0.01)
set_upper_bound(x[13], 1000.0)
set_lower_bound(x[14], 0.01)
set_upper_bound(x[14], 1000.0)
set_lower_bound(x[15], 0.01)
set_upper_bound(x[15], 1000.0)
set_lower_bound(x[16], 0.01)
set_upper_bound(x[16], 1000.0)
set_upper_bound(x[17], 1620.0)
set_upper_bound(x[18], 1620.0)
set_upper_bound(x[19], 360.0)
set_upper_bound(x[20], 360.0)
set_upper_bound(x[21], 1980.0)
set_upper_bound(x[22], 1620.0)
set_upper_bound(x[23], 360.0)
set_upper_bound(x[24], 600.0)
set_upper_bound(x[25], 600.0)
set_lower_bound(x[26], 350.0)
set_upper_bound(x[26], 600.0)
set_upper_bound(x[27], 430.0)
set_upper_bound(x[28], 600.0)
set_upper_bound(x[29], 600.0)
set_upper_bound(x[30], 368.0)
set_upper_bound(x[31], 600.0)
set_upper_bound(x[32], 600.0)


# ----- Constraints ----- #
@constraint(m, e1, x[17]+x[18]+x[19]+x[20]+x[21] == 1980.0)
@constraint(m, e2, x[17]+x[18]+x[22] == 1620.0)
@constraint(m, e3, x[19]+x[20]+x[23] == 360.0)
@constraint(m, e4, -x[17]-x[19]+22*x[24]-22*x[25] == 0.0)
@constraint(m, e5, -x[18]-x[20]+22*x[25]-22*x[26] == 0.0)
@constraint(m, e6, -x[17]+20*x[27]-20*x[28] == 0.0)
@constraint(m, e7, -x[18]+20*x[28]-20*x[29] == 0.0)
@constraint(m, e8, -x[19]+7.5*x[30]-7.5*x[31] == 0.0)
@constraint(m, e9, -x[20]+7.5*x[31]-7.5*x[32] == 0.0)
@constraint(m, e10, x[24] == 440.0)
@constraint(m, e11, x[29] == 349.0)
@constraint(m, e12, x[32] == 320.0)
@constraint(m, e13, x[24]-x[25] >= 0.0)
@constraint(m, e14, x[25]-x[26] >= 0.0)
@constraint(m, e15, x[27]-x[28] >= 0.0)
@constraint(m, e16, x[28]-x[29] >= 0.0)
@constraint(m, e17, x[30]-x[31] >= 0.0)
@constraint(m, e18, x[31]-x[32] >= 0.0)
@constraint(m, e19, -x[21]+22*x[26] == 7700.0)
@constraint(m, e20, -x[22]-20*x[27] == -8600.0)
@constraint(m, e21, -x[23]-7.5*x[30] == -2760.0)
@constraint(m, e22, -1620*b[1]+x[17] <= 0.0)
@constraint(m, e23, -1620*b[2]+x[18] <= 0.0)
@constraint(m, e24, -360*b[3]+x[19] <= 0.0)
@constraint(m, e25, -360*b[4]+x[20] <= 0.0)
@constraint(m, e26, -1980*b[5]+x[21] <= 0.0)
@constraint(m, e27, -1620*b[6]+x[22] <= 0.0)
@constraint(m, e28, -360*b[7]+x[23] <= 0.0)
@constraint(m, e29, 200*b[1]+x[8]-x[24]+x[27] <= 200.0)
@constraint(m, e30, 200*b[2]+x[9]-x[25]+x[28] <= 200.0)
@constraint(m, e31, 200*b[3]+x[11]-x[24]+x[30] <= 200.0)
@constraint(m, e32, 200*b[4]+x[12]-x[25]+x[31] <= 200.0)
@constraint(m, e33, 200*b[1]+x[9]-x[25]+x[28] <= 200.0)
@constraint(m, e34, 200*b[2]+x[10]-x[26]+x[29] <= 200.0)
@constraint(m, e35, 200*b[3]+x[12]-x[25]+x[31] <= 200.0)
@constraint(m, e36, 200*b[4]+x[13]-x[26]+x[32] <= 200.0)
@constraint(m, e37, 200*b[5]+x[14]-x[26] <= -120.0)
@constraint(m, e38, 200*b[6]+x[15]+x[27] <= 700.0)
@constraint(m, e39, 200*b[7]+x[16]+x[30] <= 700.0)
@NLconstraint(m, e40, -(670*(x[17]/(0.5*( (x[8])^2*x[9]+x[8]* (x[9])^2))^0.333333333333333)^0.83+670*(x[18]/(0.5*( (x[9])^2*x[10]+x[9]* (x[10])^2))^0.333333333333333)^0.83+670*(0.5*x[19]/(0.5*( (x[11])^2*x[12]+x[11]* (x[12])^2))^0.333333333333333)^0.83+670*(0.5*x[20]/(0.5*( (x[12])^2*x[13]+x[12]* (x[13])^2))^0.333333333333333)^0.83+670*(0.666666666666667*x[21]/(1250* (x[14])^2)^0.333333333333333)^0.83+20*x[21]+670*(0.666666666666667*x[22]/(2450* (x[15])^2)^0.333333333333333)^0.83+120*x[22]+670*(0.4*x[23]/(8712* (x[16])^2)^0.333333333333333)^0.83+120*x[23])-6600*b[1]-6600*b[2]-6600*b[3]-6600*b[4]-6600*b[5]-6600*b[6]-6600*b[7]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
