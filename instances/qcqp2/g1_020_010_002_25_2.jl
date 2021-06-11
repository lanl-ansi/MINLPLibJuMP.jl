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
@NLconstraint(m, e1, -(-1.42*x[2]*x[14]-0.5*x[2]*x[17]+(-1.36*x[3]*x[5])-1.58*x[3]*x[7]-1.4*x[3]*x[10]+0.42*x[3]*x[16]-0.02*x[3]*x[20]+0.66*x[4]*x[7]-1.72*x[4]*x[15]-0.54*x[4]*x[16]+1.36*x[5]*x[8]-0.46*x[5]*x[18]+0.28*x[6]*x[7]+1.28*x[6]*x[13]+1.62*x[6]*x[17]+1.22*x[7]*x[10]-0.62*x[7]*x[15]-1.2*x[7]*x[17]+0.5*x[7]*x[19]+0.16*x[8]*x[13]-x[8]*x[18]-1.74*x[8]*x[19]+0.62*x[9]*x[10]-1.34*x[9]*x[11]-1.16*x[9]*x[15]-0.04*x[9]*x[16]+1.9*x[10]*x[11]-1.12*x[10]*x[12]+1.46*x[10]*x[13]-1.32*x[10]*x[14]-1.42*x[10]*x[16]+0.86*x[10]*x[19]-1.52*x[10]*x[21]+1.18*x[11]*x[20]-1.58*x[11]*x[14]-1.36*x[11]*x[21]+0.36*x[12]*x[14]+0.38*x[12]*x[16]-1.78*x[12]*x[19]+0.18*x[13]*x[20]-0.12*x[13]*x[19]+0.98*x[14]*x[18]+1.88*x[14]*x[20]-0.94*x[15]*x[17]-1.52*x[16]*x[19]+1.02*x[17]*x[20]-0.46*x[17]*x[21]+0.3*x[4]*x[4]-0.73*x[2]*x[2]+0.54*x[20]*x[20]-0.95*x[2]+0.28*x[3]-0.43*x[4]+0.23*x[5]+0.49*x[6]+0.47*x[7]+0.74*x[8]+0.56*x[9]+0.15*x[10]-0.6*x[11]-0.68*x[12]-0.47*x[13]-0.81*x[14]-0.54*x[15]+0.35*x[16]-0.07*x[17]-0.44*x[18]-0.03*x[19]-0.89*x[20]+0.16*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 1.68*x[2]*x[21]-1.28*x[2]*x[12]+0.62*x[3]*x[12]+1.7*x[3]*x[13]+0.22*x[3]*x[15]+1.24*x[3]*x[18]-0.48*x[3]*x[20]-0.84*x[3]*x[21]+1.94*x[4]*x[10]+1.2*x[4]*x[18]+0.86*x[4]*x[20]+0.22*x[5]*x[12]-1.16*x[5]*x[13]-0.12*x[5]*x[14]+(-0.48*x[6]*x[8])-1.3*x[6]*x[17]-0.74*x[6]*x[18]+0.72*x[7]*x[11]+0.64*x[7]*x[16]+(-1.86*x[8]*x[9])-0.42*x[8]*x[11]-1.1*x[8]*x[12]-1.12*x[8]*x[15]+0.84*x[8]*x[17]+0.78*x[8]*x[18]+0.14*x[9]*x[10]+1.12*x[9]*x[11]+1.58*x[9]*x[16]-1.38*x[9]*x[17]-1.76*x[9]*x[18]-1.62*x[9]*x[20]+0.58*x[11]*x[13]+0.2*x[11]*x[18]-0.62*x[12]*x[19]+0.98*x[13]*x[17]+0.96*x[13]*x[21]+(-0.08*x[14]*x[17])-1.72*x[14]*x[18]+0.32*x[14]*x[19]+1.06*x[15]*x[19]+0.66*x[16]*x[20]-0.72*x[16]*x[18]+(-0.9*x[17]*x[20])-1.28*x[17]*x[21]+0.12*x[18]*x[19]+0.68*x[19]*x[20]+0.46*x[19]*x[21]+0.16*x[11]*x[11]-0.73*x[10]*x[10]+0.51*x[16]*x[16]+0.43*x[2]-0.09*x[3]-0.54*x[4]-0.79*x[5]+0.08*x[6]+0.16*x[7]-0.34*x[8]-0.34*x[9]+0.3*x[10]-0.8*x[11]-0.76*x[12]+0.11*x[13]+0.91*x[14]+0.71*x[15]-0.19*x[16]-0.72*x[17]+0.54*x[18]+0.68*x[19]-0.9*x[20]-0.35*x[21] <= 38.39)
@NLconstraint(m, e3, 1.02*x[2]*x[3]-1.76*x[2]*x[6]-0.64*x[2]*x[9]-1.9*x[2]*x[12]-0.1*x[2]*x[15]-0.06*x[2]*x[17]+1.72*x[2]*x[19]+1.14*x[3]*x[14]-0.22*x[3]*x[15]-1.12*x[3]*x[16]-1.5*x[3]*x[18]+0.44*x[3]*x[20]+0.02*x[4]*x[9]-1.54*x[4]*x[11]-0.04*x[4]*x[12]+1.32*x[4]*x[16]-1.06*x[4]*x[17]+0.12*x[5]*x[21]-0.8*x[5]*x[16]+0.16*x[6]*x[7]+0.26*x[6]*x[10]+1.02*x[6]*x[12]+1.96*x[6]*x[13]+0.74*x[6]*x[21]+1.24*x[7]*x[11]+1.94*x[7]*x[13]+0.32*x[7]*x[15]+1.72*x[7]*x[18]+1.78*x[7]*x[19]+1.8*x[7]*x[21]+1.18*x[8]*x[19]+0.18*x[9]*x[19]-0.08*x[9]*x[21]-1.46*x[10]*x[20]+0.36*x[11]*x[13]+0.46*x[11]*x[19]+1.1*x[12]*x[18]+0.62*x[12]*x[19]-1.84*x[12]*x[21]+1.54*x[13]*x[18]+2*x[13]*x[21]-1.22*x[14]*x[16]-1.26*x[19]*x[21]+0.93*x[4]*x[4]+0.33*x[9]*x[9]+0.67*x[12]*x[12]+0.77*x[17]*x[17]-0.58*x[18]*x[18]+0.77*x[19]*x[19]-0.62*x[20]*x[20]-0.16*x[2]-0.65*x[3]+0.59*x[4]+0.57*x[5]-0.29*x[6]+0.14*x[7]+0.76*x[8]-0.07*x[9]-0.58*x[10]-0.19*x[11]+0.65*x[12]-0.25*x[13]+0.86*x[14]+0.17*x[15]-0.13*x[16]+x[17]-0.11*x[18]+0.04*x[19]+0.42*x[20]+0.83*x[21] <= 69.38)
@NLconstraint(m, e4, (-0.08*x[2]*x[6])-0.6*x[2]*x[8]-1.76*x[2]*x[9]+1.98*x[2]*x[15]+1.98*x[3]*x[10]-0.56*x[3]*x[11]+1.84*x[3]*x[15]-0.72*x[3]*x[17]+0.6*x[4]*x[5]-0.1*x[4]*x[8]+1.68*x[4]*x[13]+1.94*x[4]*x[20]+(-1.24*x[5]*x[6])-1.26*x[5]*x[7]+1.02*x[5]*x[19]+(-0.48*x[6]*x[9])-0.2*x[6]*x[14]+1.34*x[7]*x[9]-1.88*x[7]*x[11]+1.04*x[7]*x[17]+1.74*x[7]*x[19]+(-0.32*x[8]*x[11])-1.78*x[8]*x[12]+0.22*x[8]*x[18]+1.9*x[8]*x[19]+0.16*x[10]*x[12]+0.9*x[10]*x[13]+0.14*x[10]*x[19]-0.4*x[10]*x[20]+1.34*x[11]*x[15]-1.74*x[11]*x[17]+x[12]*x[16]-0.94*x[12]*x[14]+(-0.64*x[13]*x[14])-1.02*x[13]*x[15]+1.36*x[14]*x[15]-1.16*x[14]*x[19]+0.96*x[15]*x[17]+0.72*x[15]*x[18]-0.4*x[15]*x[20]+1.34*x[15]*x[21]+0.94*x[16]*x[19]+1.1*x[16]*x[21]+0.1*x[17]*x[20]-0.74*x[19]*x[21]+0.12*x[3]*x[3]-0.39*x[2]*x[2]+0.82*x[4]*x[4]+0.51*x[17]*x[17]-0.31*x[2]-0.82*x[3]+0.9*x[4]+0.66*x[5]-0.63*x[6]+0.78*x[7]-0.5*x[8]+0.71*x[9]-0.68*x[10]+0.02*x[11]-0.92*x[12]-0.7*x[13]+0.91*x[14]+0.85*x[15]-0.19*x[16]+0.45*x[17]+0.05*x[18]+0.54*x[19]+0.99*x[20]+0.57*x[21] <= 16.33)
@NLconstraint(m, e5, 0.82*x[2]*x[6]+1.64*x[2]*x[20]+1.82*x[3]*x[12]-1.22*x[3]*x[4]-1.32*x[3]*x[18]+0.02*x[3]*x[19]-1.36*x[3]*x[21]+1.7*x[4]*x[6]-0.36*x[4]*x[12]+1.56*x[4]*x[14]-0.5*x[4]*x[16]+0.98*x[4]*x[20]+1.42*x[5]*x[7]-0.52*x[5]*x[17]+0.72*x[5]*x[18]-0.8*x[5]*x[20]+(-1.68*x[6]*x[10])-0.5*x[6]*x[12]+1.84*x[6]*x[17]-1.72*x[6]*x[20]+0.14*x[7]*x[14]+0.78*x[7]*x[15]-1.52*x[7]*x[19]-1.54*x[7]*x[20]+1.36*x[8]*x[10]+1.3*x[8]*x[14]+0.38*x[8]*x[19]+1.04*x[8]*x[20]+1.52*x[9]*x[10]-0.68*x[9]*x[19]+1.08*x[9]*x[21]+0.78*x[10]*x[12]-0.72*x[10]*x[13]+1.92*x[11]*x[17]-1.52*x[11]*x[14]+1.36*x[11]*x[19]+0.3*x[11]*x[21]-0.76*x[12]*x[21]+(-1.16*x[13]*x[14])-0.5*x[13]*x[20]+(-1.24*x[15]*x[16])-0.86*x[15]*x[19]+0.3*x[16]*x[20]+0.56*x[16]*x[21]+1.56*x[17]*x[19]+1.84*x[19]*x[21]+0.71*x[11]*x[11]-0.3*x[4]*x[4]-0.24*x[14]*x[14]-0.33*x[2]-0.1*x[3]-0.77*x[4]+0.42*x[5]-0.96*x[6]+0.54*x[7]+0.44*x[8]-0.79*x[9]+0.17*x[10]-0.77*x[11]+0.1*x[12]+0.71*x[13]-0.08*x[14]-0.45*x[15]-0.34*x[16]+0.46*x[17]-0.6*x[18]+0.13*x[19]+0.92*x[20]-0.33*x[21] <= 19.34)
@NLconstraint(m, e6, (-1.86*x[2]*x[11])-1.66*x[2]*x[12]-0.64*x[2]*x[13]-0.56*x[2]*x[17]-0.98*x[2]*x[19]+1.48*x[3]*x[4]-0.82*x[3]*x[12]-1.48*x[3]*x[14]+1.28*x[3]*x[17]+0.6*x[4]*x[6]+1.9*x[4]*x[14]+(-0.5*x[5]*x[10])-0.56*x[5]*x[12]+1.7*x[5]*x[16]+1.12*x[5]*x[19]+0.22*x[6]*x[13]-0.54*x[6]*x[10]+1.22*x[6]*x[14]-0.26*x[6]*x[15]-1.92*x[6]*x[16]-1.7*x[6]*x[19]+1.46*x[7]*x[9]-1.6*x[7]*x[13]+0.06*x[7]*x[15]+1.22*x[8]*x[12]-1.14*x[8]*x[10]+0.82*x[8]*x[15]-1.9*x[8]*x[16]+(-0.22*x[9]*x[14])-0.44*x[9]*x[15]-0.12*x[9]*x[18]+0.2*x[9]*x[19]+1.74*x[11]*x[13]-x[11]*x[12]+1.48*x[11]*x[14]+1.78*x[12]*x[15]-0.96*x[12]*x[13]-1.7*x[12]*x[19]+1.02*x[12]*x[20]+0.78*x[13]*x[15]-1.18*x[13]*x[17]-0.98*x[13]*x[18]+1.34*x[14]*x[15]+1.84*x[15]*x[17]-0.92*x[16]*x[19]+1.46*x[18]*x[21]+0.84*x[3]*x[3]+0.54*x[9]*x[9]+0.8*x[11]*x[11]+0.51*x[17]*x[17]-0.84*x[2]+0.09*x[3]-0.19*x[4]-0.97*x[5]+0.89*x[6]+0.11*x[7]+0.51*x[8]-0.36*x[9]+0.11*x[10]+0.05*x[11]+0.54*x[12]-0.2*x[13]-0.77*x[14]+0.41*x[15]-0.2*x[16]-0.02*x[17]+0.09*x[18]+0.96*x[19]+0.77*x[20]+0.03*x[21] <= 51.87)
@NLconstraint(m, e7, 1.78*x[2]*x[7]+1.32*x[2]*x[13]-1.64*x[2]*x[17]+1.74*x[3]*x[7]+1.46*x[3]*x[13]+0.36*x[4]*x[16]-1.8*x[4]*x[6]-0.86*x[4]*x[19]+1.44*x[4]*x[20]-1.9*x[4]*x[21]+1.18*x[5]*x[9]-0.98*x[5]*x[7]-1.8*x[5]*x[11]+0.6*x[5]*x[14]+0.26*x[6]*x[15]-0.36*x[6]*x[7]+1.8*x[6]*x[18]+1.68*x[7]*x[9]+0.28*x[7]*x[10]+1.74*x[7]*x[14]-1.36*x[7]*x[17]+1.5*x[7]*x[20]+(-0.06*x[8]*x[18])-0.66*x[8]*x[19]-0.78*x[8]*x[20]+0.08*x[9]*x[14]-0.02*x[9]*x[15]-1.8*x[9]*x[17]+0.16*x[10]*x[17]+1.26*x[10]*x[18]+1.36*x[10]*x[20]+0.36*x[11]*x[17]-1.48*x[12]*x[14]+1.48*x[13]*x[16]-0.42*x[13]*x[19]+(-0.02*x[14]*x[17])-0.78*x[14]*x[21]+1.86*x[15]*x[18]+1.5*x[15]*x[19]+1.3*x[15]*x[20]+1.3*x[16]*x[19]+1.52*x[17]*x[19]+1.98*x[18]*x[21]+1.92*x[19]*x[20]+(-0.26*x[9]*x[9])-0.17*x[11]*x[11]-0.55*x[12]*x[12]+0.26*x[17]*x[17]+0.32*x[19]*x[19]+0.59*x[20]*x[20]-0.21*x[2]-0.35*x[3]-0.17*x[4]-0.35*x[5]-0.63*x[6]+0.83*x[7]+0.26*x[8]-0.4*x[9]+0.23*x[10]-0.64*x[11]+0.94*x[12]-0.45*x[13]+0.04*x[14]+0.37*x[15]+0.24*x[16]+0.67*x[17]-0.2*x[18]+0.02*x[19]-0.2*x[20]-0.54*x[21] <= 11.84)
@NLconstraint(m, e8, 0.34*x[2]*x[8]+0.9*x[2]*x[11]-0.38*x[2]*x[13]-0.88*x[2]*x[18]+1.7*x[3]*x[6]+0.64*x[3]*x[8]-0.62*x[3]*x[10]+0.98*x[3]*x[13]+1.7*x[3]*x[15]+1.62*x[3]*x[19]+0.88*x[4]*x[12]-1.78*x[4]*x[6]+0.72*x[4]*x[15]-1.48*x[4]*x[16]-0.58*x[4]*x[21]+0.8*x[5]*x[7]+0.76*x[5]*x[9]-1.84*x[5]*x[10]-1.64*x[5]*x[13]-1.76*x[5]*x[21]+2*x[6]*x[8]+1.3*x[6]*x[16]-1.94*x[6]*x[17]-1.48*x[6]*x[19]+0.1*x[7]*x[12]+0.08*x[7]*x[17]+1.06*x[8]*x[12]-1.18*x[8]*x[9]+0.02*x[8]*x[20]+0.22*x[8]*x[21]+0.14*x[9]*x[12]-1.46*x[9]*x[14]+1.94*x[10]*x[14]-1.72*x[10]*x[18]+0.66*x[11]*x[17]-1.18*x[11]*x[20]+1.18*x[11]*x[21]+(-0.34*x[12]*x[15])-1.36*x[12]*x[17]+1.32*x[13]*x[20]+(-1.2*x[14]*x[16])-0.84*x[14]*x[18]+x[14]*x[21]-1.6*x[15]*x[19]+0.04*x[16]*x[18]+1.12*x[16]*x[19]-1.56*x[16]*x[21]+0.58*x[9]*x[9]-0.34*x[11]*x[11]-0.91*x[18]*x[18]-0.69*x[2]+0.5*x[3]-0.46*x[4]+0.95*x[5]+0.5*x[6]-0.95*x[7]-0.92*x[8]-0.4*x[9]+0.63*x[10]+0.39*x[11]-0.55*x[12]-0.88*x[13]-0.65*x[14]+0.83*x[15]-0.7*x[16]+0.86*x[17]+0.34*x[18]-0.58*x[19]+0.48*x[20]+0.96*x[21] <= 22.22)
@NLconstraint(m, e9, 1.34*x[2]*x[5]-1.72*x[2]*x[4]+0.14*x[2]*x[8]+1.2*x[2]*x[10]+1.82*x[3]*x[7]-0.34*x[3]*x[4]-0.72*x[3]*x[13]+0.26*x[3]*x[14]-0.62*x[3]*x[19]+(-1.2*x[4]*x[5])-0.68*x[4]*x[7]+0.74*x[4]*x[10]-0.64*x[4]*x[13]-0.24*x[4]*x[18]+2*x[5]*x[9]-1.12*x[5]*x[12]+0.74*x[5]*x[14]-0.52*x[5]*x[15]-0.24*x[5]*x[17]+1.56*x[6]*x[7]+1.82*x[6]*x[12]+0.5*x[6]*x[16]+0.1*x[6]*x[19]+1.02*x[7]*x[10]-1.54*x[7]*x[11]-0.86*x[7]*x[17]-1.16*x[7]*x[18]+0.06*x[8]*x[12]+1.12*x[9]*x[16]-1.88*x[9]*x[11]-0.34*x[9]*x[21]+0.32*x[10]*x[11]+1.16*x[10]*x[13]-1.76*x[10]*x[17]+1.16*x[10]*x[18]+1.48*x[11]*x[17]-1.04*x[11]*x[12]+0.88*x[11]*x[19]+(-0.54*x[12]*x[15])-0.72*x[12]*x[16]+0.46*x[13]*x[20]-0.7*x[13]*x[17]+0.94*x[14]*x[19]+1.34*x[14]*x[20]-0.14*x[16]*x[21]+0.8*x[17]*x[19]-1.22*x[19]*x[21]+(-0.05*x[6]*x[6])-0.62*x[9]*x[9]-0.33*x[11]*x[11]-0.93*x[2]+0.71*x[3]-0.19*x[4]+0.99*x[5]-0.59*x[6]+0.34*x[7]+0.42*x[8]+0.64*x[10]+0.06*x[11]-0.81*x[12]+0.87*x[13]-0.96*x[14]+0.63*x[15]-0.87*x[16]+0.19*x[17]-0.04*x[18]-0.05*x[19]+0.21*x[20]+0.48*x[21] <= 15.27)
@NLconstraint(m, e10, (-0.9*x[2]*x[3])-0.84*x[2]*x[5]-0.56*x[2]*x[9]-0.4*x[2]*x[20]+0.24*x[2]*x[21]+1.68*x[3]*x[11]-1.22*x[3]*x[5]-0.74*x[3]*x[18]+0.06*x[3]*x[21]+1.02*x[4]*x[8]+0.76*x[4]*x[16]+(-0.08*x[5]*x[9])-1.98*x[5]*x[10]+0.64*x[5]*x[19]+1.2*x[6]*x[10]-1.76*x[6]*x[8]+1.1*x[6]*x[12]-1.72*x[6]*x[14]-0.86*x[6]*x[15]-1.5*x[6]*x[17]-1.74*x[6]*x[18]+1.24*x[7]*x[14]-1.72*x[7]*x[13]+1.8*x[7]*x[16]-0.52*x[7]*x[20]+1.32*x[8]*x[10]+1.22*x[8]*x[12]-1.72*x[8]*x[17]+(-0.52*x[9]*x[11])-1.3*x[9]*x[12]+1.4*x[9]*x[15]-0.06*x[9]*x[16]+0.82*x[9]*x[21]-1.42*x[10]*x[11]+1.82*x[11]*x[14]-0.5*x[11]*x[16]+1.76*x[13]*x[17]-1.04*x[13]*x[20]+1.82*x[14]*x[21]-0.28*x[14]*x[17]+1.58*x[15]*x[17]+1.08*x[15]*x[18]-1.12*x[15]*x[19]+1.1*x[18]*x[19]-1.48*x[20]*x[21]+0.9*x[8]*x[8]-0.48*x[6]*x[6]+0.45*x[9]*x[9]-0.65*x[14]*x[14]+0.52*x[2]+0.46*x[3]-0.58*x[4]-0.96*x[5]+0.78*x[6]+0.66*x[7]-0.09*x[8]+0.06*x[9]+0.02*x[10]+0.65*x[11]-0.56*x[12]-0.32*x[13]-0.4*x[14]+0.69*x[15]-0.05*x[16]-0.51*x[17]+0.69*x[18]+0.8*x[19]+0.63*x[20]+0.51*x[21] <= 35.01)
@NLconstraint(m, e11, 0.48*x[2]*x[21]-1.76*x[2]*x[6]+0.26*x[3]*x[5]-0.86*x[3]*x[10]+1.22*x[3]*x[11]+1.76*x[3]*x[13]-1.58*x[3]*x[14]+x[3]*x[16]+1.48*x[3]*x[19]+1.42*x[3]*x[20]+1.64*x[4]*x[13]-0.12*x[4]*x[8]-0.66*x[4]*x[14]+1.8*x[4]*x[17]+0.3*x[4]*x[18]-0.58*x[4]*x[20]+1.34*x[5]*x[13]-0.1*x[5]*x[20]+0.74*x[5]*x[21]+0.96*x[6]*x[14]-0.04*x[6]*x[10]-0.98*x[6]*x[16]+1.2*x[6]*x[17]+1.88*x[7]*x[13]+1.68*x[7]*x[16]-0.28*x[7]*x[18]-0.36*x[8]*x[9]+1.84*x[9]*x[14]+1.32*x[9]*x[17]+1.54*x[10]*x[17]-1.18*x[10]*x[14]+1.52*x[10]*x[19]+(-0.56*x[11]*x[12])-1.24*x[11]*x[14]-0.12*x[11]*x[16]-1.92*x[11]*x[17]-1.1*x[11]*x[20]-1.64*x[14]*x[18]+0.16*x[15]*x[17]-1.02*x[15]*x[18]+(-1.76*x[16]*x[17])-0.7*x[16]*x[18]-0.52*x[18]*x[21]-1.52*x[20]*x[21]+(-0.49*x[4]*x[4])-0.33*x[11]*x[11]+0.61*x[12]*x[12]-0.76*x[16]*x[16]-0.6*x[19]*x[19]+0.14*x[21]*x[21]-0.95*x[2]+0.46*x[3]-0.24*x[4]+0.88*x[5]-0.79*x[6]+0.76*x[7]+0.61*x[8]-0.7*x[9]-0.47*x[10]+0.16*x[11]+0.1*x[12]-0.99*x[13]-0.77*x[14]-0.04*x[16]-0.64*x[17]-0.68*x[18]+0.73*x[19]+0.35*x[20]+0.37*x[21] <= 94.75)
@constraint(m, e12, -0.18*x[2]-0.84*x[3]+0.12*x[4]-0.09*x[5]+0.13*x[6]+0.87*x[7]-0.99*x[8]+0.94*x[9]+0.43*x[10]+0.95*x[11]+0.05*x[12]+0.96*x[13]+0.04*x[14]-0.91*x[15]-0.27*x[16]-0.82*x[17]+0.96*x[18]+0.33*x[19]+0.95*x[20]+0.48*x[21] == 0.66)
@constraint(m, e13, -0.68*x[2]+0.2*x[3]-0.71*x[4]-0.56*x[5]+0.52*x[6]-0.31*x[7]-0.54*x[8]+0.8*x[9]+0.46*x[10]+0.87*x[11]-0.79*x[12]+0.49*x[13]-0.39*x[14]+0.27*x[15]+0.55*x[16]-0.4*x[17]+0.06*x[18]+0.42*x[19]+0.51*x[20]-0.6*x[21] == -0.68)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
