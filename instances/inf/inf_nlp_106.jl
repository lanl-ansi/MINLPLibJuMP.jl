using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
set_lower_bound(x[37], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[1], 0.45)
set_upper_bound(x[1], 2.56)
set_lower_bound(x[2], 0.54)
set_upper_bound(x[2], 2.07)
set_lower_bound(x[3], 0.55)
set_upper_bound(x[3], 2.93)
set_lower_bound(x[4], 0.81)
set_upper_bound(x[4], 2.03)
set_lower_bound(x[5], 0.7)
set_upper_bound(x[5], 2.4)
set_lower_bound(x[6], 0.52)
set_upper_bound(x[6], 2.86)
set_lower_bound(x[7], 0.44)
set_upper_bound(x[7], 2.18)
set_lower_bound(x[8], 0.13)
set_upper_bound(x[8], 2.37)
set_lower_bound(x[9], 0.24)
set_upper_bound(x[9], 2.57)
set_upper_bound(x[10], 2.19)
set_lower_bound(x[11], 0.65)
set_upper_bound(x[11], 2.29)
set_lower_bound(x[12], 0.57)
set_upper_bound(x[12], 2.83)
set_lower_bound(x[13], 0.1)
set_upper_bound(x[13], 2.49)
set_lower_bound(x[14], 0.31)
set_upper_bound(x[14], 2.49)
set_lower_bound(x[15], 0.72)
set_upper_bound(x[15], 2.15)
set_lower_bound(x[16], 0.83)
set_upper_bound(x[16], 2.32)
set_lower_bound(x[17], 0.64)
set_upper_bound(x[17], 2.67)
set_lower_bound(x[18], 0.06)
set_upper_bound(x[18], 2.44)
set_lower_bound(x[19], 0.02)
set_upper_bound(x[19], 2.38)
set_lower_bound(x[20], 0.01)
set_upper_bound(x[20], 2.54)
set_lower_bound(x[21], 0.51)
set_upper_bound(x[21], 2.87)
set_lower_bound(x[22], 0.76)
set_upper_bound(x[22], 2.19)
set_lower_bound(x[23], 0.21)
set_upper_bound(x[23], 2.75)
set_lower_bound(x[24], 0.39)
set_upper_bound(x[24], 2.93)
set_lower_bound(x[25], 0.77)
set_upper_bound(x[25], 2.84)
set_lower_bound(x[26], 0.54)
set_upper_bound(x[26], 2.08)
set_lower_bound(x[27], 0.93)
set_upper_bound(x[27], 2.29)
set_lower_bound(x[28], 0.13)
set_upper_bound(x[28], 2.29)
set_lower_bound(x[29], 0.01)
set_upper_bound(x[29], 2.72)
set_lower_bound(x[30], 0.04)
set_upper_bound(x[30], 2.08)
set_lower_bound(x[31], 0.56)
set_upper_bound(x[31], 2.92)
set_lower_bound(x[32], 0.27)
set_upper_bound(x[32], 3.0)
set_lower_bound(x[33], 0.79)
set_upper_bound(x[33], 2.02)
set_lower_bound(x[34], 0.38)
set_upper_bound(x[34], 2.86)
set_lower_bound(x[35], 0.08)
set_upper_bound(x[35], 2.84)
set_lower_bound(x[36], 0.74)
set_upper_bound(x[36], 2.82)
set_upper_bound(x[37], 2.27)
set_lower_bound(x[38], 0.29)
set_upper_bound(x[38], 2.39)
set_lower_bound(x[39], 0.16)
set_upper_bound(x[39], 2.4)
set_lower_bound(x[40], 0.55)
set_upper_bound(x[40], 2.44)


# ----- Constraints ----- #
@constraint(m, e1, 8.11*x[2]+7.75*x[3]+8.78*x[4]+8.84*x[10]+0.19*x[13]+2.3*x[14]+5.97*x[15]+5.54*x[16]+0.65*x[22]+3.35*x[24]+0.44*x[25]-5.59*x[26]+6.42*x[27]+1.99*x[28]+3.72*x[29]+7.22*x[30]+4.36*x[33]+9.31*x[36]+9.62*x[37]+6.01*x[39] == 133.75)
@constraint(m, e2, 2.19*x[2]+7.6*x[4]+6.76*x[5]+9.71*x[6]+0.98*x[8]+2.34*x[9]+2.92*x[10]+4.23*x[11]+6.55*x[13]+5.76*x[14]+5.45*x[18]+7.64*x[19]+8.17*x[20]+2.85*x[23]+0.42*x[24]+1.84*x[26]+6.61*x[28]+9.96*x[29]+5.26*x[35]+2.36*x[37] == 136.687)
@constraint(m, e3, 9.58*x[1]+9.65*x[2]+5.28*x[3]+9.96*x[5]+7.42*x[6]+5.53*x[7]+7.62*x[8]+8.76*x[9]+5.13*x[10]+9.77*x[16]+4.97*x[19]-5.91*x[22]-9.68*x[23]+9.91*x[25]+7.22*x[26]-0.25*x[29]+8.28*x[33]+2.25*x[35]+4.56*x[37]+0.47*x[38] == 144.907)
@constraint(m, e4, 1.33*x[1]+7.45*x[6]+1.28*x[9]+3.49*x[11]+4.43*x[12]-2.99*x[14]+9.74*x[15]+7.81*x[16]+2.56*x[19]+3.41*x[24]+2.48*x[25]+1.87*x[26]+3.22*x[29]+2.32*x[30]+7.68*x[31]-6.54*x[32]+1.5*x[34]+8.39*x[35]+9.38*x[37]-9.3*x[39] == 89.749)
@constraint(m, e5, 3.73*x[2]+9.75*x[5]+9.74*x[6]+1.94*x[9]+7.97*x[14]+9.83*x[15]+4.49*x[16]+4.2*x[18]+6.52*x[19]+5.06*x[22]-9.07*x[23]+6.49*x[24]+8.04*x[27]+0.76*x[29]+1.81*x[31]+2.45*x[34]+9.56*x[35]+6.91*x[37]+0.21*x[38]+3.22*x[39] == 136.693)
@constraint(m, e6, 8.76*x[1]+8.63*x[4]+4.07*x[5]+7.42*x[7]+8.49*x[8]+9.79*x[12]+4.3*x[15]+4.71*x[18]+1.8*x[22]+8.8*x[25]+4.09*x[26]+0.41*x[27]+1.48*x[28]+8.08*x[29]+7.8*x[32]+4.59*x[33]+0.52*x[34]+3.87*x[35]+0.34*x[37]+4.58*x[39] == 150.1)
@constraint(m, e7, 9.12*x[3]+9.94*x[5]+6.85*x[6]+7.77*x[7]+1.6*x[10]+8.91*x[13]+8.09*x[16]+2.38*x[18]+4.63*x[19]+3.32*x[21]+6.05*x[22]+5.14*x[23]+0.82*x[24]+3.25*x[26]+2.18*x[28]+2.98*x[29]+3.54*x[34]+6.99*x[35]-0.72*x[36]+7.31*x[40] == 147.647)
@constraint(m, e8, 0.7*x[1]+6.71*x[2]+7.5*x[4]+4.58*x[6]+4.8*x[7]+7.44*x[10]+7.53*x[11]-6.79*x[13]+0.32*x[14]+7.02*x[16]+2.1*x[19]+5.09*x[22]+8.48*x[24]+6.81*x[26]+2.04*x[27]+8.89*x[31]+4.74*x[35]+0.39*x[37]+5.16*x[38]+5.46*x[40] == 130.634)
@constraint(m, e9, 9*x[3]+4.59*x[4]+3.44*x[5]+4.94*x[8]+3.69*x[11]+2.65*x[12]+7.01*x[14]+0.32*x[15]+4.92*x[18]+9.24*x[19]+6.49*x[21]+8.98*x[22]+1.13*x[24]+6.77*x[27]+7.3*x[28]-3.74*x[32]+6.68*x[33]+3.43*x[34]+4.09*x[36]+5.26*x[37] == 139.025)
@constraint(m, e10, 1.31*x[2]+1.83*x[3]-1.47*x[6]+0.34*x[7]+8.34*x[9]+1.57*x[10]+0.28*x[14]+1.39*x[16]+6.64*x[19]+4.96*x[20]+0.24*x[23]+0.18*x[24]+7.49*x[25]+5.26*x[26]+2.94*x[28]+4.69*x[30]+6.99*x[31]-0.5*x[34]+6.41*x[37]+0.6*x[38] == 82.19)
@constraint(m, e11, 0.42*x[3]+9.66*x[7]+0.34*x[9]+6.29*x[13]+3.25*x[14]+1.31*x[22]+2.69*x[23]+3.68*x[24]+0.01*x[28]+7.27*x[29]+6.56*x[30]+7.61*x[31]+0.17*x[32]+0.69*x[34]+4.88*x[35]+5.09*x[36]+3.87*x[37]+8.61*x[38]+4.68*x[39]+9.26*x[40] == 122.056)
@constraint(m, e12, -8.12*x[2]+4.95*x[8]-9.22*x[10]+1.22*x[12]+1.53*x[13]+5.16*x[14]+5.7*x[16]+9.42*x[18]+7.19*x[19]+7.9*x[20]-5.3*x[22]+7.87*x[23]+7*x[26]+4.58*x[31]+2.05*x[34]+2.63*x[35]+9.01*x[36]-5.01*x[37]+8.09*x[39]+6.7*x[40] == 95.081)
@constraint(m, e13, 5.08*x[1]+9.11*x[2]+4.89*x[4]+2.98*x[5]+1.8*x[6]+9.81*x[8]+2.01*x[9]+3.71*x[10]+7.19*x[11]+5.53*x[12]+4.18*x[14]+9.59*x[16]+8.64*x[17]+5.12*x[18]+3.92*x[22]+9.12*x[23]+4.68*x[25]+3.98*x[30]+4.26*x[36]+8.52*x[40] == 167.179)
@constraint(m, e14, 8.06*x[1]+8.79*x[3]+1.05*x[5]+8.41*x[9]+9.73*x[11]+8.36*x[12]+3.58*x[13]-4.51*x[14]+4.77*x[15]-5.09*x[19]+9.2*x[25]-1.39*x[27]+9.45*x[30]+8.75*x[32]+2.22*x[33]+7.4*x[34]+4.16*x[35]+2.79*x[36]+6.5*x[39]-3.04*x[40] == 137.056)
@constraint(m, e15, 5.03*x[1]+8.67*x[3]+5.92*x[5]+0.51*x[9]+3.33*x[10]+3.36*x[11]+8.91*x[18]+9.49*x[20]+6.32*x[21]+0.47*x[22]+x[23]+2.26*x[24]+6.25*x[26]+5.21*x[27]-0.55*x[30]+8.13*x[31]+3.33*x[35]+6.89*x[36]+8.85*x[38]+6.8*x[40] == 150.267)
@constraint(m, e16, 8.66*x[2]+1.52*x[3]+4.04*x[4]+0.13*x[6]+4.69*x[7]+6.59*x[9]+1.43*x[10]+6.4*x[13]+7.17*x[16]+3.83*x[17]+8.58*x[18]+5.86*x[29]+5.46*x[30]+7.61*x[31]+5.56*x[32]+4.7*x[33]+3.11*x[34]+3.38*x[35]-6.13*x[38]+6.72*x[39] == 126.598)
@constraint(m, e17, 1.37*x[1]+2.9*x[2]+3.09*x[9]+5.03*x[10]+1.4*x[12]+9.3*x[13]+6.67*x[14]+6.6*x[15]+3.3*x[18]-1.58*x[19]+8.15*x[28]+0.2*x[29]+1.34*x[33]+5.78*x[34]+7.35*x[35]+1.71*x[36]+8.29*x[37]+6.62*x[38]+5.71*x[39]+1.2*x[40] == 113.696)
@constraint(m, e18, 1.26*x[1]+2.1*x[2]+2.68*x[8]+4.28*x[11]+4.97*x[12]+3.18*x[13]+0.9*x[14]+9.13*x[16]+0.02*x[17]+3.5*x[18]+7.07*x[19]+4.31*x[21]-5.02*x[23]+9.05*x[25]+7.99*x[27]+4.45*x[34]+6.94*x[37]+0.05*x[38]+2.53*x[39]+8.2*x[40] == 115.081)
@constraint(m, e19, 1.86*x[1]+7.6*x[2]+7.77*x[4]+5.42*x[6]+8.61*x[9]+3.54*x[12]+7.08*x[13]+2.44*x[14]+3.51*x[15]+5.44*x[16]+6.5*x[17]+1.53*x[18]+5.03*x[21]+9.74*x[25]+1.23*x[27]+0.39*x[28]+2.77*x[31]+4.04*x[33]+6.49*x[34]+8.76*x[38] == 151.167)
@constraint(m, e20, 0.3*x[3]+1.27*x[4]+8.23*x[7]+2.03*x[10]+7.01*x[11]+0.77*x[14]+6.83*x[16]+6.79*x[17]+8.55*x[18]+7.37*x[19]+1.91*x[22]+9.8*x[23]+6.96*x[24]+0.47*x[25]-5.97*x[26]+5.67*x[27]+6.38*x[31]+5.42*x[35]+6.63*x[37]+3.47*x[40] == 130.997)
@constraint(m, e21, -3.17*x[1]+5.25*x[2]+7.94*x[3]+1.19*x[4]+3.39*x[5]+1.25*x[6]+8.49*x[7]+2.34*x[8]-2.47*x[9]-0.97*x[10]+4.27*x[11]+0.55*x[12]+0.58*x[13]+6.15*x[14]+1.52*x[15]+8.44*x[16]+8.14*x[17]-3.14*x[18]+0.59*x[19]+7.85*x[20]+1.31*x[21]+2.47*x[22]+2.02*x[23]+5.09*x[24]+8.77*x[25]+9.69*x[26]-3.98*x[27]+7.35*x[28]+9.67*x[29]+7.43*x[30]+0.83*x[31]+0.4*x[32]+2.97*x[33]+8.74*x[34]+3.08*x[35]+7.56*x[36]+7.87*x[37]+1.6*x[38]+8.47*x[39]+9.86*x[40] >= 231.201)
@NLconstraint(m, e22, 2.77*x[1]*x[7]+5.62*x[1]+1.45*x[7]+6.98*x[1]*x[23]+6.68*x[23]+6.68*x[1]*x[29]+8.34*x[29]+9.43*x[2]*x[25]-4.82*x[2]-8.36*x[25]+8.76*x[2]*x[28]+4.1*x[28]+1.19*x[2]*x[35]+5.46*x[35]+8.21*x[3]*x[13]+4.38*x[3]+0.84*x[13]+2.69*x[3]*x[26]+8.32*x[26]+7.18*x[4]*x[21]+7.49*x[4]+7.02*x[21]+7.96*x[4]*x[24]-9.46*x[24]-3.5*x[6]*x[12]+5.05*x[6]+2.87*x[12]+1.43*x[6]*x[24]-4.42*x[6]*x[30]+6.67*x[30]+4.78*x[6]*x[39]+5.12*x[39]+0.7*x[7]*x[8]+2.53*x[8]+5.35*x[7]*x[19]+6.2*x[19]+4.75*x[7]*x[21]+2.68*x[7]*x[22]+5.49*x[22]-2.21*x[7]*x[23]+4.81*x[8]*x[9]+4.12*x[9]+0.84*x[8]*x[15]+8.47*x[15]+0.77*x[8]*x[16]+7.38*x[16]+5.8*x[8]*x[29]+1.01*x[9]*x[19]+5.51*x[9]*x[20]+2.42*x[20]+2.09*x[9]*x[28]+6.97*x[9]*x[30]+7.46*x[9]*x[36]+1.38*x[36]+4.76*x[10]*x[16]+5.15*x[10]+0.66*x[10]*x[35]+2.64*x[11]*x[14]+8.46*x[11]+3.7*x[14]+2.65*x[11]*x[16]+2*x[11]*x[20]+9.81*x[12]*x[19]+5.99*x[13]*x[15]+4.03*x[13]*x[21]+3.6*x[13]*x[23]-1.74*x[13]*x[28]-2.6*x[13]*x[37]+1.47*x[37]+3.14*x[14]*x[14]+5.57*x[14]*x[24]+8.38*x[14]*x[25]+7.84*x[16]*x[17]+4.64*x[17]-2.15*x[16]*x[35]-1.66*x[17]*x[17]+3.38*x[17]*x[23]+5.49*x[17]*x[35]+1.45*x[17]*x[40]+3.65*x[40]+2.55*x[18]*x[23]-5.88*x[18]+5.52*x[19]*x[28]+7.65*x[19]*x[32]+6.21*x[32]+8.68*x[19]*x[35]+6.4*x[20]*x[20]+3.23*x[20]*x[28]+5.83*x[20]*x[34]+5.21*x[34]-8.9*x[20]*x[38]+8.03*x[38]+0.56*x[21]*x[21]+0.4*x[21]*x[26]+3.39*x[21]*x[32]+5.99*x[21]*x[33]+7.75*x[33]+4.64*x[22]*x[30]+3.49*x[22]*x[31]+7.96*x[31]+9.11*x[23]*x[24]+5.44*x[23]*x[32]+4.73*x[24]*x[31]+9.83*x[24]*x[34]+2.11*x[24]*x[39]+8.18*x[25]*x[29]+8.89*x[26]*x[28]+7.18*x[26]*x[37]+8*x[27]*x[28]+5.1*x[27]+5.87*x[27]*x[36]+3.96*x[27]*x[39]+4.57*x[28]*x[37]-6.21*x[29]*x[33]+7.32*x[29]*x[34]+3.52*x[29]*x[35]+4.35*x[30]*x[36]-8.65*x[30]*x[37]+6.13*x[31]*x[34]+7.18*x[34]*x[35]+5.54*x[35]*x[35]+2.51*x[5] >= 1298.174)
@constraint(m, e23, 9.63*x[1]+9.73*x[2]+1.06*x[3]+8.36*x[4]+6.92*x[5]+9.5*x[6]+9.57*x[7]+0.09*x[8]+4.19*x[9]+2.24*x[10]+8.42*x[11]+2.11*x[12]+4.61*x[13]-2.87*x[14]+8.85*x[15]+8.25*x[16]+5.76*x[17]+8.38*x[18]+3.18*x[19]+4.32*x[20]+5.74*x[21]+3*x[22]+1.51*x[23]+8.98*x[24]+0.56*x[25]+4.69*x[26]+9.78*x[27]+5.76*x[28]-2.78*x[29]+2.78*x[30]+9.03*x[31]+6.41*x[32]+1.38*x[33]+6.96*x[34]+5.85*x[35]+5.47*x[36]+2.91*x[37]+7.44*x[38]+4.19*x[39]+6.08*x[40] >= 307.317)
@NLconstraint(m, e24, 3.54*x[1]*x[7]+3.84*x[1]+7.29*x[7]+7.95*x[1]*x[23]+3.53*x[23]+7.86*x[1]*x[29]-2.63*x[29]+5.98*x[2]*x[25]+6.44*x[2]+1.12*x[25]+8.66*x[2]*x[28]+8.88*x[28]+3.99*x[2]*x[35]+1.78*x[35]+5.72*x[3]*x[13]+8.37*x[3]+2.18*x[13]+7.22*x[3]*x[26]+4.37*x[26]+0.14*x[4]*x[21]+7.07*x[4]+5.47*x[21]+2.09*x[4]*x[24]+6.83*x[24]+9.67*x[6]*x[12]+0.83*x[6]+4.98*x[12]+7.14*x[6]*x[24]+9.31*x[6]*x[30]+2.36*x[30]+0.5*x[6]*x[39]-7.95*x[39]+1.07*x[7]*x[8]+1.25*x[8]+0.49*x[7]*x[19]+5.24*x[19]+2.06*x[7]*x[21]+0.96*x[7]*x[22]+9.78*x[22]+4.98*x[7]*x[23]+7.91*x[8]*x[9]+2.66*x[9]+9.95*x[8]*x[15]+2.37*x[15]+8.87*x[8]*x[16]+9.05*x[16]+1.93*x[8]*x[29]+1.79*x[9]*x[19]+2.6*x[9]*x[20]+0.66*x[20]+4.74*x[9]*x[28]+0.93*x[9]*x[30]+3.3*x[9]*x[36]+3.95*x[36]+1.35*x[10]*x[16]+6.13*x[10]+6.87*x[10]*x[35]+3.73*x[11]*x[14]+9.99*x[11]+1.67*x[14]+0.75*x[11]*x[16]+4.12*x[11]*x[20]+5.32*x[12]*x[19]-0.33*x[13]*x[15]+9.12*x[13]*x[21]+1.52*x[13]*x[23]+7.11*x[13]*x[28]+5.71*x[13]*x[37]+8.14*x[37]+0.93*x[14]*x[14]+4.3*x[14]*x[24]+2.62*x[14]*x[25]+7.87*x[16]*x[17]+7.88*x[17]+8.26*x[16]*x[35]+1.92*x[17]*x[17]+3.33*x[17]*x[23]+7.08*x[17]*x[35]+6.09*x[17]*x[40]-0.01*x[40]+2.45*x[18]*x[23]+7.03*x[18]+0.75*x[19]*x[28]+6.38*x[19]*x[32]+8.34*x[32]-6.87*x[19]*x[35]+3.71*x[20]*x[20]+6.62*x[20]*x[28]-3.36*x[20]*x[34]+3.85*x[34]-6.37*x[20]*x[38]-0.21*x[38]+5.65*x[21]*x[21]+4.35*x[21]*x[26]+3.11*x[21]*x[32]+0.69*x[21]*x[33]+1.82*x[33]+4*x[22]*x[30]-1.7*x[22]*x[31]+1.09*x[31]-2.56*x[23]*x[24]+4.63*x[23]*x[32]+5.11*x[24]*x[31]+4.77*x[24]*x[34]+5.93*x[24]*x[39]+1.24*x[25]*x[29]+2.13*x[26]*x[28]+3.14*x[26]*x[37]+1.49*x[27]*x[28]-6.81*x[27]+2.63*x[27]*x[36]+2.35*x[27]*x[39]+6.37*x[28]*x[37]+9.61*x[29]*x[33]+2.08*x[29]*x[34]+5.88*x[29]*x[35]+1.63*x[30]*x[36]+1.96*x[30]*x[37]+7.31*x[31]*x[34]+5.49*x[34]*x[35]+2.73*x[35]*x[35]+4.26*x[5] >= 1259.821)
@constraint(m, e25, 2.06*x[1]+5.09*x[2]+7.75*x[3]+0.22*x[4]+7.04*x[5]-7.04*x[6]-5.44*x[7]+2.93*x[8]+0.61*x[9]+6.7*x[10]+1.17*x[11]-0.58*x[12]+7.34*x[13]+7.86*x[14]+2.25*x[15]+7.78*x[16]+8.2*x[17]+4.13*x[18]+6.82*x[19]+9.22*x[20]+7.24*x[21]+9.75*x[22]+1.26*x[23]+6.09*x[24]+9.68*x[25]+1.66*x[26]-8.8*x[27]+3.8*x[28]+1.12*x[29]+2.85*x[30]+9.4*x[31]+0.9*x[32]+8.05*x[33]-6.87*x[34]+0.92*x[35]-9.31*x[36]+9.64*x[37]+3.72*x[38]+1.45*x[39]+5.74*x[40] >= 185.044)
@NLconstraint(m, e26, 1.87*x[1]*x[7]+0.7*x[1]+6.26*x[7]-4.54*x[1]*x[23]+7.43*x[23]+8.85*x[1]*x[29]+2.82*x[29]+5.04*x[2]*x[25]+6.88*x[2]+5.39*x[25]+0.26*x[2]*x[28]+8.52*x[28]+5.03*x[2]*x[35]+4.51*x[35]+4.52*x[3]*x[13]+2.98*x[3]+2.11*x[13]+9.5*x[3]*x[26]+1.54*x[26]+8.96*x[4]*x[21]-4.38*x[4]+4.97*x[21]+5.41*x[4]*x[24]+4.28*x[24]+6.88*x[6]*x[12]+1.63*x[6]+7.48*x[12]+8.24*x[6]*x[24]+8.93*x[6]*x[30]+1.37*x[30]+6.64*x[6]*x[39]+2.85*x[39]-7.77*x[7]*x[8]+0.87*x[8]+6.86*x[7]*x[19]+3.26*x[19]+0.1*x[7]*x[21]+3.4*x[7]*x[22]+6.39*x[22]+5.07*x[7]*x[23]+7.47*x[8]*x[9]+5.67*x[9]+3.23*x[8]*x[15]+2.99*x[15]+9.93*x[8]*x[16]+9.55*x[16]+5.01*x[8]*x[29]+0.07*x[9]*x[19]+2.83*x[9]*x[20]+3.21*x[20]+7.05*x[9]*x[28]-5.86*x[9]*x[30]+5.28*x[9]*x[36]+8.99*x[36]+1.5*x[10]*x[16]+4.63*x[10]+0.54*x[10]*x[35]+2.75*x[11]*x[14]+6.94*x[11]+4.74*x[14]+8.29*x[11]*x[16]-5.35*x[11]*x[20]+0.69*x[12]*x[19]+3.88*x[13]*x[15]+4.04*x[13]*x[21]+0.85*x[13]*x[23]+3.08*x[13]*x[28]+7.83*x[13]*x[37]+1.4*x[37]+3.68*x[14]*x[14]-2.74*x[14]*x[24]+0.7*x[14]*x[25]+2.24*x[16]*x[17]+7.87*x[17]+2.26*x[16]*x[35]+3.39*x[17]*x[17]-7.28*x[17]*x[23]+3.67*x[17]*x[35]+7.66*x[17]*x[40]+5.54*x[40]+3.23*x[18]*x[23]+5.09*x[18]+1.78*x[19]*x[28]+8.73*x[19]*x[32]+3.04*x[32]+0.8*x[19]*x[35]+2.54*x[20]*x[20]+4.32*x[20]*x[28]+6.51*x[20]*x[34]+1.81*x[34]+7.1*x[20]*x[38]+2.13*x[38]+4.44*x[21]*x[21]+3.16*x[21]*x[26]+2.13*x[21]*x[32]+9.13*x[21]*x[33]+5.68*x[33]+9.19*x[22]*x[30]+3.07*x[22]*x[31]+8.15*x[31]+1.69*x[23]*x[24]+0.63*x[23]*x[32]+9.64*x[24]*x[31]-4.88*x[24]*x[34]+8.39*x[24]*x[39]+1.6*x[25]*x[29]+8.04*x[26]*x[28]+6.31*x[26]*x[37]+9.88*x[27]*x[28]+7.08*x[27]+4.86*x[27]*x[36]+3.99*x[27]*x[39]+4.03*x[28]*x[37]+6.94*x[29]*x[33]-3.66*x[29]*x[34]-3.78*x[29]*x[35]+6.99*x[30]*x[36]+3.33*x[30]*x[37]-0.66*x[31]*x[34]+0.81*x[34]*x[35]+x[35]*x[35]+5.99*x[5] >= 1186.724)
@constraint(m, e27, 6.92*x[1]+8.13*x[2]+7.4*x[3]-4.5*x[4]+2.11*x[5]+9.37*x[6]+7.79*x[7]+5.72*x[8]+3.42*x[9]+1.43*x[10]+2.38*x[11]-0.9*x[12]+0.39*x[13]+9.05*x[14]+3.27*x[15]+3.94*x[16]+3.72*x[17]-9.86*x[18]+0.99*x[19]+7.18*x[20]+2.65*x[21]+0.79*x[22]+2.51*x[23]+3.46*x[24]+3.59*x[25]+5.82*x[26]+0.5*x[27]+9.49*x[28]+9.99*x[29]+4.89*x[30]+3.87*x[31]+0.36*x[32]+3.48*x[33]+4.09*x[34]+9.48*x[35]+5.42*x[36]+6.29*x[37]+7.14*x[38]+5.16*x[39]+5.29*x[40] >= 234.418)
@NLconstraint(m, e28, 7.24*x[1]*x[7]-4.82*x[1]+9.78*x[7]+1.96*x[1]*x[23]+8.46*x[23]+5.81*x[1]*x[29]+8.53*x[29]+6.57*x[2]*x[25]+8.04*x[2]+7.26*x[25]+3.24*x[2]*x[28]+7*x[28]+2.9*x[2]*x[35]-1.91*x[35]+5.44*x[3]*x[13]+3.98*x[3]+3.11*x[13]+7.89*x[3]*x[26]+8.31*x[26]+8.1*x[4]*x[21]+0.23*x[4]+1.86*x[21]+0.92*x[4]*x[24]+4.19*x[24]-9.58*x[6]*x[12]+5.07*x[6]+3.12*x[12]+2.56*x[6]*x[24]+2.17*x[6]*x[30]+5.66*x[30]+8*x[6]*x[39]-7.7*x[39]-5.6*x[7]*x[8]+9.69*x[8]+1.8*x[7]*x[19]+8.97*x[19]+2.11*x[7]*x[21]+5.42*x[7]*x[22]+4.33*x[22]+6.93*x[7]*x[23]+4.19*x[8]*x[9]-6.22*x[9]-3.29*x[8]*x[15]+3.06*x[15]+5.19*x[8]*x[16]+2.06*x[16]+6.12*x[8]*x[29]+2.71*x[9]*x[19]+3.36*x[9]*x[20]+3.44*x[20]-2.75*x[9]*x[28]+9.07*x[9]*x[30]+3.13*x[9]*x[36]+2.24*x[36]+7.24*x[10]*x[16]+5.93*x[10]+0.91*x[10]*x[35]+0.57*x[11]*x[14]+3.86*x[11]+4.22*x[14]+3.49*x[11]*x[16]+3.13*x[11]*x[20]+5.06*x[12]*x[19]+1.01*x[13]*x[15]-4.98*x[13]*x[21]+10*x[13]*x[23]+9.59*x[13]*x[28]+4.43*x[13]*x[37]+4.94*x[37]+4.02*x[14]*x[14]+6.16*x[14]*x[24]-5.62*x[14]*x[25]+7.76*x[16]*x[17]+9.78*x[17]+5.52*x[16]*x[35]+9.14*x[17]*x[17]-9.9*x[17]*x[23]-1.33*x[17]*x[35]+7.51*x[17]*x[40]+8.93*x[40]+6.88*x[18]*x[23]+7.11*x[18]-5.05*x[19]*x[28]+0.62*x[19]*x[32]+7.43*x[32]+6.93*x[19]*x[35]+0.04*x[20]*x[20]+0.98*x[20]*x[28]+9.27*x[20]*x[34]+9.86*x[34]+6.71*x[20]*x[38]+5.19*x[38]+5.7*x[21]*x[21]+7.6*x[21]*x[26]+3.37*x[21]*x[32]+4.09*x[21]*x[33]+6.44*x[33]+2.18*x[22]*x[30]-8.74*x[22]*x[31]+3.84*x[31]+6.92*x[23]*x[24]+0.18*x[23]*x[32]+5.23*x[24]*x[31]+7.37*x[24]*x[34]+8.61*x[24]*x[39]+0.79*x[25]*x[29]+5.37*x[26]*x[28]+2.05*x[26]*x[37]-9.83*x[27]*x[28]+5.43*x[27]+8.51*x[27]*x[36]+6.54*x[27]*x[39]-4.58*x[28]*x[37]+3.92*x[29]*x[33]+6.02*x[29]*x[34]+5.99*x[29]*x[35]+9.03*x[30]*x[36]-6.69*x[30]*x[37]+0.63*x[31]*x[34]+5.4*x[34]*x[35]+1.82*x[35]*x[35]+4.56*x[5] >= 1131.664)
@constraint(m, e29, -8.16*x[1]+0.16*x[2]+3.27*x[3]-3.29*x[4]+5.6*x[5]+9.98*x[6]+8.54*x[7]+0.28*x[8]-7.73*x[9]+1.3*x[10]+5.5*x[11]+0.17*x[12]+0.29*x[13]+0.81*x[14]+9.9*x[15]+6.02*x[16]+2.77*x[17]+1.44*x[18]-6.33*x[19]+3.02*x[20]+6.4*x[21]+4.44*x[22]+6.86*x[23]+6.2*x[24]+3.45*x[25]+2.75*x[26]+0.96*x[27]+9.39*x[28]-7.71*x[29]+5.48*x[30]+6.54*x[31]-5.38*x[32]+6.23*x[33]+3.83*x[34]+2.44*x[35]+7.36*x[36]-2.37*x[37]+8.09*x[38]+1.99*x[39]-1.68*x[40] >= 151.025)
@NLconstraint(m, e30, 2.41*x[1]*x[7]+0.05*x[1]-8.47*x[7]+2.02*x[1]*x[23]+4.14*x[23]+7.87*x[1]*x[29]+1.88*x[29]+6.53*x[2]*x[25]+5.97*x[2]+6.47*x[25]+7.25*x[2]*x[28]+3.46*x[28]+7.87*x[2]*x[35]+5.14*x[35]-2.68*x[3]*x[13]+7.91*x[3]+3.95*x[13]-5.91*x[3]*x[26]-2.88*x[26]+9.32*x[4]*x[21]+1.72*x[4]+5.42*x[21]+4.67*x[4]*x[24]+0.33*x[24]+3.09*x[6]*x[12]+2.21*x[6]+0.26*x[12]+4.85*x[6]*x[24]+5.87*x[6]*x[30]-1.6*x[30]+2.65*x[6]*x[39]+7.3*x[39]+7.04*x[7]*x[8]+3.13*x[8]+6.32*x[7]*x[19]+7.25*x[19]-5.55*x[7]*x[21]+7.24*x[7]*x[22]+1.38*x[22]+1.5*x[7]*x[23]+6.83*x[8]*x[9]+2.65*x[9]+1.42*x[8]*x[15]+9.71*x[15]-6.09*x[8]*x[16]+3.85*x[16]+6.08*x[8]*x[29]+9.14*x[9]*x[19]+5.22*x[9]*x[20]+10*x[20]+7.42*x[9]*x[28]+7.9*x[9]*x[30]+6.18*x[9]*x[36]+4.89*x[36]+2.87*x[10]*x[16]+9.37*x[10]+9.57*x[10]*x[35]+7.74*x[11]*x[14]+4.83*x[11]+9.88*x[14]+6.27*x[11]*x[16]+1.22*x[11]*x[20]+1.83*x[12]*x[19]+7.4*x[13]*x[15]+9.57*x[13]*x[21]+6.08*x[13]*x[23]+6.5*x[13]*x[28]+8.38*x[13]*x[37]+7.23*x[37]+5.75*x[14]*x[14]+1.46*x[14]*x[24]+2.24*x[14]*x[25]+1.7*x[16]*x[17]+6.78*x[17]+2.95*x[16]*x[35]+0.08*x[17]*x[17]+8.6*x[17]*x[23]+9.09*x[17]*x[35]+7.98*x[17]*x[40]+5.84*x[40]+5.12*x[18]*x[23]-9.4*x[18]-1.86*x[19]*x[28]+5.34*x[19]*x[32]+7.67*x[32]+7.74*x[19]*x[35]+3.26*x[20]*x[20]+2.13*x[20]*x[28]+1.92*x[20]*x[34]+4.28*x[34]+1.95*x[20]*x[38]+6.19*x[38]-8.89*x[21]*x[21]+1.59*x[21]*x[26]+1.92*x[21]*x[32]-7.09*x[21]*x[33]+3.24*x[33]-9.66*x[22]*x[30]+4.16*x[22]*x[31]+1.14*x[31]+6.12*x[23]*x[24]+1.55*x[23]*x[32]-3.23*x[24]*x[31]+6.24*x[24]*x[34]+0.41*x[24]*x[39]+2.15*x[25]*x[29]+5.25*x[26]*x[28]+8.83*x[26]*x[37]+4.39*x[27]*x[28]+2.03*x[27]+1.76*x[27]*x[36]+8.63*x[27]*x[39]+0.8*x[28]*x[37]+1.31*x[29]*x[33]-8.31*x[29]*x[34]+4.09*x[29]*x[35]+3.54*x[30]*x[36]+9.15*x[30]*x[37]+4.92*x[31]*x[34]+1.85*x[34]*x[35]+6.69*x[35]*x[35]+9.22*x[5] >= 1169.96)
@NLconstraint(m, e31, -(6.02*x[1]*x[7]+1.03*x[1]+1.86*x[7]+0.42*x[1]*x[23]+0.83*x[23]+1.67*x[1]*x[29]+5.15*x[29]+5.19*x[2]*x[25]+3.75*x[2]+6.46*x[25]+3.34*x[2]*x[28]+0.86*x[28]+3.67*x[2]*x[35]+7.23*x[35]+1.25*x[3]*x[13]+2.08*x[3]-1.34*x[13]+9.64*x[3]*x[26]+8.28*x[26]+4.56*x[4]*x[21]+6.49*x[4]+9.64*x[21]+2.39*x[4]*x[24]+7.51*x[24]-8.46*x[6]*x[12]+2.6*x[6]+3.05*x[12]-3.12*x[6]*x[24]+4.34*x[6]*x[30]+6.29*x[30]+8.98*x[6]*x[39]+0.73*x[39]-8.33*x[7]*x[8]+0.46*x[8]+2.42*x[7]*x[19]+6.4*x[19]+8.54*x[7]*x[21]+8.92*x[7]*x[22]+3.03*x[22]-6.29*x[7]*x[23]+0.57*x[8]*x[9]+0.7*x[9]+1.71*x[8]*x[15]+2.88*x[15]+8.66*x[8]*x[16]+2.3*x[16]-8.86*x[8]*x[29]+2.82*x[9]*x[19]+0.92*x[9]*x[20]+6.46*x[20]+9.7*x[9]*x[28]+0.53*x[9]*x[30]+8.88*x[9]*x[36]+5.34*x[36]+5.78*x[10]*x[16]+5.05*x[10]+8.94*x[10]*x[35]+6.98*x[11]*x[14]+4.67*x[11]+9.29*x[14]+1.39*x[11]*x[16]+4.74*x[11]*x[20]+5.31*x[12]*x[19]-4.45*x[13]*x[15]+0.61*x[13]*x[21]+7.62*x[13]*x[23]+2.56*x[13]*x[28]+5.4*x[13]*x[37]+7.82*x[37]+5.47*x[14]*x[14]+4.41*x[14]*x[24]+8.44*x[14]*x[25]+0.47*x[16]*x[17]+8.77*x[17]+0.74*x[16]*x[35]+0.28*x[17]*x[17]+9.99*x[17]*x[23]+6.59*x[17]*x[35]+0.52*x[17]*x[40]+9.49*x[40]+6.92*x[18]*x[23]+1.88*x[18]+5.17*x[19]*x[28]+1.43*x[19]*x[32]+1.31*x[32]+7.96*x[19]*x[35]+0.02*x[20]*x[20]+0.71*x[20]*x[28]+4.06*x[20]*x[34]+2.95*x[34]+1.27*x[20]*x[38]+1.76*x[38]+3.1*x[21]*x[21]+6.22*x[21]*x[26]+1.84*x[21]*x[32]+5.89*x[21]*x[33]-8.82*x[33]+7.56*x[22]*x[30]+4.49*x[22]*x[31]+5.94*x[31]+3.61*x[23]*x[24]+3.03*x[23]*x[32]+8.91*x[24]*x[31]+8.16*x[24]*x[34]+9.1*x[24]*x[39]+4.35*x[25]*x[29]+9.38*x[26]*x[28]+2.55*x[26]*x[37]+4.58*x[27]*x[28]+1.85*x[27]+2.94*x[27]*x[36]+6.63*x[27]*x[39]+4.72*x[28]*x[37]+4.78*x[29]*x[33]+0.59*x[29]*x[34]+8.89*x[29]*x[35]+8.89*x[30]*x[36]+1.08*x[30]*x[37]+1.19*x[31]*x[34]+6.15*x[34]*x[35]+7.99*x[35]*x[35])-4.77*x[5]+x[41] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[41])

m = m 		 # model get returned when including this script. 
