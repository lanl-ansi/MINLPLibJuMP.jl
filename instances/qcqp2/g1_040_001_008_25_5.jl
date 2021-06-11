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
@NLconstraint(m, e1, -(0.28*x[2]*x[11]-1.54*x[2]*x[12]-1.5*x[2]*x[20]+0.32*x[2]*x[26]+1.9*x[2]*x[30]+1.28*x[2]*x[32]-0.08*x[2]*x[34]+1.54*x[3]*x[4]-1.84*x[3]*x[5]+1.2*x[3]*x[6]+1.52*x[3]*x[15]-0.3*x[3]*x[17]-x[3]*x[24]-1.52*x[3]*x[26]+1.82*x[3]*x[31]+1.22*x[3]*x[34]-0.68*x[3]*x[35]+1.86*x[3]*x[38]+1.2*x[4]*x[8]+0.3*x[4]*x[11]+0.3*x[4]*x[13]-0.58*x[4]*x[20]+1.08*x[4]*x[32]-1.44*x[4]*x[34]-0.02*x[4]*x[35]+1.7*x[5]*x[10]-0.74*x[5]*x[12]+0.08*x[5]*x[16]+0.06*x[5]*x[25]+0.26*x[5]*x[27]-0.4*x[5]*x[34]+1.84*x[5]*x[36]+1.54*x[5]*x[37]-1.16*x[5]*x[41]+0.86*x[6]*x[23]-1.36*x[6]*x[7]+0.68*x[6]*x[25]+1.96*x[6]*x[26]-1.12*x[6]*x[38]+1.46*x[6]*x[41]+(-1.16*x[7]*x[11])-1.04*x[7]*x[16]+1.42*x[7]*x[17]-0.76*x[7]*x[21]+0.16*x[7]*x[23]+1.98*x[7]*x[25]-1.04*x[7]*x[27]-0.98*x[7]*x[28]-0.86*x[7]*x[30]+1.68*x[7]*x[34]-0.6*x[7]*x[36]+0.58*x[7]*x[38]+0.98*x[7]*x[41]+0.02*x[8]*x[14]-0.92*x[8]*x[13]+0.1*x[8]*x[21]-0.32*x[8]*x[23]-0.48*x[8]*x[27]-1.78*x[8]*x[28]+0.46*x[8]*x[35]-0.08*x[8]*x[36]-0.58*x[8]*x[41]+0.64*x[9]*x[15]-0.64*x[9]*x[13]+0.74*x[9]*x[21]-x[9]*x[22]+1.52*x[9]*x[26]+1.96*x[9]*x[27]-0.08*x[9]*x[30]-1.4*x[9]*x[33]-0.86*x[9]*x[35]+0.96*x[9]*x[38]+0.58*x[9]*x[40]+1.88*x[10]*x[18]-0.28*x[10]*x[13]-0.8*x[10]*x[20]+0.34*x[10]*x[22]+0.2*x[10]*x[28]+1.86*x[10]*x[35]+x[10]*x[36]+(-1.32*x[11]*x[12])-1.78*x[11]*x[17]+0.46*x[11]*x[21]-0.2*x[11]*x[23]-0.96*x[11]*x[25]-1.32*x[11]*x[27]+0.04*x[11]*x[30]+0.58*x[11]*x[37]-1.28*x[11]*x[40]+(-1.56*x[12]*x[14])-1.06*x[12]*x[18]+1.52*x[12]*x[19]+0.42*x[12]*x[22]-1.68*x[12]*x[23]-0.62*x[12]*x[25]-0.66*x[12]*x[33]+1.52*x[12]*x[39]+1.5*x[13]*x[15]+1.2*x[13]*x[18]+0.86*x[13]*x[20]-1.5*x[13]*x[28]-1.84*x[13]*x[30]-0.08*x[13]*x[36]+1.94*x[13]*x[37]+0.22*x[14]*x[16]-1.74*x[14]*x[22]+1.12*x[14]*x[27]-1.26*x[14]*x[28]-0.82*x[14]*x[30]+0.14*x[14]*x[35]+1.88*x[14]*x[40]+0.5*x[15]*x[17]-0.82*x[15]*x[28]-1.12*x[15]*x[31]+1.98*x[15]*x[37]-0.74*x[15]*x[41]+0.72*x[16]*x[39]-0.04*x[16]*x[20]+0.28*x[16]*x[40]+1.58*x[17]*x[18]+0.82*x[17]*x[23]+1.18*x[17]*x[33]-1.54*x[17]*x[38]+0.86*x[18]*x[20]-1.78*x[18]*x[19]+0.6*x[18]*x[23]-1.86*x[18]*x[29]-0.36*x[18]*x[30]+1.12*x[18]*x[33]+1.22*x[18]*x[41]+1.16*x[19]*x[28]-1.18*x[19]*x[24]+0.06*x[19]*x[33]-1.62*x[19]*x[34]-1.36*x[19]*x[36]+(-1.58*x[20]*x[21])-1.48*x[20]*x[26]+1.74*x[20]*x[27]+1.66*x[20]*x[31]-1.68*x[20]*x[35]+(-0.92*x[21]*x[26])-0.5*x[21]*x[29]-0.5*x[21]*x[39]+0.18*x[21]*x[40]+1.72*x[22]*x[24]-0.08*x[22]*x[23]-0.42*x[22]*x[31]-1.76*x[22]*x[32]-1.26*x[22]*x[33]-1.36*x[22]*x[38]+1.42*x[23]*x[24]-1.24*x[23]*x[25]+1.06*x[23]*x[27]-0.58*x[23]*x[31]+0.22*x[25]*x[28]+1.84*x[25]*x[29]+0.56*x[25]*x[30]-0.7*x[25]*x[38]-1.52*x[25]*x[39]+1.9*x[26]*x[30]-0.78*x[26]*x[28]+1.98*x[26]*x[34]-1.58*x[26]*x[37]+(-0.2*x[27]*x[28])-0.5*x[27]*x[32]-0.96*x[27]*x[34]+0.22*x[27]*x[37]+(-0.36*x[28]*x[35])-1.92*x[28]*x[41]+(-0.88*x[30]*x[35])-1.08*x[30]*x[37]-1.56*x[30]*x[38]+0.96*x[30]*x[41]+1.58*x[31]*x[35]+0.6*x[31]*x[39]-0.74*x[31]*x[40]+1.46*x[32]*x[34]-0.3*x[32]*x[35]-1.04*x[32]*x[37]-1.88*x[32]*x[38]-1.16*x[32]*x[41]-1.9*x[33]*x[37]+1.34*x[34]*x[36]+0.9*x[35]*x[39]+1.26*x[35]*x[40]+1.34*x[35]*x[41]+1.78*x[40]*x[41]+(-0.94*x[2]*x[2])-0.34*x[7]*x[7]-0.71*x[8]*x[8]+0.17*x[11]*x[11]+0.59*x[15]*x[15]+0.07*x[16]*x[16]+0.98*x[18]*x[18]+0.2*x[19]*x[19]+0.95*x[23]*x[23]+0.56*x[25]*x[25]-0.16*x[39]*x[39]-0.16*x[41]*x[41]+0.44*x[2]+0.51*x[3]-0.23*x[4]+0.54*x[5]+0.58*x[6]+0.56*x[7]-0.84*x[8]-0.19*x[9]+0.07*x[10]-0.55*x[11]-0.43*x[12]+0.71*x[13]-0.12*x[14]+0.75*x[15]-0.78*x[16]-0.68*x[17]+0.77*x[18]+0.74*x[19]+0.65*x[20]-0.02*x[21]-0.58*x[22]+0.43*x[23]-0.87*x[24]-0.74*x[25]-0.58*x[26]-0.97*x[27]+0.34*x[28]+0.11*x[29]+0.08*x[30]+0.07*x[31]-0.53*x[32]+0.55*x[33]+0.81*x[34]-0.38*x[35]+0.07*x[36]+0.56*x[37]+0.59*x[38]+0.04*x[39]-0.67*x[40]-0.34*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, (-1.18*x[2]*x[6])-1.56*x[2]*x[12]-0.44*x[2]*x[13]+1.12*x[2]*x[14]+1.44*x[2]*x[20]+0.18*x[2]*x[21]-0.54*x[2]*x[25]-0.36*x[2]*x[27]-0.74*x[2]*x[31]-1.34*x[2]*x[39]+1.24*x[3]*x[4]-0.06*x[3]*x[6]-0.38*x[3]*x[8]+1.54*x[3]*x[16]-0.36*x[3]*x[18]-0.74*x[3]*x[21]+0.32*x[3]*x[23]+0.14*x[3]*x[25]-1.64*x[3]*x[31]+1.34*x[3]*x[32]+1.8*x[3]*x[41]+(-1.88*x[4]*x[5])-1.58*x[4]*x[9]+0.34*x[4]*x[12]+0.18*x[4]*x[18]+1.04*x[4]*x[19]-1.76*x[4]*x[21]-0.9*x[4]*x[25]-0.86*x[4]*x[32]-1.52*x[4]*x[36]-1.54*x[4]*x[39]+1.66*x[5]*x[8]+0.06*x[5]*x[9]+0.14*x[5]*x[14]+1.74*x[5]*x[16]-x[5]*x[21]-1.34*x[5]*x[26]-1.28*x[5]*x[34]-0.48*x[5]*x[37]+1.68*x[5]*x[39]+(-1.68*x[6]*x[11])-1.9*x[6]*x[13]+1.16*x[6]*x[22]-1.88*x[6]*x[23]-0.22*x[6]*x[24]+0.56*x[6]*x[27]-1.08*x[6]*x[37]+(-1.52*x[7]*x[18])-1.36*x[7]*x[22]-0.6*x[7]*x[25]-1.84*x[7]*x[38]+0.42*x[7]*x[40]+0.96*x[8]*x[12]-1.56*x[8]*x[16]-1.66*x[8]*x[17]+0.66*x[8]*x[18]-0.24*x[8]*x[26]+0.56*x[8]*x[28]-0.38*x[8]*x[29]+1.5*x[8]*x[30]+1.06*x[9]*x[22]-0.48*x[9]*x[14]+0.28*x[9]*x[26]+0.02*x[9]*x[29]+1.78*x[9]*x[33]-0.96*x[9]*x[38]+1.92*x[10]*x[14]-0.74*x[10]*x[12]+1.02*x[10]*x[18]+1.64*x[10]*x[20]-0.94*x[10]*x[21]+0.72*x[10]*x[24]+0.94*x[10]*x[26]-1.94*x[10]*x[38]-0.92*x[10]*x[40]+1.4*x[11]*x[15]-0.1*x[11]*x[31]-1.52*x[11]*x[32]-0.66*x[11]*x[39]+0.22*x[11]*x[41]+1.98*x[12]*x[15]-0.62*x[12]*x[17]-0.58*x[12]*x[22]+0.18*x[12]*x[29]-0.16*x[12]*x[30]+0.86*x[12]*x[32]+1.54*x[12]*x[33]-1.26*x[12]*x[39]+0.82*x[13]*x[21]-1.04*x[13]*x[26]-1.14*x[13]*x[29]+1.46*x[13]*x[33]-1.16*x[13]*x[37]+1.08*x[14]*x[17]+0.1*x[14]*x[22]+0.42*x[14]*x[23]-0.34*x[14]*x[26]-1.24*x[14]*x[28]+0.3*x[14]*x[30]+0.02*x[14]*x[31]-1.44*x[14]*x[33]+1.92*x[14]*x[37]+(-1.6*x[15]*x[22])-0.66*x[15]*x[24]-0.12*x[15]*x[31]+0.16*x[15]*x[34]-0.48*x[15]*x[36]+1.86*x[16]*x[22]-1.66*x[16]*x[21]+1.44*x[16]*x[24]-1.8*x[16]*x[32]+0.88*x[16]*x[39]+1.7*x[17]*x[18]+1.94*x[17]*x[20]-0.38*x[17]*x[25]-0.7*x[17]*x[33]+1.42*x[17]*x[35]+1.5*x[17]*x[36]+1.3*x[18]*x[20]+1.14*x[18]*x[23]+0.78*x[18]*x[27]+0.92*x[18]*x[31]-0.96*x[18]*x[32]-0.98*x[18]*x[41]+1.32*x[19]*x[20]+1.76*x[19]*x[24]+1.08*x[19]*x[29]-1.54*x[19]*x[39]+0.66*x[19]*x[40]-1.02*x[19]*x[41]+1.22*x[20]*x[24]-0.12*x[20]*x[22]-0.66*x[20]*x[27]+0.3*x[20]*x[28]-0.98*x[20]*x[31]-x[20]*x[39]+1.32*x[21]*x[30]-0.12*x[21]*x[26]-0.96*x[21]*x[33]+0.96*x[22]*x[23]-0.04*x[22]*x[24]-1.14*x[22]*x[28]+0.52*x[22]*x[36]+0.08*x[22]*x[37]-1.26*x[22]*x[40]+(-1.36*x[23]*x[26])-1.82*x[23]*x[28]+0.84*x[23]*x[29]+0.08*x[23]*x[36]+(-0.1*x[24]*x[35])-0.78*x[24]*x[38]+(-1.86*x[25]*x[32])-1.86*x[25]*x[34]-1.94*x[25]*x[40]+0.56*x[26]*x[27]+1.98*x[26]*x[39]+0.78*x[27]*x[30]-1.74*x[27]*x[33]-x[27]*x[36]+1.44*x[28]*x[30]+0.46*x[28]*x[34]+1.62*x[28]*x[35]+1.46*x[29]*x[30]-1.46*x[29]*x[32]+0.68*x[30]*x[31]-1.6*x[30]*x[35]-0.54*x[30]*x[36]+1.68*x[30]*x[39]-1.28*x[30]*x[41]+1.6*x[31]*x[32]+1.1*x[31]*x[39]+1.46*x[32]*x[34]-0.56*x[32]*x[35]-1.88*x[32]*x[37]+1.78*x[32]*x[39]+0.84*x[34]*x[41]-0.26*x[34]*x[35]+1.66*x[35]*x[37]+1.88*x[35]*x[38]+1.96*x[35]*x[41]+0.36*x[36]*x[37]+1.26*x[37]*x[39]-0.76*x[39]*x[41]+0.6*x[3]*x[3]+0.55*x[5]*x[5]-0.7*x[7]*x[7]-0.36*x[12]*x[12]+0.81*x[14]*x[14]+0.45*x[15]*x[15]+0.4*x[16]*x[16]-0.11*x[17]*x[17]-0.95*x[18]*x[18]+0.92*x[24]*x[24]+0.76*x[28]*x[28]+0.49*x[30]*x[30]-0.59*x[31]*x[31]-0.33*x[33]*x[33]-0.69*x[2]-0.21*x[3]-0.91*x[4]-0.55*x[5]+0.49*x[6]+0.63*x[7]-0.46*x[8]-0.37*x[9]-0.35*x[10]+0.52*x[11]+0.41*x[12]-0.71*x[13]-0.53*x[14]+0.14*x[15]-0.02*x[16]-0.15*x[17]-0.53*x[18]+0.27*x[19]+0.37*x[20]+0.87*x[21]+0.08*x[22]+0.7*x[23]-0.14*x[24]-0.14*x[25]-0.46*x[26]-0.37*x[27]-0.63*x[28]-0.37*x[29]+0.46*x[30]-0.38*x[31]+0.57*x[32]-0.99*x[33]-0.81*x[34]+0.86*x[35]-x[36]+0.12*x[37]+0.1*x[38]+0.09*x[39]+0.19*x[40]-0.78*x[41] <= 16.22)
@constraint(m, e3, 0.82*x[2]+0.63*x[3]-0.48*x[4]-0.08*x[5]-0.21*x[6]-0.62*x[7]-0.78*x[8]-0.57*x[9]+0.47*x[10]+0.99*x[11]-0.45*x[12]-0.49*x[13]+0.71*x[14]-0.32*x[15]+0.33*x[16]+0.01*x[17]+0.8*x[18]+0.57*x[19]+0.59*x[20]-0.3*x[21]-0.22*x[22]+0.73*x[23]+0.02*x[24]-0.42*x[25]+0.98*x[26]+0.04*x[27]-0.1*x[28]+0.06*x[29]+0.14*x[30]-0.15*x[31]-0.96*x[32]+0.04*x[33]-0.76*x[34]+0.19*x[35]+0.73*x[36]+0.02*x[37]+0.84*x[38]-0.13*x[39]+0.98*x[40]-0.76*x[41] == 0.41)
@constraint(m, e4, -0.43*x[2]+0.81*x[3]-0.34*x[4]-0.61*x[5]-0.71*x[6]-0.93*x[7]-0.85*x[8]+0.88*x[9]-0.48*x[10]+0.89*x[11]+0.67*x[12]-0.28*x[13]+0.23*x[14]+0.96*x[15]+0.23*x[16]-0.31*x[17]+0.61*x[18]-0.95*x[19]-0.87*x[20]-0.01*x[21]+0.59*x[22]-0.76*x[23]+0.62*x[24]-0.09*x[25]+0.27*x[26]+0.79*x[27]-0.2*x[28]+0.14*x[29]+0.75*x[30]+0.78*x[31]+0.44*x[32]-0.37*x[33]+0.72*x[34]+0.4*x[35]-0.89*x[36]-0.9*x[37]+0.82*x[38]-0.52*x[39]-0.5*x[40]+0.38*x[41] == -0.63)
@constraint(m, e5, -0.72*x[2]-0.64*x[3]+0.45*x[4]+0.16*x[5]+0.5*x[6]+0.67*x[7]+0.2*x[8]-0.41*x[9]+0.82*x[10]+0.55*x[11]+0.18*x[12]-0.21*x[13]-0.44*x[14]+0.1*x[15]+0.75*x[16]+0.67*x[17]-0.96*x[18]+0.57*x[19]-0.37*x[20]+0.23*x[21]+0.06*x[22]+0.77*x[23]+0.84*x[24]+0.74*x[25]-0.73*x[26]+0.14*x[27]+0.98*x[28]+0.29*x[29]+0.39*x[30]-0.74*x[31]+0.26*x[32]+0.52*x[33]-0.99*x[34]+0.33*x[35]-0.27*x[36]+0.24*x[37]+0.14*x[38]+0.79*x[39]+0.55*x[40]-0.67*x[41] == -0.55)
@constraint(m, e6, -0.62*x[2]-0.18*x[3]+0.91*x[4]+0.75*x[5]-0.78*x[6]+0.14*x[7]+0.3*x[8]+0.89*x[9]-0.84*x[10]+0.48*x[11]+0.61*x[12]+0.05*x[13]+0.2*x[14]-0.45*x[15]-0.24*x[16]-x[17]+0.82*x[18]+0.28*x[19]+0.03*x[20]+0.26*x[21]-0.72*x[22]+0.41*x[23]-0.07*x[24]-0.42*x[25]+0.25*x[26]+0.58*x[27]-0.79*x[28]+0.48*x[29]-0.23*x[30]-0.95*x[31]-0.84*x[32]+0.84*x[33]-0.42*x[34]+0.24*x[35]+0.68*x[36]-0.64*x[37]+0.93*x[38]+0.7*x[39]-0.81*x[40]-0.75*x[41] == 0.17)
@constraint(m, e7, -0.82*x[2]+0.53*x[3]-0.81*x[4]+0.08*x[5]+0.98*x[6]+0.87*x[7]+0.05*x[8]-0.84*x[9]-0.5*x[10]+0.3*x[11]+0.79*x[12]-0.56*x[14]+0.01*x[15]-0.07*x[16]-0.31*x[17]+0.12*x[18]+0.53*x[19]-0.78*x[20]+0.55*x[21]+0.03*x[22]-0.96*x[23]+0.13*x[24]-0.26*x[25]-0.06*x[26]+0.2*x[27]-0.8*x[28]-0.17*x[29]+0.83*x[30]+0.46*x[31]-0.62*x[32]-0.94*x[33]+0.9*x[34]-0.61*x[35]-0.08*x[36]-0.85*x[37]+0.2*x[38]+0.41*x[39]+0.44*x[40]-0.75*x[41] == -0.78)
@constraint(m, e8, -0.84*x[2]-0.51*x[3]+0.79*x[4]+0.43*x[5]-0.08*x[6]-0.54*x[7]+0.77*x[8]-0.07*x[9]+0.74*x[10]-0.5*x[11]-0.05*x[12]+0.52*x[13]+0.97*x[14]-0.66*x[15]+0.24*x[16]+0.16*x[17]+0.19*x[18]+0.87*x[19]+0.6*x[20]-0.44*x[21]-0.25*x[22]+0.71*x[23]-0.66*x[24]-0.56*x[25]+0.54*x[26]-0.04*x[27]+0.4*x[28]+0.64*x[29]+0.22*x[30]+0.99*x[31]-0.37*x[32]-0.9*x[33]-0.18*x[34]+0.69*x[35]+0.54*x[36]-0.1*x[37]+0.47*x[38]-0.7*x[39]+0.35*x[40]-0.93*x[41] == 0.84)
@constraint(m, e9, -0.44*x[2]-0.24*x[3]+0.49*x[4]-0.72*x[5]-0.04*x[6]-0.97*x[7]-0.16*x[8]-0.92*x[9]+0.42*x[10]+0.75*x[11]+0.67*x[12]-0.69*x[13]+0.72*x[14]+0.23*x[15]+0.42*x[16]+0.28*x[17]-0.37*x[18]+0.09*x[19]-0.4*x[20]+0.84*x[21]-0.87*x[22]-0.56*x[23]-0.77*x[24]+0.42*x[25]+0.19*x[26]-0.85*x[27]+0.15*x[28]-0.86*x[29]-0.94*x[30]-0.62*x[31]-0.85*x[32]-0.4*x[33]-0.8*x[34]+0.84*x[35]-0.91*x[36]+0.58*x[37]+0.85*x[38]+0.03*x[39]+0.8*x[40]-0.85*x[41] == 0.3)
@constraint(m, e10, -0.65*x[2]-0.42*x[3]+0.13*x[5]-0.48*x[6]+0.99*x[7]-0.31*x[8]+0.72*x[9]+0.92*x[10]-0.39*x[11]-0.97*x[12]-0.16*x[13]-0.82*x[14]+0.5*x[15]-0.39*x[16]+0.98*x[17]-0.68*x[18]+0.24*x[19]+0.29*x[20]+0.21*x[21]+0.46*x[22]-0.22*x[23]-0.07*x[24]-0.45*x[25]+0.8*x[26]+0.24*x[27]-0.06*x[28]+x[29]+0.12*x[30]-0.99*x[31]+0.11*x[32]-0.56*x[33]-0.94*x[34]-0.83*x[35]+0.81*x[36]+0.72*x[37]-0.86*x[38]+0.82*x[39]+0.43*x[40]+0.5*x[41] == -0.56)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
