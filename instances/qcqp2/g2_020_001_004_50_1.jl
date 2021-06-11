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
@NLconstraint(m, e1, -(0.38*x[2]*x[4]-0.6*x[2]*x[3]-0.18*x[2]*x[5]+0.22*x[2]*x[6]+0.2*x[2]*x[7]-0.76*x[2]*x[8]-0.22*x[2]*x[9]+0.16*x[2]*x[10]+0.16*x[2]*x[11]+0.42*x[2]*x[12]+0.36*x[2]*x[13]+0.06*x[2]*x[14]-0.02*x[2]*x[16]-0.26*x[2]*x[17]-0.28*x[2]*x[18]-0.06*x[2]*x[19]-0.16*x[2]*x[20]-0.14*x[2]*x[21]+0.02*x[3]*x[5]-0.3*x[3]*x[4]+0.26*x[3]*x[7]+0.22*x[3]*x[8]+0.34*x[3]*x[9]-0.06*x[3]*x[10]+0.26*x[3]*x[11]-0.2*x[3]*x[12]-0.02*x[3]*x[13]+0.04*x[3]*x[14]-0.56*x[3]*x[15]+0.3*x[3]*x[16]+0.08*x[3]*x[17]-0.5*x[3]*x[18]-0.06*x[3]*x[19]-0.02*x[3]*x[20]-0.3*x[3]*x[21]+(-0.28*x[4]*x[5])-0.24*x[4]*x[6]-0.02*x[4]*x[7]-0.46*x[4]*x[8]-0.24*x[4]*x[9]-0.12*x[4]*x[10]+0.26*x[4]*x[11]-0.1*x[4]*x[12]+0.08*x[4]*x[13]-0.1*x[4]*x[14]-0.2*x[4]*x[15]-0.04*x[4]*x[16]-0.06*x[4]*x[17]+0.42*x[4]*x[18]-0.54*x[4]*x[19]+0.4*x[4]*x[20]+0.3*x[4]*x[21]+(-0.3*x[5]*x[6])-0.38*x[5]*x[7]-0.08*x[5]*x[8]+0.04*x[5]*x[9]+0.14*x[5]*x[10]+0.18*x[5]*x[11]+0.28*x[5]*x[12]+0.16*x[5]*x[13]-0.1*x[5]*x[14]-0.14*x[5]*x[15]-0.08*x[5]*x[16]+0.66*x[5]*x[17]-0.06*x[5]*x[18]-0.34*x[5]*x[19]+0.04*x[5]*x[20]-0.14*x[5]*x[21]+0.02*x[6]*x[7]-0.14*x[6]*x[8]-0.06*x[6]*x[9]-0.28*x[6]*x[10]+0.04*x[6]*x[12]-0.28*x[6]*x[13]+0.04*x[6]*x[14]+0.16*x[6]*x[15]+0.18*x[6]*x[16]-0.12*x[6]*x[17]+0.58*x[6]*x[18]-0.08*x[6]*x[19]-0.02*x[6]*x[20]+0.34*x[6]*x[21]+0.2*x[7]*x[8]-0.08*x[7]*x[9]+0.04*x[7]*x[10]+0.1*x[7]*x[11]-0.04*x[7]*x[12]-0.54*x[7]*x[13]-0.8*x[7]*x[14]+0.24*x[7]*x[15]+0.3*x[7]*x[16]-0.2*x[7]*x[17]-0.38*x[7]*x[18]-0.46*x[7]*x[19]+0.36*x[7]*x[20]-0.3*x[7]*x[21]+0.46*x[8]*x[10]-0.34*x[8]*x[9]+0.16*x[8]*x[11]+0.16*x[8]*x[12]+0.16*x[8]*x[13]-0.04*x[8]*x[14]-0.28*x[8]*x[15]-0.44*x[8]*x[16]+0.18*x[8]*x[17]+0.38*x[8]*x[18]-0.08*x[8]*x[19]-0.04*x[8]*x[20]+0.42*x[8]*x[21]+0.08*x[9]*x[11]-0.36*x[9]*x[10]+0.28*x[9]*x[12]+0.1*x[9]*x[13]-0.2*x[9]*x[14]+0.3*x[9]*x[15]+0.22*x[9]*x[16]-0.14*x[9]*x[17]+0.38*x[9]*x[18]+0.02*x[9]*x[19]-0.14*x[9]*x[20]-0.06*x[9]*x[21]+0.18*x[10]*x[11]+0.04*x[10]*x[12]-0.1*x[10]*x[13]-0.14*x[10]*x[14]+0.52*x[10]*x[15]-0.26*x[10]*x[16]-0.18*x[10]*x[17]-0.26*x[10]*x[18]+0.16*x[10]*x[19]-0.12*x[10]*x[20]-0.54*x[10]*x[21]+(-0.1*x[11]*x[12])-0.22*x[11]*x[13]+0.08*x[11]*x[14]-0.32*x[11]*x[15]+0.12*x[11]*x[17]+0.3*x[11]*x[18]-0.5*x[11]*x[19]-0.92*x[11]*x[20]+0.04*x[11]*x[21]+0.44*x[12]*x[13]+0.08*x[12]*x[14]+0.22*x[12]*x[15]-0.44*x[12]*x[16]-0.68*x[12]*x[17]+0.36*x[12]*x[18]-0.32*x[12]*x[19]-0.18*x[12]*x[20]+0.02*x[13]*x[15]-0.3*x[13]*x[14]-0.36*x[13]*x[16]+0.24*x[13]*x[17]+0.48*x[13]*x[18]-0.14*x[13]*x[19]-0.12*x[13]*x[20]-0.18*x[13]*x[21]+0.08*x[14]*x[17]-0.4*x[14]*x[15]+0.28*x[14]*x[18]+0.3*x[14]*x[19]+0.28*x[14]*x[20]+0.24*x[14]*x[21]+0.22*x[15]*x[17]-0.14*x[15]*x[16]+0.32*x[15]*x[18]+0.18*x[15]*x[19]-0.16*x[15]*x[20]-0.38*x[15]*x[21]+0.26*x[16]*x[17]-0.2*x[16]*x[18]+0.18*x[16]*x[19]-0.12*x[16]*x[21]+0.1*x[17]*x[18]+0.22*x[17]*x[19]-0.18*x[17]*x[20]-0.12*x[17]*x[21]+0.32*x[18]*x[20]-0.44*x[18]*x[19]-0.24*x[18]*x[21]+0.04*x[19]*x[20]+0.58*x[19]*x[21]-0.12*x[20]*x[21]+(-0.23*x[2]*x[2])-0.06*x[3]*x[3]+0.07*x[4]*x[4]+0.25*x[5]*x[5]-0.24*x[6]*x[6]-0.12*x[7]*x[7]-0.11*x[8]*x[8]+0.01*x[9]*x[9]-0.17*x[10]*x[10]+0.06*x[11]*x[11]-0.33*x[12]*x[12]+0.23*x[13]*x[13]-0.05*x[14]*x[14]+0.09*x[15]*x[15]-0.4*x[16]*x[16]+0.16*x[17]*x[17]+0.02*x[18]*x[18]-0.19*x[20]*x[20]+0.26*x[21]*x[21]+0.24*x[2]-0.44*x[3]+0.83*x[4]-0.46*x[5]+0.54*x[6]+0.07*x[7]-0.78*x[8]-0.92*x[9]+0.76*x[10]+0.84*x[11]+0.36*x[12]-0.84*x[13]+0.79*x[14]-0.88*x[15]+0.34*x[16]+0.8*x[17]-0.41*x[18]+0.56*x[19]-0.32*x[20]+0.13*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, (-0.12*x[2]*x[3])-0.2*x[2]*x[4]+0.1*x[2]*x[5]+0.4*x[2]*x[6]+0.16*x[2]*x[7]+0.2*x[2]*x[8]-0.26*x[2]*x[11]+0.04*x[2]*x[12]+0.3*x[2]*x[14]-0.26*x[2]*x[15]+0.12*x[2]*x[16]+0.14*x[2]*x[17]+0.06*x[2]*x[18]-0.04*x[2]*x[19]+0.02*x[2]*x[20]+0.42*x[2]*x[21]+0.1*x[3]*x[4]+0.34*x[3]*x[5]+0.1*x[3]*x[6]-0.12*x[3]*x[7]+0.2*x[3]*x[8]+0.12*x[3]*x[9]-0.24*x[3]*x[10]+0.08*x[3]*x[11]-0.06*x[3]*x[12]+0.3*x[3]*x[13]-0.02*x[3]*x[14]+0.22*x[3]*x[15]+0.02*x[3]*x[16]-0.06*x[3]*x[17]-0.02*x[3]*x[18]-0.1*x[3]*x[19]-0.22*x[3]*x[20]+0.06*x[3]*x[21]+(-0.14*x[4]*x[6])-0.3*x[4]*x[7]+0.24*x[4]*x[8]+0.08*x[4]*x[9]+0.14*x[4]*x[10]+0.22*x[4]*x[11]+0.36*x[4]*x[12]+0.08*x[4]*x[13]+0.3*x[4]*x[14]+0.26*x[4]*x[15]+0.16*x[4]*x[16]+0.18*x[4]*x[17]-0.08*x[4]*x[19]-0.34*x[4]*x[20]-0.16*x[4]*x[21]+0.36*x[5]*x[6]+0.16*x[5]*x[7]+0.26*x[5]*x[8]-0.14*x[5]*x[9]+0.1*x[5]*x[10]-0.06*x[5]*x[11]+0.4*x[5]*x[12]-0.38*x[5]*x[13]-0.12*x[5]*x[14]+0.44*x[5]*x[15]-0.1*x[5]*x[16]+0.04*x[5]*x[17]+0.14*x[5]*x[18]+0.1*x[5]*x[19]-0.06*x[5]*x[20]-0.08*x[5]*x[21]+0.1*x[6]*x[7]+0.22*x[6]*x[8]-0.12*x[6]*x[9]-0.34*x[6]*x[10]-0.4*x[6]*x[11]+0.22*x[6]*x[12]+0.04*x[6]*x[13]+0.24*x[6]*x[14]+0.1*x[6]*x[15]-0.14*x[6]*x[16]-0.06*x[6]*x[17]-0.12*x[6]*x[18]-0.1*x[6]*x[19]-0.18*x[6]*x[20]-0.02*x[6]*x[21]+0.14*x[7]*x[10]-0.06*x[7]*x[9]-0.08*x[7]*x[11]+0.46*x[7]*x[13]+0.44*x[7]*x[14]+0.1*x[7]*x[15]+0.1*x[7]*x[16]+0.14*x[7]*x[17]+0.3*x[7]*x[18]+0.28*x[7]*x[19]+0.36*x[7]*x[20]+0.08*x[7]*x[21]+(-0.02*x[8]*x[9])-0.1*x[8]*x[10]-0.14*x[8]*x[11]-0.02*x[8]*x[12]+0.4*x[8]*x[13]+0.26*x[8]*x[14]+0.02*x[8]*x[15]+0.28*x[8]*x[16]+0.28*x[8]*x[17]-0.06*x[8]*x[18]+0.06*x[8]*x[19]+0.24*x[8]*x[20]+0.02*x[8]*x[21]+0.28*x[9]*x[11]-0.14*x[9]*x[10]-0.1*x[9]*x[12]+0.62*x[9]*x[13]+0.14*x[9]*x[14]-0.22*x[9]*x[15]+0.32*x[9]*x[16]+0.32*x[9]*x[17]+0.14*x[9]*x[18]-0.14*x[9]*x[19]-0.2*x[9]*x[20]+0.02*x[9]*x[21]+0.1*x[10]*x[11]-0.08*x[10]*x[12]+0.06*x[10]*x[13]+0.06*x[10]*x[14]-0.1*x[10]*x[15]+0.14*x[10]*x[16]-0.02*x[10]*x[18]+0.16*x[10]*x[19]+0.04*x[10]*x[20]+0.24*x[10]*x[21]+0.1*x[11]*x[12]+0.22*x[11]*x[13]+0.16*x[11]*x[14]+0.18*x[11]*x[15]+0.16*x[11]*x[16]+0.06*x[11]*x[17]+0.22*x[11]*x[18]+0.08*x[11]*x[19]+0.28*x[11]*x[20]+0.2*x[11]*x[21]+0.08*x[12]*x[14]-0.3*x[12]*x[13]+0.12*x[12]*x[15]-0.06*x[12]*x[16]+0.18*x[12]*x[17]+0.58*x[12]*x[18]+0.12*x[12]*x[19]-0.04*x[12]*x[20]-0.06*x[12]*x[21]+0.08*x[13]*x[14]+0.02*x[13]*x[15]-0.14*x[13]*x[16]+0.14*x[13]*x[17]-0.3*x[13]*x[18]-0.06*x[13]*x[19]+0.02*x[13]*x[20]+0.1*x[13]*x[21]+0.16*x[14]*x[15]-0.04*x[14]*x[16]+0.08*x[14]*x[17]-0.08*x[14]*x[18]+0.12*x[14]*x[19]+0.28*x[14]*x[20]+0.18*x[14]*x[21]+0.06*x[15]*x[17]-0.06*x[15]*x[16]-0.14*x[15]*x[18]+0.24*x[15]*x[19]+0.2*x[15]*x[20]+0.06*x[15]*x[21]+0.02*x[16]*x[17]+0.24*x[16]*x[18]-0.16*x[16]*x[19]+0.04*x[16]*x[20]+0.22*x[16]*x[21]+0.02*x[17]*x[18]-0.1*x[17]*x[19]-0.12*x[17]*x[21]+0.18*x[18]*x[20]+0.26*x[19]*x[20]+0.02*x[19]*x[21]-0.02*x[20]*x[21]+0.13*x[2]*x[2]+0.28*x[3]*x[3]+0.24*x[4]*x[4]+0.23*x[5]*x[5]+0.22*x[6]*x[6]+0.12*x[7]*x[7]-0.05*x[8]*x[8]+0.15*x[9]*x[9]+0.19*x[10]*x[10]+0.18*x[11]*x[11]+0.24*x[12]*x[12]+0.14*x[13]*x[13]+0.01*x[14]*x[14]+0.05*x[15]*x[15]+0.19*x[17]*x[17]+0.28*x[18]*x[18]+0.05*x[19]*x[19]+0.1*x[20]*x[20]+0.26*x[21]*x[21]-0.03*x[2]+0.5*x[3]-0.04*x[4]+0.36*x[5]-0.3*x[6]-0.52*x[7]+0.91*x[8]-0.97*x[9]+0.22*x[10]+0.2*x[11]-0.61*x[12]-0.82*x[13]+0.81*x[14]+0.09*x[15]-0.49*x[16]-0.62*x[17]-0.08*x[18]-0.03*x[19]-0.23*x[20]-0.54*x[21] <= 46.22)
@constraint(m, e3, -0.19*x[2]+0.34*x[3]+0.68*x[4]-0.77*x[5]-0.93*x[6]-0.07*x[7]-0.5*x[8]+0.7*x[9]-0.75*x[10]+0.49*x[11]+0.52*x[12]-0.51*x[13]+0.44*x[14]-0.39*x[15]+0.99*x[16]-0.03*x[17]-0.12*x[18]-0.94*x[19]-0.24*x[20]-0.61*x[21] == 0.36)
@constraint(m, e4, -0.42*x[2]-0.6*x[3]+0.96*x[4]-0.32*x[5]+0.68*x[6]+0.94*x[7]+0.82*x[8]-0.97*x[9]-0.23*x[10]-0.28*x[11]-0.7*x[12]-0.64*x[13]-0.51*x[14]+0.42*x[15]+0.72*x[16]-0.01*x[17]+0.74*x[18]-0.51*x[19]-0.31*x[20]-0.5*x[21] == -0.71)
@constraint(m, e5, -0.95*x[2]+0.16*x[3]+0.96*x[4]+0.42*x[5]-0.54*x[6]+0.1*x[7]+0.93*x[8]+0.19*x[9]-0.05*x[10]-0.63*x[11]-0.75*x[12]+0.69*x[13]-0.54*x[14]+0.13*x[15]+0.45*x[16]-0.08*x[17]+0.33*x[18]+0.37*x[19]+0.32*x[20]+0.64*x[21] == 0.13)
@constraint(m, e6, -0.39*x[2]-0.68*x[3]+0.53*x[4]-0.75*x[5]+0.88*x[6]-0.05*x[7]+0.91*x[8]-0.62*x[9]-0.75*x[10]+0.65*x[11]+0.13*x[12]-0.19*x[13]+0.72*x[14]-0.21*x[15]+0.88*x[16]+0.25*x[17]+0.26*x[18]-0.58*x[19]+0.53*x[20]-0.77*x[21] == -0.71)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
