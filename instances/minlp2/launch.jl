using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0)
set_lower_bound(x[2], 1.0)
set_lower_bound(x[3], 1.0)
set_lower_bound(x[4], 5.0)
set_lower_bound(x[5], 5.0)
set_lower_bound(x[6], 5.0)
set_lower_bound(x[7], 50.0)
set_lower_bound(x[8], 50.0)
set_lower_bound(x[9], 50.0)
set_lower_bound(x[10], 2.5)
set_upper_bound(x[10], 4.0)
set_lower_bound(x[14], 125.0)
set_upper_bound(x[14], 150.0)
set_lower_bound(x[15], 75.0)
set_upper_bound(x[15], 100.0)
set_lower_bound(x[16], 50.0)
set_upper_bound(x[16], 70.0)
set_lower_bound(x[17], 1.0)
set_lower_bound(x[18], 1.0)
set_lower_bound(x[19], 1.0)
set_lower_bound(x[20], 20.0)
set_lower_bound(x[21], 20.0)
set_lower_bound(x[22], 20.0)
set_lower_bound(x[23], 0.25)
set_upper_bound(x[23], 0.3)
set_lower_bound(x[24], 0.24)
set_upper_bound(x[24], 0.29)
set_lower_bound(x[25], 0.16)
set_upper_bound(x[25], 0.21)
set_lower_bound(x[26], 1.2)
set_upper_bound(x[26], 1.4)
set_lower_bound(x[27], 0.6)
set_upper_bound(x[27], 0.75)
set_lower_bound(x[28], 0.7)
set_upper_bound(x[28], 0.9)
set_lower_bound(x[29], 100.0)
set_lower_bound(x[30], 100.0)
set_lower_bound(x[31], 100.0)
set_lower_bound(x[32], 240.0)
set_upper_bound(x[32], 290.0)
set_lower_bound(x[33], 240.0)
set_upper_bound(x[33], 290.0)
set_lower_bound(x[34], 340.0)
set_upper_bound(x[34], 375.0)
set_lower_bound(x[35], 1000.0)
set_lower_bound(x[36], 1000.0)
set_lower_bound(x[37], 1000.0)
set_lower_bound(x[38], 35000.0)
set_upper_bound(x[38], 50000.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+0.5*x[4] == 0.0)
@constraint(m, e2, -x[2]+0.6*x[5] == 0.0)
@constraint(m, e3, -x[3]+0.7*x[6] == 0.0)
@constraint(m, e4, -x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]+x[11] == 20.0)
@constraint(m, e5, -x[5]-x[6]-x[8]-x[9]-x[10]+x[12] == 20.0)
@constraint(m, e6, -x[6]-x[9]-x[10]+x[13] == 20.0)
@constraint(m, e7, x[17]-5*x[20] == 0.0)
@constraint(m, e8, x[18]-5*x[21] == 0.0)
@constraint(m, e9, x[19]-x[22] == 0.0)
@NLconstraint(m, e10, x[26]*x[11]-x[17] == 0.0)
@NLconstraint(m, e11, x[27]*x[12]-x[18] == 0.0)
@NLconstraint(m, e12, x[28]*x[13]-x[19] == 0.0)
@NLconstraint(m, e13, (1-x[23])*x[11]-x[7] == 0.0)
@NLconstraint(m, e14, (1-x[24])*x[12]-x[8] == 0.0)
@NLconstraint(m, e15, (1-x[25])*x[13]-x[9] == 0.0)
@constraint(m, e16, 12*x[4]-x[7] <= 0.0)
@constraint(m, e17, 10*x[5]-x[8] <= 0.0)
@constraint(m, e18, 7*x[6]-x[9] <= 0.0)
@constraint(m, e19, -16*x[4]+x[7] <= 0.0)
@constraint(m, e20, -12*x[5]+x[8] <= 0.0)
@constraint(m, e21, -9*x[6]+x[9] <= 0.0)
@NLconstraint(m, e22, x[32]*x[7]-x[17]*x[29] == 0.0)
@NLconstraint(m, e23, x[33]*x[8]-x[18]*x[30] == 0.0)
@NLconstraint(m, e24, x[34]*x[9]-x[19]*x[31] == 0.0)
@NLconstraint(m, e25, -31.8*log(1/x[23])*x[32]+x[35] == 0.0)
@NLconstraint(m, e26, -31.8*log(1/x[24])*x[33]+x[36] == 0.0)
@NLconstraint(m, e27, -31.8*log(1/x[25])*x[34]+x[37] == 0.0)
@constraint(m, e28, -x[35]-x[36]-x[37]+x[38] == 0.0)
@NLconstraint(m, e29, -(5272.77*(x[1]^1.2781*x[4]^(-0.1959)*x[23]^2.4242*x[17]^0.38745*x[7]^(-0.9904)+x[2]^1.2781*x[5]^(-0.1959)*x[24]^2.4242*x[18]^0.38745*x[8]^(-0.9904)+x[3]^1.2781*x[6]^(-0.1959)*x[25]^2.4242*x[19]^0.38745*x[9]^(-0.9904))+0.185214*(10.3027592771433*x[1]^0.3322*x[23]^(-1.5935)*x[7]^0.2362*x[14]^0.1079+10.3027592771433*x[2]^0.3322*x[24]^(-1.5935)*x[8]^0.2362*x[15]^0.1079+7.94328234724281*x[3]^0.3322*x[25]^(-1.5935)*x[9]^0.2362*x[16]^0.1079)+160.99*(0.001*x[20])^(-0.146)+282.874*(0.001*x[20])^0.648+160.99*(0.001*x[21])^(-0.146)+282.874*(0.001*x[21])^0.648+181.806*(0.001*x[22])^0.539+232.57*(0.001*x[22])^0.772+38.0226256753606*(2.509*(0.001*x[20])^0.736+0.0002085*x[20]+0.9744*(0.001*x[20])^(-0.229))+38.0226256753606*(2.509*(0.001*x[21])^0.736+0.0002085*x[21]+0.9744*(0.001*x[21])^(-0.229))+8.51138038202377*(7.05e-5*x[22]-0.000845197400305967*(0.001*x[22])^(-1.33)+52.5264761174087*(0.001*x[22])^0.498)+0.1637577*(1000*x[10])^0.786+0.125678613298076*(1000*x[10])^0.786+85*(0.003*x[7]+0.003*x[8]+0.003*x[9])^0.46)+objvar == -850.76)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
