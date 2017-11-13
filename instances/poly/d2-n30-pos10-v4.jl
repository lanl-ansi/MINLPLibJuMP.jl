using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[1], 3.0)
setupperbound(x[1], 9.0)
setlowerbound(x[2], 1.0)
setupperbound(x[2], 7.0)
setlowerbound(x[3], 2.0)
setupperbound(x[3], 10.0)
setlowerbound(x[4], 3.0)
setupperbound(x[4], 6.0)
setupperbound(x[5], 7.0)
setlowerbound(x[6], 1.0)
setupperbound(x[6], 8.0)
setlowerbound(x[7], 3.0)
setupperbound(x[7], 6.0)
setupperbound(x[8], 6.0)
setlowerbound(x[9], 1.0)
setupperbound(x[9], 6.0)
setlowerbound(x[10], 4.0)
setupperbound(x[10], 6.0)
setlowerbound(x[11], 2.0)
setupperbound(x[11], 10.0)
setlowerbound(x[12], 2.0)
setupperbound(x[12], 6.0)
setlowerbound(x[13], 4.0)
setupperbound(x[13], 9.0)
setlowerbound(x[14], 1.0)
setupperbound(x[14], 7.0)
setlowerbound(x[15], 4.0)
setupperbound(x[15], 9.0)
setlowerbound(x[16], 2.0)
setupperbound(x[16], 10.0)
setlowerbound(x[17], 2.0)
setupperbound(x[17], 8.0)
setlowerbound(x[18], 2.0)
setupperbound(x[18], 9.0)
setlowerbound(x[19], 2.0)
setupperbound(x[19], 8.0)
setlowerbound(x[20], 4.0)
setupperbound(x[20], 9.0)
setlowerbound(x[21], 4.0)
setupperbound(x[21], 6.0)
setlowerbound(x[22], 1.0)
setupperbound(x[22], 10.0)
setlowerbound(x[23], 3.0)
setupperbound(x[23], 9.0)
setlowerbound(x[24], 4.0)
setupperbound(x[24], 7.0)
setlowerbound(x[25], 2.0)
setupperbound(x[25], 6.0)
setlowerbound(x[26], 1.0)
setupperbound(x[26], 10.0)
setlowerbound(x[27], 3.0)
setupperbound(x[27], 9.0)
setlowerbound(x[28], 3.0)
setupperbound(x[28], 9.0)
setlowerbound(x[29], 3.0)
setupperbound(x[29], 10.0)
setlowerbound(x[30], 4.0)
setupperbound(x[30], 9.0)


# ----- Constraints ----- #
@constraint(m, e1, -4.23*x[5]+2.18*x[8]-1.96*x[24]-1.25*x[25]-4.12*x[26] >= -46.7)
@constraint(m, e2, (-1.67*x[1]*x[2])-2.53*x[2]+4.58*x[1]*x[3]-3.9*x[1]*x[4]-2.79*x[1]*x[8]+2.95*x[1]*x[13]+1.13*x[1]*x[20]+4.5*x[20]+0.85*x[1]*x[21]+3.17*x[21]-2.09*x[1]*x[22]+3.79*x[1]*x[25]+4.72*x[2]*x[4]+3.7*x[2]*x[5]+2.63*x[2]*x[8]+3.69*x[2]*x[11]+3.69*x[11]-4.11*x[2]*x[13]-4.05*x[2]*x[16]+1.6*x[2]*x[21]+0.5*x[2]*x[22]+1.06*x[2]*x[25]+1.54*x[3]*x[3]+1.7*x[3]*x[4]-4.66*x[3]*x[5]+4.39*x[3]*x[7]-3.98*x[3]*x[11]-1.82*x[3]*x[13]+4.09*x[3]*x[15]-3.51*x[3]*x[22]-0.13*x[3]*x[23]+1.24*x[23]-4.83*x[3]*x[26]-0.85*x[26]-2.08*x[4]*x[5]-0.23*x[4]*x[6]-1.45*x[4]*x[13]+2.9*x[4]*x[14]-0.45*x[5]*x[6]-2.32*x[5]*x[9]+4.28*x[5]*x[20]+0.97*x[5]*x[21]-0.4*x[5]*x[25]+3.59*x[6]*x[11]+2.46*x[6]*x[14]-4.84*x[6]*x[18]-2.98*x[6]*x[22]-0.94*x[6]*x[24]+0.04*x[24]+4.94*x[6]*x[29]+2.8*x[7]*x[7]-4.09*x[7]*x[15]-4.45*x[7]*x[16]-0.35*x[7]*x[17]+1.41*x[7]*x[19]+4.66*x[19]+2.13*x[7]*x[22]-1.8*x[7]*x[29]+1.29*x[7]*x[30]+2.14*x[8]*x[12]+4.18*x[8]*x[13]-0.2*x[8]*x[22]+1.4*x[8]*x[26]+2.08*x[8]*x[29]+1.14*x[9]*x[9]-4.73*x[9]*x[11]-3.51*x[9]*x[13]-4.88*x[9]*x[15]+3.3*x[9]*x[20]-3.86*x[10]*x[15]+3.46*x[10]*x[16]-1.17*x[10]*x[22]-3.11*x[10]*x[28]+2.98*x[10]*x[29]-1.73*x[11]*x[13]-1.92*x[11]*x[17]+3.61*x[11]*x[19]+4.62*x[11]*x[20]+0.85*x[11]*x[25]+0.48*x[11]*x[26]-4.9*x[11]*x[30]-0.29*x[12]*x[14]+0.9*x[12]*x[18]+0.59*x[12]*x[22]-0.47*x[12]*x[23]+3.98*x[12]*x[24]-3.46*x[12]*x[30]+1.09*x[13]*x[13]+1.02*x[13]*x[15]+0.04*x[13]*x[27]+1.64*x[27]-1.08*x[13]*x[30]+0.82*x[14]*x[16]-3.94*x[14]*x[17]-1.92*x[14]*x[20]+1.12*x[14]*x[23]-2.81*x[14]*x[25]+3.36*x[15]*x[16]+4.64*x[15]*x[21]-2.8*x[15]*x[29]+1.27*x[17]*x[18]+1.89*x[17]*x[20]-3.31*x[17]*x[22]+1.91*x[17]*x[30]-4.86*x[18]*x[18]+0.67*x[19]*x[22]+3.44*x[19]*x[24]-1.05*x[19]*x[25]-1.61*x[19]*x[29]+1.89*x[20]*x[24]+0.34*x[20]*x[26]+1.47*x[20]*x[28]+0.32*x[20]*x[30]-0.44*x[21]*x[25]+4.54*x[21]*x[27]-0.49*x[21]*x[29]+3.37*x[21]*x[30]-2.59*x[22]*x[22]+4.88*x[22]*x[27]+4.13*x[22]*x[28]-0.26*x[22]*x[29]-4.29*x[22]*x[30]+2.57*x[23]*x[24]+4.13*x[23]*x[25]-1.92*x[23]*x[30]+0.29*x[24]*x[25]+2.24*x[24]*x[27]-1.53*x[25]*x[26]+4.63*x[25]*x[28]+0.8*x[26]*x[27]-0.75*x[26]*x[28]-3.07*x[27]*x[28]-0.22*x[27]*x[30] >= 652.4)
@constraint(m, e3, -0.25*x[1]-2.16*x[8]-0.75*x[12]-3.37*x[16]-3.66*x[18]-2.71*x[25]-1.82*x[26] >= -72.2)
@constraint(m, e4, 3.87*x[1]*x[3]-2.99*x[1]*x[9]+3.29*x[1]*x[13]+2.16*x[1]*x[16]+1.4*x[1]*x[25]-2.19*x[1]*x[26]+1.61*x[1]*x[27]+0.91*x[2]*x[7]+2.3*x[7]-1.71*x[2]*x[25]-3.69*x[2]*x[27]-3.32*x[3]*x[4]-4.84*x[3]*x[5]-1.36*x[3]*x[6]-4.94*x[3]*x[7]+4.4*x[3]*x[8]+4.03*x[3]*x[10]+3.91*x[3]*x[11]+2.33*x[3]*x[13]+1.21*x[3]*x[25]-0.42*x[3]*x[27]-1.62*x[3]*x[28]+3.66*x[28]+1.69*x[4]*x[10]+1.8*x[4]*x[29]+1.51*x[29]+1.15*x[5]*x[9]+3.11*x[5]*x[19]+1.55*x[19]-2.11*x[5]*x[23]-4.79*x[6]*x[19]-3.91*x[6]*x[20]+4.31*x[6]*x[23]-4.86*x[6]*x[27]-3.02*x[7]*x[10]+4.44*x[7]*x[11]-1.62*x[7]*x[13]-2.51*x[7]*x[16]-4.19*x[7]*x[17]-4.98*x[7]*x[19]+1.05*x[7]*x[21]+2.23*x[7]*x[24]+1.76*x[7]*x[28]-2.13*x[8]*x[8]-4.17*x[8]*x[10]-1.05*x[8]*x[12]-1.94*x[8]*x[14]-4.83*x[8]*x[15]+3.44*x[15]-2.01*x[8]*x[26]-3.36*x[8]*x[28]-0.9*x[8]*x[29]-0.95*x[9]*x[10]-1.31*x[9]*x[15]-2.86*x[9]*x[20]-2.03*x[9]*x[25]+2.51*x[10]*x[10]+0.05*x[10]*x[13]-1.35*x[10]*x[15]-4.1*x[10]*x[21]+1.31*x[10]*x[22]+4.13*x[10]*x[23]+3.75*x[11]*x[24]-1.35*x[11]*x[29]+3*x[12]*x[19]+2.67*x[12]*x[20]-4.57*x[12]*x[25]-1.74*x[12]*x[27]-0.74*x[12]*x[28]+2.23*x[12]*x[29]-0.19*x[12]*x[30]+0.71*x[13]*x[16]-4.94*x[13]*x[25]+2.19*x[13]*x[27]-1.24*x[13]*x[30]-2.5*x[14]*x[20]-1.35*x[14]*x[30]+2.15*x[15]*x[15]+2.92*x[15]*x[20]-4.19*x[15]*x[28]+1.35*x[15]*x[30]+1.62*x[16]*x[20]-2.1*x[16]*x[23]+4.95*x[16]*x[26]-1.87*x[16]*x[28]-1.69*x[17]*x[19]+3.94*x[17]*x[25]+1.5*x[17]*x[29]-3.56*x[18]*x[26]+2.94*x[18]*x[30]-4.28*x[19]*x[25]+2.09*x[20]*x[28]+2.73*x[20]*x[30]-3.53*x[21]*x[21]-3.63*x[21]*x[23]-1.24*x[22]*x[22]+2.39*x[22]*x[28]+4.85*x[22]*x[30]-1.22*x[25]*x[26]+1.17*x[25]*x[28]-2.07*x[26]*x[30]-0.91*x[27]*x[28]-4.85*x[29]*x[29]-3.09*x[30]*x[30] >= -689.5)
@constraint(m, e5, 3.09*x[6]-4.06*x[11]-0.35*x[14]+2.08*x[17]+0.87*x[20] >= 4.1)
@constraint(m, e6, 4.75*x[1]*x[12]-5*x[1]*x[21]-1.13*x[1]*x[22]+1.54*x[1]*x[25]+3.03*x[25]+1.88*x[1]*x[26]-3.2*x[26]-4.22*x[1]*x[29]-0.36*x[29]+0.48*x[2]*x[6]-2.57*x[2]*x[8]-4.07*x[8]+2.86*x[2]*x[16]-2.46*x[16]-2.51*x[2]*x[22]-1.96*x[2]*x[25]+3.15*x[2]*x[26]+0.43*x[2]*x[29]+2.02*x[3]*x[5]-3.58*x[3]-3.2*x[5]-0.01*x[3]*x[6]+2.93*x[3]*x[10]+1.33*x[10]-1.23*x[3]*x[19]-1.84*x[19]+0.35*x[3]*x[21]-4.23*x[3]*x[22]-4.36*x[3]*x[24]+2.12*x[24]-3.47*x[4]*x[5]-4.74*x[4]*x[12]+2.22*x[4]*x[13]-2.65*x[4]*x[15]+0.12*x[4]*x[16]+2.48*x[4]*x[18]-0.36*x[18]+0.65*x[4]*x[23]-4.83*x[4]*x[24]-3.44*x[4]*x[28]-4.46*x[4]*x[30]-3.77*x[5]*x[7]+2.49*x[5]*x[8]-3.76*x[5]*x[13]-4.81*x[5]*x[14]-1.24*x[5]*x[21]+4.67*x[6]*x[6]+0.17*x[6]*x[10]-2.96*x[6]*x[12]-2.96*x[6]*x[14]+3.2*x[6]*x[17]-3.32*x[6]*x[19]+2.76*x[6]*x[26]+3.72*x[7]*x[8]+2.84*x[7]*x[13]+0.43*x[7]*x[14]+3.15*x[7]*x[16]-3.15*x[7]*x[19]+1.55*x[7]*x[23]-3.31*x[7]*x[27]+4.33*x[7]*x[28]-0.79*x[7]*x[29]+1.97*x[7]*x[30]+2.16*x[8]*x[8]+2.14*x[8]*x[10]+0.7*x[8]*x[15]-0.64*x[8]*x[18]-0.23*x[8]*x[21]-2.65*x[8]*x[25]+2.88*x[8]*x[29]+1.88*x[9]*x[18]+3.5*x[9]*x[19]+2.92*x[9]*x[22]-1.95*x[9]*x[28]+2.66*x[9]*x[29]+3.34*x[10]*x[20]+0.51*x[10]*x[21]+2.46*x[10]*x[25]-0.69*x[10]*x[26]-4.44*x[10]*x[27]-1.81*x[10]*x[29]+1.5*x[11]*x[12]-0.53*x[11]*x[13]+0.72*x[11]*x[14]+3.55*x[11]*x[17]+0.69*x[11]*x[18]+2.06*x[11]*x[19]+1.56*x[11]*x[29]+1.54*x[12]*x[12]+2.52*x[12]*x[15]-0.5*x[12]*x[16]+2.81*x[12]*x[17]+2*x[12]*x[24]+2.71*x[12]*x[26]+1.65*x[12]*x[27]+4.79*x[12]*x[30]+0.52*x[13]*x[13]-3.51*x[13]*x[26]+4.36*x[13]*x[30]+2.18*x[14]*x[14]+1.81*x[14]*x[16]+1.2*x[14]*x[20]-1.52*x[14]*x[26]-4.63*x[14]*x[27]-4.34*x[14]*x[29]+2.88*x[15]*x[24]+0.52*x[16]*x[22]-4.84*x[16]*x[27]-0.71*x[16]*x[29]-0.61*x[16]*x[30]-0.38*x[17]*x[17]+4.05*x[17]*x[21]-4.31*x[17]*x[28]-3.43*x[18]*x[23]+4.1*x[18]*x[24]-4.51*x[18]*x[30]+2.02*x[19]*x[19]+0.75*x[19]*x[20]-0.56*x[19]*x[28]-4.51*x[20]*x[20]+0.1*x[20]*x[22]+0.37*x[20]*x[29]+1.64*x[20]*x[30]-3.1*x[21]*x[28]+4.73*x[21]*x[29]+1.04*x[22]*x[26]-0.44*x[23]*x[26]-2.98*x[23]*x[29]-3.5*x[24]*x[26]-1.39*x[24]*x[28]-3.63*x[24]*x[30]+0.45*x[25]*x[26]-2.54*x[25]*x[29]+0.96*x[25]*x[30]+0.59*x[26]*x[28]+1.64*x[26]*x[29]+2.77*x[29]*x[29] >= -294.1)
@constraint(m, e7, 4.29*x[1]-2.67*x[2]-0.13*x[3]+0.79*x[4]-3.27*x[6]-3.3*x[9]-0.49*x[10]-4.83*x[15]-1.2*x[22] >= -48.9)
@constraint(m, e8, 1.21*x[1]*x[7]-3.18*x[7]-0.02*x[1]*x[9]+2.53*x[1]*x[10]-3.6*x[10]-2.2*x[1]*x[17]-1.73*x[1]*x[19]-3.9*x[1]*x[22]-1.46*x[1]*x[26]+0.97*x[2]*x[3]-4.7*x[3]+3.39*x[2]*x[4]+1.55*x[4]+1.4*x[2]*x[5]-2.11*x[2]*x[6]+4.41*x[2]*x[8]-4.12*x[2]*x[10]-2.44*x[2]*x[13]-1.97*x[2]*x[14]-2.76*x[2]*x[19]-3.57*x[2]*x[23]-3.77*x[23]+4.76*x[2]*x[26]+4.75*x[2]*x[28]+2.48*x[28]+3.07*x[2]*x[30]-1.05*x[3]*x[3]-2.06*x[3]*x[7]+2.86*x[3]*x[10]-2.85*x[3]*x[13]-3.02*x[3]*x[17]-4.86*x[3]*x[20]-1.29*x[3]*x[24]+3.55*x[3]*x[25]+4.97*x[25]-1.92*x[3]*x[27]-3.92*x[27]-1.62*x[4]*x[5]+1.2*x[4]*x[15]-1.14*x[15]-0.36*x[4]*x[22]-2.75*x[4]*x[23]+1.88*x[5]*x[5]+3.01*x[5]*x[10]+1.62*x[5]*x[17]+0.53*x[5]*x[21]-1.61*x[5]*x[30]+2.96*x[6]*x[6]-1.07*x[6]*x[7]+4.23*x[6]*x[16]-3.27*x[6]*x[21]+0.5*x[6]*x[27]-3.59*x[6]*x[29]-5*x[7]*x[18]+4.31*x[7]*x[20]-2.28*x[7]*x[21]-3.15*x[7]*x[29]-3.44*x[7]*x[30]+2.3*x[8]*x[9]-2.45*x[8]*x[10]+0.31*x[8]*x[13]-1.38*x[8]*x[18]-0.12*x[8]*x[20]+3.51*x[8]*x[21]-3.71*x[8]*x[27]-0.28*x[9]*x[11]+2.55*x[9]*x[17]+1.19*x[9]*x[19]+4.57*x[9]*x[20]+1.09*x[9]*x[23]+0.95*x[10]*x[15]-1.48*x[10]*x[17]-3.44*x[10]*x[21]+3.47*x[10]*x[23]-0.96*x[11]*x[16]+1.2*x[11]*x[21]-0.73*x[11]*x[23]-0.42*x[11]*x[24]-0.94*x[12]*x[14]+3.62*x[12]*x[21]+2.33*x[12]*x[24]-0.93*x[12]*x[28]-3.56*x[13]*x[13]+0.37*x[13]*x[19]+3.34*x[13]*x[22]-2.4*x[13]*x[30]-0.81*x[14]*x[14]-1.15*x[14]*x[17]-2.92*x[14]*x[19]-0.71*x[14]*x[27]+3.62*x[14]*x[29]-2.68*x[14]*x[30]-0.56*x[15]*x[19]+1.34*x[15]*x[25]-4.32*x[15]*x[27]-1.8*x[16]*x[17]+4.87*x[16]*x[22]+0.87*x[16]*x[29]+1.1*x[17]*x[20]-3.42*x[17]*x[22]-4.2*x[17]*x[28]-3.38*x[18]*x[18]-3.47*x[18]*x[19]-2.06*x[18]*x[26]+2.75*x[19]*x[20]-3.89*x[19]*x[29]-3.65*x[20]*x[24]-2.03*x[20]*x[29]+2.39*x[21]*x[24]-2.97*x[21]*x[26]+1.81*x[22]*x[29]-1.91*x[23]*x[29]-4.44*x[23]*x[30]+4.09*x[26]*x[29]+3.43*x[26]*x[30]-4.08*x[27]*x[27]-3.36*x[27]*x[28]-4.59*x[27]*x[30]+1.6*x[28]*x[28] >= -2215.3)
@constraint(m, e9, 2.14*x[1]-3.39*x[3]-2.45*x[4]+3.62*x[9]+0.19*x[14]-3.77*x[23]+2.58*x[25]-4.28*x[28] >= -43.1)
@constraint(m, e10, (-2.34*x[1]*x[2])-3.67*x[1]*x[5]+1.51*x[5]+3.38*x[1]*x[6]-3.76*x[1]*x[9]+1.26*x[1]*x[10]+1.89*x[1]*x[13]-2.48*x[1]*x[15]+3.68*x[15]+2.03*x[1]*x[20]-0.67*x[1]*x[22]-0.26*x[1]*x[27]+1.06*x[1]*x[30]-4.72*x[30]+3.34*x[2]*x[4]+3.92*x[4]-0.38*x[2]*x[15]+3.39*x[2]*x[20]-2.15*x[2]*x[24]-1.64*x[2]*x[29]+0.16*x[29]-2.66*x[3]*x[9]+0.1*x[3]*x[10]-0.18*x[3]*x[14]-1.78*x[3]*x[16]+2.4*x[16]+2.93*x[3]*x[20]+0.01*x[3]*x[29]-3.31*x[4]*x[4]-4.57*x[4]*x[5]+0.03*x[4]*x[10]+0.27*x[4]*x[11]-4.37*x[4]*x[13]+0.32*x[4]*x[20]+2.98*x[4]*x[25]+4.48*x[5]*x[6]+2.27*x[5]*x[9]+4.18*x[5]*x[17]+3.26*x[5]*x[18]-2.13*x[18]-1.75*x[5]*x[23]+2.48*x[6]*x[7]-3.52*x[6]*x[9]-0.62*x[6]*x[16]+2.22*x[6]*x[17]-3.46*x[6]*x[18]+1.11*x[6]*x[23]-0.73*x[6]*x[25]-3.1*x[6]*x[26]-3.03*x[26]+0.22*x[6]*x[30]-2.24*x[7]*x[16]+2.23*x[8]*x[8]+2.9*x[8]*x[12]+1.6*x[8]*x[13]-4.38*x[8]*x[14]+4.29*x[8]*x[15]-3.06*x[8]*x[24]+1.26*x[9]*x[16]+1.81*x[9]*x[21]+4.07*x[9]*x[25]+3.95*x[9]*x[26]+1.49*x[9]*x[30]+1.6*x[10]*x[11]+2.52*x[10]*x[12]+2.44*x[10]*x[14]+3.49*x[10]*x[15]-3.11*x[10]*x[16]-3.45*x[10]*x[22]-3.17*x[10]*x[24]+2.01*x[11]*x[20]-1.73*x[12]*x[12]-3.29*x[12]*x[23]+2.58*x[12]*x[26]-0.23*x[12]*x[27]-2.37*x[12]*x[29]-0.57*x[13]*x[18]+4.11*x[13]*x[20]+1.49*x[13]*x[27]-1.61*x[14]*x[14]+4.03*x[14]*x[15]+3.66*x[14]*x[18]+3.43*x[14]*x[19]+4.61*x[14]*x[24]+0.53*x[14]*x[26]-2.2*x[14]*x[29]-0.2*x[15]*x[15]+1.09*x[15]*x[17]-3.36*x[15]*x[18]+3.43*x[15]*x[19]+4.24*x[15]*x[27]+3.15*x[15]*x[28]-0.06*x[15]*x[30]-0.15*x[16]*x[25]-4.82*x[16]*x[26]-1.35*x[16]*x[28]+3.04*x[17]*x[17]-1.73*x[17]*x[19]-3.6*x[17]*x[29]+2.93*x[18]*x[18]+3.07*x[18]*x[23]+3.42*x[18]*x[24]-1.56*x[18]*x[26]+4.46*x[18]*x[30]+0.88*x[19]*x[20]+4.14*x[19]*x[23]+2.03*x[19]*x[25]+4.12*x[19]*x[30]-3.47*x[20]*x[25]+4.69*x[21]*x[21]+4.43*x[21]*x[23]-1.19*x[21]*x[24]-1.64*x[21]*x[26]+2.48*x[21]*x[28]+0.79*x[22]*x[23]-1.36*x[22]*x[29]+0.66*x[24]*x[28]+1.24*x[24]*x[29]+4.05*x[25]*x[26]+4.41*x[25]*x[30]+1.31*x[26]*x[27]+2.4*x[26]*x[28]-1.78*x[27]*x[29]+2.52*x[28]*x[28] >= 2288.5)
@constraint(m, e11, -3.73*x[4]+2*x[7]+4.51*x[8]+3.1*x[10]-0.82*x[14]-4.58*x[15]-2.77*x[17]-1.16*x[18]-3.96*x[22]+2.57*x[23]+3.6*x[26]+2.71*x[29] >= -1.0)
@constraint(m, e12, 0.78*x[1]-1.12*x[1]*x[5]+1.26*x[1]*x[6]+1.53*x[1]*x[7]+x[1]*x[16]+1.33*x[1]*x[21]+1.3*x[1]*x[22]-4.51*x[1]*x[24]-3.32*x[1]*x[25]-4.14*x[1]*x[26]+3.68*x[2]*x[5]-2.75*x[2]-2.78*x[2]*x[6]-2.79*x[2]*x[15]+4.31*x[2]*x[17]-4.28*x[2]*x[23]-3.59*x[23]-0.61*x[3]*x[6]+3.8*x[3]*x[10]-4.98*x[3]*x[13]-4.85*x[3]*x[16]-1.45*x[3]*x[19]+4.7*x[3]*x[21]-1.99*x[3]*x[22]-1.03*x[4]*x[7]-4.07*x[4]*x[9]+2.88*x[4]*x[14]+4.77*x[14]+1.3*x[4]*x[15]-4.83*x[4]*x[16]+0.4*x[4]*x[19]-4.11*x[4]*x[29]-1.35*x[5]*x[11]+3.67*x[5]*x[13]-3.12*x[5]*x[15]-1.9*x[5]*x[18]+3.67*x[5]*x[19]+1.31*x[5]*x[23]-0.74*x[5]*x[25]-3.29*x[5]*x[29]+2.98*x[6]*x[13]-3.6*x[6]*x[15]+1.71*x[6]*x[24]+3.09*x[6]*x[26]-4.8*x[6]*x[27]+2.6*x[6]*x[29]-x[7]*x[7]-4.48*x[7]*x[12]-4.1*x[7]*x[19]+2.68*x[7]*x[23]+3.64*x[7]*x[26]+4.38*x[8]*x[8]+3.03*x[8]*x[11]-2.22*x[8]*x[13]-1.51*x[8]*x[15]-0.41*x[8]*x[18]+2.97*x[8]*x[24]-0.73*x[8]*x[25]-0.89*x[8]*x[26]-2.75*x[8]*x[28]-2.84*x[9]*x[15]+1.73*x[9]*x[19]+3.64*x[9]*x[21]-2.44*x[9]*x[23]+4.48*x[9]*x[24]+1.14*x[9]*x[27]+2.88*x[10]*x[11]+4.91*x[10]*x[19]+2.19*x[10]*x[21]-4.29*x[10]*x[26]+4.37*x[10]*x[29]-1.44*x[11]*x[12]+1.83*x[11]*x[15]-2.19*x[11]*x[24]+2.12*x[11]*x[27]-0.09*x[12]*x[12]+1.98*x[12]*x[16]+0.49*x[12]*x[21]+0.27*x[13]*x[14]-3.72*x[13]*x[18]+3.13*x[13]*x[22]-2.99*x[13]*x[24]+3.4*x[14]*x[14]+4.45*x[14]*x[17]+3.54*x[14]*x[21]-4.65*x[14]*x[22]-3.26*x[14]*x[23]+4.21*x[14]*x[26]-1.59*x[15]*x[19]-2.88*x[15]*x[21]+4.32*x[15]*x[26]+3.81*x[16]*x[16]+4.77*x[16]*x[20]+2.84*x[16]*x[30]+4.21*x[17]*x[24]-1.11*x[18]*x[18]+4.63*x[18]*x[21]+4.11*x[18]*x[29]-0.03*x[19]*x[19]+4.04*x[19]*x[29]-1.48*x[20]*x[25]-4.66*x[21]*x[22]-2.13*x[21]*x[24]+0.35*x[21]*x[26]-0.32*x[21]*x[30]+0.57*x[22]*x[28]+3.86*x[23]*x[25]-0.4*x[23]*x[26]+3.29*x[24]*x[28]-1.61*x[24]*x[29]-2.17*x[25]*x[25]-1.52*x[25]*x[26]+4.56*x[25]*x[27]+4.28*x[25]*x[28]-3.33*x[26]*x[28]+4.68*x[26]*x[29]-0.8*x[26]*x[30]+0.45*x[27]*x[30]-3.93*x[28]*x[28]+2.75*x[28]*x[29]+3.29*x[30]*x[30] >= 1034.4)
@constraint(m, e13, 3.11*x[1]-0.67*x[2]-2.06*x[8]-0.2*x[10]+2.83*x[11]+2.91*x[19] >= 40.3)
@constraint(m, e14, 3.91*x[1]*x[3]-1.91*x[3]-3.61*x[1]*x[12]+1.81*x[12]+2.41*x[1]*x[17]+0.23*x[17]-1.58*x[1]*x[20]-4.85*x[1]*x[22]-3.08*x[22]-0.93*x[1]*x[30]-2.8*x[2]*x[5]-1.77*x[2]*x[16]-1.12*x[2]*x[17]-2.01*x[2]*x[22]-2.56*x[2]*x[23]+3.14*x[23]+1.1*x[2]*x[25]-1.95*x[2]*x[26]-3.44*x[2]*x[27]+2.13*x[2]*x[28]+1.26*x[2]*x[30]+1.78*x[3]*x[3]+2.55*x[3]*x[4]+1.87*x[4]-2.98*x[3]*x[8]-2.19*x[8]-3.03*x[3]*x[12]+3.91*x[3]*x[13]+4.3*x[3]*x[17]-0.45*x[3]*x[26]-4.04*x[3]*x[27]-4.93*x[3]*x[29]-0.55*x[3]*x[30]+2.78*x[4]*x[6]-3.94*x[4]*x[9]+3.69*x[4]*x[13]+1.88*x[4]*x[18]+3.04*x[18]-2.04*x[4]*x[29]+3.36*x[5]*x[8]-0.51*x[5]*x[10]-3.08*x[5]*x[13]+4.59*x[5]*x[14]-1.25*x[14]-1.27*x[5]*x[19]+4.89*x[5]*x[21]+3.21*x[5]*x[25]-0.06*x[5]*x[27]+4.53*x[6]*x[6]-3.79*x[6]*x[10]-1.61*x[6]*x[12]-0.7*x[6]*x[14]+1.87*x[6]*x[25]-3.1*x[6]*x[28]-3.79*x[7]*x[16]+0.68*x[7]*x[18]+0.8*x[7]*x[19]-2.91*x[7]*x[21]+2.55*x[7]*x[23]-4.89*x[8]*x[10]-1.82*x[8]*x[16]-0.91*x[8]*x[18]-0.65*x[8]*x[20]+0.15*x[8]*x[23]+0.75*x[8]*x[26]-1.11*x[9]*x[10]+1.83*x[9]*x[18]-1.05*x[9]*x[21]-0.41*x[9]*x[22]+4.63*x[9]*x[29]+4.49*x[9]*x[30]+1.39*x[10]*x[10]+1.91*x[10]*x[11]+4.75*x[10]*x[15]-4.07*x[10]*x[18]+3.9*x[10]*x[23]+4.17*x[10]*x[24]-3.74*x[10]*x[25]-3.75*x[10]*x[26]-4.9*x[11]*x[14]+3.44*x[11]*x[19]-2.73*x[11]*x[24]+0.45*x[11]*x[25]+3.01*x[11]*x[26]-2.96*x[11]*x[27]-3.02*x[11]*x[30]+0.39*x[12]*x[17]+3.73*x[12]*x[18]+4.36*x[12]*x[27]+4.02*x[13]*x[16]+1.53*x[13]*x[23]+4.4*x[13]*x[25]-2.22*x[13]*x[26]-1.98*x[14]*x[15]-2.08*x[14]*x[20]-4.88*x[14]*x[21]-0.72*x[14]*x[26]+4.64*x[15]*x[17]+1.96*x[15]*x[28]+3*x[15]*x[29]-3.74*x[16]*x[24]+1.78*x[16]*x[25]-0.39*x[17]*x[19]-0.82*x[17]*x[21]-3.83*x[17]*x[23]-0.16*x[17]*x[28]-3.66*x[18]*x[21]+0.52*x[18]*x[29]-1.59*x[19]*x[22]-0.14*x[20]*x[20]-1.39*x[20]*x[23]+0.39*x[20]*x[24]+2.96*x[21]*x[23]+0.61*x[21]*x[24]-3.37*x[21]*x[25]+1.96*x[22]*x[22]+2.47*x[23]*x[26]+3.34*x[24]*x[25]-0.09*x[24]*x[28]-3.95*x[24]*x[30]+3.71*x[25]*x[28]-1.08*x[27]*x[29]+0.18*x[27]*x[30] >= -10.6)
@constraint(m, e15, 1.08*x[1]+0.52*x[14]-3.65*x[24]+3.16*x[26] >= 5.8)
@constraint(m, e16, 4.54*x[1]*x[7]-1.65*x[1]*x[5]+1.03*x[1]*x[22]+2.08*x[22]+0.33*x[2]*x[9]-2.9*x[9]+1.85*x[2]*x[13]-1.07*x[2]*x[16]-4.48*x[2]*x[21]+0.82*x[2]*x[30]-3.77*x[3]*x[18]-2.2*x[3]*x[23]-3*x[3]*x[25]-3.44*x[4]*x[4]+2.88*x[4]+2.35*x[4]*x[5]-4.71*x[4]*x[8]+4.44*x[8]-1.4*x[4]*x[9]+2.38*x[4]*x[12]-1.14*x[4]*x[13]-0.48*x[4]*x[23]-3.04*x[4]*x[27]+0.8*x[4]*x[29]+0.16*x[5]*x[9]-0.48*x[5]*x[10]-3.58*x[5]*x[11]+3.62*x[5]*x[15]-3.37*x[5]*x[29]-4.9*x[6]*x[8]+4.92*x[6]*x[14]-1.84*x[6]*x[16]+4.22*x[6]*x[23]+1.06*x[6]*x[24]-0.8*x[24]+0.76*x[7]*x[15]-3.18*x[7]*x[18]-2.91*x[7]*x[20]-3.78*x[20]-3.16*x[7]*x[25]+1.22*x[8]*x[11]+3.31*x[8]*x[13]-4.28*x[8]*x[16]-2.71*x[8]*x[19]+3.29*x[8]*x[23]-1.82*x[8]*x[24]-0.67*x[8]*x[29]-1.03*x[8]*x[30]+3.97*x[9]*x[11]+0.96*x[9]*x[12]-1.51*x[9]*x[19]-1.21*x[9]*x[21]-0.62*x[10]*x[19]+1.38*x[10]*x[27]+3.53*x[11]*x[11]-1.24*x[11]*x[12]+0.79*x[11]*x[14]+0.74*x[11]*x[15]+4.98*x[11]*x[23]-1.42*x[11]*x[25]+2.65*x[11]*x[27]-2.06*x[11]*x[28]+3.02*x[11]*x[29]-2.51*x[12]*x[12]+2.9*x[12]*x[13]-3.33*x[12]*x[17]-1.03*x[12]*x[20]+3.4*x[12]*x[22]+4.12*x[12]*x[24]-4.79*x[12]*x[25]+1.02*x[12]*x[27]-2.23*x[13]*x[13]-0.91*x[13]*x[17]+1.66*x[13]*x[27]-1.94*x[14]*x[14]-0.96*x[14]*x[17]-3.64*x[14]*x[22]+1.88*x[14]*x[24]-2.36*x[14]*x[25]-1.3*x[14]*x[26]-4.36*x[14]*x[28]-2.27*x[15]*x[18]+2.61*x[15]*x[20]+2.13*x[15]*x[22]+4.31*x[15]*x[23]+0.96*x[15]*x[24]-1.55*x[16]*x[23]+0.49*x[16]*x[24]+3.13*x[16]*x[26]-0.38*x[16]*x[29]-3.27*x[16]*x[30]-0.23*x[17]*x[25]-1.09*x[18]*x[22]+4.1*x[18]*x[23]+0.94*x[18]*x[24]+3.01*x[18]*x[26]+3.1*x[18]*x[30]-0.5*x[19]*x[22]+0.99*x[19]*x[24]+2.63*x[19]*x[28]+3.5*x[20]*x[24]-0.14*x[21]*x[28]-2.24*x[22]*x[22]+2.43*x[22]*x[28]-3.02*x[23]*x[28]+0.3*x[25]*x[29]-3.47*x[26]*x[28]+1.89*x[27]*x[29]+4.29*x[28]*x[28]+3.34*x[29]*x[30] >= 640.7)
@constraint(m, e17, -(-2.35*x[1]*x[1]-4.83*x[1]-4.37*x[1]*x[2]-3.19*x[2]-3.4*x[1]*x[3]-1.3*x[3]-9.08*x[1]*x[4]-5.89*x[4]-5.36*x[1]*x[5]-6.88*x[5]-8.15*x[1]*x[6]-3.73*x[6]-2.77*x[1]*x[7]-6.61*x[7]+8.69*x[1]*x[8]-4.42*x[8]-1.38*x[1]*x[9]-9.48*x[9]-7.5*x[1]*x[10]+6.75*x[10]-1.25*x[1]*x[11]-2.98*x[11]-7.13*x[1]*x[12]-7.74*x[12]-9.5*x[1]*x[13]-2.22*x[13]-3.81*x[1]*x[14]-2.07*x[14]+4.34*x[1]*x[15]-0.24*x[15]-1.54*x[1]*x[16]-2.6*x[16]-5.8*x[1]*x[17]-4.16*x[17]+6.3*x[1]*x[18]-6.6*x[18]-4.36*x[1]*x[19]-3.07*x[19]-8.15*x[1]*x[20]-8.16*x[20]-7.73*x[1]*x[21]-9.44*x[21]-1.73*x[1]*x[22]-8.99*x[22]-8.68*x[1]*x[23]-6.11*x[23]-5.22*x[1]*x[24]-4.03*x[24]-5.54*x[1]*x[25]-9.34*x[25]+9.59*x[1]*x[26]-0.85*x[26]-1.95*x[1]*x[27]+3.47*x[27]-9.95*x[1]*x[28]-9.83*x[28]-5.78*x[1]*x[29]-7.9*x[29]-6.08*x[1]*x[30]-0.32*x[30]-9.39*x[2]*x[2]-5.45*x[2]*x[3]-6.24*x[2]*x[4]-5.4*x[2]*x[5]-3.42*x[2]*x[6]-8.48*x[2]*x[7]-7.26*x[2]*x[8]-1.74*x[2]*x[9]+0.74*x[2]*x[10]-4.03*x[2]*x[11]-8.92*x[2]*x[12]-0.47*x[2]*x[13]-2.12*x[2]*x[14]-7.7*x[2]*x[15]-8.94*x[2]*x[16]-1.87*x[2]*x[17]-2*x[2]*x[18]+1.71*x[2]*x[19]+0.87*x[2]*x[20]-5.96*x[2]*x[21]-0.24*x[2]*x[22]-5.59*x[2]*x[23]+7.3*x[2]*x[24]-1.76*x[2]*x[25]+3*x[2]*x[26]-7.41*x[2]*x[27]-7.8*x[2]*x[28]-9.47*x[2]*x[29]+5.1*x[2]*x[30]-6.5*x[3]*x[3]-6.26*x[3]*x[4]-9*x[3]*x[5]-x[3]*x[6]-3.65*x[3]*x[7]-7.25*x[3]*x[8]-3.29*x[3]*x[9]+6.54*x[3]*x[10]-9.65*x[3]*x[11]-6.23*x[3]*x[12]-9.81*x[3]*x[13]-8.74*x[3]*x[14]-8.2*x[3]*x[15]-3.19*x[3]*x[16]-8.84*x[3]*x[17]-5.68*x[3]*x[18]+3.99*x[3]*x[19]-4.39*x[3]*x[20]-1.67*x[3]*x[21]+3.82*x[3]*x[22]-2.05*x[3]*x[23]-1.99*x[3]*x[24]-7.49*x[3]*x[25]-4.84*x[3]*x[26]+9.21*x[3]*x[27]-6.18*x[3]*x[28]-2.17*x[3]*x[29]-9.24*x[3]*x[30]-3.57*x[4]*x[4]-9.52*x[4]*x[5]-7.48*x[4]*x[6]+8.8*x[4]*x[7]-3.06*x[4]*x[8]-8.13*x[4]*x[9]-4.14*x[4]*x[10]-5.26*x[4]*x[11]-8.91*x[4]*x[12]-9.56*x[4]*x[13]-7.2*x[4]*x[14]-7.21*x[4]*x[15]-4.93*x[4]*x[16]-1.83*x[4]*x[17]-7.05*x[4]*x[18]+2.5*x[4]*x[19]-8.74*x[4]*x[20]-3.46*x[4]*x[21]-4.69*x[4]*x[22]-8.34*x[4]*x[23]-5.61*x[4]*x[24]-9.2*x[4]*x[25]-4.56*x[4]*x[26]-6.25*x[4]*x[27]-1.13*x[4]*x[28]-1.01*x[4]*x[29]-3.35*x[4]*x[30]+4.02*x[5]*x[5]+3.37*x[5]*x[6]-9.09*x[5]*x[7]-8.42*x[5]*x[8]-2.04*x[5]*x[9]-0.75*x[5]*x[10]-2.62*x[5]*x[11]-3.96*x[5]*x[12]-5.86*x[5]*x[13]+6.28*x[5]*x[14]-4.94*x[5]*x[15]-8.63*x[5]*x[16]-2.54*x[5]*x[17]-4.31*x[5]*x[18]-2.7*x[5]*x[19]-2.9*x[5]*x[20]-2.69*x[5]*x[21]+0.71*x[5]*x[22]-3.91*x[5]*x[23]-9.71*x[5]*x[24]-5.58*x[5]*x[25]-2.22*x[5]*x[26]-4.33*x[5]*x[27]-6.67*x[5]*x[28]-9.32*x[5]*x[29]-6.21*x[5]*x[30]-7.08*x[6]*x[6]-3.42*x[6]*x[7]-3.53*x[6]*x[8]-6.52*x[6]*x[9]-5.1*x[6]*x[10]-2.59*x[6]*x[11]-6.45*x[6]*x[12]-6.51*x[6]*x[13]+1.02*x[6]*x[14]-7.57*x[6]*x[15]-3.86*x[6]*x[16]-5.08*x[6]*x[17]-4.35*x[6]*x[18]-5.85*x[6]*x[19]-1.89*x[6]*x[20]-6.82*x[6]*x[21]-0.52*x[6]*x[22]-1.12*x[6]*x[23]-0.98*x[6]*x[24]-2*x[6]*x[25]+1.49*x[6]*x[26]-2.7*x[6]*x[27]-3.06*x[6]*x[28]-7.45*x[6]*x[29]-2.65*x[6]*x[30]-5.62*x[7]*x[7]-9.33*x[7]*x[8]+4.31*x[7]*x[9]-5.68*x[7]*x[10]-9.96*x[7]*x[11]-0.64*x[7]*x[12]-3.52*x[7]*x[13]-2.02*x[7]*x[14]-2.74*x[7]*x[15]-7.74*x[7]*x[16]-4.92*x[7]*x[17]-6.74*x[7]*x[18]-0.79*x[7]*x[19]-3.6*x[7]*x[20]-1.1*x[7]*x[21]-7.31*x[7]*x[22]-8.2*x[7]*x[23]-4.97*x[7]*x[24]-1.74*x[7]*x[25]-7.26*x[7]*x[26]-6.62*x[7]*x[27]-5.34*x[7]*x[28]-9.46*x[7]*x[29]-9.03*x[7]*x[30]-1.88*x[8]*x[8]-6.56*x[8]*x[9]-3.16*x[8]*x[10]-6.05*x[8]*x[11]-5.46*x[8]*x[12]-1.2*x[8]*x[13]-9.66*x[8]*x[14]+8.54*x[8]*x[15]-4.15*x[8]*x[16]-2.94*x[8]*x[17]+9.72*x[8]*x[18]-2.74*x[8]*x[19]-6.35*x[8]*x[20]-7.15*x[8]*x[21]-9.31*x[8]*x[22]-8.35*x[8]*x[23]-8.51*x[8]*x[24]-8.76*x[8]*x[25]-2.04*x[8]*x[26]-3.71*x[8]*x[27]-0.1*x[8]*x[28]+9.78*x[8]*x[29]-3.7*x[8]*x[30]-3.61*x[9]*x[9]-0.49*x[9]*x[10]-3.45*x[9]*x[11]+4.96*x[9]*x[12]-9.22*x[9]*x[13]-6.33*x[9]*x[14]-7.45*x[9]*x[15]-3*x[9]*x[16]-4.94*x[9]*x[17]-2.7*x[9]*x[18]-3.07*x[9]*x[19]-8.06*x[9]*x[20]-1.83*x[9]*x[21]-6.63*x[9]*x[22]-2.81*x[9]*x[23]-5.92*x[9]*x[24]-2.36*x[9]*x[25]-6.25*x[9]*x[26]-3.4*x[9]*x[27]-2.23*x[9]*x[28]-6.03*x[9]*x[29]-4.15*x[9]*x[30]-6.5*x[10]*x[10]-9.45*x[10]*x[11]-0.67*x[10]*x[12]-8.34*x[10]*x[13]-4.29*x[10]*x[14]-2.67*x[10]*x[15]-9.12*x[10]*x[16]-9.25*x[10]*x[17]-2.08*x[10]*x[18]-4.92*x[10]*x[19]+5.87*x[10]*x[20]+6.16*x[10]*x[21]-5.2*x[10]*x[22]-8.08*x[10]*x[23]+3.42*x[10]*x[24]+1.57*x[10]*x[25]-2.27*x[10]*x[26]-0.33*x[10]*x[27]-3.03*x[10]*x[28]-6.95*x[10]*x[29]-2.1*x[10]*x[30]-6.02*x[11]*x[11]-9.6*x[11]*x[12]-8.21*x[11]*x[13]+6.41*x[11]*x[14]-8.89*x[11]*x[15]+5.25*x[11]*x[16]-4.43*x[11]*x[17]-5.5*x[11]*x[18]-4.66*x[11]*x[19]-1.38*x[11]*x[20]-8.26*x[11]*x[21]-9.15*x[11]*x[22]-3.83*x[11]*x[23]-3.93*x[11]*x[24]-1.37*x[11]*x[25]-9.82*x[11]*x[26]-0.68*x[11]*x[27]-1.39*x[11]*x[28]-3.52*x[11]*x[29]-0.43*x[11]*x[30]-9.44*x[12]*x[12]-0.36*x[12]*x[13]-8.49*x[12]*x[14]-3.94*x[12]*x[15]-3.44*x[12]*x[16]-8.34*x[12]*x[17]-5.53*x[12]*x[18]-6.7*x[12]*x[19]-8.38*x[12]*x[20]-8.41*x[12]*x[21]-9.56*x[12]*x[22]-3.08*x[12]*x[23]-5.43*x[12]*x[24]-5.43*x[12]*x[25]-8.75*x[12]*x[26]-3.33*x[12]*x[27]-5.27*x[12]*x[28]+8.61*x[12]*x[29]+2.76*x[12]*x[30]-1.87*x[13]*x[13]-8.94*x[13]*x[14]+9.95*x[13]*x[15]-0.12*x[13]*x[16]-8.39*x[13]*x[17]-6.43*x[13]*x[18]-3.39*x[13]*x[19]-8.31*x[13]*x[20]-8.67*x[13]*x[21]-8.98*x[13]*x[22]-4.24*x[13]*x[23]-4.75*x[13]*x[24]-7.57*x[13]*x[25]-5.99*x[13]*x[26]-3.65*x[13]*x[27]-2.35*x[13]*x[28]-1.17*x[13]*x[29]-2.49*x[13]*x[30]-7.8*x[14]*x[14]-7.93*x[14]*x[15]-0.4*x[14]*x[16]-8.16*x[14]*x[17]-6.47*x[14]*x[18]-7.02*x[14]*x[19]-3.22*x[14]*x[20]-3.74*x[14]*x[21]-0.69*x[14]*x[22]-3.39*x[14]*x[23]-7.69*x[14]*x[24]-5.82*x[14]*x[25]-4.18*x[14]*x[26]-6.87*x[14]*x[27]-2.93*x[14]*x[28]-6.01*x[14]*x[29]-8.2*x[14]*x[30]-7.76*x[15]*x[15]-0.3*x[15]*x[16]-5.28*x[15]*x[17]+4.61*x[15]*x[18]-1.43*x[15]*x[19]-1.98*x[15]*x[20]-9.55*x[15]*x[21]-6.72*x[15]*x[22]-1.34*x[15]*x[23]-9.03*x[15]*x[24]-7.38*x[15]*x[25]-2.64*x[15]*x[26]-4.13*x[15]*x[27]-6.24*x[15]*x[28]-5.72*x[15]*x[29]+0.91*x[15]*x[30]-5.08*x[16]*x[16]-5.87*x[16]*x[17]-4.74*x[16]*x[18]-2.94*x[16]*x[19]-7.38*x[16]*x[20]-7.56*x[16]*x[21]-7.46*x[16]*x[22]-2.09*x[16]*x[23]+3.81*x[16]*x[24]-6.46*x[16]*x[25]-5.38*x[16]*x[26]-4.01*x[16]*x[27]-3.95*x[16]*x[28]-6.92*x[16]*x[29]-5.91*x[16]*x[30]-7.9*x[17]*x[17]-5.75*x[17]*x[18]-3.79*x[17]*x[19]-2.49*x[17]*x[20]-3.46*x[17]*x[21]-4.57*x[17]*x[22]-8.69*x[17]*x[23]+3.43*x[17]*x[24]-3.17*x[17]*x[25]-8.27*x[17]*x[26]-3.17*x[17]*x[27]-0.46*x[17]*x[28]-4.53*x[17]*x[29]+1.83*x[17]*x[30]-6.28*x[18]*x[18]+2.69*x[18]*x[19]-2.1*x[18]*x[20]+9.82*x[18]*x[21]-8.43*x[18]*x[22]-7.24*x[18]*x[23]-3.85*x[18]*x[24]-0.27*x[18]*x[25]+8.95*x[18]*x[26]-2.15*x[18]*x[27]-1.64*x[18]*x[28]-8.25*x[18]*x[29]+9.4*x[18]*x[30]-2.85*x[19]*x[19]-0.47*x[19]*x[20]-2.77*x[19]*x[21]-9.89*x[19]*x[22]-7.73*x[19]*x[23]-6.14*x[19]*x[24]-5.24*x[19]*x[25]-0.58*x[19]*x[26]-4.2*x[19]*x[27]-6.14*x[19]*x[28]-3.12*x[19]*x[29]-5.55*x[19]*x[30]-0.73*x[20]*x[20]-3.27*x[20]*x[21]-7.06*x[20]*x[22]-1.17*x[20]*x[23]-6.17*x[20]*x[24]-6.84*x[20]*x[25]-4.97*x[20]*x[26]-6.27*x[20]*x[27]-2.02*x[20]*x[28]-1.12*x[20]*x[29]-1.59*x[20]*x[30]-6.2*x[21]*x[21]-8.85*x[21]*x[22]-5.54*x[21]*x[23]-6.86*x[21]*x[24]-8.05*x[21]*x[25]-2.47*x[21]*x[26]-6.65*x[21]*x[27]-1.54*x[21]*x[28]-9.07*x[21]*x[29]+1.17*x[21]*x[30]-6.22*x[22]*x[22]-3.63*x[22]*x[23]-5.7*x[22]*x[24]-9.62*x[22]*x[25]-5.33*x[22]*x[26]-3.91*x[22]*x[27]-5.19*x[22]*x[28]-0.65*x[22]*x[29]-9.14*x[22]*x[30]+4.05*x[23]*x[23]-7.13*x[23]*x[24]-0.62*x[23]*x[25]-1.98*x[23]*x[26]+5.81*x[23]*x[27]-7*x[23]*x[28]+9.48*x[23]*x[29]-7.41*x[23]*x[30]+4.66*x[24]*x[24]-8.96*x[24]*x[25]-1.4*x[24]*x[26]-3.02*x[24]*x[27]-6.37*x[24]*x[28]-0.12*x[24]*x[29]-6.83*x[24]*x[30]-4.68*x[25]*x[25]-9.89*x[25]*x[26]-3.34*x[25]*x[27]-2.11*x[25]*x[28]-9.77*x[25]*x[29]+5.04*x[25]*x[30]-0.88*x[26]*x[26]-7.37*x[26]*x[27]-4.25*x[26]*x[28]-8.44*x[26]*x[29]-6.04*x[26]*x[30]-8.79*x[27]*x[27]-3.16*x[27]*x[28]+6.05*x[27]*x[29]-4.97*x[27]*x[30]-6.11*x[28]*x[28]-9.28*x[28]*x[29]-5.88*x[28]*x[30]-5.82*x[29]*x[29]-1.32*x[29]*x[30]-9.61*x[30]*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])
m = m 		 # model get returned when including this script. 
