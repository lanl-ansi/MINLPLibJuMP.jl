using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
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
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)
set_upper_bound(x[41], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.9*x[2]*x[6]+0.82*x[2]*x[8]+0.58*x[2]*x[17]+0.84*x[2]*x[18]-0.3*x[2]*x[23]+0.68*x[2]*x[25]+1.24*x[2]*x[36]+1.66*x[2]*x[38]+0.66*x[2]*x[40]+1.02*x[2]*x[41]+0.52*x[3]*x[7]-1.38*x[3]*x[6]+0.84*x[3]*x[11]+0.1*x[3]*x[12]-0.4*x[3]*x[30]-1.42*x[3]*x[31]+0.34*x[3]*x[32]-1.24*x[3]*x[34]-0.38*x[3]*x[40]+(-0.26*x[4]*x[6])-0.22*x[4]*x[11]-0.66*x[4]*x[13]-0.92*x[4]*x[14]+0.5*x[4]*x[15]+1.34*x[4]*x[19]+0.72*x[4]*x[24]-0.42*x[4]*x[29]-1.96*x[4]*x[30]+0.52*x[5]*x[11]-0.24*x[5]*x[8]-0.28*x[5]*x[19]+0.62*x[5]*x[20]+0.32*x[5]*x[23]+0.82*x[5]*x[30]+0.44*x[5]*x[32]+0.18*x[5]*x[36]-0.64*x[5]*x[37]+1.44*x[5]*x[39]-1.08*x[5]*x[40]-1.96*x[5]*x[41]+0.16*x[6]*x[8]+1.42*x[6]*x[11]-0.84*x[6]*x[13]+1.64*x[6]*x[22]-0.94*x[6]*x[25]+0.56*x[6]*x[26]+0.06*x[6]*x[35]-1.72*x[6]*x[39]-1.88*x[6]*x[40]+0.92*x[7]*x[8]+0.8*x[7]*x[11]-1.02*x[7]*x[12]-1.58*x[7]*x[18]-1.5*x[7]*x[29]-0.36*x[7]*x[30]+1.78*x[8]*x[18]-1.8*x[8]*x[11]-0.22*x[8]*x[19]-1.82*x[8]*x[20]-0.76*x[8]*x[22]+0.38*x[8]*x[23]+1.52*x[8]*x[24]-1.88*x[8]*x[26]-0.54*x[8]*x[28]-1.82*x[8]*x[29]+0.78*x[8]*x[32]+0.66*x[8]*x[33]+0.6*x[8]*x[36]-0.7*x[8]*x[37]-1.96*x[8]*x[41]+(-0.68*x[9]*x[13])-1.38*x[9]*x[16]-0.78*x[9]*x[20]+1.3*x[9]*x[22]-0.9*x[9]*x[23]-1.96*x[9]*x[32]+0.52*x[9]*x[34]+1.28*x[10]*x[18]-1.6*x[10]*x[22]+1.64*x[10]*x[27]-0.34*x[10]*x[29]+0.24*x[10]*x[31]+1.58*x[11]*x[14]+0.52*x[11]*x[17]+1.8*x[11]*x[18]-1.66*x[11]*x[21]+1.86*x[11]*x[25]-0.42*x[11]*x[29]+0.86*x[11]*x[33]+1.08*x[11]*x[41]+(-1.18*x[12]*x[16])-1.06*x[12]*x[18]+1.96*x[12]*x[22]+0.38*x[12]*x[23]-1.18*x[12]*x[36]+1.18*x[13]*x[16]-1.74*x[13]*x[28]-1.48*x[13]*x[34]+1.02*x[13]*x[35]+(-0.78*x[14]*x[15])-0.5*x[14]*x[16]-0.9*x[14]*x[20]+1.64*x[14]*x[25]+1.48*x[14]*x[26]+0.82*x[14]*x[27]+0.94*x[14]*x[30]+1.58*x[14]*x[35]-0.16*x[14]*x[36]+0.54*x[14]*x[39]+0.74*x[15]*x[24]-0.72*x[15]*x[23]+1.72*x[15]*x[26]-0.1*x[15]*x[32]-1.86*x[15]*x[33]-1.52*x[15]*x[37]+0.3*x[16]*x[29]-0.4*x[16]*x[17]-0.74*x[16]*x[35]+1.2*x[16]*x[36]+1.08*x[16]*x[37]+0.44*x[17]*x[21]+0.8*x[17]*x[24]-0.14*x[17]*x[26]+1.94*x[17]*x[27]+1.3*x[17]*x[31]-0.96*x[17]*x[33]+1.68*x[17]*x[35]+0.04*x[17]*x[40]+1.44*x[18]*x[31]+0.54*x[18]*x[37]+1.32*x[19]*x[28]+1.64*x[19]*x[32]+1.24*x[20]*x[24]-1.94*x[20]*x[27]-0.34*x[20]*x[28]-0.84*x[20]*x[34]+1.04*x[20]*x[35]-1.66*x[20]*x[36]+1.46*x[21]*x[22]+1.22*x[21]*x[28]+1.64*x[21]*x[32]-1.32*x[21]*x[36]-1.66*x[21]*x[40]+0.86*x[22]*x[33]-1.1*x[22]*x[25]+0.64*x[22]*x[35]+0.5*x[22]*x[40]+(-1.38*x[23]*x[26])-0.6*x[23]*x[33]-0.18*x[23]*x[37]-0.38*x[23]*x[41]+1.84*x[24]*x[25]-1.88*x[24]*x[27]-1.44*x[24]*x[29]+0.2*x[25]*x[31]-1.08*x[25]*x[35]+1.82*x[25]*x[40]+0.46*x[25]*x[41]+0.1*x[26]*x[39]+0.36*x[26]*x[40]+0.5*x[27]*x[35]-0.26*x[27]*x[36]+1.16*x[27]*x[38]+0.22*x[27]*x[41]+1.74*x[28]*x[38]+0.82*x[28]*x[39]+0.66*x[29]*x[32]-1.08*x[29]*x[35]-0.06*x[29]*x[36]-0.34*x[29]*x[38]+1.7*x[29]*x[40]+1.7*x[30]*x[38]-0.64*x[30]*x[35]-0.08*x[30]*x[40]-1.3*x[30]*x[41]+0.54*x[31]*x[32]+0.82*x[31]*x[34]-1.78*x[31]*x[40]-0.14*x[31]*x[41]+1.72*x[32]*x[40]+0.76*x[34]*x[41]-0.74*x[34]*x[40]-0.58*x[35]*x[38]-1.4*x[36]*x[41]-1.86*x[38]*x[41]+0.91*x[6]*x[6]+0.9*x[7]*x[7]+0.47*x[14]*x[14]+0.85*x[16]*x[16]-0.94*x[17]*x[17]+0.85*x[23]*x[23]-0.16*x[26]*x[26]+0.01*x[27]*x[27]-0.53*x[28]*x[28]+0.99*x[29]*x[29]-0.96*x[34]*x[34]+0.97*x[36]*x[36]+0.63*x[2]+0.78*x[3]-0.27*x[4]-0.33*x[5]-0.96*x[6]-0.67*x[7]+0.42*x[8]-0.09*x[9]+0.18*x[10]+0.43*x[11]-0.1*x[12]-0.3*x[13]+0.83*x[14]+0.6*x[15]-0.46*x[16]-0.08*x[17]+0.36*x[18]-0.17*x[19]-0.96*x[20]-0.4*x[21]+0.65*x[22]+0.92*x[23]+0.57*x[24]-0.97*x[25]-0.19*x[26]+0.42*x[27]-0.24*x[28]+0.39*x[29]-0.84*x[30]+0.82*x[31]+0.06*x[32]-0.28*x[33]-0.4*x[34]+0.89*x[35]-0.43*x[36]-0.02*x[37]+0.73*x[38]-0.75*x[39]+0.77*x[40]+0.96*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 1.76*x[2]*x[6]-1.18*x[2]*x[11]+1.64*x[2]*x[13]+0.56*x[2]*x[15]-0.92*x[2]*x[18]-0.28*x[2]*x[19]+1.74*x[2]*x[25]+1.46*x[2]*x[32]-0.24*x[2]*x[38]-0.3*x[2]*x[39]+1.74*x[3]*x[10]+0.44*x[3]*x[12]+0.08*x[3]*x[13]-0.18*x[3]*x[14]-1.82*x[3]*x[15]+0.5*x[3]*x[21]-1.62*x[3]*x[29]+0.62*x[3]*x[33]-1.84*x[3]*x[38]+0.3*x[3]*x[41]+0.94*x[4]*x[8]-1.74*x[4]*x[6]+2*x[4]*x[10]+0.36*x[4]*x[12]+0.4*x[4]*x[21]+1.06*x[4]*x[25]-1.4*x[4]*x[29]+1.7*x[4]*x[40]+2*x[5]*x[9]+1.2*x[5]*x[14]-0.3*x[5]*x[16]-1.14*x[5]*x[20]+0.04*x[5]*x[24]+0.78*x[5]*x[28]+0.56*x[5]*x[29]+0.5*x[6]*x[8]+1.12*x[6]*x[14]-1.48*x[6]*x[16]-2*x[6]*x[23]+1.44*x[6]*x[25]+1.04*x[6]*x[26]-1.76*x[6]*x[27]+1.94*x[6]*x[28]+0.4*x[6]*x[30]+1.56*x[6]*x[38]+1.1*x[7]*x[8]-0.48*x[7]*x[17]-1.06*x[7]*x[20]+1.1*x[7]*x[26]-1.48*x[7]*x[39]+(-0.62*x[8]*x[9])-1.9*x[8]*x[16]-0.26*x[8]*x[17]+0.86*x[8]*x[20]-0.74*x[8]*x[21]-1.82*x[8]*x[22]+1.44*x[8]*x[25]+1.68*x[8]*x[30]-1.26*x[8]*x[31]+0.42*x[8]*x[32]+1.48*x[9]*x[21]-0.54*x[9]*x[25]+0.96*x[9]*x[27]-0.44*x[9]*x[29]+0.3*x[9]*x[31]-1.46*x[9]*x[39]+0.76*x[10]*x[13]+1.02*x[10]*x[15]-1.08*x[10]*x[16]+0.18*x[10]*x[21]-x[10]*x[26]+1.06*x[10]*x[34]+0.08*x[10]*x[36]+0.46*x[10]*x[39]+0.36*x[11]*x[15]+1.54*x[11]*x[21]-0.5*x[11]*x[22]-0.12*x[11]*x[25]-1.68*x[11]*x[41]+0.38*x[12]*x[14]-1.96*x[12]*x[15]-1.32*x[12]*x[16]+1.94*x[12]*x[17]-1.66*x[12]*x[21]+0.88*x[12]*x[24]-1.6*x[12]*x[35]-0.98*x[12]*x[38]+(-0.96*x[13]*x[15])-1.52*x[13]*x[16]+1.78*x[13]*x[19]-0.76*x[13]*x[22]+0.26*x[13]*x[24]+0.92*x[13]*x[25]+1.2*x[13]*x[26]+1.1*x[13]*x[27]+0.26*x[14]*x[16]+0.06*x[14]*x[17]-0.62*x[14]*x[20]+1.3*x[14]*x[21]+0.64*x[14]*x[26]-1.78*x[14]*x[28]+0.36*x[14]*x[33]+(-1.52*x[15]*x[19])-0.84*x[15]*x[23]-1.66*x[15]*x[30]+1.96*x[15]*x[40]+(-0.22*x[16]*x[23])-1.24*x[16]*x[24]-1.14*x[16]*x[32]-0.98*x[16]*x[33]+0.2*x[16]*x[36]+0.22*x[17]*x[21]+1.94*x[17]*x[23]-0.48*x[17]*x[27]+0.4*x[17]*x[33]+1.28*x[17]*x[40]+0.34*x[18]*x[25]+1.5*x[18]*x[26]+0.52*x[18]*x[34]+1.82*x[19]*x[24]+1.86*x[19]*x[28]-0.28*x[19]*x[31]-0.8*x[19]*x[32]+0.44*x[19]*x[35]+1.58*x[19]*x[38]+1.12*x[19]*x[39]+1.66*x[20]*x[21]+0.04*x[20]*x[25]-0.44*x[20]*x[30]+1.62*x[20]*x[39]-1.1*x[20]*x[40]+0.1*x[20]*x[41]+0.04*x[21]*x[25]+0.84*x[21]*x[26]-0.64*x[21]*x[38]+0.38*x[22]*x[27]-0.18*x[22]*x[23]+1.82*x[22]*x[29]-0.9*x[22]*x[30]+0.9*x[22]*x[32]-1.62*x[22]*x[40]-1.2*x[22]*x[41]+(-0.58*x[23]*x[27])-1.04*x[23]*x[32]-1.9*x[23]*x[34]+0.28*x[23]*x[41]+(-0.72*x[24]*x[31])-0.08*x[24]*x[32]+1.76*x[24]*x[34]-1.84*x[24]*x[37]+(-1.02*x[25]*x[26])-0.9*x[25]*x[35]+1.14*x[26]*x[29]+1.62*x[26]*x[34]-0.98*x[26]*x[35]+0.96*x[26]*x[37]+1.44*x[26]*x[41]+1.36*x[27]*x[32]+1.6*x[27]*x[34]-1.64*x[27]*x[40]+1.18*x[28]*x[29]-1.04*x[28]*x[37]+1.32*x[29]*x[36]+1.5*x[29]*x[37]+1.58*x[30]*x[32]-0.1*x[30]*x[31]+1.12*x[30]*x[36]-0.38*x[30]*x[37]+0.8*x[30]*x[39]-2*x[30]*x[40]+0.38*x[31]*x[34]-0.94*x[31]*x[36]-1.62*x[31]*x[37]+1.9*x[31]*x[39]+1.52*x[32]*x[33]+1.2*x[32]*x[34]+(-0.4*x[33]*x[35])-1.88*x[33]*x[36]+0.44*x[33]*x[40]+1.96*x[34]*x[41]-0.78*x[34]*x[40]-0.38*x[35]*x[39]+0.14*x[36]*x[40]+(-0.14*x[37]*x[38])-0.3*x[37]*x[39]-1.72*x[37]*x[41]+1.8*x[38]*x[41]+0.86*x[40]*x[41]+0.3*x[4]*x[4]-0.01*x[2]*x[2]-0.06*x[6]*x[6]-0.19*x[12]*x[12]+0.88*x[20]*x[20]+0.74*x[21]*x[21]+0.23*x[28]*x[28]+0.07*x[33]*x[33]-0.15*x[34]*x[34]-0.07*x[41]*x[41]+0.49*x[2]-0.24*x[3]-0.45*x[4]-0.17*x[5]-0.66*x[6]+0.29*x[7]-0.67*x[8]+0.32*x[9]+0.57*x[10]-0.42*x[11]+0.23*x[12]+0.18*x[13]-0.95*x[14]-0.89*x[15]+0.6*x[16]-0.57*x[17]-0.08*x[18]-0.17*x[19]+0.99*x[20]-0.51*x[21]+0.84*x[22]-0.99*x[23]+0.5*x[24]+0.58*x[25]+0.39*x[26]-0.76*x[27]+0.99*x[28]+0.97*x[29]+0.89*x[30]-0.79*x[31]+0.48*x[32]-0.99*x[33]+0.44*x[34]+0.67*x[35]+0.78*x[36]-0.79*x[37]-0.28*x[38]-0.7*x[39]-0.57*x[40]+0.89*x[41] <= 94.57)
@constraint(m, e3, 0.35*x[2]+0.92*x[3]-0.1*x[4]-0.29*x[5]-0.73*x[6]+0.32*x[7]+0.44*x[8]+0.98*x[9]+0.31*x[10]-0.5*x[12]+0.11*x[13]-0.91*x[14]-0.81*x[15]-0.79*x[16]-0.46*x[17]+0.02*x[18]+0.66*x[19]+0.88*x[20]-0.62*x[21]-0.56*x[22]+0.2*x[23]-0.91*x[24]-0.44*x[25]+0.04*x[26]+0.33*x[27]-0.79*x[28]-0.3*x[29]-0.76*x[30]-0.83*x[31]+0.05*x[32]-0.86*x[33]+0.18*x[34]-0.51*x[35]-0.33*x[36]+0.34*x[37]-0.8*x[38]-0.22*x[39]-0.51*x[40]-0.39*x[41] == -0.32)
@constraint(m, e4, 0.95*x[2]-x[3]-0.14*x[4]-0.65*x[5]-0.77*x[6]-0.5*x[7]-0.6*x[8]+0.73*x[9]-0.68*x[10]-0.42*x[11]+x[12]+0.45*x[13]-0.68*x[14]+0.61*x[15]+0.78*x[16]-0.78*x[17]+0.6*x[18]+0.99*x[19]-0.81*x[20]+0.28*x[21]-0.93*x[22]+0.54*x[23]-0.55*x[24]+0.59*x[25]+0.74*x[26]+0.5*x[27]-0.48*x[28]-0.52*x[29]+0.06*x[30]-0.65*x[31]+0.12*x[32]+0.7*x[33]+0.49*x[34]+0.7*x[35]+0.82*x[36]-0.07*x[37]+0.91*x[38]+0.65*x[39]+0.23*x[40]+0.13*x[41] == 0.55)
@constraint(m, e5, -0.83*x[2]-0.09*x[3]+0.3*x[4]+0.04*x[5]-0.42*x[6]+0.67*x[7]+0.6*x[8]-0.03*x[9]+0.57*x[10]+0.07*x[11]-0.31*x[12]-0.87*x[13]-0.16*x[14]+x[15]+0.59*x[16]+0.11*x[17]-0.77*x[18]+0.76*x[19]+0.6*x[20]-0.01*x[21]+0.72*x[22]-0.78*x[23]+0.73*x[24]+0.93*x[25]+0.92*x[26]-0.91*x[27]+0.33*x[28]+0.6*x[29]+0.38*x[30]+0.41*x[31]-0.63*x[32]-0.86*x[33]-0.85*x[34]-0.15*x[35]+0.65*x[36]+0.6*x[37]+0.64*x[38]+0.69*x[39]+0.5*x[40]-0.19*x[41] == 0.23)
@constraint(m, e6, 0.13*x[2]-0.49*x[3]-0.28*x[4]-0.91*x[5]-0.35*x[6]-0.29*x[7]-0.65*x[8]-0.7*x[9]+0.4*x[10]+0.81*x[11]-0.76*x[12]+0.31*x[13]+0.45*x[14]+0.15*x[15]+0.71*x[16]-0.24*x[18]-0.52*x[19]-0.88*x[20]-0.8*x[21]-0.16*x[22]-0.4*x[23]-0.59*x[24]+0.21*x[25]+0.62*x[26]+0.9*x[27]-0.17*x[28]+0.48*x[29]-0.78*x[30]+0.72*x[31]-0.95*x[32]+0.97*x[33]-0.82*x[34]-0.8*x[35]+0.28*x[36]-0.8*x[37]-0.8*x[38]+0.37*x[39]+0.12*x[40]+0.34*x[41] == -0.13)
@constraint(m, e7, 0.99*x[2]-0.74*x[3]+0.04*x[4]-0.04*x[5]+0.54*x[6]-0.86*x[7]+0.31*x[8]+0.98*x[9]+0.12*x[10]+0.32*x[11]+0.2*x[12]+0.44*x[13]+0.31*x[14]+0.89*x[15]-0.65*x[16]-0.4*x[17]-0.79*x[18]-0.9*x[19]-0.81*x[20]+0.92*x[21]+0.51*x[22]+0.67*x[23]-0.37*x[24]+0.34*x[25]+0.19*x[26]-0.23*x[27]-0.47*x[28]+0.55*x[29]+0.92*x[30]-0.25*x[31]+0.88*x[32]+0.61*x[33]+0.51*x[34]+0.89*x[35]+0.23*x[36]+0.24*x[37]-0.18*x[38]+0.23*x[39]+0.57*x[40]-0.76*x[41] == -0.33)
@constraint(m, e8, 0.36*x[2]-0.5*x[3]-0.33*x[4]-0.47*x[5]+0.98*x[6]+0.09*x[7]-0.39*x[8]-0.61*x[9]+0.62*x[10]-0.34*x[11]+0.76*x[12]-0.82*x[13]+0.89*x[14]+0.62*x[15]-0.34*x[16]+0.77*x[17]-0.74*x[18]+0.73*x[19]+0.11*x[20]+0.24*x[21]-0.94*x[22]-0.01*x[23]-0.75*x[24]+0.23*x[25]+0.86*x[26]-0.97*x[27]-0.49*x[28]+0.26*x[29]-0.82*x[30]+0.55*x[31]-0.16*x[32]-0.8*x[33]-0.06*x[34]-0.67*x[35]+0.3*x[36]+0.65*x[37]-0.01*x[38]-0.89*x[39]-0.1*x[40]-0.57*x[41] == -0.03)
@constraint(m, e9, -0.14*x[2]-0.52*x[3]+0.44*x[4]+0.43*x[5]-0.38*x[6]-0.05*x[7]-0.52*x[8]+0.15*x[9]+0.83*x[10]+0.79*x[11]+0.84*x[12]-0.37*x[13]-0.04*x[14]+0.87*x[15]+0.35*x[16]+0.36*x[17]+0.3*x[18]-0.86*x[19]-0.82*x[20]+0.49*x[21]+0.58*x[22]-0.68*x[23]+0.88*x[24]-0.77*x[25]-0.02*x[26]+0.38*x[27]+0.97*x[28]-0.19*x[29]-0.26*x[30]-0.1*x[31]-0.57*x[32]-0.74*x[33]-0.09*x[34]+0.55*x[35]+0.34*x[36]-0.63*x[37]-0.02*x[38]+0.15*x[39]-0.34*x[40]-0.86*x[41] == -0.1)
@constraint(m, e10, 0.49*x[2]-0.14*x[3]-0.39*x[4]-0.12*x[5]-0.39*x[6]+0.82*x[7]-0.39*x[8]-0.01*x[9]-0.57*x[10]-0.63*x[11]-0.52*x[12]+0.25*x[13]+0.07*x[14]+0.66*x[15]+0.73*x[16]-0.79*x[17]+0.68*x[18]+0.64*x[19]-0.57*x[20]-0.98*x[21]-0.59*x[22]-0.01*x[23]-0.96*x[24]-0.34*x[25]-0.81*x[26]-0.38*x[27]+0.33*x[28]+0.73*x[29]-0.07*x[30]-0.09*x[31]+0.16*x[32]+0.43*x[33]-0.02*x[34]-0.83*x[35]+0.39*x[36]-0.63*x[37]+0.92*x[38]-0.9*x[39]-0.77*x[40]+0.79*x[41] == -0.97)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
