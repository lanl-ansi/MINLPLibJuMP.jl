using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.26*x[2]*x[4]-0.2*x[2]*x[3]+1.41*x[2]*x[5]+1.07*x[2]*x[6]+1.82*x[2]*x[7]+1.2*x[2]*x[8]-0.49*x[2]*x[9]-0.52*x[2]*x[10]-1.41*x[2]*x[11]+(-0.14*x[3]*x[4])-1.03*x[3]*x[5]-1.48*x[3]*x[6]-0.53*x[3]*x[7]-0.75*x[3]*x[8]+1.33*x[3]*x[9]-1.44*x[3]*x[10]+1.6*x[3]*x[11]+(-1.02*x[4]*x[5])-1.85*x[4]*x[6]-0.03*x[4]*x[7]+1.75*x[4]*x[8]-0.47*x[4]*x[9]-1.46*x[4]*x[10]+1.29*x[4]*x[11]+(-0.35*x[5]*x[6])-1.37*x[5]*x[7]+1.18*x[5]*x[8]-1.19*x[5]*x[9]-0.06*x[5]*x[10]-0.33*x[5]*x[11]+0.98*x[6]*x[7]-0.38*x[6]*x[8]-1.19*x[6]*x[9]-1.16*x[6]*x[10]+0.04*x[6]*x[11]+1.57*x[7]*x[8]+1.82*x[7]*x[9]-0.52*x[7]*x[10]+0.2*x[7]*x[11]+1.28*x[8]*x[9]-1.08*x[8]*x[10]-1.36*x[8]*x[11]+0.56*x[9]*x[10]+1.61*x[9]*x[11]-0.62*x[10]*x[11]+0.24*x[2]*x[2]+0.54*x[3]*x[3]-0.82*x[4]*x[4]-0.81*x[5]*x[5]-0.88*x[6]*x[6]-0.33*x[7]*x[7]-0.82*x[8]*x[8]-0.31*x[9]*x[9]-0.27*x[10]*x[10]-0.12*x[11]*x[11]-0.61*x[2]-0.15*x[3]+0.1*x[4]+0.7*x[5]+0.54*x[6]+0.47*x[7]+0.01*x[8]-0.4*x[9]+0.92*x[10]+0.72*x[11])+x[1] == 0.0)
@NLconstraint(m, e2, 1.59*x[2]*x[3]-1.19*x[2]*x[4]-0.68*x[2]*x[5]-1.56*x[2]*x[6]-0.32*x[2]*x[7]+0.66*x[2]*x[8]-0.46*x[2]*x[9]-0.08*x[2]*x[10]+1.76*x[2]*x[11]+0.08*x[3]*x[4]+1.88*x[3]*x[5]-0.67*x[3]*x[6]+0.78*x[3]*x[7]-1.38*x[3]*x[8]+0.28*x[3]*x[9]+1.14*x[3]*x[10]-0.85*x[3]*x[11]+1.45*x[4]*x[5]+0.43*x[4]*x[6]-1.61*x[4]*x[7]+0.7*x[4]*x[8]-0.6*x[4]*x[9]+0.65*x[4]*x[10]+1.45*x[4]*x[11]+(-0.38*x[5]*x[6])-0.71*x[5]*x[7]+0.8*x[5]*x[8]-x[5]*x[9]+0.5*x[5]*x[10]+0.4*x[5]*x[11]+(-0.76*x[6]*x[7])-0.33*x[6]*x[8]+0.78*x[6]*x[9]-1.4*x[6]*x[10]-0.19*x[6]*x[11]+(-1.39*x[7]*x[8])-0.34*x[7]*x[9]+1.41*x[7]*x[10]+0.22*x[7]*x[11]+0.18*x[8]*x[9]+1.67*x[8]*x[10]-1.46*x[8]*x[11]+1.16*x[9]*x[10]-0.36*x[9]*x[11]-1.71*x[10]*x[11]+0.96*x[2]*x[2]+0.77*x[3]*x[3]+0.91*x[4]*x[4]+0.07*x[5]*x[5]+0.17*x[6]*x[6]+0.89*x[7]*x[7]+0.35*x[8]*x[8]+0.76*x[9]*x[9]+0.94*x[10]*x[10]-0.37*x[11]*x[11]+0.98*x[2]-0.57*x[3]-0.51*x[4]-0.99*x[5]-0.59*x[6]-0.29*x[7]+0.99*x[8]-0.84*x[9]-0.43*x[10]+0.38*x[11] <= 77.52)
@NLconstraint(m, e3, 0.33*x[2]*x[3]-1.33*x[2]*x[4]-0.61*x[2]*x[5]-1.51*x[2]*x[6]+0.39*x[2]*x[7]-1.01*x[2]*x[8]-0.94*x[2]*x[9]+0.06*x[2]*x[10]-1.92*x[2]*x[11]+0.74*x[3]*x[4]+1.96*x[3]*x[5]+1.85*x[3]*x[6]-1.99*x[3]*x[7]-1.92*x[3]*x[8]-1.65*x[3]*x[9]-1.1*x[3]*x[10]-1.24*x[3]*x[11]+(-1.66*x[4]*x[5])-0.43*x[4]*x[6]+0.43*x[4]*x[7]-1.51*x[4]*x[8]+1.97*x[4]*x[9]-0.43*x[4]*x[10]+0.39*x[4]*x[11]+0.79*x[5]*x[6]-1.12*x[5]*x[7]+1.02*x[5]*x[8]+1.05*x[5]*x[9]-1.26*x[5]*x[10]-0.07*x[5]*x[11]+0.1*x[6]*x[7]+1.18*x[6]*x[8]+1.74*x[6]*x[9]+0.12*x[6]*x[10]-1.67*x[6]*x[11]+1.57*x[7]*x[9]-1.04*x[7]*x[8]-1.82*x[7]*x[10]-0.73*x[7]*x[11]+0.84*x[8]*x[10]-0.39*x[8]*x[9]-0.16*x[8]*x[11]+1.38*x[9]*x[11]-1.04*x[9]*x[10]-1.62*x[10]*x[11]+0.37*x[2]*x[2]+0.53*x[3]*x[3]-0.68*x[4]*x[4]+0.65*x[5]*x[5]-0.16*x[6]*x[6]-0.08*x[7]*x[7]+0.83*x[8]*x[8]+0.7*x[9]*x[9]-0.17*x[10]*x[10]-0.21*x[11]*x[11]-0.61*x[2]+0.97*x[3]+0.03*x[4]-0.18*x[5]-0.22*x[6]+0.07*x[7]+0.4*x[8]+0.15*x[9]+0.32*x[10]+0.62*x[11] <= 91.72)
@NLconstraint(m, e4, 1.96*x[2]*x[4]-0.05*x[2]*x[3]+1.24*x[2]*x[5]+0.27*x[2]*x[6]-0.44*x[2]*x[7]-0.14*x[2]*x[8]-1.19*x[2]*x[9]+1.77*x[2]*x[10]-1.8*x[2]*x[11]+0.29*x[3]*x[4]+0.11*x[3]*x[5]+1.3*x[3]*x[6]-1.59*x[3]*x[7]+1.13*x[3]*x[8]-0.04*x[3]*x[9]-1.53*x[3]*x[10]-1.12*x[3]*x[11]+0.75*x[4]*x[6]-1.34*x[4]*x[5]+0.08*x[4]*x[7]-0.61*x[4]*x[8]+1.07*x[4]*x[9]+1.63*x[4]*x[10]+0.22*x[4]*x[11]+0.86*x[5]*x[6]+0.23*x[5]*x[7]+1.33*x[5]*x[8]+1.04*x[5]*x[9]+0.32*x[5]*x[10]-1.7*x[5]*x[11]+(-0.39*x[6]*x[7])-0.59*x[6]*x[8]-0.83*x[6]*x[9]-0.65*x[6]*x[10]-0.77*x[6]*x[11]+(-1.02*x[7]*x[8])-1.01*x[7]*x[9]+1.99*x[7]*x[10]-0.31*x[7]*x[11]+(-0.9*x[8]*x[9])-0.69*x[8]*x[10]-0.61*x[8]*x[11]+(-0.12*x[9]*x[10])-1.12*x[9]*x[11]+0.72*x[10]*x[11]+(-0.91*x[2]*x[2])-0.5*x[3]*x[3]-0.72*x[4]*x[4]+0.19*x[5]*x[5]-0.16*x[6]*x[6]+0.03*x[7]*x[7]+0.58*x[8]*x[8]-0.99*x[9]*x[9]-0.04*x[10]*x[10]+0.55*x[11]*x[11]+0.47*x[2]-0.87*x[3]+0.18*x[5]-0.28*x[6]+0.53*x[7]-0.22*x[8]+0.01*x[9]+0.33*x[10]+0.11*x[11] <= 59.63)
@NLconstraint(m, e5, (-0.57*x[2]*x[3])-1.43*x[2]*x[4]-0.49*x[2]*x[5]+0.2*x[2]*x[6]+0.61*x[2]*x[7]+1.97*x[2]*x[8]+0.83*x[2]*x[9]+1.97*x[2]*x[10]+1.19*x[2]*x[11]+0.33*x[3]*x[4]-1.14*x[3]*x[5]+0.34*x[3]*x[6]+0.5*x[3]*x[7]-0.41*x[3]*x[8]+0.56*x[3]*x[9]+1.6*x[3]*x[10]+0.24*x[3]*x[11]+1.66*x[4]*x[5]-1.43*x[4]*x[6]+1.97*x[4]*x[7]-1.24*x[4]*x[8]+1.27*x[4]*x[9]+1.65*x[4]*x[11]+1.99*x[5]*x[6]+0.46*x[5]*x[7]-0.71*x[5]*x[8]+0.73*x[5]*x[9]-0.21*x[5]*x[10]-1.28*x[5]*x[11]+(-0.99*x[6]*x[7])-0.2*x[6]*x[8]+0.02*x[6]*x[9]-0.35*x[6]*x[10]+1.76*x[6]*x[11]+1.69*x[7]*x[9]-1.98*x[7]*x[8]+0.58*x[7]*x[10]-1.48*x[7]*x[11]+1.33*x[8]*x[10]-1.29*x[8]*x[9]+0.73*x[8]*x[11]+0.49*x[9]*x[10]-1.06*x[9]*x[11]-0.52*x[10]*x[11]+0.26*x[2]*x[2]-0.64*x[3]*x[3]+0.06*x[4]*x[4]+0.34*x[5]*x[5]-0.97*x[6]*x[6]+0.47*x[7]*x[7]+0.37*x[8]*x[8]-0.72*x[9]*x[9]+0.25*x[10]*x[10]-0.77*x[11]*x[11]+0.81*x[2]+0.42*x[3]-0.88*x[4]-0.04*x[5]+0.4*x[6]-0.04*x[7]-0.92*x[8]+0.99*x[9]+0.21*x[10]-0.75*x[11] <= 92.34)
@NLconstraint(m, e6, 0.78*x[2]*x[4]-1.49*x[2]*x[3]+1.83*x[2]*x[5]-0.1*x[2]*x[6]-1.4*x[2]*x[7]+1.59*x[2]*x[8]+1.24*x[2]*x[9]+0.58*x[2]*x[10]+0.62*x[2]*x[11]+0.8*x[3]*x[4]+1.96*x[3]*x[5]-0.3*x[3]*x[6]-0.27*x[3]*x[7]-0.16*x[3]*x[8]-1.67*x[3]*x[9]-0.46*x[3]*x[10]+0.67*x[3]*x[11]+(-1.87*x[4]*x[5])-0.31*x[4]*x[6]+0.86*x[4]*x[7]-0.05*x[4]*x[8]+0.95*x[4]*x[9]+1.05*x[4]*x[10]-0.23*x[4]*x[11]+1.77*x[5]*x[6]-1.8*x[5]*x[7]-1.84*x[5]*x[8]+1.96*x[5]*x[9]+0.16*x[5]*x[10]-1.49*x[5]*x[11]+(-1.79*x[6]*x[7])-1.68*x[6]*x[8]+1.52*x[6]*x[9]-1.65*x[6]*x[10]+1.99*x[6]*x[11]+0.49*x[7]*x[8]-1.4*x[7]*x[9]-0.4*x[7]*x[10]-1.61*x[7]*x[11]+(-0.5*x[8]*x[9])-1.61*x[8]*x[10]-1.26*x[8]*x[11]+1.46*x[9]*x[10]+0.4*x[9]*x[11]-0.08*x[10]*x[11]+0.82*x[2]*x[2]-0.82*x[3]*x[3]-0.84*x[4]*x[4]+0.71*x[5]*x[5]+0.41*x[6]*x[6]+0.1*x[7]*x[7]+0.73*x[8]*x[8]+0.99*x[9]*x[9]-0.82*x[10]*x[10]+0.97*x[11]*x[11]-0.93*x[2]+0.24*x[3]+0.44*x[4]+0.11*x[5]+0.33*x[6]+0.13*x[7]-0.64*x[8]-0.87*x[9]+0.7*x[10]-0.24*x[11] <= 86.02)
@NLconstraint(m, e7, 0.9*x[2]*x[4]-1.84*x[2]*x[3]-1.63*x[2]*x[5]-1.71*x[2]*x[6]+0.91*x[2]*x[7]+1.18*x[2]*x[8]+0.25*x[2]*x[9]-1.32*x[2]*x[10]+1.09*x[2]*x[11]+1.57*x[3]*x[4]-0.87*x[3]*x[5]-0.48*x[3]*x[6]-1.55*x[3]*x[7]-0.35*x[3]*x[8]-0.17*x[3]*x[9]+1.88*x[3]*x[10]-0.9*x[3]*x[11]+0.51*x[4]*x[5]-1.89*x[4]*x[6]+1.89*x[4]*x[7]+0.7*x[4]*x[8]-0.02*x[4]*x[9]+0.87*x[4]*x[10]+1.58*x[4]*x[11]+1.7*x[5]*x[6]+0.39*x[5]*x[7]+0.28*x[5]*x[8]+0.16*x[5]*x[9]-0.31*x[5]*x[10]+0.84*x[5]*x[11]+(-0.65*x[6]*x[7])-1.19*x[6]*x[8]-1.24*x[6]*x[9]-1.17*x[6]*x[10]-1.45*x[6]*x[11]+2*x[7]*x[8]-0.41*x[7]*x[9]+1.99*x[7]*x[10]-0.84*x[7]*x[11]+0.86*x[8]*x[10]-1.9*x[8]*x[9]-0.61*x[8]*x[11]+1.28*x[9]*x[11]-1.37*x[9]*x[10]+1.46*x[10]*x[11]+0.25*x[3]*x[3]-0.13*x[2]*x[2]+0.73*x[4]*x[4]-0.92*x[5]*x[5]-0.49*x[6]*x[6]-0.13*x[7]*x[7]-0.47*x[8]*x[8]-0.39*x[9]*x[9]-0.85*x[10]*x[10]-0.38*x[11]*x[11]+0.51*x[2]+0.43*x[3]+0.95*x[4]-0.76*x[5]-0.53*x[6]+0.77*x[7]+0.36*x[8]+0.35*x[9]-0.98*x[10]+0.62*x[11] <= 20.42)
@NLconstraint(m, e8, 0.62*x[2]*x[4]-1.2*x[2]*x[3]+1.69*x[2]*x[5]-1.47*x[2]*x[6]-1.46*x[2]*x[7]-1.52*x[2]*x[8]-1.95*x[2]*x[9]-0.98*x[2]*x[10]+0.64*x[2]*x[11]+0.67*x[3]*x[5]-0.01*x[3]*x[4]-0.79*x[3]*x[6]+1.21*x[3]*x[7]+1.06*x[3]*x[8]-0.27*x[3]*x[9]-0.76*x[3]*x[10]-0.91*x[3]*x[11]+(-0.85*x[4]*x[5])-0.07*x[4]*x[6]+1.77*x[4]*x[7]-0.84*x[4]*x[8]+1.72*x[4]*x[9]+0.38*x[4]*x[10]-1.44*x[4]*x[11]+0.71*x[5]*x[6]-0.44*x[5]*x[7]-1.79*x[5]*x[8]+1.02*x[5]*x[9]+1.49*x[5]*x[10]-0.08*x[5]*x[11]+0.49*x[6]*x[7]+1.3*x[6]*x[8]+0.79*x[6]*x[9]+0.61*x[6]*x[10]+0.45*x[6]*x[11]+(-0.9*x[7]*x[8])-1.8*x[7]*x[9]+1.23*x[7]*x[10]+1.47*x[7]*x[11]+1.67*x[8]*x[9]-0.42*x[8]*x[10]-1.67*x[8]*x[11]+(-1.76*x[9]*x[10])-0.76*x[9]*x[11]-1.77*x[10]*x[11]+0.28*x[2]*x[2]+0.49*x[3]*x[3]-0.14*x[4]*x[4]-0.59*x[5]*x[5]-0.96*x[6]*x[6]+0.58*x[7]*x[7]+0.88*x[8]*x[8]-0.68*x[9]*x[9]-0.7*x[10]*x[10]-0.23*x[11]*x[11]-0.89*x[2]+0.31*x[3]-0.83*x[4]-0.68*x[5]-0.72*x[6]-0.08*x[7]+0.79*x[8]-0.43*x[9]-0.08*x[10]-0.53*x[11] <= 72.24)
@NLconstraint(m, e9, (-1.63*x[2]*x[3])-1.49*x[2]*x[4]+0.51*x[2]*x[5]+0.32*x[2]*x[6]+1.48*x[2]*x[7]+0.31*x[2]*x[8]+0.22*x[2]*x[9]+0.35*x[2]*x[10]-1.19*x[2]*x[11]+1.29*x[3]*x[4]+1.59*x[3]*x[5]-1.25*x[3]*x[6]-0.63*x[3]*x[7]-1.34*x[3]*x[8]+0.16*x[3]*x[9]+1.2*x[3]*x[10]+1.41*x[3]*x[11]+1.89*x[4]*x[5]+0.91*x[4]*x[6]-1.47*x[4]*x[7]+0.71*x[4]*x[8]-0.11*x[4]*x[9]-1.01*x[4]*x[10]-0.86*x[4]*x[11]+(-1.63*x[5]*x[6])-0.58*x[5]*x[7]+0.29*x[5]*x[8]+0.32*x[5]*x[9]+1.55*x[5]*x[10]-1.9*x[5]*x[11]+(-1.09*x[6]*x[7])-0.39*x[6]*x[8]+1.51*x[6]*x[9]-0.03*x[6]*x[10]-0.67*x[6]*x[11]+1.52*x[7]*x[8]+0.68*x[7]*x[9]+0.92*x[7]*x[10]-1.24*x[7]*x[11]+(-1.51*x[8]*x[9])-1.34*x[8]*x[10]+1.75*x[8]*x[11]+1.64*x[9]*x[10]-0.77*x[9]*x[11]-1.67*x[10]*x[11]+0.38*x[3]*x[3]-0.04*x[2]*x[2]+0.98*x[4]*x[4]+0.82*x[5]*x[5]-0.47*x[6]*x[6]-0.05*x[7]*x[7]+0.81*x[8]*x[8]-0.34*x[9]*x[9]-0.09*x[10]*x[10]-0.36*x[11]*x[11]-0.97*x[2]+0.38*x[3]+0.53*x[4]-0.27*x[5]-0.5*x[6]-0.54*x[7]-0.59*x[8]-0.94*x[9]-0.33*x[10]+0.25*x[11] <= 48.39)
@NLconstraint(m, e10, 0.82*x[2]*x[3]+0.82*x[2]*x[4]-1.73*x[2]*x[5]-0.31*x[2]*x[6]+0.96*x[2]*x[7]+0.23*x[2]*x[8]-0.17*x[2]*x[9]-0.94*x[2]*x[10]-1.87*x[2]*x[11]+1.16*x[3]*x[5]-0.33*x[3]*x[4]+0.22*x[3]*x[6]-1.09*x[3]*x[7]-0.51*x[3]*x[8]+0.69*x[3]*x[9]+1.91*x[3]*x[10]-1.35*x[3]*x[11]+1.18*x[4]*x[5]+0.44*x[4]*x[6]-0.15*x[4]*x[7]+0.49*x[4]*x[8]-1.04*x[4]*x[9]+1.5*x[4]*x[10]+0.62*x[4]*x[11]+0.47*x[5]*x[6]+0.98*x[5]*x[7]+1.23*x[5]*x[8]+1.13*x[5]*x[9]-1.31*x[5]*x[10]-1.09*x[5]*x[11]+0.19*x[6]*x[8]-0.9*x[6]*x[7]+0.77*x[6]*x[9]-1.62*x[6]*x[10]-1.03*x[6]*x[11]+0.94*x[7]*x[9]-0.56*x[7]*x[8]-0.99*x[7]*x[10]-0.98*x[7]*x[11]+1.91*x[8]*x[9]-0.75*x[8]*x[10]+1.32*x[8]*x[11]+(-1.08*x[9]*x[10])-0.7*x[9]*x[11]-0.39*x[10]*x[11]+0.38*x[2]*x[2]-0.39*x[3]*x[3]+0.04*x[4]*x[4]+0.84*x[5]*x[5]+0.97*x[6]*x[6]-0.04*x[7]*x[7]-0.28*x[8]*x[8]-0.69*x[9]*x[9]-0.29*x[10]*x[10]+0.62*x[11]*x[11]+0.64*x[2]-0.58*x[3]-0.21*x[4]-0.95*x[5]-0.81*x[6]-0.67*x[7]+0.33*x[8]+0.38*x[9]-0.01*x[10]-0.33*x[11] <= 20.25)
@NLconstraint(m, e11, 0.8*x[2]*x[3]+0.07*x[2]*x[4]+1.64*x[2]*x[5]+0.44*x[2]*x[6]+0.01*x[2]*x[7]+0.61*x[2]*x[8]-1.75*x[2]*x[9]+0.38*x[2]*x[10]+0.93*x[2]*x[11]+1.09*x[3]*x[4]-0.6*x[3]*x[5]-1.15*x[3]*x[6]-1.75*x[3]*x[7]-0.47*x[3]*x[8]-1.32*x[3]*x[9]-1.31*x[3]*x[10]+1.64*x[3]*x[11]+1.73*x[4]*x[5]+1.13*x[4]*x[6]-1.87*x[4]*x[7]+0.04*x[4]*x[8]-1.46*x[4]*x[9]-1.59*x[4]*x[10]+0.1*x[4]*x[11]+(-0.94*x[5]*x[6])-1.05*x[5]*x[7]-1.43*x[5]*x[8]-0.02*x[5]*x[9]-1.14*x[5]*x[10]+1.11*x[5]*x[11]+(-0.87*x[6]*x[7])-1.76*x[6]*x[8]+1.99*x[6]*x[9]+0.3*x[6]*x[10]+1.2*x[6]*x[11]+1.62*x[7]*x[8]+0.3*x[7]*x[9]+0.19*x[7]*x[10]-0.54*x[7]*x[11]+(-0.81*x[8]*x[9])-1.77*x[8]*x[10]+0.03*x[8]*x[11]+0.91*x[9]*x[10]+1.87*x[9]*x[11]+1.53*x[10]*x[11]+(-0.58*x[2]*x[2])-0.27*x[3]*x[3]-0.06*x[4]*x[4]-0.28*x[5]*x[5]+0.39*x[6]*x[6]-0.11*x[7]*x[7]+0.14*x[8]*x[8]+0.1*x[9]*x[9]+0.67*x[10]*x[10]-0.22*x[11]*x[11]-0.52*x[2]-0.44*x[3]+0.57*x[4]+0.98*x[5]+0.98*x[6]-0.15*x[7]+0.62*x[8]-0.92*x[9]-0.56*x[10]-0.06*x[11] <= 82.15)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
