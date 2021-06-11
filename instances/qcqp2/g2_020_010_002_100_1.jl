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
@NLconstraint(m, e1, -(0.16*x[2]*x[3]+0.26*x[2]*x[4]-0.04*x[2]*x[5]-0.18*x[2]*x[6]-0.14*x[2]*x[7]-0.04*x[2]*x[8]+0.04*x[2]*x[9]-0.2*x[2]*x[10]-0.02*x[2]*x[11]-0.14*x[2]*x[12]+0.02*x[2]*x[13]-0.04*x[2]*x[14]-0.18*x[2]*x[15]-0.02*x[2]*x[16]+0.32*x[2]*x[17]-0.1*x[2]*x[19]+0.02*x[2]*x[20]+0.24*x[2]*x[21]+0.12*x[3]*x[5]-0.2*x[3]*x[4]-0.34*x[3]*x[6]-0.06*x[3]*x[7]-0.08*x[3]*x[8]+0.12*x[3]*x[9]+0.18*x[3]*x[10]+0.06*x[3]*x[11]-0.08*x[3]*x[12]-0.18*x[3]*x[13]-0.04*x[3]*x[14]+0.2*x[3]*x[15]+0.2*x[3]*x[16]+0.08*x[3]*x[18]+0.16*x[3]*x[19]-0.02*x[3]*x[20]-0.04*x[3]*x[21]+0.14*x[4]*x[6]-0.16*x[4]*x[5]+0.04*x[4]*x[7]-0.1*x[4]*x[8]+0.3*x[4]*x[9]-0.02*x[4]*x[10]+0.16*x[4]*x[11]-0.1*x[4]*x[12]+0.06*x[4]*x[13]+0.08*x[4]*x[14]+0.14*x[4]*x[15]-0.14*x[4]*x[16]-0.04*x[4]*x[17]+0.2*x[4]*x[18]+0.22*x[4]*x[19]+0.2*x[4]*x[20]+0.02*x[4]*x[21]+0.04*x[5]*x[6]+0.18*x[5]*x[8]-0.06*x[5]*x[9]-0.32*x[5]*x[10]+0.06*x[5]*x[11]-0.04*x[5]*x[12]+0.18*x[5]*x[14]+0.1*x[5]*x[15]+0.36*x[5]*x[16]-0.22*x[5]*x[17]+0.06*x[5]*x[18]+0.06*x[5]*x[19]+0.24*x[5]*x[20]+0.14*x[5]*x[21]+0.06*x[6]*x[8]-0.04*x[6]*x[7]+0.1*x[6]*x[9]+0.08*x[6]*x[10]-0.26*x[6]*x[11]-0.02*x[6]*x[12]+0.08*x[6]*x[13]+0.12*x[6]*x[14]+0.02*x[6]*x[15]-0.22*x[6]*x[16]+0.02*x[6]*x[17]+0.18*x[6]*x[18]+0.22*x[6]*x[19]+0.12*x[6]*x[20]+0.04*x[6]*x[21]+0.08*x[7]*x[9]-0.1*x[7]*x[8]+0.02*x[7]*x[10]-0.08*x[7]*x[11]+0.06*x[7]*x[12]-0.14*x[7]*x[13]-0.06*x[7]*x[14]+0.38*x[7]*x[15]+0.06*x[7]*x[16]+0.16*x[7]*x[17]+0.1*x[7]*x[18]-0.08*x[7]*x[19]+0.02*x[7]*x[20]-0.08*x[7]*x[21]+0.12*x[8]*x[9]-0.18*x[8]*x[10]+0.08*x[8]*x[11]+0.28*x[8]*x[12]-0.14*x[8]*x[13]+0.32*x[8]*x[14]+0.1*x[8]*x[15]+0.04*x[8]*x[16]+0.24*x[8]*x[17]+0.08*x[8]*x[18]+0.14*x[8]*x[19]-0.28*x[8]*x[20]-0.12*x[8]*x[21]+0.14*x[9]*x[10]-0.08*x[9]*x[11]-0.04*x[9]*x[12]-0.16*x[9]*x[13]+0.12*x[9]*x[14]-0.1*x[9]*x[15]+0.08*x[9]*x[16]+0.3*x[9]*x[18]-0.14*x[9]*x[19]-0.12*x[9]*x[20]-0.06*x[9]*x[21]+0.4*x[10]*x[11]-0.02*x[10]*x[12]+0.08*x[10]*x[13]+0.14*x[10]*x[14]-0.18*x[10]*x[15]+0.08*x[10]*x[16]+0.04*x[10]*x[17]+0.1*x[10]*x[18]+0.14*x[10]*x[19]-0.2*x[10]*x[20]+0.06*x[10]*x[21]+0.18*x[11]*x[12]+0.02*x[11]*x[13]+0.1*x[11]*x[14]+0.08*x[11]*x[15]+0.06*x[11]*x[16]+0.22*x[11]*x[17]-0.06*x[11]*x[18]+0.18*x[11]*x[19]+0.18*x[11]*x[20]+0.1*x[11]*x[21]+(-0.04*x[12]*x[13])-0.14*x[12]*x[14]-0.22*x[12]*x[15]+0.02*x[12]*x[16]+0.04*x[12]*x[17]+0.12*x[12]*x[18]-0.16*x[12]*x[19]+0.2*x[12]*x[20]+0.12*x[12]*x[21]+0.22*x[13]*x[14]-0.08*x[13]*x[15]+0.18*x[13]*x[16]+0.26*x[13]*x[17]-0.18*x[13]*x[19]+0.26*x[13]*x[20]-0.24*x[13]*x[21]+0.04*x[14]*x[16]-0.14*x[14]*x[17]+0.04*x[14]*x[18]-0.1*x[14]*x[19]-0.12*x[14]*x[20]+0.1*x[14]*x[21]+0.18*x[15]*x[16]+0.1*x[15]*x[17]+0.04*x[15]*x[18]+0.18*x[15]*x[19]+0.18*x[15]*x[20]+0.02*x[15]*x[21]+0.04*x[16]*x[17]+0.1*x[16]*x[18]-0.3*x[16]*x[19]+0.06*x[16]*x[20]+0.1*x[16]*x[21]+0.06*x[17]*x[18]+0.04*x[17]*x[19]-0.04*x[17]*x[20]+0.06*x[17]*x[21]+0.08*x[18]*x[20]-0.14*x[18]*x[19]+0.26*x[18]*x[21]+0.02*x[19]*x[20]+0.1*x[19]*x[21]+0.08*x[20]*x[21]+(-0.46*x[2]*x[2])-0.47*x[3]*x[3]-0.52*x[4]*x[4]-0.48*x[5]*x[5]-0.45*x[6]*x[6]-0.41*x[7]*x[7]-0.42*x[8]*x[8]-0.51*x[9]*x[9]-0.43*x[10]*x[10]-0.62*x[11]*x[11]-0.36*x[12]*x[12]-0.42*x[13]*x[13]-0.41*x[14]*x[14]-0.54*x[15]*x[15]-0.65*x[16]*x[16]-0.35*x[17]*x[17]-0.46*x[18]*x[18]-0.36*x[19]*x[19]-0.43*x[20]*x[20]-0.36*x[21]*x[21]-0.18*x[2]+0.83*x[3]-0.73*x[4]+0.09*x[5]-0.66*x[6]+0.15*x[7]-0.81*x[8]-0.08*x[9]+0.23*x[10]+0.87*x[11]+0.9*x[12]+0.15*x[13]+0.62*x[14]-0.08*x[15]+0.39*x[16]+0.55*x[17]-0.94*x[18]+0.27*x[19]+0.95*x[20]-0.84*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.16*x[2]*x[4]-0.26*x[2]*x[3]+0.04*x[2]*x[5]+0.04*x[2]*x[6]+0.02*x[2]*x[7]+0.06*x[2]*x[8]+0.04*x[2]*x[9]-0.04*x[2]*x[10]+0.04*x[2]*x[11]+0.22*x[2]*x[12]-0.02*x[2]*x[13]+0.12*x[2]*x[14]+0.16*x[2]*x[15]-0.02*x[2]*x[16]+0.1*x[2]*x[17]+0.04*x[2]*x[18]+0.02*x[2]*x[20]+0.06*x[3]*x[4]+0.1*x[3]*x[5]-0.24*x[3]*x[6]+0.04*x[3]*x[7]+0.2*x[3]*x[8]-0.12*x[3]*x[9]-0.08*x[3]*x[10]-0.02*x[3]*x[11]+0.1*x[3]*x[12]+0.06*x[3]*x[13]+0.18*x[3]*x[14]+0.02*x[3]*x[15]-0.18*x[3]*x[16]+0.04*x[3]*x[17]+0.08*x[3]*x[18]+0.22*x[3]*x[19]-0.04*x[3]*x[20]+0.16*x[3]*x[21]+0.12*x[4]*x[5]-0.06*x[4]*x[6]+0.06*x[4]*x[7]+0.04*x[4]*x[8]-0.02*x[4]*x[9]+0.06*x[4]*x[10]+0.16*x[4]*x[12]+0.08*x[4]*x[13]-0.24*x[4]*x[14]-0.14*x[4]*x[15]-0.1*x[4]*x[16]-0.04*x[4]*x[17]-0.06*x[4]*x[18]-0.12*x[4]*x[19]+0.04*x[4]*x[20]-0.06*x[4]*x[21]+0.02*x[5]*x[6]+0.02*x[5]*x[7]-0.02*x[5]*x[8]+0.26*x[5]*x[9]+0.22*x[5]*x[10]-0.04*x[5]*x[11]+0.08*x[5]*x[12]+0.12*x[5]*x[13]+0.1*x[5]*x[14]+0.06*x[5]*x[15]+0.04*x[5]*x[17]+0.2*x[5]*x[18]+0.06*x[5]*x[19]+0.18*x[5]*x[20]+0.16*x[5]*x[21]+0.12*x[6]*x[7]+0.24*x[6]*x[8]+0.1*x[6]*x[9]-0.06*x[6]*x[10]+0.3*x[6]*x[11]-0.18*x[6]*x[12]+0.22*x[6]*x[13]-0.06*x[6]*x[14]+0.08*x[6]*x[15]+0.16*x[6]*x[16]-0.08*x[6]*x[17]+0.06*x[6]*x[18]-0.1*x[6]*x[19]-0.04*x[6]*x[20]+0.06*x[6]*x[21]+0.02*x[7]*x[8]-0.1*x[7]*x[9]-0.08*x[7]*x[10]-0.02*x[7]*x[11]+0.02*x[7]*x[12]+0.06*x[7]*x[13]+0.04*x[7]*x[14]+0.24*x[7]*x[15]+0.12*x[7]*x[16]+0.12*x[7]*x[17]+0.12*x[7]*x[18]-0.02*x[7]*x[19]-0.06*x[7]*x[20]-0.06*x[7]*x[21]+0.04*x[8]*x[9]-0.12*x[8]*x[10]-0.08*x[8]*x[11]+0.04*x[8]*x[12]+0.02*x[8]*x[13]+0.04*x[8]*x[14]+0.08*x[8]*x[15]+0.02*x[8]*x[16]-0.04*x[8]*x[17]-0.06*x[8]*x[18]-0.1*x[8]*x[19]+0.26*x[8]*x[20]+0.04*x[8]*x[21]+0.02*x[9]*x[10]+0.06*x[9]*x[11]-0.04*x[9]*x[12]+0.22*x[9]*x[13]-0.08*x[9]*x[14]-0.08*x[9]*x[15]+0.18*x[9]*x[16]+0.04*x[9]*x[17]-0.08*x[9]*x[18]+0.1*x[9]*x[20]+0.14*x[9]*x[21]+0.02*x[10]*x[11]+0.12*x[10]*x[12]-0.08*x[10]*x[13]+0.02*x[10]*x[14]+0.08*x[10]*x[16]+0.04*x[10]*x[17]+0.1*x[10]*x[18]-0.08*x[10]*x[19]+0.06*x[10]*x[20]+0.02*x[10]*x[21]+0.04*x[11]*x[12]+0.18*x[11]*x[13]-0.1*x[11]*x[14]-0.02*x[11]*x[15]+0.12*x[11]*x[16]+0.08*x[11]*x[17]+0.16*x[11]*x[19]+0.1*x[11]*x[20]-0.12*x[11]*x[21]+0.12*x[12]*x[13]+0.02*x[12]*x[14]-0.04*x[12]*x[15]+0.04*x[12]*x[16]+0.14*x[12]*x[17]+0.18*x[12]*x[18]-0.06*x[12]*x[19]-0.1*x[12]*x[20]-0.06*x[12]*x[21]+0.02*x[13]*x[14]+0.12*x[13]*x[15]-0.1*x[13]*x[16]-0.16*x[13]*x[17]+0.06*x[13]*x[18]+0.02*x[13]*x[19]-0.08*x[13]*x[20]-0.08*x[13]*x[21]+0.18*x[14]*x[17]-0.08*x[14]*x[16]+0.14*x[14]*x[19]+0.16*x[14]*x[20]-0.1*x[14]*x[21]+0.16*x[15]*x[17]-0.02*x[15]*x[16]-0.04*x[15]*x[18]-0.06*x[15]*x[19]+0.04*x[15]*x[20]+0.1*x[15]*x[21]+(-0.1*x[16]*x[17])-0.1*x[16]*x[18]+0.04*x[16]*x[19]-0.14*x[16]*x[20]-0.02*x[16]*x[21]+(-0.08*x[17]*x[18])-0.04*x[17]*x[19]-0.02*x[17]*x[20]+0.14*x[17]*x[21]+0.1*x[18]*x[19]-0.18*x[18]*x[20]+0.06*x[18]*x[21]+0.16*x[19]*x[20]-0.02*x[19]*x[21]+0.04*x[20]*x[21]+(-0.39*x[2]*x[2])-0.45*x[3]*x[3]-0.37*x[4]*x[4]-0.37*x[5]*x[5]-0.35*x[6]*x[6]-0.44*x[7]*x[7]-0.45*x[8]*x[8]-0.47*x[9]*x[9]-0.51*x[10]*x[10]-0.46*x[11]*x[11]-0.33*x[12]*x[12]-0.38*x[13]*x[13]-0.36*x[14]*x[14]-0.44*x[15]*x[15]-0.49*x[16]*x[16]-0.49*x[17]*x[17]-0.43*x[18]*x[18]-0.46*x[19]*x[19]-0.4*x[20]*x[20]-0.37*x[21]*x[21]-0.71*x[2]-0.61*x[3]-0.24*x[4]-0.64*x[5]-0.24*x[6]+0.81*x[7]-0.46*x[8]-0.17*x[9]+0.59*x[10]+0.9*x[11]+0.48*x[12]+0.26*x[13]+0.01*x[14]-0.63*x[15]+0.07*x[16]+0.52*x[17]-0.36*x[18]-0.59*x[19]-0.46*x[20]+0.8*x[21] <= 54.53)
@NLconstraint(m, e3, 0.04*x[2]*x[3]+0.1*x[2]*x[4]+0.14*x[2]*x[5]+0.06*x[2]*x[6]-0.02*x[2]*x[7]+0.08*x[2]*x[8]+0.42*x[2]*x[9]+0.08*x[2]*x[10]-0.06*x[2]*x[11]+0.06*x[2]*x[12]-0.1*x[2]*x[13]+0.16*x[2]*x[14]+0.02*x[2]*x[15]-0.26*x[2]*x[16]-0.02*x[2]*x[17]-0.1*x[2]*x[18]+0.06*x[2]*x[19]+0.06*x[2]*x[20]-0.02*x[2]*x[21]+(-0.12*x[3]*x[4])-0.04*x[3]*x[5]+0.08*x[3]*x[6]-0.04*x[3]*x[7]+0.02*x[3]*x[8]-0.2*x[3]*x[9]+0.22*x[3]*x[10]+0.04*x[3]*x[11]-0.06*x[3]*x[12]+0.24*x[3]*x[13]+0.24*x[3]*x[14]-0.02*x[3]*x[15]+0.02*x[3]*x[16]+0.14*x[3]*x[17]-0.02*x[3]*x[18]-0.2*x[3]*x[19]+0.06*x[3]*x[20]+0.18*x[3]*x[21]+0.34*x[4]*x[5]-0.02*x[4]*x[6]+0.06*x[4]*x[7]-0.16*x[4]*x[8]-0.16*x[4]*x[9]-0.1*x[4]*x[10]+0.12*x[4]*x[11]-0.04*x[4]*x[12]-0.04*x[4]*x[13]+0.06*x[4]*x[14]+0.28*x[4]*x[15]+0.02*x[4]*x[16]+0.16*x[4]*x[17]+0.12*x[4]*x[18]+0.08*x[4]*x[19]+0.18*x[4]*x[20]+0.12*x[4]*x[21]+0.1*x[5]*x[7]-0.1*x[5]*x[6]+0.1*x[5]*x[8]-0.08*x[5]*x[9]-0.1*x[5]*x[10]+0.2*x[5]*x[12]+0.04*x[5]*x[13]+0.24*x[5]*x[14]+0.12*x[5]*x[15]+0.06*x[5]*x[16]+0.02*x[5]*x[17]+0.06*x[5]*x[18]+0.02*x[5]*x[19]+0.2*x[5]*x[20]+0.02*x[6]*x[7]-0.08*x[6]*x[8]+0.24*x[6]*x[9]+0.1*x[6]*x[10]+0.2*x[6]*x[11]+0.12*x[6]*x[12]+0.18*x[6]*x[13]-0.3*x[6]*x[14]-0.08*x[6]*x[15]+0.06*x[6]*x[16]+0.2*x[6]*x[17]+0.02*x[6]*x[18]+0.14*x[6]*x[19]+0.1*x[6]*x[20]+0.08*x[6]*x[21]+(-0.02*x[7]*x[8])-0.1*x[7]*x[9]-0.04*x[7]*x[10]-0.02*x[7]*x[11]+0.28*x[7]*x[12]+0.02*x[7]*x[13]+0.02*x[7]*x[14]-0.04*x[7]*x[15]+0.38*x[7]*x[16]-0.24*x[7]*x[17]-0.02*x[7]*x[18]+0.16*x[7]*x[19]+0.14*x[7]*x[20]+0.06*x[7]*x[21]+0.08*x[8]*x[9]+0.3*x[8]*x[10]-0.06*x[8]*x[11]+0.22*x[8]*x[12]+0.1*x[8]*x[13]+0.18*x[8]*x[14]-0.06*x[8]*x[15]-0.1*x[8]*x[17]+0.26*x[8]*x[18]+0.04*x[8]*x[19]-0.16*x[8]*x[20]+0.08*x[8]*x[21]+0.02*x[9]*x[10]-0.14*x[9]*x[11]+0.24*x[9]*x[13]+0.06*x[9]*x[14]-0.1*x[9]*x[15]-0.14*x[9]*x[16]+0.16*x[9]*x[17]-0.06*x[9]*x[18]+0.14*x[9]*x[19]-0.08*x[9]*x[21]+0.12*x[10]*x[11]-0.04*x[10]*x[12]-0.16*x[10]*x[13]+0.12*x[10]*x[14]-0.1*x[10]*x[15]-0.08*x[10]*x[16]+0.06*x[10]*x[17]+0.32*x[10]*x[18]+0.14*x[10]*x[19]-0.16*x[10]*x[20]+0.04*x[10]*x[21]+(-0.02*x[11]*x[12])-0.02*x[11]*x[13]-0.16*x[11]*x[14]+0.08*x[11]*x[15]+0.08*x[11]*x[16]+0.22*x[11]*x[17]+0.18*x[11]*x[18]+0.08*x[11]*x[20]+0.12*x[11]*x[21]+0.28*x[12]*x[13]-0.08*x[12]*x[14]-0.2*x[12]*x[15]+0.18*x[12]*x[16]-0.08*x[12]*x[17]+0.08*x[12]*x[18]+0.08*x[12]*x[19]-0.02*x[12]*x[20]+0.08*x[12]*x[21]+0.08*x[13]*x[14]+0.06*x[13]*x[15]-0.02*x[13]*x[16]+0.08*x[13]*x[17]-0.02*x[13]*x[18]-0.24*x[13]*x[19]+0.14*x[13]*x[20]+0.22*x[13]*x[21]+0.14*x[14]*x[15]-0.06*x[14]*x[16]-0.1*x[14]*x[17]+0.1*x[14]*x[18]-0.04*x[14]*x[19]+0.04*x[14]*x[20]-0.02*x[14]*x[21]+0.02*x[15]*x[16]+0.08*x[15]*x[17]+0.12*x[15]*x[18]+0.1*x[15]*x[19]+0.2*x[15]*x[20]+0.14*x[15]*x[21]+0.02*x[16]*x[18]-0.1*x[16]*x[17]+0.2*x[16]*x[19]+0.14*x[16]*x[20]-0.02*x[16]*x[21]+0.14*x[17]*x[18]+0.06*x[17]*x[19]+0.04*x[17]*x[20]+0.02*x[17]*x[21]+0.18*x[18]*x[19]+0.06*x[18]*x[20]+0.02*x[18]*x[21]+0.12*x[19]*x[20]-0.22*x[19]*x[21]+(-0.51*x[2]*x[2])-0.56*x[3]*x[3]-0.63*x[4]*x[4]-0.63*x[5]*x[5]-0.62*x[6]*x[6]-0.62*x[7]*x[7]-0.6*x[8]*x[8]-0.48*x[9]*x[9]-0.47*x[10]*x[10]-0.63*x[11]*x[11]-0.57*x[12]*x[12]-0.54*x[13]*x[13]-0.57*x[14]*x[14]-0.64*x[15]*x[15]-0.63*x[16]*x[16]-0.51*x[17]*x[17]-0.68*x[18]*x[18]-0.53*x[19]*x[19]-0.72*x[20]*x[20]-0.65*x[21]*x[21]-0.74*x[2]-0.69*x[3]+0.41*x[4]+0.51*x[5]+0.46*x[6]+0.6*x[7]+0.41*x[8]-0.46*x[9]-0.7*x[10]+0.19*x[11]-0.72*x[12]+0.17*x[13]-0.34*x[14]+0.5*x[15]-0.14*x[16]-0.02*x[17]-0.99*x[18]+0.11*x[19]-0.97*x[20]+x[21] <= 50.0)
@NLconstraint(m, e4, (-0.08*x[2]*x[3])-0.06*x[2]*x[4]-0.06*x[2]*x[5]+0.04*x[2]*x[7]+0.2*x[2]*x[9]-0.04*x[2]*x[10]-0.14*x[2]*x[11]+0.08*x[2]*x[12]-0.08*x[2]*x[14]-0.1*x[2]*x[15]+0.18*x[2]*x[16]+0.06*x[2]*x[17]+0.18*x[2]*x[18]-0.14*x[2]*x[19]+0.28*x[2]*x[20]-0.14*x[2]*x[21]+(-0.04*x[3]*x[4])-0.16*x[3]*x[5]-0.12*x[3]*x[7]+0.1*x[3]*x[8]-0.04*x[3]*x[9]-0.16*x[3]*x[10]+0.1*x[3]*x[11]-0.08*x[3]*x[12]+0.26*x[3]*x[13]+0.12*x[3]*x[14]+0.16*x[3]*x[15]+0.08*x[3]*x[16]+0.12*x[3]*x[17]+0.2*x[3]*x[18]+0.08*x[3]*x[19]+0.08*x[3]*x[20]+0.16*x[3]*x[21]+0.02*x[4]*x[5]+0.14*x[4]*x[6]+0.1*x[4]*x[7]+0.02*x[4]*x[8]+0.04*x[4]*x[9]+0.1*x[4]*x[10]+0.12*x[4]*x[11]-0.28*x[4]*x[12]+0.18*x[4]*x[13]+0.1*x[4]*x[14]-0.04*x[4]*x[15]-0.12*x[4]*x[16]-0.06*x[4]*x[17]-0.08*x[4]*x[18]-0.02*x[4]*x[19]+0.08*x[4]*x[20]+0.04*x[4]*x[21]+0.34*x[5]*x[7]-0.16*x[5]*x[8]-0.06*x[5]*x[9]+0.14*x[5]*x[10]+0.04*x[5]*x[11]+0.1*x[5]*x[12]-0.08*x[5]*x[14]-0.14*x[5]*x[15]-0.04*x[5]*x[16]-0.06*x[5]*x[18]-0.02*x[5]*x[19]+0.06*x[5]*x[21]+0.04*x[6]*x[7]+0.02*x[6]*x[8]-0.06*x[6]*x[9]+0.02*x[6]*x[10]-0.1*x[6]*x[11]+0.06*x[6]*x[12]-0.24*x[6]*x[13]-0.2*x[6]*x[14]-0.12*x[6]*x[15]-0.12*x[6]*x[16]+0.14*x[6]*x[17]+0.04*x[6]*x[18]+0.12*x[6]*x[19]+0.16*x[6]*x[20]-0.02*x[6]*x[21]+(-0.14*x[7]*x[8])-0.02*x[7]*x[9]-0.06*x[7]*x[10]-0.1*x[7]*x[11]-0.04*x[7]*x[12]+0.04*x[7]*x[13]-0.06*x[7]*x[14]+0.3*x[7]*x[15]+0.08*x[7]*x[16]+0.04*x[7]*x[17]-0.2*x[7]*x[18]+0.12*x[7]*x[19]-0.22*x[7]*x[20]-0.14*x[7]*x[21]+0.02*x[8]*x[10]+0.16*x[8]*x[11]+0.14*x[8]*x[13]+0.04*x[8]*x[14]-0.06*x[8]*x[15]-0.02*x[8]*x[16]+0.1*x[8]*x[17]-0.2*x[8]*x[18]+0.06*x[8]*x[19]-0.02*x[8]*x[21]+0.04*x[9]*x[11]-0.02*x[9]*x[10]+0.1*x[9]*x[12]+0.06*x[9]*x[13]+0.12*x[9]*x[14]+0.18*x[9]*x[15]-0.06*x[9]*x[16]+0.16*x[9]*x[18]-0.04*x[9]*x[19]+0.04*x[9]*x[20]-0.1*x[9]*x[21]+0.12*x[10]*x[11]+0.26*x[10]*x[12]+0.02*x[10]*x[14]-0.16*x[10]*x[15]+0.22*x[10]*x[16]-0.28*x[10]*x[17]+0.28*x[10]*x[18]+0.1*x[10]*x[19]+0.32*x[10]*x[20]-0.02*x[10]*x[21]+0.26*x[11]*x[12]+0.06*x[11]*x[13]-0.04*x[11]*x[14]-0.2*x[11]*x[15]-0.02*x[11]*x[16]-0.14*x[11]*x[17]-0.16*x[11]*x[18]+0.02*x[11]*x[19]+0.06*x[11]*x[20]+0.16*x[11]*x[21]+0.06*x[12]*x[14]-0.02*x[12]*x[13]+0.22*x[12]*x[15]+0.24*x[12]*x[16]-0.06*x[12]*x[17]+0.02*x[12]*x[18]-0.02*x[12]*x[19]-0.18*x[12]*x[20]-0.06*x[12]*x[21]+(-0.04*x[13]*x[14])-0.16*x[13]*x[15]+0.06*x[13]*x[16]+0.08*x[13]*x[17]-0.2*x[13]*x[18]-0.02*x[13]*x[19]+0.1*x[13]*x[20]-0.12*x[13]*x[21]+0.12*x[14]*x[15]+0.06*x[14]*x[16]-0.16*x[14]*x[17]+0.02*x[14]*x[18]+0.08*x[14]*x[19]+0.04*x[14]*x[20]+0.2*x[14]*x[21]+(-0.02*x[15]*x[16])-0.02*x[15]*x[17]+0.06*x[15]*x[18]+0.06*x[15]*x[19]-0.14*x[15]*x[20]+0.2*x[15]*x[21]+0.06*x[16]*x[17]+0.08*x[16]*x[18]-0.26*x[16]*x[19]-0.06*x[16]*x[20]-0.06*x[16]*x[21]+0.12*x[17]*x[18]-0.06*x[17]*x[19]+0.02*x[17]*x[20]-0.1*x[17]*x[21]+0.04*x[18]*x[19]-0.14*x[18]*x[20]+0.02*x[18]*x[21]+0.3*x[19]*x[21]-0.16*x[19]*x[20]+0.1*x[20]*x[21]+(-0.44*x[2]*x[2])-0.43*x[3]*x[3]-0.45*x[4]*x[4]-0.45*x[5]*x[5]-0.41*x[6]*x[6]-0.42*x[7]*x[7]-0.42*x[8]*x[8]-0.51*x[9]*x[9]-0.52*x[10]*x[10]-0.55*x[11]*x[11]-0.35*x[12]*x[12]-0.62*x[13]*x[13]-0.39*x[14]*x[14]-0.51*x[15]*x[15]-0.54*x[16]*x[16]-0.34*x[17]*x[17]-0.53*x[18]*x[18]-0.46*x[19]*x[19]-0.45*x[20]*x[20]-0.63*x[21]*x[21]-0.89*x[2]+0.58*x[4]-0.67*x[5]-0.9*x[6]+0.97*x[7]-0.25*x[8]-0.59*x[9]+0.45*x[10]-0.63*x[11]-0.55*x[12]-0.98*x[13]-0.03*x[14]+0.46*x[15]-0.62*x[16]-0.97*x[17]-0.53*x[18]-0.32*x[19]+0.99*x[20]+0.14*x[21] <= 33.77)
@NLconstraint(m, e5, 0.08*x[2]*x[3]+0.1*x[2]*x[4]-0.08*x[2]*x[5]-0.04*x[2]*x[6]+0.06*x[2]*x[7]+0.1*x[2]*x[8]-0.08*x[2]*x[9]-0.22*x[2]*x[10]-0.12*x[2]*x[11]-0.1*x[2]*x[12]-0.08*x[2]*x[13]+0.12*x[2]*x[14]+0.06*x[2]*x[15]+0.22*x[2]*x[16]-0.12*x[2]*x[17]-0.18*x[2]*x[18]-0.14*x[2]*x[19]-0.02*x[2]*x[20]-0.04*x[2]*x[21]+(-0.04*x[3]*x[4])-0.12*x[3]*x[5]-0.1*x[3]*x[6]-0.06*x[3]*x[7]-0.04*x[3]*x[8]-0.1*x[3]*x[9]-0.18*x[3]*x[10]-0.14*x[3]*x[11]-0.02*x[3]*x[12]+0.1*x[3]*x[13]-0.04*x[3]*x[14]-0.06*x[3]*x[15]-0.12*x[3]*x[16]+0.18*x[3]*x[17]+0.18*x[3]*x[18]-0.1*x[3]*x[19]-0.08*x[3]*x[20]-0.1*x[3]*x[21]+(-0.06*x[4]*x[5])-0.04*x[4]*x[6]+0.06*x[4]*x[7]-0.08*x[4]*x[8]+0.02*x[4]*x[9]+0.1*x[4]*x[10]+0.04*x[4]*x[11]-0.08*x[4]*x[12]-0.18*x[4]*x[13]-0.08*x[4]*x[14]+0.06*x[4]*x[15]+0.02*x[4]*x[16]+0.04*x[4]*x[18]-0.08*x[4]*x[19]-0.06*x[4]*x[20]+0.12*x[4]*x[21]+0.18*x[5]*x[7]+0.1*x[5]*x[9]+0.06*x[5]*x[10]-0.28*x[5]*x[11]-0.24*x[5]*x[12]-0.12*x[5]*x[13]-0.26*x[5]*x[14]+0.1*x[5]*x[15]+0.02*x[5]*x[16]-0.1*x[5]*x[17]+0.16*x[5]*x[18]-0.04*x[5]*x[19]+0.1*x[5]*x[20]-0.06*x[5]*x[21]+0.24*x[6]*x[7]+0.04*x[6]*x[8]+0.1*x[6]*x[9]+0.08*x[6]*x[10]+0.06*x[6]*x[11]-0.26*x[6]*x[12]+0.06*x[6]*x[13]+0.24*x[6]*x[14]-0.04*x[6]*x[15]-0.08*x[6]*x[16]-0.22*x[6]*x[17]-0.08*x[6]*x[18]-0.12*x[6]*x[19]-0.26*x[6]*x[20]+0.02*x[6]*x[21]+0.06*x[7]*x[9]-0.22*x[7]*x[8]-0.14*x[7]*x[10]+0.16*x[7]*x[11]-0.06*x[7]*x[12]+0.04*x[7]*x[13]+0.18*x[7]*x[14]-0.28*x[7]*x[15]-0.18*x[7]*x[16]-0.06*x[7]*x[18]-0.06*x[7]*x[19]-0.1*x[7]*x[20]+0.02*x[7]*x[21]+0.02*x[8]*x[10]-0.12*x[8]*x[9]+0.06*x[8]*x[11]-0.04*x[8]*x[12]+0.2*x[8]*x[13]-0.04*x[8]*x[14]+0.04*x[8]*x[15]+0.06*x[8]*x[16]-0.14*x[8]*x[17]-0.06*x[8]*x[18]-0.1*x[8]*x[19]-0.22*x[8]*x[20]-0.06*x[8]*x[21]+0.02*x[9]*x[13]-0.08*x[9]*x[12]-0.14*x[9]*x[14]-0.08*x[9]*x[15]+0.06*x[9]*x[16]+0.06*x[9]*x[17]-0.34*x[9]*x[18]-0.1*x[9]*x[19]-0.02*x[9]*x[20]+0.24*x[9]*x[21]+0.02*x[10]*x[11]+0.2*x[10]*x[12]-0.18*x[10]*x[13]-0.24*x[10]*x[14]+0.02*x[10]*x[15]-0.22*x[10]*x[16]+0.16*x[10]*x[17]-0.12*x[10]*x[19]+0.22*x[10]*x[20]+(-0.06*x[11]*x[12])-0.02*x[11]*x[13]-0.08*x[11]*x[14]+0.08*x[11]*x[15]-0.08*x[11]*x[16]-0.08*x[11]*x[17]-0.02*x[11]*x[18]-0.26*x[11]*x[19]+0.14*x[11]*x[20]-0.02*x[11]*x[21]+0.12*x[12]*x[13]-0.06*x[12]*x[14]-0.14*x[12]*x[15]+0.06*x[12]*x[16]+0.04*x[12]*x[17]+0.12*x[12]*x[18]+0.14*x[12]*x[19]+0.02*x[12]*x[20]+0.02*x[13]*x[14]-0.04*x[13]*x[15]+0.14*x[13]*x[16]-0.14*x[13]*x[17]+0.08*x[13]*x[19]-0.24*x[13]*x[20]+0.1*x[13]*x[21]+0.02*x[14]*x[16]-0.1*x[14]*x[15]+0.02*x[14]*x[17]-0.26*x[14]*x[18]+0.26*x[14]*x[19]+0.1*x[14]*x[21]+0.16*x[15]*x[17]-0.1*x[15]*x[16]-0.04*x[15]*x[18]+0.1*x[15]*x[19]-0.06*x[15]*x[20]+0.08*x[15]*x[21]+0.06*x[16]*x[17]+0.2*x[16]*x[18]-0.08*x[16]*x[19]+0.06*x[16]*x[20]-0.12*x[16]*x[21]+(-0.12*x[17]*x[18])-0.06*x[17]*x[21]+0.14*x[18]*x[19]-0.08*x[18]*x[20]+0.12*x[18]*x[21]+0.08*x[19]*x[20]+0.02*x[19]*x[21]-0.18*x[20]*x[21]+(-0.58*x[2]*x[2])-0.38*x[3]*x[3]-0.45*x[4]*x[4]-0.48*x[5]*x[5]-0.61*x[6]*x[6]-0.56*x[7]*x[7]-0.54*x[8]*x[8]-0.32*x[9]*x[9]-0.55*x[10]*x[10]-0.56*x[11]*x[11]-0.65*x[12]*x[12]-0.66*x[13]*x[13]-0.57*x[14]*x[14]-0.43*x[15]*x[15]-0.53*x[16]*x[16]-0.7*x[17]*x[17]-0.51*x[18]*x[18]-0.53*x[19]*x[19]-0.53*x[20]*x[20]-0.45*x[21]*x[21]+0.4*x[2]+0.9*x[3]+0.09*x[4]-0.97*x[5]-0.04*x[6]+0.35*x[7]-0.16*x[8]+x[9]-0.14*x[10]+0.26*x[11]+0.16*x[12]+0.5*x[13]-0.16*x[14]-0.24*x[15]+0.89*x[16]-0.55*x[17]-0.16*x[18]+0.62*x[19]-0.2*x[20]+0.69*x[21] <= 27.57)
@NLconstraint(m, e6, 0.24*x[2]*x[3]-0.14*x[2]*x[4]-0.14*x[2]*x[5]+0.2*x[2]*x[6]+0.12*x[2]*x[7]-0.02*x[2]*x[8]+0.2*x[2]*x[9]-0.06*x[2]*x[10]-0.26*x[2]*x[11]-0.08*x[2]*x[12]+0.1*x[2]*x[13]-0.24*x[2]*x[14]-0.1*x[2]*x[15]+0.08*x[2]*x[16]-0.02*x[2]*x[17]+0.08*x[2]*x[18]-0.06*x[2]*x[19]+0.04*x[2]*x[20]-0.18*x[2]*x[21]+(-0.12*x[3]*x[4])-0.18*x[3]*x[5]-0.02*x[3]*x[6]-0.08*x[3]*x[7]+0.02*x[3]*x[8]-0.02*x[3]*x[10]-0.08*x[3]*x[11]+0.1*x[3]*x[12]+0.16*x[3]*x[13]+0.22*x[3]*x[14]-0.04*x[3]*x[15]-0.06*x[3]*x[16]+0.06*x[3]*x[17]-0.14*x[3]*x[18]-0.08*x[3]*x[19]-0.16*x[3]*x[20]+0.08*x[3]*x[21]+0.24*x[4]*x[7]-0.06*x[4]*x[5]+0.16*x[4]*x[8]-0.22*x[4]*x[9]-0.08*x[4]*x[10]-0.14*x[4]*x[11]+0.04*x[4]*x[12]-0.26*x[4]*x[13]+0.06*x[4]*x[14]+0.06*x[4]*x[15]+0.08*x[4]*x[16]+0.02*x[4]*x[17]+0.02*x[4]*x[18]+0.04*x[4]*x[19]-0.16*x[4]*x[20]+0.02*x[4]*x[21]+0.04*x[5]*x[7]-0.14*x[5]*x[6]-0.04*x[5]*x[8]-0.12*x[5]*x[9]-0.22*x[5]*x[10]+0.04*x[5]*x[11]-0.06*x[5]*x[12]-0.06*x[5]*x[13]-0.04*x[5]*x[14]-0.14*x[5]*x[15]-0.08*x[5]*x[16]-0.06*x[5]*x[17]+0.14*x[5]*x[18]+0.12*x[5]*x[19]+0.02*x[5]*x[20]+0.1*x[5]*x[21]+0.22*x[6]*x[8]-0.02*x[6]*x[7]+0.04*x[6]*x[9]-0.08*x[6]*x[10]-0.06*x[6]*x[12]+0.08*x[6]*x[13]-0.16*x[6]*x[14]-0.22*x[6]*x[15]+0.14*x[6]*x[16]+0.14*x[6]*x[17]-0.18*x[6]*x[18]+0.02*x[6]*x[19]-0.08*x[6]*x[20]-0.08*x[6]*x[21]+0.06*x[7]*x[10]-0.2*x[7]*x[9]-0.02*x[7]*x[11]-0.12*x[7]*x[12]-0.3*x[7]*x[13]-0.16*x[7]*x[14]-0.06*x[7]*x[15]+0.06*x[7]*x[16]+0.04*x[7]*x[17]+0.1*x[7]*x[18]-0.1*x[7]*x[19]-0.08*x[7]*x[20]+0.08*x[7]*x[21]+(-0.12*x[8]*x[9])-0.08*x[8]*x[10]-0.14*x[8]*x[12]-0.12*x[8]*x[13]-0.18*x[8]*x[14]-0.08*x[8]*x[15]+0.14*x[8]*x[16]+0.22*x[8]*x[17]-0.1*x[8]*x[18]-0.02*x[8]*x[19]-0.08*x[8]*x[20]+0.02*x[8]*x[21]+0.16*x[9]*x[10]+0.06*x[9]*x[11]-0.06*x[9]*x[12]+0.12*x[9]*x[13]-0.02*x[9]*x[14]+0.24*x[9]*x[15]+0.14*x[9]*x[16]-0.2*x[9]*x[17]+0.04*x[9]*x[18]+0.02*x[9]*x[19]+0.1*x[9]*x[20]-0.12*x[9]*x[21]+0.1*x[10]*x[11]+0.04*x[10]*x[12]+0.02*x[10]*x[13]-0.06*x[10]*x[14]-0.08*x[10]*x[15]-0.04*x[10]*x[16]-0.04*x[10]*x[17]-0.2*x[10]*x[18]-0.08*x[10]*x[19]+0.12*x[10]*x[20]-0.14*x[10]*x[21]+0.1*x[11]*x[13]-0.04*x[11]*x[12]-0.1*x[11]*x[14]-0.1*x[11]*x[15]+0.1*x[11]*x[16]-0.2*x[11]*x[17]-0.04*x[11]*x[18]-0.04*x[11]*x[20]+0.04*x[11]*x[21]+0.02*x[12]*x[13]+0.34*x[12]*x[14]+0.02*x[12]*x[15]-0.04*x[12]*x[16]-0.2*x[12]*x[17]+0.08*x[12]*x[18]+0.06*x[12]*x[19]+0.16*x[12]*x[20]-0.22*x[12]*x[21]+0.1*x[13]*x[14]+0.12*x[13]*x[15]-0.16*x[13]*x[16]+0.14*x[13]*x[18]-0.12*x[13]*x[19]+0.04*x[13]*x[20]-0.22*x[13]*x[21]+0.12*x[14]*x[15]-0.12*x[14]*x[16]-0.14*x[14]*x[17]+0.1*x[14]*x[18]-0.02*x[14]*x[20]+0.06*x[14]*x[21]+0.06*x[15]*x[17]-0.04*x[15]*x[16]+0.16*x[15]*x[18]-0.12*x[15]*x[19]+0.1*x[15]*x[20]-0.02*x[15]*x[21]+(-0.04*x[16]*x[17])-0.04*x[16]*x[18]-0.24*x[16]*x[19]+0.18*x[16]*x[20]+0.06*x[16]*x[21]+(-0.16*x[17]*x[18])-0.04*x[17]*x[19]-0.08*x[17]*x[20]-0.02*x[17]*x[21]+(-0.06*x[18]*x[19])-0.2*x[18]*x[20]+0.18*x[19]*x[21]-0.22*x[19]*x[20]-0.12*x[20]*x[21]+(-0.46*x[2]*x[2])-0.63*x[3]*x[3]-0.66*x[4]*x[4]-0.62*x[5]*x[5]-0.62*x[6]*x[6]-0.68*x[7]*x[7]-0.74*x[8]*x[8]-0.68*x[9]*x[9]-0.64*x[10]*x[10]-0.63*x[11]*x[11]-0.66*x[12]*x[12]-0.57*x[13]*x[13]-0.57*x[14]*x[14]-0.65*x[15]*x[15]-0.64*x[16]*x[16]-0.68*x[17]*x[17]-0.62*x[18]*x[18]-0.62*x[19]*x[19]-0.57*x[20]*x[20]-0.66*x[21]*x[21]-0.23*x[2]+0.19*x[3]+0.78*x[4]+0.61*x[5]+0.59*x[6]-0.37*x[7]+0.37*x[8]-0.32*x[9]+0.43*x[10]+0.04*x[11]-0.3*x[12]-0.91*x[13]+0.52*x[14]-0.36*x[15]+0.97*x[16]-0.09*x[17]-0.61*x[18]+0.93*x[19]+0.48*x[20]-0.8*x[21] <= 56.42)
@NLconstraint(m, e7, 0.06*x[2]*x[3]-0.1*x[2]*x[4]-0.08*x[2]*x[5]-0.14*x[2]*x[6]+0.1*x[2]*x[7]-0.08*x[2]*x[8]-0.02*x[2]*x[9]-0.1*x[2]*x[10]+0.04*x[2]*x[11]-0.06*x[2]*x[12]-0.14*x[2]*x[14]+0.1*x[2]*x[15]+0.08*x[2]*x[16]+0.04*x[2]*x[17]-0.12*x[2]*x[18]+0.04*x[2]*x[19]+0.12*x[2]*x[20]-0.04*x[2]*x[21]+0.24*x[3]*x[5]-0.18*x[3]*x[4]-0.12*x[3]*x[6]-0.04*x[3]*x[7]-0.16*x[3]*x[8]+0.2*x[3]*x[9]-0.08*x[3]*x[10]-0.24*x[3]*x[11]-0.14*x[3]*x[12]+0.12*x[3]*x[13]-0.08*x[3]*x[14]-0.12*x[3]*x[15]+0.08*x[3]*x[16]+0.06*x[3]*x[17]+0.1*x[3]*x[18]+0.16*x[3]*x[19]-0.12*x[3]*x[20]+0.02*x[4]*x[5]-0.12*x[4]*x[6]-0.08*x[4]*x[7]-0.1*x[4]*x[8]+0.08*x[4]*x[9]+0.2*x[4]*x[10]-0.04*x[4]*x[12]-0.02*x[4]*x[13]+0.08*x[4]*x[14]+0.06*x[4]*x[15]-0.06*x[4]*x[16]+0.1*x[4]*x[17]-0.02*x[4]*x[18]-0.12*x[4]*x[19]+0.16*x[4]*x[21]+0.12*x[5]*x[6]+0.16*x[5]*x[7]-0.04*x[5]*x[8]+0.08*x[5]*x[9]-0.06*x[5]*x[10]-0.1*x[5]*x[11]+0.02*x[5]*x[12]+0.04*x[5]*x[13]-0.08*x[5]*x[14]-0.12*x[5]*x[15]-0.16*x[5]*x[17]-0.18*x[5]*x[19]-0.18*x[5]*x[20]-0.1*x[5]*x[21]+0.14*x[6]*x[8]-0.02*x[6]*x[7]+0.18*x[6]*x[9]-0.14*x[6]*x[10]+0.1*x[6]*x[11]+0.1*x[6]*x[13]-0.02*x[6]*x[14]+0.04*x[6]*x[15]+0.28*x[6]*x[16]-0.18*x[6]*x[17]-0.02*x[6]*x[18]-0.18*x[6]*x[19]-0.08*x[6]*x[20]+0.14*x[6]*x[21]+(-0.08*x[7]*x[8])-0.1*x[7]*x[10]-0.18*x[7]*x[11]-0.12*x[7]*x[12]-0.08*x[7]*x[13]+0.04*x[7]*x[14]+0.02*x[7]*x[15]+0.12*x[7]*x[16]+0.04*x[7]*x[17]+0.08*x[7]*x[18]-0.04*x[7]*x[19]+0.08*x[7]*x[20]+0.08*x[7]*x[21]+0.02*x[8]*x[9]+0.08*x[8]*x[10]+0.1*x[8]*x[11]+0.06*x[8]*x[12]-0.08*x[8]*x[13]+0.02*x[8]*x[14]+0.04*x[8]*x[15]+0.04*x[8]*x[16]-0.04*x[8]*x[17]-0.08*x[8]*x[18]+0.08*x[8]*x[19]+0.06*x[8]*x[20]+0.1*x[8]*x[21]+0.04*x[9]*x[10]+0.06*x[9]*x[11]-0.12*x[9]*x[12]+0.12*x[9]*x[13]+0.04*x[9]*x[14]+0.06*x[9]*x[15]-0.12*x[9]*x[16]-0.1*x[9]*x[17]-0.12*x[9]*x[18]-0.04*x[9]*x[19]-0.08*x[9]*x[20]+0.14*x[9]*x[21]+0.12*x[10]*x[11]+0.12*x[10]*x[12]+0.04*x[10]*x[13]-0.08*x[10]*x[14]+0.1*x[10]*x[15]-0.04*x[10]*x[16]-0.02*x[10]*x[18]+0.1*x[10]*x[20]-0.16*x[10]*x[21]+0.36*x[11]*x[12]-0.06*x[11]*x[13]+0.08*x[11]*x[14]-0.02*x[11]*x[15]+0.04*x[11]*x[16]+0.04*x[11]*x[17]+0.04*x[11]*x[18]-0.04*x[11]*x[19]-0.04*x[11]*x[20]+0.08*x[11]*x[21]+0.12*x[12]*x[14]-0.12*x[12]*x[13]-0.02*x[12]*x[15]+0.08*x[12]*x[16]-0.04*x[12]*x[17]-0.14*x[12]*x[18]-0.06*x[12]*x[19]-0.04*x[12]*x[20]+0.04*x[12]*x[21]+0.04*x[13]*x[14]-0.14*x[13]*x[15]+0.18*x[13]*x[16]+0.04*x[13]*x[17]-0.1*x[13]*x[18]+0.08*x[13]*x[19]-0.2*x[13]*x[20]+0.12*x[13]*x[21]+0.06*x[14]*x[15]+0.08*x[14]*x[16]-0.08*x[14]*x[17]+0.04*x[14]*x[19]-0.02*x[14]*x[20]+0.16*x[14]*x[21]+0.06*x[15]*x[16]-0.08*x[15]*x[17]-0.02*x[15]*x[19]-0.02*x[15]*x[20]-0.02*x[15]*x[21]+(-0.14*x[16]*x[18])-0.08*x[16]*x[19]-0.16*x[16]*x[20]-0.12*x[16]*x[21]+0.06*x[17]*x[18]-0.06*x[17]*x[19]+0.02*x[17]*x[21]+0.14*x[18]*x[19]+0.04*x[18]*x[20]+0.02*x[18]*x[21]+0.12*x[19]*x[20]-0.08*x[19]*x[21]-0.24*x[20]*x[21]+(-0.4*x[2]*x[2])-0.52*x[3]*x[3]-0.53*x[4]*x[4]-0.46*x[5]*x[5]-0.43*x[6]*x[6]-0.53*x[7]*x[7]-0.46*x[8]*x[8]-0.49*x[9]*x[9]-0.42*x[10]*x[10]-0.55*x[11]*x[11]-0.56*x[12]*x[12]-0.47*x[13]*x[13]-0.5*x[14]*x[14]-0.38*x[15]*x[15]-0.59*x[16]*x[16]-0.48*x[17]*x[17]-0.52*x[18]*x[18]-0.46*x[19]*x[19]-0.46*x[20]*x[20]-0.54*x[21]*x[21]-0.45*x[2]-0.73*x[3]-0.81*x[4]+0.6*x[5]+0.51*x[6]+0.35*x[7]-0.54*x[8]+0.74*x[9]+0.28*x[10]-0.84*x[11]-0.74*x[12]-0.87*x[13]+0.96*x[14]+0.89*x[15]+0.94*x[16]-0.89*x[17]+0.12*x[18]+0.82*x[19]-0.84*x[20]-0.32*x[21] <= 24.27)
@NLconstraint(m, e8, 0.06*x[2]*x[3]+0.22*x[2]*x[4]-0.04*x[2]*x[5]+0.04*x[2]*x[6]-0.08*x[2]*x[7]-0.12*x[2]*x[8]+0.04*x[2]*x[9]+0.02*x[2]*x[10]+0.02*x[2]*x[11]+0.1*x[2]*x[12]+0.2*x[2]*x[13]+0.38*x[2]*x[14]-0.1*x[2]*x[15]+0.32*x[2]*x[16]+0.2*x[2]*x[17]-0.06*x[2]*x[18]+0.02*x[2]*x[19]+0.04*x[2]*x[20]+0.1*x[2]*x[21]+0.04*x[3]*x[4]+0.08*x[3]*x[5]+0.12*x[3]*x[6]+0.02*x[3]*x[7]+0.14*x[3]*x[8]+0.1*x[3]*x[9]+0.04*x[3]*x[10]-0.06*x[3]*x[11]+0.04*x[3]*x[12]-0.04*x[3]*x[13]+0.12*x[3]*x[14]+0.08*x[3]*x[15]+0.14*x[3]*x[16]+0.12*x[3]*x[18]+0.04*x[3]*x[19]+0.08*x[3]*x[20]-0.14*x[3]*x[21]+0.08*x[4]*x[5]+0.12*x[4]*x[6]+0.18*x[4]*x[7]+0.1*x[4]*x[9]+0.06*x[4]*x[10]+0.02*x[4]*x[11]+0.22*x[4]*x[12]+0.1*x[4]*x[13]+0.06*x[4]*x[14]+0.08*x[4]*x[15]+0.06*x[4]*x[16]+0.1*x[4]*x[17]+0.14*x[4]*x[18]-0.04*x[4]*x[19]+0.04*x[4]*x[20]+0.06*x[4]*x[21]+0.06*x[5]*x[6]+0.2*x[5]*x[7]+0.04*x[5]*x[8]+0.04*x[5]*x[10]+0.2*x[5]*x[11]+0.14*x[5]*x[12]+0.12*x[5]*x[13]+0.24*x[5]*x[15]-0.16*x[5]*x[16]-0.04*x[5]*x[17]+0.08*x[5]*x[18]+0.14*x[5]*x[19]-0.12*x[5]*x[20]+0.2*x[5]*x[21]+0.06*x[6]*x[7]-0.14*x[6]*x[8]-0.04*x[6]*x[9]+0.02*x[6]*x[10]+0.12*x[6]*x[11]+0.1*x[6]*x[12]+0.24*x[6]*x[13]+0.14*x[6]*x[14]+0.1*x[6]*x[15]+0.04*x[6]*x[16]+0.06*x[6]*x[17]-0.1*x[6]*x[18]+0.12*x[6]*x[19]-0.04*x[6]*x[20]+0.08*x[6]*x[21]+0.02*x[7]*x[9]-0.16*x[7]*x[8]+0.24*x[7]*x[10]+0.04*x[7]*x[11]-0.04*x[7]*x[12]+0.14*x[7]*x[13]-0.28*x[7]*x[14]-0.06*x[7]*x[15]-0.16*x[7]*x[16]+0.04*x[7]*x[17]+0.04*x[7]*x[18]+0.1*x[7]*x[19]+0.06*x[7]*x[20]+0.32*x[7]*x[21]+0.3*x[8]*x[9]+0.02*x[8]*x[10]-0.24*x[8]*x[11]+0.32*x[8]*x[12]+0.12*x[8]*x[13]+0.06*x[8]*x[15]+0.16*x[8]*x[16]-0.08*x[8]*x[17]+0.16*x[8]*x[18]+0.04*x[8]*x[20]-0.04*x[8]*x[21]+0.1*x[9]*x[10]+0.2*x[9]*x[12]-0.04*x[9]*x[13]+0.06*x[9]*x[14]+0.02*x[9]*x[15]+0.06*x[9]*x[16]+0.02*x[9]*x[17]+0.04*x[9]*x[18]+0.2*x[9]*x[19]+0.1*x[9]*x[20]+0.08*x[9]*x[21]+0.2*x[10]*x[11]+0.04*x[10]*x[12]+0.14*x[10]*x[13]+0.1*x[10]*x[14]-0.1*x[10]*x[15]+0.22*x[10]*x[16]+0.12*x[10]*x[17]+0.02*x[10]*x[18]-0.02*x[10]*x[19]+0.12*x[10]*x[21]+0.08*x[11]*x[13]-0.18*x[11]*x[12]-0.06*x[11]*x[14]-0.06*x[11]*x[15]-0.1*x[11]*x[16]+0.12*x[11]*x[17]+0.04*x[11]*x[18]-0.04*x[11]*x[19]+0.24*x[11]*x[20]+0.3*x[11]*x[21]+0.04*x[12]*x[13]-0.14*x[12]*x[14]+0.12*x[12]*x[15]-0.04*x[12]*x[16]-0.06*x[12]*x[17]+0.22*x[12]*x[18]+0.16*x[12]*x[19]+0.14*x[12]*x[20]-0.08*x[12]*x[21]+0.08*x[13]*x[14]+0.14*x[13]*x[15]-0.04*x[13]*x[16]+0.06*x[13]*x[17]+0.16*x[13]*x[18]+0.14*x[13]*x[19]+0.02*x[13]*x[20]+0.02*x[13]*x[21]+0.18*x[14]*x[16]+0.2*x[14]*x[17]-0.24*x[14]*x[18]-0.12*x[14]*x[19]+0.02*x[14]*x[20]-0.14*x[14]*x[21]+(-0.1*x[15]*x[16])-0.04*x[15]*x[17]+0.04*x[15]*x[18]+0.16*x[15]*x[19]+0.02*x[15]*x[20]-0.14*x[15]*x[21]+0.04*x[16]*x[17]-0.14*x[16]*x[18]-0.08*x[16]*x[19]+0.02*x[16]*x[21]+0.02*x[17]*x[19]+0.06*x[17]*x[20]+0.26*x[17]*x[21]+0.14*x[18]*x[19]+0.06*x[18]*x[20]+0.1*x[18]*x[21]+0.14*x[19]*x[21]-0.12*x[19]*x[20]+0.1*x[20]*x[21]+(-0.54*x[2]*x[2])-0.69*x[3]*x[3]-0.64*x[4]*x[4]-0.63*x[5]*x[5]-0.64*x[6]*x[6]-0.55*x[7]*x[7]-0.43*x[8]*x[8]-0.72*x[9]*x[9]-0.65*x[10]*x[10]-0.57*x[11]*x[11]-0.48*x[12]*x[12]-0.73*x[13]*x[13]-0.39*x[14]*x[14]-0.59*x[15]*x[15]-0.63*x[16]*x[16]-0.62*x[17]*x[17]-0.66*x[18]*x[18]-0.71*x[19]*x[19]-0.59*x[20]*x[20]-0.66*x[21]*x[21]-0.15*x[2]-0.08*x[3]+0.71*x[4]+0.38*x[5]-0.85*x[6]+0.2*x[7]+0.11*x[8]+0.05*x[9]+0.35*x[10]-0.16*x[11]-0.1*x[12]+0.52*x[13]-0.39*x[14]-0.23*x[15]+0.5*x[16]-0.33*x[17]+0.23*x[18]+0.2*x[19]+0.25*x[21] <= 85.09)
@NLconstraint(m, e9, 0.04*x[2]*x[3]+0.04*x[2]*x[4]+0.16*x[2]*x[5]+0.14*x[2]*x[6]+0.08*x[2]*x[7]+0.16*x[2]*x[8]+0.08*x[2]*x[9]-0.02*x[2]*x[10]+0.02*x[2]*x[11]+0.12*x[2]*x[12]-0.08*x[2]*x[13]+0.12*x[2]*x[16]-0.1*x[2]*x[17]+0.06*x[2]*x[18]-0.06*x[2]*x[19]-0.02*x[2]*x[20]-0.04*x[2]*x[21]+(-0.1*x[3]*x[4])-0.06*x[3]*x[5]+0.08*x[3]*x[6]-0.16*x[3]*x[7]+0.12*x[3]*x[8]-0.06*x[3]*x[9]+0.06*x[3]*x[10]+0.08*x[3]*x[11]+0.06*x[3]*x[12]+0.14*x[3]*x[13]-0.06*x[3]*x[15]+0.06*x[3]*x[16]-0.04*x[3]*x[17]+0.18*x[3]*x[18]+0.04*x[3]*x[19]+0.12*x[3]*x[20]+0.02*x[3]*x[21]+0.18*x[4]*x[5]-0.04*x[4]*x[6]-0.04*x[4]*x[7]+0.08*x[4]*x[8]-0.1*x[4]*x[9]+0.02*x[4]*x[10]+0.24*x[4]*x[11]+0.08*x[4]*x[12]-0.26*x[4]*x[13]+0.06*x[4]*x[14]-0.14*x[4]*x[15]+0.18*x[4]*x[16]-0.26*x[4]*x[17]+0.04*x[4]*x[18]+0.22*x[4]*x[19]+0.06*x[5]*x[6]-0.04*x[5]*x[7]+0.02*x[5]*x[8]-0.04*x[5]*x[9]+0.02*x[5]*x[10]+0.16*x[5]*x[11]-0.04*x[5]*x[12]-0.08*x[5]*x[13]-0.04*x[5]*x[14]+0.14*x[5]*x[16]-0.08*x[5]*x[17]+0.04*x[5]*x[18]-0.12*x[5]*x[19]-0.04*x[5]*x[20]-0.08*x[5]*x[21]+0.02*x[6]*x[7]+0.16*x[6]*x[8]-0.04*x[6]*x[9]+0.06*x[6]*x[10]+0.1*x[6]*x[11]+0.02*x[6]*x[12]-0.04*x[6]*x[13]+0.06*x[6]*x[14]-0.04*x[6]*x[15]-0.2*x[6]*x[17]+0.06*x[6]*x[18]+0.02*x[6]*x[19]-0.1*x[6]*x[21]+0.04*x[7]*x[9]-0.12*x[7]*x[8]+0.06*x[7]*x[10]+0.16*x[7]*x[11]-0.02*x[7]*x[12]+0.22*x[7]*x[13]+0.04*x[7]*x[14]+0.08*x[7]*x[15]+0.16*x[7]*x[16]-0.1*x[7]*x[17]+0.12*x[7]*x[18]+0.02*x[7]*x[19]-0.14*x[7]*x[20]+0.22*x[7]*x[21]+0.02*x[8]*x[9]-0.18*x[8]*x[10]-0.04*x[8]*x[12]-0.02*x[8]*x[13]+0.16*x[8]*x[15]+0.1*x[8]*x[16]+0.2*x[8]*x[17]-0.1*x[8]*x[19]-0.02*x[8]*x[20]-0.26*x[8]*x[21]+0.08*x[9]*x[10]+0.04*x[9]*x[11]+0.02*x[9]*x[12]+0.06*x[9]*x[13]+0.22*x[9]*x[14]-0.1*x[9]*x[15]+0.04*x[9]*x[16]-0.08*x[9]*x[17]+0.06*x[9]*x[18]+0.24*x[9]*x[19]+0.06*x[9]*x[20]+0.02*x[9]*x[21]+0.2*x[10]*x[11]-0.04*x[10]*x[12]+0.06*x[10]*x[13]-0.24*x[10]*x[14]-0.1*x[10]*x[15]+0.1*x[10]*x[16]-0.16*x[10]*x[17]+0.24*x[10]*x[18]-0.08*x[10]*x[19]+0.02*x[10]*x[20]+0.06*x[10]*x[21]+0.14*x[11]*x[12]-0.1*x[11]*x[13]+0.02*x[11]*x[14]-0.02*x[11]*x[15]-0.02*x[11]*x[16]+0.04*x[11]*x[17]-0.08*x[11]*x[18]+0.16*x[11]*x[19]+0.02*x[11]*x[20]+0.1*x[11]*x[21]+0.06*x[12]*x[13]-0.12*x[12]*x[14]+0.04*x[12]*x[15]+0.08*x[12]*x[16]+0.08*x[12]*x[17]+0.02*x[12]*x[18]-0.04*x[12]*x[19]+0.06*x[12]*x[20]+0.12*x[12]*x[21]+0.08*x[13]*x[14]+0.04*x[13]*x[15]-0.02*x[13]*x[16]+0.22*x[13]*x[17]+0.16*x[13]*x[18]+0.12*x[13]*x[20]+0.06*x[13]*x[21]+0.2*x[14]*x[15]-0.06*x[14]*x[16]+0.1*x[14]*x[17]-0.02*x[14]*x[18]+0.3*x[14]*x[19]-0.1*x[14]*x[20]+0.02*x[14]*x[21]+0.14*x[15]*x[16]+0.1*x[15]*x[17]+0.08*x[15]*x[18]+0.1*x[15]*x[19]+0.1*x[15]*x[20]-0.08*x[15]*x[21]+0.1*x[16]*x[17]-0.04*x[16]*x[18]-0.1*x[16]*x[19]+0.06*x[16]*x[20]-0.06*x[16]*x[21]+0.18*x[17]*x[18]-0.04*x[17]*x[19]+0.18*x[17]*x[20]-0.1*x[17]*x[21]+0.06*x[18]*x[20]-0.1*x[18]*x[19]+0.08*x[18]*x[21]+0.1*x[19]*x[21]-0.04*x[19]*x[20]+0.12*x[20]*x[21]+(-0.42*x[2]*x[2])-0.56*x[3]*x[3]-0.48*x[4]*x[4]-0.46*x[5]*x[5]-0.47*x[6]*x[6]-0.56*x[7]*x[7]-0.33*x[8]*x[8]-0.63*x[9]*x[9]-0.31*x[10]*x[10]-0.56*x[11]*x[11]-0.44*x[12]*x[12]-0.41*x[13]*x[13]-0.32*x[14]*x[14]-0.51*x[15]*x[15]-0.45*x[16]*x[16]-0.53*x[17]*x[17]-0.48*x[18]*x[18]-0.33*x[19]*x[19]-0.54*x[20]*x[20]-0.47*x[21]*x[21]-0.85*x[2]+0.96*x[3]-0.21*x[4]+0.99*x[5]+0.19*x[6]-0.66*x[7]+0.8*x[8]+0.41*x[9]+0.67*x[10]+0.07*x[11]+0.97*x[12]+0.02*x[13]-0.35*x[14]-0.86*x[15]+0.91*x[16]-0.96*x[17]-0.02*x[18]+0.01*x[19]-x[20]+0.9*x[21] <= 20.27)
@NLconstraint(m, e10, 0.04*x[2]*x[4]-0.1*x[2]*x[5]+0.1*x[2]*x[7]+0.1*x[2]*x[8]-0.06*x[2]*x[9]-0.08*x[2]*x[10]-0.06*x[2]*x[11]+0.12*x[2]*x[13]+0.02*x[2]*x[14]-0.2*x[2]*x[15]-0.06*x[2]*x[16]+0.04*x[2]*x[17]+0.18*x[2]*x[18]-0.08*x[2]*x[19]-0.04*x[2]*x[20]-0.32*x[2]*x[21]+0.02*x[3]*x[5]-0.02*x[3]*x[4]-0.1*x[3]*x[6]-0.08*x[3]*x[7]+0.02*x[3]*x[8]+0.06*x[3]*x[9]-0.22*x[3]*x[10]+0.16*x[3]*x[11]-0.14*x[3]*x[12]-0.12*x[3]*x[14]+0.08*x[3]*x[15]+0.12*x[3]*x[16]+0.16*x[3]*x[17]+0.22*x[3]*x[18]-0.14*x[3]*x[19]-0.14*x[3]*x[20]+0.14*x[3]*x[21]+0.02*x[4]*x[5]+0.1*x[4]*x[6]+0.06*x[4]*x[8]+0.2*x[4]*x[9]-0.04*x[4]*x[10]-0.32*x[4]*x[11]-0.02*x[4]*x[12]-0.28*x[4]*x[14]+0.02*x[4]*x[15]+0.1*x[4]*x[16]+0.02*x[4]*x[17]-0.12*x[4]*x[18]-0.2*x[4]*x[19]+0.18*x[4]*x[20]-0.2*x[4]*x[21]+(-0.02*x[5]*x[6])-0.1*x[5]*x[7]-0.06*x[5]*x[8]+0.18*x[5]*x[9]-0.1*x[5]*x[10]+0.12*x[5]*x[11]-0.12*x[5]*x[12]-0.08*x[5]*x[13]-0.02*x[5]*x[14]-0.08*x[5]*x[15]-0.04*x[5]*x[16]-0.16*x[5]*x[17]-0.04*x[5]*x[18]-0.08*x[5]*x[19]+0.02*x[5]*x[20]+0.14*x[5]*x[21]+0.1*x[6]*x[9]-0.2*x[6]*x[7]+0.16*x[6]*x[10]+0.1*x[6]*x[12]-0.14*x[6]*x[13]+0.1*x[6]*x[14]-0.2*x[6]*x[15]+0.18*x[6]*x[16]+0.06*x[6]*x[17]+0.06*x[6]*x[19]-0.02*x[6]*x[20]-0.04*x[6]*x[21]+(-0.04*x[7]*x[8])-0.14*x[7]*x[9]-0.1*x[7]*x[11]+0.14*x[7]*x[12]+0.02*x[7]*x[13]+0.04*x[7]*x[15]-0.08*x[7]*x[16]-0.08*x[7]*x[17]-0.06*x[7]*x[18]-0.08*x[7]*x[19]+0.16*x[7]*x[20]+0.06*x[7]*x[21]+0.1*x[8]*x[10]-0.02*x[8]*x[9]+0.16*x[8]*x[11]-0.14*x[8]*x[12]-0.08*x[8]*x[14]-0.16*x[8]*x[15]-0.06*x[8]*x[17]-0.22*x[8]*x[18]+0.06*x[8]*x[19]-0.14*x[8]*x[20]+0.14*x[8]*x[21]+(-0.06*x[9]*x[10])-0.06*x[9]*x[11]+0.1*x[9]*x[12]-0.04*x[9]*x[13]+0.04*x[9]*x[14]-0.18*x[9]*x[15]-0.2*x[9]*x[16]+0.1*x[9]*x[17]-0.06*x[9]*x[19]-0.12*x[9]*x[20]-0.16*x[9]*x[21]+(-0.08*x[10]*x[11])-0.24*x[10]*x[12]+0.02*x[10]*x[13]-0.02*x[10]*x[14]-0.02*x[10]*x[15]+0.04*x[10]*x[16]-0.02*x[10]*x[17]+0.06*x[10]*x[18]-0.02*x[10]*x[20]+0.14*x[10]*x[21]+(-0.1*x[11]*x[12])-0.08*x[11]*x[14]+0.1*x[11]*x[15]-0.32*x[11]*x[16]+0.2*x[11]*x[17]-0.32*x[11]*x[18]+0.04*x[11]*x[19]+0.14*x[11]*x[20]-0.14*x[11]*x[21]+(-0.06*x[12]*x[13])-0.02*x[12]*x[14]+0.06*x[12]*x[15]-0.02*x[12]*x[16]+0.14*x[12]*x[17]+0.04*x[12]*x[18]+0.08*x[12]*x[20]+0.12*x[12]*x[21]+0.06*x[13]*x[14]-0.1*x[13]*x[15]-0.08*x[13]*x[16]-0.06*x[13]*x[17]+0.02*x[13]*x[18]-0.14*x[13]*x[19]-0.02*x[13]*x[20]+0.04*x[13]*x[21]+0.04*x[14]*x[16]-0.04*x[14]*x[15]+0.1*x[14]*x[17]-0.04*x[14]*x[18]+0.08*x[14]*x[19]-0.02*x[14]*x[20]-0.04*x[14]*x[21]+0.08*x[15]*x[16]-0.1*x[15]*x[17]+0.02*x[15]*x[18]-0.14*x[15]*x[20]-0.18*x[15]*x[21]+0.18*x[16]*x[17]-0.1*x[16]*x[18]-0.02*x[16]*x[20]-0.02*x[16]*x[21]+0.02*x[17]*x[18]-0.1*x[17]*x[19]+0.2*x[17]*x[20]-0.06*x[17]*x[21]+0.1*x[18]*x[19]-0.06*x[18]*x[20]+0.1*x[18]*x[21]+0.04*x[19]*x[21]-0.02*x[19]*x[20]+0.04*x[20]*x[21]+(-0.49*x[2]*x[2])-0.39*x[3]*x[3]-0.63*x[4]*x[4]-0.46*x[5]*x[5]-0.64*x[6]*x[6]-0.44*x[7]*x[7]-0.56*x[8]*x[8]-0.44*x[9]*x[9]-0.56*x[10]*x[10]-0.42*x[11]*x[11]-0.56*x[12]*x[12]-0.36*x[13]*x[13]-0.44*x[14]*x[14]-0.4*x[15]*x[15]-0.63*x[16]*x[16]-0.44*x[17]*x[17]-0.53*x[18]*x[18]-0.53*x[19]*x[19]-0.45*x[20]*x[20]-0.46*x[21]*x[21]-0.63*x[2]+0.62*x[3]+0.62*x[5]+0.76*x[6]+0.1*x[7]+0.83*x[8]+0.2*x[9]+0.82*x[10]-0.32*x[11]-0.25*x[12]+0.45*x[13]+0.39*x[14]-0.59*x[15]-0.06*x[16]-0.34*x[17]-0.63*x[18]+0.71*x[19]+0.51*x[20]-0.32*x[21] <= 56.3)
@NLconstraint(m, e11, 0.22*x[2]*x[3]-0.12*x[2]*x[4]-0.02*x[2]*x[5]+0.06*x[2]*x[6]+0.04*x[2]*x[7]-0.08*x[2]*x[8]+0.04*x[2]*x[9]+0.18*x[2]*x[10]-0.1*x[2]*x[11]+0.08*x[2]*x[12]+0.14*x[2]*x[13]-0.14*x[2]*x[14]+0.08*x[2]*x[15]+0.14*x[2]*x[16]+0.2*x[2]*x[17]-0.04*x[2]*x[18]+0.16*x[2]*x[19]-0.04*x[2]*x[20]+0.08*x[2]*x[21]+0.04*x[3]*x[5]-0.14*x[3]*x[4]-0.26*x[3]*x[6]+0.22*x[3]*x[7]+0.06*x[3]*x[8]-0.08*x[3]*x[9]+0.02*x[3]*x[10]+0.08*x[3]*x[11]-0.06*x[3]*x[12]+0.16*x[3]*x[13]+0.18*x[3]*x[14]+0.2*x[3]*x[15]-0.06*x[3]*x[16]+0.26*x[3]*x[17]-0.06*x[3]*x[18]-0.02*x[3]*x[19]-0.04*x[3]*x[20]+0.04*x[3]*x[21]+0.02*x[4]*x[5]-0.14*x[4]*x[6]+0.08*x[4]*x[7]+0.14*x[4]*x[8]+0.02*x[4]*x[9]-0.06*x[4]*x[10]+0.22*x[4]*x[11]-0.14*x[4]*x[12]+0.02*x[4]*x[13]+0.2*x[4]*x[14]-0.04*x[4]*x[15]+0.18*x[4]*x[16]+0.1*x[4]*x[17]+0.02*x[4]*x[18]-0.12*x[4]*x[19]-0.02*x[4]*x[20]+0.18*x[4]*x[21]+0.08*x[5]*x[6]-0.16*x[5]*x[7]+0.02*x[5]*x[8]-0.12*x[5]*x[9]+0.1*x[5]*x[10]-0.06*x[5]*x[11]-0.02*x[5]*x[12]-0.28*x[5]*x[13]+0.04*x[5]*x[14]+0.1*x[5]*x[15]+0.16*x[5]*x[16]+0.1*x[5]*x[17]+0.06*x[5]*x[18]-0.1*x[5]*x[19]+0.04*x[5]*x[20]-0.18*x[5]*x[21]+0.06*x[6]*x[7]-0.1*x[6]*x[8]+0.1*x[6]*x[9]-0.02*x[6]*x[10]+0.04*x[6]*x[11]+0.02*x[6]*x[12]-0.16*x[6]*x[13]-0.06*x[6]*x[14]-0.22*x[6]*x[15]+0.2*x[6]*x[16]+0.1*x[6]*x[18]-0.04*x[6]*x[19]+0.06*x[6]*x[20]+0.1*x[6]*x[21]+(-0.12*x[7]*x[8])-0.04*x[7]*x[9]+0.3*x[7]*x[10]-0.02*x[7]*x[11]+0.02*x[7]*x[13]+0.14*x[7]*x[14]-0.08*x[7]*x[15]+0.16*x[7]*x[16]-0.04*x[7]*x[17]-0.02*x[7]*x[18]-0.14*x[7]*x[19]-0.04*x[7]*x[20]-0.06*x[7]*x[21]+(-0.12*x[8]*x[9])-0.12*x[8]*x[10]+0.16*x[8]*x[11]+0.12*x[8]*x[12]+0.04*x[8]*x[13]-0.06*x[8]*x[14]+0.1*x[8]*x[15]+0.04*x[8]*x[18]-0.02*x[8]*x[19]+0.1*x[8]*x[20]-0.12*x[8]*x[21]+0.02*x[9]*x[10]-0.18*x[9]*x[11]+0.14*x[9]*x[12]-0.14*x[9]*x[13]-0.04*x[9]*x[14]+0.08*x[9]*x[15]+0.02*x[9]*x[16]-0.22*x[9]*x[17]+0.06*x[9]*x[18]-0.14*x[9]*x[19]+0.16*x[9]*x[20]+0.24*x[9]*x[21]+0.16*x[10]*x[11]+0.02*x[10]*x[12]-0.2*x[10]*x[13]+0.12*x[10]*x[14]-0.12*x[10]*x[15]-0.12*x[10]*x[16]-0.3*x[10]*x[17]+0.22*x[10]*x[18]+0.06*x[10]*x[19]+0.02*x[10]*x[21]+0.1*x[11]*x[12]-0.14*x[11]*x[13]-0.14*x[11]*x[14]-0.12*x[11]*x[15]+0.04*x[11]*x[16]-0.06*x[11]*x[17]+0.34*x[11]*x[18]+0.2*x[11]*x[19]+0.1*x[11]*x[20]+0.06*x[11]*x[21]+0.04*x[12]*x[14]-0.26*x[12]*x[13]-0.08*x[12]*x[15]-0.04*x[12]*x[16]+0.18*x[12]*x[17]-0.06*x[12]*x[18]+0.04*x[12]*x[19]+0.2*x[12]*x[20]+0.04*x[12]*x[21]+0.08*x[13]*x[15]-0.04*x[13]*x[14]-0.08*x[13]*x[16]+0.12*x[13]*x[17]+0.2*x[13]*x[18]+0.04*x[13]*x[20]+0.18*x[13]*x[21]+0.06*x[14]*x[15]-0.02*x[14]*x[16]+0.12*x[14]*x[17]-0.1*x[14]*x[18]-0.12*x[14]*x[19]+0.12*x[14]*x[20]-0.04*x[14]*x[21]+0.02*x[15]*x[17]-0.18*x[15]*x[16]-0.02*x[15]*x[18]-0.1*x[15]*x[19]+0.22*x[15]*x[20]+0.16*x[15]*x[21]+0.12*x[16]*x[17]-0.1*x[16]*x[18]+0.12*x[16]*x[19]+0.06*x[16]*x[20]+0.28*x[16]*x[21]+(-0.04*x[17]*x[18])-0.1*x[17]*x[19]-0.02*x[17]*x[20]-0.1*x[17]*x[21]+0.24*x[18]*x[19]+0.08*x[18]*x[20]+0.1*x[18]*x[21]+0.04*x[19]*x[21]-0.04*x[19]*x[20]+0.12*x[20]*x[21]+(-0.4*x[2]*x[2])-0.54*x[3]*x[3]-0.38*x[4]*x[4]-0.42*x[5]*x[5]-0.56*x[6]*x[6]-0.44*x[7]*x[7]-0.45*x[8]*x[8]-0.42*x[9]*x[9]-0.43*x[10]*x[10]-0.5*x[11]*x[11]-0.32*x[12]*x[12]-0.58*x[13]*x[13]-0.43*x[14]*x[14]-0.37*x[15]*x[15]-0.49*x[16]*x[16]-0.42*x[17]*x[17]-0.47*x[18]*x[18]-0.53*x[19]*x[19]-0.51*x[20]*x[20]-0.56*x[21]*x[21]+0.89*x[2]+0.66*x[3]-0.34*x[4]-0.3*x[5]-0.65*x[6]-0.55*x[7]+0.45*x[8]-0.82*x[9]-0.19*x[10]+0.83*x[11]-0.6*x[12]+0.18*x[13]+0.49*x[14]-0.68*x[15]-0.3*x[16]+0.69*x[17]+0.4*x[18]+0.16*x[19]-0.71*x[20]-0.87*x[21] <= 20.75)
@constraint(m, e12, -0.2*x[2]+0.82*x[3]-0.92*x[4]+0.48*x[5]-0.73*x[6]-0.52*x[7]+0.73*x[8]-0.63*x[9]-0.94*x[10]-0.57*x[11]-0.34*x[12]+0.67*x[13]-0.38*x[14]-0.42*x[15]+0.64*x[16]+0.15*x[17]+0.43*x[18]+0.57*x[19]+0.2*x[20]+0.75*x[21] == 0.91)
@constraint(m, e13, -0.79*x[2]+0.27*x[3]+0.45*x[4]+0.89*x[5]+0.89*x[6]+0.58*x[7]-0.96*x[8]-0.37*x[9]-0.64*x[10]-0.13*x[11]+0.66*x[12]+0.04*x[13]+0.21*x[14]+0.5*x[15]-0.1*x[16]+0.91*x[17]+0.84*x[18]-0.01*x[19]-0.74*x[20]-0.67*x[21] == 0.5)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
