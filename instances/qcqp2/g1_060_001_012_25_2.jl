using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
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
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)
set_upper_bound(x[51], 1.0)
set_upper_bound(x[52], 1.0)
set_upper_bound(x[53], 1.0)
set_upper_bound(x[54], 1.0)
set_upper_bound(x[55], 1.0)
set_upper_bound(x[56], 1.0)
set_upper_bound(x[57], 1.0)
set_upper_bound(x[58], 1.0)
set_upper_bound(x[59], 1.0)
set_upper_bound(x[60], 1.0)
set_upper_bound(x[61], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.74*x[2]*x[5]-1.68*x[2]*x[7]+0.54*x[2]*x[8]+1.4*x[2]*x[17]+1.1*x[2]*x[19]+0.8*x[2]*x[22]-0.76*x[2]*x[33]+0.98*x[2]*x[36]-1.56*x[2]*x[37]+1.86*x[2]*x[41]+1.3*x[2]*x[48]+0.58*x[2]*x[56]+0.92*x[2]*x[59]-0.2*x[2]*x[60]+1.44*x[3]*x[11]-1.96*x[3]*x[13]-0.4*x[3]*x[14]-1.18*x[3]*x[17]-1.76*x[3]*x[24]-0.72*x[3]*x[25]-0.92*x[3]*x[30]+0.3*x[3]*x[34]+1.3*x[3]*x[35]-1.5*x[3]*x[37]+1.14*x[3]*x[41]-0.3*x[3]*x[42]-1.24*x[3]*x[44]-0.7*x[3]*x[47]-0.64*x[3]*x[55]+0.22*x[3]*x[57]+1.28*x[4]*x[6]+1.64*x[4]*x[8]-0.92*x[4]*x[10]-x[4]*x[11]-0.74*x[4]*x[12]-0.12*x[4]*x[16]-x[4]*x[22]+0.56*x[4]*x[24]+0.34*x[4]*x[25]+0.92*x[4]*x[27]+1.1*x[4]*x[28]-0.42*x[4]*x[32]-1.42*x[4]*x[33]+0.86*x[4]*x[37]-0.2*x[4]*x[42]-1.38*x[4]*x[43]+1.7*x[4]*x[44]+0.2*x[4]*x[48]-1.84*x[4]*x[53]-1.96*x[4]*x[55]-1.2*x[4]*x[61]+0.28*x[5]*x[6]-0.28*x[5]*x[9]+0.26*x[5]*x[12]+0.6*x[5]*x[13]+1.92*x[5]*x[16]+1.58*x[5]*x[17]-0.14*x[5]*x[31]-0.34*x[5]*x[34]+1.14*x[5]*x[36]+1.68*x[5]*x[37]+0.62*x[5]*x[38]-1.44*x[5]*x[52]+0.22*x[5]*x[53]-1.16*x[5]*x[55]-0.62*x[5]*x[61]+0.54*x[6]*x[7]+1.26*x[6]*x[10]-2*x[6]*x[13]-1.78*x[6]*x[21]-0.78*x[6]*x[22]-0.3*x[6]*x[23]+x[6]*x[29]-0.34*x[6]*x[32]+1.52*x[6]*x[34]-0.08*x[6]*x[41]+1.26*x[6]*x[42]+0.54*x[6]*x[43]-0.32*x[6]*x[53]+(-1.14*x[7]*x[13])-0.76*x[7]*x[14]+0.64*x[7]*x[15]-1.82*x[7]*x[17]-0.14*x[7]*x[22]+1.56*x[7]*x[25]+1.24*x[7]*x[27]+1.44*x[7]*x[29]-0.34*x[7]*x[31]-0.14*x[7]*x[37]+0.64*x[7]*x[56]+0.1*x[7]*x[58]+(-0.02*x[8]*x[9])-1.3*x[8]*x[12]-0.18*x[8]*x[15]-1.38*x[8]*x[17]-0.6*x[8]*x[18]-0.76*x[8]*x[19]+0.92*x[8]*x[20]-0.04*x[8]*x[21]+1.22*x[8]*x[30]-0.22*x[8]*x[31]+1.36*x[8]*x[34]+1.3*x[8]*x[36]+0.18*x[8]*x[48]-0.32*x[8]*x[58]+0.44*x[9]*x[13]+0.82*x[9]*x[15]+1.6*x[9]*x[16]-1.12*x[9]*x[18]+0.42*x[9]*x[20]-1.12*x[9]*x[27]+0.04*x[9]*x[28]-1.6*x[9]*x[29]+x[9]*x[46]+0.92*x[10]*x[11]+1.9*x[10]*x[20]-1.42*x[10]*x[22]+1.68*x[10]*x[28]-1.66*x[10]*x[29]-0.06*x[10]*x[30]+1.06*x[10]*x[32]+1.64*x[10]*x[36]+1.94*x[10]*x[39]-0.68*x[10]*x[40]+1.38*x[10]*x[43]+0.62*x[10]*x[47]+0.42*x[10]*x[57]+(-0.9*x[11]*x[14])-0.28*x[11]*x[18]-1.46*x[11]*x[19]+0.54*x[11]*x[23]-0.84*x[11]*x[37]-0.92*x[11]*x[38]+1.66*x[11]*x[41]+1.9*x[11]*x[47]-0.4*x[11]*x[49]+1.94*x[12]*x[24]-0.74*x[12]*x[22]+0.04*x[12]*x[25]+1.32*x[12]*x[26]+1.94*x[12]*x[33]+1.92*x[12]*x[36]+0.58*x[12]*x[39]+1.82*x[12]*x[45]-0.26*x[12]*x[46]+1.16*x[12]*x[47]-0.16*x[12]*x[50]+1.02*x[12]*x[55]+1.18*x[12]*x[58]+0.6*x[12]*x[59]+1.7*x[13]*x[14]+0.84*x[13]*x[17]-1.12*x[13]*x[18]+1.16*x[13]*x[23]-1.4*x[13]*x[28]+1.2*x[13]*x[36]-0.16*x[13]*x[39]+1.02*x[13]*x[40]+0.3*x[13]*x[43]+1.02*x[13]*x[44]-0.44*x[13]*x[49]+1.68*x[13]*x[50]+1.04*x[13]*x[53]-0.84*x[13]*x[61]+0.7*x[14]*x[18]-1.92*x[14]*x[15]+0.18*x[14]*x[20]-1.76*x[14]*x[29]-0.72*x[14]*x[35]-1.96*x[14]*x[38]-0.3*x[14]*x[39]-1.84*x[14]*x[42]-1.42*x[14]*x[46]+1.4*x[14]*x[47]-1.14*x[14]*x[51]-0.76*x[14]*x[53]+0.62*x[14]*x[61]+0.04*x[15]*x[17]+1.46*x[15]*x[19]+0.28*x[15]*x[26]-0.14*x[15]*x[30]+1.48*x[15]*x[31]+0.78*x[15]*x[34]-1.08*x[15]*x[35]+0.72*x[15]*x[39]-1.74*x[15]*x[41]+0.9*x[15]*x[42]-0.54*x[15]*x[44]+1.4*x[15]*x[45]-1.48*x[15]*x[54]-1.36*x[15]*x[58]+1.22*x[15]*x[59]-0.64*x[15]*x[60]+0.9*x[16]*x[18]-1.7*x[16]*x[21]-0.14*x[16]*x[32]+1.48*x[16]*x[40]+1.36*x[16]*x[41]+0.82*x[16]*x[51]+0.1*x[16]*x[58]+0.94*x[17]*x[31]+0.9*x[17]*x[34]-2*x[17]*x[35]+0.3*x[17]*x[41]-0.34*x[17]*x[45]+1.5*x[17]*x[46]-0.06*x[17]*x[51]-0.2*x[17]*x[52]-0.6*x[17]*x[56]+0.52*x[17]*x[60]+(-1.98*x[18]*x[20])-0.18*x[18]*x[24]+1.32*x[18]*x[25]+0.76*x[18]*x[26]+0.98*x[18]*x[27]+1.66*x[18]*x[29]+0.36*x[18]*x[30]+1.92*x[18]*x[31]-1.28*x[18]*x[42]-1.14*x[18]*x[47]-1.62*x[18]*x[50]+1.24*x[18]*x[51]+1.18*x[18]*x[54]+0.24*x[18]*x[58]+1.5*x[18]*x[59]+1.7*x[19]*x[21]+0.92*x[19]*x[25]-0.7*x[19]*x[38]+1.34*x[19]*x[39]+0.58*x[19]*x[42]+0.78*x[19]*x[47]-1.38*x[19]*x[49]+1.86*x[19]*x[55]+1.92*x[19]*x[58]-1.34*x[19]*x[59]-1.3*x[19]*x[60]+0.94*x[19]*x[61]+0.56*x[20]*x[23]-0.76*x[20]*x[24]-x[20]*x[34]-0.74*x[20]*x[38]-0.14*x[20]*x[43]+1.44*x[20]*x[45]+1.36*x[20]*x[52]-0.04*x[20]*x[55]-0.44*x[20]*x[61]+0.28*x[21]*x[30]-0.84*x[21]*x[28]-1.04*x[21]*x[33]-1.08*x[21]*x[37]+0.52*x[21]*x[46]-0.96*x[21]*x[52]-0.7*x[21]*x[54]+1.56*x[21]*x[56]+1.58*x[22]*x[27]+1.62*x[22]*x[30]+0.86*x[22]*x[34]+0.1*x[22]*x[46]+0.94*x[22]*x[55]-0.34*x[22]*x[56]-1.1*x[22]*x[59]-1.38*x[22]*x[61]+(-1.54*x[23]*x[24])-1.1*x[23]*x[36]+1.56*x[23]*x[37]+1.56*x[23]*x[42]+1.5*x[23]*x[45]+0.4*x[23]*x[47]-1.64*x[23]*x[52]-1.52*x[23]*x[53]+1.46*x[23]*x[55]+1.98*x[23]*x[59]+0.94*x[24]*x[31]-0.64*x[24]*x[26]-1.68*x[24]*x[33]+0.08*x[24]*x[35]+1.06*x[24]*x[40]+1.74*x[24]*x[48]-1.84*x[24]*x[58]+0.82*x[25]*x[29]-1.6*x[25]*x[30]+1.54*x[25]*x[32]+1.74*x[25]*x[33]+1.14*x[25]*x[35]-0.08*x[25]*x[37]-1.8*x[25]*x[39]-0.28*x[25]*x[40]-1.18*x[25]*x[44]+1.64*x[25]*x[46]-1.18*x[25]*x[48]-1.56*x[25]*x[52]-1.96*x[25]*x[53]+0.52*x[25]*x[56]-0.42*x[25]*x[58]+1.58*x[26]*x[40]-1.72*x[26]*x[37]+1.58*x[26]*x[59]+1.16*x[27]*x[36]-0.9*x[27]*x[33]-1.94*x[27]*x[42]-1.84*x[27]*x[45]+1.38*x[27]*x[46]-0.02*x[27]*x[48]-0.1*x[27]*x[49]-1.94*x[27]*x[50]-0.22*x[27]*x[60]+0.62*x[28]*x[45]+1.94*x[28]*x[46]-1.26*x[28]*x[49]+1.78*x[28]*x[53]-1.2*x[28]*x[56]-0.74*x[28]*x[60]+0.82*x[28]*x[61]+1.68*x[29]*x[33]-0.26*x[29]*x[30]-1.04*x[29]*x[36]-1.18*x[29]*x[47]-1.6*x[29]*x[48]+0.24*x[29]*x[50]-1.6*x[29]*x[54]+1.74*x[29]*x[57]-0.08*x[29]*x[60]+1.64*x[30]*x[57]-1.94*x[30]*x[44]+0.94*x[30]*x[59]+(-1.04*x[31]*x[34])-0.62*x[31]*x[35]+0.86*x[31]*x[39]+0.04*x[31]*x[40]+1.56*x[31]*x[41]+1.82*x[31]*x[42]-1.46*x[31]*x[45]-0.62*x[31]*x[51]+1.72*x[31]*x[59]-0.08*x[31]*x[60]+(-1.8*x[32]*x[34])-0.98*x[32]*x[46]+1.16*x[32]*x[49]+0.96*x[33]*x[41]-1.42*x[33]*x[36]+0.12*x[33]*x[49]+0.98*x[33]*x[51]+1.7*x[33]*x[56]-0.74*x[33]*x[60]+0.6*x[34]*x[36]-1.3*x[34]*x[39]-x[34]*x[40]+0.5*x[34]*x[43]-1.06*x[34]*x[44]-0.66*x[34]*x[46]-0.42*x[34]*x[49]+0.5*x[35]*x[41]-0.38*x[35]*x[43]-0.18*x[35]*x[48]+1.7*x[35]*x[50]-0.78*x[35]*x[52]-1.94*x[35]*x[53]+1.98*x[35]*x[55]+0.72*x[35]*x[58]+1.68*x[36]*x[44]-0.48*x[36]*x[39]-1.82*x[36]*x[46]-1.04*x[36]*x[48]+1.48*x[36]*x[49]+0.54*x[36]*x[50]-0.88*x[36]*x[53]-0.66*x[36]*x[54]+1.16*x[36]*x[57]+0.98*x[37]*x[42]-1.84*x[37]*x[38]+1.58*x[37]*x[44]+1.32*x[37]*x[50]-1.5*x[37]*x[59]+0.38*x[37]*x[60]+0.32*x[38]*x[51]+1.76*x[38]*x[56]+1.3*x[38]*x[59]+(-1.9*x[39]*x[43])-0.8*x[39]*x[44]-0.56*x[39]*x[51]-1.28*x[39]*x[58]-0.08*x[39]*x[59]+0.86*x[40]*x[52]+0.46*x[40]*x[60]+0.86*x[40]*x[61]+1.36*x[41]*x[42]-0.5*x[41]*x[43]+1.28*x[41]*x[46]+(-1.6*x[42]*x[46])-1.82*x[42]*x[54]-0.76*x[42]*x[55]+0.38*x[42]*x[57]-0.76*x[42]*x[60]+1.2*x[43]*x[44]-0.82*x[43]*x[52]+1.06*x[44]*x[48]-0.3*x[44]*x[53]+1.76*x[44]*x[55]+1.04*x[44]*x[60]+(-1.38*x[45]*x[47])-0.16*x[45]*x[50]-0.5*x[45]*x[54]+1.64*x[45]*x[55]-0.84*x[45]*x[59]-1.1*x[45]*x[61]+0.42*x[46]*x[48]-1.88*x[46]*x[54]-1.54*x[46]*x[59]-0.96*x[47]*x[55]+0.02*x[48]*x[60]+1.88*x[48]*x[61]+1.1*x[49]*x[52]+1.38*x[49]*x[57]+1.84*x[49]*x[61]+0.34*x[50]*x[57]-0.62*x[50]*x[58]+0.46*x[51]*x[55]+0.22*x[51]*x[59]+0.02*x[51]*x[60]-0.4*x[52]*x[55]+0.48*x[53]*x[57]-1.32*x[53]*x[58]+0.92*x[53]*x[60]+0.92*x[54]*x[57]+0.84*x[55]*x[59]+(-1.62*x[56]*x[58])-0.64*x[56]*x[60]+0.96*x[57]*x[61]-1.08*x[58]*x[61]+0.77*x[8]*x[8]-0.67*x[10]*x[10]-0.44*x[11]*x[11]-0.23*x[13]*x[13]+0.86*x[15]*x[15]-0.16*x[19]*x[19]+0.87*x[22]*x[22]-0.12*x[29]*x[29]-0.9*x[31]*x[31]-0.4*x[32]*x[32]+0.81*x[33]*x[33]+0.48*x[38]*x[38]+0.38*x[39]*x[39]-0.86*x[41]*x[41]+0.74*x[42]*x[42]-0.74*x[49]*x[49]-0.67*x[53]*x[53]-0.32*x[57]*x[57]+0.14*x[59]*x[59]+0.82*x[61]*x[61]-0.09*x[2]+0.51*x[3]-0.82*x[4]-0.88*x[5]-0.65*x[6]+0.43*x[8]-0.43*x[9]-0.47*x[10]+0.95*x[11]-0.44*x[12]+0.16*x[13]-0.8*x[14]-0.87*x[15]-0.63*x[16]+0.1*x[17]-0.04*x[18]-0.91*x[19]+0.54*x[20]+0.16*x[21]-0.36*x[22]-0.4*x[23]-0.21*x[24]-0.24*x[25]+0.5*x[26]+0.27*x[27]-0.13*x[28]-0.3*x[29]+0.83*x[30]+0.95*x[31]+0.79*x[32]+0.42*x[33]+0.21*x[34]+0.24*x[35]+0.89*x[36]+0.7*x[37]-0.8*x[38]-0.46*x[39]+0.57*x[40]-0.31*x[41]+0.67*x[42]+0.93*x[43]+0.71*x[44]-0.84*x[45]+0.78*x[46]+0.04*x[47]-0.54*x[48]+0.23*x[49]+0.68*x[50]+0.81*x[51]-0.01*x[52]+0.31*x[53]+0.31*x[54]-0.5*x[55]-0.13*x[56]-0.26*x[57]+0.95*x[58]-0.97*x[59]+0.17*x[60]+0.29*x[61])+x[1] == 0.0)
@NLconstraint(m, e2, 1.46*x[2]*x[9]-0.9*x[2]*x[5]+0.04*x[2]*x[10]+0.26*x[2]*x[12]-0.44*x[2]*x[13]+1.76*x[2]*x[17]-1.54*x[2]*x[20]-0.74*x[2]*x[22]+0.04*x[2]*x[24]-1.08*x[2]*x[26]-1.72*x[2]*x[29]-1.88*x[2]*x[30]+0.58*x[2]*x[33]-1.94*x[2]*x[43]-1.66*x[2]*x[50]+1.14*x[2]*x[61]+0.26*x[3]*x[6]-1.96*x[3]*x[11]-0.38*x[3]*x[20]+0.38*x[3]*x[21]+1.6*x[3]*x[27]+1.98*x[3]*x[43]-1.1*x[3]*x[55]+1.94*x[3]*x[56]+1.28*x[3]*x[58]+0.78*x[3]*x[59]+(-0.76*x[4]*x[7])-0.42*x[4]*x[8]+0.74*x[4]*x[19]+0.78*x[4]*x[24]-1.9*x[4]*x[25]-1.92*x[4]*x[27]-1.1*x[4]*x[28]-1.12*x[4]*x[29]+1.44*x[4]*x[33]-1.52*x[4]*x[36]+0.08*x[4]*x[38]-0.92*x[4]*x[42]+1.72*x[4]*x[47]-1.98*x[4]*x[53]+0.84*x[4]*x[60]+1.5*x[5]*x[24]+1.98*x[5]*x[26]-1.54*x[5]*x[27]+0.94*x[5]*x[30]-1.58*x[5]*x[31]+1.18*x[5]*x[32]+0.5*x[5]*x[35]+1.66*x[5]*x[40]+1.3*x[5]*x[41]-1.18*x[5]*x[45]-1.18*x[5]*x[46]+1.2*x[5]*x[53]+0.34*x[5]*x[59]+1.24*x[6]*x[7]+0.82*x[6]*x[9]-1.4*x[6]*x[15]-0.76*x[6]*x[17]-0.68*x[6]*x[24]+1.96*x[6]*x[25]-0.46*x[6]*x[27]+0.98*x[6]*x[29]-0.48*x[6]*x[34]+0.38*x[6]*x[40]-0.04*x[6]*x[48]-1.86*x[6]*x[61]+1.5*x[7]*x[17]-1.4*x[7]*x[16]+0.96*x[7]*x[23]-1.8*x[7]*x[28]-1.66*x[7]*x[31]+0.5*x[7]*x[32]-1.4*x[7]*x[34]+1.66*x[7]*x[38]+0.8*x[7]*x[44]-0.52*x[7]*x[46]+1.84*x[7]*x[50]+1.56*x[8]*x[22]-1.26*x[8]*x[19]-0.6*x[8]*x[23]-0.8*x[8]*x[31]-0.66*x[8]*x[36]-1.4*x[8]*x[41]+0.72*x[8]*x[46]+0.2*x[8]*x[47]+0.76*x[8]*x[48]+1.92*x[8]*x[51]+0.02*x[8]*x[54]+x[8]*x[56]+0.12*x[8]*x[59]+(-1.84*x[9]*x[11])-1.14*x[9]*x[18]-1.4*x[9]*x[21]-1.28*x[9]*x[23]+1.64*x[9]*x[24]+0.18*x[9]*x[31]-1.96*x[9]*x[39]+0.18*x[9]*x[40]-1.14*x[9]*x[43]-1.34*x[9]*x[46]+0.46*x[9]*x[54]+1.22*x[9]*x[55]+(-0.46*x[10]*x[11])-1.76*x[10]*x[13]+1.68*x[10]*x[14]-0.86*x[10]*x[23]+1.46*x[10]*x[24]-1.7*x[10]*x[28]+0.88*x[10]*x[31]-1.12*x[10]*x[37]+1.96*x[10]*x[43]+0.38*x[10]*x[51]+0.18*x[10]*x[52]+1.92*x[10]*x[57]+0.86*x[10]*x[59]+0.96*x[10]*x[60]+0.62*x[11]*x[18]-0.84*x[11]*x[14]-0.66*x[11]*x[23]+0.48*x[11]*x[36]-0.28*x[11]*x[42]-1.06*x[11]*x[51]-1.88*x[11]*x[52]+0.34*x[12]*x[15]+0.02*x[12]*x[17]-0.78*x[12]*x[18]+1.02*x[12]*x[19]-1.46*x[12]*x[25]+0.34*x[12]*x[29]+0.74*x[12]*x[35]+0.06*x[12]*x[36]+1.04*x[12]*x[38]+0.72*x[12]*x[43]-0.54*x[12]*x[46]+1.14*x[12]*x[47]-0.88*x[12]*x[48]+1.46*x[12]*x[52]+0.28*x[12]*x[57]+0.3*x[12]*x[58]+1.62*x[13]*x[22]-1.56*x[13]*x[17]-1.76*x[13]*x[23]-2*x[13]*x[24]+1.32*x[13]*x[37]+0.54*x[13]*x[42]-0.82*x[13]*x[46]-1.76*x[13]*x[49]-0.72*x[13]*x[59]-1.92*x[13]*x[60]+1.6*x[14]*x[15]+1.5*x[14]*x[20]+1.98*x[14]*x[26]+0.96*x[14]*x[30]-1.58*x[14]*x[35]-0.82*x[14]*x[39]-0.32*x[14]*x[43]+1.04*x[14]*x[45]+0.26*x[14]*x[52]-1.52*x[14]*x[54]+(-0.24*x[15]*x[23])-0.92*x[15]*x[26]-0.9*x[15]*x[31]-1.24*x[15]*x[40]-1.46*x[15]*x[45]+1.12*x[15]*x[58]+0.5*x[15]*x[59]+0.38*x[16]*x[20]-1.86*x[16]*x[17]-1.92*x[16]*x[21]+1.16*x[16]*x[28]-0.56*x[16]*x[29]+0.34*x[16]*x[34]+0.3*x[16]*x[35]-1.82*x[16]*x[40]+1.62*x[16]*x[56]+1.84*x[16]*x[61]+(-1.92*x[17]*x[23])-0.5*x[17]*x[26]-1.48*x[17]*x[28]+0.62*x[17]*x[35]-0.42*x[17]*x[41]+0.44*x[17]*x[42]-1.88*x[17]*x[46]+1.08*x[17]*x[49]+1.5*x[17]*x[57]+0.2*x[17]*x[58]+0.76*x[17]*x[60]+0.9*x[18]*x[19]+0.52*x[18]*x[25]-1.08*x[18]*x[31]-0.04*x[18]*x[32]-0.82*x[18]*x[37]-0.3*x[18]*x[45]+0.42*x[18]*x[49]-1.24*x[18]*x[56]-0.46*x[18]*x[59]+0.86*x[18]*x[60]+0.88*x[19]*x[21]-0.46*x[19]*x[23]+0.44*x[19]*x[25]+0.42*x[19]*x[33]+0.76*x[19]*x[39]+1.78*x[19]*x[42]-0.24*x[19]*x[44]+0.32*x[19]*x[50]-0.76*x[19]*x[52]-0.16*x[19]*x[53]-1.92*x[19]*x[59]+1.1*x[19]*x[60]+0.16*x[20]*x[39]-1.78*x[20]*x[29]-0.2*x[20]*x[45]+0.94*x[20]*x[48]+0.82*x[21]*x[26]-0.98*x[21]*x[25]-0.5*x[21]*x[30]+0.34*x[21]*x[32]-x[21]*x[33]-1.76*x[21]*x[43]-0.22*x[21]*x[45]-1.8*x[21]*x[48]-0.56*x[21]*x[52]-0.74*x[21]*x[54]-0.58*x[21]*x[59]+0.58*x[22]*x[27]-0.52*x[22]*x[23]+0.98*x[22]*x[31]+1.84*x[22]*x[38]-1.48*x[22]*x[39]+0.88*x[22]*x[41]+1.86*x[22]*x[43]-0.9*x[22]*x[45]+1.86*x[22]*x[46]+1.86*x[22]*x[49]+1.42*x[22]*x[52]+0.46*x[22]*x[57]-0.86*x[22]*x[61]+0.52*x[23]*x[29]+1.58*x[23]*x[33]+1.36*x[23]*x[35]+0.56*x[23]*x[36]+1.86*x[23]*x[44]+1.64*x[23]*x[45]-x[23]*x[49]+1.74*x[23]*x[52]-0.32*x[23]*x[55]+0.06*x[23]*x[58]+1.94*x[24]*x[26]-1.64*x[24]*x[28]+0.78*x[24]*x[30]-1.1*x[24]*x[33]-1.52*x[24]*x[45]-0.94*x[24]*x[49]+0.18*x[24]*x[51]+0.26*x[24]*x[52]-1.38*x[24]*x[53]+0.96*x[24]*x[57]+1.52*x[25]*x[34]-1.48*x[25]*x[27]+1.84*x[25]*x[42]+0.64*x[25]*x[43]+1.64*x[25]*x[49]+0.82*x[25]*x[56]+(-1.16*x[26]*x[31])-1.5*x[26]*x[39]+1.2*x[26]*x[41]-1.04*x[26]*x[45]-0.92*x[26]*x[48]-1.62*x[26]*x[49]-1.1*x[26]*x[50]+1.08*x[26]*x[53]+0.28*x[26]*x[54]-0.76*x[26]*x[58]-1.26*x[26]*x[59]+0.64*x[26]*x[60]+1.4*x[27]*x[32]-0.78*x[27]*x[28]+1.48*x[27]*x[38]+1.52*x[27]*x[51]+1.42*x[27]*x[53]+1.6*x[27]*x[57]+0.48*x[27]*x[58]-1.56*x[27]*x[60]+1.04*x[28]*x[41]-0.24*x[28]*x[40]-1.4*x[28]*x[42]+1.36*x[28]*x[44]-1.1*x[28]*x[48]+0.78*x[28]*x[49]+1.52*x[28]*x[56]-1.6*x[28]*x[57]+1.18*x[28]*x[58]+(-0.74*x[29]*x[30])-1.5*x[29]*x[33]-1.14*x[29]*x[36]-1.68*x[29]*x[37]-1.32*x[29]*x[38]-1.6*x[29]*x[45]+1.26*x[29]*x[47]-1.18*x[29]*x[49]+0.28*x[29]*x[54]+0.48*x[29]*x[56]+0.68*x[29]*x[61]+1.7*x[30]*x[40]-0.72*x[30]*x[31]-0.36*x[30]*x[44]+1.98*x[30]*x[46]+1.6*x[30]*x[49]+1.9*x[30]*x[51]-1.04*x[30]*x[54]-1.8*x[30]*x[60]+(-1.84*x[31]*x[36])-0.92*x[31]*x[40]-1.86*x[31]*x[41]+2*x[31]*x[51]+1.16*x[31]*x[52]-1.94*x[31]*x[53]-1.26*x[31]*x[57]+(-1.74*x[32]*x[35])-0.4*x[32]*x[37]+1.7*x[32]*x[45]-1.32*x[32]*x[48]+1.5*x[32]*x[52]-1.22*x[32]*x[54]-1.48*x[32]*x[55]-0.4*x[32]*x[57]+0.28*x[32]*x[58]+(-1.78*x[33]*x[34])-1.86*x[33]*x[38]+1.06*x[33]*x[39]+0.16*x[33]*x[40]-0.6*x[33]*x[42]+1.54*x[33]*x[45]-0.4*x[33]*x[48]-0.52*x[33]*x[54]+0.04*x[33]*x[58]-1.08*x[33]*x[61]+0.92*x[34]*x[40]+1.7*x[34]*x[42]-1.88*x[34]*x[49]-0.42*x[34]*x[59]+0.6*x[35]*x[36]+1.86*x[35]*x[43]-0.52*x[35]*x[45]-0.26*x[35]*x[46]-2*x[35]*x[49]-0.18*x[35]*x[51]-1.06*x[35]*x[52]+1.1*x[35]*x[58]-0.3*x[35]*x[59]+0.1*x[36]*x[39]-0.7*x[36]*x[37]+1.8*x[36]*x[40]-0.78*x[36]*x[49]+0.06*x[36]*x[53]-0.92*x[36]*x[54]+1.2*x[36]*x[61]+0.32*x[37]*x[38]+0.72*x[37]*x[48]-x[37]*x[49]+0.08*x[37]*x[50]-1.24*x[37]*x[58]-0.56*x[37]*x[60]+0.56*x[38]*x[40]-0.64*x[38]*x[44]+0.12*x[38]*x[47]-0.24*x[38]*x[48]+0.96*x[38]*x[49]-1.26*x[38]*x[51]+1.86*x[38]*x[52]+1.92*x[38]*x[58]-0.38*x[38]*x[60]+1.72*x[38]*x[61]+1.94*x[39]*x[48]-1.02*x[39]*x[55]-1.12*x[39]*x[56]+0.46*x[39]*x[59]-0.56*x[39]*x[61]+0.2*x[40]*x[44]+1.18*x[40]*x[47]+1.8*x[40]*x[53]-1.26*x[40]*x[54]+0.8*x[40]*x[56]-0.3*x[40]*x[58]+0.88*x[40]*x[61]+(-0.16*x[41]*x[46])-1.94*x[41]*x[47]+1.14*x[41]*x[52]+0.6*x[41]*x[53]-0.86*x[41]*x[59]+1.8*x[42]*x[43]-1.46*x[42]*x[44]+1.86*x[42]*x[45]+1.72*x[42]*x[53]+(-0.74*x[43]*x[56])-0.7*x[43]*x[58]+0.68*x[43]*x[60]+0.76*x[44]*x[48]-1.88*x[44]*x[46]+1.12*x[44]*x[50]+1.92*x[44]*x[52]-x[44]*x[55]+0.66*x[45]*x[46]-0.54*x[45]*x[49]+0.5*x[45]*x[57]-0.84*x[45]*x[58]+1.48*x[45]*x[60]+0.28*x[46]*x[51]-1.94*x[46]*x[47]+1.3*x[46]*x[58]-1.78*x[46]*x[61]+0.04*x[47]*x[48]+0.92*x[47]*x[54]-1.84*x[47]*x[56]+0.46*x[47]*x[57]+(-0.8*x[48]*x[52])-1.54*x[48]*x[53]+1.84*x[48]*x[57]+(-1.62*x[49]*x[50])-1.16*x[49]*x[52]+1.74*x[49]*x[61]+(-0.46*x[50]*x[53])-1.5*x[50]*x[58]+0.42*x[51]*x[56]-1.04*x[51]*x[61]+1.68*x[53]*x[54]-1.26*x[53]*x[55]+0.64*x[55]*x[59]+(-1.6*x[56]*x[57])-1.64*x[56]*x[58]+x[56]*x[59]+1.68*x[57]*x[58]+0.06*x[57]*x[60]-1.8*x[57]*x[61]+0.09*x[4]*x[4]+0.23*x[12]*x[12]-0.74*x[14]*x[14]+0.71*x[15]*x[15]-0.65*x[21]*x[21]+0.96*x[23]*x[23]-0.89*x[25]*x[25]+0.78*x[27]*x[27]-0.12*x[33]*x[33]+x[37]*x[37]-0.55*x[47]*x[47]-0.69*x[50]*x[50]+0.11*x[55]*x[55]-0.36*x[58]*x[58]-0.85*x[2]-0.9*x[3]+0.45*x[4]+0.21*x[5]+0.74*x[6]+0.72*x[7]-0.92*x[8]+0.28*x[9]-0.87*x[10]-0.52*x[11]+0.52*x[12]+0.08*x[13]-0.1*x[14]+0.07*x[15]+0.01*x[16]+0.49*x[17]+0.61*x[18]-0.71*x[19]-0.17*x[20]+0.28*x[21]+0.85*x[22]+0.42*x[23]-0.14*x[24]+0.83*x[25]-0.19*x[26]-0.69*x[27]-0.7*x[28]+0.98*x[29]+0.21*x[30]+0.76*x[31]+0.55*x[32]+0.14*x[33]-0.98*x[34]+0.48*x[35]+0.52*x[36]+0.02*x[37]-0.72*x[38]+0.89*x[39]-0.36*x[40]+0.61*x[41]+0.49*x[42]+0.32*x[43]+0.25*x[44]-0.68*x[45]+0.53*x[46]-0.1*x[47]-0.71*x[48]-0.65*x[49]-0.44*x[50]-0.29*x[51]-0.43*x[52]-0.62*x[53]+0.66*x[54]+0.84*x[55]+0.18*x[56]+0.89*x[57]-0.87*x[58]+0.19*x[59]-0.52*x[60]-0.59*x[61] <= 61.45)
@constraint(m, e3, -0.76*x[2]-0.15*x[3]-0.12*x[4]-0.43*x[5]+0.09*x[6]+0.36*x[7]-0.49*x[8]-0.92*x[9]-0.26*x[10]-0.4*x[11]-0.49*x[12]-0.18*x[13]-0.32*x[14]-0.61*x[15]+0.84*x[16]+0.54*x[17]-0.59*x[18]+0.79*x[19]-0.71*x[20]+0.86*x[21]+0.12*x[22]-0.12*x[23]+0.33*x[24]-0.96*x[25]-0.05*x[26]+0.83*x[27]+0.4*x[28]+0.83*x[29]+0.7*x[30]+0.31*x[31]+0.81*x[32]-0.81*x[33]+0.06*x[34]-0.78*x[35]+0.32*x[36]+0.81*x[37]+0.35*x[38]+0.21*x[39]-0.37*x[40]-0.42*x[41]+0.45*x[42]+0.14*x[43]+0.75*x[44]+0.47*x[45]+0.45*x[46]+0.09*x[47]-0.56*x[48]-0.92*x[49]+0.4*x[50]+0.2*x[51]-0.14*x[52]+0.16*x[53]+0.07*x[54]+0.26*x[55]-0.88*x[56]-0.92*x[57]-0.52*x[58]-0.52*x[59]-0.87*x[60]-0.22*x[61] == 0.61)
@constraint(m, e4, 0.16*x[2]+0.89*x[3]+0.07*x[4]+0.53*x[5]-0.78*x[6]-0.7*x[7]+0.96*x[8]-0.01*x[9]+0.92*x[10]-0.19*x[11]-0.52*x[12]+0.71*x[13]+0.03*x[14]+0.68*x[15]+0.58*x[16]-0.03*x[17]-0.07*x[18]+0.32*x[19]+0.35*x[20]+0.96*x[21]+0.51*x[22]-0.26*x[23]-0.56*x[24]+0.46*x[25]-0.3*x[26]+0.31*x[27]-0.39*x[28]+0.81*x[29]-0.08*x[30]+0.53*x[31]+0.64*x[32]+0.1*x[33]+0.61*x[34]+0.03*x[35]+0.52*x[36]+0.7*x[37]-0.77*x[38]-0.36*x[39]+0.99*x[40]-0.53*x[41]+0.2*x[42]-0.79*x[43]-0.3*x[45]-0.85*x[46]+0.26*x[47]+0.26*x[48]+0.76*x[49]+0.77*x[50]-0.3*x[51]-0.88*x[52]+0.84*x[53]-0.77*x[54]+0.09*x[55]+0.48*x[56]+0.52*x[57]-0.68*x[58]-0.89*x[59]-0.59*x[60]-0.61*x[61] == -0.2)
@constraint(m, e5, -0.82*x[2]+0.13*x[3]-0.77*x[4]+0.05*x[5]+0.14*x[6]-0.82*x[7]-0.22*x[8]-0.39*x[9]-0.83*x[10]+0.85*x[12]-0.79*x[13]-0.6*x[14]+0.24*x[15]-0.85*x[16]+0.54*x[17]-0.45*x[18]-0.87*x[19]+0.53*x[20]-0.73*x[21]-0.5*x[22]+0.04*x[23]+0.81*x[24]+0.39*x[25]-0.6*x[26]-0.16*x[27]+0.65*x[28]+0.29*x[29]+0.79*x[30]+0.56*x[31]+0.3*x[32]+0.72*x[33]-0.34*x[34]-0.43*x[35]+0.93*x[36]+0.24*x[37]+0.12*x[38]+0.24*x[39]+0.66*x[40]+0.18*x[41]-0.74*x[42]+0.42*x[43]-0.95*x[44]-0.81*x[45]-0.58*x[46]+0.11*x[47]-0.48*x[48]-0.37*x[49]+0.56*x[50]+0.22*x[51]-0.94*x[52]+0.91*x[53]+0.97*x[54]+0.15*x[55]-0.83*x[56]-0.2*x[57]-0.51*x[58]+0.1*x[59]+0.93*x[60]-0.84*x[61] == 0.72)
@constraint(m, e6, -0.07*x[2]-0.53*x[3]-0.25*x[4]+0.93*x[5]-0.9*x[6]-0.86*x[7]-0.11*x[8]-0.57*x[9]-0.29*x[10]+0.98*x[11]+0.49*x[12]+0.95*x[13]+0.39*x[14]+0.1*x[15]+0.4*x[16]-0.62*x[17]-0.34*x[18]-0.9*x[19]+0.11*x[20]-0.41*x[21]-0.26*x[22]+0.68*x[23]+0.59*x[24]+0.9*x[25]-0.85*x[26]+0.06*x[27]+0.79*x[28]+0.12*x[29]-0.87*x[30]+0.55*x[31]+0.15*x[32]-0.39*x[33]-0.33*x[34]-0.62*x[35]-0.32*x[36]-0.47*x[37]-0.48*x[38]+0.56*x[39]+0.5*x[40]-0.92*x[41]-0.19*x[42]+0.55*x[43]+0.75*x[44]-0.63*x[45]-0.64*x[46]-0.07*x[47]+0.39*x[48]-0.98*x[49]+0.41*x[50]-0.26*x[51]-0.18*x[52]+0.95*x[53]+0.57*x[54]+0.82*x[55]+0.54*x[56]-0.76*x[57]-0.32*x[58]+0.88*x[59]-0.41*x[60]+0.9*x[61] == -0.55)
@constraint(m, e7, 0.2*x[2]-0.81*x[3]+0.87*x[4]-0.38*x[5]+0.54*x[6]-0.97*x[7]+0.33*x[8]+0.82*x[9]+0.7*x[10]-0.97*x[11]-0.64*x[12]-0.13*x[13]-0.46*x[14]-0.66*x[15]+0.18*x[16]+0.03*x[17]-0.52*x[18]+0.66*x[19]+0.36*x[20]-0.54*x[21]+0.05*x[22]-0.67*x[23]-0.6*x[24]-0.89*x[25]+0.75*x[26]+0.61*x[27]-0.72*x[28]+0.52*x[29]-0.88*x[30]+0.23*x[31]-0.11*x[32]+0.42*x[33]+0.42*x[34]-0.14*x[35]-0.09*x[36]-0.05*x[37]+0.58*x[38]+0.75*x[39]+0.05*x[40]-0.04*x[41]+0.5*x[42]-0.96*x[43]+0.08*x[44]-0.23*x[45]+0.35*x[46]+0.12*x[47]-0.65*x[48]+0.85*x[49]+0.26*x[50]-0.23*x[51]+0.12*x[52]+0.7*x[53]-0.9*x[54]+0.94*x[55]-x[56]-0.42*x[57]-0.97*x[58]-0.26*x[59]+0.27*x[60]-0.88*x[61] == -0.47)
@constraint(m, e8, -0.76*x[2]-0.9*x[3]-0.55*x[4]+0.2*x[5]-0.09*x[6]-0.59*x[7]+0.65*x[8]+0.69*x[9]-0.99*x[10]+0.82*x[11]-0.6*x[12]-0.61*x[13]-0.17*x[14]+0.71*x[15]-0.04*x[16]-0.25*x[17]-0.95*x[18]+0.82*x[19]-0.95*x[20]-0.48*x[21]-0.84*x[22]+0.56*x[23]+0.11*x[24]-0.59*x[25]-0.56*x[26]-0.63*x[27]-0.23*x[28]-0.61*x[29]+0.35*x[30]-0.31*x[31]-0.51*x[32]-0.98*x[33]+0.35*x[34]+0.73*x[35]-0.46*x[36]-0.83*x[37]+0.9*x[38]-0.96*x[39]-0.02*x[40]+0.92*x[41]-0.8*x[42]+0.22*x[43]+0.27*x[44]+0.8*x[45]-0.54*x[46]+0.57*x[47]+0.27*x[48]-0.99*x[49]-0.92*x[50]-0.74*x[51]-0.51*x[52]+0.64*x[53]+0.1*x[54]+0.05*x[55]+0.79*x[56]-0.98*x[57]+0.41*x[58]+0.83*x[59]+0.58*x[60]-0.52*x[61] == 1.0)
@constraint(m, e9, -0.78*x[2]+0.02*x[3]-0.99*x[4]+0.65*x[5]+0.31*x[6]-0.02*x[7]-0.86*x[8]+0.7*x[9]+0.11*x[10]+0.56*x[11]+0.87*x[12]+0.89*x[13]-0.67*x[14]+0.72*x[15]-0.99*x[16]+0.89*x[17]+0.88*x[18]-0.73*x[19]+0.79*x[20]-0.93*x[21]-0.59*x[22]+0.29*x[23]+0.24*x[24]-0.6*x[25]+0.57*x[26]-0.77*x[27]+0.25*x[28]+0.91*x[29]+0.52*x[30]-0.56*x[31]+0.59*x[32]-0.65*x[33]+0.5*x[34]+0.54*x[35]+0.1*x[36]-0.33*x[37]+0.26*x[38]-0.69*x[39]+0.75*x[40]+0.22*x[41]+0.62*x[42]-0.57*x[43]+0.64*x[44]+0.32*x[46]-0.46*x[47]+0.29*x[48]-0.57*x[49]+0.45*x[50]-0.34*x[51]+0.48*x[52]-0.87*x[53]+0.2*x[54]-0.22*x[55]+0.85*x[56]+0.74*x[57]-0.39*x[58]+0.23*x[59]+0.75*x[60]-0.42*x[61] == -0.82)
@constraint(m, e10, -0.91*x[2]-0.39*x[3]-0.18*x[4]-0.41*x[5]+0.25*x[6]-0.39*x[7]-0.68*x[8]+0.89*x[9]-0.42*x[10]-0.56*x[11]-0.72*x[12]+0.96*x[13]+0.39*x[14]-0.39*x[15]-0.65*x[16]-0.05*x[17]-0.24*x[18]+0.21*x[19]-0.91*x[20]+0.07*x[21]+0.81*x[22]-0.32*x[23]+0.41*x[24]-0.68*x[25]+0.22*x[26]+0.04*x[27]+0.4*x[28]-0.21*x[29]+0.39*x[30]-0.61*x[31]+0.43*x[32]-0.54*x[33]+0.88*x[34]-0.08*x[35]+0.22*x[36]+0.95*x[37]+0.86*x[38]+0.86*x[39]-0.58*x[40]+0.27*x[41]+0.32*x[42]+0.95*x[43]-0.06*x[44]+0.03*x[45]-0.97*x[46]-0.24*x[47]+0.97*x[48]-0.93*x[49]-0.2*x[50]-0.88*x[51]+0.21*x[52]+0.04*x[53]+0.42*x[54]-0.93*x[55]+0.88*x[56]+0.91*x[57]+0.41*x[58]+0.92*x[59]+0.55*x[60]-0.31*x[61] == 0.86)
@constraint(m, e11, 0.91*x[2]-0.66*x[3]+0.88*x[4]+0.8*x[5]-0.71*x[6]+0.66*x[7]-0.47*x[8]-0.58*x[9]+0.69*x[10]-0.63*x[11]-0.83*x[12]-0.28*x[13]+0.63*x[14]-0.64*x[15]+0.5*x[16]+0.77*x[17]-0.6*x[18]+0.17*x[19]+0.8*x[20]-0.07*x[21]+0.17*x[22]-0.23*x[23]-0.15*x[24]+x[25]-0.78*x[26]-0.18*x[27]-0.28*x[28]+0.69*x[29]+0.25*x[30]+0.17*x[31]+0.68*x[32]-0.58*x[33]-0.86*x[34]-0.89*x[35]-0.83*x[36]+0.84*x[37]+0.49*x[38]-0.14*x[39]+0.53*x[40]-0.74*x[41]+0.98*x[42]-0.81*x[43]+0.09*x[44]-0.82*x[45]-0.68*x[46]-0.29*x[47]+0.15*x[48]+0.39*x[49]+0.2*x[50]+0.18*x[51]-0.02*x[52]-0.92*x[53]-0.3*x[54]+0.8*x[55]-0.84*x[56]-0.73*x[57]-0.69*x[58]+0.33*x[59]-0.5*x[60]+0.05*x[61] == -0.34)
@constraint(m, e12, -0.16*x[2]+0.65*x[3]+0.64*x[4]-0.6*x[5]-0.91*x[6]+0.41*x[7]+0.26*x[8]-0.29*x[9]-0.73*x[10]-0.93*x[11]-0.32*x[12]+0.4*x[13]-x[14]-0.7*x[15]+0.22*x[16]+0.92*x[17]-0.76*x[18]-0.28*x[19]+0.36*x[20]-0.51*x[21]-0.29*x[22]+0.71*x[23]-0.66*x[24]-0.43*x[25]-0.87*x[26]+0.66*x[27]-0.17*x[28]-0.72*x[29]-0.67*x[30]+0.76*x[31]+0.96*x[32]-0.5*x[33]+0.91*x[34]+0.71*x[35]+0.83*x[36]-0.7*x[37]-0.95*x[38]-0.22*x[39]+0.09*x[40]-0.62*x[41]-0.94*x[42]+0.02*x[43]-0.75*x[44]-0.92*x[45]-0.34*x[46]-0.83*x[47]+0.41*x[48]+0.79*x[49]-0.93*x[50]-0.39*x[51]-0.01*x[52]-0.91*x[53]-0.55*x[54]-0.2*x[55]+0.1*x[56]+0.17*x[57]+0.58*x[58]-0.16*x[59]-0.08*x[60]+0.69*x[61] == 0.04)
@constraint(m, e13, -0.91*x[2]+0.86*x[3]-0.32*x[4]-0.94*x[5]+0.66*x[6]+0.61*x[7]+0.09*x[8]+0.63*x[9]+0.67*x[10]-0.68*x[11]-0.43*x[12]+0.92*x[13]+0.22*x[14]-0.79*x[15]+0.39*x[16]+0.32*x[17]+0.64*x[18]-0.63*x[19]+0.36*x[20]+0.99*x[21]-0.1*x[22]-0.62*x[23]-0.21*x[24]+0.96*x[25]+0.84*x[26]+x[27]+0.63*x[28]+0.06*x[29]+0.05*x[30]+0.59*x[31]+0.92*x[32]+0.55*x[33]+0.63*x[34]-0.39*x[35]+0.04*x[36]-0.97*x[37]-0.37*x[38]-0.24*x[39]-0.66*x[40]+0.37*x[41]+0.46*x[42]-0.69*x[43]+0.76*x[44]-0.4*x[45]-0.09*x[46]+0.23*x[47]-0.81*x[48]+0.22*x[49]-0.69*x[50]+0.9*x[51]-0.04*x[52]-0.41*x[53]-0.76*x[54]+0.98*x[55]+0.49*x[56]-0.39*x[57]+0.94*x[58]+0.02*x[59]-0.19*x[60]+0.49*x[61] == -0.11)
@constraint(m, e14, 0.52*x[2]-0.49*x[3]-0.34*x[4]+0.4*x[5]+0.69*x[6]-0.31*x[7]+0.69*x[8]+0.38*x[9]-0.48*x[10]-0.85*x[11]-x[12]-0.17*x[13]-0.5*x[14]-0.75*x[15]+0.79*x[16]+0.13*x[17]+0.98*x[18]-0.95*x[19]+0.26*x[20]-0.32*x[21]+0.73*x[22]-0.69*x[23]+0.39*x[24]+0.81*x[25]-0.19*x[26]+0.04*x[27]+0.37*x[28]+0.55*x[29]-0.26*x[30]+0.41*x[31]+0.25*x[32]+0.29*x[33]+0.54*x[34]-0.55*x[35]-0.78*x[36]+0.17*x[37]-0.37*x[38]+0.28*x[39]-0.25*x[40]+0.18*x[41]-0.31*x[42]-0.89*x[43]-0.74*x[44]+0.44*x[45]-0.43*x[46]+0.67*x[47]+0.81*x[48]+0.46*x[49]-0.91*x[50]-0.37*x[51]-0.24*x[52]-0.12*x[53]-0.01*x[54]-0.3*x[55]-0.42*x[56]-0.15*x[57]+0.4*x[58]+0.02*x[59]+0.51*x[60]-0.5*x[61] == -0.6)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
