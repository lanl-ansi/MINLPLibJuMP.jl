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
@NLconstraint(m, e1, -(1.91*x[2]*x[12]+0.05*x[2]*x[13]-0.6*x[2]*x[14]-0.98*x[2]*x[15]-0.8*x[2]*x[16]-1.09*x[2]*x[17]-0.56*x[2]*x[18]-1.4*x[2]*x[19]+0.15*x[2]*x[21]+(-1.09*x[3]*x[12])-0.98*x[3]*x[14]-1.37*x[3]*x[17]-1.15*x[3]*x[18]-0.09*x[3]*x[19]+(-1.26*x[4]*x[12])-1.64*x[4]*x[14]-1.44*x[4]*x[16]-0.76*x[4]*x[18]+0.81*x[4]*x[19]-0.94*x[4]*x[21]+(-1.12*x[5]*x[12])-1.25*x[5]*x[13]+0.14*x[5]*x[14]-0.87*x[5]*x[15]-1.86*x[5]*x[20]+0.02*x[5]*x[21]+0.46*x[6]*x[13]-1.54*x[6]*x[14]-0.76*x[6]*x[15]+1.05*x[7]*x[13]-1.31*x[7]*x[15]+1.96*x[7]*x[19]+1.91*x[8]*x[17]-1.42*x[8]*x[16]+0.76*x[8]*x[18]+1.55*x[8]*x[20]-0.63*x[8]*x[21]+0.18*x[9]*x[16]-0.69*x[9]*x[13]+1.35*x[9]*x[17]-1.02*x[9]*x[18]-1.46*x[9]*x[19]+0.14*x[10]*x[12]+0.77*x[10]*x[13]-0.31*x[10]*x[15]-0.45*x[10]*x[17]+0.56*x[10]*x[21]+1.34*x[11]*x[17]-1.97*x[11]*x[14]-1.22*x[11]*x[18]+0.88*x[2]-0.45*x[3]+0.56*x[4]+0.74*x[5]+0.13*x[6]-0.3*x[7]+0.36*x[8]-0.16*x[9]+0.94*x[10]-0.2*x[11]-0.64*x[12]-0.41*x[13]-0.1*x[14]-0.17*x[15]-0.72*x[16]+0.81*x[17]+0.55*x[18]+0.22*x[19]-0.32*x[20]+0.39*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.7*x[2]*x[17]-0.38*x[2]*x[16]+0.69*x[2]*x[19]+0.22*x[2]*x[20]+1.53*x[2]*x[21]+1.94*x[3]*x[12]+1.14*x[3]*x[13]+1.88*x[3]*x[14]+1.41*x[3]*x[15]+0.28*x[3]*x[18]-0.67*x[3]*x[19]+0.4*x[4]*x[17]-0.85*x[4]*x[13]+1.88*x[4]*x[18]+0.34*x[4]*x[19]+1.45*x[5]*x[13]+1.67*x[5]*x[14]-0.74*x[5]*x[16]+1.83*x[5]*x[18]-0.34*x[5]*x[21]+0.8*x[6]*x[12]-1.38*x[6]*x[13]-0.36*x[6]*x[15]+1.78*x[6]*x[17]-0.33*x[6]*x[20]+1.52*x[7]*x[16]-1.21*x[7]*x[20]+(-0.71*x[8]*x[13])-0.19*x[8]*x[14]-1.61*x[8]*x[15]-1.71*x[8]*x[18]+1.45*x[8]*x[19]+0.5*x[8]*x[20]+0.18*x[8]*x[21]+0.65*x[9]*x[12]+0.43*x[9]*x[15]+0.78*x[9]*x[16]-x[9]*x[17]-0.35*x[9]*x[19]+1.16*x[10]*x[14]-1.39*x[10]*x[15]-0.76*x[10]*x[19]+1.93*x[10]*x[21]+0.15*x[11]*x[13]-1.4*x[11]*x[14]-0.6*x[11]*x[16]+1.09*x[11]*x[17]-1.46*x[11]*x[18]+0.06*x[11]*x[19]+0.78*x[11]*x[21]+0.98*x[2]-0.57*x[3]-0.51*x[4]-0.99*x[5]-0.59*x[6]-0.29*x[7]+0.99*x[8]-0.84*x[9]-0.43*x[10]+0.38*x[11]+0.8*x[12]-0.59*x[13]-0.34*x[14]-0.78*x[15]-0.16*x[16]+0.33*x[17]-0.23*x[18]-0.04*x[19]+0.88*x[20]+0.04*x[21] <= 76.36)
@NLconstraint(m, e3, 1.66*x[2]*x[13]-1.28*x[2]*x[12]+0.38*x[2]*x[17]-0.57*x[2]*x[20]+0.24*x[3]*x[12]-1.5*x[3]*x[16]-0.09*x[3]*x[17]+0.73*x[3]*x[19]+1.97*x[3]*x[20]+(-1.24*x[4]*x[14])-1.43*x[4]*x[16]+0.34*x[4]*x[17]+0.56*x[4]*x[19]+1.09*x[4]*x[21]+0.83*x[5]*x[13]-0.08*x[5]*x[12]-0.08*x[5]*x[18]+1.19*x[5]*x[19]+1.65*x[5]*x[21]+0.42*x[6]*x[12]-1.98*x[6]*x[13]+1.99*x[6]*x[14]-0.2*x[6]*x[15]-0.99*x[6]*x[16]+1.16*x[7]*x[14]+1.62*x[7]*x[17]+1.97*x[7]*x[18]+0.5*x[7]*x[21]+0.46*x[8]*x[12]+0.8*x[8]*x[16]-1.76*x[8]*x[17]+1.6*x[8]*x[19]+0.33*x[8]*x[21]+1.97*x[9]*x[13]-0.49*x[9]*x[12]+1.98*x[9]*x[17]-1.85*x[9]*x[19]+0.2*x[9]*x[21]+(-0.31*x[10]*x[12])-0.21*x[10]*x[14]-0.41*x[10]*x[17]+0.37*x[10]*x[18]+0.84*x[10]*x[21]+(-1.43*x[11]*x[12])-1.14*x[11]*x[14]+0.61*x[11]*x[16]+1.27*x[11]*x[17]-0.71*x[11]*x[18]+0.06*x[11]*x[20]+0.16*x[2]-0.85*x[3]-0.2*x[4]-0.29*x[5]-0.41*x[6]-0.33*x[7]-0.38*x[8]-0.51*x[9]-0.5*x[10]+0.99*x[11]-0.16*x[12]-0.45*x[13]-0.34*x[14]-0.31*x[15]-0.06*x[16]-0.56*x[17]+0.36*x[18]-0.91*x[19]-0.5*x[20]-0.72*x[21] <= 81.22)
@NLconstraint(m, e4, (-1.07*x[2]*x[13])-1.17*x[2]*x[15]-0.61*x[2]*x[20]+1.59*x[3]*x[16]-0.27*x[3]*x[15]-1.2*x[3]*x[18]-1.84*x[3]*x[19]-0.65*x[3]*x[21]+0.28*x[4]*x[14]+1.58*x[4]*x[15]+1.28*x[4]*x[19]+0.16*x[4]*x[20]+0.62*x[5]*x[12]-1.45*x[5]*x[16]+0.7*x[5]*x[18]-0.76*x[5]*x[19]-0.17*x[5]*x[20]-1.45*x[5]*x[21]+1.99*x[6]*x[12]-0.31*x[6]*x[13]-1.37*x[6]*x[15]-1.24*x[6]*x[18]+0.87*x[6]*x[20]-1.19*x[6]*x[21]+0.39*x[7]*x[13]-0.26*x[7]*x[12]+0.84*x[7]*x[14]+2*x[7]*x[15]+1.46*x[7]*x[17]-0.17*x[7]*x[19]+1.69*x[7]*x[21]+1.47*x[8]*x[15]-0.41*x[8]*x[12]-0.02*x[8]*x[21]+0.62*x[9]*x[13]-0.99*x[9]*x[12]-1.65*x[9]*x[16]-0.79*x[9]*x[18]-1.7*x[9]*x[20]+1.7*x[10]*x[16]-1.47*x[10]*x[17]-1.9*x[10]*x[18]+0.86*x[10]*x[19]-0.86*x[10]*x[21]+(-0.84*x[11]*x[14])-1.22*x[11]*x[16]-1.78*x[11]*x[17]-0.94*x[11]*x[18]+0.5*x[11]*x[19]-1.37*x[11]*x[20]-0.92*x[2]+0.45*x[3]-0.81*x[4]-0.86*x[5]+0.46*x[6]+0.59*x[7]+0.12*x[8]-0.66*x[9]+0.54*x[10]+0.79*x[11]-0.44*x[12]-0.24*x[13]-0.77*x[14]-0.18*x[15]-0.08*x[16]+0.94*x[17]-0.45*x[18]+0.25*x[19]-0.95*x[20]+0.95*x[21] <= 73.26)
@NLconstraint(m, e5, 0.98*x[2]*x[13]+1.91*x[2]*x[14]-1.35*x[2]*x[16]-0.15*x[2]*x[19]-0.51*x[2]*x[20]-0.94*x[2]*x[21]+(-1.89*x[3]*x[14])-1.09*x[3]*x[15]-0.99*x[3]*x[17]+0.96*x[3]*x[19]-1.04*x[3]*x[20]+0.62*x[4]*x[12]+0.75*x[4]*x[13]+0.23*x[4]*x[14]-1.31*x[4]*x[19]-1.62*x[4]*x[20]+1.16*x[5]*x[12]+1.18*x[5]*x[19]+0.66*x[5]*x[20]+0.49*x[5]*x[21]+(-0.56*x[6]*x[15])-1.62*x[6]*x[16]+1.5*x[6]*x[17]+0.82*x[6]*x[21]+(-0.9*x[7]*x[12])-0.75*x[7]*x[13]-1.73*x[7]*x[14]-1.34*x[7]*x[16]-0.66*x[7]*x[20]+0.22*x[7]*x[21]+1.91*x[8]*x[13]-0.33*x[8]*x[12]-0.17*x[8]*x[15]+1.13*x[8]*x[16]+1.23*x[8]*x[18]-0.42*x[8]*x[21]+0.82*x[9]*x[13]-0.31*x[9]*x[12]+1.32*x[9]*x[15]-0.98*x[9]*x[21]+0.77*x[10]*x[12]+0.19*x[10]*x[15]+0.44*x[10]*x[17]+(-1.09*x[11]*x[12])-1.87*x[11]*x[13]-1.03*x[11]*x[15]+0.47*x[11]*x[16]-0.02*x[11]*x[17]+0.94*x[11]*x[20]+0.69*x[11]*x[21]-0.62*x[2]-0.76*x[3]-0.67*x[4]+0.87*x[5]+0.82*x[6]-0.39*x[7]-0.84*x[8]-0.04*x[9]+0.38*x[10]+0.98*x[11]+0.82*x[12]-0.47*x[13]-0.05*x[14]+0.81*x[15]-0.34*x[16]-0.09*x[17]-0.36*x[18]-0.04*x[19]+0.64*x[20]-0.58*x[21] <= 47.09)
@NLconstraint(m, e6, (-1.86*x[2]*x[13])-1.65*x[2]*x[15]+0.15*x[2]*x[16]-0.62*x[2]*x[17]-1.04*x[2]*x[18]+0.32*x[2]*x[19]-0.54*x[2]*x[21]+(-1.16*x[3]*x[13])-1.08*x[3]*x[15]-0.32*x[3]*x[18]+0.47*x[3]*x[19]+1.07*x[4]*x[12]+1.34*x[4]*x[16]-0.89*x[4]*x[18]+1.77*x[4]*x[19]-1.56*x[4]*x[21]+1.28*x[5]*x[12]-0.02*x[5]*x[13]+1.57*x[5]*x[14]-0.62*x[5]*x[18]+0.56*x[5]*x[19]-1.14*x[5]*x[20]+0.1*x[6]*x[13]+0.2*x[6]*x[14]+0.04*x[6]*x[18]+0.36*x[6]*x[20]+0.98*x[7]*x[12]-1.62*x[7]*x[14]-0.25*x[7]*x[15]-1.36*x[7]*x[18]+1.82*x[7]*x[19]+0.34*x[8]*x[12]-1.75*x[8]*x[13]-0.38*x[8]*x[15]-1.64*x[8]*x[19]+1.61*x[9]*x[13]-x[9]*x[12]+1.11*x[9]*x[14]-1.68*x[9]*x[15]-0.56*x[9]*x[18]-1.36*x[9]*x[20]+(-0.65*x[10]*x[12])-0.52*x[10]*x[14]+0.06*x[10]*x[18]+1.23*x[10]*x[20]-0.23*x[10]*x[21]+1.06*x[11]*x[13]-0.23*x[11]*x[14]+1.21*x[11]*x[15]-1.19*x[11]*x[21]-0.52*x[2]-0.74*x[3]-0.27*x[4]-0.38*x[5]+0.67*x[6]-0.72*x[7]+0.8*x[8]-0.51*x[9]-0.92*x[10]-0.01*x[11]+0.87*x[12]-0.24*x[13]-0.73*x[14]+0.64*x[15]-0.17*x[16]-0.68*x[17]+0.59*x[18]-0.6*x[19]-0.03*x[20]-0.17*x[21] <= 47.0)
@NLconstraint(m, e7, 1.23*x[2]*x[12]-0.85*x[2]*x[15]+1.43*x[3]*x[13]-1.71*x[3]*x[15]-0.25*x[3]*x[17]+0.79*x[3]*x[18]-0.04*x[3]*x[20]-1.92*x[3]*x[21]+0.37*x[4]*x[20]-1.15*x[4]*x[14]+1.37*x[5]*x[13]+1.45*x[5]*x[16]+1.45*x[5]*x[17]-1.11*x[5]*x[19]-1.05*x[5]*x[21]+(-0.23*x[6]*x[12])-0.87*x[6]*x[13]+0.87*x[6]*x[15]+1.92*x[6]*x[18]+0.76*x[6]*x[20]-0.13*x[6]*x[21]+(-1.62*x[7]*x[12])-1.03*x[7]*x[13]-1.15*x[7]*x[15]+0.06*x[7]*x[17]+0.7*x[7]*x[20]+1.45*x[7]*x[21]+(-0.27*x[8]*x[12])-1.35*x[8]*x[13]-0.37*x[8]*x[15]+0.51*x[8]*x[16]+1.8*x[8]*x[17]+0.59*x[8]*x[19]-0.1*x[8]*x[21]+0.45*x[9]*x[14]+1.95*x[9]*x[15]+1.32*x[9]*x[17]+0.74*x[9]*x[18]+1.44*x[9]*x[19]+1.68*x[10]*x[13]+1.87*x[10]*x[14]+1.86*x[10]*x[16]-0.46*x[10]*x[17]+0.51*x[10]*x[18]+0.76*x[10]*x[19]-1.65*x[10]*x[21]+0.48*x[11]*x[13]-1.79*x[11]*x[14]+0.7*x[11]*x[15]+1.59*x[11]*x[21]-0.33*x[2]-0.66*x[4]-0.76*x[5]-0.58*x[6]+0.17*x[7]-0.42*x[8]+0.22*x[9]+0.16*x[10]+0.96*x[11]+0.96*x[12]-0.75*x[13]+0.96*x[14]+0.01*x[15]-0.88*x[16]+0.76*x[17]-0.59*x[18]-0.73*x[19]+0.6*x[20]-0.09*x[21] <= 92.06)
@NLconstraint(m, e8, (-1.69*x[2]*x[12])-0.7*x[2]*x[13]-1.95*x[2]*x[18]+1.33*x[2]*x[19]+1.4*x[2]*x[21]+(-1.32*x[3]*x[12])-0.81*x[3]*x[13]+0.9*x[3]*x[14]+0.16*x[3]*x[15]-0.69*x[3]*x[20]-1.85*x[3]*x[21]+(-0.19*x[4]*x[12])-0.17*x[4]*x[13]-0.58*x[4]*x[15]+1.25*x[4]*x[17]+0.73*x[4]*x[18]-1.92*x[4]*x[21]+x[5]*x[12]+0.85*x[5]*x[14]-1.17*x[5]*x[19]+(-0.2*x[6]*x[12])-0.38*x[6]*x[13]-1.5*x[6]*x[15]+0.45*x[6]*x[18]-0.05*x[6]*x[20]+0.47*x[6]*x[21]+0.66*x[7]*x[13]-1.2*x[7]*x[15]+0.9*x[7]*x[16]+1.5*x[7]*x[17]+(-1.19*x[8]*x[13])-1.8*x[8]*x[17]+1.43*x[8]*x[18]-0.5*x[8]*x[20]-0.72*x[8]*x[21]+1.53*x[9]*x[12]+0.99*x[9]*x[14]+1.83*x[9]*x[15]+1.31*x[9]*x[17]+0.7*x[10]*x[12]+0.96*x[10]*x[13]+1.93*x[10]*x[14]+1.92*x[10]*x[18]-1.39*x[10]*x[19]+0.68*x[10]*x[21]+0.02*x[11]*x[15]-1.73*x[11]*x[13]-1.47*x[11]*x[17]+0.37*x[11]*x[18]+1.75*x[11]*x[19]+0.56*x[2]-0.11*x[3]-0.12*x[4]+0.27*x[5]-0.27*x[6]-0.3*x[7]-0.82*x[8]-0.91*x[9]-0.36*x[10]-0.39*x[11]+0.55*x[12]-0.68*x[13]+0.16*x[14]+0.31*x[15]+0.82*x[16]-0.87*x[17]+0.86*x[18]-0.54*x[19]+0.87*x[20]+0.92*x[21] <= 77.45)
@NLconstraint(m, e9, 1.43*x[2]*x[17]-1.67*x[2]*x[12]+1.87*x[2]*x[18]-1.16*x[2]*x[19]+1.13*x[3]*x[12]-1.57*x[3]*x[13]+0.27*x[3]*x[15]+1.94*x[3]*x[16]-0.53*x[3]*x[19]+0.83*x[4]*x[17]-0.66*x[4]*x[14]+1.85*x[4]*x[18]+1.1*x[4]*x[21]+0.4*x[5]*x[16]-0.09*x[5]*x[13]-0.25*x[5]*x[17]+0.12*x[5]*x[18]+0.36*x[5]*x[21]+(-1.23*x[6]*x[12])-0.84*x[6]*x[13]+1.67*x[6]*x[14]+0.26*x[6]*x[16]+1.4*x[7]*x[12]-0.84*x[7]*x[14]-1.97*x[7]*x[18]+1.35*x[7]*x[20]+1.15*x[8]*x[12]-0.65*x[8]*x[16]+0.35*x[8]*x[18]+(-0.61*x[9]*x[15])-1.48*x[9]*x[17]+1.99*x[9]*x[19]-0.66*x[9]*x[20]+0.84*x[9]*x[21]+1.07*x[10]*x[12]-0.17*x[10]*x[13]-1.73*x[10]*x[14]+0.72*x[10]*x[15]-0.6*x[10]*x[17]-1.54*x[10]*x[19]+1.23*x[10]*x[20]-0.82*x[10]*x[21]+(-0.09*x[11]*x[12])-0.31*x[11]*x[13]+0.61*x[11]*x[14]-1.32*x[11]*x[15]+0.07*x[11]*x[16]+1.91*x[11]*x[17]+0.38*x[11]*x[18]-1.03*x[11]*x[20]+0.94*x[2]-0.38*x[3]+0.14*x[4]+0.45*x[5]-0.22*x[6]+0.75*x[7]-0.93*x[8]+0.69*x[9]+0.88*x[10]-0.55*x[11]+0.92*x[12]-0.44*x[13]-0.72*x[14]-0.94*x[15]+0.3*x[16]+0.02*x[17]-0.47*x[18]-0.33*x[19]-0.9*x[20]+0.38*x[21] <= 74.13)
@NLconstraint(m, e10, (-1.97*x[2]*x[13])-1.51*x[2]*x[16]+1.7*x[2]*x[19]+1.69*x[2]*x[20]+1.16*x[2]*x[21]+0.84*x[3]*x[15]-1.64*x[3]*x[14]-1.67*x[3]*x[19]-1.55*x[3]*x[21]+(-1.15*x[4]*x[15])-0.65*x[4]*x[21]+(-1.5*x[5]*x[13])-0.7*x[5]*x[14]-1.91*x[5]*x[16]-0.46*x[5]*x[17]+1.71*x[5]*x[18]+0.48*x[5]*x[19]+1.81*x[5]*x[21]+1.96*x[6]*x[16]-0.76*x[6]*x[15]-0.17*x[6]*x[17]-1.13*x[6]*x[20]+0.71*x[7]*x[13]-0.24*x[7]*x[14]-0.14*x[7]*x[20]+(-0.21*x[8]*x[12])-1.18*x[8]*x[13]-0.71*x[8]*x[15]+0.56*x[8]*x[16]+1.32*x[8]*x[17]-1.95*x[8]*x[18]-0.65*x[8]*x[19]+1.5*x[9]*x[15]-1.23*x[9]*x[12]+1.87*x[9]*x[16]+1.4*x[9]*x[17]-1.92*x[9]*x[18]+0.93*x[10]*x[12]+1.59*x[10]*x[14]-1.32*x[10]*x[18]+1.95*x[10]*x[20]+(-1.03*x[11]*x[12])-1.28*x[11]*x[13]-0.89*x[11]*x[14]+1.86*x[11]*x[15]-0.2*x[11]*x[16]+1.86*x[11]*x[17]-1.6*x[11]*x[19]-0.22*x[11]*x[21]+0.9*x[2]+0.63*x[3]+0.83*x[4]+0.26*x[5]+0.54*x[6]+0.81*x[7]+0.94*x[8]+0.15*x[9]-0.29*x[11]-0.88*x[12]+0.4*x[13]+0.37*x[14]-0.63*x[15]-0.62*x[16]-0.11*x[17]+0.23*x[18]+0.42*x[19]+0.02*x[20]-0.14*x[21] <= 5.74)
@NLconstraint(m, e11, (-0.62*x[2]*x[12])-0.21*x[2]*x[13]-1.9*x[2]*x[14]-1.24*x[2]*x[16]+1.77*x[2]*x[19]+1.5*x[2]*x[20]-0.08*x[2]*x[21]+1.55*x[3]*x[13]-0.83*x[3]*x[15]-1.49*x[3]*x[18]+1.39*x[3]*x[20]+1.51*x[3]*x[21]+1.14*x[4]*x[12]+1.52*x[4]*x[15]+0.42*x[4]*x[16]-0.26*x[4]*x[18]+0.93*x[5]*x[15]-0.82*x[5]*x[18]+0.3*x[5]*x[20]+1.04*x[6]*x[12]+1.08*x[6]*x[15]+0.73*x[6]*x[17]+0.26*x[6]*x[18]-1.73*x[6]*x[21]+(-1.13*x[7]*x[14])-1.06*x[7]*x[16]-1.41*x[7]*x[17]+0.36*x[7]*x[18]+1.82*x[8]*x[12]+0.87*x[8]*x[14]-1.78*x[8]*x[15]-0.23*x[8]*x[16]+0.14*x[8]*x[17]-0.25*x[8]*x[19]+1.04*x[8]*x[20]+1.9*x[9]*x[12]+0.6*x[9]*x[15]-0.99*x[9]*x[18]-0.85*x[9]*x[19]-0.85*x[9]*x[20]+1.13*x[10]*x[14]-0.33*x[10]*x[12]-0.01*x[10]*x[20]+1.24*x[11]*x[12]-1.96*x[11]*x[13]+1.76*x[11]*x[14]+0.66*x[11]*x[17]-0.91*x[11]*x[20]+1.57*x[11]*x[21]-0.58*x[2]+0.68*x[3]-0.19*x[4]+0.67*x[5]+0.57*x[6]+0.23*x[7]-0.75*x[8]+0.79*x[9]+0.7*x[10]-0.72*x[11]+0.88*x[12]-0.22*x[13]-0.56*x[14]+0.13*x[15]+0.87*x[16]+0.17*x[17]-0.62*x[18]+0.83*x[19]-0.25*x[20]+0.51*x[21] <= 55.02)
@NLconstraint(m, e12, 0.75*x[2]*x[17]+(-0.78*x[3]*x[12])-1.05*x[3]*x[13]-1.18*x[3]*x[16]-0.14*x[3]*x[17]-1.57*x[3]*x[20]-0.99*x[3]*x[21]+0.25*x[4]*x[12]-1.87*x[4]*x[14]+0.06*x[4]*x[15]-0.96*x[4]*x[19]-0.51*x[4]*x[20]-1.76*x[4]*x[21]+0.24*x[5]*x[13]-0.02*x[5]*x[14]+0.98*x[5]*x[15]-0.36*x[5]*x[19]-0.03*x[5]*x[20]+0.84*x[5]*x[21]+(-0.1*x[6]*x[12])-0.79*x[6]*x[13]-0.47*x[6]*x[14]+1.59*x[6]*x[15]+1.82*x[6]*x[17]+0.3*x[6]*x[18]-1.08*x[6]*x[21]+(-0.21*x[7]*x[13])-1.91*x[7]*x[15]+1.44*x[7]*x[16]+1.82*x[7]*x[19]-0.61*x[7]*x[21]+1.84*x[8]*x[12]+0.92*x[8]*x[14]-1.91*x[8]*x[16]-1.72*x[8]*x[17]-1.48*x[8]*x[20]-0.94*x[8]*x[21]+0.76*x[9]*x[12]+0.89*x[9]*x[14]+1.05*x[9]*x[15]-0.24*x[9]*x[16]-0.56*x[9]*x[18]+0.76*x[9]*x[19]+(-1.15*x[10]*x[12])-0.9*x[10]*x[17]-1.75*x[10]*x[18]-1.02*x[10]*x[19]+1.71*x[11]*x[14]-0.19*x[11]*x[13]+0.19*x[11]*x[21]+0.26*x[2]+0.51*x[3]-0.14*x[4]-0.53*x[5]+0.81*x[6]-0.82*x[7]+0.34*x[8]+0.97*x[9]-0.6*x[10]+0.37*x[11]-0.72*x[12]-0.61*x[13]-0.5*x[14]-0.95*x[15]+0.19*x[16]+0.98*x[17]+0.77*x[18]+0.4*x[19]+0.81*x[20]+0.03*x[21] <= 98.66)
@NLconstraint(m, e13, 1.66*x[2]*x[15]-1.73*x[2]*x[13]+1.34*x[2]*x[16]+0.38*x[2]*x[17]-0.36*x[2]*x[18]-1.77*x[2]*x[20]+0.25*x[2]*x[21]+(-1.3*x[3]*x[15])-0.74*x[3]*x[16]+1.82*x[3]*x[17]-0.8*x[3]*x[20]-0.37*x[3]*x[21]+(-0.71*x[4]*x[12])-0.28*x[4]*x[13]+1.63*x[4]*x[14]-0.51*x[4]*x[15]-1.65*x[4]*x[16]-1.94*x[4]*x[17]-0.07*x[4]*x[21]+1.48*x[5]*x[12]-1.41*x[5]*x[17]+0.22*x[6]*x[12]+1.97*x[6]*x[14]+1.43*x[6]*x[16]+0.29*x[6]*x[17]+1.81*x[6]*x[19]+1.95*x[6]*x[21]+1.58*x[7]*x[12]-1.36*x[7]*x[13]-1.43*x[7]*x[14]+0.45*x[7]*x[16]+0.72*x[7]*x[17]-1.08*x[7]*x[18]+1.55*x[7]*x[19]+(-0.34*x[8]*x[13])-0.16*x[8]*x[15]+0.28*x[8]*x[17]+1.8*x[8]*x[18]+1.05*x[8]*x[19]+0.56*x[9]*x[12]+0.07*x[9]*x[13]-0.52*x[9]*x[19]-1.4*x[9]*x[20]-0.6*x[9]*x[21]+1.83*x[10]*x[13]+0.6*x[10]*x[17]-0.49*x[10]*x[19]+1.48*x[10]*x[21]+1.72*x[11]*x[15]-1.06*x[11]*x[21]+0.49*x[2]-0.41*x[3]-0.81*x[4]-0.04*x[5]-0.65*x[6]+0.67*x[7]+0.52*x[8]-0.22*x[9]-0.03*x[10]+0.35*x[11]+0.45*x[12]+0.82*x[13]-0.7*x[14]-0.11*x[15]+0.74*x[16]+0.69*x[17]+0.1*x[18]-0.31*x[19]+0.8*x[20]-0.84*x[21] <= 70.75)
@NLconstraint(m, e14, 1.01*x[2]*x[15]-0.34*x[2]*x[12]+1.2*x[2]*x[16]+0.34*x[2]*x[17]+0.24*x[2]*x[19]+0.77*x[2]*x[20]-1.96*x[2]*x[21]+1.67*x[3]*x[16]-0.85*x[3]*x[19]-0.81*x[3]*x[20]+0.88*x[3]*x[21]+1.32*x[4]*x[14]-1.48*x[4]*x[12]+0.14*x[5]*x[13]+0.97*x[5]*x[14]+1.57*x[5]*x[17]+0.19*x[5]*x[18]+0.4*x[5]*x[20]+(-0.56*x[6]*x[12])-0.24*x[6]*x[19]-1.65*x[6]*x[20]-0.18*x[6]*x[21]+1.32*x[7]*x[13]-1.3*x[7]*x[12]+0.72*x[7]*x[14]-1.94*x[7]*x[15]+1.12*x[7]*x[16]-0.9*x[7]*x[17]-0.09*x[7]*x[19]+0.92*x[7]*x[20]-1.93*x[7]*x[21]+0.6*x[8]*x[13]-0.77*x[8]*x[16]+1.25*x[8]*x[18]-1.97*x[8]*x[20]+(-0.96*x[9]*x[12])-1.78*x[9]*x[13]-1.42*x[9]*x[14]+1.29*x[9]*x[18]-1.73*x[9]*x[20]+0.71*x[9]*x[21]+(-1.14*x[10]*x[14])-0.07*x[10]*x[16]+1.33*x[10]*x[18]-1.05*x[10]*x[20]+1.21*x[10]*x[21]+1.46*x[11]*x[12]-1.51*x[11]*x[13]-0.34*x[11]*x[16]-0.28*x[11]*x[17]+0.1*x[2]-0.13*x[3]-0.83*x[4]-0.33*x[5]+0.53*x[6]+0.75*x[7]+0.08*x[8]+0.47*x[9]-0.04*x[10]-0.14*x[11]+0.4*x[12]+0.41*x[13]+0.28*x[14]-0.66*x[15]+0.57*x[16]+0.96*x[17]-0.62*x[18]+0.33*x[19]+0.53*x[20]+0.26*x[21] <= 74.43)
@NLconstraint(m, e15, 1.17*x[2]*x[13]-0.43*x[2]*x[14]+0.45*x[2]*x[15]+0.17*x[2]*x[17]+1.51*x[2]*x[18]-1.95*x[2]*x[19]+0.26*x[2]*x[20]+(-0.35*x[3]*x[14])-1.87*x[3]*x[15]-1.43*x[3]*x[17]-1.81*x[3]*x[19]-0.11*x[3]*x[20]+(-1.25*x[4]*x[12])-0.51*x[4]*x[13]+0.81*x[4]*x[14]+0.72*x[4]*x[18]-1.2*x[4]*x[19]-0.22*x[4]*x[21]+(-1.19*x[5]*x[12])-1.24*x[5]*x[17]+1.56*x[5]*x[18]-1.04*x[5]*x[20]+1.19*x[6]*x[16]-0.6*x[6]*x[18]-0.6*x[6]*x[20]+1.98*x[7]*x[12]-0.65*x[7]*x[13]+1.89*x[7]*x[14]-0.38*x[7]*x[20]+1.22*x[7]*x[21]+1.55*x[8]*x[12]-1.23*x[8]*x[16]+0.38*x[8]*x[19]+(-1.2*x[9]*x[12])-0.03*x[9]*x[17]-1.88*x[9]*x[18]-1.23*x[9]*x[19]+1.27*x[9]*x[21]+(-1.06*x[10]*x[12])-0.28*x[10]*x[14]-1.52*x[10]*x[16]+0.26*x[10]*x[17]+1.85*x[10]*x[19]-0.57*x[10]*x[21]+0.24*x[11]*x[16]-1.46*x[11]*x[12]+1.56*x[11]*x[17]-0.42*x[11]*x[19]-1.69*x[11]*x[20]+1.91*x[11]*x[21]+0.6*x[2]+0.47*x[3]-0.08*x[4]-0.48*x[5]+0.39*x[6]-0.49*x[7]+0.95*x[8]+0.79*x[9]-0.18*x[10]-0.71*x[11]+0.05*x[12]+0.12*x[13]+0.31*x[14]-0.07*x[15]+0.2*x[16]-0.72*x[17]-0.15*x[18]+0.16*x[19]-0.63*x[20]+0.28*x[21] <= 65.46)
@NLconstraint(m, e16, 1.18*x[2]*x[13]-0.56*x[2]*x[12]-1.47*x[2]*x[15]+1.01*x[2]*x[16]+0.71*x[2]*x[17]+1.77*x[2]*x[18]+0.57*x[2]*x[19]-1.57*x[2]*x[21]+0.49*x[3]*x[12]+0.34*x[3]*x[15]-1.3*x[3]*x[17]-0.57*x[3]*x[20]-1.36*x[3]*x[21]+0.82*x[4]*x[16]-1.49*x[4]*x[15]-1.17*x[4]*x[20]+1.42*x[5]*x[12]-0.44*x[5]*x[13]-0.53*x[5]*x[14]-1.99*x[5]*x[15]+1.3*x[5]*x[16]+(-0.21*x[6]*x[13])-1.07*x[6]*x[14]-0.09*x[6]*x[15]+0.06*x[6]*x[20]+1.95*x[6]*x[21]+0.42*x[7]*x[12]+1.58*x[7]*x[14]-0.92*x[7]*x[15]-0.55*x[7]*x[18]+0.16*x[7]*x[20]+1.97*x[8]*x[13]+1.62*x[8]*x[15]+1.15*x[8]*x[16]+1.61*x[8]*x[17]-0.41*x[8]*x[18]-0.03*x[8]*x[20]+0.63*x[9]*x[14]-1.48*x[9]*x[12]-0.58*x[9]*x[15]+1.23*x[9]*x[18]-0.42*x[9]*x[19]-0.21*x[9]*x[20]+1.79*x[9]*x[21]+(-1.5*x[10]*x[13])-0.79*x[10]*x[17]-x[10]*x[18]+1.43*x[11]*x[18]-0.55*x[11]*x[12]+1.84*x[11]*x[21]+0.86*x[2]-0.62*x[3]-0.56*x[4]+0.23*x[5]-0.73*x[6]-0.48*x[7]+0.98*x[8]+0.7*x[9]-0.07*x[10]-0.88*x[11]-0.66*x[12]+0.89*x[13]+0.39*x[14]+0.93*x[15]-0.57*x[16]-0.92*x[17]-0.82*x[18]+0.38*x[19]+0.31*x[20]-0.16*x[21] <= 2.33)
@NLconstraint(m, e17, 0.19*x[2]*x[12]-0.02*x[2]*x[13]+1.22*x[2]*x[15]-0.69*x[2]*x[21]+0.98*x[3]*x[12]+0.59*x[3]*x[13]-1.25*x[3]*x[14]+0.3*x[3]*x[16]-1.28*x[3]*x[18]-0.2*x[3]*x[19]+0.38*x[3]*x[20]+0.04*x[4]*x[13]+0.57*x[4]*x[15]+1.46*x[4]*x[16]+0.74*x[4]*x[17]-0.09*x[4]*x[18]-0.3*x[4]*x[21]+0.04*x[5]*x[13]+0.43*x[5]*x[14]+1.58*x[5]*x[18]-1.74*x[5]*x[20]-1.12*x[5]*x[21]+1.9*x[6]*x[12]-1.82*x[6]*x[14]+0.22*x[6]*x[17]+1.92*x[6]*x[19]+1.73*x[6]*x[20]+0.5*x[6]*x[21]+0.01*x[7]*x[12]+1.39*x[7]*x[13]+1.28*x[7]*x[16]-1.51*x[7]*x[20]-1.01*x[7]*x[21]+0.37*x[8]*x[14]+1.99*x[8]*x[19]+1.62*x[9]*x[13]+0.63*x[9]*x[14]-0.8*x[9]*x[17]+1.59*x[9]*x[20]+(-1.14*x[10]*x[13])-1.9*x[10]*x[14]-1.95*x[10]*x[16]-0.92*x[10]*x[17]+1.02*x[10]*x[19]+0.91*x[10]*x[20]+0.49*x[11]*x[12]+1.43*x[11]*x[13]-0.56*x[11]*x[17]+0.82*x[11]*x[18]-0.42*x[11]*x[19]+0.11*x[2]-0.94*x[3]+0.52*x[4]+0.27*x[5]+0.38*x[6]-0.48*x[7]-0.55*x[8]-0.65*x[9]+0.85*x[10]-0.34*x[11]+0.68*x[12]+0.55*x[13]+0.46*x[14]-0.95*x[15]+0.64*x[16]-0.75*x[17]+0.3*x[18]+0.12*x[19]+0.66*x[20]+0.19*x[21] <= 44.73)
@NLconstraint(m, e18, 0.59*x[2]*x[12]+0.74*x[2]*x[15]-1.19*x[2]*x[17]+1.34*x[2]*x[19]-0.28*x[2]*x[20]-1.6*x[2]*x[21]+1.46*x[3]*x[14]-0.47*x[3]*x[12]+0.83*x[3]*x[15]+0.63*x[3]*x[16]+0.52*x[3]*x[18]+0.32*x[3]*x[20]+1.26*x[3]*x[21]+1.12*x[4]*x[12]-0.1*x[4]*x[13]-0.9*x[4]*x[15]+1.25*x[4]*x[19]-1.58*x[4]*x[21]+0.78*x[5]*x[13]+0.82*x[5]*x[15]-0.2*x[5]*x[19]-0.34*x[5]*x[21]+0.39*x[6]*x[13]-1.2*x[6]*x[12]-0.48*x[6]*x[15]+1.83*x[7]*x[13]-0.44*x[7]*x[14]-0.25*x[7]*x[15]+1.35*x[7]*x[19]+0.92*x[7]*x[20]+0.51*x[8]*x[14]-1.29*x[8]*x[12]-1.39*x[8]*x[15]+0.42*x[8]*x[17]+1.05*x[8]*x[18]+0.99*x[8]*x[20]+(-1.45*x[9]*x[13])-1.84*x[9]*x[14]+0.29*x[9]*x[16]-1.33*x[9]*x[20]+(-1.15*x[10]*x[12])-1.74*x[10]*x[13]-1.69*x[10]*x[15]+0.01*x[10]*x[16]-1.99*x[10]*x[17]+0.25*x[11]*x[15]+0.92*x[11]*x[16]+0.9*x[11]*x[17]-0.67*x[11]*x[19]-1.15*x[11]*x[20]+0.71*x[2]+0.75*x[3]-0.57*x[4]-0.11*x[5]+0.75*x[6]-0.56*x[7]-0.86*x[8]-0.16*x[9]-0.99*x[10]+0.53*x[11]+0.48*x[12]-0.13*x[13]-0.19*x[14]-0.57*x[15]-0.02*x[16]+0.84*x[17]-0.62*x[18]+0.56*x[19]+0.25*x[20]-0.09*x[21] <= 52.41)
@NLconstraint(m, e19, 0.11*x[2]*x[15]+0.79*x[2]*x[17]+1.78*x[2]*x[18]+0.95*x[2]*x[20]+(-1.12*x[3]*x[12])-0.58*x[3]*x[13]+0.38*x[3]*x[15]+1.11*x[3]*x[16]-1.94*x[3]*x[17]+1.57*x[3]*x[18]+0.6*x[3]*x[19]+1.51*x[3]*x[20]-0.74*x[3]*x[21]+0.82*x[4]*x[16]-1.05*x[4]*x[13]-1.24*x[4]*x[20]+(-0.14*x[5]*x[13])-0.62*x[5]*x[14]+1.22*x[5]*x[15]-0.73*x[5]*x[16]-1.43*x[5]*x[19]+(-0.61*x[6]*x[12])-0.89*x[6]*x[13]+0.86*x[6]*x[14]+0.48*x[6]*x[20]-1.43*x[6]*x[21]+1.86*x[7]*x[13]-0.82*x[7]*x[14]-0.81*x[7]*x[15]+0.12*x[7]*x[21]+0.99*x[8]*x[15]-1.94*x[8]*x[16]+0.4*x[8]*x[17]+0.19*x[8]*x[19]+(-x[9]*x[12])-0.55*x[9]*x[14]-0.19*x[9]*x[15]-1.77*x[9]*x[17]+0.72*x[10]*x[12]-1.08*x[10]*x[16]-0.05*x[10]*x[17]+x[10]*x[18]-1.34*x[10]*x[19]+1.65*x[11]*x[13]-1.08*x[11]*x[12]+0.13*x[11]*x[15]-0.25*x[11]*x[16]-0.4*x[11]*x[17]+1.59*x[11]*x[18]+1.71*x[11]*x[19]+0.57*x[2]+0.44*x[3]-0.78*x[4]+0.04*x[5]+0.98*x[6]-0.27*x[7]+0.06*x[8]+0.89*x[9]+0.62*x[10]+0.19*x[11]+0.14*x[12]+0.63*x[13]+0.09*x[14]-0.76*x[15]-0.97*x[16]+0.83*x[17]-0.99*x[18]+0.21*x[19]-0.14*x[20]+0.42*x[21] <= 58.04)
@NLconstraint(m, e20, (-0.47*x[2]*x[12])-1.49*x[2]*x[14]-0.73*x[2]*x[21]+1.26*x[3]*x[12]+0.88*x[3]*x[13]+0.06*x[3]*x[16]+0.21*x[3]*x[20]+1.45*x[3]*x[21]+0.63*x[4]*x[12]-0.94*x[4]*x[13]-0.82*x[4]*x[14]-1.15*x[4]*x[15]+0.58*x[4]*x[16]-0.53*x[4]*x[21]+0.96*x[5]*x[16]+1.71*x[5]*x[17]+0.04*x[5]*x[18]-1.55*x[5]*x[20]-1.67*x[5]*x[21]+0.57*x[6]*x[14]-0.53*x[6]*x[12]+1.45*x[6]*x[15]-0.46*x[6]*x[18]-0.17*x[6]*x[19]+1.82*x[7]*x[14]-1.66*x[7]*x[13]+0.04*x[7]*x[15]-1.84*x[7]*x[18]-1.76*x[7]*x[21]+1.08*x[8]*x[14]-2*x[8]*x[13]-1.13*x[8]*x[17]-1.91*x[8]*x[18]+1.62*x[9]*x[13]-1.88*x[9]*x[17]+0.96*x[9]*x[19]+0.4*x[9]*x[20]-1.32*x[9]*x[21]+(-0.38*x[10]*x[13])-0.58*x[10]*x[14]+1.43*x[10]*x[17]-0.93*x[10]*x[18]-0.83*x[10]*x[19]-0.65*x[10]*x[20]-1.73*x[10]*x[21]+1.7*x[11]*x[15]-0.56*x[11]*x[14]-1.91*x[11]*x[16]+0.85*x[11]*x[17]-1.48*x[11]*x[18]+0.27*x[2]-0.46*x[3]-0.81*x[4]-0.41*x[5]+0.38*x[6]+0.25*x[7]+0.36*x[8]+0.58*x[9]-0.49*x[10]+0.09*x[11]-0.18*x[12]+0.22*x[13]+0.4*x[14]+0.5*x[15]+0.01*x[16]-0.86*x[17]-0.07*x[18]-0.36*x[19]-0.14*x[20]+0.49*x[21] <= 63.07)
@NLconstraint(m, e21, (-0.56*x[2]*x[12])-1.86*x[2]*x[13]+0.16*x[2]*x[17]-1.48*x[2]*x[19]+0.53*x[2]*x[21]+0.59*x[3]*x[12]+0.34*x[3]*x[15]+0.4*x[3]*x[17]+1.57*x[3]*x[20]-0.33*x[3]*x[21]+0.92*x[4]*x[12]+0.83*x[4]*x[13]+1.85*x[4]*x[16]-0.61*x[4]*x[17]+1.71*x[4]*x[19]+1.56*x[4]*x[20]-1.17*x[4]*x[21]+1.58*x[5]*x[12]+0.99*x[5]*x[14]+0.19*x[5]*x[15]-0.33*x[5]*x[16]+1.68*x[5]*x[18]+1.5*x[5]*x[21]+0.5*x[6]*x[12]-1.24*x[6]*x[13]-0.94*x[6]*x[20]+1.53*x[7]*x[14]+0.95*x[7]*x[16]-0.39*x[7]*x[17]-1.2*x[7]*x[19]+1.82*x[8]*x[17]-1.01*x[8]*x[12]+1.05*x[8]*x[18]-1.17*x[8]*x[19]+0.55*x[8]*x[21]+0.4*x[9]*x[12]-1.85*x[9]*x[13]-1.75*x[9]*x[15]+1.33*x[9]*x[16]-0.09*x[9]*x[17]-1.45*x[9]*x[18]+1.1*x[9]*x[19]+1.64*x[10]*x[16]+1.9*x[10]*x[17]+0.53*x[11]*x[13]-1.52*x[11]*x[12]-1.2*x[11]*x[14]-1.98*x[11]*x[16]+1.38*x[11]*x[18]+0.05*x[11]*x[19]-0.43*x[2]+0.51*x[3]+0.75*x[4]-0.08*x[5]-0.09*x[6]-0.32*x[7]-0.26*x[8]-0.01*x[9]-0.79*x[10]+0.39*x[11]+0.64*x[12]+0.27*x[13]-0.06*x[14]+0.01*x[15]+0.56*x[16]+0.38*x[17]+0.88*x[18]+0.15*x[19]+0.21*x[20]+0.13*x[21] <= 14.88)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
