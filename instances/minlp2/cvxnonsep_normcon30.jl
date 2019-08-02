using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
@variable(m, 0 <= x[x_Idx] <= 5)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, i[i_Idx] <= 5, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt(0.0001+ (i[1])^2+ (i[2])^2+ (i[3])^2+ (i[4])^2+ (i[5])^2+ (i[6])^2+ (i[7])^2+ (i[8])^2+ (i[9])^2+ (i[10])^2+ (i[11])^2+ (i[12])^2+ (i[13])^2+ (i[14])^2+ (i[15])^2+ (x[16])^2+ (x[17])^2+ (x[18])^2+ (x[19])^2+ (x[20])^2+ (x[21])^2+ (x[22])^2+ (x[23])^2+ (x[24])^2+ (x[25])^2+ (x[26])^2+ (x[27])^2+ (x[28])^2+ (x[29])^2+ (x[30])^2) <= 10.0)
@constraint(m, e2, -0.95*i[1]-0.92*i[2]-0.055*i[3]-0.74*i[4]-0.27*i[5]-0.42*i[6]-0.55*i[7]-0.945*i[8]-0.42*i[9]-0.985*i[10]-0.3*i[11]-0.7*i[12]-0.665*i[13]-0.54*i[14]-0.7*i[15]-0.665*x[16]-0.18*x[17]-0.13*x[18]-x[19]-0.17*x[20]-0.035*x[21]-0.56*x[22]-0.88*x[23]-0.67*x[24]-0.19*x[25]-0.37*x[26]-0.46*x[27]-0.98*x[28]-0.155*x[29]-0.855*x[30]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
