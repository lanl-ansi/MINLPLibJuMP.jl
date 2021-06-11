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
@NLconstraint(m, e1, -(0.72*x[2]*x[3]+1.98*x[2]*x[6]-0.66*x[2]*x[8]+0.16*x[2]*x[9]+1.4*x[2]*x[10]+0.94*x[2]*x[12]+0.88*x[2]*x[14]+0.68*x[2]*x[15]-0.34*x[2]*x[16]+1.5*x[3]*x[4]+1.36*x[3]*x[6]-0.06*x[3]*x[8]-0.26*x[3]*x[10]-1.02*x[3]*x[12]-1.92*x[3]*x[13]+1.62*x[3]*x[14]-0.68*x[3]*x[16]+1.4*x[4]*x[11]-0.6*x[4]*x[8]-0.18*x[4]*x[15]-0.42*x[4]*x[16]-0.1*x[4]*x[18]+1.74*x[4]*x[19]+0.54*x[5]*x[6]+0.66*x[5]*x[10]+0.38*x[5]*x[11]-0.6*x[5]*x[14]-0.4*x[5]*x[15]-0.8*x[5]*x[20]+1.86*x[5]*x[21]+(-0.7*x[6]*x[7])-1.64*x[6]*x[9]+1.42*x[6]*x[14]+0.84*x[6]*x[19]+0.94*x[6]*x[20]+0.52*x[6]*x[21]+(-0.14*x[7]*x[9])-0.5*x[7]*x[10]-0.14*x[7]*x[12]-0.8*x[7]*x[16]+0.32*x[7]*x[17]-1.38*x[7]*x[20]-0.44*x[7]*x[21]+1.96*x[8]*x[9]+1.22*x[8]*x[10]-1.74*x[8]*x[12]-1.22*x[8]*x[13]+0.58*x[8]*x[14]-1.12*x[8]*x[16]+0.82*x[8]*x[17]+0.88*x[8]*x[20]+0.1*x[9]*x[11]-0.62*x[9]*x[12]+0.7*x[9]*x[18]+0.14*x[10]*x[13]-1.5*x[10]*x[12]-0.24*x[10]*x[18]+1.8*x[10]*x[21]+(-1.7*x[11]*x[12])-1.78*x[11]*x[14]-0.52*x[11]*x[15]-1.56*x[11]*x[17]+0.64*x[11]*x[21]+1.04*x[12]*x[13]+0.24*x[12]*x[15]-1.96*x[12]*x[18]-0.08*x[12]*x[19]-0.2*x[12]*x[20]+1.36*x[13]*x[14]-1.46*x[13]*x[16]-1.42*x[13]*x[20]+1.1*x[14]*x[15]-0.36*x[14]*x[17]-1.42*x[14]*x[18]+0.74*x[14]*x[19]-0.9*x[14]*x[20]+0.98*x[14]*x[21]+(-1.06*x[15]*x[16])-0.48*x[15]*x[19]-x[15]*x[21]+0.74*x[16]*x[18]-1.14*x[16]*x[19]+0.38*x[16]*x[20]+0.44*x[17]*x[19]+1.6*x[19]*x[20]-1.54*x[19]*x[21]-0.38*x[20]*x[21]+0.32*x[2]*x[2]-0.39*x[5]*x[5]+0.92*x[6]*x[6]+0.13*x[7]*x[7]-0.61*x[8]*x[8]-0.48*x[11]*x[11]-0.57*x[12]*x[12]-0.57*x[13]*x[13]-0.11*x[14]*x[14]+0.51*x[15]*x[15]-0.93*x[18]*x[18]+0.77*x[19]*x[19]+0.97*x[21]*x[21]+0.24*x[2]-0.44*x[3]+0.83*x[4]-0.46*x[5]+0.54*x[6]+0.07*x[7]-0.78*x[8]-0.92*x[9]+0.76*x[10]+0.84*x[11]+0.36*x[12]-0.84*x[13]+0.79*x[14]-0.88*x[15]+0.34*x[16]+0.8*x[17]-0.41*x[18]+0.56*x[19]-0.32*x[20]+0.13*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 1.7*x[2]*x[11]-1.12*x[2]*x[9]+1.66*x[2]*x[12]-0.3*x[2]*x[13]+0.88*x[2]*x[14]+0.34*x[2]*x[15]+0.12*x[2]*x[17]-0.46*x[2]*x[18]-1.44*x[2]*x[19]+0.46*x[2]*x[20]+1.04*x[3]*x[4]+0.06*x[3]*x[7]-1.98*x[3]*x[8]+1.82*x[3]*x[10]+1.54*x[3]*x[12]-1.98*x[3]*x[15]+0.44*x[3]*x[21]+0.36*x[4]*x[6]-0.2*x[4]*x[7]+0.4*x[4]*x[8]-0.34*x[4]*x[9]-0.66*x[4]*x[11]+0.38*x[4]*x[12]-0.34*x[4]*x[15]+0.96*x[4]*x[16]+0.96*x[4]*x[18]+0.24*x[4]*x[19]+1.76*x[4]*x[20]+1.1*x[5]*x[7]-0.46*x[5]*x[11]-1.86*x[5]*x[12]+0.58*x[5]*x[14]-1.2*x[5]*x[16]-0.24*x[5]*x[17]+1.3*x[5]*x[21]+0.84*x[6]*x[8]-1.08*x[6]*x[7]+0.9*x[6]*x[9]+0.52*x[6]*x[12]+0.42*x[6]*x[13]+0.48*x[6]*x[17]+0.88*x[6]*x[19]+0.74*x[6]*x[21]+0.38*x[7]*x[8]-0.84*x[7]*x[9]+0.74*x[7]*x[10]+0.38*x[7]*x[14]-0.44*x[7]*x[17]+1.98*x[7]*x[20]+1.88*x[8]*x[9]-1.48*x[8]*x[10]-1.18*x[8]*x[11]+1.76*x[8]*x[14]+0.02*x[8]*x[19]+(-1.12*x[9]*x[16])-1.94*x[9]*x[18]+0.48*x[9]*x[19]+0.48*x[9]*x[20]+(-0.64*x[10]*x[14])-0.02*x[10]*x[17]-1.18*x[10]*x[18]-0.82*x[10]*x[19]+(-1.74*x[11]*x[13])-2*x[11]*x[14]-1.78*x[11]*x[16]+1.56*x[11]*x[20]-0.1*x[11]*x[21]+1.48*x[12]*x[13]-1.88*x[12]*x[16]-1.5*x[12]*x[17]-1.8*x[12]*x[20]-1.76*x[12]*x[21]+0.1*x[13]*x[14]+0.28*x[13]*x[15]+1.34*x[13]*x[17]-0.38*x[13]*x[19]+1.4*x[14]*x[15]+0.28*x[14]*x[16]+1.72*x[14]*x[19]-1.12*x[14]*x[21]+0.54*x[15]*x[16]-1.34*x[15]*x[18]+1.94*x[16]*x[19]-1.1*x[16]*x[17]-0.2*x[17]*x[18]+0.72*x[18]*x[20]+0.34*x[19]*x[21]+1.36*x[20]*x[21]+(-0.28*x[2]*x[2])-0.43*x[3]*x[3]-0.37*x[4]*x[4]+0.22*x[5]*x[5]+0.25*x[7]*x[7]+0.9*x[8]*x[8]-0.83*x[9]*x[9]+0.95*x[10]*x[10]+0.53*x[12]*x[12]+0.91*x[17]*x[17]-0.8*x[20]*x[20]+0.71*x[21]*x[21]-0.03*x[2]+0.5*x[3]-0.04*x[4]+0.36*x[5]-0.3*x[6]-0.52*x[7]+0.91*x[8]-0.97*x[9]+0.22*x[10]+0.2*x[11]-0.61*x[12]-0.82*x[13]+0.81*x[14]+0.09*x[15]-0.49*x[16]-0.62*x[17]-0.08*x[18]-0.03*x[19]-0.23*x[20]-0.54*x[21] <= 46.22)
@constraint(m, e3, -0.9*x[2]-0.94*x[3]-0.36*x[4]+0.08*x[5]-0.32*x[6]+0.37*x[7]-0.02*x[8]-0.41*x[9]-0.19*x[10]-0.58*x[11]-0.12*x[12]-0.01*x[13]-0.1*x[14]-0.38*x[15]+0.45*x[16]-0.39*x[17]+0.68*x[18]-0.73*x[19]+0.56*x[20]+0.87*x[21] == 0.85)
@constraint(m, e4, -0.17*x[2]-0.91*x[3]-0.52*x[4]+0.74*x[5]-0.71*x[6]+0.82*x[7]-0.67*x[8]-0.25*x[9]+0.01*x[10]+0.16*x[11]-0.8*x[12]-0.39*x[13]-0.09*x[14]+0.96*x[15]+0.15*x[16]-0.5*x[17]-0.77*x[18]-0.32*x[19]+0.06*x[20]-0.91*x[21] == -0.81)
@constraint(m, e5, 0.06*x[2]+0.19*x[3]+0.78*x[4]-0.32*x[5]-0.22*x[6]-0.91*x[7]-0.82*x[8]+0.16*x[9]-0.88*x[10]-0.83*x[11]-0.95*x[12]+0.86*x[13]+0.27*x[14]+0.9*x[15]-0.26*x[16]-0.46*x[17]+0.95*x[18]+0.62*x[19]+0.8*x[20]+0.18*x[21] == -0.02)
@constraint(m, e6, -0.3*x[2]-0.18*x[3]+0.5*x[4]+0.38*x[5]+0.58*x[6]+0.66*x[7]-0.38*x[8]+0.58*x[9]+0.98*x[10]-0.7*x[11]-0.16*x[12]-0.42*x[13]-0.06*x[14]-0.58*x[15]+0.77*x[16]+0.94*x[17]-0.16*x[18]+0.55*x[19]-0.47*x[20]+0.46*x[21] == 0.95)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
