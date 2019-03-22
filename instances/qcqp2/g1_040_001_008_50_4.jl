using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)
setupperbound(x[21], 1.0)
setupperbound(x[22], 1.0)
setupperbound(x[23], 1.0)
setupperbound(x[24], 1.0)
setupperbound(x[25], 1.0)
setupperbound(x[26], 1.0)
setupperbound(x[27], 1.0)
setupperbound(x[28], 1.0)
setupperbound(x[29], 1.0)
setupperbound(x[30], 1.0)
setupperbound(x[31], 1.0)
setupperbound(x[32], 1.0)
setupperbound(x[33], 1.0)
setupperbound(x[34], 1.0)
setupperbound(x[35], 1.0)
setupperbound(x[36], 1.0)
setupperbound(x[37], 1.0)
setupperbound(x[38], 1.0)
setupperbound(x[39], 1.0)
setupperbound(x[40], 1.0)
setupperbound(x[41], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.9*x[2]*x[7]-1.86*x[2]*x[4]-1.86*x[2]*x[8]+0.82*x[2]*x[9]+0.96*x[2]*x[10]+0.58*x[2]*x[19]+0.84*x[2]*x[20]+0.76*x[2]*x[23]+0.04*x[2]*x[24]-0.3*x[2]*x[25]+0.68*x[2]*x[26]+1.26*x[2]*x[28]+1.24*x[2]*x[34]+0.3*x[2]*x[35]+1.78*x[2]*x[36]+1.66*x[2]*x[37]+0.66*x[2]*x[39]+1.02*x[2]*x[40]+(-0.66*x[3]*x[4])-1.82*x[3]*x[5]-1.38*x[3]*x[6]+0.52*x[3]*x[7]+1.94*x[3]*x[11]+0.84*x[3]*x[12]+0.1*x[3]*x[13]+1.6*x[3]*x[16]+1.26*x[3]*x[19]-1.34*x[3]*x[25]-0.4*x[3]*x[31]-1.42*x[3]*x[32]+0.34*x[3]*x[33]-1.24*x[3]*x[35]-0.94*x[3]*x[36]+1.8*x[3]*x[38]+1.62*x[3]*x[39]+0.5*x[4]*x[8]-0.38*x[4]*x[6]-0.26*x[4]*x[11]-1.16*x[4]*x[13]+0.52*x[4]*x[15]-0.22*x[4]*x[17]-1.14*x[4]*x[18]-0.66*x[4]*x[19]-0.92*x[4]*x[20]+0.5*x[4]*x[21]+1.34*x[4]*x[25]+0.72*x[4]*x[29]-1.4*x[4]*x[31]+1.24*x[4]*x[32]-0.42*x[4]*x[35]+1.96*x[4]*x[36]+1.7*x[4]*x[37]-1.96*x[4]*x[38]+(-0.24*x[5]*x[6])-0.24*x[5]*x[11]+0.52*x[5]*x[14]-0.3*x[5]*x[15]-0.28*x[5]*x[22]+0.62*x[5]*x[23]+0.32*x[5]*x[26]+0.82*x[5]*x[31]-0.6*x[5]*x[32]+0.44*x[5]*x[33]+0.18*x[5]*x[36]-0.64*x[5]*x[37]+1.44*x[5]*x[39]-1.08*x[5]*x[40]-1.96*x[5]*x[41]+1.82*x[6]*x[7]+0.16*x[6]*x[9]+1.42*x[6]*x[12]+1.16*x[6]*x[13]-0.84*x[6]*x[14]+0.14*x[6]*x[19]-1.4*x[6]*x[22]+1.64*x[6]*x[23]-0.94*x[6]*x[25]+0.56*x[6]*x[26]+1.4*x[6]*x[29]+0.24*x[6]*x[30]-0.14*x[6]*x[33]+0.06*x[6]*x[35]+0.58*x[6]*x[38]-1.72*x[6]*x[39]-1.88*x[6]*x[40]+1.96*x[6]*x[41]+0.92*x[7]*x[8]-0.12*x[7]*x[10]+0.8*x[7]*x[12]-1.62*x[7]*x[13]-1.02*x[7]*x[14]+0.4*x[7]*x[15]-1.58*x[7]*x[19]+0.42*x[7]*x[24]+0.08*x[7]*x[26]+0.38*x[7]*x[28]-1.24*x[7]*x[29]-1.5*x[7]*x[31]-0.36*x[7]*x[32]-0.98*x[7]*x[33]-1.92*x[7]*x[37]-1.6*x[7]*x[40]+0.48*x[8]*x[13]-1.8*x[8]*x[10]+1.78*x[8]*x[17]-0.22*x[8]*x[18]-1.82*x[8]*x[19]-0.76*x[8]*x[21]+0.38*x[8]*x[22]+1.52*x[8]*x[23]+0.58*x[8]*x[24]-1.88*x[8]*x[25]-0.54*x[8]*x[27]-1.82*x[8]*x[28]-0.9*x[8]*x[30]+0.78*x[8]*x[31]+0.08*x[8]*x[32]+0.66*x[8]*x[33]+0.6*x[8]*x[36]-0.7*x[8]*x[37]-0.56*x[8]*x[39]+0.32*x[8]*x[41]+1.74*x[9]*x[14]-0.68*x[9]*x[15]-1.38*x[9]*x[17]-0.78*x[9]*x[20]+1.3*x[9]*x[21]-0.9*x[9]*x[22]-0.2*x[9]*x[28]-1.96*x[9]*x[29]+0.52*x[9]*x[31]-0.66*x[9]*x[36]+0.04*x[9]*x[38]+(-1.02*x[10]*x[11])-0.94*x[10]*x[14]+1.28*x[10]*x[15]-1.6*x[10]*x[18]+1.64*x[10]*x[23]-0.16*x[10]*x[25]-0.34*x[10]*x[26]+1.7*x[10]*x[27]+0.24*x[10]*x[28]-0.28*x[10]*x[29]-1.28*x[10]*x[34]-1.98*x[10]*x[36]+1.98*x[10]*x[40]+1.4*x[11]*x[12]+1.58*x[11]*x[13]+0.52*x[11]*x[16]+1.8*x[11]*x[17]-1.66*x[11]*x[19]+1.86*x[11]*x[23]-0.04*x[11]*x[24]+1.5*x[11]*x[25]-1.18*x[11]*x[26]+1.52*x[11]*x[27]-0.42*x[11]*x[29]+1.34*x[11]*x[30]-0.92*x[11]*x[31]+0.86*x[11]*x[34]-0.9*x[11]*x[37]-0.08*x[11]*x[39]+1.08*x[12]*x[13]+1.02*x[12]*x[14]+0.52*x[12]*x[18]-1.18*x[12]*x[19]-1.46*x[12]*x[21]-1.06*x[12]*x[22]+1.96*x[12]*x[26]+0.38*x[12]*x[27]-1.5*x[12]*x[29]+0.74*x[12]*x[32]-1.44*x[12]*x[35]+0.82*x[12]*x[36]+0.4*x[12]*x[37]+1.84*x[12]*x[40]+1.18*x[13]*x[20]+1.8*x[13]*x[23]-1.06*x[13]*x[24]-1.32*x[13]*x[25]-1.74*x[13]*x[29]-1.22*x[13]*x[31]+0.74*x[13]*x[33]+0.02*x[13]*x[35]-1.48*x[13]*x[36]+1.02*x[13]*x[37]-0.76*x[13]*x[40]+0.94*x[14]*x[17]-0.78*x[14]*x[18]+0.74*x[14]*x[19]-0.5*x[14]*x[20]+1.88*x[14]*x[22]-0.9*x[14]*x[23]-0.34*x[14]*x[27]+1.64*x[14]*x[28]+1.48*x[14]*x[29]+1.24*x[14]*x[30]+0.82*x[14]*x[31]+0.94*x[14]*x[33]-1.46*x[14]*x[36]-1.66*x[14]*x[37]+1.58*x[14]*x[38]-0.16*x[14]*x[39]-1.78*x[14]*x[41]+0.54*x[15]*x[16]+x[15]*x[23]-0.72*x[15]*x[26]+0.74*x[15]*x[27]+1.8*x[15]*x[28]+1.72*x[15]*x[29]+1.84*x[15]*x[34]-0.1*x[15]*x[35]-1.86*x[15]*x[36]-1.84*x[15]*x[37]-1.52*x[15]*x[39]+1.58*x[16]*x[21]-0.4*x[16]*x[17]+0.26*x[16]*x[23]-0.48*x[16]*x[25]-0.98*x[16]*x[27]-1.72*x[16]*x[30]-0.98*x[16]*x[31]+1.42*x[16]*x[32]+0.3*x[16]*x[33]-0.48*x[16]*x[34]-0.06*x[16]*x[35]+0.12*x[16]*x[36]-1.3*x[16]*x[39]-0.74*x[16]*x[40]+1.2*x[16]*x[41]+0.66*x[17]*x[22]-1.88*x[17]*x[20]+0.44*x[17]*x[24]+0.6*x[17]*x[25]-1.44*x[17]*x[26]-1.02*x[17]*x[29]+1.7*x[17]*x[30]+0.8*x[17]*x[31]-0.14*x[17]*x[33]+1.94*x[17]*x[34]+1.3*x[17]*x[37]-0.96*x[17]*x[39]+1.02*x[17]*x[40]+1.64*x[17]*x[41]+0.04*x[18]*x[21]+1.76*x[18]*x[23]-0.46*x[18]*x[29]-1.36*x[18]*x[32]+1.44*x[18]*x[37]+1.54*x[18]*x[38]+0.54*x[18]*x[41]+1.36*x[19]*x[22]+1.76*x[19]*x[24]+1.32*x[19]*x[31]+1.64*x[19]*x[35]+0.88*x[19]*x[38]+1.24*x[20]*x[21]-1.94*x[20]*x[23]-0.34*x[20]*x[24]-0.38*x[20]*x[26]-0.84*x[20]*x[30]+1.04*x[20]*x[31]-1.66*x[20]*x[32]+0.34*x[20]*x[34]+0.78*x[20]*x[35]-1.12*x[20]*x[37]-1.54*x[20]*x[39]+1.14*x[21]*x[25]-0.92*x[21]*x[23]+1.22*x[21]*x[29]-0.02*x[21]*x[30]-1.9*x[21]*x[31]-0.7*x[21]*x[32]+1.64*x[21]*x[33]-1.32*x[21]*x[36]-1.66*x[21]*x[39]+0.2*x[22]*x[23]+0.76*x[22]*x[24]+0.78*x[22]*x[28]-1.72*x[22]*x[30]+0.86*x[22]*x[32]+1.24*x[22]*x[34]+0.64*x[22]*x[35]+1.2*x[22]*x[36]+1.56*x[22]*x[38]+0.96*x[22]*x[41]+1.96*x[23]*x[25]+0.5*x[23]*x[26]+1.7*x[23]*x[28]+0.5*x[23]*x[30]-1.38*x[23]*x[31]-0.6*x[23]*x[37]+0.34*x[23]*x[38]+1.22*x[23]*x[41]+0.18*x[24]*x[25]+1.92*x[24]*x[26]-0.38*x[24]*x[28]+1.84*x[24]*x[30]-1.88*x[24]*x[32]-1.44*x[24]*x[34]+0.3*x[24]*x[39]+1.9*x[24]*x[40]+0.6*x[25]*x[27]+0.2*x[25]*x[31]+0.96*x[25]*x[32]-1.08*x[25]*x[35]+1.82*x[25]*x[39]+0.46*x[25]*x[40]-0.32*x[25]*x[41]+0.1*x[26]*x[35]-1.86*x[26]*x[34]+0.42*x[26]*x[36]+1.2*x[26]*x[37]-1.12*x[26]*x[38]+0.36*x[26]*x[39]+0.02*x[26]*x[41]+(-0.72*x[27]*x[29])-0.42*x[27]*x[30]+1.38*x[27]*x[32]-0.66*x[27]*x[33]+0.5*x[27]*x[36]-1.9*x[27]*x[37]-0.26*x[27]*x[38]+1.16*x[27]*x[40]+(-1.06*x[28]*x[29])-0.94*x[28]*x[30]-0.8*x[28]*x[31]-0.3*x[28]*x[36]+1.02*x[28]*x[38]+1.74*x[28]*x[39]+0.82*x[28]*x[40]+0.3*x[28]*x[41]+1.98*x[29]*x[31]+0.12*x[29]*x[33]+1.26*x[29]*x[34]+0.66*x[29]*x[35]-1.84*x[29]*x[36]-1.08*x[29]*x[38]-0.06*x[29]*x[39]-0.84*x[29]*x[40]+1.5*x[29]*x[41]+1.7*x[30]*x[33]-0.34*x[30]*x[31]-0.64*x[30]*x[38]-1.08*x[30]*x[39]+1.7*x[30]*x[41]+(-0.08*x[31]*x[32])-1.3*x[31]*x[33]+0.54*x[31]*x[35]-0.64*x[31]*x[36]+0.64*x[31]*x[37]+0.82*x[31]*x[38]+1.86*x[31]*x[39]+1.76*x[31]*x[40]+1.26*x[31]*x[41]+0.98*x[32]*x[33]-1.78*x[32]*x[34]-0.14*x[32]*x[35]-0.58*x[32]*x[40]+0.78*x[33]*x[37]+1.42*x[33]*x[41]+(-1.92*x[34]*x[35])-0.74*x[34]*x[39]+0.44*x[34]*x[40]+0.76*x[34]*x[41]+2*x[35]*x[39]-0.58*x[35]*x[37]+0.36*x[35]*x[40]+0.6*x[35]*x[41]+1.94*x[36]*x[38]-1.4*x[36]*x[40]-0.04*x[37]*x[38]-1.86*x[38]*x[41]+1.04*x[39]*x[41]+0.12*x[6]*x[6]-0.46*x[4]*x[4]+0.9*x[7]*x[7]-0.26*x[8]*x[8]-0.98*x[9]*x[9]+0.38*x[11]*x[11]-0.59*x[13]*x[13]+0.88*x[14]*x[14]+0.85*x[16]*x[16]+0.54*x[17]*x[17]+0.84*x[18]*x[18]-0.24*x[20]*x[20]+0.73*x[21]*x[21]-0.55*x[22]*x[22]+0.15*x[23]*x[23]-0.09*x[24]*x[24]+0.11*x[28]*x[28]+0.86*x[33]*x[33]-0.34*x[37]*x[37]+0.21*x[40]*x[40]+0.63*x[2]+0.78*x[3]-0.27*x[4]-0.33*x[5]-0.96*x[6]-0.67*x[7]+0.42*x[8]-0.09*x[9]+0.18*x[10]+0.43*x[11]-0.1*x[12]-0.3*x[13]+0.83*x[14]+0.6*x[15]-0.46*x[16]-0.08*x[17]+0.36*x[18]-0.17*x[19]-0.96*x[20]-0.4*x[21]+0.65*x[22]+0.92*x[23]+0.57*x[24]-0.97*x[25]-0.19*x[26]+0.42*x[27]-0.24*x[28]+0.39*x[29]-0.84*x[30]+0.82*x[31]+0.06*x[32]-0.28*x[33]-0.4*x[34]+0.89*x[35]-0.43*x[36]-0.02*x[37]+0.73*x[38]-0.75*x[39]+0.77*x[40]+0.96*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 0.4*x[2]*x[5]+1.62*x[2]*x[7]-0.5*x[2]*x[9]+0.32*x[2]*x[11]-1.2*x[2]*x[14]-1.34*x[2]*x[15]-0.8*x[2]*x[21]+0.38*x[2]*x[23]+0.1*x[2]*x[26]+0.48*x[2]*x[30]+1.5*x[2]*x[31]-1.28*x[2]*x[34]-0.16*x[2]*x[36]-0.58*x[2]*x[37]-x[2]*x[39]-1.4*x[2]*x[41]+1.68*x[3]*x[5]-1.54*x[3]*x[4]+1.54*x[3]*x[11]+0.68*x[3]*x[12]-1.78*x[3]*x[16]-0.34*x[3]*x[17]+0.92*x[3]*x[19]-1.36*x[3]*x[20]+1.38*x[3]*x[22]-0.22*x[3]*x[23]+1.4*x[3]*x[26]-1.32*x[3]*x[31]-1.28*x[3]*x[35]+1.12*x[3]*x[36]-1.9*x[3]*x[37]+1.3*x[3]*x[38]+0.14*x[3]*x[40]-0.38*x[3]*x[41]+1.54*x[4]*x[6]-0.54*x[4]*x[5]+1.48*x[4]*x[7]-0.04*x[4]*x[8]-0.42*x[4]*x[9]-1.28*x[4]*x[10]-0.78*x[4]*x[13]-1.42*x[4]*x[16]-0.72*x[4]*x[17]+0.5*x[4]*x[18]+0.94*x[4]*x[19]+1.88*x[4]*x[20]-0.62*x[4]*x[24]+1.1*x[4]*x[28]+1.44*x[4]*x[29]-0.32*x[4]*x[30]+1.06*x[4]*x[31]+1.92*x[4]*x[33]+0.62*x[4]*x[34]+1.34*x[4]*x[35]+0.02*x[4]*x[37]-1.62*x[4]*x[38]+0.84*x[4]*x[39]-1.64*x[4]*x[40]+1.44*x[4]*x[41]+0.52*x[5]*x[7]-0.1*x[5]*x[8]+1.94*x[5]*x[9]+1.62*x[5]*x[10]-0.58*x[5]*x[13]+0.98*x[5]*x[16]+0.08*x[5]*x[19]-1.8*x[5]*x[20]-0.12*x[5]*x[30]-0.32*x[5]*x[33]-1.1*x[5]*x[35]-0.04*x[5]*x[37]+0.16*x[5]*x[38]+1.06*x[5]*x[41]+1.52*x[6]*x[8]-1.92*x[6]*x[9]+0.28*x[6]*x[10]-0.98*x[6]*x[12]+1.16*x[6]*x[15]+1.38*x[6]*x[17]+0.04*x[6]*x[19]-0.16*x[6]*x[20]-1.18*x[6]*x[21]-0.52*x[6]*x[23]+0.64*x[6]*x[25]+1.38*x[6]*x[29]-0.54*x[6]*x[33]+1.26*x[6]*x[34]-1.36*x[6]*x[39]-0.82*x[6]*x[41]+1.78*x[7]*x[8]+0.1*x[7]*x[9]-1.34*x[7]*x[10]+0.96*x[7]*x[13]+1.18*x[7]*x[14]+0.52*x[7]*x[16]+0.34*x[7]*x[18]-0.78*x[7]*x[20]+1.66*x[7]*x[24]-1.24*x[7]*x[28]+1.38*x[7]*x[29]-0.44*x[7]*x[30]+0.36*x[7]*x[31]-0.22*x[7]*x[32]+0.42*x[7]*x[34]-0.24*x[7]*x[36]+1.22*x[7]*x[37]+0.28*x[7]*x[39]+1.16*x[7]*x[41]+1.76*x[8]*x[10]-1.5*x[8]*x[15]-0.6*x[8]*x[19]+0.34*x[8]*x[20]-0.9*x[8]*x[22]-1.92*x[8]*x[23]-1.86*x[8]*x[24]-0.34*x[8]*x[25]-0.46*x[8]*x[29]+1.52*x[8]*x[34]-1.14*x[8]*x[35]+1.38*x[8]*x[37]+0.52*x[9]*x[12]-0.66*x[9]*x[13]-1.98*x[9]*x[15]+0.7*x[9]*x[17]+1.88*x[9]*x[18]+1.86*x[9]*x[19]+0.26*x[9]*x[22]-1.84*x[9]*x[24]+0.96*x[9]*x[26]-0.64*x[9]*x[27]-1.04*x[9]*x[30]-0.96*x[9]*x[35]+1.9*x[9]*x[38]-1.6*x[9]*x[39]+0.12*x[9]*x[40]+0.86*x[9]*x[41]+1.6*x[10]*x[12]-1.3*x[10]*x[14]-0.12*x[10]*x[15]+0.76*x[10]*x[16]-1.14*x[10]*x[17]+1.42*x[10]*x[20]-1.58*x[10]*x[21]+1.88*x[10]*x[26]+1.52*x[10]*x[28]-1.84*x[10]*x[30]+1.56*x[10]*x[31]-0.26*x[10]*x[32]+1.92*x[10]*x[34]-0.18*x[10]*x[38]+1.9*x[11]*x[14]-0.04*x[11]*x[13]+0.72*x[11]*x[19]-0.48*x[11]*x[23]-0.62*x[11]*x[26]-0.16*x[11]*x[27]+0.2*x[11]*x[28]+0.32*x[11]*x[29]+1.02*x[11]*x[32]-0.52*x[11]*x[34]-1.44*x[11]*x[35]+1.9*x[11]*x[36]+0.76*x[11]*x[38]+1.06*x[12]*x[14]-1.2*x[12]*x[16]-0.14*x[12]*x[19]-1.12*x[12]*x[20]-1.06*x[12]*x[21]+0.38*x[12]*x[26]+0.88*x[12]*x[27]-0.8*x[12]*x[28]+x[12]*x[30]+0.3*x[12]*x[32]-1.42*x[12]*x[33]+1.94*x[12]*x[34]-0.08*x[12]*x[36]+0.74*x[13]*x[14]+0.48*x[13]*x[15]+1.2*x[13]*x[16]+0.08*x[13]*x[19]-0.26*x[13]*x[25]-0.02*x[13]*x[27]-0.76*x[13]*x[28]+1.48*x[13]*x[29]-1.04*x[13]*x[34]-1.98*x[13]*x[35]+1.72*x[13]*x[36]-0.54*x[13]*x[37]-1.16*x[13]*x[38]+0.54*x[13]*x[40]-0.64*x[13]*x[41]+0.52*x[14]*x[16]-1.72*x[14]*x[17]+1.38*x[14]*x[18]+1.2*x[14]*x[20]-0.6*x[14]*x[21]-0.08*x[14]*x[22]+1.18*x[14]*x[26]-1.52*x[14]*x[27]-0.04*x[14]*x[32]+1.74*x[14]*x[33]+0.08*x[14]*x[36]+1.36*x[14]*x[38]-1.52*x[14]*x[39]+1.08*x[15]*x[19]-0.74*x[15]*x[18]-0.2*x[15]*x[22]-1.62*x[15]*x[26]+0.56*x[15]*x[27]-0.66*x[15]*x[29]+0.22*x[15]*x[30]+1.44*x[15]*x[31]+0.26*x[15]*x[32]-0.84*x[15]*x[33]-1.14*x[15]*x[36]+0.9*x[15]*x[37]+0.16*x[15]*x[41]+0.8*x[16]*x[17]+0.38*x[16]*x[21]+0.68*x[16]*x[23]-1.88*x[16]*x[24]-1.26*x[16]*x[25]+1.92*x[16]*x[29]+1.08*x[16]*x[31]-0.74*x[16]*x[32]+0.96*x[16]*x[33]+0.46*x[16]*x[34]+0.96*x[16]*x[36]+1.82*x[16]*x[37]+0.54*x[16]*x[38]-1.12*x[16]*x[39]-1.98*x[16]*x[40]-0.86*x[16]*x[41]+0.82*x[17]*x[20]-1.2*x[17]*x[18]-1.3*x[17]*x[21]-1.52*x[17]*x[26]+1.32*x[17]*x[27]+0.86*x[17]*x[29]+1.44*x[17]*x[30]+1.9*x[17]*x[31]-0.5*x[17]*x[32]+1.74*x[17]*x[34]+0.32*x[17]*x[37]-0.74*x[17]*x[39]-0.94*x[17]*x[40]+0.82*x[18]*x[22]-1.22*x[18]*x[23]-2*x[18]*x[24]+0.42*x[18]*x[28]+1.68*x[18]*x[29]+1.6*x[18]*x[30]+0.12*x[18]*x[31]-1.44*x[18]*x[32]+0.66*x[18]*x[33]+1.08*x[18]*x[35]-0.8*x[18]*x[38]-1.44*x[18]*x[39]+0.26*x[18]*x[40]+1.46*x[18]*x[41]+0.6*x[19]*x[20]+1.24*x[19]*x[21]-1.28*x[19]*x[23]+1.16*x[19]*x[24]+1.44*x[19]*x[25]-1.04*x[19]*x[26]-1.82*x[19]*x[32]-0.66*x[19]*x[33]+1.4*x[19]*x[35]-1.22*x[19]*x[36]+1.34*x[19]*x[38]+1.56*x[19]*x[39]+(-1.02*x[20]*x[21])-0.58*x[20]*x[23]+1.2*x[20]*x[25]-1.26*x[20]*x[27]+0.12*x[20]*x[31]+0.82*x[20]*x[33]+1.56*x[20]*x[36]+1.34*x[21]*x[22]+1.54*x[21]*x[23]-1.54*x[21]*x[24]+0.14*x[21]*x[27]-1.46*x[21]*x[28]+0.4*x[21]*x[29]-0.58*x[21]*x[30]-0.66*x[21]*x[31]+1.56*x[21]*x[37]-1.92*x[21]*x[41]+0.18*x[22]*x[23]-1.08*x[22]*x[24]-0.82*x[22]*x[26]-1.46*x[22]*x[29]+0.5*x[22]*x[30]-0.12*x[22]*x[37]-1.64*x[22]*x[38]-1.4*x[22]*x[40]+0.84*x[23]*x[24]+1.8*x[23]*x[27]-1.2*x[23]*x[29]-1.32*x[23]*x[30]-1.94*x[23]*x[36]+1.4*x[23]*x[37]+0.68*x[23]*x[40]+1.2*x[24]*x[26]-0.2*x[24]*x[25]-1.22*x[24]*x[27]+1.88*x[24]*x[28]+1.56*x[24]*x[29]-1.72*x[24]*x[32]+0.18*x[24]*x[34]+0.86*x[24]*x[35]-0.26*x[24]*x[37]+0.08*x[24]*x[39]-0.92*x[24]*x[40]+(-1.66*x[25]*x[27])-0.24*x[25]*x[28]-0.18*x[25]*x[29]+0.74*x[25]*x[30]+1.38*x[25]*x[31]-1.4*x[25]*x[32]-1.16*x[25]*x[35]+0.82*x[25]*x[37]+1.04*x[25]*x[39]-0.5*x[25]*x[40]-0.14*x[25]*x[41]+0.98*x[26]*x[30]-0.72*x[26]*x[28]-1.08*x[26]*x[34]-0.68*x[26]*x[37]-1.84*x[26]*x[41]+1.56*x[27]*x[29]-1.86*x[27]*x[30]+1.36*x[27]*x[32]+1.16*x[27]*x[35]+1.2*x[27]*x[36]-1.1*x[27]*x[37]-1.04*x[27]*x[38]-0.84*x[27]*x[39]+1.82*x[27]*x[41]+0.9*x[28]*x[33]-1.22*x[28]*x[34]-0.9*x[28]*x[36]-1.64*x[28]*x[39]-0.4*x[28]*x[40]-1.66*x[28]*x[41]+(-x[29]*x[34])-0.28*x[29]*x[35]-1.42*x[29]*x[40]+1.42*x[30]*x[34]-1.58*x[30]*x[35]-0.2*x[30]*x[36]+1.86*x[30]*x[41]+0.7*x[31]*x[37]-1.98*x[31]*x[39]+(-1.72*x[32]*x[33])-0.6*x[32]*x[36]-1.14*x[32]*x[38]+0.54*x[32]*x[39]-0.74*x[32]*x[40]+(-1.56*x[33]*x[35])-1.98*x[33]*x[37]+0.1*x[33]*x[40]+1.72*x[34]*x[35]+0.5*x[34]*x[36]-0.36*x[34]*x[37]+1.68*x[34]*x[38]+0.92*x[34]*x[39]-0.38*x[34]*x[40]-1.96*x[36]*x[37]+(-0.94*x[37]*x[39])-0.32*x[37]*x[40]-0.32*x[37]*x[41]-1.34*x[38]*x[40]+(-1.14*x[39]*x[40])-1.7*x[39]*x[41]+0.2*x[40]*x[41]+0.28*x[2]*x[2]+0.25*x[3]*x[3]+0.27*x[8]*x[8]+0.94*x[9]*x[9]+0.35*x[10]*x[10]+0.13*x[11]*x[11]-0.21*x[12]*x[12]+0.38*x[14]*x[14]+0.86*x[16]*x[16]-0.39*x[18]*x[18]-0.24*x[19]*x[19]-0.32*x[22]*x[22]+0.13*x[23]*x[23]-0.72*x[24]*x[24]+0.22*x[29]*x[29]-0.54*x[32]*x[32]-0.02*x[33]*x[33]-0.31*x[34]*x[34]+0.02*x[35]*x[35]-0.38*x[38]*x[38]+0.16*x[39]*x[39]-0.48*x[41]*x[41]+0.49*x[2]-0.24*x[3]-0.45*x[4]-0.17*x[5]-0.66*x[6]+0.29*x[7]-0.67*x[8]+0.32*x[9]+0.57*x[10]-0.42*x[11]+0.23*x[12]+0.18*x[13]-0.95*x[14]-0.89*x[15]+0.6*x[16]-0.57*x[17]-0.08*x[18]-0.17*x[19]+0.99*x[20]-0.51*x[21]+0.84*x[22]-0.99*x[23]+0.5*x[24]+0.58*x[25]+0.39*x[26]-0.76*x[27]+0.99*x[28]+0.97*x[29]+0.89*x[30]-0.79*x[31]+0.48*x[32]-0.99*x[33]+0.44*x[34]+0.67*x[35]+0.78*x[36]-0.79*x[37]-0.28*x[38]-0.7*x[39]-0.57*x[40]+0.89*x[41] <= 94.57)
@constraint(m, e3, 0.45*x[2]-0.98*x[3]-0.1*x[4]-0.04*x[5]+0.34*x[6]-0.29*x[7]-0.51*x[8]+0.05*x[9]+0.72*x[10]-0.23*x[11]+0.99*x[12]+0.67*x[13]-0.99*x[14]+0.86*x[15]-0.58*x[16]-0.33*x[17]-0.11*x[18]+0.2*x[19]-0.7*x[20]-0.08*x[21]+0.55*x[22]+0.41*x[23]+0.05*x[24]-0.59*x[25]-0.04*x[26]-0.71*x[27]+0.11*x[28]-0.04*x[29]-0.2*x[30]-0.08*x[31]+0.73*x[32]+0.12*x[33]+0.14*x[34]+0.76*x[35]-0.64*x[36]-0.4*x[37]-0.68*x[38]+0.89*x[39]+0.9*x[40]-0.48*x[41] == -0.17)
@constraint(m, e4, -0.03*x[2]-0.56*x[3]-0.48*x[4]-0.14*x[5]+x[6]-0.03*x[7]+0.12*x[8]+0.46*x[9]-0.23*x[10]+0.1*x[11]+0.81*x[12]+0.16*x[13]-0.33*x[14]+0.88*x[15]-0.59*x[16]-0.84*x[17]+0.34*x[18]-0.2*x[19]-0.55*x[20]+0.96*x[21]+0.26*x[22]+0.15*x[23]-0.22*x[24]+0.4*x[25]+0.51*x[26]+0.12*x[27]+0.4*x[28]+0.82*x[29]-0.18*x[30]+0.93*x[31]+0.08*x[32]-0.85*x[33]+0.54*x[34]+0.39*x[35]+0.78*x[36]-0.97*x[38]-0.83*x[39]+0.66*x[40]-0.13*x[41] == 0.96)
@constraint(m, e5, 0.49*x[2]+0.32*x[3]+0.07*x[4]-0.27*x[5]-0.87*x[6]-0.22*x[7]+0.74*x[8]+0.95*x[9]-0.14*x[10]+0.09*x[11]-0.53*x[12]+0.41*x[13]-0.76*x[14]-0.86*x[15]-0.78*x[16]-0.8*x[17]-0.78*x[18]+0.8*x[19]+0.9*x[20]+0.27*x[21]+0.34*x[22]-0.81*x[23]+0.26*x[24]+0.44*x[25]-0.9*x[26]-0.55*x[27]+0.07*x[28]-0.63*x[29]-0.7*x[30]+0.89*x[31]-0.74*x[32]+0.83*x[33]-0.5*x[34]-0.49*x[35]-0.68*x[36]-0.78*x[37]-0.68*x[38]-0.9*x[39]-0.6*x[40]-0.85*x[41] == 0.98)
@constraint(m, e6, -0.54*x[2]+0.54*x[3]-0.87*x[4]+0.96*x[5]+0.75*x[6]+0.71*x[7]-0.64*x[8]-0.29*x[9]-0.84*x[10]-0.26*x[11]+0.95*x[12]-0.92*x[13]+0.58*x[14]-0.95*x[15]+0.69*x[16]+0.9*x[17]+0.46*x[18]+0.95*x[19]-0.34*x[20]+0.34*x[21]+0.06*x[22]-0.85*x[23]-0.43*x[24]+0.2*x[25]+0.38*x[26]+0.2*x[27]+0.95*x[28]-0.45*x[29]-0.86*x[30]+0.8*x[31]-0.3*x[32]-0.88*x[33]+0.28*x[34]+0.01*x[35]-0.66*x[36]+0.39*x[37]+0.14*x[38]-0.66*x[39]+0.9*x[40]-0.06*x[41] == 0.38)
@constraint(m, e7, -0.86*x[2]+x[3]+0.25*x[4]-0.69*x[5]-0.14*x[6]+0.2*x[7]-0.33*x[8]+0.27*x[9]+0.21*x[10]+0.62*x[11]+0.68*x[12]+0.36*x[13]-0.59*x[14]+0.03*x[15]-0.05*x[16]-0.84*x[17]+0.45*x[18]-0.56*x[19]-0.03*x[20]-0.94*x[21]+0.33*x[22]+0.27*x[23]-0.58*x[24]+0.91*x[25]+0.02*x[26]-0.05*x[27]+0.46*x[28]-0.95*x[29]-0.94*x[30]-0.14*x[31]-0.56*x[32]+0.6*x[33]-0.76*x[34]-0.64*x[35]-0.66*x[36]-0.13*x[37]-0.6*x[38]-0.35*x[39]-0.28*x[40]+0.26*x[41] == 0.49)
@constraint(m, e8, -0.88*x[2]+0.03*x[3]-0.83*x[4]+0.8*x[5]+0.95*x[6]+0.58*x[7]-0.81*x[8]+0.93*x[9]+0.8*x[10]-0.07*x[11]-0.49*x[12]+0.08*x[13]+0.69*x[14]-0.81*x[15]-0.88*x[16]+0.7*x[17]+0.95*x[18]+0.95*x[19]-0.2*x[20]+0.58*x[21]-0.44*x[22]-0.62*x[23]+0.19*x[24]+0.56*x[25]-0.68*x[26]+0.31*x[27]-0.28*x[28]+0.44*x[30]+0.73*x[31]-0.27*x[32]+0.33*x[33]+0.69*x[34]-0.85*x[35]-0.75*x[36]+0.93*x[37]+0.02*x[38]-0.31*x[39]-0.47*x[40]-0.85*x[41] == 0.22)
@constraint(m, e9, 0.66*x[2]+0.49*x[3]+0.46*x[4]-0.77*x[5]+0.87*x[6]+0.5*x[7]+0.76*x[8]-0.32*x[9]+0.68*x[10]-0.25*x[11]+0.45*x[12]+0.93*x[13]+0.05*x[14]-0.09*x[15]+0.43*x[16]-0.35*x[17]-0.18*x[18]-0.56*x[19]+0.09*x[20]+0.05*x[21]+0.69*x[22]-0.6*x[23]-0.88*x[24]+0.22*x[25]-0.08*x[26]+0.81*x[27]+0.27*x[28]+0.77*x[29]+0.62*x[30]+0.6*x[31]+0.69*x[32]+0.34*x[33]+0.01*x[34]+0.27*x[35]+0.46*x[36]-0.64*x[37]-0.86*x[38]+0.74*x[39]+0.57*x[40]+0.09*x[41] == 0.15)
@constraint(m, e10, -0.1*x[2]+0.5*x[3]-0.31*x[4]+0.63*x[5]+0.18*x[6]+0.97*x[7]+0.46*x[8]+0.37*x[9]+0.82*x[10]+0.02*x[11]+0.3*x[12]-0.33*x[13]+0.4*x[14]-0.44*x[15]+0.03*x[16]+0.43*x[17]-0.76*x[18]-0.94*x[19]+0.83*x[20]+0.41*x[21]-0.59*x[22]-0.57*x[23]+0.97*x[24]-0.31*x[25]+0.78*x[27]+0.76*x[28]+0.94*x[29]-0.66*x[30]+0.5*x[31]-0.05*x[32]+0.16*x[33]-0.03*x[34]-0.21*x[35]+0.62*x[36]-0.37*x[37]+0.01*x[38]+0.67*x[39]-0.24*x[40]-0.93*x[41] == 0.07)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 