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
@NLconstraint(m, e1, -(1.06*x[2]*x[5]-1.62*x[2]*x[4]-0.08*x[2]*x[9]-1.38*x[2]*x[10]+0.3*x[2]*x[11]+0.16*x[2]*x[15]+1.92*x[2]*x[16]-1.72*x[2]*x[17]-1.04*x[2]*x[20]+1.08*x[2]*x[24]+0.68*x[2]*x[25]+1.62*x[2]*x[29]-0.94*x[2]*x[31]+1.88*x[2]*x[36]-1.54*x[2]*x[37]+0.9*x[3]*x[5]-0.5*x[3]*x[7]+1.1*x[3]*x[11]+2*x[3]*x[13]+1.86*x[3]*x[15]+0.04*x[3]*x[16]-1.58*x[3]*x[17]+0.34*x[3]*x[24]-0.04*x[3]*x[25]+0.5*x[3]*x[26]-1.38*x[3]*x[27]-1.22*x[3]*x[30]-0.38*x[3]*x[32]-0.06*x[3]*x[33]-1.3*x[3]*x[34]+0.38*x[3]*x[37]+1.34*x[3]*x[39]+1.7*x[3]*x[40]+1.44*x[4]*x[7]-0.04*x[4]*x[5]+0.14*x[4]*x[8]-0.36*x[4]*x[11]+1.14*x[4]*x[12]-0.12*x[4]*x[17]-1.78*x[4]*x[18]-1.38*x[4]*x[22]-0.8*x[4]*x[26]-1.78*x[4]*x[27]-0.22*x[4]*x[28]-0.7*x[4]*x[34]-0.84*x[4]*x[35]+0.04*x[4]*x[36]+1.12*x[4]*x[38]-1.1*x[4]*x[39]+1.48*x[5]*x[7]-0.96*x[5]*x[6]+1.7*x[5]*x[8]-0.68*x[5]*x[10]+1.82*x[5]*x[14]+1.06*x[5]*x[15]+1.36*x[5]*x[17]+1.16*x[5]*x[23]+0.46*x[5]*x[25]+1.74*x[5]*x[26]-1.12*x[5]*x[27]-0.2*x[5]*x[30]-0.6*x[5]*x[33]-0.26*x[5]*x[36]-0.94*x[5]*x[37]-0.78*x[5]*x[39]-0.8*x[5]*x[40]+(-1.66*x[6]*x[8])-1.18*x[6]*x[9]+1.52*x[6]*x[11]-0.3*x[6]*x[13]-1.56*x[6]*x[14]-1.68*x[6]*x[15]-1.16*x[6]*x[17]-0.34*x[6]*x[18]+1.2*x[6]*x[20]-0.56*x[6]*x[21]-0.8*x[6]*x[22]+0.92*x[6]*x[24]-0.8*x[6]*x[27]-0.68*x[6]*x[28]+x[6]*x[29]-0.84*x[6]*x[30]+1.86*x[6]*x[32]+1.8*x[6]*x[34]+1.26*x[6]*x[37]-1.52*x[6]*x[38]+1.84*x[6]*x[40]+(-0.18*x[7]*x[8])-1.46*x[7]*x[11]-1.22*x[7]*x[14]-0.24*x[7]*x[15]-1.7*x[7]*x[16]-0.8*x[7]*x[17]-0.18*x[7]*x[18]+0.38*x[7]*x[19]+0.82*x[7]*x[23]-0.04*x[7]*x[25]-1.04*x[7]*x[29]-1.28*x[7]*x[31]-0.44*x[7]*x[35]-1.16*x[7]*x[37]+0.2*x[8]*x[10]+1.38*x[8]*x[12]-1.14*x[8]*x[13]+1.38*x[8]*x[15]+0.92*x[8]*x[16]-1.36*x[8]*x[17]+1.16*x[8]*x[18]-0.02*x[8]*x[21]-1.16*x[8]*x[22]+0.06*x[8]*x[24]-1.82*x[8]*x[25]-0.96*x[8]*x[26]-0.8*x[8]*x[27]+0.52*x[8]*x[29]-1.92*x[8]*x[36]+0.92*x[8]*x[38]+1.62*x[8]*x[39]+0.84*x[8]*x[40]+1.2*x[8]*x[41]+0.5*x[9]*x[11]-0.58*x[9]*x[10]-0.8*x[9]*x[12]-1.36*x[9]*x[13]+1.92*x[9]*x[16]-1.58*x[9]*x[21]-0.38*x[9]*x[23]+1.58*x[9]*x[27]+0.42*x[9]*x[28]+0.38*x[9]*x[31]-0.92*x[9]*x[33]-1.36*x[9]*x[34]-0.1*x[9]*x[35]-0.6*x[9]*x[36]-0.3*x[9]*x[37]+0.04*x[9]*x[39]+(-0.16*x[10]*x[11])-0.7*x[10]*x[13]+1.98*x[10]*x[16]-0.6*x[10]*x[17]+1.2*x[10]*x[18]+0.64*x[10]*x[22]+1.12*x[10]*x[25]+1.54*x[10]*x[28]+1.78*x[10]*x[29]+1.76*x[10]*x[30]-0.08*x[10]*x[32]-0.64*x[10]*x[33]+0.58*x[10]*x[34]-1.94*x[10]*x[36]-1.94*x[10]*x[41]+0.98*x[11]*x[13]-1.42*x[11]*x[12]-x[11]*x[15]-1.28*x[11]*x[16]+0.08*x[11]*x[17]+0.74*x[11]*x[19]+1.86*x[11]*x[20]+1.08*x[11]*x[21]-1.08*x[11]*x[25]+1.74*x[11]*x[27]+1.24*x[11]*x[28]+0.2*x[11]*x[29]-0.24*x[11]*x[36]-0.9*x[11]*x[38]+0.86*x[11]*x[40]+1.48*x[12]*x[13]-0.32*x[12]*x[16]+1.88*x[12]*x[18]+1.96*x[12]*x[25]+1.76*x[12]*x[26]-1.38*x[12]*x[28]-1.6*x[12]*x[29]+1.36*x[12]*x[30]+1.28*x[12]*x[31]-0.96*x[12]*x[32]+1.1*x[12]*x[33]+1.84*x[12]*x[34]-1.96*x[12]*x[35]-1.58*x[12]*x[36]+0.4*x[12]*x[40]-1.68*x[12]*x[41]+0.48*x[13]*x[17]-0.34*x[13]*x[14]+1.36*x[13]*x[22]-0.26*x[13]*x[23]-1.14*x[13]*x[33]-1.14*x[13]*x[36]+1.12*x[13]*x[39]+1.84*x[14]*x[17]-1.88*x[14]*x[16]+1.94*x[14]*x[19]+1.66*x[14]*x[22]+0.24*x[14]*x[23]+1.34*x[14]*x[24]-1.84*x[14]*x[25]-1.9*x[14]*x[26]-1.82*x[14]*x[27]-x[14]*x[35]+0.64*x[14]*x[36]+1.42*x[14]*x[40]+1.22*x[14]*x[41]+0.3*x[15]*x[18]+0.34*x[15]*x[19]+0.74*x[15]*x[21]-0.16*x[15]*x[23]+1.76*x[15]*x[24]+1.24*x[15]*x[27]-1.28*x[15]*x[30]+1.88*x[15]*x[34]-0.86*x[15]*x[35]+1.72*x[15]*x[37]+0.6*x[15]*x[39]+1.32*x[16]*x[17]-0.32*x[16]*x[19]+0.36*x[16]*x[20]+1.88*x[16]*x[21]-1.06*x[16]*x[22]+0.08*x[16]*x[24]+0.52*x[16]*x[27]+0.06*x[16]*x[28]-1.74*x[16]*x[32]+0.3*x[16]*x[33]-0.96*x[16]*x[34]-0.04*x[16]*x[37]-1.34*x[16]*x[39]-0.68*x[16]*x[40]+0.54*x[17]*x[21]-0.4*x[17]*x[18]+0.26*x[17]*x[24]+1.38*x[17]*x[25]+1.22*x[17]*x[26]-1.88*x[17]*x[29]+1.92*x[17]*x[30]-0.6*x[17]*x[32]+0.54*x[17]*x[33]-1.78*x[17]*x[34]+1.14*x[17]*x[35]+1.94*x[17]*x[36]+0.08*x[17]*x[37]+0.1*x[17]*x[38]-0.84*x[17]*x[39]+0.1*x[17]*x[40]+1.38*x[18]*x[20]-0.1*x[18]*x[21]-0.12*x[18]*x[23]-0.98*x[18]*x[25]+1.76*x[18]*x[29]-1.7*x[18]*x[32]+0.56*x[18]*x[33]+0.16*x[18]*x[35]+1.36*x[18]*x[36]-0.88*x[18]*x[38]-1.44*x[18]*x[41]+1.56*x[19]*x[22]-1.3*x[19]*x[21]+1.16*x[19]*x[23]+1.16*x[19]*x[24]-0.1*x[19]*x[26]+1.18*x[19]*x[27]-1.36*x[19]*x[29]+0.72*x[19]*x[30]+0.72*x[19]*x[31]-0.1*x[19]*x[32]+1.62*x[19]*x[41]+(-1.42*x[20]*x[24])-0.58*x[20]*x[25]+0.28*x[20]*x[26]-1.74*x[20]*x[27]-1.98*x[20]*x[30]-1.42*x[20]*x[32]-0.08*x[20]*x[35]-1.78*x[20]*x[38]+(-0.78*x[21]*x[25])-1.3*x[21]*x[28]-1.5*x[21]*x[31]+0.08*x[21]*x[32]-0.88*x[21]*x[33]-0.82*x[21]*x[36]+0.64*x[21]*x[37]+0.62*x[21]*x[39]+(-1.62*x[22]*x[23])-0.52*x[22]*x[27]+0.64*x[22]*x[28]+1.8*x[22]*x[31]-0.78*x[22]*x[32]-0.94*x[22]*x[37]+1.54*x[22]*x[38]-0.68*x[22]*x[39]+0.36*x[22]*x[41]+0.22*x[23]*x[28]-1.76*x[23]*x[31]-1.36*x[23]*x[32]+0.46*x[23]*x[35]-0.18*x[23]*x[39]+x[23]*x[40]-0.52*x[23]*x[41]+(-0.84*x[24]*x[25])-0.42*x[24]*x[28]-0.54*x[24]*x[29]-0.28*x[24]*x[31]+1.88*x[24]*x[32]-0.92*x[24]*x[34]-0.92*x[24]*x[37]-1.52*x[24]*x[40]+(-1.46*x[25]*x[30])-1.96*x[25]*x[31]+0.58*x[25]*x[35]+1.12*x[25]*x[37]-0.76*x[25]*x[39]-1.24*x[25]*x[40]-0.7*x[25]*x[41]+1.9*x[26]*x[28]-0.34*x[26]*x[27]-x[26]*x[31]-1.86*x[26]*x[32]-0.08*x[26]*x[33]+0.32*x[26]*x[36]-1.22*x[26]*x[40]+0.4*x[26]*x[41]+(-0.48*x[27]*x[28])-1.6*x[27]*x[32]+1.46*x[27]*x[33]+1.18*x[27]*x[36]-0.68*x[27]*x[39]-0.16*x[27]*x[40]+0.14*x[27]*x[41]+0.24*x[28]*x[30]-0.2*x[28]*x[29]-1.2*x[28]*x[32]+1.3*x[28]*x[36]+1.86*x[28]*x[37]+1.62*x[28]*x[40]-0.34*x[28]*x[41]+1.8*x[29]*x[31]-0.02*x[29]*x[30]+1.6*x[29]*x[33]-0.32*x[29]*x[34]+1.92*x[29]*x[35]-1.02*x[29]*x[37]-1.88*x[29]*x[38]+1.2*x[29]*x[39]+1.12*x[29]*x[41]+1.54*x[30]*x[36]-1.42*x[30]*x[34]+0.12*x[30]*x[39]+(-0.68*x[31]*x[32])-0.54*x[31]*x[33]+0.6*x[31]*x[34]-0.06*x[31]*x[37]+0.28*x[31]*x[38]+(-0.82*x[32]*x[33])-1.1*x[32]*x[35]+1.66*x[32]*x[36]-1.58*x[32]*x[38]+0.06*x[32]*x[41]+1.72*x[33]*x[38]-0.22*x[33]*x[34]+0.28*x[33]*x[39]+0.44*x[33]*x[41]+0.26*x[34]*x[35]-1.94*x[34]*x[36]+1.98*x[34]*x[38]-0.34*x[34]*x[41]+(-0.66*x[35]*x[36])-1.86*x[35]*x[37]-0.5*x[35]*x[40]+1.82*x[36]*x[38]-0.6*x[36]*x[39]+0.74*x[36]*x[40]+1.74*x[36]*x[41]+1.06*x[37]*x[40]-0.1*x[37]*x[41]+0.64*x[38]*x[39]-1.1*x[38]*x[41]-0.72*x[39]*x[40]+0.79*x[2]*x[2]+0.51*x[3]*x[3]+0.05*x[5]*x[5]+0.06*x[6]*x[6]-0.57*x[8]*x[8]+0.49*x[9]*x[9]+0.89*x[10]*x[10]+0.41*x[11]*x[11]-0.93*x[12]*x[12]-0.14*x[13]*x[13]+0.63*x[14]*x[14]+0.98*x[17]*x[17]-0.92*x[18]*x[18]+0.69*x[19]*x[19]+0.2*x[22]*x[22]-0.39*x[28]*x[28]-0.86*x[29]*x[29]+0.94*x[30]*x[30]-0.81*x[34]*x[34]+0.81*x[37]*x[37]+0.34*x[40]*x[40]+0.34*x[41]*x[41]-0.25*x[2]+0.49*x[3]-0.31*x[4]+0.79*x[5]-0.44*x[6]-0.37*x[7]+0.63*x[8]-0.21*x[9]+0.01*x[10]-0.68*x[11]+0.98*x[12]+0.3*x[13]+0.55*x[14]+0.36*x[15]-0.07*x[16]-0.76*x[17]+0.28*x[18]+0.01*x[19]+0.77*x[20]-0.2*x[21]-0.35*x[22]-0.95*x[23]-0.36*x[24]-0.14*x[25]-0.21*x[26]-0.83*x[27]+0.6*x[28]+0.43*x[29]+0.78*x[30]-0.1*x[31]-0.67*x[32]+0.9*x[33]+0.66*x[34]-0.85*x[35]-0.96*x[36]-0.3*x[37]-0.09*x[38]-0.02*x[39]-0.96*x[40]-0.81*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 0.12*x[2]*x[5]+1.8*x[2]*x[9]+0.2*x[2]*x[11]-0.9*x[2]*x[13]+1.98*x[2]*x[15]+1.66*x[2]*x[18]-0.4*x[2]*x[19]+1.7*x[2]*x[20]-1.82*x[2]*x[22]+1.56*x[2]*x[24]+1.28*x[2]*x[25]+1.32*x[2]*x[26]+1.56*x[2]*x[27]+1.6*x[2]*x[28]+1.8*x[2]*x[30]-0.04*x[2]*x[31]+0.72*x[2]*x[35]+1.82*x[2]*x[37]-1.5*x[2]*x[40]+1.2*x[2]*x[41]+1.72*x[3]*x[4]-1.34*x[3]*x[5]+0.1*x[3]*x[7]-0.48*x[3]*x[10]+0.24*x[3]*x[15]-1.1*x[3]*x[19]-0.52*x[3]*x[20]-0.6*x[3]*x[24]-1.38*x[3]*x[26]+1.38*x[3]*x[27]-1.2*x[3]*x[29]-1.64*x[3]*x[31]-1.36*x[3]*x[32]+0.62*x[3]*x[36]+0.52*x[3]*x[40]+0.52*x[4]*x[7]+1.28*x[4]*x[9]+1.8*x[4]*x[11]-1.3*x[4]*x[12]-0.98*x[4]*x[18]-0.66*x[4]*x[23]+1.78*x[4]*x[24]-1.62*x[4]*x[25]+0.8*x[4]*x[26]-1.22*x[4]*x[28]+1.24*x[4]*x[31]-1.22*x[4]*x[32]-1.38*x[4]*x[34]+1.74*x[4]*x[36]+0.44*x[4]*x[37]-0.98*x[4]*x[40]+(-1.1*x[5]*x[8])-1.42*x[5]*x[9]+1.8*x[5]*x[10]+1.56*x[5]*x[11]+0.04*x[5]*x[13]+1.8*x[5]*x[14]-1.96*x[5]*x[16]-0.76*x[5]*x[17]+0.08*x[5]*x[18]+1.02*x[5]*x[19]+1.74*x[5]*x[21]+1.84*x[5]*x[22]-0.86*x[5]*x[23]+0.24*x[5]*x[24]-0.74*x[5]*x[27]+0.62*x[5]*x[29]-1.64*x[5]*x[33]+1.08*x[5]*x[35]-0.32*x[5]*x[39]+1.92*x[6]*x[11]-1.94*x[6]*x[9]+0.12*x[6]*x[12]+0.82*x[6]*x[13]-0.34*x[6]*x[15]-0.24*x[6]*x[20]-1.38*x[6]*x[21]+0.62*x[6]*x[22]-0.5*x[6]*x[24]-0.72*x[6]*x[25]+1.22*x[6]*x[29]+1.92*x[6]*x[30]+1.66*x[6]*x[36]+0.44*x[6]*x[37]+0.7*x[6]*x[38]-1.14*x[6]*x[39]+1.12*x[6]*x[40]+1.86*x[7]*x[8]+0.26*x[7]*x[9]-0.66*x[7]*x[12]-1.94*x[7]*x[13]-1.74*x[7]*x[15]-1.74*x[7]*x[16]-0.38*x[7]*x[17]-1.08*x[7]*x[24]+0.42*x[7]*x[27]+0.92*x[7]*x[30]-0.2*x[7]*x[32]-0.8*x[7]*x[34]+1.7*x[7]*x[35]-1.14*x[7]*x[38]+0.08*x[7]*x[39]+0.92*x[8]*x[15]-0.2*x[8]*x[12]+1.4*x[8]*x[18]-0.64*x[8]*x[19]+1.04*x[8]*x[22]+1.52*x[8]*x[23]-1.1*x[8]*x[24]-0.46*x[8]*x[27]+0.34*x[8]*x[28]-1.32*x[8]*x[32]-1.74*x[8]*x[33]+0.68*x[8]*x[34]+1.94*x[8]*x[37]+1.42*x[8]*x[38]-1.88*x[8]*x[39]+1.22*x[8]*x[40]+0.86*x[8]*x[41]+0.04*x[9]*x[11]-0.4*x[9]*x[10]+0.72*x[9]*x[12]+0.08*x[9]*x[15]-1.94*x[9]*x[20]-1.92*x[9]*x[28]+0.08*x[9]*x[30]+1.36*x[9]*x[31]+1.28*x[9]*x[33]-1.98*x[9]*x[35]+0.34*x[9]*x[36]-1.16*x[9]*x[37]-1.16*x[9]*x[38]+1.2*x[9]*x[39]+0.2*x[9]*x[40]+1.46*x[10]*x[13]-1.42*x[10]*x[12]+1.44*x[10]*x[14]+1.32*x[10]*x[15]-1.82*x[10]*x[16]+1.8*x[10]*x[17]-0.84*x[10]*x[19]+0.22*x[10]*x[21]+1.3*x[10]*x[22]-1.94*x[10]*x[23]+1.32*x[10]*x[24]+1.14*x[10]*x[26]-0.9*x[10]*x[29]-1.1*x[10]*x[35]-1.62*x[10]*x[36]-0.06*x[10]*x[37]-0.24*x[10]*x[38]+1.56*x[10]*x[39]+1.04*x[10]*x[41]+0.64*x[11]*x[12]+0.4*x[11]*x[13]+0.1*x[11]*x[15]-x[11]*x[20]-1.34*x[11]*x[22]+1.04*x[11]*x[23]-0.36*x[11]*x[24]-1.4*x[11]*x[25]+1.36*x[11]*x[29]-0.62*x[11]*x[34]+1.24*x[11]*x[35]+0.36*x[11]*x[39]-1.44*x[11]*x[40]+1.28*x[12]*x[14]-1.62*x[12]*x[16]+0.62*x[12]*x[18]-0.2*x[12]*x[19]-1.86*x[12]*x[25]-0.86*x[12]*x[27]+0.2*x[12]*x[29]+1.26*x[12]*x[30]+0.18*x[12]*x[32]-1.3*x[12]*x[34]-1.18*x[12]*x[36]+1.56*x[12]*x[40]+1.22*x[12]*x[41]+0.12*x[13]*x[16]+0.72*x[13]*x[17]-1.52*x[13]*x[18]+0.46*x[13]*x[19]+0.94*x[13]*x[20]+0.2*x[13]*x[21]-0.38*x[13]*x[22]-1.88*x[13]*x[24]+1.54*x[13]*x[25]-1.72*x[13]*x[26]-0.06*x[13]*x[28]-0.38*x[13]*x[32]+0.52*x[13]*x[34]-1.44*x[13]*x[36]-0.88*x[13]*x[39]-1.06*x[13]*x[40]-1.84*x[13]*x[41]+0.18*x[14]*x[19]-0.64*x[14]*x[15]+1.54*x[14]*x[20]-0.64*x[14]*x[21]-1.06*x[14]*x[30]-1.64*x[14]*x[31]+1.72*x[14]*x[33]+1.66*x[14]*x[36]+1.56*x[14]*x[37]+0.22*x[15]*x[18]-1.74*x[15]*x[19]+0.3*x[15]*x[23]+0.62*x[15]*x[25]-1.32*x[15]*x[26]-0.86*x[15]*x[27]+1.56*x[15]*x[28]-1.26*x[15]*x[29]+0.36*x[15]*x[30]-1.62*x[15]*x[31]-0.64*x[15]*x[36]-0.24*x[15]*x[40]+1.58*x[15]*x[41]+0.64*x[16]*x[18]-1.56*x[16]*x[17]-1.24*x[16]*x[19]-1.44*x[16]*x[23]+0.98*x[16]*x[26]+1.42*x[16]*x[27]-1.68*x[16]*x[30]-0.6*x[16]*x[34]+0.28*x[16]*x[37]+1.48*x[16]*x[40]-0.58*x[16]*x[41]+0.16*x[17]*x[18]-0.58*x[17]*x[20]+0.22*x[17]*x[21]-0.64*x[17]*x[22]+0.78*x[17]*x[24]-1.32*x[17]*x[25]-0.54*x[17]*x[29]-0.66*x[17]*x[31]-0.54*x[17]*x[33]+0.8*x[17]*x[35]+1.88*x[17]*x[38]+0.06*x[17]*x[39]+0.82*x[17]*x[40]+1.32*x[17]*x[41]+0.96*x[18]*x[23]-1.4*x[18]*x[21]-0.92*x[18]*x[25]+0.98*x[18]*x[28]-0.3*x[18]*x[31]-1.56*x[18]*x[32]+1.74*x[18]*x[35]+0.88*x[18]*x[36]-0.96*x[18]*x[40]-1.18*x[18]*x[41]+0.26*x[19]*x[21]+1.6*x[19]*x[23]-0.76*x[19]*x[24]-1.04*x[19]*x[26]-1.12*x[19]*x[27]+1.54*x[19]*x[30]+1.84*x[19]*x[31]-0.5*x[19]*x[34]-1.18*x[19]*x[36]+1.22*x[19]*x[38]+(-0.8*x[20]*x[21])-0.04*x[20]*x[22]-0.32*x[20]*x[25]+1.14*x[20]*x[28]+0.26*x[20]*x[29]+0.54*x[20]*x[30]-1.3*x[20]*x[32]+1.18*x[20]*x[33]+1.42*x[20]*x[34]-1.76*x[20]*x[35]-0.96*x[20]*x[38]+1.7*x[20]*x[39]-1.68*x[20]*x[41]+1.98*x[21]*x[24]-1.76*x[21]*x[25]+0.74*x[21]*x[26]+1.78*x[21]*x[27]+1.9*x[21]*x[33]+1.4*x[21]*x[34]+0.46*x[21]*x[35]+0.56*x[21]*x[36]-1.7*x[21]*x[38]-1.02*x[21]*x[41]+1.04*x[22]*x[24]+1.52*x[22]*x[26]+0.64*x[22]*x[27]+1.04*x[22]*x[31]+1.68*x[22]*x[32]-0.2*x[22]*x[33]-0.04*x[22]*x[34]-1.98*x[22]*x[36]-1.08*x[22]*x[38]-1.12*x[22]*x[40]+(-0.3*x[23]*x[27])-0.16*x[23]*x[28]-0.16*x[23]*x[29]+0.38*x[23]*x[30]+1.94*x[23]*x[33]-0.72*x[23]*x[34]-1.48*x[23]*x[38]+0.66*x[23]*x[39]-1.78*x[23]*x[41]+0.78*x[24]*x[26]-1.58*x[24]*x[25]-0.1*x[24]*x[27]+1.02*x[24]*x[29]+1.28*x[24]*x[34]-1.88*x[24]*x[35]+1.62*x[24]*x[36]+1.84*x[24]*x[38]+0.34*x[24]*x[39]+1.52*x[24]*x[41]+1.24*x[25]*x[30]-1.86*x[25]*x[26]-0.58*x[25]*x[33]+1.22*x[25]*x[34]+0.48*x[25]*x[39]+0.02*x[25]*x[40]-1.74*x[25]*x[41]+(-0.42*x[26]*x[29])-0.88*x[26]*x[30]+0.46*x[26]*x[32]-1.46*x[26]*x[34]+1.16*x[26]*x[36]+1.54*x[26]*x[38]+1.8*x[27]*x[31]+0.5*x[27]*x[34]-1.84*x[27]*x[35]+0.82*x[27]*x[38]-0.62*x[27]*x[39]-0.06*x[27]*x[40]+1.22*x[28]*x[29]-0.78*x[28]*x[32]+1.92*x[28]*x[35]-1.04*x[28]*x[40]+0.08*x[29]*x[33]-0.52*x[29]*x[32]-1.3*x[29]*x[38]-1.9*x[29]*x[39]+0.64*x[29]*x[40]+0.06*x[30]*x[31]+0.1*x[30]*x[35]+0.4*x[30]*x[36]+0.34*x[30]*x[38]-1.26*x[30]*x[39]-0.84*x[30]*x[40]+1.74*x[31]*x[34]-1.48*x[31]*x[32]+0.72*x[31]*x[35]+0.26*x[32]*x[35]-0.8*x[32]*x[34]-1.88*x[32]*x[39]+1.6*x[32]*x[41]+(-1.42*x[33]*x[34])-1.42*x[33]*x[36]-2*x[33]*x[37]-x[33]*x[38]-1.96*x[33]*x[39]+1.84*x[33]*x[40]+0.54*x[34]*x[35]+1.36*x[34]*x[37]+0.42*x[34]*x[38]-0.16*x[34]*x[40]+0.28*x[35]*x[38]+1.08*x[35]*x[40]-1.94*x[35]*x[41]+(-0.58*x[36]*x[37])-1.22*x[36]*x[40]+1.88*x[36]*x[41]+1.48*x[37]*x[39]-0.72*x[37]*x[40]-0.4*x[37]*x[41]+1.54*x[38]*x[40]-1.8*x[39]*x[40]+(-0.89*x[2]*x[2])-0.21*x[3]*x[3]+0.99*x[4]*x[4]+0.23*x[9]*x[9]-0.86*x[10]*x[10]+0.85*x[15]*x[15]+0.56*x[16]*x[16]+0.75*x[17]*x[17]-0.77*x[19]*x[19]-0.11*x[20]*x[20]-0.94*x[21]*x[21]+0.98*x[23]*x[23]+0.97*x[25]*x[25]-0.35*x[26]*x[26]-0.92*x[28]*x[28]+0.91*x[29]*x[29]+0.6*x[30]*x[30]+0.25*x[31]*x[31]+0.85*x[33]*x[33]+0.57*x[34]*x[34]+0.64*x[37]*x[37]+0.57*x[39]*x[39]-0.03*x[41]*x[41]-0.26*x[2]-0.93*x[3]-0.58*x[4]-0.74*x[5]-0.28*x[6]-0.06*x[7]+0.38*x[8]-0.96*x[9]-0.08*x[10]-0.83*x[11]+0.9*x[12]+0.94*x[13]-0.42*x[14]-0.1*x[15]-0.32*x[16]-0.41*x[17]+0.14*x[18]-0.75*x[19]+0.24*x[20]-0.92*x[21]-0.53*x[22]-0.79*x[23]-0.01*x[24]-0.11*x[25]+0.41*x[26]-0.38*x[27]-0.16*x[28]+0.74*x[29]+0.1*x[30]+0.52*x[31]-0.2*x[32]+0.9*x[33]+0.99*x[34]-0.16*x[35]-0.23*x[36]-0.86*x[37]+0.93*x[38]+0.38*x[39]+0.49*x[40]+0.85*x[41] <= 58.47)
@constraint(m, e3, 0.25*x[2]-0.95*x[3]+0.14*x[4]-0.53*x[5]+0.57*x[6]+0.24*x[7]-0.06*x[8]-0.15*x[9]+0.64*x[10]-0.21*x[11]-0.38*x[12]-0.46*x[13]+0.79*x[14]-0.18*x[15]-0.8*x[16]-0.85*x[17]+0.18*x[18]+0.67*x[19]+0.41*x[20]-0.63*x[21]+0.27*x[22]-0.69*x[23]-0.37*x[24]+0.87*x[25]+0.64*x[26]+0.48*x[27]-0.12*x[28]-0.36*x[29]+0.33*x[30]+0.66*x[31]-0.31*x[32]+0.1*x[33]+0.94*x[34]+0.63*x[35]+0.43*x[36]-0.75*x[37]-0.86*x[38]-0.07*x[39]+0.05*x[40]+0.54*x[41] == 0.75)
@constraint(m, e4, -0.15*x[2]+0.09*x[3]-0.02*x[4]+0.23*x[5]-0.1*x[6]-0.53*x[7]+0.33*x[8]-0.48*x[9]+0.59*x[10]+0.95*x[11]-0.68*x[12]-0.94*x[13]+0.12*x[14]+0.7*x[15]-0.93*x[16]+0.17*x[17]-0.37*x[18]+0.83*x[19]-0.13*x[20]-0.47*x[21]-0.96*x[22]+0.26*x[23]-0.98*x[24]+0.11*x[25]-0.02*x[26]+0.83*x[27]-0.41*x[28]-0.33*x[29]+0.23*x[30]-0.35*x[31]+0.47*x[32]+0.31*x[33]+0.7*x[34]-0.6*x[35]+0.63*x[36]-0.83*x[37]+0.2*x[38]+0.24*x[39]-0.38*x[40]+0.61*x[41] == -0.1)
@constraint(m, e5, 0.52*x[2]-0.5*x[3]+0.82*x[4]+0.51*x[5]-0.73*x[6]+0.47*x[7]-0.18*x[8]-0.8*x[9]+0.01*x[10]+0.92*x[11]-0.39*x[12]-0.87*x[13]-0.73*x[14]+0.18*x[15]-0.16*x[16]+0.36*x[17]+0.36*x[18]-0.66*x[19]-0.41*x[20]-0.68*x[21]-0.35*x[22]+0.76*x[23]-0.02*x[24]+0.18*x[25]-0.14*x[26]-0.39*x[27]+0.85*x[28]+0.15*x[29]+0.98*x[30]-0.26*x[31]+0.08*x[32]-0.8*x[33]+0.22*x[34]+0.13*x[35]-0.08*x[36]-0.93*x[37]+0.67*x[38]+0.72*x[39]+0.29*x[40]+0.38*x[41] == 0.3)
@constraint(m, e6, 0.36*x[2]+0.05*x[3]-0.93*x[4]-0.59*x[5]-0.03*x[6]-0.85*x[7]-0.95*x[8]+0.42*x[9]+0.13*x[10]+0.39*x[11]-0.61*x[12]-0.49*x[13]+0.53*x[14]-0.91*x[15]-0.8*x[16]+0.52*x[17]+0.52*x[18]-0.56*x[19]+0.16*x[20]-0.85*x[21]-0.73*x[22]-0.74*x[23]-0.68*x[24]+0.27*x[25]+0.05*x[26]-0.69*x[27]-0.03*x[28]+0.38*x[29]+0.22*x[30]-0.84*x[31]+0.18*x[32]+0.96*x[33]-0.56*x[34]-0.52*x[35]+0.71*x[36]+0.3*x[37]-0.63*x[38]-0.99*x[39]-0.92*x[40]-0.8*x[41] == 0.89)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
