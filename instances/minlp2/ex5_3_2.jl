using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22]
@variable(m, x[x_Idx] >= 0)
set_upper_bound(x[1], 300.0)
set_upper_bound(x[2], 300.0)
set_upper_bound(x[3], 300.0)
set_upper_bound(x[4], 300.0)
set_upper_bound(x[5], 300.0)
set_upper_bound(x[6], 300.0)
set_upper_bound(x[7], 300.0)
set_upper_bound(x[8], 300.0)
set_upper_bound(x[9], 300.0)
set_upper_bound(x[10], 300.0)
set_upper_bound(x[11], 300.0)
set_upper_bound(x[12], 300.0)
set_upper_bound(x[13], 300.0)
set_upper_bound(x[14], 300.0)
set_upper_bound(x[15], 300.0)
set_upper_bound(x[16], 300.0)
set_upper_bound(x[17], 300.0)
set_upper_bound(x[18], 300.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4] == 300.0)
@constraint(m, e2, x[5]-x[6]-x[7] == 0.0)
@constraint(m, e3, x[8]-x[9]-x[10]-x[11] == 0.0)
@constraint(m, e4, x[12]-x[13]-x[14]-x[15] == 0.0)
@constraint(m, e5, x[16]-x[17]-x[18] == 0.0)
@NLconstraint(m, e6, x[13]*x[21]+0.333*x[1]-x[5] == 0.0)
@NLconstraint(m, e7, x[13]*x[22]-x[8]*x[20]+0.333*x[1] == 0.0)
@NLconstraint(m, e8, -x[8]*x[19]+0.333*x[1] == 0.0)
@NLconstraint(m, e9, -x[12]*x[21]-0.333*x[2] == 0.0)
@NLconstraint(m, e10, x[9]*x[20]-x[12]*x[22]+0.333*x[2] == 0.0)
@NLconstraint(m, e11, x[9]*x[19]+0.333*x[2]-x[16] == 0.0)
@NLconstraint(m, e12, x[14]*x[21]+0.333*x[3]+x[6] == 30.0)
@NLconstraint(m, e13, x[10]*x[20]+x[14]*x[22]+0.333*x[3] == 50.0)
@NLconstraint(m, e14, x[10]*x[19]+0.333*x[3]+x[17] == 30.0)
@constraint(m, e15, x[19]+x[20] == 1.0)
@constraint(m, e16, x[21]+x[22] == 1.0)
@constraint(m, e17, -0.00432*x[1]-0.01517*x[2]-0.01517*x[9]-0.00432*x[13]+objvar == 0.9979)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
