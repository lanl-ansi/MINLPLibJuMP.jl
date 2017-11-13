using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.08*x[1]-0.28*x[2]+0.12*x[3]-0.82*x[4]+0.46*x[5]-0.6*x[6]+0.58*x[7]+0.8*x[8]+0.8*x[9] == 0.48)
@constraint(m, e2, 0.02*x[1]+0.78*x[2]+0.99*x[3]-0.28*x[4]-x[5]+0.8*x[6]+0.31*x[7]-0.8*x[8]-0.2*x[9] == 0.31)
@constraint(m, e3, -0.63*x[1]+0.07*x[2]+0.73*x[3]-0.88*x[4]+0.48*x[5]+0.2*x[6]-0.55*x[7]+0.26*x[8]-0.42*x[9] == -0.37)
@constraint(m, e4, -0.68*x[2]+0.76*x[8] >= 0.03)
@constraint(m, e5, 0.1*x[4]-0.18*x[5] >= -0.04)
@constraint(m, e6, (-0.36*x[1]*x[3])-0.3*x[1]+0.68*x[3]-0.49*x[1]*x[7]+0.14*x[1]*x[8]-0.3*x[1]*x[9]+0.32*x[2]*x[2]+0.9*x[2]*x[8]+0.54*x[3]*x[7]-0.64*x[3]*x[9]+0.64*x[6]*x[9]+0.02*x[8]*x[9]-0.12*x[4] >= 0.46)
@NLconstraint(m, e7, 0.99*x[1]*x[4]-0.17*x[1]*x[2]-0.29*x[1]*x[6]-0.59*x[1]*x[8]+0.99*x[8]-0.85*x[2]*x[2]+0.74*x[2]*x[5]-0.31*x[2]*x[6]+0.72*x[2]*x[7]+0.01*x[2]*x[8]+0.12*x[2]*x[9]+0.77*x[9]+0.14*x[3]*x[3]-0.63*x[4]*x[4]-0.39*x[4]*x[5]-0.72*x[5]*x[6]+0.15*x[8]*x[9]+0.93*x[1]*x[1]*x[5]+0.78*x[1]*x[2]*x[4]+0.24*x[1]*x[2]*x[8]-0.27*x[1]*x[3]*x[5]+0.9*x[1]*x[3]*x[7]+0.31*x[1]*x[3]*x[9]+0.54*x[1]*x[4]*x[4]-0.93*x[1]*x[5]*x[5]-0.27*x[1]*x[5]*x[7]-0.24*x[1]*x[8]*x[9]-0.77*x[2]*x[3]*x[4]+0.09*x[2]*x[3]*x[7]-0.65*x[2]*x[4]*x[5]+0.55*x[2]*x[4]*x[8]+0.36*x[2]*x[5]*x[5]+0.97*x[2]*x[5]*x[6]+0.8*x[2]*x[6]*x[8]-0.49*x[2]*x[7]*x[8]+0.34*x[2]*x[8]*x[9]-0.43*x[2]*x[9]*x[9]+0.16*x[3]*x[3]*x[7]-0.84*x[3]*x[4]*x[5]-0.64*x[3]*x[4]*x[8]-0.37*x[3]*x[5]*x[5]-0.7*x[3]*x[5]*x[9]-0.19*x[4]*x[4]*x[5]+0.7*x[4]*x[5]*x[9]+0.79*x[4]*x[6]*x[9]-0.86*x[4]*x[7]*x[8]+0.86*x[4]*x[7]*x[9]-0.97*x[4]*x[8]*x[9]-0.6*x[4]*x[9]*x[9]-0.1*x[5]*x[6]*x[7]-0.04*x[6]*x[6]*x[6]+0.15*x[6]*x[6]*x[8]-0.15*x[6]*x[7]*x[8]+0.3*x[6]*x[8]*x[9]-0.82*x[8]*x[8]*x[9] >= -0.23)
@NLconstraint(m, e8, (-0.65*x[1]*x[2])-0.24*x[1]+0.74*x[2]+0.09*x[1]*x[3]+0.76*x[2]*x[4]-0.67*x[4]-0.68*x[4]*x[5]+0.7*x[4]*x[6]+0.71*x[4]*x[7]+0.57*x[4]*x[9]-0.83*x[5]*x[7]+0.55*x[1]*x[1]*x[7]+0.03*x[1]*x[1]*x[8]+0.41*x[8]-0.93*x[1]*x[2]*x[6]+0.41*x[1]*x[3]*x[4]-0.28*x[1]*x[3]*x[8]+0.65*x[1]*x[3]*x[9]-0.49*x[1]*x[4]*x[4]-0.65*x[1]*x[6]*x[6]+0.42*x[2]*x[2]*x[2]-0.72*x[2]*x[2]*x[3]-0.83*x[2]*x[2]*x[5]-0.34*x[2]*x[2]*x[9]-0.67*x[2]*x[3]*x[9]-0.56*x[2]*x[5]*x[8]-0.7*x[2]*x[6]*x[6]+0.2*x[2]*x[6]*x[7]-0.88*x[2]*x[7]*x[9]-0.71*x[3]*x[4]*x[6]-0.29*x[3]*x[4]*x[7]+0.37*x[3]*x[5]*x[5]+0.81*x[3]*x[5]*x[6]+0.19*x[3]*x[5]*x[8]+0.49*x[3]*x[6]*x[8]-0.73*x[3]*x[6]*x[9]+0.68*x[3]*x[7]*x[7]-0.8*x[3]*x[7]*x[9]-0.69*x[4]*x[9]*x[9]-0.74*x[5]*x[5]*x[6]-0.36*x[5]*x[5]*x[8]-0.96*x[5]*x[5]*x[9]-0.97*x[6]*x[8]*x[9]-0.22*x[7]*x[7]*x[9]+0.08*x[7]*x[8]*x[8]-0.74*x[7]*x[9]*x[9]+0.21*x[8]*x[8]*x[9]+0.4*x[8]*x[9]*x[9]+0.44*x[1]*x[1]*x[1]*x[1]-0.01*x[1]*x[1]*x[1]*x[2]-0.45*x[1]*x[1]*x[1]*x[4]-0.6*x[1]*x[1]*x[1]*x[9]-0.22*x[1]*x[1]*x[2]*x[4]+0.13*x[1]*x[1]*x[2]*x[6]+0.43*x[1]*x[1]*x[3]*x[5]-0.13*x[1]*x[1]*x[5]*x[6]+0.61*x[1]*x[1]*x[5]*x[7]+0.92*x[1]*x[1]*x[5]*x[8]+0.38*x[1]*x[1]*x[6]*x[9]+0.78*x[1]*x[1]*x[7]*x[9]-0.97*x[1]*x[1]*x[8]*x[9]+0.94*x[1]*x[2]*x[2]*x[7]+0.75*x[1]*x[2]*x[3]*x[3]-0.99*x[1]*x[2]*x[3]*x[4]-0.97*x[1]*x[2]*x[3]*x[9]+0.18*x[1]*x[2]*x[4]*x[4]+0.51*x[1]*x[2]*x[4]*x[7]+0.09*x[1]*x[2]*x[4]*x[8]+0.12*x[1]*x[2]*x[4]*x[9]-0.94*x[1]*x[2]*x[6]*x[9]+0.78*x[1]*x[2]*x[8]*x[8]+0.95*x[1]*x[3]*x[3]*x[3]-0.08*x[1]*x[3]*x[3]*x[5]+0.54*x[1]*x[3]*x[4]*x[7]+0.05*x[1]*x[3]*x[4]*x[9]+0.98*x[1]*x[3]*x[5]*x[9]+0.83*x[1]*x[4]*x[4]*x[7]+0.49*x[1]*x[4]*x[4]*x[9]-0.69*x[1]*x[4]*x[5]*x[7]-x[1]*x[4]*x[5]*x[8]+0.02*x[1]*x[4]*x[5]*x[9]-0.79*x[1]*x[4]*x[6]*x[9]+0.38*x[1]*x[4]*x[7]*x[8]-0.4*x[1]*x[4]*x[7]*x[9]-0.22*x[1]*x[4]*x[9]*x[9]+0.27*x[1]*x[5]*x[5]*x[9]+0.09*x[1]*x[5]*x[6]*x[7]-0.65*x[1]*x[5]*x[8]*x[8]-0.21*x[1]*x[6]*x[6]*x[7]-0.59*x[1]*x[6]*x[7]*x[8]-0.34*x[1]*x[7]*x[7]*x[7]-0.63*x[1]*x[7]*x[8]*x[9]+0.15*x[1]*x[9]*x[9]*x[9]-0.08*x[2]*x[2]*x[2]*x[6]+x[2]*x[2]*x[2]*x[9]-0.97*x[2]*x[2]*x[3]*x[3]+0.64*x[2]*x[2]*x[4]*x[6]+0.2*x[2]*x[2]*x[4]*x[7]+0.49*x[2]*x[2]*x[5]*x[9]-0.1*x[2]*x[2]*x[7]*x[8]-x[2]*x[2]*x[8]*x[9]+0.21*x[2]*x[3]*x[3]*x[6]-0.68*x[2]*x[3]*x[3]*x[9]+0.45*x[2]*x[3]*x[4]*x[5]-0.52*x[2]*x[3]*x[5]*x[5]+0.16*x[2]*x[3]*x[7]*x[7]-0.47*x[2]*x[3]*x[9]*x[9]+0.97*x[2]*x[4]*x[4]*x[6]+0.75*x[2]*x[4]*x[4]*x[7]-0.36*x[2]*x[4]*x[5]*x[7]+0.95*x[2]*x[4]*x[5]*x[8]+0.91*x[2]*x[4]*x[6]*x[7]-0.38*x[2]*x[4]*x[7]*x[7]-0.47*x[2]*x[5]*x[5]*x[6]-0.19*x[2]*x[5]*x[5]*x[7]-0.78*x[2]*x[5]*x[6]*x[6]+0.41*x[2]*x[5]*x[6]*x[8]+0.45*x[2]*x[5]*x[9]*x[9]+0.57*x[2]*x[6]*x[6]*x[7]-0.02*x[2]*x[6]*x[6]*x[8]-0.49*x[2]*x[7]*x[9]*x[9]-0.03*x[2]*x[8]*x[9]*x[9]+0.03*x[3]*x[3]*x[3]*x[3]-0.34*x[3]*x[3]*x[4]*x[8]+0.26*x[3]*x[3]*x[5]*x[5]+0.29*x[3]*x[3]*x[5]*x[7]-0.82*x[3]*x[3]*x[8]*x[9]-0.04*x[3]*x[4]*x[4]*x[6]-0.61*x[3]*x[4]*x[4]*x[7]+0.81*x[3]*x[4]*x[5]*x[7]-0.83*x[3]*x[4]*x[6]*x[7]+0.72*x[3]*x[4]*x[6]*x[8]-0.4*x[3]*x[4]*x[7]*x[8]+0.03*x[3]*x[5]*x[6]*x[7]+0.47*x[3]*x[5]*x[7]*x[9]-0.45*x[3]*x[6]*x[6]*x[9]+0.56*x[3]*x[7]*x[8]*x[9]-0.39*x[3]*x[8]*x[8]*x[8]+0.72*x[3]*x[9]*x[9]*x[9]-0.65*x[4]*x[4]*x[5]*x[6]-0.21*x[4]*x[4]*x[5]*x[9]+0.64*x[4]*x[4]*x[6]*x[7]+0.64*x[4]*x[4]*x[7]*x[8]+0.22*x[4]*x[5]*x[5]*x[7]+0.47*x[4]*x[5]*x[5]*x[8]+0.08*x[4]*x[5]*x[6]*x[6]+0.55*x[4]*x[5]*x[6]*x[9]-0.22*x[4]*x[5]*x[7]*x[8]-0.55*x[4]*x[6]*x[6]*x[8]-0.32*x[4]*x[6]*x[7]*x[7]-0.86*x[4]*x[6]*x[7]*x[9]-0.05*x[4]*x[6]*x[8]*x[8]-0.69*x[4]*x[6]*x[8]*x[9]-0.45*x[4]*x[7]*x[8]*x[9]+0.56*x[4]*x[8]*x[8]*x[9]+0.95*x[5]*x[5]*x[5]*x[6]-0.39*x[5]*x[5]*x[5]*x[7]+0.31*x[5]*x[5]*x[6]*x[9]-0.69*x[5]*x[6]*x[6]*x[7]+0.86*x[5]*x[6]*x[7]*x[9]-0.65*x[5]*x[6]*x[8]*x[9]-0.03*x[5]*x[7]*x[7]*x[9]+0.8*x[5]*x[7]*x[9]*x[9]+0.93*x[5]*x[8]*x[8]*x[9]-0.3*x[5]*x[8]*x[9]*x[9]-0.27*x[6]*x[6]*x[6]*x[7]-0.26*x[6]*x[6]*x[7]*x[7]+0.8*x[6]*x[6]*x[7]*x[9]-0.76*x[6]*x[6]*x[9]*x[9]+0.72*x[6]*x[7]*x[7]*x[7]+0.17*x[6]*x[7]*x[7]*x[8]+0.7*x[6]*x[7]*x[8]*x[8]+0.46*x[6]*x[7]*x[8]*x[9]-0.22*x[7]*x[7]*x[9]*x[9]+0.96*x[7]*x[8]*x[9]*x[9]-0.79*x[7]*x[9]*x[9]*x[9]+0.74*x[8]*x[8]*x[8]*x[9]+0.07*x[9]*x[9]*x[9]*x[9] >= -1.94)
@constraint(m, e9, 0.31*x[1]*x[4]+0.24*x[1]*x[6]-0.43*x[6]+0.67*x[1]*x[7]-0.34*x[2]*x[7]-0.7*x[2]*x[9]+0.44*x[3]*x[3]-0.35*x[3]-0.27*x[3]*x[6]+0.62*x[7]*x[9]-0.94*x[8]*x[8]+0.32*x[9]*x[9]+0.89*x[5] >= 0.16)
@NLconstraint(m, e10, -(0.78*x[1]*x[1]+0.04*x[1]+0.68*x[1]*x[2]-0.94*x[2]-0.25*x[1]*x[3]-0.9*x[3]-0.45*x[1]*x[4]-0.58*x[4]+0.07*x[1]*x[5]+0.87*x[5]-0.04*x[1]*x[6]-0.12*x[6]-0.57*x[1]*x[7]+0.37*x[7]-0.67*x[1]*x[8]+0.84*x[8]+0.5*x[1]*x[9]+0.22*x[9]-0.87*x[2]*x[2]+0.99*x[2]*x[3]-0.28*x[2]*x[4]-0.63*x[2]*x[5]+0.86*x[2]*x[6]-0.02*x[2]*x[7]+0.48*x[2]*x[8]-0.48*x[2]*x[9]+0.32*x[3]*x[3]-0.75*x[3]*x[4]+0.81*x[3]*x[5]+0.35*x[3]*x[6]+0.94*x[3]*x[7]-0.49*x[3]*x[8]-0.31*x[3]*x[9]+0.8*x[4]*x[4]-0.93*x[4]*x[5]+0.75*x[4]*x[6]+0.36*x[4]*x[7]+0.52*x[4]*x[8]+0.91*x[4]*x[9]-0.46*x[5]*x[5]-0.86*x[5]*x[6]+0.85*x[5]*x[7]+0.28*x[5]*x[8]+0.6*x[5]*x[9]-0.81*x[6]*x[6]-0.46*x[6]*x[7]+0.48*x[6]*x[8]+0.82*x[6]*x[9]+0.88*x[7]*x[7]-0.25*x[7]*x[8]+0.02*x[7]*x[9]-0.57*x[8]*x[8]+0.03*x[8]*x[9]-0.86*x[9]*x[9]+0.53*x[1]*x[1]*x[1]-0.12*x[1]*x[1]*x[2]-0.87*x[1]*x[1]*x[3]+0.76*x[1]*x[1]*x[4]-0.78*x[1]*x[1]*x[5]+0.94*x[1]*x[1]*x[6]-0.77*x[1]*x[1]*x[7]-0.4*x[1]*x[1]*x[8]-0.91*x[1]*x[1]*x[9]-0.05*x[1]*x[2]*x[2]-0.32*x[1]*x[2]*x[3]-0.42*x[1]*x[2]*x[4]-0.78*x[1]*x[2]*x[5]+0.52*x[1]*x[2]*x[6]+0.32*x[1]*x[2]*x[7]-0.32*x[1]*x[2]*x[8]-0.79*x[1]*x[2]*x[9]+0.98*x[1]*x[3]*x[3]+0.7*x[1]*x[3]*x[4]-0.7*x[1]*x[3]*x[5]-0.98*x[1]*x[3]*x[6]-0.23*x[1]*x[3]*x[7]-0.75*x[1]*x[3]*x[8]-0.25*x[1]*x[3]*x[9]+0.72*x[1]*x[4]*x[4]+0.66*x[1]*x[4]*x[5]+0.94*x[1]*x[4]*x[6]+0.9*x[1]*x[4]*x[7]+0.96*x[1]*x[4]*x[8]+0.87*x[1]*x[4]*x[9]-0.72*x[1]*x[5]*x[5]-0.09*x[1]*x[5]*x[6]-0.22*x[1]*x[5]*x[7]-0.98*x[1]*x[5]*x[8]-0.62*x[1]*x[5]*x[9]+0.59*x[1]*x[6]*x[6]+0.31*x[1]*x[6]*x[7]-0.01*x[1]*x[6]*x[8]-x[1]*x[6]*x[9]-0.02*x[1]*x[7]*x[7]+0.05*x[1]*x[7]*x[8]+0.98*x[1]*x[7]*x[9]+0.78*x[1]*x[8]*x[8]-0.2*x[1]*x[8]*x[9]+0.78*x[1]*x[9]*x[9]+0.96*x[2]*x[2]*x[2]-0.55*x[2]*x[2]*x[3]+0.71*x[2]*x[2]*x[4]-0.15*x[2]*x[2]*x[5]-0.83*x[2]*x[2]*x[6]-0.31*x[2]*x[2]*x[7]-0.73*x[2]*x[2]*x[8]-0.9*x[2]*x[2]*x[9]-0.89*x[2]*x[3]*x[3]+0.27*x[2]*x[3]*x[4]-0.53*x[2]*x[3]*x[5]+0.06*x[2]*x[3]*x[6]-0.08*x[2]*x[3]*x[7]+0.01*x[2]*x[3]*x[8]+0.61*x[2]*x[3]*x[9]-0.34*x[2]*x[4]*x[4]-0.09*x[2]*x[4]*x[5]+0.34*x[2]*x[4]*x[6]-x[2]*x[4]*x[7]+0.13*x[2]*x[4]*x[8]-0.93*x[2]*x[4]*x[9]+0.25*x[2]*x[5]*x[5]-0.63*x[2]*x[5]*x[6]-0.88*x[2]*x[5]*x[7]+0.34*x[2]*x[5]*x[8]+0.22*x[2]*x[5]*x[9]+0.29*x[2]*x[6]*x[6]+0.26*x[2]*x[6]*x[7]+0.66*x[2]*x[6]*x[8]-0.29*x[2]*x[6]*x[9]+0.07*x[2]*x[7]*x[7]+0.94*x[2]*x[7]*x[8]+0.4*x[2]*x[7]*x[9]+0.22*x[2]*x[8]*x[8]-0.89*x[2]*x[8]*x[9]-0.28*x[2]*x[9]*x[9]+0.22*x[3]*x[3]*x[3]-0.13*x[3]*x[3]*x[4]+0.9*x[3]*x[3]*x[5]+0.82*x[3]*x[3]*x[6]-0.62*x[3]*x[3]*x[7]+0.78*x[3]*x[3]*x[8]-0.38*x[3]*x[3]*x[9]-0.95*x[3]*x[4]*x[4]+0.88*x[3]*x[4]*x[5]+0.14*x[3]*x[4]*x[6]-0.08*x[3]*x[4]*x[7]-0.5*x[3]*x[4]*x[8]+0.71*x[3]*x[4]*x[9]+0.28*x[3]*x[5]*x[5]+0.33*x[3]*x[5]*x[6]+0.65*x[3]*x[5]*x[7]-0.07*x[3]*x[5]*x[8]+0.17*x[3]*x[5]*x[9]+0.1*x[3]*x[6]*x[6]-0.08*x[3]*x[6]*x[7]+0.6*x[3]*x[6]*x[8]-0.54*x[3]*x[6]*x[9]-0.32*x[3]*x[7]*x[7]-0.57*x[3]*x[7]*x[8]+0.28*x[3]*x[7]*x[9]-0.35*x[3]*x[8]*x[8]+0.51*x[3]*x[8]*x[9]-0.91*x[3]*x[9]*x[9]-0.45*x[4]*x[4]*x[4]-0.93*x[4]*x[4]*x[5]+0.13*x[4]*x[4]*x[6]-0.63*x[4]*x[4]*x[7]+0.14*x[4]*x[4]*x[8]+0.52*x[4]*x[4]*x[9]-0.67*x[4]*x[5]*x[5]-0.19*x[4]*x[5]*x[6]+0.72*x[4]*x[5]*x[7]-0.1*x[4]*x[5]*x[8]+0.95*x[4]*x[5]*x[9]-0.03*x[4]*x[6]*x[6]+0.62*x[4]*x[6]*x[7]-0.3*x[4]*x[6]*x[8]-0.55*x[4]*x[6]*x[9]+0.41*x[4]*x[7]*x[7]-0.48*x[4]*x[7]*x[8]+0.33*x[4]*x[7]*x[9]-0.85*x[4]*x[8]*x[8]-0.31*x[4]*x[8]*x[9]-0.28*x[4]*x[9]*x[9]-0.67*x[5]*x[5]*x[5]-0.74*x[5]*x[5]*x[6]+0.21*x[5]*x[5]*x[7]-0.76*x[5]*x[5]*x[8]-0.49*x[5]*x[5]*x[9]-0.28*x[5]*x[6]*x[6]-0.17*x[5]*x[6]*x[7]-0.78*x[5]*x[6]*x[8]-0.38*x[5]*x[6]*x[9]+0.52*x[5]*x[7]*x[7]+0.99*x[5]*x[7]*x[8]+0.01*x[5]*x[7]*x[9]-0.68*x[5]*x[8]*x[8]+0.7*x[5]*x[8]*x[9]-0.83*x[5]*x[9]*x[9]+0.38*x[6]*x[6]*x[6]-0.76*x[6]*x[6]*x[7]+0.05*x[6]*x[6]*x[8]-0.11*x[6]*x[6]*x[9]+0.79*x[6]*x[7]*x[7]-0.47*x[6]*x[7]*x[8]-0.4*x[6]*x[7]*x[9]+0.06*x[6]*x[8]*x[8]+0.64*x[6]*x[8]*x[9]-0.35*x[6]*x[9]*x[9]+0.78*x[7]*x[7]*x[7]+0.72*x[7]*x[7]*x[8]+0.45*x[7]*x[7]*x[9]+0.69*x[7]*x[8]*x[8]-0.37*x[7]*x[8]*x[9]-0.8*x[7]*x[9]*x[9]+0.25*x[8]*x[8]*x[8]+x[8]*x[8]*x[9]+0.82*x[8]*x[9]*x[9]-0.17*x[9]*x[9]*x[9]+0.03*x[1]*x[1]*x[1]*x[1]-0.99*x[1]*x[1]*x[1]*x[2]-0.34*x[1]*x[1]*x[1]*x[3]-0.42*x[1]*x[1]*x[1]*x[4]+0.92*x[1]*x[1]*x[1]*x[5]+0.71*x[1]*x[1]*x[1]*x[6]+0.61*x[1]*x[1]*x[1]*x[7]-0.15*x[1]*x[1]*x[1]*x[8]+0.27*x[1]*x[1]*x[1]*x[9]+0.88*x[1]*x[1]*x[2]*x[2]-0.93*x[1]*x[1]*x[2]*x[3]-0.63*x[1]*x[1]*x[2]*x[4]-0.49*x[1]*x[1]*x[2]*x[5]-0.02*x[1]*x[1]*x[2]*x[6]-0.59*x[1]*x[1]*x[2]*x[7]+0.33*x[1]*x[1]*x[2]*x[8]-0.71*x[1]*x[1]*x[2]*x[9]-0.5*x[1]*x[1]*x[3]*x[3]-0.93*x[1]*x[1]*x[3]*x[4]-0.97*x[1]*x[1]*x[3]*x[5]-0.08*x[1]*x[1]*x[3]*x[6]-0.08*x[1]*x[1]*x[3]*x[7]-0.06*x[1]*x[1]*x[3]*x[8]+0.71*x[1]*x[1]*x[3]*x[9]-0.93*x[1]*x[1]*x[4]*x[4]-0.98*x[1]*x[1]*x[4]*x[5]+0.7*x[1]*x[1]*x[4]*x[6]-0.95*x[1]*x[1]*x[4]*x[7]-0.4*x[1]*x[1]*x[4]*x[8]-0.27*x[1]*x[1]*x[4]*x[9]+0.14*x[1]*x[1]*x[5]*x[5]+0.56*x[1]*x[1]*x[5]*x[6]+0.94*x[1]*x[1]*x[5]*x[7]+0.38*x[1]*x[1]*x[5]*x[8]+0.71*x[1]*x[1]*x[5]*x[9]+0.83*x[1]*x[1]*x[6]*x[6]-0.2*x[1]*x[1]*x[6]*x[7]+0.56*x[1]*x[1]*x[6]*x[8]-0.85*x[1]*x[1]*x[6]*x[9]+0.02*x[1]*x[1]*x[7]*x[7]+0.69*x[1]*x[1]*x[7]*x[8]-0.33*x[1]*x[1]*x[7]*x[9]-0.15*x[1]*x[1]*x[8]*x[8]+0.96*x[1]*x[1]*x[8]*x[9]+0.81*x[1]*x[1]*x[9]*x[9]+0.38*x[1]*x[2]*x[2]*x[2]+0.34*x[1]*x[2]*x[2]*x[3]-0.26*x[1]*x[2]*x[2]*x[4]-0.63*x[1]*x[2]*x[2]*x[5]+0.25*x[1]*x[2]*x[2]*x[6]+0.76*x[1]*x[2]*x[2]*x[7]-0.85*x[1]*x[2]*x[2]*x[8]-0.85*x[1]*x[2]*x[2]*x[9]+0.16*x[1]*x[2]*x[3]*x[3]-0.22*x[1]*x[2]*x[3]*x[4]-0.34*x[1]*x[2]*x[3]*x[5]+0.52*x[1]*x[2]*x[3]*x[6]-0.21*x[1]*x[2]*x[3]*x[7]+0.72*x[1]*x[2]*x[3]*x[8]+0.78*x[1]*x[2]*x[3]*x[9]-0.98*x[1]*x[2]*x[4]*x[4]+0.52*x[1]*x[2]*x[4]*x[5]-0.04*x[1]*x[2]*x[4]*x[6]+0.62*x[1]*x[2]*x[4]*x[7]+0.29*x[1]*x[2]*x[4]*x[8]+0.4*x[1]*x[2]*x[4]*x[9]+0.63*x[1]*x[2]*x[5]*x[5]+0.06*x[1]*x[2]*x[5]*x[6]-0.93*x[1]*x[2]*x[5]*x[7]+0.08*x[1]*x[2]*x[5]*x[8]+0.83*x[1]*x[2]*x[5]*x[9]-0.88*x[1]*x[2]*x[6]*x[6]+x[1]*x[2]*x[6]*x[7]+0.25*x[1]*x[2]*x[6]*x[8]+0.74*x[1]*x[2]*x[6]*x[9]-0.89*x[1]*x[2]*x[7]*x[7]-0.47*x[1]*x[2]*x[7]*x[8]-0.82*x[1]*x[2]*x[7]*x[9]+0.91*x[1]*x[2]*x[8]*x[8]-0.98*x[1]*x[2]*x[8]*x[9]-0.98*x[1]*x[2]*x[9]*x[9]-0.14*x[1]*x[3]*x[3]*x[3]+0.17*x[1]*x[3]*x[3]*x[4]-0.95*x[1]*x[3]*x[3]*x[5]-0.63*x[1]*x[3]*x[3]*x[6]+0.18*x[1]*x[3]*x[3]*x[7]-0.62*x[1]*x[3]*x[3]*x[8]+0.21*x[1]*x[3]*x[3]*x[9]-0.12*x[1]*x[3]*x[4]*x[4]-0.79*x[1]*x[3]*x[4]*x[5]-0.31*x[1]*x[3]*x[4]*x[6]+0.44*x[1]*x[3]*x[4]*x[7]-x[1]*x[3]*x[4]*x[8]-0.7*x[1]*x[3]*x[4]*x[9]-0.37*x[1]*x[3]*x[5]*x[5]-0.23*x[1]*x[3]*x[5]*x[6]-0.15*x[1]*x[3]*x[5]*x[7]-0.2*x[1]*x[3]*x[5]*x[8]+0.39*x[1]*x[3]*x[5]*x[9]-0.93*x[1]*x[3]*x[6]*x[6]+0.19*x[1]*x[3]*x[6]*x[7]-0.3*x[1]*x[3]*x[6]*x[8]-0.68*x[1]*x[3]*x[6]*x[9]-0.64*x[1]*x[3]*x[7]*x[7]+0.22*x[1]*x[3]*x[7]*x[8]-0.27*x[1]*x[3]*x[7]*x[9]-0.12*x[1]*x[3]*x[8]*x[8]+0.67*x[1]*x[3]*x[8]*x[9]+0.36*x[1]*x[3]*x[9]*x[9]+0.25*x[1]*x[4]*x[4]*x[4]-0.43*x[1]*x[4]*x[4]*x[5]-0.19*x[1]*x[4]*x[4]*x[6]+0.5*x[1]*x[4]*x[4]*x[7]-0.04*x[1]*x[4]*x[4]*x[8]-0.42*x[1]*x[4]*x[4]*x[9]+0.65*x[1]*x[4]*x[5]*x[5]+0.9*x[1]*x[4]*x[5]*x[6]-0.64*x[1]*x[4]*x[5]*x[7]+0.15*x[1]*x[4]*x[5]*x[8]+0.59*x[1]*x[4]*x[5]*x[9]+0.87*x[1]*x[4]*x[6]*x[6]+0.56*x[1]*x[4]*x[6]*x[7]-0.39*x[1]*x[4]*x[6]*x[8]+0.25*x[1]*x[4]*x[6]*x[9]-0.25*x[1]*x[4]*x[7]*x[7]-0.63*x[1]*x[4]*x[7]*x[8]+0.55*x[1]*x[4]*x[7]*x[9]-0.96*x[1]*x[4]*x[8]*x[8]-0.88*x[1]*x[4]*x[8]*x[9]-0.33*x[1]*x[4]*x[9]*x[9]-0.29*x[1]*x[5]*x[5]*x[5]-0.42*x[1]*x[5]*x[5]*x[6]-0.85*x[1]*x[5]*x[5]*x[7]+0.17*x[1]*x[5]*x[5]*x[8]-0.05*x[1]*x[5]*x[5]*x[9]+0.92*x[1]*x[5]*x[6]*x[6]-0.68*x[1]*x[5]*x[6]*x[7]+0.41*x[1]*x[5]*x[6]*x[8]+0.71*x[1]*x[5]*x[6]*x[9]-0.68*x[1]*x[5]*x[7]*x[7]-0.17*x[1]*x[5]*x[7]*x[8]-0.45*x[1]*x[5]*x[7]*x[9]+0.55*x[1]*x[5]*x[8]*x[8]+0.29*x[1]*x[5]*x[8]*x[9]+0.16*x[1]*x[5]*x[9]*x[9]+0.2*x[1]*x[6]*x[6]*x[6]+0.86*x[1]*x[6]*x[6]*x[7]+0.53*x[1]*x[6]*x[6]*x[8]-0.91*x[1]*x[6]*x[6]*x[9]+0.95*x[1]*x[6]*x[7]*x[7]-0.22*x[1]*x[6]*x[7]*x[8]+0.39*x[1]*x[6]*x[7]*x[9]+0.23*x[1]*x[6]*x[8]*x[8]+0.75*x[1]*x[6]*x[8]*x[9]-0.93*x[1]*x[6]*x[9]*x[9]+0.66*x[1]*x[7]*x[7]*x[7]-0.3*x[1]*x[7]*x[7]*x[8]+0.09*x[1]*x[7]*x[7]*x[9]-0.49*x[1]*x[7]*x[8]*x[8]+x[1]*x[7]*x[8]*x[9]-0.12*x[1]*x[7]*x[9]*x[9]-0.74*x[1]*x[8]*x[8]*x[8]+0.67*x[1]*x[8]*x[8]*x[9]-0.67*x[1]*x[8]*x[9]*x[9]-0.54*x[1]*x[9]*x[9]*x[9]+0.55*x[2]*x[2]*x[2]*x[2]+0.13*x[2]*x[2]*x[2]*x[3]+0.95*x[2]*x[2]*x[2]*x[4]+0.94*x[2]*x[2]*x[2]*x[5]+0.12*x[2]*x[2]*x[2]*x[6]-x[2]*x[2]*x[2]*x[7]-0.47*x[2]*x[2]*x[2]*x[8]-0.36*x[2]*x[2]*x[2]*x[9]+0.14*x[2]*x[2]*x[3]*x[3]-0.48*x[2]*x[2]*x[3]*x[4]+0.3*x[2]*x[2]*x[3]*x[5]+0.27*x[2]*x[2]*x[3]*x[6]-0.28*x[2]*x[2]*x[3]*x[7]+0.83*x[2]*x[2]*x[3]*x[8]-0.28*x[2]*x[2]*x[3]*x[9]+0.69*x[2]*x[2]*x[4]*x[4]+0.4*x[2]*x[2]*x[4]*x[5]+0.79*x[2]*x[2]*x[4]*x[6]-0.18*x[2]*x[2]*x[4]*x[7]+0.92*x[2]*x[2]*x[4]*x[8]+x[2]*x[2]*x[4]*x[9]+0.9*x[2]*x[2]*x[5]*x[5]+0.31*x[2]*x[2]*x[5]*x[6]+0.5*x[2]*x[2]*x[5]*x[7]+0.73*x[2]*x[2]*x[5]*x[8]+0.65*x[2]*x[2]*x[5]*x[9]+0.22*x[2]*x[2]*x[6]*x[6]-0.79*x[2]*x[2]*x[6]*x[7]+0.82*x[2]*x[2]*x[6]*x[8]+0.89*x[2]*x[2]*x[6]*x[9]+0.96*x[2]*x[2]*x[7]*x[7]-0.69*x[2]*x[2]*x[7]*x[8]-0.19*x[2]*x[2]*x[7]*x[9]-0.62*x[2]*x[2]*x[8]*x[8]-0.64*x[2]*x[2]*x[8]*x[9]+0.88*x[2]*x[2]*x[9]*x[9]-0.23*x[2]*x[3]*x[3]*x[3]-0.48*x[2]*x[3]*x[3]*x[4]+0.74*x[2]*x[3]*x[3]*x[5]-0.18*x[2]*x[3]*x[3]*x[6]-0.92*x[2]*x[3]*x[3]*x[7]+0.94*x[2]*x[3]*x[3]*x[8]-0.93*x[2]*x[3]*x[3]*x[9]+0.37*x[2]*x[3]*x[4]*x[4]-0.36*x[2]*x[3]*x[4]*x[5]+0.71*x[2]*x[3]*x[4]*x[6]+0.78*x[2]*x[3]*x[4]*x[7]+0.08*x[2]*x[3]*x[4]*x[8]-0.21*x[2]*x[3]*x[4]*x[9]+0.33*x[2]*x[3]*x[5]*x[5]+0.21*x[2]*x[3]*x[5]*x[6]-0.95*x[2]*x[3]*x[5]*x[7]+0.35*x[2]*x[3]*x[5]*x[8]-0.33*x[2]*x[3]*x[5]*x[9]+0.98*x[2]*x[3]*x[6]*x[6]-x[2]*x[3]*x[6]*x[7]-0.1*x[2]*x[3]*x[6]*x[8]-0.02*x[2]*x[3]*x[6]*x[9]-0.15*x[2]*x[3]*x[7]*x[7]+0.1*x[2]*x[3]*x[7]*x[8]-0.32*x[2]*x[3]*x[7]*x[9]-0.35*x[2]*x[3]*x[8]*x[8]+0.74*x[2]*x[3]*x[8]*x[9]-0.51*x[2]*x[3]*x[9]*x[9]+0.76*x[2]*x[4]*x[4]*x[4]-0.78*x[2]*x[4]*x[4]*x[5]+0.54*x[2]*x[4]*x[4]*x[6]-0.64*x[2]*x[4]*x[4]*x[7]-0.99*x[2]*x[4]*x[4]*x[8]-0.68*x[2]*x[4]*x[4]*x[9]+0.35*x[2]*x[4]*x[5]*x[5]-0.65*x[2]*x[4]*x[5]*x[6]+0.32*x[2]*x[4]*x[5]*x[7]-0.17*x[2]*x[4]*x[5]*x[8]-0.52*x[2]*x[4]*x[5]*x[9]-0.32*x[2]*x[4]*x[6]*x[6]+0.9*x[2]*x[4]*x[6]*x[7]-0.93*x[2]*x[4]*x[6]*x[8]-0.06*x[2]*x[4]*x[6]*x[9]-0.65*x[2]*x[4]*x[7]*x[7]-0.5*x[2]*x[4]*x[7]*x[8]-0.87*x[2]*x[4]*x[7]*x[9]-0.36*x[2]*x[4]*x[8]*x[8]-0.61*x[2]*x[4]*x[8]*x[9]+0.25*x[2]*x[4]*x[9]*x[9]+0.26*x[2]*x[5]*x[5]*x[5]+0.61*x[2]*x[5]*x[5]*x[6]+0.72*x[2]*x[5]*x[5]*x[7]-0.7*x[2]*x[5]*x[5]*x[8]-0.13*x[2]*x[5]*x[5]*x[9]+0.96*x[2]*x[5]*x[6]*x[6]+0.53*x[2]*x[5]*x[6]*x[7]+0.43*x[2]*x[5]*x[6]*x[8]-0.49*x[2]*x[5]*x[6]*x[9]-0.61*x[2]*x[5]*x[7]*x[7]+0.99*x[2]*x[5]*x[7]*x[8]-0.84*x[2]*x[5]*x[7]*x[9]-0.39*x[2]*x[5]*x[8]*x[8]-0.88*x[2]*x[5]*x[8]*x[9]+0.65*x[2]*x[5]*x[9]*x[9]-0.06*x[2]*x[6]*x[6]*x[6]-0.18*x[2]*x[6]*x[6]*x[7]-0.33*x[2]*x[6]*x[6]*x[8]+0.59*x[2]*x[6]*x[6]*x[9]+0.77*x[2]*x[6]*x[7]*x[7]-0.98*x[2]*x[6]*x[7]*x[8]+0.06*x[2]*x[6]*x[7]*x[9]+0.24*x[2]*x[6]*x[8]*x[8]-0.78*x[2]*x[6]*x[8]*x[9]+0.92*x[2]*x[6]*x[9]*x[9]+0.28*x[2]*x[7]*x[7]*x[7]+0.79*x[2]*x[7]*x[7]*x[8]-0.3*x[2]*x[7]*x[7]*x[9]-0.94*x[2]*x[7]*x[8]*x[8]+0.16*x[2]*x[7]*x[8]*x[9]+0.47*x[2]*x[7]*x[9]*x[9]-0.57*x[2]*x[8]*x[8]*x[8]-0.78*x[2]*x[8]*x[8]*x[9]+0.29*x[2]*x[8]*x[9]*x[9]+0.34*x[2]*x[9]*x[9]*x[9]+0.88*x[3]*x[3]*x[3]*x[3]+0.03*x[3]*x[3]*x[3]*x[4]+0.47*x[3]*x[3]*x[3]*x[5]-0.85*x[3]*x[3]*x[3]*x[6]-0.73*x[3]*x[3]*x[3]*x[7]+0.77*x[3]*x[3]*x[3]*x[8]-0.33*x[3]*x[3]*x[3]*x[9]-0.9*x[3]*x[3]*x[4]*x[4]+0.9*x[3]*x[3]*x[4]*x[5]-0.76*x[3]*x[3]*x[4]*x[6]-0.52*x[3]*x[3]*x[4]*x[7]+0.63*x[3]*x[3]*x[4]*x[8]+0.51*x[3]*x[3]*x[4]*x[9]-0.56*x[3]*x[3]*x[5]*x[5]-0.84*x[3]*x[3]*x[5]*x[6]+0.58*x[3]*x[3]*x[5]*x[7]+0.58*x[3]*x[3]*x[5]*x[8]+0.68*x[3]*x[3]*x[5]*x[9]-0.24*x[3]*x[3]*x[6]*x[6]+0.53*x[3]*x[3]*x[6]*x[7]-0.31*x[3]*x[3]*x[6]*x[8]-0.18*x[3]*x[3]*x[6]*x[9]+0.79*x[3]*x[3]*x[7]*x[7]+0.66*x[3]*x[3]*x[7]*x[8]-0.54*x[3]*x[3]*x[7]*x[9]+0.63*x[3]*x[3]*x[8]*x[8]-0.83*x[3]*x[3]*x[8]*x[9]+0.39*x[3]*x[3]*x[9]*x[9]-0.57*x[3]*x[4]*x[4]*x[4]+0.99*x[3]*x[4]*x[4]*x[5]-0.28*x[3]*x[4]*x[4]*x[6]+0.36*x[3]*x[4]*x[4]*x[7]+0.94*x[3]*x[4]*x[4]*x[8]+0.29*x[3]*x[4]*x[4]*x[9]-0.19*x[3]*x[4]*x[5]*x[5]-0.09*x[3]*x[4]*x[5]*x[6]-0.21*x[3]*x[4]*x[5]*x[7]+0.69*x[3]*x[4]*x[5]*x[8]+0.82*x[3]*x[4]*x[5]*x[9]-0.78*x[3]*x[4]*x[6]*x[6]+0.33*x[3]*x[4]*x[6]*x[7]+0.73*x[3]*x[4]*x[6]*x[8]+0.99*x[3]*x[4]*x[6]*x[9]+0.57*x[3]*x[4]*x[7]*x[7]-0.79*x[3]*x[4]*x[7]*x[8]-0.45*x[3]*x[4]*x[7]*x[9]-0.22*x[3]*x[4]*x[8]*x[8]+x[3]*x[4]*x[8]*x[9]+x[3]*x[4]*x[9]*x[9]-0.11*x[3]*x[5]*x[5]*x[5]-0.35*x[3]*x[5]*x[5]*x[6]+0.88*x[3]*x[5]*x[5]*x[7]+0.16*x[3]*x[5]*x[5]*x[8]+0.2*x[3]*x[5]*x[5]*x[9]-0.08*x[3]*x[5]*x[6]*x[6]+0.2*x[3]*x[5]*x[6]*x[7]+0.05*x[3]*x[5]*x[6]*x[8]+0.54*x[3]*x[5]*x[6]*x[9]-0.22*x[3]*x[5]*x[7]*x[7]-0.48*x[3]*x[5]*x[7]*x[8]-0.91*x[3]*x[5]*x[7]*x[9]+0.04*x[3]*x[5]*x[8]*x[8]-0.97*x[3]*x[5]*x[8]*x[9]+0.03*x[3]*x[5]*x[9]*x[9]+0.07*x[3]*x[6]*x[6]*x[6]+0.05*x[3]*x[6]*x[6]*x[7]+0.26*x[3]*x[6]*x[6]*x[8]+0.6*x[3]*x[6]*x[6]*x[9]+0.28*x[3]*x[6]*x[7]*x[7]-0.76*x[3]*x[6]*x[7]*x[8]-0.14*x[3]*x[6]*x[7]*x[9]+0.98*x[3]*x[6]*x[8]*x[8]+0.43*x[3]*x[6]*x[8]*x[9]+0.67*x[3]*x[6]*x[9]*x[9]+0.48*x[3]*x[7]*x[7]*x[7]-0.74*x[3]*x[7]*x[7]*x[8]+0.78*x[3]*x[7]*x[7]*x[9]+0.51*x[3]*x[7]*x[8]*x[8]-0.94*x[3]*x[7]*x[8]*x[9]-0.99*x[3]*x[7]*x[9]*x[9]-0.17*x[3]*x[8]*x[8]*x[8]+0.65*x[3]*x[8]*x[8]*x[9]+0.38*x[3]*x[8]*x[9]*x[9]-0.26*x[3]*x[9]*x[9]*x[9]+0.45*x[4]*x[4]*x[4]*x[4]-0.52*x[4]*x[4]*x[4]*x[5]+0.81*x[4]*x[4]*x[4]*x[6]-0.14*x[4]*x[4]*x[4]*x[7]+0.59*x[4]*x[4]*x[4]*x[8]-0.8*x[4]*x[4]*x[4]*x[9]-0.83*x[4]*x[4]*x[5]*x[5]+0.17*x[4]*x[4]*x[5]*x[6]-0.68*x[4]*x[4]*x[5]*x[7]-0.09*x[4]*x[4]*x[5]*x[8]-0.94*x[4]*x[4]*x[5]*x[9]-0.39*x[4]*x[4]*x[6]*x[6]+0.36*x[4]*x[4]*x[6]*x[7]+0.93*x[4]*x[4]*x[6]*x[8]+0.47*x[4]*x[4]*x[6]*x[9]-0.98*x[4]*x[4]*x[7]*x[7]+0.72*x[4]*x[4]*x[7]*x[8]+0.55*x[4]*x[4]*x[7]*x[9]-0.53*x[4]*x[4]*x[8]*x[8]+0.59*x[4]*x[4]*x[8]*x[9]+0.38*x[4]*x[4]*x[9]*x[9]+0.49*x[4]*x[5]*x[5]*x[5]+0.82*x[4]*x[5]*x[5]*x[6]-0.69*x[4]*x[5]*x[5]*x[7]-0.76*x[4]*x[5]*x[5]*x[8]+0.42*x[4]*x[5]*x[5]*x[9]-0.65*x[4]*x[5]*x[6]*x[6]+0.5*x[4]*x[5]*x[6]*x[7]+0.14*x[4]*x[5]*x[6]*x[8]-0.23*x[4]*x[5]*x[6]*x[9]+0.95*x[4]*x[5]*x[7]*x[7]+0.92*x[4]*x[5]*x[7]*x[8]-0.67*x[4]*x[5]*x[7]*x[9]-0.73*x[4]*x[5]*x[8]*x[8]+0.77*x[4]*x[5]*x[8]*x[9]+0.97*x[4]*x[5]*x[9]*x[9]+0.8*x[4]*x[6]*x[6]*x[6]-0.09*x[4]*x[6]*x[6]*x[7]+0.84*x[4]*x[6]*x[6]*x[8]+0.15*x[4]*x[6]*x[6]*x[9]-0.36*x[4]*x[6]*x[7]*x[7]+0.37*x[4]*x[6]*x[7]*x[8]+0.9*x[4]*x[6]*x[7]*x[9]+0.27*x[4]*x[6]*x[8]*x[8]-0.82*x[4]*x[6]*x[8]*x[9]-0.13*x[4]*x[6]*x[9]*x[9]-0.29*x[4]*x[7]*x[7]*x[7]-0.11*x[4]*x[7]*x[7]*x[8]-0.76*x[4]*x[7]*x[7]*x[9]-0.64*x[4]*x[7]*x[8]*x[8]+0.36*x[4]*x[7]*x[8]*x[9]-0.52*x[4]*x[7]*x[9]*x[9]+0.3*x[4]*x[8]*x[8]*x[8]-0.62*x[4]*x[8]*x[8]*x[9]-0.52*x[4]*x[8]*x[9]*x[9]-0.26*x[4]*x[9]*x[9]*x[9]-0.42*x[5]*x[5]*x[5]*x[5]-0.92*x[5]*x[5]*x[5]*x[6]-0.14*x[5]*x[5]*x[5]*x[7]+0.23*x[5]*x[5]*x[5]*x[8]-0.87*x[5]*x[5]*x[5]*x[9]+0.28*x[5]*x[5]*x[6]*x[6]-0.36*x[5]*x[5]*x[6]*x[7]+0.38*x[5]*x[5]*x[6]*x[8]-0.74*x[5]*x[5]*x[6]*x[9]-0.42*x[5]*x[5]*x[7]*x[7]+0.92*x[5]*x[5]*x[7]*x[8]+0.98*x[5]*x[5]*x[7]*x[9]-0.24*x[5]*x[5]*x[8]*x[8]+0.61*x[5]*x[5]*x[8]*x[9]-0.08*x[5]*x[5]*x[9]*x[9]-0.4*x[5]*x[6]*x[6]*x[6]-0.84*x[5]*x[6]*x[6]*x[7]+0.09*x[5]*x[6]*x[6]*x[8]-0.73*x[5]*x[6]*x[6]*x[9]+0.28*x[5]*x[6]*x[7]*x[7]-0.35*x[5]*x[6]*x[7]*x[8]-0.34*x[5]*x[6]*x[7]*x[9]+0.83*x[5]*x[6]*x[8]*x[8]+0.18*x[5]*x[6]*x[8]*x[9]+0.01*x[5]*x[6]*x[9]*x[9]+0.65*x[5]*x[7]*x[7]*x[7]+0.19*x[5]*x[7]*x[7]*x[8]+0.45*x[5]*x[7]*x[7]*x[9]+0.2*x[5]*x[7]*x[8]*x[8]+0.02*x[5]*x[7]*x[8]*x[9]-0.72*x[5]*x[7]*x[9]*x[9]-0.56*x[5]*x[8]*x[8]*x[8]-0.85*x[5]*x[8]*x[8]*x[9]+0.75*x[5]*x[8]*x[9]*x[9]+0.38*x[5]*x[9]*x[9]*x[9]-0.67*x[6]*x[6]*x[6]*x[6]+0.22*x[6]*x[6]*x[6]*x[7]-0.78*x[6]*x[6]*x[6]*x[8]+0.54*x[6]*x[6]*x[6]*x[9]-0.48*x[6]*x[6]*x[7]*x[7]-0.99*x[6]*x[6]*x[7]*x[8]+0.23*x[6]*x[6]*x[7]*x[9]+0.4*x[6]*x[6]*x[8]*x[8]-0.24*x[6]*x[6]*x[8]*x[9]+0.38*x[6]*x[6]*x[9]*x[9]-0.09*x[6]*x[7]*x[7]*x[7]+0.02*x[6]*x[7]*x[7]*x[8]-0.18*x[6]*x[7]*x[7]*x[9]-0.41*x[6]*x[7]*x[8]*x[8]+0.53*x[6]*x[7]*x[8]*x[9]+0.46*x[6]*x[7]*x[9]*x[9]-0.8*x[6]*x[8]*x[8]*x[8]+0.77*x[6]*x[8]*x[8]*x[9]-0.81*x[6]*x[8]*x[9]*x[9]+0.86*x[6]*x[9]*x[9]*x[9]+0.63*x[7]*x[7]*x[7]*x[7]+0.49*x[7]*x[7]*x[7]*x[8]+0.24*x[7]*x[7]*x[7]*x[9]+0.69*x[7]*x[7]*x[8]*x[8]+0.82*x[7]*x[7]*x[8]*x[9]+0.98*x[7]*x[7]*x[9]*x[9]+0.21*x[7]*x[8]*x[8]*x[8]-0.25*x[7]*x[8]*x[8]*x[9]-0.01*x[7]*x[8]*x[9]*x[9]-0.55*x[7]*x[9]*x[9]*x[9]-0.69*x[8]*x[8]*x[8]*x[8]-0.46*x[8]*x[8]*x[8]*x[9]-0.12*x[8]*x[8]*x[9]*x[9]+0.96*x[8]*x[9]*x[9]*x[9]+0.23*x[9]*x[9]*x[9]*x[9])+x[10] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[10])
m = m 		 # model get returned when including this script. 
