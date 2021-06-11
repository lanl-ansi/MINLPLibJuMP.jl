using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
@variable(m, x[x_Idx])
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[18], 0.001)
set_lower_bound(x[19], 0.001)
set_lower_bound(x[20], 0.001)
set_lower_bound(x[21], 0.001)
set_lower_bound(x[22], 0.001)
set_lower_bound(x[31], 0.05245)
set_upper_bound(x[31], 0.0857)
set_lower_bound(x[32], 0.06175)
set_upper_bound(x[32], 0.095)
set_lower_bound(x[33], 0.0619)
set_upper_bound(x[33], 0.0939)
set_lower_bound(x[34], 0.0368)
set_upper_bound(x[34], 0.0768)
set_lower_bound(x[35], 0.0368)
set_upper_bound(x[35], 0.0768)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[18]-x[19]-x[20]-x[21]-x[22]+30000*x[23]-25000*x[24]+30000*x[25]+50000*x[26]-25000*x[27]-5000*x[28]-15000*x[29]-50000*x[30] == 2.06829e7)
@NLconstraint(m, e2, -95.54*exp(0.09167*x[31])+x[18] == 0.0)
@NLconstraint(m, e3, -93.27*exp(0.33889*x[32])+x[19] == 0.0)
@NLconstraint(m, e4, -95.54*exp(0.09167*x[31])+x[20] == 0.0)
@NLconstraint(m, e5, -93.27*exp(0.33889*x[32])+x[21] == 0.0)
@NLconstraint(m, e6, -91.03*exp(0.58889*x[33])+x[22] == 0.0)
@NLconstraint(m, e7, -exp(-0.33889*x[32])*(errorf(x[2])*x[21]-95*errorf(x[10]))+x[23] == 0.0)
@NLconstraint(m, e8, -exp(-0.33889*x[32])*(errorf(x[3])*x[21]-97*errorf(x[11]))+x[25] == 0.0)
@NLconstraint(m, e9, -exp(-0.58889*x[33])*(errorf(x[6])*x[22]-95*errorf(x[14]))+x[24] == 0.0)
@NLconstraint(m, e10, -exp(-0.58889*x[33])*(errorf(x[7])*x[22]-97*errorf(x[15]))+x[26] == 0.0)
@NLconstraint(m, e11, -exp(-0.58889*x[33])*(errorf(x[8])*x[22]-99*errorf(x[16]))+x[27] == 0.0)
@NLconstraint(m, e12, -exp(-0.33889*x[32])*(95*errorf(-x[12])-errorf(-x[4])*x[21])+x[28] == 0.0)
@NLconstraint(m, e13, -exp(-0.33889*x[32])*(97*errorf(-x[13])-errorf(-x[5])*x[21])+x[29] == 0.0)
@NLconstraint(m, e14, -exp(-0.58889*x[33])*(99*errorf(-x[17])-errorf(-x[9])*x[22])+x[30] == 0.0)
@NLconstraint(m, e15, -1.71779218689115*(log(0.0105263157894737*x[21])+0.169445* (x[34])^2)/x[34]+x[2] == 0.0)
@NLconstraint(m, e16, -1.71779218689115*(log(0.0103092783505155*x[21])+0.169445* (x[34])^2)/x[34]+x[3] == 0.0)
@NLconstraint(m, e17, -1.71779218689115*(log(0.0105263157894737*x[21])+0.169445* (x[34])^2)/x[34]+x[4] == 0.0)
@NLconstraint(m, e18, -1.71779218689115*(log(0.0103092783505155*x[21])+0.169445* (x[34])^2)/x[34]+x[5] == 0.0)
@NLconstraint(m, e19, -1.30311549893554*(log(0.0105263157894737*x[22])+0.294445* (x[35])^2)/x[35]+x[6] == 0.0)
@NLconstraint(m, e20, -1.30311549893554*(log(0.0103092783505155*x[22])+0.294445* (x[35])^2)/x[35]+x[7] == 0.0)
@NLconstraint(m, e21, -1.30311549893554*(log(0.0101010101010101*x[22])+0.294445* (x[35])^2)/x[35]+x[8] == 0.0)
@NLconstraint(m, e22, -1.30311549893554*(log(0.0101010101010101*x[22])+0.294445* (x[35])^2)/x[35]+x[9] == 0.0)
@constraint(m, e23, -x[2]+x[10]+0.582142594215541*x[34] == 0.0)
@constraint(m, e24, -x[3]+x[11]+0.582142594215541*x[34] == 0.0)
@constraint(m, e25, -x[4]+x[12]+0.582142594215541*x[34] == 0.0)
@constraint(m, e26, -x[5]+x[13]+0.582142594215541*x[34] == 0.0)
@constraint(m, e27, -x[6]+x[14]+0.767391686168152*x[35] == 0.0)
@constraint(m, e28, -x[7]+x[15]+0.767391686168152*x[35] == 0.0)
@constraint(m, e29, -x[8]+x[16]+0.767391686168152*x[35] == 0.0)
@constraint(m, e30, -x[9]+x[17]+0.767391686168152*x[35] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
