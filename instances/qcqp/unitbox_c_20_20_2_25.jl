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
@NLconstraint(m, e1, -(1.88*x[2]*x[13]+1.17*x[2]*x[14]+1.59*x[2]*x[16]-0.88*x[2]*x[18]+0.9*x[2]*x[19]+1.45*x[2]*x[20]+0.85*x[3]*x[16]-0.19*x[3]*x[15]+1.31*x[3]*x[17]+0.86*x[3]*x[18]-1.31*x[3]*x[19]+1.42*x[3]*x[20]+0.88*x[3]*x[21]+0.27*x[4]*x[14]-0.48*x[4]*x[13]+1.4*x[4]*x[15]+0.89*x[4]*x[16]-1.28*x[4]*x[19]-0.26*x[4]*x[20]+1.63*x[5]*x[13]+1.6*x[5]*x[15]-1.43*x[5]*x[19]+0.35*x[6]*x[16]+1.23*x[6]*x[17]-1.54*x[6]*x[18]-1.47*x[6]*x[20]+1.67*x[6]*x[21]+(-0.45*x[7]*x[13])-0.9*x[7]*x[15]+1.84*x[7]*x[17]-0.16*x[7]*x[18]+0.57*x[8]*x[14]-0.9*x[8]*x[17]+1.34*x[8]*x[18]+0.18*x[8]*x[20]-1.42*x[8]*x[21]+1.27*x[9]*x[12]+1.26*x[9]*x[13]+1.91*x[9]*x[15]+1.86*x[9]*x[16]+1.25*x[9]*x[19]+1.85*x[10]*x[14]-1.63*x[10]*x[15]+0.96*x[10]*x[17]+0.33*x[10]*x[18]+0.26*x[10]*x[21]+1.4*x[11]*x[12]-1.12*x[11]*x[13]-0.37*x[11]*x[20]+0.14*x[11]*x[21]+0.3*x[2]-0.22*x[3]-0.36*x[4]+0.88*x[5]-0.31*x[6]-0.62*x[7]-0.67*x[8]-0.24*x[9]-0.28*x[10]+0.96*x[11]+0.23*x[12]+0.14*x[13]+0.61*x[14]+0.06*x[15]-0.91*x[16]-0.11*x[17]-0.05*x[18]-0.79*x[19]-0.7*x[20]-0.19*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 1.91*x[2]*x[13]-0.35*x[2]*x[12]-0.15*x[2]*x[15]+0.2*x[2]*x[18]-1.63*x[2]*x[20]+1.16*x[3]*x[12]-0.47*x[3]*x[14]+1.22*x[3]*x[16]+1.62*x[3]*x[17]-0.58*x[3]*x[18]+0.57*x[3]*x[19]-1.14*x[3]*x[21]+1.9*x[4]*x[13]-0.16*x[4]*x[12]-1.78*x[4]*x[16]+1.44*x[4]*x[17]+1.82*x[4]*x[18]+0.44*x[4]*x[19]+0.47*x[5]*x[12]-0.87*x[5]*x[13]+1.21*x[5]*x[14]-0.97*x[5]*x[15]-0.32*x[5]*x[16]+(-1.44*x[6]*x[12])-0.78*x[6]*x[13]+0.74*x[6]*x[14]+0.29*x[6]*x[15]-0.34*x[6]*x[17]-0.26*x[6]*x[19]-0.06*x[6]*x[20]+0.5*x[6]*x[21]+0.79*x[7]*x[13]+1.09*x[7]*x[14]+0.59*x[7]*x[15]-1.92*x[7]*x[16]+0.92*x[7]*x[18]+0.63*x[7]*x[19]+0.39*x[8]*x[14]-1.88*x[8]*x[12]+1.11*x[8]*x[16]-0.51*x[8]*x[18]-0.61*x[8]*x[19]+0.36*x[8]*x[20]+1.39*x[9]*x[13]-0.33*x[9]*x[15]-0.79*x[9]*x[16]+0.8*x[9]*x[21]+0.58*x[10]*x[12]+1.59*x[11]*x[15]-0.69*x[11]*x[17]-0.6*x[2]+0.1*x[3]+0.5*x[4]+0.23*x[5]+0.99*x[6]-0.45*x[7]-0.59*x[8]-0.32*x[9]-0.57*x[10]+0.92*x[11]-0.16*x[12]+0.15*x[13]-0.39*x[14]+0.04*x[15]+0.31*x[16]-0.48*x[17]-0.33*x[18]-0.76*x[19]+0.51*x[20]-0.49*x[21] <= 82.28)
@NLconstraint(m, e3, 1.24*x[2]*x[15]-0.26*x[2]*x[14]-1.47*x[2]*x[16]-0.75*x[2]*x[18]-1.7*x[2]*x[19]+1.37*x[2]*x[20]-0.71*x[2]*x[21]+(-0.23*x[3]*x[13])-0.46*x[3]*x[14]-1.98*x[3]*x[16]+0.05*x[3]*x[17]+0.9*x[3]*x[18]+0.57*x[4]*x[13]+0.39*x[4]*x[15]+0.65*x[4]*x[16]-0.37*x[4]*x[17]+0.47*x[4]*x[20]+0.83*x[5]*x[14]+1.6*x[5]*x[16]+1.07*x[5]*x[19]+1.62*x[5]*x[20]+0.13*x[6]*x[13]+1.33*x[6]*x[14]-0.22*x[6]*x[16]+0.91*x[6]*x[18]+1.22*x[6]*x[21]+0.4*x[7]*x[12]-0.07*x[7]*x[13]+0.05*x[7]*x[14]+1.73*x[7]*x[15]+1.69*x[7]*x[16]-0.01*x[7]*x[20]-0.97*x[7]*x[21]+1.67*x[8]*x[13]+1.59*x[8]*x[14]+1.94*x[8]*x[15]-1.38*x[8]*x[17]-1.96*x[8]*x[20]-1.43*x[8]*x[21]+0.7*x[9]*x[18]+0.18*x[9]*x[19]+1.81*x[9]*x[21]+0.86*x[10]*x[12]+0.12*x[10]*x[13]+0.28*x[10]*x[14]-0.72*x[10]*x[18]-x[10]*x[19]+0.52*x[11]*x[17]+0.75*x[11]*x[18]-0.9*x[11]*x[20]+0.63*x[2]-0.21*x[3]+0.92*x[4]-0.08*x[5]+0.13*x[6]+0.9*x[7]-0.28*x[8]-0.76*x[9]+0.05*x[10]-0.93*x[11]+0.29*x[12]-0.02*x[13]-0.25*x[14]+0.1*x[15]+0.15*x[16]+0.16*x[17]+0.36*x[18]+0.45*x[19]-0.97*x[20]+0.13*x[21] <= 24.7)
@NLconstraint(m, e4, (-1.92*x[2]*x[14])-0.59*x[2]*x[15]-0.22*x[2]*x[18]+0.63*x[2]*x[19]+1.55*x[2]*x[20]+0.11*x[3]*x[14]-0.54*x[3]*x[17]+(-1.72*x[4]*x[13])-0.11*x[4]*x[15]-1.98*x[4]*x[17]+0.47*x[4]*x[19]-0.81*x[4]*x[20]+0.9*x[5]*x[19]-0.73*x[5]*x[13]+(-2*x[6]*x[13])-1.26*x[6]*x[14]-1.26*x[6]*x[15]+1.11*x[6]*x[16]-1.16*x[6]*x[18]+1.12*x[6]*x[19]+0.61*x[6]*x[21]+(-1.71*x[7]*x[12])-1.42*x[7]*x[13]-0.17*x[7]*x[14]-0.7*x[7]*x[18]-1.61*x[7]*x[21]+0.71*x[8]*x[13]+0.47*x[8]*x[16]+1.37*x[8]*x[17]-0.06*x[8]*x[18]+0.47*x[8]*x[21]+1.76*x[9]*x[14]+1.18*x[9]*x[15]+1.95*x[9]*x[16]-1.01*x[9]*x[17]-1.22*x[9]*x[19]-1.09*x[9]*x[20]+1.58*x[9]*x[21]+1.14*x[10]*x[14]-0.28*x[10]*x[13]+1.87*x[10]*x[17]-0.96*x[10]*x[18]-1.17*x[10]*x[20]+1.32*x[10]*x[21]+0.29*x[11]*x[13]+0.28*x[11]*x[15]+0.22*x[11]*x[17]-0.75*x[11]*x[18]+1.51*x[11]*x[19]-1.92*x[11]*x[20]-0.92*x[2]-0.01*x[3]-0.3*x[4]-0.86*x[5]+0.69*x[6]+0.77*x[7]+0.95*x[8]-0.86*x[9]-0.59*x[10]+0.3*x[11]-0.97*x[12]-0.35*x[13]-0.94*x[14]+0.21*x[15]-0.75*x[16]-0.44*x[17]+0.06*x[18]-0.75*x[19]+0.37*x[20]-0.22*x[21] <= 35.27)
@NLconstraint(m, e5, 1.36*x[2]*x[12]+1.48*x[2]*x[16]+0.08*x[2]*x[17]+1.86*x[2]*x[18]-1.51*x[2]*x[19]+0.79*x[2]*x[20]+2*x[2]*x[21]+0.94*x[3]*x[21]-1.04*x[3]*x[14]+(-1.48*x[4]*x[12])-x[4]*x[13]-0.08*x[4]*x[14]-0.63*x[4]*x[15]+0.78*x[4]*x[18]-0.3*x[4]*x[19]+(-0.44*x[5]*x[13])-1.98*x[5]*x[14]-1.12*x[5]*x[15]-1.87*x[5]*x[16]-1.35*x[5]*x[17]+1.59*x[5]*x[21]+0.63*x[6]*x[17]-0.55*x[6]*x[18]-0.15*x[6]*x[19]+1.05*x[6]*x[20]+(-0.64*x[7]*x[14])-x[7]*x[15]-1.72*x[7]*x[19]+(-1.74*x[8]*x[12])-0.95*x[8]*x[15]+0.13*x[8]*x[16]-1.2*x[8]*x[19]+1.35*x[8]*x[20]+1.33*x[8]*x[21]+(-1.93*x[9]*x[12])-0.52*x[9]*x[14]+0.01*x[9]*x[17]+x[9]*x[18]+0.63*x[9]*x[20]+1.54*x[10]*x[13]+1.68*x[10]*x[15]-1.03*x[10]*x[16]+1.5*x[10]*x[17]-0.04*x[10]*x[18]+1.3*x[10]*x[21]+1.41*x[11]*x[13]+0.49*x[11]*x[15]+0.71*x[11]*x[16]+0.01*x[11]*x[17]+1.79*x[11]*x[18]+x[2]-0.23*x[3]-0.06*x[4]+0.72*x[5]+0.3*x[6]+0.17*x[7]+0.79*x[9]-0.84*x[10]+0.39*x[11]-0.66*x[12]+0.94*x[13]-0.27*x[14]+0.24*x[15]-0.75*x[16]-0.62*x[17]+0.26*x[18]-0.36*x[19]-0.92*x[20]-0.12*x[21] <= 50.67)
@NLconstraint(m, e6, 0.73*x[2]*x[12]+0.59*x[2]*x[14]+0.6*x[2]*x[16]+1.2*x[2]*x[18]+(-0.98*x[3]*x[15])-1.38*x[3]*x[18]+0.54*x[3]*x[19]+1.95*x[3]*x[20]-0.57*x[3]*x[21]+0.59*x[4]*x[12]+1.5*x[4]*x[18]+1.51*x[5]*x[12]+1.67*x[5]*x[13]-0.97*x[5]*x[14]+0.42*x[5]*x[15]+0.37*x[5]*x[16]+0.97*x[5]*x[18]-1.65*x[5]*x[20]-1.43*x[5]*x[21]+0.49*x[6]*x[14]-1.74*x[6]*x[12]-0.6*x[6]*x[16]+1.51*x[6]*x[17]-0.16*x[6]*x[20]+0.19*x[6]*x[21]+1.94*x[7]*x[15]-0.72*x[7]*x[12]+1.72*x[7]*x[18]+1.91*x[7]*x[20]-1.88*x[7]*x[21]+0.37*x[8]*x[15]-0.69*x[8]*x[16]-1.87*x[8]*x[19]+0.18*x[8]*x[20]-1.99*x[8]*x[21]+0.3*x[9]*x[13]+1.88*x[9]*x[14]+1.7*x[9]*x[15]-0.67*x[9]*x[16]+0.08*x[9]*x[17]+1.13*x[9]*x[18]+1.27*x[9]*x[20]+1.32*x[9]*x[21]+(-1.22*x[10]*x[13])-1.97*x[10]*x[15]+1.49*x[10]*x[18]+1.7*x[10]*x[19]+0.03*x[10]*x[20]-1.15*x[10]*x[21]+0.33*x[11]*x[13]+0.28*x[2]-0.67*x[3]+0.28*x[4]-0.11*x[5]+0.92*x[6]+0.31*x[7]-0.03*x[8]+0.25*x[9]+0.54*x[10]+0.61*x[11]+0.24*x[12]-0.89*x[13]+0.77*x[14]-0.08*x[15]-0.48*x[16]-0.24*x[17]+0.6*x[19]-0.12*x[20]+0.55*x[21] <= 26.62)
@NLconstraint(m, e7, 1.59*x[2]*x[16]-0.55*x[2]*x[17]-0.6*x[2]*x[18]+1.93*x[3]*x[14]-1.57*x[3]*x[12]+1.3*x[3]*x[16]-0.61*x[3]*x[19]+0.49*x[3]*x[20]+(-0.49*x[4]*x[14])-0.74*x[4]*x[17]-1.01*x[4]*x[18]-0.15*x[4]*x[19]+0.79*x[5]*x[13]-1.41*x[5]*x[12]-1.86*x[5]*x[15]+0.96*x[5]*x[16]+0.93*x[5]*x[17]-0.41*x[5]*x[21]+1.99*x[6]*x[17]-0.69*x[6]*x[12]-1.05*x[6]*x[19]-1.65*x[6]*x[21]+0.86*x[7]*x[13]+0.28*x[7]*x[14]+1.4*x[7]*x[16]+1.93*x[7]*x[19]+0.17*x[7]*x[20]+0.81*x[7]*x[21]+1.79*x[8]*x[12]+0.12*x[8]*x[13]+1.12*x[8]*x[15]-0.3*x[8]*x[16]+0.65*x[8]*x[20]+1.75*x[8]*x[21]+1.61*x[9]*x[13]-0.38*x[9]*x[15]-0.15*x[9]*x[16]+1.32*x[9]*x[19]+1.64*x[9]*x[21]+1.58*x[10]*x[12]+0.53*x[10]*x[13]-0.5*x[10]*x[15]+1.73*x[10]*x[16]-0.77*x[10]*x[20]+(-1.85*x[11]*x[13])-1.45*x[11]*x[15]+0.71*x[11]*x[16]+1.34*x[11]*x[17]-0.88*x[11]*x[19]-1.13*x[11]*x[21]+0.84*x[2]+0.63*x[3]-0.45*x[4]+0.67*x[5]-0.95*x[6]-0.09*x[7]+0.2*x[8]-0.01*x[9]+0.19*x[10]+0.33*x[11]+0.41*x[12]-0.94*x[13]+0.37*x[14]+0.71*x[15]-0.27*x[16]+0.81*x[17]+0.75*x[18]+0.47*x[19]-0.49*x[20]-0.66*x[21] <= 69.39)
@NLconstraint(m, e8, 0.35*x[2]*x[13]-0.17*x[2]*x[16]-1.35*x[2]*x[17]-1.68*x[2]*x[18]+0.19*x[2]*x[21]+(-0.51*x[3]*x[12])-0.3*x[3]*x[14]-1.42*x[3]*x[15]+0.64*x[3]*x[18]-0.36*x[3]*x[19]-1.4*x[3]*x[21]+(-1.42*x[4]*x[14])-1.43*x[4]*x[15]+0.41*x[4]*x[16]+0.34*x[4]*x[17]+1.75*x[4]*x[20]-0.94*x[4]*x[21]+1.55*x[5]*x[13]-1.07*x[5]*x[12]-1.33*x[5]*x[15]+2*x[5]*x[19]+(-1.52*x[6]*x[14])-0.46*x[6]*x[16]+0.48*x[6]*x[21]+0.37*x[7]*x[13]-1.83*x[7]*x[12]+0.81*x[7]*x[14]+1.91*x[7]*x[16]+0.47*x[7]*x[20]-1.25*x[7]*x[21]+1.33*x[8]*x[20]-1.87*x[8]*x[14]+1.93*x[9]*x[13]+1.46*x[9]*x[14]+0.23*x[9]*x[15]+0.93*x[9]*x[16]-0.27*x[9]*x[17]+1.34*x[9]*x[19]-0.67*x[9]*x[21]+(-0.85*x[10]*x[13])-0.29*x[10]*x[14]-0.36*x[10]*x[16]-0.6*x[10]*x[17]+(-1.5*x[11]*x[13])-1.04*x[11]*x[14]-1.73*x[11]*x[16]+1.21*x[11]*x[17]-1.8*x[11]*x[19]-1.36*x[11]*x[20]-0.22*x[11]*x[21]-0.91*x[2]-0.79*x[3]+0.35*x[4]-0.77*x[5]-0.22*x[6]-0.31*x[7]+0.04*x[8]-0.61*x[9]-0.15*x[10]-0.83*x[11]-0.98*x[12]+0.29*x[13]-0.51*x[14]-0.08*x[15]+0.67*x[16]-0.63*x[17]-0.31*x[18]-0.4*x[19]-0.98*x[20]-0.66*x[21] <= 61.79)
@NLconstraint(m, e9, (-1.99*x[2]*x[12])-1.68*x[2]*x[13]-1.94*x[2]*x[14]-0.44*x[2]*x[17]-0.11*x[2]*x[18]+1.6*x[2]*x[20]+(-0.48*x[3]*x[13])-1.92*x[3]*x[19]-1.97*x[3]*x[21]+0.77*x[4]*x[13]-0.9*x[4]*x[15]+1.76*x[4]*x[16]+1.12*x[4]*x[17]+1.41*x[4]*x[19]+(-0.14*x[5]*x[13])-0.62*x[5]*x[15]-0.79*x[5]*x[16]+1.66*x[5]*x[17]+0.49*x[5]*x[18]-0.72*x[5]*x[20]+1.75*x[5]*x[21]+1.97*x[6]*x[16]-0.65*x[6]*x[18]+1.86*x[6]*x[20]+1.97*x[7]*x[12]-1.72*x[7]*x[14]+0.57*x[7]*x[16]+1.67*x[7]*x[17]+0.72*x[7]*x[18]+1.06*x[7]*x[19]-1.44*x[7]*x[20]+1.98*x[8]*x[13]-1.14*x[8]*x[14]+0.77*x[8]*x[21]+1.94*x[9]*x[15]-0.44*x[9]*x[13]-0.03*x[9]*x[16]-1.12*x[9]*x[18]+1.21*x[9]*x[20]-1.18*x[9]*x[21]+1.87*x[10]*x[17]-0.47*x[10]*x[15]+0.28*x[10]*x[18]+1.2*x[10]*x[19]+1.91*x[10]*x[21]+(-0.62*x[11]*x[15])-1.92*x[11]*x[18]-0.79*x[11]*x[19]-0.11*x[11]*x[20]+0.51*x[11]*x[21]-0.86*x[2]-0.54*x[3]-0.58*x[4]-0.22*x[5]+0.72*x[6]+0.7*x[7]-0.32*x[8]-0.44*x[9]-0.67*x[10]+0.39*x[11]-0.13*x[12]+0.76*x[13]-0.91*x[14]+0.7*x[15]+0.01*x[16]-0.86*x[17]+0.46*x[18]+0.85*x[19]-0.08*x[20]+0.73*x[21] <= 4.37)
@NLconstraint(m, e10, 1.9*x[2]*x[15]+0.46*x[2]*x[16]-0.44*x[2]*x[18]+0.78*x[2]*x[21]+0.73*x[3]*x[12]+0.98*x[3]*x[13]-1.85*x[3]*x[15]-1.12*x[3]*x[17]+0.25*x[4]*x[13]-1.04*x[4]*x[12]+1.53*x[4]*x[16]+1.95*x[4]*x[17]-1.34*x[4]*x[18]+1.46*x[4]*x[20]+0.74*x[5]*x[12]-1.17*x[5]*x[14]+0.34*x[5]*x[17]-1.77*x[5]*x[19]+1.85*x[6]*x[12]+0.19*x[6]*x[16]+0.98*x[6]*x[17]+1.81*x[6]*x[18]-0.73*x[6]*x[20]-0.9*x[6]*x[21]+1.55*x[7]*x[13]-1.93*x[7]*x[14]+0.19*x[7]*x[15]+1.37*x[7]*x[18]+1.42*x[8]*x[13]-1.67*x[8]*x[12]+0.11*x[8]*x[14]+0.56*x[8]*x[15]-0.67*x[8]*x[18]+0.58*x[8]*x[19]-1.22*x[8]*x[21]+0.31*x[9]*x[14]-1.75*x[9]*x[16]-1.47*x[9]*x[17]-1.31*x[9]*x[18]+1.02*x[10]*x[12]+1.83*x[10]*x[17]+0.03*x[10]*x[18]+1.84*x[10]*x[20]+1.64*x[10]*x[21]+1.15*x[11]*x[13]+0.03*x[11]*x[14]+0.96*x[11]*x[16]-1.48*x[11]*x[17]+0.35*x[11]*x[20]+1.94*x[11]*x[21]+0.84*x[2]-0.22*x[3]+0.44*x[4]+0.88*x[5]-0.59*x[6]-0.32*x[7]+0.45*x[8]+0.72*x[9]+0.92*x[10]-0.59*x[11]+0.96*x[12]-0.6*x[13]-0.5*x[14]+0.18*x[15]-0.76*x[16]-0.89*x[17]+0.89*x[18]+0.33*x[19]+0.3*x[20]-0.04*x[21] <= 22.42)
@NLconstraint(m, e11, 0.96*x[2]*x[12]-1.77*x[2]*x[15]+1.1*x[2]*x[17]-1.28*x[2]*x[18]+0.6*x[3]*x[12]+1.55*x[3]*x[13]+0.91*x[3]*x[14]+1.16*x[3]*x[15]+0.59*x[3]*x[19]-0.34*x[3]*x[20]+1.85*x[3]*x[21]+(-0.27*x[4]*x[12])-1.85*x[4]*x[14]-1.42*x[4]*x[16]-1.72*x[4]*x[17]+1.21*x[4]*x[18]+1.37*x[4]*x[19]+1.69*x[4]*x[20]+1.39*x[5]*x[14]-1.45*x[5]*x[16]-0.67*x[5]*x[17]-0.57*x[5]*x[19]+0.64*x[5]*x[20]+(-0.69*x[6]*x[15])-1.49*x[6]*x[16]+1.51*x[6]*x[17]-1.1*x[6]*x[18]-1.05*x[6]*x[20]+0.4*x[7]*x[12]+0.52*x[7]*x[13]+1.63*x[7]*x[15]-1.06*x[7]*x[16]+0.15*x[7]*x[18]+1.2*x[7]*x[19]-1.8*x[7]*x[20]+(-1.13*x[8]*x[14])-0.1*x[8]*x[15]-0.43*x[8]*x[17]-0.57*x[8]*x[18]+0.76*x[9]*x[12]+0.77*x[9]*x[13]-1.74*x[9]*x[16]+1.07*x[9]*x[17]-1.79*x[9]*x[19]+1.93*x[9]*x[21]+(-1.16*x[10]*x[14])-0.52*x[10]*x[19]-1.4*x[10]*x[20]+(-1.78*x[11]*x[15])-1.83*x[11]*x[18]-0.03*x[2]-0.96*x[3]-0.95*x[4]-0.22*x[5]+0.27*x[6]+0.4*x[7]-0.44*x[8]-0.76*x[9]+0.46*x[10]-0.67*x[11]+0.83*x[12]+0.59*x[13]+0.39*x[14]+0.88*x[15]-0.96*x[16]+0.38*x[17]+0.05*x[18]+0.06*x[19]-0.65*x[20]-0.55*x[21] <= 90.04)
@NLconstraint(m, e12, (-0.66*x[2]*x[14])-0.02*x[2]*x[15]+1.34*x[2]*x[17]-0.59*x[2]*x[20]+0.2*x[3]*x[16]+0.06*x[3]*x[18]+0.58*x[3]*x[19]+0.32*x[3]*x[20]-0.83*x[3]*x[21]+1.93*x[4]*x[13]-0.13*x[4]*x[15]+0.93*x[4]*x[17]+0.09*x[4]*x[18]+1.7*x[4]*x[21]+0.13*x[5]*x[13]+0.94*x[5]*x[14]+1.26*x[5]*x[18]+1.22*x[5]*x[19]-1.8*x[5]*x[20]+(-0.86*x[6]*x[12])-1.24*x[6]*x[13]+1.23*x[6]*x[16]+1.28*x[6]*x[17]-1.14*x[6]*x[18]+0.99*x[7]*x[12]-0.3*x[7]*x[13]+0.84*x[7]*x[14]-1.32*x[7]*x[15]-1.64*x[7]*x[16]-1.37*x[7]*x[17]+0.55*x[7]*x[18]+0.03*x[8]*x[16]-0.42*x[8]*x[15]+1.43*x[8]*x[17]+1.99*x[8]*x[18]-0.85*x[8]*x[21]+(-0.15*x[9]*x[15])-0.56*x[9]*x[18]+1.16*x[9]*x[20]+1.69*x[9]*x[21]+0.52*x[10]*x[15]+1.67*x[10]*x[17]-0.41*x[10]*x[19]-0.01*x[10]*x[20]-1.19*x[10]*x[21]+1.89*x[11]*x[12]+1.66*x[11]*x[13]+1.88*x[11]*x[16]+0.19*x[11]*x[18]-0.33*x[11]*x[20]-0.68*x[2]+0.15*x[3]-0.35*x[4]+0.36*x[5]-0.62*x[6]+0.99*x[7]-0.87*x[8]+0.28*x[9]+0.7*x[10]+0.6*x[11]+0.9*x[12]+0.16*x[13]+0.81*x[14]-0.91*x[15]-0.28*x[16]-0.42*x[17]+0.54*x[18]+0.02*x[19]+0.33*x[20]+0.78*x[21] <= 97.06)
@NLconstraint(m, e13, 0.66*x[2]*x[14]-0.47*x[2]*x[12]-1.92*x[2]*x[15]+1.87*x[2]*x[17]-0.63*x[2]*x[18]+0.49*x[2]*x[20]+(-0.3*x[3]*x[14])-1.98*x[3]*x[17]+1.05*x[3]*x[19]+1.18*x[3]*x[20]+(-0.97*x[4]*x[13])-0.27*x[4]*x[14]-0.77*x[4]*x[15]-0.58*x[4]*x[17]-1.38*x[4]*x[19]-1.34*x[4]*x[21]+1.15*x[5]*x[14]-0.66*x[5]*x[12]+0.28*x[5]*x[16]+1.95*x[5]*x[17]-1.52*x[5]*x[19]+1.66*x[5]*x[21]+0.08*x[6]*x[13]-1.47*x[6]*x[14]-1.02*x[6]*x[20]+1.74*x[7]*x[12]-1.6*x[7]*x[13]-0.46*x[7]*x[14]-1.61*x[7]*x[15]+0.03*x[7]*x[17]+1.98*x[7]*x[18]+1.05*x[7]*x[19]-1.42*x[7]*x[21]+0.77*x[8]*x[12]+0.29*x[8]*x[18]-1.38*x[8]*x[19]-0.08*x[8]*x[20]-1.9*x[8]*x[21]+0.91*x[9]*x[13]-0.74*x[9]*x[14]-1.07*x[9]*x[19]-1.09*x[9]*x[20]+1.1*x[10]*x[13]-1.72*x[10]*x[15]-0.88*x[10]*x[17]+0.52*x[10]*x[18]+1.25*x[10]*x[20]+1.62*x[10]*x[21]+0.8*x[11]*x[14]+0.11*x[11]*x[15]-0.91*x[2]-0.9*x[3]+0.61*x[4]+0.49*x[5]-0.55*x[6]+0.03*x[7]+0.69*x[8]-0.85*x[9]-0.94*x[10]-0.01*x[11]-0.69*x[12]+0.97*x[13]-0.53*x[14]-0.52*x[15]+0.61*x[16]+0.51*x[17]-0.7*x[18]-0.83*x[19]+0.26*x[20]-0.29*x[21] <= 63.0)
@NLconstraint(m, e14, (-0.9*x[2]*x[13])-0.46*x[2]*x[17]-0.44*x[2]*x[20]+0.55*x[3]*x[14]+1.28*x[3]*x[16]-1.11*x[3]*x[17]+0.53*x[3]*x[18]-0.33*x[3]*x[20]+1.23*x[3]*x[21]+0.3*x[4]*x[13]-0.95*x[4]*x[12]-1.53*x[4]*x[16]+0.45*x[4]*x[19]+0.21*x[4]*x[20]+0.32*x[4]*x[21]+0.77*x[5]*x[12]+x[5]*x[15]-1.22*x[5]*x[16]+1.9*x[5]*x[19]-0.96*x[5]*x[21]+0.79*x[6]*x[13]+1.6*x[6]*x[16]+0.16*x[6]*x[19]-0.71*x[6]*x[20]-0.96*x[6]*x[21]+1.5*x[7]*x[13]+0.1*x[7]*x[14]-1.24*x[7]*x[18]-0.64*x[7]*x[19]+0.41*x[7]*x[20]+1.78*x[7]*x[21]+1.8*x[8]*x[12]-1.31*x[8]*x[13]+0.97*x[8]*x[17]-1.2*x[8]*x[18]+0.11*x[8]*x[20]+0.79*x[9]*x[12]-1.63*x[9]*x[14]-0.19*x[9]*x[17]+1.58*x[9]*x[20]-0.55*x[9]*x[21]+0.31*x[10]*x[15]-0.84*x[10]*x[14]+0.6*x[10]*x[17]-1.71*x[10]*x[20]+0.5*x[11]*x[12]-0.84*x[11]*x[16]+0.19*x[11]*x[18]+1.51*x[11]*x[20]+1.1*x[11]*x[21]+0.34*x[2]+0.53*x[3]-0.24*x[4]-0.2*x[5]-0.13*x[6]-0.15*x[7]+0.34*x[8]+0.11*x[9]-0.97*x[10]-0.95*x[11]+0.83*x[12]+0.57*x[13]-0.74*x[14]+0.61*x[15]-0.5*x[16]-0.7*x[17]-0.85*x[18]-0.15*x[19]+0.22*x[20]-0.68*x[21] <= 46.97)
@NLconstraint(m, e15, (-0.28*x[2]*x[12])-0.16*x[2]*x[14]-1.31*x[2]*x[15]+0.25*x[2]*x[16]-0.88*x[2]*x[19]+1.93*x[2]*x[21]+1.82*x[3]*x[14]-1.02*x[3]*x[12]-1.69*x[3]*x[16]+0.08*x[3]*x[18]-0.2*x[3]*x[19]-1.5*x[3]*x[21]+0.2*x[4]*x[14]-1.24*x[4]*x[19]-0.54*x[4]*x[21]+1.6*x[5]*x[12]+1.18*x[5]*x[17]-1.71*x[5]*x[18]-1.61*x[5]*x[19]+1.63*x[6]*x[13]-1.82*x[6]*x[12]+1.4*x[6]*x[14]+1.67*x[6]*x[17]+0.74*x[6]*x[18]-0.31*x[6]*x[19]+(-0.37*x[7]*x[16])-0.57*x[7]*x[17]+0.91*x[7]*x[19]+1.36*x[7]*x[21]+1.98*x[8]*x[14]-0.61*x[8]*x[13]-0.75*x[8]*x[15]-1.38*x[8]*x[20]+1.81*x[8]*x[21]+(-1.78*x[9]*x[13])-1.77*x[9]*x[14]-0.82*x[9]*x[16]-0.27*x[9]*x[17]+1.84*x[10]*x[15]-1.4*x[10]*x[12]+0.1*x[10]*x[18]-1.89*x[10]*x[19]+1.48*x[11]*x[12]-0.74*x[11]*x[14]-1.03*x[11]*x[16]+1.27*x[11]*x[17]-0.79*x[11]*x[18]+0.76*x[11]*x[19]+1.79*x[11]*x[20]-0.1*x[11]*x[21]-0.36*x[2]-0.14*x[3]+0.35*x[4]+0.84*x[5]-0.11*x[6]-0.22*x[7]+0.78*x[8]-0.66*x[9]-0.17*x[10]-0.56*x[11]+0.05*x[12]-0.42*x[13]+0.47*x[14]+0.94*x[15]-0.84*x[16]+0.13*x[17]+0.46*x[18]+0.83*x[19]-0.24*x[20]+0.08*x[21] <= 70.8)
@NLconstraint(m, e16, 0.06*x[2]*x[13]+1.05*x[2]*x[14]+1.11*x[2]*x[17]-0.2*x[2]*x[21]+0.89*x[3]*x[12]-0.34*x[3]*x[13]+0.48*x[3]*x[14]-1.85*x[3]*x[15]-1.62*x[3]*x[16]+0.37*x[3]*x[19]+0.27*x[3]*x[20]+0.63*x[4]*x[12]+0.23*x[4]*x[15]+1.22*x[4]*x[16]+0.03*x[4]*x[18]+0.59*x[5]*x[12]+1.07*x[5]*x[13]+0.37*x[5]*x[16]-1.36*x[5]*x[18]+0.26*x[6]*x[12]+1.39*x[6]*x[15]+0.65*x[6]*x[16]-0.66*x[6]*x[21]+0.02*x[7]*x[12]+0.92*x[7]*x[13]-0.31*x[7]*x[18]+0.46*x[7]*x[21]+0.46*x[8]*x[13]-1.22*x[8]*x[12]+1.35*x[8]*x[16]-0.77*x[8]*x[17]+1.77*x[9]*x[14]-0.02*x[9]*x[12]-0.17*x[9]*x[16]-1.86*x[9]*x[17]+1.51*x[9]*x[18]-1.03*x[9]*x[19]+0.75*x[10]*x[14]-0.83*x[10]*x[13]+0.01*x[10]*x[17]-0.78*x[10]*x[18]-1.62*x[10]*x[19]-0.79*x[10]*x[21]+1.74*x[11]*x[12]+0.17*x[11]*x[13]-1.99*x[11]*x[14]-0.03*x[11]*x[18]+0.48*x[11]*x[19]+0.26*x[11]*x[20]-0.85*x[11]*x[21]-0.45*x[2]+0.22*x[3]+0.47*x[4]+0.21*x[5]-0.77*x[6]-0.56*x[7]+0.01*x[8]+0.73*x[9]+0.16*x[10]-0.71*x[11]+0.31*x[12]+0.17*x[13]+0.96*x[14]-0.55*x[15]+0.17*x[16]-0.98*x[17]+0.63*x[18]+0.75*x[19]+0.45*x[20]-0.54*x[21] <= 20.02)
@NLconstraint(m, e17, (-1.62*x[2]*x[12])-1.05*x[2]*x[13]+0.5*x[2]*x[14]+1.72*x[2]*x[15]-0.39*x[2]*x[17]-1.41*x[2]*x[21]+1.36*x[3]*x[14]-0.68*x[3]*x[16]+1.16*x[3]*x[17]+0.39*x[3]*x[20]+1.89*x[4]*x[12]-0.98*x[4]*x[13]+0.88*x[4]*x[14]-1.42*x[4]*x[17]-1.21*x[4]*x[18]+(-1.42*x[5]*x[12])-0.62*x[5]*x[15]-1.9*x[5]*x[16]+1.61*x[5]*x[17]-0.05*x[5]*x[19]-0.18*x[5]*x[20]+1.51*x[5]*x[21]+0.94*x[6]*x[17]-0.71*x[6]*x[13]-2*x[6]*x[19]-1.6*x[6]*x[20]+1.46*x[7]*x[12]-1.2*x[7]*x[13]-1.62*x[7]*x[15]-1.81*x[7]*x[21]+0.13*x[8]*x[17]-0.77*x[8]*x[15]-1.43*x[8]*x[20]+1.52*x[9]*x[14]-0.33*x[9]*x[13]+1.72*x[9]*x[15]-1.86*x[9]*x[16]+0.27*x[9]*x[17]+0.62*x[9]*x[18]+1.83*x[9]*x[20]+1.59*x[10]*x[13]-0.88*x[10]*x[15]+0.92*x[10]*x[16]-1.94*x[10]*x[21]+1.58*x[11]*x[13]-0.75*x[11]*x[12]-0.86*x[11]*x[14]+0.1*x[11]*x[17]-0.02*x[11]*x[18]-0.19*x[11]*x[19]+0.76*x[2]-0.58*x[3]-0.7*x[4]+0.37*x[5]+0.73*x[6]-0.28*x[7]+0.27*x[8]-0.6*x[9]+0.85*x[10]+0.09*x[11]-0.05*x[12]+0.95*x[13]+0.67*x[14]+0.18*x[15]+0.41*x[16]+0.13*x[17]+0.38*x[18]-0.02*x[19]+0.59*x[20]+0.13*x[21] <= 53.19)
@NLconstraint(m, e18, (-1.89*x[2]*x[12])-1.35*x[2]*x[13]-x[2]*x[14]-1.83*x[2]*x[15]-0.16*x[2]*x[18]+0.9*x[2]*x[19]-0.7*x[2]*x[20]+(-0.09*x[3]*x[17])-0.77*x[3]*x[18]-0.66*x[3]*x[19]-0.03*x[3]*x[20]+1.76*x[4]*x[15]-0.67*x[4]*x[12]+1.99*x[4]*x[17]+1.29*x[4]*x[19]+1.37*x[4]*x[20]+0.49*x[4]*x[21]+0.52*x[5]*x[13]-0.22*x[5]*x[12]-0.11*x[5]*x[14]+0.7*x[5]*x[18]+1.65*x[6]*x[13]-0.61*x[6]*x[14]+1.64*x[6]*x[16]+0.81*x[6]*x[17]-1.16*x[6]*x[18]+(-1.5*x[7]*x[13])-0.59*x[7]*x[18]-1.2*x[7]*x[21]+0.24*x[8]*x[14]-0.93*x[8]*x[12]+0.38*x[8]*x[17]+0.58*x[8]*x[18]-1.27*x[8]*x[20]-0.48*x[8]*x[21]+(-1.79*x[9]*x[12])-0.3*x[9]*x[13]+1.64*x[9]*x[16]-0.66*x[9]*x[19]+0.81*x[10]*x[16]-0.29*x[10]*x[15]-0.54*x[10]*x[18]-0.76*x[10]*x[20]+1.02*x[10]*x[21]+0.42*x[11]*x[15]-1.6*x[11]*x[13]+1.63*x[11]*x[16]-0.86*x[11]*x[19]-0.1*x[11]*x[20]-1.23*x[11]*x[21]+0.31*x[2]+0.05*x[3]+0.55*x[4]+0.3*x[5]+0.13*x[6]+0.89*x[7]-0.83*x[8]-0.89*x[9]-0.57*x[10]+0.53*x[11]-0.88*x[12]-0.53*x[13]+0.93*x[14]-0.52*x[15]-0.94*x[16]-0.39*x[17]-0.39*x[18]+0.84*x[19]-0.22*x[20]-0.02*x[21] <= 33.81)
@NLconstraint(m, e19, 1.3*x[2]*x[14]-1.19*x[2]*x[12]-0.55*x[2]*x[16]-0.36*x[2]*x[18]-1.01*x[2]*x[20]+0.71*x[2]*x[21]+0.68*x[3]*x[13]+1.38*x[3]*x[15]-1.4*x[3]*x[18]-1.07*x[3]*x[19]+1.7*x[4]*x[12]+0.71*x[4]*x[14]-1.27*x[4]*x[16]+0.08*x[4]*x[18]+1.37*x[4]*x[21]+1.08*x[5]*x[12]+1.24*x[5]*x[13]-1.93*x[5]*x[14]+0.86*x[5]*x[15]+0.29*x[5]*x[19]+1.95*x[6]*x[13]-0.02*x[6]*x[15]+0.67*x[6]*x[17]-0.59*x[6]*x[18]+0.24*x[7]*x[13]-1.18*x[7]*x[12]+0.36*x[7]*x[14]-0.96*x[7]*x[15]-0.24*x[7]*x[18]+0.64*x[7]*x[20]-1.84*x[7]*x[21]+1.3*x[8]*x[12]+0.1*x[8]*x[13]+0.25*x[8]*x[16]-0.87*x[8]*x[17]-1.09*x[8]*x[18]+1.56*x[8]*x[19]-1.62*x[8]*x[21]+1.44*x[9]*x[13]+1.96*x[9]*x[16]+1.8*x[9]*x[20]+(-1.3*x[10]*x[14])-0.25*x[10]*x[15]+0.07*x[10]*x[17]+1.53*x[10]*x[19]+0.6*x[11]*x[12]+1.62*x[11]*x[13]+1.77*x[11]*x[14]+0.77*x[11]*x[17]+0.37*x[11]*x[19]+0.31*x[2]-0.52*x[3]-0.5*x[4]-0.14*x[6]+0.22*x[7]-0.72*x[8]+0.46*x[9]+0.89*x[10]-0.62*x[11]-0.92*x[12]+0.17*x[13]+0.42*x[14]-0.98*x[15]+0.86*x[16]-0.14*x[17]-0.48*x[18]-0.4*x[19]-0.82*x[20]+0.69*x[21] <= 27.05)
@NLconstraint(m, e20, 1.75*x[2]*x[13]-1.03*x[2]*x[19]+1.96*x[3]*x[13]-0.21*x[3]*x[14]-1.94*x[3]*x[17]+1.09*x[3]*x[18]+(-0.38*x[4]*x[12])-1.56*x[4]*x[15]+1.87*x[4]*x[16]+0.73*x[4]*x[18]+1.63*x[4]*x[21]+1.38*x[5]*x[13]+0.22*x[5]*x[17]+1.26*x[6]*x[16]-0.82*x[6]*x[14]-0.25*x[6]*x[17]+0.03*x[6]*x[19]-1.67*x[6]*x[20]+(-0.05*x[7]*x[13])-1.8*x[7]*x[14]-1.81*x[7]*x[17]+1.31*x[7]*x[18]-1.44*x[7]*x[19]-0.34*x[7]*x[21]+(-0.73*x[8]*x[13])-0.17*x[8]*x[14]-x[8]*x[15]-0.75*x[8]*x[16]+1.76*x[8]*x[19]+1.97*x[9]*x[14]-1.6*x[9]*x[13]+0.99*x[9]*x[15]-0.91*x[9]*x[17]+1.91*x[9]*x[18]-0.86*x[9]*x[19]+1.99*x[9]*x[20]-1.59*x[9]*x[21]+0.25*x[10]*x[15]-1.81*x[10]*x[13]+0.88*x[10]*x[16]+0.21*x[10]*x[17]-1.94*x[10]*x[18]-0.2*x[10]*x[20]+1.59*x[10]*x[21]+0.97*x[11]*x[14]-0.64*x[11]*x[15]+0.48*x[11]*x[16]+0.87*x[11]*x[17]+0.79*x[11]*x[18]-1.05*x[11]*x[20]+0.53*x[2]-0.37*x[3]-0.95*x[4]-0.58*x[5]+0.34*x[6]-0.93*x[7]-0.02*x[8]-0.96*x[9]+0.42*x[10]-0.8*x[11]+0.18*x[12]-0.4*x[13]-0.31*x[14]-0.83*x[15]+0.56*x[16]-0.85*x[17]+0.71*x[18]+0.3*x[19]+0.69*x[20]+0.21*x[21] <= 47.42)
@NLconstraint(m, e21, (-1.94*x[2]*x[12])-1.49*x[2]*x[13]+0.5*x[3]*x[12]-1.78*x[3]*x[13]-1.47*x[3]*x[14]-1.93*x[3]*x[18]-1.39*x[3]*x[19]+1.42*x[3]*x[21]+(-1.85*x[4]*x[12])-1.76*x[4]*x[13]-x[4]*x[14]+2*x[4]*x[15]-1.42*x[4]*x[18]-0.4*x[4]*x[19]-1.45*x[4]*x[20]+0.87*x[5]*x[13]-0.69*x[5]*x[12]+1.22*x[5]*x[14]-0.13*x[5]*x[15]+0.41*x[5]*x[16]-0.23*x[5]*x[17]-0.29*x[5]*x[18]+1.01*x[5]*x[20]+(-0.28*x[6]*x[13])-0.18*x[6]*x[14]+1.01*x[6]*x[15]+0.26*x[6]*x[16]+1.81*x[6]*x[17]-1.88*x[6]*x[21]+(-0.35*x[7]*x[13])-1.56*x[7]*x[14]+1.26*x[7]*x[17]+0.31*x[7]*x[18]+0.31*x[8]*x[12]-0.76*x[8]*x[13]+0.41*x[8]*x[20]+0.64*x[8]*x[21]+(-0.95*x[9]*x[14])-0.86*x[9]*x[16]+0.05*x[9]*x[18]-1.32*x[9]*x[21]+1.05*x[10]*x[16]+0.77*x[10]*x[18]-0.92*x[10]*x[20]-0.54*x[10]*x[21]+1.92*x[11]*x[17]-1.77*x[11]*x[16]-0.75*x[11]*x[18]-1.22*x[11]*x[19]-0.77*x[11]*x[20]-0.16*x[2]+0.66*x[3]+0.46*x[4]-0.66*x[5]+0.99*x[6]-0.45*x[7]+0.77*x[8]-0.02*x[9]-0.99*x[10]-0.66*x[11]-0.31*x[12]+0.85*x[13]+0.62*x[14]+x[15]+0.49*x[16]+0.91*x[17]-0.57*x[18]+0.45*x[19]+0.82*x[20]+0.42*x[21] <= 20.93)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
