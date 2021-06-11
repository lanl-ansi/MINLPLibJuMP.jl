using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[1], 2.89)
set_upper_bound(x[1], 32.0)
set_lower_bound(x[2], 1.2)
set_upper_bound(x[2], 6.8)
set_lower_bound(x[3], 1.2)
set_upper_bound(x[3], 2.8)
set_lower_bound(x[4], 0.6)
set_upper_bound(x[4], 7.4)
set_lower_bound(x[5], 0.6)
set_upper_bound(x[5], 3.4)
set_lower_bound(x[6], 0.8)
set_upper_bound(x[6], 7.2)
set_lower_bound(x[7], 0.8)
set_upper_bound(x[7], 3.2)
set_lower_bound(x[8], 1.7)
set_upper_bound(x[8], 6.3)
set_lower_bound(x[9], 1.7)
set_upper_bound(x[9], 2.3)
set_lower_bound(x[10], 0.5)
set_upper_bound(x[10], 7.5)
set_lower_bound(x[11], 0.5)
set_upper_bound(x[11], 3.5)
set_lower_bound(x[12], 1.3)
set_upper_bound(x[12], 6.7)
set_lower_bound(x[13], 1.3)
set_upper_bound(x[13], 2.7)
set_lower_bound(x[14], 0.6)
set_upper_bound(x[14], 7.4)
set_lower_bound(x[15], 0.6)
set_upper_bound(x[15], 3.4)
set_upper_bound(x[16], 8.0)
set_upper_bound(x[17], 4.0)
set_lower_bound(objvar, 0.0)
set_upper_bound(objvar, 32.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -23.9703519468901)
@constraint(m, e2, -x[16]*x[17]+x[1] == 0.0)
@constraint(m, e3, (x[2]-x[4])*(x[2]-x[4])+(x[3]-x[5])*(x[3]-x[5]) >= 3.24)
@constraint(m, e4, (x[2]-x[6])*(x[2]-x[6])+(x[3]-x[7])*(x[3]-x[7]) >= 4.0)
@constraint(m, e5, (x[2]-x[8])*(x[2]-x[8])+(x[3]-x[9])*(x[3]-x[9]) >= 8.41)
@constraint(m, e6, (x[2]-x[10])*(x[2]-x[10])+(x[3]-x[11])*(x[3]-x[11]) >= 2.89)
@constraint(m, e7, (x[2]-x[12])*(x[2]-x[12])+(x[3]-x[13])*(x[3]-x[13]) >= 6.25)
@constraint(m, e8, (x[2]-x[14])*(x[2]-x[14])+(x[3]-x[15])*(x[3]-x[15]) >= 3.24)
@constraint(m, e9, (x[4]-x[6])*(x[4]-x[6])+(x[5]-x[7])*(x[5]-x[7]) >= 1.96)
@constraint(m, e10, (x[4]-x[8])*(x[4]-x[8])+(x[5]-x[9])*(x[5]-x[9]) >= 5.29)
@constraint(m, e11, (x[4]-x[10])*(x[4]-x[10])+(x[5]-x[11])*(x[5]-x[11]) >= 1.21)
@constraint(m, e12, (x[4]-x[12])*(x[4]-x[12])+(x[5]-x[13])*(x[5]-x[13]) >= 3.61)
@constraint(m, e13, (x[4]-x[14])*(x[4]-x[14])+(x[5]-x[15])*(x[5]-x[15]) >= 1.44)
@constraint(m, e14, (x[6]-x[8])*(x[6]-x[8])+(x[7]-x[9])*(x[7]-x[9]) >= 6.25)
@constraint(m, e15, (x[6]-x[10])*(x[6]-x[10])+(x[7]-x[11])*(x[7]-x[11]) >= 1.69)
@constraint(m, e16, (x[6]-x[12])*(x[6]-x[12])+(x[7]-x[13])*(x[7]-x[13]) >= 4.41)
@constraint(m, e17, (x[6]-x[14])*(x[6]-x[14])+(x[7]-x[15])*(x[7]-x[15]) >= 1.96)
@constraint(m, e18, (x[8]-x[10])*(x[8]-x[10])+(x[9]-x[11])*(x[9]-x[11]) >= 4.84)
@constraint(m, e19, (x[8]-x[12])*(x[8]-x[12])+(x[9]-x[13])*(x[9]-x[13]) >= 9.0)
@constraint(m, e20, (x[8]-x[14])*(x[8]-x[14])+(x[9]-x[15])*(x[9]-x[15]) >= 5.29)
@constraint(m, e21, (x[10]-x[12])*(x[10]-x[12])+(x[11]-x[13])*(x[11]-x[13]) >= 3.24)
@constraint(m, e22, (x[10]-x[14])*(x[10]-x[14])+(x[11]-x[15])*(x[11]-x[15]) >= 1.21)
@constraint(m, e23, (x[12]-x[14])*(x[12]-x[14])+(x[13]-x[15])*(x[13]-x[15]) >= 3.61)
@constraint(m, e24, x[2]-x[16] <= -1.2)
@constraint(m, e25, x[3]-x[17] <= -1.2)
@constraint(m, e26, x[4]-x[16] <= -0.6)
@NLconstraint(m, e27, x[5]-x[17] <= -0.6)
@constraint(m, e28, x[6]-x[16] <= -0.8)
@constraint(m, e29, x[7]-x[17] <= -0.8)
@constraint(m, e30, x[8]-x[16] <= -1.7)
@constraint(m, e31, x[9]-x[17] <= -1.7)
@constraint(m, e32, x[10]-x[16] <= -0.5)
@constraint(m, e33, x[11]-x[17] <= -0.5)
@constraint(m, e34, x[12]-x[16] <= -1.3)
@constraint(m, e35, x[13]-x[17] <= -1.3)
@constraint(m, e36, x[14]-x[16] <= -0.6)
@constraint(m, e37, x[15]-x[17] <= -0.6)
@constraint(m, e38, x[2] <= 4.0)
@constraint(m, e39, x[3] <= 2.0)
@constraint(m, e40, x[4]-x[14] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.
