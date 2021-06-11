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
@NLconstraint(m, e1, -(1.64*x[2]*x[9]-0.3*x[2]*x[5]+0.94*x[2]*x[12]+0.54*x[2]*x[15]-1.5*x[2]*x[17]-0.82*x[2]*x[20]-0.98*x[2]*x[22]-1.08*x[2]*x[23]-1.52*x[2]*x[24]+1.96*x[2]*x[28]-0.06*x[2]*x[30]-1.46*x[2]*x[31]-1.32*x[2]*x[33]+1.56*x[2]*x[34]+1.32*x[2]*x[36]-1.38*x[2]*x[37]+0.5*x[2]*x[38]+(-0.84*x[3]*x[4])-1.58*x[3]*x[9]+0.9*x[3]*x[11]+0.24*x[3]*x[13]+1.92*x[3]*x[14]+0.86*x[3]*x[15]+0.44*x[3]*x[19]+0.82*x[3]*x[21]+1.96*x[3]*x[24]+1.64*x[3]*x[25]-1.06*x[3]*x[27]+1.02*x[3]*x[28]+1.52*x[3]*x[31]-0.02*x[3]*x[32]+0.56*x[3]*x[40]+0.1*x[4]*x[5]+1.96*x[4]*x[6]+1.28*x[4]*x[7]-0.82*x[4]*x[8]-0.38*x[4]*x[12]+1.6*x[4]*x[13]+1.96*x[4]*x[20]-0.9*x[4]*x[21]-1.08*x[4]*x[23]-0.8*x[4]*x[27]-0.8*x[4]*x[29]-1.92*x[4]*x[30]-0.32*x[4]*x[33]-0.86*x[4]*x[35]-1.04*x[4]*x[36]-1.18*x[4]*x[37]+0.22*x[4]*x[38]-1.48*x[4]*x[39]+0.92*x[4]*x[40]+0.66*x[5]*x[6]+1.46*x[5]*x[8]+2*x[5]*x[9]-0.8*x[5]*x[10]+1.56*x[5]*x[14]+0.62*x[5]*x[15]-0.52*x[5]*x[17]+0.7*x[5]*x[23]+1.8*x[5]*x[24]+1.6*x[5]*x[27]-1.34*x[5]*x[29]-1.4*x[5]*x[30]-1.22*x[5]*x[31]+0.94*x[5]*x[35]+0.64*x[5]*x[36]-x[5]*x[37]+1.58*x[6]*x[8]-1.98*x[6]*x[10]+1.38*x[6]*x[12]-1.38*x[6]*x[16]-0.46*x[6]*x[17]+0.84*x[6]*x[19]-0.46*x[6]*x[23]-0.04*x[6]*x[24]+1.1*x[6]*x[26]+0.96*x[6]*x[28]-0.58*x[6]*x[29]-0.2*x[6]*x[30]-0.14*x[6]*x[31]+0.48*x[6]*x[34]+1.48*x[6]*x[37]-1.9*x[6]*x[38]-1.82*x[6]*x[39]+1.36*x[6]*x[40]+0.56*x[7]*x[8]+1.36*x[7]*x[9]+1.46*x[7]*x[10]-0.84*x[7]*x[19]-1.08*x[7]*x[21]-1.1*x[7]*x[23]-0.48*x[7]*x[27]+1.42*x[7]*x[28]-1.4*x[7]*x[30]+1.4*x[7]*x[35]-0.82*x[7]*x[36]-1.48*x[7]*x[37]+0.84*x[7]*x[38]-0.36*x[7]*x[39]+0.9*x[7]*x[40]-1.12*x[7]*x[41]+(-1.22*x[8]*x[10])-1.7*x[8]*x[14]+1.94*x[8]*x[15]+0.86*x[8]*x[17]-1.56*x[8]*x[18]-1.78*x[8]*x[22]+1.04*x[8]*x[23]+1.04*x[8]*x[24]-0.88*x[8]*x[27]-0.22*x[8]*x[29]-0.84*x[8]*x[30]-1.32*x[8]*x[32]-1.58*x[8]*x[33]+1.12*x[8]*x[34]+1.08*x[8]*x[35]+0.94*x[8]*x[37]+0.32*x[8]*x[38]+1.32*x[8]*x[39]-0.1*x[8]*x[40]-1.94*x[8]*x[41]+1.38*x[9]*x[12]-1.64*x[9]*x[10]-1.16*x[9]*x[13]-0.42*x[9]*x[15]-0.64*x[9]*x[16]-0.62*x[9]*x[17]+0.74*x[9]*x[19]+1.74*x[9]*x[21]+1.64*x[9]*x[25]+1.82*x[9]*x[26]+1.48*x[9]*x[34]-0.36*x[9]*x[36]+1.64*x[9]*x[38]+0.18*x[9]*x[39]+0.98*x[9]*x[41]+1.56*x[10]*x[11]-1.32*x[10]*x[13]-1.16*x[10]*x[16]+1.46*x[10]*x[21]+1.9*x[10]*x[24]+1.3*x[10]*x[25]-0.3*x[10]*x[28]+1.52*x[10]*x[31]-0.82*x[10]*x[34]-1.54*x[10]*x[35]-0.38*x[10]*x[37]+0.24*x[10]*x[40]+(-0.86*x[11]*x[12])-1.38*x[11]*x[16]-0.24*x[11]*x[17]-1.64*x[11]*x[18]-1.98*x[11]*x[23]-0.74*x[11]*x[24]-1.08*x[11]*x[29]+0.62*x[11]*x[30]-0.12*x[11]*x[33]+0.22*x[11]*x[37]+1.1*x[11]*x[38]-1.92*x[11]*x[40]-0.94*x[11]*x[41]+(-0.4*x[12]*x[13])-0.12*x[12]*x[14]+1.3*x[12]*x[16]-1.06*x[12]*x[17]+1.28*x[12]*x[18]+1.94*x[12]*x[19]-1.9*x[12]*x[22]+0.8*x[12]*x[25]+1.58*x[12]*x[26]+1.54*x[12]*x[27]+1.54*x[12]*x[30]-0.7*x[12]*x[33]-0.56*x[12]*x[34]-1.02*x[12]*x[37]+1.04*x[12]*x[41]+(-1.82*x[13]*x[14])-0.56*x[13]*x[15]-0.14*x[13]*x[16]+1.9*x[13]*x[25]-0.5*x[13]*x[26]+0.62*x[13]*x[27]-0.84*x[13]*x[29]-0.1*x[13]*x[31]+1.14*x[13]*x[36]+1.24*x[13]*x[37]+0.12*x[13]*x[38]+1.94*x[14]*x[15]-0.98*x[14]*x[16]-0.66*x[14]*x[19]-0.34*x[14]*x[20]+x[14]*x[21]+1.42*x[14]*x[23]+1.7*x[14]*x[25]-1.66*x[14]*x[26]+0.3*x[14]*x[27]-1.58*x[14]*x[29]+0.04*x[14]*x[35]+1.72*x[14]*x[37]-0.96*x[14]*x[38]-1.96*x[14]*x[39]+1.88*x[14]*x[40]+0.68*x[14]*x[41]+0.1*x[15]*x[16]-1.24*x[15]*x[18]+0.14*x[15]*x[19]+1.82*x[15]*x[20]-1.5*x[15]*x[21]-1.76*x[15]*x[24]+0.32*x[15]*x[25]-0.38*x[15]*x[26]+1.16*x[15]*x[27]-0.46*x[15]*x[29]-0.62*x[15]*x[32]-0.5*x[15]*x[36]+0.88*x[15]*x[37]-1.6*x[15]*x[38]+(-1.58*x[16]*x[17])-1.92*x[16]*x[21]-0.76*x[16]*x[22]+0.56*x[16]*x[23]-1.32*x[16]*x[24]+1.84*x[16]*x[27]-0.78*x[16]*x[31]+0.06*x[16]*x[32]-0.54*x[16]*x[33]-0.22*x[16]*x[36]-0.76*x[16]*x[39]+1.8*x[16]*x[41]+(-0.98*x[17]*x[20])-0.38*x[17]*x[21]-1.98*x[17]*x[24]+0.7*x[17]*x[28]-0.42*x[17]*x[29]-0.18*x[17]*x[31]+0.7*x[17]*x[32]-0.2*x[17]*x[34]-1.2*x[17]*x[35]+0.52*x[17]*x[36]-0.3*x[17]*x[37]+1.44*x[18]*x[21]+0.6*x[18]*x[23]-0.74*x[18]*x[24]+1.1*x[18]*x[26]+1.54*x[18]*x[27]+1.66*x[18]*x[28]-0.06*x[18]*x[29]-0.94*x[18]*x[31]+1.66*x[18]*x[35]+0.46*x[18]*x[38]-0.56*x[18]*x[40]+1.6*x[18]*x[41]+1.24*x[19]*x[22]+0.02*x[19]*x[26]+1.08*x[19]*x[28]+1.26*x[19]*x[29]+0.82*x[19]*x[31]-1.42*x[19]*x[34]-0.8*x[19]*x[35]+1.16*x[19]*x[39]+0.52*x[19]*x[40]-0.58*x[19]*x[41]+0.68*x[20]*x[24]+1.56*x[20]*x[25]-1.44*x[20]*x[26]-1.28*x[20]*x[28]+1.7*x[20]*x[29]-0.1*x[20]*x[30]-1.34*x[20]*x[33]-0.96*x[20]*x[40]+(-1.08*x[21]*x[22])-1.06*x[21]*x[23]-1.86*x[21]*x[25]-1.74*x[21]*x[27]+1.8*x[21]*x[29]-0.36*x[21]*x[30]-1.18*x[21]*x[31]+1.94*x[21]*x[33]+0.06*x[21]*x[41]+1.84*x[22]*x[23]+1.16*x[22]*x[24]+1.34*x[22]*x[25]+0.68*x[22]*x[28]+0.68*x[22]*x[29]-0.8*x[22]*x[33]+1.78*x[22]*x[34]-0.82*x[22]*x[35]-1.6*x[22]*x[37]-0.36*x[22]*x[39]+0.76*x[23]*x[25]-0.94*x[23]*x[24]-0.4*x[23]*x[26]+0.68*x[23]*x[30]-0.68*x[23]*x[31]-1.16*x[23]*x[32]+1.88*x[23]*x[34]-1.56*x[23]*x[36]+1.66*x[23]*x[39]-1.3*x[23]*x[40]-0.92*x[23]*x[41]+0.34*x[24]*x[26]+0.16*x[24]*x[29]+1.26*x[24]*x[30]+1.18*x[24]*x[32]+1.16*x[24]*x[33]-1.52*x[24]*x[35]+1.42*x[25]*x[30]-1.46*x[25]*x[26]+0.66*x[25]*x[31]+1.9*x[25]*x[32]+0.64*x[25]*x[37]-1.92*x[25]*x[39]-0.24*x[25]*x[41]+(-0.24*x[26]*x[27])-1.88*x[26]*x[29]-0.72*x[26]*x[30]+0.3*x[26]*x[31]+1.94*x[26]*x[32]-2*x[26]*x[33]-0.9*x[26]*x[37]-1.42*x[26]*x[38]+0.6*x[26]*x[40]-1.1*x[26]*x[41]+1.22*x[27]*x[36]-1.98*x[27]*x[37]+1.58*x[27]*x[39]+0.92*x[27]*x[40]+0.42*x[27]*x[41]+(-2*x[28]*x[31])-0.28*x[28]*x[32]+0.02*x[28]*x[35]-0.4*x[28]*x[36]+1.28*x[28]*x[37]+0.96*x[29]*x[30]-0.72*x[29]*x[31]-0.06*x[29]*x[32]-1.42*x[29]*x[33]-0.2*x[29]*x[35]-1.94*x[29]*x[37]+1.28*x[29]*x[41]+0.98*x[30]*x[32]+0.08*x[30]*x[33]-1.38*x[30]*x[37]+1.42*x[30]*x[38]+1.28*x[30]*x[39]+1.12*x[30]*x[40]-0.58*x[30]*x[41]+1.16*x[31]*x[34]-0.78*x[31]*x[32]-0.56*x[31]*x[36]+0.66*x[31]*x[38]-0.16*x[31]*x[40]+0.88*x[32]*x[35]-1.1*x[32]*x[34]+1.98*x[32]*x[36]-x[32]*x[38]-0.14*x[32]*x[39]+0.78*x[33]*x[36]-1.48*x[33]*x[35]+1.8*x[33]*x[37]-0.38*x[33]*x[39]-1.5*x[33]*x[40]+(-0.3*x[34]*x[35])-0.58*x[34]*x[36]+0.94*x[34]*x[39]+0.68*x[35]*x[36]+1.64*x[35]*x[37]-1.12*x[35]*x[40]+1.76*x[35]*x[41]+1.9*x[36]*x[39]+0.98*x[36]*x[41]+0.34*x[37]*x[38]+0.42*x[37]*x[39]-0.04*x[37]*x[41]+0.38*x[38]*x[41]+1.96*x[39]*x[41]+1.48*x[40]*x[41]+(-0.63*x[3]*x[3])-0.3*x[4]*x[4]+0.79*x[5]*x[5]+0.96*x[9]*x[9]+0.15*x[10]*x[10]+0.97*x[12]*x[12]-0.7*x[14]*x[14]+0.7*x[16]*x[16]-0.61*x[17]*x[17]-0.72*x[22]*x[22]-0.96*x[24]*x[24]-0.61*x[25]*x[25]-0.7*x[27]*x[27]-0.55*x[28]*x[28]-0.42*x[32]*x[32]-0.53*x[34]*x[34]+0.97*x[35]*x[35]-x[36]*x[36]+0.61*x[38]*x[38]-0.29*x[41]*x[41]-0.06*x[2]+0.31*x[3]-0.97*x[4]+0.52*x[5]-0.79*x[6]+0.33*x[7]+0.58*x[8]+0.96*x[9]+0.37*x[10]+0.96*x[11]+0.04*x[12]-0.09*x[13]+0.06*x[14]+0.08*x[15]+x[16]-0.6*x[17]-0.79*x[18]-0.69*x[19]+0.31*x[20]-0.98*x[21]+0.57*x[22]+0.18*x[23]+0.74*x[24]-0.27*x[25]+0.62*x[26]-0.7*x[27]-0.03*x[28]+0.37*x[29]+0.88*x[30]-0.62*x[31]+0.32*x[32]+0.41*x[33]+0.13*x[34]+0.11*x[35]+0.12*x[36]+0.46*x[37]+0.51*x[38]-0.33*x[39]+0.52*x[40]-0.7*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 0.34*x[2]*x[4]+1.36*x[2]*x[5]+1.22*x[2]*x[6]+0.66*x[2]*x[8]-1.38*x[2]*x[9]+0.4*x[2]*x[12]+0.52*x[2]*x[16]-0.08*x[2]*x[20]+0.5*x[2]*x[21]+1.72*x[2]*x[25]+0.52*x[2]*x[26]-1.32*x[2]*x[29]-0.34*x[2]*x[31]-1.88*x[2]*x[33]+1.06*x[2]*x[37]+1.28*x[2]*x[41]+1.6*x[3]*x[6]-1.3*x[3]*x[5]+1.8*x[3]*x[7]+1.4*x[3]*x[8]+0.24*x[3]*x[9]+0.18*x[3]*x[13]-1.9*x[3]*x[14]+0.7*x[3]*x[16]+1.28*x[3]*x[18]-0.4*x[3]*x[24]-x[3]*x[25]-0.8*x[3]*x[26]-x[3]*x[27]-1.66*x[3]*x[30]-1.04*x[3]*x[32]-1.9*x[3]*x[37]-1.24*x[3]*x[38]+1.24*x[4]*x[6]-0.36*x[4]*x[7]-1.06*x[4]*x[9]+1.14*x[4]*x[12]-0.74*x[4]*x[13]+1.58*x[4]*x[15]+0.34*x[4]*x[17]+0.2*x[4]*x[19]+0.94*x[4]*x[22]+0.62*x[4]*x[23]-1.66*x[4]*x[24]-1.86*x[4]*x[25]+0.3*x[4]*x[29]+1.14*x[4]*x[30]-0.1*x[4]*x[31]+1.38*x[4]*x[32]-1.36*x[4]*x[33]-0.5*x[4]*x[36]-1.84*x[4]*x[39]+0.4*x[4]*x[40]+0.12*x[5]*x[10]-0.06*x[5]*x[6]-0.7*x[5]*x[13]-0.38*x[5]*x[15]-0.28*x[5]*x[18]-1.5*x[5]*x[20]+1.46*x[5]*x[21]-1.28*x[5]*x[22]-0.48*x[5]*x[24]-0.56*x[5]*x[28]-1.1*x[5]*x[29]+1.16*x[5]*x[30]-0.98*x[5]*x[32]-0.06*x[5]*x[34]+1.04*x[5]*x[35]+0.36*x[5]*x[39]+0.42*x[5]*x[40]+1.44*x[6]*x[7]+0.26*x[6]*x[9]-0.78*x[6]*x[10]-0.78*x[6]*x[11]+0.7*x[6]*x[12]+1.52*x[6]*x[13]-1.58*x[6]*x[15]-0.3*x[6]*x[16]+0.46*x[6]*x[17]-0.66*x[6]*x[21]+1.08*x[6]*x[24]+1.12*x[6]*x[28]+1.56*x[6]*x[29]+0.98*x[6]*x[31]-1.42*x[6]*x[41]+0.34*x[7]*x[9]+1.86*x[7]*x[13]-1.9*x[7]*x[15]-0.58*x[7]*x[17]-0.38*x[7]*x[18]-0.64*x[7]*x[21]+0.96*x[7]*x[22]+1.06*x[7]*x[25]-1.48*x[7]*x[26]+0.42*x[7]*x[27]-1.3*x[7]*x[28]+1.86*x[7]*x[32]-0.66*x[7]*x[37]-0.24*x[7]*x[39]+1.76*x[7]*x[40]-0.28*x[7]*x[41]+1.02*x[8]*x[9]-1.24*x[8]*x[12]-1.18*x[8]*x[14]+1.72*x[8]*x[15]-1.48*x[8]*x[16]-0.48*x[8]*x[17]-0.88*x[8]*x[21]-0.2*x[8]*x[22]+0.8*x[8]*x[25]-1.1*x[8]*x[27]+1.7*x[8]*x[29]+0.04*x[8]*x[30]-0.08*x[8]*x[31]-1.46*x[8]*x[33]-1.86*x[8]*x[34]-1.02*x[8]*x[35]+1.5*x[8]*x[39]+0.74*x[8]*x[41]+1.44*x[9]*x[10]+0.34*x[9]*x[16]-0.86*x[9]*x[20]-1.5*x[9]*x[21]+0.02*x[9]*x[24]+0.72*x[9]*x[26]-1.96*x[9]*x[27]+1.44*x[9]*x[29]+1.06*x[9]*x[31]+0.54*x[9]*x[32]-1.78*x[9]*x[34]+1.24*x[9]*x[38]-0.6*x[9]*x[39]+1.26*x[10]*x[13]+1.22*x[10]*x[14]-1.7*x[10]*x[25]+1.42*x[10]*x[26]+0.46*x[10]*x[28]-0.02*x[10]*x[30]-1.9*x[10]*x[33]+0.44*x[10]*x[34]+1.16*x[10]*x[35]-1.66*x[10]*x[36]-1.12*x[10]*x[38]-0.98*x[10]*x[40]+1.06*x[10]*x[41]+0.72*x[11]*x[14]-1.82*x[11]*x[13]-0.44*x[11]*x[15]-0.96*x[11]*x[17]-0.3*x[11]*x[27]+0.3*x[11]*x[28]+1.9*x[11]*x[29]-0.74*x[11]*x[30]+1.36*x[11]*x[31]+1.08*x[11]*x[34]-0.16*x[11]*x[35]+0.02*x[11]*x[38]-1.62*x[11]*x[39]+0.92*x[12]*x[13]-0.26*x[12]*x[14]-1.02*x[12]*x[18]-0.36*x[12]*x[19]+0.1*x[12]*x[20]+0.42*x[12]*x[23]-0.6*x[12]*x[26]+1.3*x[12]*x[28]+1.06*x[12]*x[29]-0.14*x[12]*x[31]-1.76*x[12]*x[34]+0.1*x[12]*x[35]-1.9*x[12]*x[37]-0.6*x[12]*x[41]+1.18*x[13]*x[17]-0.06*x[13]*x[14]-1.84*x[13]*x[18]-0.46*x[13]*x[20]-0.7*x[13]*x[21]-0.9*x[13]*x[22]-1.22*x[13]*x[23]-1.66*x[13]*x[24]-1.4*x[13]*x[25]+0.88*x[13]*x[27]+0.5*x[13]*x[28]+0.18*x[13]*x[29]+0.08*x[13]*x[31]-1.54*x[13]*x[32]-0.52*x[13]*x[33]-1.54*x[13]*x[34]-0.64*x[13]*x[35]-1.48*x[13]*x[36]+0.52*x[13]*x[37]-1.78*x[13]*x[39]-1.36*x[13]*x[41]+0.9*x[14]*x[15]+1.1*x[14]*x[16]+0.32*x[14]*x[17]-1.5*x[14]*x[19]+1.1*x[14]*x[20]+0.98*x[14]*x[21]+0.32*x[14]*x[29]+0.84*x[14]*x[30]-0.9*x[14]*x[31]-1.56*x[14]*x[32]+1.68*x[14]*x[33]-1.96*x[14]*x[35]+1.84*x[15]*x[19]-1.12*x[15]*x[17]-1.66*x[15]*x[20]-1.24*x[15]*x[21]+0.3*x[15]*x[23]-1.78*x[15]*x[24]+0.14*x[15]*x[29]-1.28*x[15]*x[33]-1.62*x[15]*x[34]+1.14*x[15]*x[36]-0.36*x[15]*x[37]+0.34*x[15]*x[39]+0.54*x[15]*x[40]-0.04*x[15]*x[41]+1.86*x[16]*x[17]-0.06*x[16]*x[20]+0.94*x[16]*x[23]+0.74*x[16]*x[25]+0.36*x[16]*x[26]-1.04*x[16]*x[28]+0.72*x[16]*x[34]-1.06*x[16]*x[35]-0.58*x[16]*x[36]+0.06*x[16]*x[37]-0.56*x[16]*x[38]-0.12*x[16]*x[40]+1.42*x[16]*x[41]+1.6*x[17]*x[20]-1.6*x[17]*x[21]+0.56*x[17]*x[25]-1.24*x[17]*x[28]+1.62*x[17]*x[29]-1.24*x[17]*x[30]+1.58*x[17]*x[35]+0.92*x[17]*x[37]-1.32*x[17]*x[38]+1.88*x[17]*x[39]+(-1.84*x[18]*x[19])-1.06*x[18]*x[21]+0.1*x[18]*x[22]-1.88*x[18]*x[24]-1.98*x[18]*x[25]-0.42*x[18]*x[27]-1.82*x[18]*x[29]+0.7*x[18]*x[30]+0.92*x[18]*x[31]+1.16*x[18]*x[32]-0.14*x[18]*x[37]+0.1*x[18]*x[38]+1.66*x[18]*x[39]-0.5*x[18]*x[40]+1.26*x[19]*x[22]-1.24*x[19]*x[24]-0.42*x[19]*x[25]-1.3*x[19]*x[26]-1.34*x[19]*x[28]-0.38*x[19]*x[30]+0.92*x[19]*x[31]+0.98*x[19]*x[33]+1.98*x[19]*x[34]-1.24*x[19]*x[36]+1.04*x[19]*x[37]-0.36*x[19]*x[38]+1.26*x[19]*x[41]+1.32*x[20]*x[24]-1.1*x[20]*x[21]+0.18*x[20]*x[25]+1.44*x[20]*x[27]+0.98*x[20]*x[28]-0.98*x[20]*x[29]-0.88*x[20]*x[30]+0.16*x[20]*x[31]-1.92*x[20]*x[33]-1.58*x[20]*x[34]-1.04*x[20]*x[36]+0.76*x[20]*x[38]+1.06*x[20]*x[41]+0.88*x[21]*x[25]-1.98*x[21]*x[22]-1.96*x[21]*x[26]-0.02*x[21]*x[29]-0.38*x[21]*x[31]+0.24*x[21]*x[32]-0.88*x[21]*x[38]-1.68*x[21]*x[39]-1.58*x[21]*x[40]+0.84*x[22]*x[24]+1.6*x[22]*x[25]-1.6*x[22]*x[29]-0.02*x[22]*x[30]+1.94*x[22]*x[32]+0.78*x[22]*x[33]-0.48*x[22]*x[34]-0.36*x[22]*x[36]+1.76*x[22]*x[38]-1.42*x[22]*x[39]-1.88*x[22]*x[41]+(-1.48*x[23]*x[25])-1.5*x[23]*x[26]-0.88*x[23]*x[32]+1.42*x[23]*x[33]+1.18*x[23]*x[37]-0.2*x[23]*x[38]+1.96*x[23]*x[40]-0.82*x[23]*x[41]+(-0.38*x[24]*x[25])-0.56*x[24]*x[28]-1.42*x[24]*x[29]+0.08*x[24]*x[30]-0.08*x[24]*x[31]+1.4*x[24]*x[32]+1.22*x[24]*x[33]+1.62*x[24]*x[35]-x[24]*x[37]+1.6*x[24]*x[38]+x[24]*x[39]-1.48*x[24]*x[40]+1.54*x[25]*x[27]+1.36*x[25]*x[29]-1.6*x[25]*x[31]-1.42*x[25]*x[32]-0.96*x[25]*x[36]+1.86*x[25]*x[39]-0.68*x[25]*x[40]+1.84*x[26]*x[31]-1.7*x[26]*x[30]-0.2*x[26]*x[33]-1.9*x[26]*x[34]-0.74*x[26]*x[41]+(-1.32*x[27]*x[28])-1.64*x[27]*x[29]-0.4*x[27]*x[31]-1.72*x[27]*x[33]+0.44*x[27]*x[35]+1.38*x[27]*x[37]-1.5*x[27]*x[40]-0.22*x[27]*x[41]+(-1.02*x[28]*x[31])-1.74*x[28]*x[32]-0.62*x[28]*x[33]-1.92*x[28]*x[34]+1.04*x[28]*x[35]+1.24*x[28]*x[36]-0.54*x[28]*x[37]+1.34*x[29]*x[36]-0.26*x[29]*x[31]-1.52*x[29]*x[39]+1.64*x[29]*x[41]+0.28*x[30]*x[33]-0.6*x[30]*x[35]+0.08*x[30]*x[39]+0.22*x[31]*x[33]-1.76*x[31]*x[32]+0.08*x[31]*x[35]-0.3*x[31]*x[36]-1.66*x[31]*x[39]+0.98*x[32]*x[34]-1.76*x[32]*x[35]+0.04*x[32]*x[37]-1.2*x[32]*x[38]-0.56*x[32]*x[41]+0.76*x[33]*x[35]-1.9*x[33]*x[36]+0.56*x[33]*x[38]-1.24*x[33]*x[39]+0.64*x[34]*x[35]-0.7*x[34]*x[38]+1.02*x[34]*x[40]+0.68*x[35]*x[36]-1.86*x[36]*x[40]+1.36*x[37]*x[38]-1.4*x[37]*x[39]-0.76*x[37]*x[40]+1.76*x[40]*x[41]+(-0.1*x[6]*x[6])-0.66*x[7]*x[7]-0.77*x[8]*x[8]-0.35*x[9]*x[9]+0.15*x[15]*x[15]-0.5*x[19]*x[19]+0.35*x[21]*x[21]-0.79*x[25]*x[25]-0.05*x[26]*x[26]-0.07*x[27]*x[27]-0.8*x[28]*x[28]+0.67*x[30]*x[30]+0.77*x[32]*x[32]-0.93*x[33]*x[33]-0.89*x[36]*x[36]+0.58*x[37]*x[37]+0.51*x[38]*x[38]-0.53*x[39]*x[39]-0.2*x[40]*x[40]+0.38*x[41]*x[41]+0.74*x[2]-0.07*x[3]-0.39*x[4]+0.03*x[5]+0.66*x[6]-0.1*x[7]+0.32*x[8]-0.91*x[9]-0.07*x[10]+0.17*x[11]-0.12*x[12]+0.48*x[13]-0.41*x[14]-0.6*x[15]+0.75*x[16]-0.41*x[17]-0.34*x[18]+0.02*x[19]+0.71*x[20]-0.68*x[21]-0.34*x[22]+0.71*x[23]+0.8*x[24]+0.8*x[25]-0.9*x[26]-0.66*x[27]-0.33*x[28]+0.25*x[29]+0.66*x[30]-0.23*x[31]+0.9*x[32]+0.11*x[33]+0.51*x[34]-0.44*x[35]+0.11*x[36]-0.18*x[37]-0.31*x[38]+0.91*x[39]+0.23*x[40]-0.4*x[41] <= 34.95)
@constraint(m, e3, 0.22*x[2]-0.68*x[3]-0.29*x[4]-0.46*x[5]+0.91*x[6]+0.61*x[7]-0.17*x[8]-0.05*x[9]-0.28*x[10]-0.14*x[11]-0.48*x[12]-0.93*x[13]+0.9*x[14]-0.28*x[15]-0.11*x[16]+0.92*x[17]-0.58*x[18]-0.97*x[19]+0.16*x[20]-0.6*x[21]-0.17*x[22]+0.94*x[23]+0.28*x[24]+0.32*x[25]-0.61*x[26]-0.5*x[27]-0.18*x[28]+0.09*x[29]+0.55*x[30]+0.71*x[31]-0.26*x[32]+0.42*x[33]+0.67*x[34]-0.51*x[35]-0.94*x[36]-0.13*x[37]+0.96*x[38]+0.91*x[39]-0.03*x[40]-0.75*x[41] == -0.12)
@constraint(m, e4, -0.23*x[2]-0.02*x[3]+0.67*x[4]+0.62*x[5]+0.81*x[6]-0.22*x[7]+0.72*x[8]+0.81*x[9]-0.36*x[10]-0.68*x[11]+0.75*x[12]+0.43*x[13]-0.14*x[14]-0.95*x[15]-0.94*x[16]+0.66*x[17]-0.51*x[18]+0.61*x[19]-0.63*x[20]+0.62*x[21]-0.72*x[22]-0.7*x[23]-0.16*x[24]+0.81*x[25]+0.53*x[26]+x[27]+0.6*x[28]-0.73*x[29]+0.37*x[30]-0.86*x[31]+0.9*x[32]-0.88*x[33]+0.8*x[34]-0.34*x[35]+0.11*x[36]+0.24*x[37]-0.26*x[38]+0.98*x[39]-0.8*x[40]+0.6*x[41] == 0.12)
@constraint(m, e5, 0.85*x[2]-0.77*x[3]-0.9*x[4]+0.07*x[5]-0.99*x[6]-0.6*x[7]+0.39*x[8]-0.3*x[9]-0.69*x[10]+0.35*x[11]-0.81*x[12]-0.42*x[13]-0.79*x[14]-0.65*x[15]+0.46*x[16]-0.91*x[17]+0.09*x[18]+0.48*x[19]+0.43*x[20]+0.74*x[21]+0.86*x[22]-0.99*x[23]-0.25*x[24]+0.43*x[25]-0.86*x[26]-0.8*x[27]+0.14*x[28]-0.04*x[29]+0.94*x[30]-0.34*x[31]+0.42*x[32]+0.55*x[33]+0.09*x[34]-0.42*x[35]-0.95*x[36]+0.9*x[37]+0.97*x[38]+0.1*x[39]+0.56*x[40]-0.66*x[41] == 0.95)
@constraint(m, e6, 0.04*x[2]+0.71*x[3]+0.04*x[4]+0.31*x[5]-0.55*x[6]+0.92*x[7]-0.3*x[8]+0.32*x[9]+0.71*x[10]-0.05*x[11]+0.82*x[12]-0.69*x[13]+0.34*x[14]+0.53*x[15]-0.32*x[16]+0.76*x[17]+0.6*x[18]-0.52*x[19]+0.88*x[20]-0.65*x[21]-0.87*x[22]-0.21*x[23]+0.99*x[24]+0.69*x[25]+0.43*x[26]-0.81*x[27]-0.82*x[28]-0.58*x[29]-0.84*x[30]+0.52*x[31]-0.6*x[32]+0.33*x[33]-0.54*x[34]-0.98*x[35]-0.86*x[36]-0.77*x[37]-0.56*x[38]-0.3*x[39]+0.61*x[40]+0.08*x[41] == 0.21)
@constraint(m, e7, -0.39*x[2]-0.59*x[3]-0.66*x[4]-0.15*x[5]-0.91*x[6]-0.7*x[7]+0.23*x[8]-0.95*x[9]+0.33*x[10]+0.43*x[11]-0.44*x[12]+0.71*x[13]-0.48*x[14]-0.69*x[15]-0.94*x[16]-0.61*x[17]-0.42*x[18]-0.92*x[19]+0.28*x[20]+0.9*x[21]+0.63*x[22]-0.22*x[23]-0.61*x[24]+0.02*x[25]+0.72*x[26]-0.73*x[27]-0.05*x[28]+0.67*x[29]-0.71*x[30]+0.82*x[31]+0.72*x[32]+0.3*x[33]+0.98*x[34]+0.8*x[35]-0.61*x[36]+0.19*x[37]-0.37*x[38]+0.52*x[39]-0.49*x[40]+0.8*x[41] == -0.34)
@constraint(m, e8, -0.75*x[2]+0.07*x[3]-0.29*x[4]-0.6*x[5]+0.02*x[6]+0.4*x[7]-0.17*x[8]-0.51*x[9]+0.62*x[10]+0.13*x[11]+0.74*x[12]+0.36*x[13]+0.01*x[14]-0.14*x[15]+0.77*x[16]-0.98*x[17]+0.05*x[18]+0.11*x[19]+0.34*x[20]+0.53*x[21]-0.47*x[22]-0.05*x[23]+0.22*x[24]-0.4*x[25]-0.81*x[26]+0.22*x[27]-0.98*x[28]+0.73*x[29]+0.99*x[30]+0.55*x[31]-0.13*x[32]-0.85*x[33]+0.62*x[34]+0.71*x[35]+0.15*x[36]+0.28*x[37]-0.33*x[38]-0.77*x[39]-0.5*x[40]+0.33*x[41] == -0.07)
@constraint(m, e9, 0.32*x[2]+0.45*x[3]-0.11*x[4]-0.23*x[5]+0.77*x[6]-0.21*x[7]+0.22*x[8]-0.33*x[9]-0.83*x[10]-0.18*x[11]+0.09*x[12]+0.92*x[13]+0.9*x[14]+0.31*x[15]+0.62*x[16]-0.14*x[17]-0.72*x[18]+0.39*x[19]+0.97*x[20]+0.05*x[21]-0.81*x[22]+0.87*x[23]-0.86*x[24]-0.22*x[25]+0.88*x[26]+0.71*x[27]+0.29*x[28]+0.05*x[29]-0.08*x[31]-0.06*x[32]+0.21*x[33]+0.17*x[34]+0.05*x[35]+0.94*x[36]-0.43*x[37]-0.17*x[38]+0.65*x[39]+0.08*x[40]-0.54*x[41] == -0.05)
@constraint(m, e10, -0.16*x[2]+0.43*x[3]+0.7*x[4]+0.95*x[5]-0.9*x[6]-0.97*x[7]-0.55*x[8]-0.66*x[9]+0.43*x[10]+0.64*x[11]-0.53*x[12]+0.32*x[13]+0.66*x[14]-0.64*x[15]-0.77*x[16]-0.17*x[17]+0.32*x[18]+0.78*x[19]-0.05*x[20]-0.34*x[21]+0.71*x[22]-0.97*x[23]+0.95*x[24]-0.67*x[25]+0.28*x[26]+0.68*x[27]+0.19*x[28]-0.98*x[29]+0.21*x[30]+0.13*x[31]+0.63*x[32]-0.09*x[33]+0.57*x[34]+0.77*x[35]+0.41*x[36]+0.06*x[37]+0.15*x[38]-0.15*x[39]-0.4*x[40]-0.06*x[41] == 0.43)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
