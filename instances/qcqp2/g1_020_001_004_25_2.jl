using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.12*x[2]*x[3]+1.62*x[2]*x[5]+1.76*x[2]*x[7]+1.4*x[2]*x[13]+1.1*x[2]*x[20]+1.48*x[3]*x[10]-0.04*x[3]*x[9]-0.66*x[3]*x[15]+1.54*x[3]*x[19]+(-1.06*x[4]*x[7])-1.66*x[4]*x[15]-1.5*x[4]*x[16]+1.66*x[4]*x[18]+1.28*x[5]*x[8]+1.28*x[5]*x[10]+1.52*x[5]*x[11]+0.28*x[5]*x[17]-0.3*x[5]*x[20]+0.46*x[6]*x[9]+1.88*x[6]*x[13]+0.04*x[6]*x[14]-0.74*x[6]*x[17]+0.28*x[6]*x[21]+1.12*x[7]*x[12]+0.6*x[8]*x[10]+0.6*x[8]*x[13]+1.7*x[8]*x[21]-1.5*x[9]*x[11]+0.28*x[10]*x[12]-1.98*x[10]*x[15]-1.34*x[10]*x[19]-1.58*x[10]*x[21]-1.46*x[11]*x[14]+(-0.42*x[12]*x[14])-0.44*x[12]*x[17]-0.58*x[13]*x[20]+0.48*x[14]*x[16]+0.1*x[14]*x[18]+0.62*x[14]*x[20]-1.74*x[14]*x[21]+0.98*x[15]*x[18]-0.24*x[15]*x[21]+0.14*x[16]*x[20]-1.34*x[16]*x[21]+1.88*x[18]*x[19]+0.14*x[18]*x[20]+1.68*x[19]*x[20]+0.92*x[4]*x[4]-0.02*x[6]*x[6]+0.72*x[17]*x[17]-0.22*x[2]-0.43*x[3]-0.11*x[4]-0.3*x[5]-0.61*x[6]+0.46*x[7]-0.65*x[8]+0.41*x[9]+0.4*x[10]+0.01*x[11]-0.94*x[12]+0.2*x[13]+0.69*x[14]-0.28*x[15]-0.11*x[16]-0.42*x[17]-0.05*x[18]-0.59*x[19]-0.57*x[20]+0.64*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.64*x[2]*x[4]-x[2]*x[3]-1.04*x[2]*x[19]+1.24*x[3]*x[13]-1.52*x[3]*x[4]+0.78*x[3]*x[15]-0.26*x[3]*x[18]-0.88*x[3]*x[19]-0.04*x[3]*x[21]+(-0.24*x[4]*x[9])-1.56*x[4]*x[15]+1.14*x[5]*x[12]-1.8*x[5]*x[6]+0.58*x[5]*x[13]+1.64*x[5]*x[14]+0.22*x[6]*x[8]-0.04*x[6]*x[10]+1.46*x[6]*x[20]+0.54*x[7]*x[8]+1.5*x[7]*x[9]+0.34*x[7]*x[10]+0.06*x[7]*x[12]-0.52*x[7]*x[20]+0.82*x[8]*x[12]-1.42*x[8]*x[9]+1.12*x[8]*x[16]-1.2*x[8]*x[21]+0.56*x[9]*x[18]-0.52*x[9]*x[10]-0.26*x[9]*x[19]-0.84*x[9]*x[20]+(-0.6*x[10]*x[14])-0.18*x[10]*x[17]+1.94*x[11]*x[13]-0.68*x[11]*x[12]-0.7*x[11]*x[14]+1.6*x[11]*x[15]+(-0.3*x[12]*x[15])-1.34*x[12]*x[17]+(-1.52*x[13]*x[15])-0.1*x[13]*x[16]-1.44*x[13]*x[20]+1.1*x[13]*x[21]+1.68*x[14]*x[16]-1.82*x[14]*x[17]-0.64*x[16]*x[20]-1.76*x[20]*x[21]+(-0.86*x[5]*x[5])-0.81*x[9]*x[9]-0.26*x[20]*x[20]+0.11*x[2]-0.53*x[3]-0.03*x[4]+0.9*x[5]+0.34*x[6]+0.64*x[7]+0.79*x[8]-0.76*x[9]+0.01*x[10]+0.83*x[11]+0.24*x[12]+0.55*x[13]+0.81*x[14]-0.94*x[15]+0.46*x[16]+0.27*x[17]+0.57*x[18]+0.43*x[19]+0.9*x[20]-0.12*x[21] <= 67.98)
@constraint(m, e3, 0.55*x[2]+0.59*x[3]-0.24*x[4]-0.35*x[5]-0.05*x[6]-0.82*x[7]-0.49*x[8]-0.58*x[9]-0.61*x[10]-0.61*x[11]-0.23*x[12]-0.15*x[13]-0.78*x[14]+0.61*x[15]+0.66*x[16]+0.11*x[17]+0.81*x[18]+0.06*x[19]-0.98*x[20]+0.77*x[21] == 0.6)
@constraint(m, e4, 0.77*x[2]-0.76*x[3]+0.6*x[4]+0.03*x[5]-0.17*x[6]+0.47*x[7]+0.3*x[8]+0.53*x[9]+0.4*x[10]-0.68*x[11]+0.27*x[12]+0.2*x[13]+0.1*x[14]+0.21*x[15]+0.12*x[16]+0.85*x[17]-0.67*x[18]-0.47*x[19]+0.54*x[20]+0.71*x[21] == 0.87)
@constraint(m, e5, -0.77*x[2]-0.03*x[3]-0.84*x[4]+0.45*x[5]-0.92*x[6]+0.82*x[7]+0.52*x[8]+0.49*x[9]-0.79*x[10]-0.42*x[11]+0.09*x[12]-0.7*x[13]-0.1*x[14]-0.02*x[15]-0.43*x[16]-0.86*x[17]+0.54*x[18]-0.96*x[19]-0.97*x[20]-0.61*x[21] == -0.95)
@constraint(m, e6, -0.02*x[2]+0.39*x[3]-0.52*x[4]+0.24*x[5]-0.89*x[6]+0.51*x[7]+0.93*x[8]-0.94*x[9]-0.37*x[10]+0.46*x[11]-0.75*x[12]-0.57*x[13]+0.45*x[14]-0.75*x[15]-0.38*x[16]+0.8*x[17]+0.89*x[18]-0.69*x[19]+0.12*x[20]+0.25*x[21] == 0.32)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
