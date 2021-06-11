using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
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
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)
set_upper_bound(x[31], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.64*x[2]*x[4]+0.58*x[2]*x[12]+0.88*x[2]*x[18]+0.34*x[2]*x[28]-0.62*x[2]*x[30]+0.8*x[3]*x[19]-1.46*x[3]*x[9]-0.98*x[3]*x[22]+0.98*x[4]*x[9]+1.86*x[4]*x[10]-0.08*x[4]*x[12]+0.38*x[4]*x[13]+0.96*x[4]*x[29]-0.1*x[4]*x[30]+0.16*x[4]*x[31]+0.8*x[5]*x[8]+1.8*x[5]*x[17]-1.74*x[5]*x[20]+0.22*x[5]*x[23]+0.06*x[5]*x[25]-1.24*x[5]*x[27]-0.1*x[5]*x[31]+1.8*x[6]*x[28]-1.3*x[6]*x[17]-1.32*x[6]*x[30]+1.34*x[7]*x[8]-1.22*x[7]*x[9]+0.98*x[7]*x[10]-0.44*x[7]*x[18]+0.22*x[7]*x[19]+0.22*x[7]*x[25]+0.38*x[7]*x[26]-0.1*x[7]*x[29]+0.8*x[7]*x[31]+0.74*x[8]*x[12]-1.34*x[8]*x[16]+0.76*x[8]*x[18]-1.34*x[8]*x[22]-1.8*x[8]*x[31]+x[9]*x[12]+0.36*x[9]*x[16]-1.62*x[9]*x[18]+0.22*x[9]*x[22]-1.1*x[9]*x[23]-1.94*x[9]*x[29]-0.52*x[9]*x[30]+(-1.24*x[10]*x[11])-0.08*x[10]*x[15]+1.64*x[10]*x[28]+(-1.64*x[11]*x[14])-1.42*x[11]*x[16]-0.54*x[11]*x[18]+1.78*x[11]*x[20]+0.9*x[11]*x[22]+0.68*x[11]*x[28]+1.1*x[11]*x[29]+1.36*x[12]*x[15]-0.08*x[12]*x[23]+0.24*x[12]*x[24]-0.34*x[12]*x[28]+0.84*x[13]*x[19]-0.54*x[13]*x[18]+0.54*x[13]*x[21]-1.32*x[13]*x[26]+1.92*x[14]*x[20]-0.82*x[14]*x[21]+(-0.24*x[15]*x[16])-0.82*x[15]*x[17]+1.32*x[15]*x[19]-1.7*x[15]*x[20]+0.28*x[15]*x[22]+1.86*x[15]*x[27]-1.6*x[15]*x[30]-0.04*x[15]*x[31]+0.64*x[16]*x[22]+0.84*x[16]*x[27]-0.84*x[16]*x[28]+1.94*x[16]*x[30]+(-0.76*x[17]*x[19])-0.84*x[17]*x[20]-0.78*x[17]*x[26]-0.92*x[17]*x[30]+1.2*x[18]*x[20]-1.36*x[18]*x[22]-1.48*x[18]*x[28]+0.28*x[18]*x[29]+1.06*x[18]*x[31]+1.66*x[19]*x[25]-1.48*x[19]*x[24]-0.4*x[19]*x[26]-0.94*x[19]*x[31]+0.62*x[20]*x[29]-0.3*x[20]*x[24]+0.06*x[20]*x[30]+0.62*x[21]*x[28]+1.52*x[21]*x[29]+1.02*x[21]*x[31]+1.2*x[22]*x[27]-1.58*x[22]*x[30]+0.66*x[23]*x[26]+(-0.88*x[24]*x[26])-x[24]*x[31]-0.1*x[25]*x[30]+1.44*x[26]*x[28]-1.78*x[26]*x[27]+0.24*x[26]*x[29]+1.36*x[27]*x[30]+(-0.33*x[8]*x[8])-0.63*x[15]*x[15]+0.46*x[16]*x[16]-0.74*x[20]*x[20]-0.72*x[22]*x[22]+0.5*x[28]*x[28]+0.01*x[2]+0.51*x[3]-0.88*x[4]-0.22*x[5]+0.62*x[6]-0.64*x[7]-0.5*x[8]-0.72*x[9]-0.13*x[10]-0.86*x[11]-0.89*x[12]+0.59*x[13]-0.05*x[14]-0.61*x[15]+0.95*x[16]-0.45*x[17]+0.41*x[18]-0.98*x[19]-0.92*x[20]-0.42*x[21]-0.98*x[22]-0.16*x[23]-0.85*x[24]-0.59*x[25]-0.43*x[26]-0.61*x[27]+0.12*x[28]+0.05*x[29]-0.74*x[30]+0.51*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 1.58*x[2]*x[11]-1.56*x[2]*x[7]+0.74*x[2]*x[24]+0.2*x[2]*x[30]+0.76*x[3]*x[8]-0.06*x[3]*x[7]+1.6*x[3]*x[10]+0.1*x[3]*x[14]-0.64*x[3]*x[22]+1.26*x[3]*x[30]+(-0.76*x[4]*x[19])-1.76*x[4]*x[21]+1.94*x[4]*x[22]+0.88*x[4]*x[25]+1.52*x[4]*x[30]+0.88*x[4]*x[31]+0.9*x[5]*x[16]-0.38*x[5]*x[15]-1.96*x[5]*x[18]+0.4*x[5]*x[20]+0.02*x[5]*x[22]+0.62*x[6]*x[7]-0.96*x[6]*x[15]-1.64*x[6]*x[19]+1.04*x[6]*x[22]+0.24*x[6]*x[23]-0.86*x[6]*x[25]-1.42*x[6]*x[30]+1.28*x[7]*x[15]+0.36*x[7]*x[22]+0.54*x[7]*x[28]+0.66*x[7]*x[29]-1.72*x[7]*x[30]+1.32*x[7]*x[31]+(-0.06*x[8]*x[9])-0.4*x[8]*x[10]+1.3*x[8]*x[17]+1.76*x[8]*x[22]+1.5*x[8]*x[23]+1.26*x[8]*x[26]+1.44*x[9]*x[13]-0.72*x[9]*x[17]-0.64*x[9]*x[18]-2*x[9]*x[20]+1.7*x[9]*x[23]-1.32*x[9]*x[24]+1.74*x[9]*x[26]+1.54*x[10]*x[22]-1.08*x[10]*x[24]+0.36*x[11]*x[14]+0.64*x[11]*x[16]+1.7*x[11]*x[18]+1.12*x[11]*x[19]-1.4*x[11]*x[20]-1.08*x[11]*x[24]+(-0.46*x[12]*x[14])-0.82*x[12]*x[18]-0.56*x[12]*x[20]-0.52*x[12]*x[21]-1.34*x[12]*x[29]+1.76*x[13]*x[19]-0.06*x[13]*x[22]-1.4*x[13]*x[23]-1.14*x[13]*x[24]+0.26*x[13]*x[25]-1.66*x[13]*x[27]-1.38*x[13]*x[29]-0.08*x[13]*x[30]+1.2*x[14]*x[30]+1.4*x[15]*x[18]-1.44*x[15]*x[20]+0.26*x[15]*x[22]-1.2*x[15]*x[23]+1.64*x[16]*x[17]+1.48*x[16]*x[18]-0.48*x[16]*x[25]+(-0.22*x[17]*x[19])-1.72*x[17]*x[20]-0.62*x[17]*x[23]+1.94*x[17]*x[24]+0.5*x[17]*x[28]-0.7*x[17]*x[31]+0.58*x[18]*x[22]-0.2*x[18]*x[26]+1.74*x[18]*x[27]-1.28*x[18]*x[29]+0.4*x[19]*x[20]+0.94*x[19]*x[23]-1.4*x[19]*x[24]-0.68*x[19]*x[30]+0.14*x[20]*x[29]-0.22*x[21]*x[25]+1.64*x[22]*x[28]-1.66*x[22]*x[27]+0.26*x[23]*x[30]-0.34*x[23]*x[28]+1.64*x[25]*x[27]+1.62*x[25]*x[28]+0.56*x[25]*x[30]-0.06*x[26]*x[30]+1.28*x[28]*x[31]+0.4*x[30]*x[31]+0.4*x[3]*x[3]-0.82*x[2]*x[2]-0.84*x[5]*x[5]+0.34*x[8]*x[8]-0.9*x[14]*x[14]+0.69*x[16]*x[16]-0.53*x[19]*x[19]+0.21*x[20]*x[20]+0.84*x[24]*x[24]+0.62*x[27]*x[27]+0.62*x[2]+0.81*x[3]+0.69*x[4]+0.73*x[5]+0.27*x[6]+0.94*x[7]-0.17*x[8]-0.58*x[9]+0.93*x[10]-0.57*x[11]+0.94*x[12]-0.62*x[13]-0.38*x[14]+0.46*x[15]+0.74*x[16]+0.32*x[17]+0.29*x[18]+0.28*x[19]+0.23*x[20]-0.93*x[21]+0.98*x[22]+0.89*x[23]+0.03*x[24]+0.81*x[25]+0.92*x[26]+0.91*x[27]+0.83*x[28]-0.63*x[29]+0.62*x[30]-0.86*x[31] <= 18.02)
@constraint(m, e3, 0.51*x[2]+0.46*x[3]-0.48*x[4]-0.04*x[5]-0.55*x[6]-0.44*x[7]-0.04*x[8]-0.02*x[9]-0.64*x[10]+0.95*x[11]+0.59*x[12]-0.3*x[13]+0.27*x[14]+0.29*x[15]-0.62*x[16]+0.03*x[17]+0.63*x[18]-0.76*x[19]+0.86*x[20]-0.29*x[21]+0.26*x[22]+0.99*x[23]+0.02*x[24]+0.05*x[25]-0.4*x[26]+0.53*x[27]-0.51*x[28]+0.26*x[29]-0.73*x[30]+0.88*x[31] == 0.62)
@constraint(m, e4, -0.44*x[2]-0.13*x[3]+0.38*x[4]-0.33*x[5]-0.06*x[6]-0.26*x[7]+0.41*x[8]+0.98*x[9]+0.28*x[10]-0.16*x[11]-0.18*x[12]+0.57*x[13]+0.76*x[14]-0.15*x[15]-0.27*x[16]-0.31*x[17]+0.8*x[18]+0.24*x[19]+0.08*x[20]+0.88*x[21]-0.74*x[22]+0.04*x[23]+0.11*x[24]-0.3*x[25]+0.62*x[26]-0.74*x[27]+0.79*x[28]-0.95*x[29]+0.84*x[30]-0.79*x[31] == 0.96)
@constraint(m, e5, -0.03*x[2]-0.06*x[3]+0.44*x[4]-0.54*x[5]+0.64*x[6]+0.99*x[7]-0.34*x[8]+0.36*x[9]-0.8*x[10]-0.43*x[11]-0.57*x[12]+0.12*x[13]+0.83*x[14]+0.55*x[15]-0.64*x[16]-0.42*x[17]-0.61*x[18]-0.45*x[19]+0.84*x[20]-0.05*x[21]+0.3*x[22]+0.72*x[23]+0.37*x[24]+0.58*x[25]+0.64*x[26]+0.11*x[27]-0.85*x[28]+0.2*x[29]+0.05*x[30]+0.73*x[31] == 0.5)
@constraint(m, e6, -0.22*x[2]-0.02*x[3]-0.61*x[4]-0.61*x[5]+0.85*x[6]+0.55*x[7]+0.67*x[8]+0.42*x[9]-0.32*x[10]+0.27*x[11]-0.69*x[12]-0.01*x[13]-0.8*x[14]-0.64*x[15]+0.19*x[16]+0.87*x[17]+0.64*x[18]-0.84*x[19]+0.6*x[20]+0.58*x[21]-0.14*x[22]-0.98*x[23]-0.69*x[24]-0.46*x[25]-0.6*x[26]-0.44*x[27]-0.07*x[28]-0.63*x[29]-0.2*x[30]+0.25*x[31] == -0.81)
@constraint(m, e7, 0.55*x[2]+0.32*x[3]+0.91*x[4]-0.38*x[5]-0.08*x[6]+0.64*x[7]-0.39*x[8]-0.49*x[9]+0.67*x[10]-0.72*x[11]-0.34*x[12]-0.97*x[13]-0.96*x[14]-0.55*x[15]-0.04*x[16]+0.16*x[17]+0.98*x[18]-0.49*x[19]-0.3*x[20]-0.92*x[21]+0.76*x[22]+0.98*x[23]+0.99*x[24]+0.47*x[25]+0.04*x[26]+0.22*x[27]+0.73*x[28]+0.96*x[29]+0.35*x[30]+0.96*x[31] == 0.0)
@constraint(m, e8, 0.03*x[2]+0.9*x[3]+0.63*x[4]+0.67*x[5]+0.19*x[6]+0.84*x[7]+0.68*x[8]+0.33*x[9]+0.17*x[10]+0.93*x[11]+0.11*x[12]-0.44*x[13]-0.67*x[14]+0.71*x[15]-0.16*x[16]-0.12*x[17]-0.49*x[18]-0.58*x[19]+0.35*x[20]+0.59*x[21]+0.99*x[22]-0.74*x[23]+0.95*x[24]+0.01*x[25]-0.7*x[26]-0.64*x[27]-0.13*x[28]+0.47*x[29]+0.01*x[30]-0.35*x[31] == 0.08)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
