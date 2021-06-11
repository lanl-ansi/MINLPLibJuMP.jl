using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 11.6*x[1]-1.645*sqrt( (0.4844*x[1])^2+ (0.3003*x[2])^2+ (0.1444*x[3])^2+ (0.0588*x[4])^2+ (4.9863*x[5])^2+ (0.0653*x[6])^2+ (21.0222*x[7])^2+ (0.297*x[11])^2+ (9.2933*x[12])^2)+13.7*x[2]+9.5*x[3]+48.5*x[4]+31.9*x[5]+51.1*x[6]+65.5*x[7]+21.8*x[11]+46.9*x[12] >= 18.0)
@NLconstraint(m, e2, 0.05*x[1]-1.645*sqrt( (0.0001*x[1])^2+ (0.004*x[6])^2+ (0.1404*x[7])^2+ (1.3631*x[8])^2+ (0.5138*x[9])^2+ (0.0289*x[10])^2+ (0.0097*x[11])^2+ (0.3893*x[12])^2)+1.27*x[6]+1.27*x[7]+23.35*x[8]+35.84*x[9]+0.81*x[10]+1.79*x[11]+7.34*x[12]+0.07*x[2]+0.33*x[4] >= 1.0)
@NLconstraint(m, e3, 0.35*x[1]-1.645*sqrt( (0.001*x[1])^2+ (0.0009*x[2])^2+ (0.0001*x[3])^2+ (0.0005*x[4])^2+ (0.0021*x[6])^2+ (0.0825*x[7])^2+ (0.2073*x[8])^2+ (0.0004*x[10])^2+ (0.0005*x[11])^2+ (0.0107*x[12])^2+ (1.0206*x[13])^2)+0.37*x[2]+0.1*x[3]+0.62*x[4]+1.03*x[6]+1.69*x[7]+18.21*x[8]+0.08*x[10]+0.31*x[11]+1.59*x[12]+22.45*x[13]+0.01*x[9] >= 0.9)
@constraint(m, e4, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13] == 1.0)
@constraint(m, e5, -0.8*x[1]-1.1*x[2]-0.85*x[3]-3.45*x[4]-2*x[5]-2.1*x[6]-3*x[7]-0.8*x[8]-0.45*x[9]-0.72*x[10]-1.8*x[11]-3*x[12]-0.6*x[13]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
