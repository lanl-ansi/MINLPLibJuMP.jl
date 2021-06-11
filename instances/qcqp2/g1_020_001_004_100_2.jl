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
@NLconstraint(m, e1, -(1.12*x[2]*x[3]+1.62*x[2]*x[4]+1.76*x[2]*x[5]+1.32*x[2]*x[6]+0.42*x[2]*x[7]+1.3*x[2]*x[8]+1.5*x[2]*x[9]+0.16*x[2]*x[10]+1.4*x[2]*x[12]+0.32*x[2]*x[13]-1.86*x[2]*x[14]+0.08*x[2]*x[15]+0.56*x[2]*x[16]+1.1*x[2]*x[17]-0.04*x[2]*x[18]-0.2*x[2]*x[19]-1.86*x[2]*x[20]+(-1.98*x[3]*x[4])-1.42*x[3]*x[5]-1.1*x[3]*x[6]-0.04*x[3]*x[7]+1.48*x[3]*x[8]+0.12*x[3]*x[9]-1.62*x[3]*x[10]+1.02*x[3]*x[11]+1.04*x[3]*x[12]-1.3*x[3]*x[13]+0.42*x[3]*x[14]-0.96*x[3]*x[15]-0.88*x[3]*x[16]+0.66*x[3]*x[17]-0.66*x[3]*x[18]+0.62*x[3]*x[19]+1.06*x[3]*x[20]+1.54*x[3]*x[21]+1.84*x[4]*x[5]-0.82*x[4]*x[6]+1.58*x[4]*x[7]-1.06*x[4]*x[9]+1.26*x[4]*x[10]-0.54*x[4]*x[11]+1.82*x[4]*x[12]-0.12*x[4]*x[13]-1.6*x[4]*x[14]+1.82*x[4]*x[15]+0.44*x[4]*x[16]-1.66*x[4]*x[17]-0.12*x[4]*x[18]-1.5*x[4]*x[19]+1.66*x[4]*x[21]+(-1.9*x[5]*x[6])-1.76*x[5]*x[7]+1.8*x[5]*x[8]+0.72*x[5]*x[9]+1.9*x[5]*x[10]+1.28*x[5]*x[11]-1.86*x[5]*x[12]+0.4*x[5]*x[13]+1.28*x[5]*x[14]-0.92*x[5]*x[15]-0.04*x[5]*x[16]-0.56*x[5]*x[17]+1.96*x[5]*x[18]+0.02*x[5]*x[19]+0.96*x[5]*x[20]-0.28*x[5]*x[21]+1.52*x[6]*x[8]-1.38*x[6]*x[7]+0.02*x[6]*x[9]-1.88*x[6]*x[10]+0.28*x[6]*x[12]-0.14*x[6]*x[13]+1.76*x[6]*x[14]-1.74*x[6]*x[15]-0.3*x[6]*x[16]-0.04*x[6]*x[17]-0.04*x[6]*x[18]-1.72*x[6]*x[19]+1.22*x[6]*x[20]-1.36*x[6]*x[21]+1.88*x[7]*x[9]-1.5*x[7]*x[8]+0.04*x[7]*x[10]-0.36*x[7]*x[11]-0.74*x[7]*x[12]+0.78*x[7]*x[13]-1.6*x[7]*x[14]+0.38*x[7]*x[15]+1.4*x[7]*x[16]+1.38*x[7]*x[17]+0.28*x[7]*x[18]+1.12*x[7]*x[20]-0.42*x[7]*x[21]+1.88*x[8]*x[10]-1.38*x[8]*x[9]-0.72*x[8]*x[11]+0.62*x[8]*x[12]+0.8*x[8]*x[13]+0.6*x[8]*x[14]-0.9*x[8]*x[15]+x[8]*x[16]+0.6*x[8]*x[17]+1.84*x[8]*x[18]+0.54*x[8]*x[19]+1.46*x[8]*x[21]+2*x[9]*x[10]+0.48*x[9]*x[11]-1.04*x[9]*x[12]+0.26*x[9]*x[13]+1.52*x[9]*x[14]-1.5*x[9]*x[15]+0.06*x[9]*x[16]-1.22*x[9]*x[17]+0.42*x[9]*x[18]+0.28*x[9]*x[20]-0.92*x[9]*x[21]+1.12*x[10]*x[11]-0.88*x[10]*x[12]-1.34*x[10]*x[13]+0.72*x[10]*x[14]-1.58*x[10]*x[15]-1.46*x[10]*x[16]-1.68*x[10]*x[17]+0.98*x[10]*x[18]+0.26*x[10]*x[19]+1.44*x[10]*x[20]+0.86*x[10]*x[21]+0.16*x[11]*x[12]-0.16*x[11]*x[13]-0.52*x[11]*x[14]+0.66*x[11]*x[15]+0.02*x[11]*x[16]+1.44*x[11]*x[17]-0.42*x[11]*x[18]+0.58*x[11]*x[19]+0.48*x[11]*x[20]-1.16*x[11]*x[21]+(-0.56*x[12]*x[13])-1.06*x[12]*x[14]+0.18*x[12]*x[15]+0.04*x[12]*x[16]+0.02*x[12]*x[17]-1.96*x[12]*x[18]+0.62*x[12]*x[19]-0.58*x[12]*x[21]+(-1.28*x[13]*x[14])-1.02*x[13]*x[15]-0.04*x[13]*x[16]+0.48*x[13]*x[17]+0.1*x[13]*x[18]-1.54*x[13]*x[19]+0.62*x[13]*x[20]-1.74*x[13]*x[21]+(-0.34*x[14]*x[15])-0.3*x[14]*x[16]+0.44*x[14]*x[17]-1.78*x[14]*x[18]+0.98*x[14]*x[19]+0.9*x[14]*x[20]-0.24*x[14]*x[21]+0.16*x[15]*x[17]-1.62*x[15]*x[16]+0.64*x[15]*x[18]+1.06*x[15]*x[19]+1.16*x[15]*x[20]+1.04*x[16]*x[17]+0.1*x[16]*x[18]+0.14*x[16]*x[19]-0.6*x[16]*x[20]-1.34*x[16]*x[21]+1.2*x[17]*x[18]+1.18*x[17]*x[19]-0.34*x[17]*x[20]+1.44*x[17]*x[21]+0.42*x[18]*x[19]+1.88*x[18]*x[20]+0.14*x[18]*x[21]+(-1.8*x[19]*x[20])-0.02*x[19]*x[21]+1.96*x[20]*x[21]+(-0.89*x[2]*x[2])-0.05*x[3]*x[3]-0.15*x[4]*x[4]+0.26*x[5]*x[5]-0.25*x[6]*x[6]+0.23*x[7]*x[7]-0.13*x[8]*x[8]+0.85*x[9]*x[9]-0.99*x[10]*x[10]-0.2*x[11]*x[11]-0.22*x[12]*x[12]-0.79*x[13]*x[13]-0.76*x[14]*x[14]+0.12*x[15]*x[15]+0.52*x[16]*x[16]-0.56*x[17]*x[17]+0.17*x[18]*x[18]-0.26*x[19]*x[19]+0.84*x[20]*x[20]-0.22*x[2]-0.43*x[3]-0.11*x[4]-0.3*x[5]-0.61*x[6]+0.46*x[7]-0.65*x[8]+0.41*x[9]+0.4*x[10]+0.01*x[11]-0.94*x[12]+0.2*x[13]+0.69*x[14]-0.28*x[15]-0.11*x[16]-0.42*x[17]-0.05*x[18]-0.59*x[19]-0.57*x[20]+0.64*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 1.6*x[2]*x[3]+0.72*x[2]*x[4]+0.54*x[2]*x[5]+1.12*x[2]*x[6]+1.32*x[2]*x[7]-1.6*x[2]*x[8]-1.22*x[2]*x[9]-0.8*x[2]*x[10]-1.78*x[2]*x[11]-0.04*x[2]*x[12]+1.08*x[2]*x[13]-1.94*x[2]*x[16]+1.7*x[2]*x[17]+0.24*x[2]*x[18]+1.24*x[2]*x[19]-1.02*x[2]*x[20]+1.54*x[2]*x[21]+1.62*x[3]*x[5]+0.2*x[3]*x[6]-1.04*x[3]*x[7]+0.86*x[3]*x[8]-0.52*x[3]*x[9]-0.94*x[3]*x[10]-1.08*x[3]*x[11]+1.02*x[3]*x[12]+1.32*x[3]*x[13]+1.32*x[3]*x[14]+1.3*x[3]*x[15]+1.06*x[3]*x[16]+1.68*x[3]*x[17]-1.88*x[3]*x[18]-0.34*x[3]*x[19]-0.62*x[3]*x[20]-1.68*x[3]*x[21]+1.78*x[4]*x[5]-0.3*x[4]*x[6]+1.18*x[4]*x[7]+0.22*x[4]*x[8]-1.96*x[4]*x[9]+0.6*x[4]*x[10]-0.44*x[4]*x[11]-1.18*x[4]*x[12]-0.7*x[4]*x[13]+0.72*x[4]*x[14]+1.74*x[4]*x[15]+1.94*x[4]*x[16]-1.78*x[4]*x[17]-1.14*x[4]*x[18]+1.26*x[4]*x[19]-1.58*x[4]*x[20]+0.24*x[4]*x[21]+1.06*x[5]*x[7]-1.14*x[5]*x[6]+0.2*x[5]*x[8]-1.68*x[5]*x[9]+0.9*x[5]*x[10]-1.24*x[5]*x[11]-0.74*x[5]*x[13]+0.18*x[5]*x[14]-0.84*x[5]*x[15]+1.18*x[5]*x[16]+0.6*x[5]*x[17]-1.08*x[5]*x[18]-0.78*x[5]*x[19]+0.78*x[5]*x[20]-1.64*x[5]*x[21]+0.32*x[6]*x[8]-1.32*x[6]*x[7]-1.5*x[6]*x[9]+1.74*x[6]*x[10]-0.1*x[6]*x[11]-0.04*x[6]*x[12]-0.9*x[6]*x[13]+1.1*x[6]*x[14]+0.76*x[6]*x[15]-1.22*x[6]*x[16]-0.76*x[6]*x[17]+0.74*x[6]*x[18]+1.08*x[6]*x[19]-0.2*x[6]*x[20]+0.56*x[6]*x[21]+1.34*x[7]*x[9]-1.34*x[7]*x[8]-1.22*x[7]*x[10]-1.54*x[7]*x[11]+0.12*x[7]*x[12]-1.16*x[7]*x[13]+0.12*x[7]*x[14]+0.6*x[7]*x[15]-0.08*x[7]*x[16]-1.76*x[7]*x[17]-1.84*x[7]*x[18]+0.16*x[7]*x[19]+0.9*x[7]*x[20]+1.54*x[7]*x[21]+1.54*x[8]*x[9]-0.06*x[8]*x[10]-0.96*x[8]*x[11]-0.74*x[8]*x[12]+0.98*x[8]*x[13]-1.4*x[8]*x[14]+0.5*x[8]*x[15]-0.74*x[8]*x[16]-1.9*x[8]*x[17]+1.32*x[8]*x[18]-1.92*x[8]*x[19]+0.14*x[8]*x[20]+(-1.72*x[9]*x[10])-1.1*x[9]*x[11]-0.12*x[9]*x[12]+0.18*x[9]*x[13]-0.54*x[9]*x[14]-1.34*x[9]*x[15]+0.68*x[9]*x[16]+1.2*x[9]*x[17]+0.42*x[9]*x[18]+0.24*x[9]*x[19]+1.94*x[9]*x[20]+0.24*x[9]*x[21]+0.34*x[10]*x[11]+0.4*x[10]*x[12]-0.98*x[10]*x[13]+0.62*x[10]*x[14]-1.14*x[10]*x[15]-1.64*x[10]*x[16]+0.8*x[10]*x[17]+1.64*x[10]*x[18]+0.06*x[10]*x[19]-0.46*x[10]*x[20]+1.24*x[10]*x[21]+0.8*x[11]*x[12]+0.96*x[11]*x[13]+1.92*x[11]*x[14]+2*x[11]*x[15]+0.06*x[11]*x[16]+1.2*x[11]*x[17]-1.62*x[11]*x[18]-1.5*x[11]*x[19]-0.54*x[11]*x[20]+0.76*x[11]*x[21]+1.24*x[12]*x[13]-1.56*x[12]*x[14]+1.78*x[12]*x[15]-1.52*x[12]*x[16]-1.14*x[12]*x[17]+0.92*x[12]*x[18]-0.96*x[12]*x[19]-1.08*x[12]*x[20]+0.64*x[12]*x[21]+(-1.36*x[13]*x[14])-1.38*x[13]*x[15]+1.32*x[13]*x[16]-1.9*x[13]*x[17]+1.86*x[13]*x[18]+0.12*x[13]*x[19]+0.24*x[13]*x[20]-1.58*x[13]*x[21]+0.94*x[14]*x[15]+0.22*x[14]*x[16]-0.2*x[14]*x[17]+0.38*x[14]*x[18]-0.06*x[14]*x[19]-1.92*x[14]*x[21]+1.82*x[15]*x[16]+1.22*x[15]*x[19]-0.8*x[15]*x[20]-1.98*x[15]*x[21]+1.42*x[16]*x[17]+0.48*x[16]*x[19]-1.8*x[16]*x[20]+0.6*x[16]*x[21]+(-1.6*x[17]*x[18])-0.84*x[17]*x[19]+1.08*x[17]*x[20]-0.52*x[17]*x[21]+(-0.98*x[18]*x[19])-0.94*x[18]*x[20]+0.94*x[18]*x[21]+1.2*x[19]*x[21]-0.86*x[19]*x[20]-0.48*x[20]*x[21]+0.68*x[3]*x[3]-0.4*x[2]*x[2]-0.19*x[4]*x[4]-0.42*x[5]*x[5]-0.37*x[6]*x[6]+0.13*x[7]*x[7]-0.43*x[8]*x[8]+0.43*x[9]*x[9]+0.52*x[10]*x[10]-0.25*x[11]*x[11]+0.29*x[12]*x[12]-0.98*x[13]*x[13]-0.5*x[14]*x[14]+0.83*x[15]*x[15]-0.77*x[16]*x[16]+0.85*x[18]*x[18]+0.42*x[19]*x[19]-0.05*x[20]*x[20]+0.42*x[21]*x[21]+0.11*x[2]-0.53*x[3]-0.03*x[4]+0.9*x[5]+0.34*x[6]+0.64*x[7]+0.79*x[8]-0.76*x[9]+0.01*x[10]+0.83*x[11]+0.24*x[12]+0.55*x[13]+0.81*x[14]-0.94*x[15]+0.46*x[16]+0.27*x[17]+0.57*x[18]+0.43*x[19]+0.9*x[20]-0.12*x[21] <= 67.98)
@constraint(m, e3, -0.57*x[2]-0.73*x[3]-0.29*x[4]-0.86*x[5]+0.29*x[6]-0.86*x[7]+0.1*x[8]-0.95*x[9]+0.17*x[10]+0.39*x[11]-0.75*x[12]-0.64*x[13]-0.87*x[14]-0.92*x[15]+0.13*x[16]+0.48*x[17]+0.28*x[18]+0.29*x[19]-0.85*x[20]-0.59*x[21] == 0.84)
@constraint(m, e4, 0.4*x[2]-0.8*x[3]+0.05*x[4]-0.04*x[5]-0.6*x[6]-0.43*x[7]-0.12*x[8]+0.76*x[9]+0.54*x[10]-0.32*x[11]-0.96*x[12]+0.74*x[13]+0.59*x[14]-0.83*x[15]+0.31*x[16]-0.1*x[17]-0.42*x[18]-0.62*x[19]-0.8*x[20]+0.61*x[21] == 0.06)
@constraint(m, e5, 0.23*x[2]+0.31*x[3]-0.95*x[4]+0.58*x[5]-0.73*x[6]-x[7]-0.45*x[8]+0.44*x[9]-0.19*x[10]+0.96*x[11]+0.83*x[12]+0.48*x[13]-0.31*x[14]-0.45*x[15]-0.64*x[16]+0.56*x[17]+0.96*x[18]+0.74*x[19]+0.19*x[20]+0.71*x[21] == 0.97)
@constraint(m, e6, -0.43*x[2]+0.22*x[3]-0.51*x[4]-0.75*x[5]-0.51*x[6]-0.62*x[7]-0.38*x[8]-0.64*x[9]-0.16*x[10]+0.67*x[11]-0.74*x[12]+0.25*x[13]-0.2*x[14]+0.5*x[15]+0.34*x[16]+0.6*x[17]+0.55*x[18]+0.74*x[19]+0.51*x[20]+0.17*x[21] == -0.08)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
