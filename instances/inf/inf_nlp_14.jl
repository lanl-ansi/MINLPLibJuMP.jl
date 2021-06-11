using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.18)
set_upper_bound(x[1], 2.02)
set_lower_bound(x[2], 0.48)
set_upper_bound(x[2], 2.53)
set_lower_bound(x[3], 0.47)
set_upper_bound(x[3], 2.61)
set_lower_bound(x[4], 0.21)
set_upper_bound(x[4], 2.14)
set_lower_bound(x[5], 0.38)
set_upper_bound(x[5], 2.39)
set_lower_bound(x[6], 0.32)
set_upper_bound(x[6], 2.71)
set_lower_bound(x[7], 0.37)
set_upper_bound(x[7], 2.18)
set_lower_bound(x[8], 0.08)
set_upper_bound(x[8], 2.63)
set_lower_bound(x[9], 0.16)
set_upper_bound(x[9], 2.68)
set_lower_bound(x[10], 0.46)
set_upper_bound(x[10], 2.34)
set_lower_bound(x[11], 0.91)
set_upper_bound(x[11], 2.39)
set_lower_bound(x[12], 0.44)
set_upper_bound(x[12], 3.0)


# ----- Constraints ----- #
@constraint(m, e1, -5.7*x[1]+0.18*x[2]+2.54*x[3]+3.82*x[4]+7.22*x[5]+0.75*x[6]+6.89*x[7]+0.97*x[8]-3.57*x[9]+9.89*x[10]+7.92*x[11]-8.97*x[12] == 30.052)
@constraint(m, e2, 8.52*x[1]+5.37*x[2]+7.03*x[3]+7.99*x[4]+8.88*x[5]+7.64*x[6]+4.4*x[7]+9.75*x[8]-0.66*x[9]+5.88*x[10]+9.48*x[11]+0.04*x[12] == 103.369)
@constraint(m, e3, 1.97*x[1]+1.62*x[2]+5.85*x[3]+0.97*x[4]+4.6*x[5]+8.51*x[6]+5.15*x[7]+3.55*x[8]+6.06*x[9]+8.66*x[10]+3.8*x[11]+3.32*x[12] == 78.104)
@constraint(m, e4, 8.27*x[1]+7.84*x[2]+2.52*x[3]+1.54*x[4]+2.36*x[5]+6.11*x[6]+7.06*x[7]-4.34*x[8]+8.38*x[9]+5.92*x[10]+4.18*x[11]+9.75*x[12] == 86.087)
@constraint(m, e5, -3.19*x[1]+0.73*x[2]+0.73*x[3]-8.29*x[4]+4*x[5]-0.15*x[6]+9.61*x[7]+5.44*x[8]+5.22*x[9]+6.01*x[10]+4.86*x[11]-1.88*x[12] == 34.522)
@constraint(m, e6, 2.05*x[1]+4.96*x[2]+9.35*x[3]+0.1*x[4]+3.13*x[5]-3.74*x[6]-0.97*x[7]+8.56*x[8]+8.27*x[9]+4.69*x[10]+4.54*x[11]+9.06*x[12] == 74.651)
@constraint(m, e7, 8.32*x[1]+9.13*x[2]+5.23*x[3]+8.61*x[4]+1.2*x[5]+9.69*x[6]+9.12*x[7]+1.88*x[8]+5.79*x[9]+8.91*x[10]+6.51*x[11]+2.28*x[12] >= 106.94)
@NLconstraint(m, e8, 0.52*x[4]*x[12]+5.74*x[4]+1.62*x[12]-0.26*x[8]*x[8]+4.53*x[8]+8.79*x[1]+7.08*x[2]+7.98*x[3]-2.8*x[5]+9.7*x[6]+3.37*x[7]+9.72*x[9]+8.76*x[10]+3.45*x[11] >= 95.949)
@NLconstraint(m, e9, 2.95*x[4]*x[12]+8.05*x[4]+3.42*x[12]+0.34*x[8]*x[8]+3.83*x[8]+8.82*x[1]*x[1]*x[6]+7.78*x[1]+6.52*x[6]+9.36*x[1]*x[3]*x[7]+1.23*x[3]-5.09*x[7]+9.75*x[1]*x[3]*x[9]+1.99*x[9]+5.66*x[1]*x[9]*x[9]+9.07*x[2]*x[2]*x[8]+1.39*x[2]+9.64*x[2]*x[2]*x[10]+1.16*x[10]+2.27*x[2]*x[3]*x[9]+7.15*x[2]*x[10]*x[12]+1.47*x[3]*x[4]*x[9]+2.78*x[3]*x[8]*x[9]+7.55*x[3]*x[10]*x[10]+1.51*x[4]*x[5]*x[11]+8.75*x[5]+1.14*x[11]+7.74*x[4]*x[6]*x[8]+9.1*x[4]*x[8]*x[10]+1.32*x[5]*x[9]*x[10]+6.44*x[5]*x[9]*x[11]+1.47*x[5]*x[10]*x[12]+8.25*x[6]*x[6]*x[8]+5.9*x[6]*x[7]*x[10]+1.38*x[6]*x[10]*x[11] >= 933.741)
@NLconstraint(m, e10, 4.35*x[4]-8.32*x[4]*x[12]+4.92*x[12]+0.57*x[8]*x[8]-5.19*x[8]+3.78*x[1]*x[1]*x[6]+4.13*x[1]+9.4*x[6]+1.43*x[1]*x[3]*x[7]+4.3*x[3]+0.56*x[7]+7.26*x[1]*x[3]*x[9]+0.84*x[9]+0.99*x[1]*x[9]*x[9]+4.64*x[2]*x[2]*x[8]+3.03*x[2]+1.37*x[2]*x[2]*x[10]+2.77*x[10]+6.76*x[2]*x[3]*x[9]+8.08*x[2]*x[10]*x[12]+5.59*x[3]*x[4]*x[9]+8.34*x[3]*x[8]*x[9]+0.85*x[3]*x[10]*x[10]+2.97*x[4]*x[5]*x[11]+7.23*x[5]+6.33*x[11]+9.84*x[4]*x[6]*x[8]+7.31*x[4]*x[8]*x[10]+8.27*x[5]*x[9]*x[10]-1.48*x[5]*x[9]*x[11]+5*x[5]*x[10]*x[12]+5.24*x[6]*x[6]*x[8]+8.39*x[6]*x[7]*x[10]+7.84*x[6]*x[10]*x[11]+7.16*x[1]*x[1]*x[2]*x[10]+8.04*x[1]*x[1]*x[2]*x[11]+3.49*x[1]*x[1]*x[3]*x[5]+4.78*x[1]*x[1]*x[5]*x[7]+1.27*x[1]*x[2]*x[2]*x[8]+3.69*x[1]*x[3]*x[5]*x[6]+7.22*x[1]*x[3]*x[8]*x[10]+9.8*x[1]*x[4]*x[10]*x[11]+7.73*x[1]*x[5]*x[6]*x[11]+1.73*x[1]*x[6]*x[8]*x[8]+9.29*x[1]*x[6]*x[9]*x[12]+7.72*x[1]*x[7]*x[8]*x[11]+5.2*x[1]*x[10]*x[10]*x[10]+8.82*x[2]*x[2]*x[6]*x[8]+6.5*x[2]*x[2]*x[7]*x[8]+9.44*x[2]*x[2]*x[12]*x[12]+9.79*x[2]*x[4]*x[11]*x[12]+0.74*x[2]*x[5]*x[6]*x[8]+9.94*x[2]*x[6]*x[8]*x[8]+7.02*x[2]*x[6]*x[8]*x[12]+0.31*x[2]*x[6]*x[10]*x[12]+0.52*x[2]*x[7]*x[7]*x[11]+8.46*x[2]*x[7]*x[8]*x[9]+4.93*x[2]*x[8]*x[10]*x[11]+9.97*x[3]*x[3]*x[4]*x[8]+2.84*x[3]*x[3]*x[9]*x[12]+8.42*x[3]*x[4]*x[5]*x[9]-7.61*x[3]*x[4]*x[5]*x[11]+4.14*x[3]*x[4]*x[10]*x[10]+4.73*x[3]*x[5]*x[9]*x[10]+9.64*x[3]*x[6]*x[6]*x[10]+3.26*x[3]*x[9]*x[10]*x[12]+4.52*x[4]*x[4]*x[5]*x[7]+2.44*x[4]*x[4]*x[8]*x[11]+7.65*x[4]*x[5]*x[6]*x[7]+3.89*x[4]*x[5]*x[7]*x[10]+9.47*x[4]*x[7]*x[7]*x[12]+4.66*x[4]*x[8]*x[9]*x[9]+2.16*x[5]*x[5]*x[5]*x[10]+1.56*x[5]*x[5]*x[7]*x[7]+0.59*x[5]*x[5]*x[9]*x[10]+1.88*x[5]*x[7]*x[7]*x[11]+1.75*x[5]*x[7]*x[10]*x[11]-0.99*x[5]*x[10]*x[10]*x[11]+5.59*x[6]*x[6]*x[7]*x[10]-2.08*x[6]*x[6]*x[8]*x[9]+4.93*x[6]*x[7]*x[8]*x[9]+8.29*x[7]*x[7]*x[9]*x[11]+7.42*x[7]*x[7]*x[12]*x[12]+2.65*x[7]*x[8]*x[10]*x[11]+7.27*x[7]*x[8]*x[12]*x[12]-6.03*x[8]*x[8]*x[8]*x[10]-9.56*x[8]*x[8]*x[8]*x[11]+8.53*x[8]*x[8]*x[8]*x[12]+4.95*x[8]*x[11]*x[12]*x[12]+4.51*x[9]*x[9]*x[9]*x[11]+7.67*x[9]*x[10]*x[10]*x[11]+6.65*x[9]*x[10]*x[11]*x[11]+4.45*x[11]*x[12]*x[12]*x[12] >= 6017.035)
@NLconstraint(m, e11, 0.1*x[4]*x[12]+8.54*x[4]+2.55*x[12]+3.37*x[8]*x[8]+8.48*x[8]+1.49*x[1]*x[1]*x[6]+9.31*x[1]+8.6*x[6]+0.74*x[1]*x[3]*x[7]+6.57*x[3]+7.44*x[7]+5.56*x[1]*x[3]*x[9]+5.65*x[9]+1.53*x[1]*x[9]*x[9]+0.45*x[2]*x[2]*x[8]+7.42*x[2]+5.7*x[2]*x[2]*x[10]-5.47*x[10]+5.84*x[2]*x[3]*x[9]+2.25*x[2]*x[10]*x[12]+9.44*x[3]*x[4]*x[9]+0.03*x[3]*x[8]*x[9]+6.53*x[3]*x[10]*x[10]-6.16*x[4]*x[5]*x[11]+5.11*x[5]+1.08*x[11]+7.85*x[4]*x[6]*x[8]+9.73*x[4]*x[8]*x[10]+6.27*x[5]*x[9]*x[10]+3.89*x[5]*x[9]*x[11]+7.34*x[5]*x[10]*x[12]+3.89*x[6]*x[6]*x[8]+4.28*x[6]*x[7]*x[10]+3.91*x[6]*x[10]*x[11]+2.52*x[1]*x[1]*x[2]*x[10]+0.72*x[1]*x[1]*x[2]*x[11]+4.18*x[1]*x[1]*x[3]*x[5]+6.6*x[1]*x[1]*x[5]*x[7]+7.88*x[1]*x[2]*x[2]*x[8]+9.75*x[1]*x[3]*x[5]*x[6]+4*x[1]*x[3]*x[8]*x[10]+4.62*x[1]*x[4]*x[10]*x[11]+0.94*x[1]*x[5]*x[6]*x[11]+0.3*x[1]*x[6]*x[8]*x[8]+2.47*x[1]*x[6]*x[9]*x[12]+9.53*x[1]*x[7]*x[8]*x[11]+1.67*x[1]*x[10]*x[10]*x[10]+6.25*x[2]*x[2]*x[6]*x[8]+1.59*x[2]*x[2]*x[7]*x[8]+4.6*x[2]*x[2]*x[12]*x[12]-8.15*x[2]*x[4]*x[11]*x[12]+6.95*x[2]*x[5]*x[6]*x[8]+5.39*x[2]*x[6]*x[8]*x[8]+3.97*x[2]*x[6]*x[8]*x[12]+8.49*x[2]*x[6]*x[10]*x[12]+4.49*x[2]*x[7]*x[7]*x[11]+4.95*x[2]*x[7]*x[8]*x[9]+7.94*x[2]*x[8]*x[10]*x[11]+8.99*x[3]*x[3]*x[4]*x[8]+7.18*x[3]*x[3]*x[9]*x[12]+9.76*x[3]*x[4]*x[5]*x[9]+4.6*x[3]*x[4]*x[5]*x[11]+8.53*x[3]*x[4]*x[10]*x[10]+9.24*x[3]*x[5]*x[9]*x[10]+5.18*x[3]*x[6]*x[6]*x[10]+7.71*x[3]*x[9]*x[10]*x[12]+9.3*x[4]*x[4]*x[5]*x[7]+6.83*x[4]*x[4]*x[8]*x[11]+6.28*x[4]*x[5]*x[6]*x[7]+0.73*x[4]*x[5]*x[7]*x[10]+3.63*x[4]*x[7]*x[7]*x[12]+0.21*x[4]*x[8]*x[9]*x[9]+7.85*x[5]*x[5]*x[5]*x[10]+7.24*x[5]*x[5]*x[7]*x[7]+7.22*x[5]*x[5]*x[9]*x[10]+2.3*x[5]*x[7]*x[7]*x[11]+0.72*x[5]*x[7]*x[10]*x[11]+7.52*x[5]*x[10]*x[10]*x[11]+8.53*x[6]*x[6]*x[7]*x[10]+3.32*x[6]*x[6]*x[8]*x[9]+4.27*x[6]*x[7]*x[8]*x[9]+1.39*x[7]*x[7]*x[9]*x[11]+4.44*x[7]*x[7]*x[12]*x[12]+1.83*x[7]*x[8]*x[10]*x[11]+5.23*x[7]*x[8]*x[12]*x[12]-7.3*x[8]*x[8]*x[8]*x[10]+2.16*x[8]*x[8]*x[8]*x[11]+1.91*x[8]*x[8]*x[8]*x[12]+2.72*x[8]*x[11]*x[12]*x[12]+7.73*x[9]*x[9]*x[9]*x[11]+7.42*x[9]*x[10]*x[10]*x[11]+6.7*x[9]*x[10]*x[11]*x[11]+9.53*x[11]*x[12]*x[12]*x[12]+0.75*x[1]*x[1]*x[1]*x[1]*x[1]+8.84*x[1]*x[1]*x[1]*x[2]*x[4]+8.03*x[1]*x[1]*x[1]*x[3]*x[6]+9.68*x[1]*x[1]*x[1]*x[5]*x[10]+7.88*x[1]*x[1]*x[1]*x[7]*x[10]-8.65*x[1]*x[1]*x[1]*x[10]*x[11]+2.51*x[1]*x[1]*x[2]*x[3]*x[5]+2.2*x[1]*x[1]*x[2]*x[4]*x[6]+8.19*x[1]*x[1]*x[2]*x[4]*x[10]-9.55*x[1]*x[1]*x[2]*x[5]*x[9]+3.66*x[1]*x[1]*x[2]*x[8]*x[11]+1.14*x[1]*x[1]*x[3]*x[6]*x[10]+8.67*x[1]*x[1]*x[3]*x[7]*x[11]+7.92*x[1]*x[1]*x[4]*x[7]*x[11]-0.44*x[1]*x[1]*x[5]*x[5]*x[5]+1.91*x[1]*x[1]*x[7]*x[7]*x[8]+0.81*x[1]*x[1]*x[7]*x[7]*x[9]-3.19*x[1]*x[1]*x[7]*x[8]*x[12]+1.97*x[1]*x[2]*x[2]*x[8]*x[8]+3.77*x[1]*x[2]*x[2]*x[9]*x[12]-3.47*x[1]*x[2]*x[3]*x[5]*x[8]+3.55*x[1]*x[2]*x[3]*x[9]*x[10]+8.48*x[1]*x[2]*x[4]*x[4]*x[10]+8.68*x[1]*x[2]*x[4]*x[6]*x[6]+1.95*x[1]*x[2]*x[4]*x[8]*x[9]+7.81*x[1]*x[2]*x[4]*x[9]*x[11]+8.57*x[1]*x[2]*x[5]*x[7]*x[9]+6.26*x[1]*x[2]*x[5]*x[9]*x[10]+3.38*x[1]*x[2]*x[5]*x[12]*x[12]+3.63*x[1]*x[2]*x[6]*x[6]*x[8]+2.68*x[1]*x[2]*x[6]*x[6]*x[12]+5.14*x[1]*x[2]*x[8]*x[8]*x[11]+8.3*x[1]*x[2]*x[8]*x[12]*x[12]+1.88*x[1]*x[2]*x[10]*x[11]*x[11]+2.78*x[1]*x[2]*x[11]*x[11]*x[11]+0.47*x[1]*x[3]*x[3]*x[7]*x[12]+8.51*x[1]*x[3]*x[3]*x[8]*x[11]+7.32*x[1]*x[3]*x[3]*x[9]*x[10]+8.41*x[1]*x[3]*x[4]*x[5]*x[5]+7.75*x[1]*x[3]*x[6]*x[6]*x[11]+1.19*x[1]*x[3]*x[8]*x[8]*x[8]+5.52*x[1]*x[3]*x[8]*x[10]*x[10]+8.85*x[1]*x[3]*x[9]*x[12]*x[12]+2.78*x[1]*x[4]*x[4]*x[4]*x[8]+9.24*x[1]*x[4]*x[4]*x[4]*x[11]+6.02*x[1]*x[4]*x[4]*x[6]*x[12]+1.62*x[1]*x[4]*x[5]*x[6]*x[12]+8.07*x[1]*x[4]*x[5]*x[7]*x[10]-7.85*x[1]*x[4]*x[5]*x[9]*x[12]+1.76*x[1]*x[4]*x[6]*x[7]*x[10]+7.2*x[1]*x[4]*x[6]*x[7]*x[12]+5.27*x[1]*x[4]*x[6]*x[9]*x[12]+7.43*x[1]*x[4]*x[7]*x[9]*x[10]+4.71*x[1]*x[4]*x[7]*x[9]*x[12]+0.04*x[1]*x[4]*x[7]*x[10]*x[11]-4.03*x[1]*x[4]*x[8]*x[8]*x[10]+2.61*x[1]*x[4]*x[8]*x[12]*x[12]+7.8*x[1]*x[5]*x[6]*x[7]*x[11]+5.74*x[1]*x[5]*x[6]*x[8]*x[12]+6.99*x[1]*x[6]*x[6]*x[6]*x[8]+7.7*x[1]*x[6]*x[6]*x[11]*x[11]+3.12*x[1]*x[6]*x[7]*x[7]*x[12]+4.52*x[1]*x[6]*x[7]*x[9]*x[12]+1.13*x[1]*x[7]*x[9]*x[9]*x[10]-8.2*x[1]*x[7]*x[9]*x[10]*x[10]+6.26*x[1]*x[8]*x[8]*x[9]*x[12]-1.01*x[1]*x[8]*x[9]*x[10]*x[12]+5.22*x[1]*x[8]*x[9]*x[12]*x[12]+8.69*x[1]*x[10]*x[11]*x[12]*x[12]+7.03*x[1]*x[11]*x[11]*x[12]*x[12]-0.18*x[2]*x[2]*x[2]*x[3]*x[11]+3.72*x[2]*x[2]*x[2]*x[5]*x[6]+6.95*x[2]*x[2]*x[2]*x[6]*x[6]+6.38*x[2]*x[2]*x[3]*x[3]*x[6]+9.55*x[2]*x[2]*x[3]*x[7]*x[9]+6.72*x[2]*x[2]*x[4]*x[5]*x[12]+4.27*x[2]*x[2]*x[4]*x[6]*x[7]+9.51*x[2]*x[2]*x[5]*x[5]*x[6]+7.72*x[2]*x[2]*x[5]*x[9]*x[10]-6.27*x[2]*x[2]*x[5]*x[11]*x[12]+2.1*x[2]*x[2]*x[7]*x[7]*x[10]+5.35*x[2]*x[2]*x[8]*x[10]*x[11]-9.06*x[2]*x[2]*x[9]*x[12]*x[12]+8.94*x[2]*x[3]*x[3]*x[3]*x[5]+4.84*x[2]*x[3]*x[3]*x[4]*x[4]+2.16*x[2]*x[3]*x[4]*x[5]*x[10]+4.67*x[2]*x[3]*x[4]*x[7]*x[9]+4.58*x[2]*x[3]*x[4]*x[11]*x[11]+9.01*x[2]*x[3]*x[5]*x[6]*x[7]-9.5*x[2]*x[3]*x[5]*x[8]*x[12]-9.67*x[2]*x[3]*x[8]*x[10]*x[11]+1.35*x[2]*x[3]*x[8]*x[11]*x[11]+8.53*x[2]*x[3]*x[9]*x[11]*x[12]+6.36*x[2]*x[3]*x[11]*x[11]*x[11]+6.61*x[2]*x[4]*x[4]*x[5]*x[12]+7.05*x[2]*x[4]*x[4]*x[11]*x[11]+6.41*x[2]*x[4]*x[5]*x[12]*x[12]+5.59*x[2]*x[4]*x[6]*x[6]*x[10]+5.24*x[2]*x[4]*x[6]*x[7]*x[10]+6.61*x[2]*x[4]*x[8]*x[11]*x[11]+2.49*x[2]*x[4]*x[11]*x[11]*x[12]+4.54*x[2]*x[5]*x[5]*x[7]*x[7]-8.45*x[2]*x[5]*x[6]*x[7]*x[8]+5.92*x[2]*x[5]*x[6]*x[12]*x[12]-7.66*x[2]*x[5]*x[7]*x[8]*x[12]+2.01*x[2]*x[5]*x[8]*x[10]*x[11]+4.54*x[2]*x[6]*x[7]*x[10]*x[12]+1.86*x[2]*x[6]*x[8]*x[8]*x[9]+4.11*x[2]*x[6]*x[8]*x[10]*x[11]+1.39*x[2]*x[6]*x[11]*x[11]*x[12]+5.65*x[2]*x[7]*x[7]*x[7]*x[8]+8.55*x[2]*x[7]*x[8]*x[8]*x[11]+2.01*x[2]*x[7]*x[8]*x[10]*x[10]-0.08*x[2]*x[8]*x[8]*x[9]*x[10]+2.54*x[2]*x[8]*x[8]*x[10]*x[11]+9.96*x[2]*x[8]*x[11]*x[11]*x[11]+2.3*x[2]*x[9]*x[9]*x[10]*x[10]+5.15*x[2]*x[9]*x[9]*x[11]*x[12]+5.5*x[3]*x[3]*x[3]*x[5]*x[9]+8.63*x[3]*x[3]*x[3]*x[6]*x[7]+5.84*x[3]*x[3]*x[3]*x[7]*x[11]+5.28*x[3]*x[3]*x[3]*x[9]*x[11]+1.65*x[3]*x[3]*x[4]*x[5]*x[10]+0.76*x[3]*x[3]*x[4]*x[10]*x[11]+8.71*x[3]*x[3]*x[5]*x[5]*x[11]-8.86*x[3]*x[3]*x[5]*x[11]*x[12]+8.36*x[3]*x[3]*x[6]*x[6]*x[10]+7.45*x[3]*x[3]*x[7]*x[10]*x[12]+3.88*x[3]*x[4]*x[4]*x[7]*x[9]+8.49*x[3]*x[4]*x[4]*x[8]*x[9]+2.98*x[3]*x[4]*x[4]*x[8]*x[12]+2.31*x[3]*x[4]*x[5]*x[9]*x[12]+9*x[3]*x[4]*x[5]*x[10]*x[10]+1.57*x[3]*x[4]*x[6]*x[7]*x[7]+8.88*x[3]*x[4]*x[6]*x[8]*x[11]+5.15*x[3]*x[4]*x[7]*x[11]*x[12]+0.53*x[3]*x[4]*x[7]*x[12]*x[12]+7.26*x[3]*x[4]*x[9]*x[9]*x[10]+7.58*x[3]*x[4]*x[9]*x[11]*x[12]+2.14*x[3]*x[4]*x[9]*x[12]*x[12]+4.09*x[3]*x[4]*x[11]*x[12]*x[12]+9.63*x[3]*x[5]*x[5]*x[7]*x[9]-7.3*x[3]*x[5]*x[6]*x[9]*x[11]+1.97*x[3]*x[5]*x[6]*x[10]*x[10]+1.05*x[3]*x[6]*x[8]*x[9]*x[10]+7.05*x[3]*x[6]*x[9]*x[12]*x[12]+7.67*x[3]*x[7]*x[7]*x[10]*x[12]+8.51*x[3]*x[8]*x[8]*x[8]*x[10]+1.39*x[3]*x[8]*x[8]*x[8]*x[12]+7.91*x[3]*x[9]*x[10]*x[10]*x[11]+0.69*x[3]*x[9]*x[10]*x[10]*x[12]+9.49*x[3]*x[10]*x[11]*x[12]*x[12]+2.81*x[4]*x[4]*x[4]*x[6]*x[7]+2.48*x[4]*x[4]*x[5]*x[6]*x[7]+7.95*x[4]*x[4]*x[5]*x[6]*x[8]+1.64*x[4]*x[4]*x[5]*x[7]*x[9]+6.07*x[4]*x[4]*x[6]*x[6]*x[10]+1.09*x[4]*x[4]*x[6]*x[8]*x[12]+4.14*x[4]*x[4]*x[7]*x[7]*x[7]+1.9*x[4]*x[4]*x[7]*x[7]*x[11]+6.59*x[4]*x[4]*x[7]*x[8]*x[8]+8.57*x[4]*x[4]*x[8]*x[8]*x[10]+6.77*x[4]*x[4]*x[8]*x[9]*x[12]+4.99*x[4]*x[4]*x[8]*x[11]*x[11]+2.31*x[4]*x[4]*x[10]*x[10]*x[10]-4.87*x[4]*x[5]*x[5]*x[5]*x[6]+2.1*x[4]*x[5]*x[5]*x[7]*x[7]+7.22*x[4]*x[5]*x[5]*x[11]*x[11]+7.78*x[4]*x[5]*x[9]*x[10]*x[11]+2.01*x[4]*x[5]*x[12]*x[12]*x[12]+7.44*x[4]*x[6]*x[6]*x[6]*x[12]+6.48*x[4]*x[6]*x[6]*x[7]*x[7]+4.53*x[4]*x[6]*x[7]*x[9]*x[9]+7.23*x[4]*x[6]*x[7]*x[10]*x[12]+9.57*x[4]*x[6]*x[7]*x[11]*x[11]+8.58*x[4]*x[6]*x[8]*x[9]*x[11]+7.66*x[4]*x[6]*x[9]*x[11]*x[11]+2.39*x[4]*x[6]*x[11]*x[11]*x[12]-9.48*x[4]*x[7]*x[7]*x[7]*x[9]+9.75*x[4]*x[8]*x[9]*x[10]*x[11]+8.68*x[4]*x[8]*x[9]*x[11]*x[11]+9.69*x[4]*x[8]*x[10]*x[12]*x[12]+3.36*x[4]*x[9]*x[10]*x[11]*x[11]+5.46*x[4]*x[10]*x[10]*x[11]*x[11]+4.63*x[5]*x[5]*x[5]*x[5]*x[7]+3.48*x[5]*x[5]*x[5]*x[6]*x[11]-9.82*x[5]*x[5]*x[5]*x[8]*x[9]+5.42*x[5]*x[5]*x[5]*x[10]*x[11]-3.43*x[5]*x[5]*x[6]*x[7]*x[12]+8.55*x[5]*x[5]*x[6]*x[9]*x[12]+3.36*x[5]*x[5]*x[7]*x[7]*x[12]+4.92*x[5]*x[5]*x[8]*x[11]*x[12]+5.47*x[5]*x[5]*x[8]*x[12]*x[12]+4.45*x[5]*x[6]*x[6]*x[8]*x[8]-4.1*x[5]*x[6]*x[6]*x[11]*x[11]+2.34*x[5]*x[6]*x[7]*x[7]*x[10]+1.48*x[5]*x[6]*x[7]*x[8]*x[12]+6.17*x[5]*x[6]*x[7]*x[11]*x[11]+3.77*x[5]*x[6]*x[8]*x[8]*x[10]+2.91*x[5]*x[8]*x[8]*x[9]*x[12]-6.6*x[5]*x[8]*x[8]*x[12]*x[12]+1.11*x[5]*x[8]*x[9]*x[11]*x[11]+7.9*x[5]*x[10]*x[10]*x[11]*x[12]+8.81*x[5]*x[10]*x[11]*x[11]*x[12]+0.77*x[5]*x[11]*x[11]*x[11]*x[12]+2.17*x[5]*x[11]*x[11]*x[12]*x[12]+4.34*x[6]*x[6]*x[6]*x[7]*x[9]-5.42*x[6]*x[6]*x[7]*x[8]*x[9]+5.3*x[6]*x[6]*x[7]*x[12]*x[12]+7.21*x[6]*x[6]*x[8]*x[8]*x[11]+7.98*x[6]*x[6]*x[8]*x[11]*x[11]+3.87*x[6]*x[7]*x[7]*x[7]*x[8]-5.75*x[6]*x[7]*x[7]*x[7]*x[11]+4.7*x[6]*x[7]*x[11]*x[12]*x[12]+1.68*x[6]*x[8]*x[8]*x[8]*x[12]+9.82*x[6]*x[8]*x[8]*x[11]*x[11]+x[6]*x[8]*x[10]*x[10]*x[11]+5.65*x[6]*x[8]*x[10]*x[11]*x[12]+3.55*x[6]*x[9]*x[9]*x[11]*x[11]+8.53*x[7]*x[7]*x[8]*x[8]*x[9]+8.63*x[7]*x[8]*x[8]*x[9]*x[11]+1.73*x[7]*x[8]*x[9]*x[10]*x[11]+0.41*x[8]*x[9]*x[10]*x[10]*x[10]+6.09*x[8]*x[10]*x[11]*x[12]*x[12]+6.5*x[8]*x[12]*x[12]*x[12]*x[12]+9.73*x[9]*x[9]*x[9]*x[9]*x[12]+7.52*x[9]*x[9]*x[12]*x[12]*x[12]+7.02*x[9]*x[10]*x[10]*x[12]*x[12] >= 47801.445)
@constraint(m, e12, 0.61*x[1]+2.22*x[2]+4.52*x[3]+8.03*x[4]+9.21*x[5]+4.43*x[6]+7.72*x[7]+8.05*x[8]+3.14*x[9]+7.44*x[10]+8.52*x[11]+4.54*x[12] >= 97.368)
@NLconstraint(m, e13, -(8.73*x[4]*x[12]+8.42*x[4]+0.1*x[12]+1.3*x[8]*x[8]+9.54*x[8]+2.63*x[1]*x[1]*x[6]+6.05*x[1]+4.65*x[6]+0.66*x[1]*x[3]*x[7]+8.11*x[3]+8.63*x[7]-1.74*x[1]*x[3]*x[9]+5.72*x[9]+9.5*x[1]*x[9]*x[9]-6.33*x[2]*x[2]*x[8]-5.71*x[2]+4.62*x[2]*x[2]*x[10]+8.65*x[10]+5.85*x[2]*x[3]*x[9]+6.62*x[2]*x[10]*x[12]+6.89*x[3]*x[4]*x[9]+4.54*x[3]*x[8]*x[9]+6.97*x[3]*x[10]*x[10]+1.91*x[4]*x[5]*x[11]+9.83*x[5]+3.81*x[11]+1.75*x[4]*x[6]*x[8]+4.67*x[4]*x[8]*x[10]+8.68*x[5]*x[9]*x[10]+6.18*x[5]*x[9]*x[11]+4.78*x[5]*x[10]*x[12]+9.73*x[6]*x[6]*x[8]+1.36*x[6]*x[7]*x[10]+3.7*x[6]*x[10]*x[11]+3.55*x[1]*x[1]*x[2]*x[10]+9.94*x[1]*x[1]*x[2]*x[11]+7.48*x[1]*x[1]*x[3]*x[5]+0.36*x[1]*x[1]*x[5]*x[7]-2.75*x[1]*x[2]*x[2]*x[8]+2.35*x[1]*x[3]*x[5]*x[6]-3.26*x[1]*x[3]*x[8]*x[10]+8.11*x[1]*x[4]*x[10]*x[11]+3.95*x[1]*x[5]*x[6]*x[11]+8.33*x[1]*x[6]*x[8]*x[8]+6.49*x[1]*x[6]*x[9]*x[12]+5.57*x[1]*x[7]*x[8]*x[11]+1.57*x[1]*x[10]*x[10]*x[10]+7.4*x[2]*x[2]*x[6]*x[8]-0.65*x[2]*x[2]*x[7]*x[8]+5.01*x[2]*x[2]*x[12]*x[12]+5.08*x[2]*x[4]*x[11]*x[12]+7.23*x[2]*x[5]*x[6]*x[8]-5.23*x[2]*x[6]*x[8]*x[8]+5.48*x[2]*x[6]*x[8]*x[12]+7.55*x[2]*x[6]*x[10]*x[12]-9.95*x[2]*x[7]*x[7]*x[11]+2.38*x[2]*x[7]*x[8]*x[9]+2.22*x[2]*x[8]*x[10]*x[11]+0.28*x[3]*x[3]*x[4]*x[8]+4.71*x[3]*x[3]*x[9]*x[12]+9.7*x[3]*x[4]*x[5]*x[9]+2.33*x[3]*x[4]*x[5]*x[11]+3.84*x[3]*x[4]*x[10]*x[10]+6.43*x[3]*x[5]*x[9]*x[10]+9.42*x[3]*x[6]*x[6]*x[10]+6.69*x[3]*x[9]*x[10]*x[12]+5.3*x[4]*x[4]*x[5]*x[7]+0.87*x[4]*x[4]*x[8]*x[11]+3.68*x[4]*x[5]*x[6]*x[7]+8.12*x[4]*x[5]*x[7]*x[10]+1.67*x[4]*x[7]*x[7]*x[12]+5.88*x[4]*x[8]*x[9]*x[9]+6.15*x[5]*x[5]*x[5]*x[10]+5.79*x[5]*x[5]*x[7]*x[7]+9.63*x[5]*x[5]*x[9]*x[10]-8.98*x[5]*x[7]*x[7]*x[11]+9.92*x[5]*x[7]*x[10]*x[11]+5.9*x[5]*x[10]*x[10]*x[11]+1.54*x[6]*x[6]*x[7]*x[10]+1.15*x[6]*x[6]*x[8]*x[9]+1.55*x[6]*x[7]*x[8]*x[9]-8.56*x[7]*x[7]*x[9]*x[11]+7.65*x[7]*x[7]*x[12]*x[12]+6.83*x[7]*x[8]*x[10]*x[11]+1.45*x[7]*x[8]*x[12]*x[12]+x[8]*x[8]*x[8]*x[10]+4.56*x[8]*x[8]*x[8]*x[11]+0.23*x[8]*x[8]*x[8]*x[12]+0.48*x[8]*x[11]*x[12]*x[12]+6.94*x[9]*x[9]*x[9]*x[11]+9.97*x[9]*x[10]*x[10]*x[11]+7.89*x[9]*x[10]*x[11]*x[11]+2.8*x[11]*x[12]*x[12]*x[12]+2.29*x[1]*x[1]*x[1]*x[1]*x[1]+3.64*x[1]*x[1]*x[1]*x[2]*x[4]+7.43*x[1]*x[1]*x[1]*x[3]*x[6]+4.95*x[1]*x[1]*x[1]*x[5]*x[10]+7.03*x[1]*x[1]*x[1]*x[7]*x[10]+4.63*x[1]*x[1]*x[1]*x[10]*x[11]+2.62*x[1]*x[1]*x[2]*x[3]*x[5]+1.25*x[1]*x[1]*x[2]*x[4]*x[6]+3.4*x[1]*x[1]*x[2]*x[4]*x[10]+4.76*x[1]*x[1]*x[2]*x[5]*x[9]+4.67*x[1]*x[1]*x[2]*x[8]*x[11]+5.34*x[1]*x[1]*x[3]*x[6]*x[10]+0.33*x[1]*x[1]*x[3]*x[7]*x[11]+8.35*x[1]*x[1]*x[4]*x[7]*x[11]+9.72*x[1]*x[1]*x[5]*x[5]*x[5]-8.08*x[1]*x[1]*x[7]*x[7]*x[8]+4.04*x[1]*x[1]*x[7]*x[7]*x[9]+8.2*x[1]*x[1]*x[7]*x[8]*x[12]+2.71*x[1]*x[2]*x[2]*x[8]*x[8]-1.64*x[1]*x[2]*x[2]*x[9]*x[12]+5.03*x[1]*x[2]*x[3]*x[5]*x[8]+7.8*x[1]*x[2]*x[3]*x[9]*x[10]+7.34*x[1]*x[2]*x[4]*x[4]*x[10]+9.83*x[1]*x[2]*x[4]*x[6]*x[6]-1.17*x[1]*x[2]*x[4]*x[8]*x[9]+9.83*x[1]*x[2]*x[4]*x[9]*x[11]+2.42*x[1]*x[2]*x[5]*x[7]*x[9]+4.74*x[1]*x[2]*x[5]*x[9]*x[10]+7.19*x[1]*x[2]*x[5]*x[12]*x[12]+0.85*x[1]*x[2]*x[6]*x[6]*x[8]+4.36*x[1]*x[2]*x[6]*x[6]*x[12]+9.55*x[1]*x[2]*x[8]*x[8]*x[11]+0.3*x[1]*x[2]*x[8]*x[12]*x[12]+2.32*x[1]*x[2]*x[10]*x[11]*x[11]+6.01*x[1]*x[2]*x[11]*x[11]*x[11]+7.66*x[1]*x[3]*x[3]*x[7]*x[12]+2.08*x[1]*x[3]*x[3]*x[8]*x[11]+7.8*x[1]*x[3]*x[3]*x[9]*x[10]+1.64*x[1]*x[3]*x[4]*x[5]*x[5]+8.03*x[1]*x[3]*x[6]*x[6]*x[11]+6.71*x[1]*x[3]*x[8]*x[8]*x[8]+6.42*x[1]*x[3]*x[8]*x[10]*x[10]+8.28*x[1]*x[3]*x[9]*x[12]*x[12]+6.78*x[1]*x[4]*x[4]*x[4]*x[8]+5.33*x[1]*x[4]*x[4]*x[4]*x[11]-2.64*x[1]*x[4]*x[4]*x[6]*x[12]+3.23*x[1]*x[4]*x[5]*x[6]*x[12]+5.06*x[1]*x[4]*x[5]*x[7]*x[10]+6.73*x[1]*x[4]*x[5]*x[9]*x[12]+2.18*x[1]*x[4]*x[6]*x[7]*x[10]-7.88*x[1]*x[4]*x[6]*x[7]*x[12]-3.13*x[1]*x[4]*x[6]*x[9]*x[12]+4.26*x[1]*x[4]*x[7]*x[9]*x[10]+4.31*x[1]*x[4]*x[7]*x[9]*x[12]+7.71*x[1]*x[4]*x[7]*x[10]*x[11]+0.71*x[1]*x[4]*x[8]*x[8]*x[10]+8.98*x[1]*x[4]*x[8]*x[12]*x[12]+0.24*x[1]*x[5]*x[6]*x[7]*x[11]+8.58*x[1]*x[5]*x[6]*x[8]*x[12]+3.61*x[1]*x[6]*x[6]*x[6]*x[8]+9.09*x[1]*x[6]*x[6]*x[11]*x[11]+7.93*x[1]*x[6]*x[7]*x[7]*x[12]+9.32*x[1]*x[6]*x[7]*x[9]*x[12]+6.54*x[1]*x[7]*x[9]*x[9]*x[10]-5.6*x[1]*x[7]*x[9]*x[10]*x[10]+3.02*x[1]*x[8]*x[8]*x[9]*x[12]+0.47*x[1]*x[8]*x[9]*x[10]*x[12]-2.24*x[1]*x[8]*x[9]*x[12]*x[12]-4.21*x[1]*x[10]*x[11]*x[12]*x[12]+6.08*x[1]*x[11]*x[11]*x[12]*x[12]-9.33*x[2]*x[2]*x[2]*x[3]*x[11]+6.84*x[2]*x[2]*x[2]*x[5]*x[6]+3.52*x[2]*x[2]*x[2]*x[6]*x[6]+6.05*x[2]*x[2]*x[3]*x[3]*x[6]+1.25*x[2]*x[2]*x[3]*x[7]*x[9]+1.44*x[2]*x[2]*x[4]*x[5]*x[12]-9.4*x[2]*x[2]*x[4]*x[6]*x[7]+0.01*x[2]*x[2]*x[5]*x[5]*x[6]+7.19*x[2]*x[2]*x[5]*x[9]*x[10]+9.95*x[2]*x[2]*x[5]*x[11]*x[12]+5.71*x[2]*x[2]*x[7]*x[7]*x[10]+9.14*x[2]*x[2]*x[8]*x[10]*x[11]+7.47*x[2]*x[2]*x[9]*x[12]*x[12]+3.23*x[2]*x[3]*x[3]*x[3]*x[5]+1.13*x[2]*x[3]*x[3]*x[4]*x[4]+0.93*x[2]*x[3]*x[4]*x[5]*x[10]+1.84*x[2]*x[3]*x[4]*x[7]*x[9]+9.43*x[2]*x[3]*x[4]*x[11]*x[11]+2.41*x[2]*x[3]*x[5]*x[6]*x[7]+7.69*x[2]*x[3]*x[5]*x[8]*x[12]+5.76*x[2]*x[3]*x[8]*x[10]*x[11]+0.54*x[2]*x[3]*x[8]*x[11]*x[11]+3.75*x[2]*x[3]*x[9]*x[11]*x[12]+1.23*x[2]*x[3]*x[11]*x[11]*x[11]+2.94*x[2]*x[4]*x[4]*x[5]*x[12]+5.34*x[2]*x[4]*x[4]*x[11]*x[11]+2.43*x[2]*x[4]*x[5]*x[12]*x[12]+3.9*x[2]*x[4]*x[6]*x[6]*x[10]+4.12*x[2]*x[4]*x[6]*x[7]*x[10]+8.41*x[2]*x[4]*x[8]*x[11]*x[11]+0.78*x[2]*x[4]*x[11]*x[11]*x[12]-5.75*x[2]*x[5]*x[5]*x[7]*x[7]+2.13*x[2]*x[5]*x[6]*x[7]*x[8]+5.53*x[2]*x[5]*x[6]*x[12]*x[12]+4.32*x[2]*x[5]*x[7]*x[8]*x[12]+8.05*x[2]*x[5]*x[8]*x[10]*x[11]+3.14*x[2]*x[6]*x[7]*x[10]*x[12]+5.27*x[2]*x[6]*x[8]*x[8]*x[9]+6.17*x[2]*x[6]*x[8]*x[10]*x[11]+3*x[2]*x[6]*x[11]*x[11]*x[12]+4.26*x[2]*x[7]*x[7]*x[7]*x[8]+6.82*x[2]*x[7]*x[8]*x[8]*x[11]+7.7*x[2]*x[7]*x[8]*x[10]*x[10]+9.72*x[2]*x[8]*x[8]*x[9]*x[10]+7.26*x[2]*x[8]*x[8]*x[10]*x[11]-4.15*x[2]*x[8]*x[11]*x[11]*x[11]+5.5*x[2]*x[9]*x[9]*x[10]*x[10]+6.46*x[2]*x[9]*x[9]*x[11]*x[12]+8.66*x[3]*x[3]*x[3]*x[5]*x[9]+6.3*x[3]*x[3]*x[3]*x[6]*x[7]+4.46*x[3]*x[3]*x[3]*x[7]*x[11]+9.07*x[3]*x[3]*x[3]*x[9]*x[11]+6.01*x[3]*x[3]*x[4]*x[5]*x[10]+4*x[3]*x[3]*x[4]*x[10]*x[11]+7.27*x[3]*x[3]*x[5]*x[5]*x[11]+5.78*x[3]*x[3]*x[5]*x[11]*x[12]-0.39*x[3]*x[3]*x[6]*x[6]*x[10]+2.55*x[3]*x[3]*x[7]*x[10]*x[12]+0.03*x[3]*x[4]*x[4]*x[7]*x[9]-8.09*x[3]*x[4]*x[4]*x[8]*x[9]+5.26*x[3]*x[4]*x[4]*x[8]*x[12]+0.88*x[3]*x[4]*x[5]*x[9]*x[12]+4.16*x[3]*x[4]*x[5]*x[10]*x[10]+8.07*x[3]*x[4]*x[6]*x[7]*x[7]+1.46*x[3]*x[4]*x[6]*x[8]*x[11]+6.92*x[3]*x[4]*x[7]*x[11]*x[12]+4.61*x[3]*x[4]*x[7]*x[12]*x[12]+1.8*x[3]*x[4]*x[9]*x[9]*x[10]+8.51*x[3]*x[4]*x[9]*x[11]*x[12]+9.22*x[3]*x[4]*x[9]*x[12]*x[12]+4.23*x[3]*x[4]*x[11]*x[12]*x[12]+9.11*x[3]*x[5]*x[5]*x[7]*x[9]+2.13*x[3]*x[5]*x[6]*x[9]*x[11]+4.76*x[3]*x[5]*x[6]*x[10]*x[10]-4.46*x[3]*x[6]*x[8]*x[9]*x[10]+9.56*x[3]*x[6]*x[9]*x[12]*x[12]+8.07*x[3]*x[7]*x[7]*x[10]*x[12]+3.09*x[3]*x[8]*x[8]*x[8]*x[10]+2.23*x[3]*x[8]*x[8]*x[8]*x[12]+4.64*x[3]*x[9]*x[10]*x[10]*x[11]+2.11*x[3]*x[9]*x[10]*x[10]*x[12]+6.67*x[3]*x[10]*x[11]*x[12]*x[12]+3.11*x[4]*x[4]*x[4]*x[6]*x[7]+6.29*x[4]*x[4]*x[5]*x[6]*x[7]-6.37*x[4]*x[4]*x[5]*x[6]*x[8]+7.44*x[4]*x[4]*x[5]*x[7]*x[9]+0.78*x[4]*x[4]*x[6]*x[6]*x[10]+1.58*x[4]*x[4]*x[6]*x[8]*x[12]+1.85*x[4]*x[4]*x[7]*x[7]*x[7]+9.74*x[4]*x[4]*x[7]*x[7]*x[11]+2.63*x[4]*x[4]*x[7]*x[8]*x[8]+3.74*x[4]*x[4]*x[8]*x[8]*x[10]+7.19*x[4]*x[4]*x[8]*x[9]*x[12]+9.35*x[4]*x[4]*x[8]*x[11]*x[11]+1.71*x[4]*x[4]*x[10]*x[10]*x[10]+9.31*x[4]*x[5]*x[5]*x[5]*x[6]+3.75*x[4]*x[5]*x[5]*x[7]*x[7]+8.85*x[4]*x[5]*x[5]*x[11]*x[11]+4.87*x[4]*x[5]*x[9]*x[10]*x[11]+1.7*x[4]*x[5]*x[12]*x[12]*x[12]+6.89*x[4]*x[6]*x[6]*x[6]*x[12]+9.26*x[4]*x[6]*x[6]*x[7]*x[7]+7.22*x[4]*x[6]*x[7]*x[9]*x[9]-0.87*x[4]*x[6]*x[7]*x[10]*x[12]+3.47*x[4]*x[6]*x[7]*x[11]*x[11]+7.85*x[4]*x[6]*x[8]*x[9]*x[11]+2.72*x[4]*x[6]*x[9]*x[11]*x[11]+9.3*x[4]*x[6]*x[11]*x[11]*x[12]+5.69*x[4]*x[7]*x[7]*x[7]*x[9]+2.26*x[4]*x[8]*x[9]*x[10]*x[11]+1.18*x[4]*x[8]*x[9]*x[11]*x[11]+4.26*x[4]*x[8]*x[10]*x[12]*x[12]+1.1*x[4]*x[9]*x[10]*x[11]*x[11]-0.86*x[4]*x[10]*x[10]*x[11]*x[11]+1.36*x[5]*x[5]*x[5]*x[5]*x[7]+6.23*x[5]*x[5]*x[5]*x[6]*x[11]+8.91*x[5]*x[5]*x[5]*x[8]*x[9]+9.32*x[5]*x[5]*x[5]*x[10]*x[11]+0.39*x[5]*x[5]*x[6]*x[7]*x[12]-3.67*x[5]*x[5]*x[6]*x[9]*x[12]+2.49*x[5]*x[5]*x[7]*x[7]*x[12]+3.5*x[5]*x[5]*x[8]*x[11]*x[12]-9.48*x[5]*x[5]*x[8]*x[12]*x[12]-3.99*x[5]*x[6]*x[6]*x[8]*x[8]+8.21*x[5]*x[6]*x[6]*x[11]*x[11]+8.52*x[5]*x[6]*x[7]*x[7]*x[10]+5.79*x[5]*x[6]*x[7]*x[8]*x[12]+0.74*x[5]*x[6]*x[7]*x[11]*x[11]+0.43*x[5]*x[6]*x[8]*x[8]*x[10]+4.14*x[5]*x[8]*x[8]*x[9]*x[12]+0.59*x[5]*x[8]*x[8]*x[12]*x[12]+7.15*x[5]*x[8]*x[9]*x[11]*x[11]+2.84*x[5]*x[10]*x[10]*x[11]*x[12]+6.34*x[5]*x[10]*x[11]*x[11]*x[12]+3.73*x[5]*x[11]*x[11]*x[11]*x[12]+5.79*x[5]*x[11]*x[11]*x[12]*x[12]+5.96*x[6]*x[6]*x[6]*x[7]*x[9]+5.17*x[6]*x[6]*x[7]*x[8]*x[9]+4.22*x[6]*x[6]*x[7]*x[12]*x[12]+4.59*x[6]*x[6]*x[8]*x[8]*x[11]+0.93*x[6]*x[6]*x[8]*x[11]*x[11]+8.87*x[6]*x[7]*x[7]*x[7]*x[8]-7.23*x[6]*x[7]*x[7]*x[7]*x[11]+9.08*x[6]*x[7]*x[11]*x[12]*x[12]+9.57*x[6]*x[8]*x[8]*x[8]*x[12]+4.21*x[6]*x[8]*x[8]*x[11]*x[11]+7.18*x[6]*x[8]*x[10]*x[10]*x[11]-0.78*x[6]*x[8]*x[10]*x[11]*x[12]+0.67*x[6]*x[9]*x[9]*x[11]*x[11]+3.09*x[7]*x[7]*x[8]*x[8]*x[9]+7.21*x[7]*x[8]*x[8]*x[9]*x[11]+2.06*x[7]*x[8]*x[9]*x[10]*x[11]+2.49*x[8]*x[9]*x[10]*x[10]*x[10]+5.4*x[8]*x[10]*x[11]*x[12]*x[12]+4.81*x[8]*x[12]*x[12]*x[12]*x[12]+6.99*x[9]*x[9]*x[9]*x[9]*x[12]+1.61*x[9]*x[9]*x[12]*x[12]*x[12]+8.11*x[9]*x[10]*x[10]*x[12]*x[12])+x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[13])

m = m 		 # model get returned when including this script. 
