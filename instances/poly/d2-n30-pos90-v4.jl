using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[26], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_upper_bound(x[1], 10.0)
set_lower_bound(x[2], 3.0)
set_upper_bound(x[2], 9.0)
set_upper_bound(x[3], 6.0)
set_lower_bound(x[4], 4.0)
set_upper_bound(x[4], 7.0)
set_lower_bound(x[5], 2.0)
set_upper_bound(x[5], 7.0)
set_lower_bound(x[6], 1.0)
set_upper_bound(x[6], 6.0)
set_upper_bound(x[7], 8.0)
set_lower_bound(x[8], 1.0)
set_upper_bound(x[8], 6.0)
set_lower_bound(x[9], 4.0)
set_upper_bound(x[9], 8.0)
set_upper_bound(x[10], 8.0)
set_lower_bound(x[11], 4.0)
set_upper_bound(x[11], 10.0)
set_lower_bound(x[12], 1.0)
set_upper_bound(x[12], 10.0)
set_lower_bound(x[13], 3.0)
set_upper_bound(x[13], 7.0)
set_lower_bound(x[14], 3.0)
set_upper_bound(x[14], 10.0)
set_lower_bound(x[15], 4.0)
set_upper_bound(x[15], 9.0)
set_lower_bound(x[16], 1.0)
set_upper_bound(x[16], 8.0)
set_lower_bound(x[17], 1.0)
set_upper_bound(x[17], 10.0)
set_lower_bound(x[18], 4.0)
set_upper_bound(x[18], 8.0)
set_lower_bound(x[19], 1.0)
set_upper_bound(x[19], 6.0)
set_lower_bound(x[20], 2.0)
set_upper_bound(x[20], 7.0)
set_lower_bound(x[21], 3.0)
set_upper_bound(x[21], 7.0)
set_lower_bound(x[22], 3.0)
set_upper_bound(x[22], 6.0)
set_lower_bound(x[23], 1.0)
set_upper_bound(x[23], 9.0)
set_lower_bound(x[24], 2.0)
set_upper_bound(x[24], 10.0)
set_upper_bound(x[25], 9.0)
set_upper_bound(x[26], 6.0)
set_lower_bound(x[27], 2.0)
set_upper_bound(x[27], 8.0)
set_lower_bound(x[28], 3.0)
set_upper_bound(x[28], 6.0)
set_upper_bound(x[29], 7.0)
set_lower_bound(x[30], 3.0)
set_upper_bound(x[30], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, 2.18*x[1]-4.47*x[5]-2.38*x[17]+2.4*x[24]+4.58*x[26] >= 5.8)
@NLconstraint(m, e2, (-1.74*x[1]*x[8])-0.48*x[1]+0.89*x[1]*x[16]+0.93*x[1]*x[21]+1.85*x[1]*x[25]-2.57*x[1]*x[26]+4.88*x[2]*x[6]+1.71*x[2]*x[8]+3.71*x[2]*x[9]+2.46*x[2]*x[11]+2.16*x[2]*x[16]-1.57*x[2]*x[27]-3.16*x[3]*x[4]-4.94*x[3]*x[5]+0.72*x[3]*x[7]-3.53*x[7]-2.85*x[3]*x[19]-1.4*x[19]-2.24*x[3]*x[29]+1.6*x[4]*x[4]+2.75*x[4]*x[8]-4.86*x[4]*x[22]-1.81*x[22]+1.22*x[4]*x[29]+0.97*x[5]*x[7]+4.44*x[5]*x[9]-0.34*x[5]*x[16]+4.57*x[5]*x[18]-2.41*x[5]*x[19]+3.47*x[5]*x[29]+0.7*x[6]*x[6]-4.83*x[6]*x[9]-0.43*x[6]*x[12]+3.32*x[12]+1.63*x[6]*x[14]-2.76*x[6]*x[16]+2.14*x[6]*x[17]-2.81*x[6]*x[20]-2.52*x[20]-3.73*x[6]*x[21]-0.92*x[6]*x[23]-2.32*x[6]*x[28]+3.08*x[28]+0.28*x[6]*x[29]+1.65*x[7]*x[8]-2.05*x[7]*x[13]+4.84*x[7]*x[18]+3.81*x[7]*x[24]-0.48*x[7]*x[25]-4.79*x[7]*x[27]-1.83*x[7]*x[28]+4.09*x[8]*x[8]+3.77*x[8]*x[15]+1.75*x[15]+0.88*x[8]*x[16]-2.91*x[8]*x[23]+3.2*x[8]*x[25]+3*x[8]*x[26]-0.47*x[8]*x[27]+1.4*x[8]*x[30]+2.55*x[30]+2.49*x[9]*x[12]+2.57*x[9]*x[16]+1.33*x[9]*x[25]-4.82*x[9]*x[28]-2.58*x[9]*x[30]+0.69*x[10]*x[11]-1.11*x[10]-4.28*x[10]*x[14]+2.79*x[10]*x[15]+2.71*x[10]*x[16]+1.11*x[10]*x[18]-1.29*x[10]*x[22]+4.01*x[10]*x[30]-1.01*x[11]*x[11]-0.01*x[11]*x[16]+0.84*x[11]*x[21]-2.84*x[11]*x[22]-3.76*x[11]*x[26]+1.22*x[11]*x[29]+2.76*x[12]*x[13]-3.91*x[12]*x[15]+3.8*x[12]*x[16]-1.84*x[12]*x[20]-1.4*x[12]*x[23]-4.16*x[12]*x[29]-2.63*x[13]*x[14]+3.61*x[13]*x[25]-2.07*x[13]*x[27]+1.34*x[14]*x[16]+0.11*x[14]*x[19]-0.41*x[14]*x[23]+4.76*x[14]*x[24]-4.03*x[14]*x[25]+0.6*x[14]*x[27]+1.82*x[15]*x[23]-3.48*x[15]*x[29]+0.65*x[15]*x[30]-2.55*x[16]*x[16]-3.68*x[16]*x[19]+2.76*x[16]*x[27]+1.64*x[17]*x[17]+4.88*x[17]*x[27]-2.25*x[18]*x[20]+3.85*x[18]*x[22]-1.18*x[19]*x[22]+4.41*x[19]*x[23]-3.63*x[19]*x[26]+4.04*x[19]*x[28]-4.92*x[20]*x[23]+4.62*x[20]*x[29]+3.78*x[21]*x[28]+4.01*x[21]*x[29]+0.82*x[22]*x[22]+2.7*x[22]*x[23]-4.67*x[22]*x[26]+3.27*x[22]*x[29]-3.32*x[23]*x[26]-2.47*x[23]*x[28]+0.71*x[24]*x[25]+1.73*x[24]*x[28]+3.71*x[25]*x[27]-0.49*x[27]*x[30]+0.58*x[28]*x[29] >= 1171.0)
@constraint(m, e3, -1.54*x[4]+3.16*x[12]-0.27*x[14]+4.49*x[16]+2.73*x[19]-4.94*x[30] >= 14.6)
@NLconstraint(m, e4, 3.64*x[1]*x[10]-3.7*x[1]*x[7]+2.37*x[1]*x[13]-2.11*x[1]*x[17]+0.77*x[1]*x[25]-4.98*x[2]*x[2]+4.53*x[2]*x[9]+1.35*x[2]*x[10]-2.58*x[2]*x[13]+3.65*x[2]*x[14]-1.74*x[2]*x[16]-4.45*x[16]-1.02*x[2]*x[19]-1.03*x[19]-3.17*x[2]*x[24]+1.08*x[24]-4.55*x[2]*x[25]-3.09*x[2]*x[26]-4.93*x[2]*x[30]+3.04*x[3]*x[5]+2.4*x[3]*x[6]-4.19*x[3]*x[11]+3.89*x[11]+0.22*x[3]*x[16]+1.29*x[3]*x[20]-0.01*x[3]*x[21]-2.88*x[21]+3.91*x[3]*x[24]+1.44*x[4]*x[8]-4.72*x[4]*x[12]-0.26*x[12]+4.52*x[4]*x[16]-3.6*x[4]*x[17]+4.08*x[4]*x[20]-1.34*x[4]*x[22]+0.93*x[4]*x[25]-1.4*x[4]*x[27]-0.72*x[4]*x[28]+0.26*x[28]+3.58*x[4]*x[29]+0.11*x[29]-2.43*x[5]*x[9]-3.54*x[5]*x[10]-1.64*x[5]*x[12]+3.4*x[5]*x[18]+0.09*x[5]*x[20]+3.32*x[5]*x[23]-4.79*x[5]*x[30]+3.95*x[6]*x[7]-3.93*x[6]*x[12]-1.9*x[6]*x[15]-0.06*x[15]-4.49*x[6]*x[18]+3.54*x[6]*x[28]-2.88*x[7]*x[8]-3.81*x[7]*x[20]+0.99*x[7]*x[24]+1.22*x[7]*x[26]-0.48*x[8]*x[9]+2.02*x[8]*x[12]-0.1*x[8]*x[14]-0.1*x[8]*x[15]-0.47*x[8]*x[19]+1.72*x[8]*x[21]-3.3*x[8]*x[30]-1.83*x[9]*x[14]-1.23*x[9]*x[16]-2.75*x[9]*x[18]-4.6*x[9]*x[25]-3.73*x[9]*x[29]-2.02*x[9]*x[30]+2.86*x[10]*x[10]-3.06*x[10]*x[11]-1.42*x[10]*x[13]-1.62*x[10]*x[15]+2.29*x[10]*x[16]-0.95*x[10]*x[19]-1.36*x[10]*x[21]+0.29*x[10]*x[27]+1.55*x[10]*x[28]-1.58*x[10]*x[29]-0.2*x[11]*x[11]+4.75*x[11]*x[12]+3.32*x[11]*x[15]+2.42*x[11]*x[18]-0.8*x[11]*x[24]+1.37*x[11]*x[25]-1.51*x[12]*x[12]+1.03*x[12]*x[13]+3.49*x[12]*x[16]-2.63*x[12]*x[17]+1.97*x[12]*x[22]+2.65*x[12]*x[23]-4.83*x[12]*x[24]-0.7*x[12]*x[26]+0.32*x[12]*x[28]-1.19*x[13]*x[13]-4.08*x[13]*x[18]-2.81*x[13]*x[19]+2.35*x[13]*x[26]-4.22*x[13]*x[30]+4.75*x[14]*x[14]+1.28*x[14]*x[17]+2.42*x[14]*x[24]-1.19*x[15]*x[19]+3.04*x[15]*x[30]-0.28*x[16]*x[17]-3.13*x[16]*x[18]-0.47*x[16]*x[19]-0.59*x[16]*x[21]+0.98*x[16]*x[26]+4.92*x[17]*x[17]+3.34*x[17]*x[18]+2.65*x[17]*x[20]-3.52*x[17]*x[21]+1.09*x[17]*x[22]+0.14*x[17]*x[26]+0.82*x[18]*x[26]+4.17*x[18]*x[30]-4.3*x[19]*x[22]+4.38*x[19]*x[24]+3.78*x[19]*x[27]+4.84*x[19]*x[29]+0.31*x[20]*x[23]-0.27*x[20]*x[24]+1.51*x[20]*x[27]+0.59*x[20]*x[29]-0.66*x[21]*x[26]-1.9*x[22]*x[22]+1.76*x[22]*x[26]+2.55*x[23]*x[30]+2.76*x[24]*x[24]-3.04*x[24]*x[26]-3.2*x[24]*x[29]+4.63*x[24]*x[30]-3.92*x[27]*x[29] >= -57.1)
@constraint(m, e5, -4.02*x[2]+3.2*x[6]-3.4*x[12]-3.27*x[13]-2.71*x[20]-3.57*x[26] >= -71.0)
@NLconstraint(m, e6, 0.37*x[1]*x[2]+2.2*x[1]+0.59*x[1]*x[4]+1.48*x[4]+2.38*x[1]*x[8]-0.39*x[1]*x[9]-4.05*x[1]*x[18]+4.86*x[18]-3.91*x[2]*x[8]+3.34*x[2]*x[10]+2.1*x[2]*x[11]-2.47*x[2]*x[15]+2.96*x[2]*x[20]+4*x[2]*x[21]-0.26*x[3]*x[4]-4.29*x[3]*x[8]+2.21*x[3]*x[15]-1.08*x[3]*x[16]-0.94*x[16]+1.45*x[3]*x[18]+0.28*x[3]*x[20]-1.04*x[3]*x[23]-2.36*x[3]*x[28]+3.41*x[3]*x[30]-4.31*x[4]*x[5]-3.4*x[5]+2.97*x[4]*x[6]+1.86*x[4]*x[8]+1.24*x[4]*x[10]+0.34*x[4]*x[23]+0.55*x[4]*x[28]+0.54*x[4]*x[29]-4.01*x[4]*x[30]+1.51*x[5]*x[6]-2.53*x[5]*x[7]+4.96*x[7]-2.48*x[5]*x[8]+3.34*x[5]*x[11]+2.93*x[5]*x[15]-2.56*x[5]*x[28]-0.23*x[6]*x[9]+2.44*x[6]*x[12]-3.88*x[12]+1.72*x[6]*x[13]-1.56*x[6]*x[14]+3.39*x[14]+0.89*x[6]*x[15]+1.5*x[6]*x[20]-4.95*x[6]*x[27]+2.52*x[7]*x[7]-3.56*x[7]*x[12]-2.74*x[7]*x[15]+4.56*x[7]*x[16]-1.33*x[7]*x[18]-4.13*x[7]*x[22]+3.25*x[7]*x[25]-1.01*x[25]+0.34*x[8]*x[10]-3.33*x[8]*x[12]-0.64*x[8]*x[15]+x[8]*x[17]-1.06*x[17]-2.37*x[8]*x[18]-2.1*x[8]*x[20]-2.17*x[8]*x[22]+1.57*x[8]*x[23]-3.52*x[8]*x[25]+1.32*x[8]*x[26]-2.35*x[8]*x[27]+4.42*x[8]*x[29]+1.73*x[9]*x[10]-3.14*x[9]*x[12]+3.77*x[9]*x[23]+2.86*x[10]*x[10]+4.62*x[10]*x[15]+2.8*x[10]*x[16]-2.03*x[10]*x[17]-1.77*x[10]*x[20]-2.57*x[10]*x[21]-4.84*x[10]*x[22]+0.22*x[10]*x[28]-3.32*x[10]*x[30]-3.19*x[11]*x[12]-3.02*x[11]*x[14]+1.38*x[11]*x[16]-4.66*x[11]*x[18]+1.37*x[11]*x[20]-3.84*x[11]*x[23]-4.03*x[11]*x[24]+3.05*x[24]+0.25*x[11]*x[27]-3.14*x[11]*x[29]+3.95*x[12]*x[17]+0.11*x[12]*x[22]+3.27*x[12]*x[29]+1.26*x[13]*x[14]-2.77*x[13]*x[18]+2.97*x[13]*x[19]-1.81*x[13]*x[21]-4.45*x[14]*x[26]+2.52*x[14]*x[28]+1.41*x[15]*x[15]+1.99*x[15]*x[18]-3.64*x[15]*x[22]+4.42*x[16]*x[28]-1.03*x[17]*x[17]-0.22*x[17]*x[26]+3.44*x[17]*x[28]-4.24*x[18]*x[18]-0.44*x[18]*x[20]+0.61*x[18]*x[23]-4.67*x[19]*x[23]+3.96*x[19]*x[24]-2.93*x[19]*x[29]-1.93*x[19]*x[30]-1.48*x[21]*x[24]-2.16*x[21]*x[25]-3.39*x[22]*x[23]+2.37*x[22]*x[27]+3.27*x[22]*x[28]+0.21*x[22]*x[30]-2.59*x[23]*x[23]+2.1*x[23]*x[29]-1.54*x[23]*x[30]+3.97*x[24]*x[24]+1.95*x[24]*x[27]+4.04*x[24]*x[30]-2.07*x[25]*x[26]+0.81*x[26]*x[27]-4.42*x[26]*x[28]+4.2*x[27]*x[27]+3.15*x[27]*x[29]+2.77*x[29]*x[29] >= -327.2)
@constraint(m, e7, -4.79*x[6]+1.69*x[7]+0.73*x[13]+2.51*x[25] >= 4.9)
@NLconstraint(m, e8, 1.61*x[1]*x[2]+3.81*x[1]*x[8]-3.58*x[1]*x[16]-2.58*x[1]*x[17]-3.31*x[1]*x[18]+0.83*x[18]+0.6*x[1]*x[25]-0.49*x[25]-3.43*x[1]*x[28]+3.34*x[1]*x[30]+0.21*x[2]*x[4]-4.57*x[4]-4.97*x[2]*x[16]+0.84*x[2]*x[19]+0.63*x[19]+4.53*x[2]*x[22]+4.96*x[2]*x[25]-3.95*x[3]*x[6]-1.75*x[3]*x[8]+1.12*x[3]*x[13]-0.21*x[3]*x[15]+1.08*x[15]+x[3]*x[17]-0.44*x[3]*x[21]-4.54*x[3]*x[26]-3.71*x[26]-1.38*x[3]*x[28]-2.01*x[4]*x[8]-0.87*x[4]*x[18]+1.78*x[4]*x[23]+1.26*x[4]*x[26]+4.35*x[4]*x[30]-0.89*x[5]*x[11]-1.69*x[5]-1.72*x[5]*x[15]+1.1*x[5]*x[17]-3.54*x[5]*x[18]+1.33*x[5]*x[20]-0.74*x[5]*x[25]-0.26*x[5]*x[28]-0.01*x[6]*x[9]+0.73*x[9]-2.44*x[6]*x[15]+1.7*x[6]*x[16]+4.19*x[6]*x[19]+3.77*x[6]*x[20]-4.17*x[6]*x[21]+4.01*x[6]*x[27]-1.66*x[27]-2.3*x[7]*x[8]-3.07*x[7]*x[14]-0.55*x[7]*x[17]+0.53*x[7]*x[21]-2.73*x[7]*x[26]-1.02*x[7]*x[27]-0.83*x[7]*x[29]-1.99*x[29]-0.17*x[8]*x[12]-3.54*x[8]*x[14]-2.38*x[8]*x[17]+1.08*x[8]*x[18]+0.07*x[8]*x[26]+1.8*x[8]*x[27]+0.85*x[8]*x[29]-0.39*x[8]*x[30]-1.39*x[9]*x[10]+1.16*x[9]*x[11]+0.35*x[9]*x[12]-2*x[9]*x[19]+0.3*x[9]*x[29]+1.11*x[9]*x[30]-4.58*x[10]*x[12]+4.37*x[10]*x[16]+2.24*x[10]*x[21]-3.28*x[10]*x[22]-1.84*x[11]*x[12]+1.11*x[11]*x[13]-1.64*x[11]*x[16]-4.98*x[11]*x[26]+0.31*x[11]*x[28]-0.95*x[12]*x[16]+0.23*x[12]*x[17]+4.48*x[12]*x[20]+2.13*x[12]*x[21]+1.33*x[12]*x[24]-1.76*x[12]*x[25]-1.8*x[12]*x[26]+4.43*x[12]*x[29]+1.54*x[13]*x[14]-3.09*x[13]*x[15]+2.68*x[13]*x[25]+1.52*x[13]*x[29]-3.25*x[14]*x[15]-2.67*x[14]*x[16]+2.65*x[14]*x[19]-4.62*x[14]*x[20]+2.81*x[15]*x[23]+0.44*x[15]*x[24]+1.98*x[15]*x[25]+0.71*x[15]*x[30]-0.11*x[16]*x[16]+0.94*x[16]*x[17]+0.15*x[16]*x[20]-0.14*x[16]*x[27]+1.1*x[17]*x[17]-2.16*x[17]*x[18]-3.66*x[17]*x[19]+4.74*x[17]*x[22]+4.02*x[17]*x[25]-0.67*x[17]*x[27]+4.48*x[17]*x[28]-0.92*x[17]*x[29]-1.66*x[18]*x[29]+4.75*x[19]*x[19]-1.26*x[19]*x[21]+2.77*x[19]*x[22]+4.34*x[19]*x[24]+4.76*x[19]*x[30]-4.43*x[20]*x[22]+1.16*x[21]*x[26]+1.07*x[21]*x[29]+0.36*x[21]*x[30]-1.66*x[22]*x[22]+4.1*x[22]*x[25]-1.81*x[23]*x[25]-2.94*x[23]*x[29]+4.38*x[24]*x[26]+3.22*x[24]*x[28]+0.1*x[25]*x[28]+1.74*x[25]*x[29]+2.08*x[26]*x[27]+3.22*x[26]*x[30]-4.53*x[27]*x[30]-3.28*x[28]*x[28]-2.81*x[29]*x[30]-3.53*x[30]*x[30] >= -62.8)
@constraint(m, e9, -1.04*x[4]-3.81*x[8]+2.69*x[22]+3.65*x[26]-0.52*x[27] >= 1.4)
@NLconstraint(m, e10, 2.13*x[1]*x[7]+4.51*x[7]+1.06*x[1]*x[17]+3.88*x[1]*x[20]-3.4*x[1]*x[25]-2.5*x[2]*x[13]+1.09*x[2]*x[24]-3.44*x[2]*x[26]-3.89*x[2]*x[28]+3.75*x[3]*x[3]+3.26*x[3]*x[8]-4.39*x[3]*x[17]-4.51*x[3]*x[18]-4.6*x[18]+2.87*x[3]*x[22]+1.06*x[3]*x[24]-0.58*x[3]*x[25]+0.87*x[3]*x[29]-0.28*x[4]*x[7]-4.09*x[4]*x[13]-0.04*x[4]*x[16]-2.17*x[4]*x[23]-2.09*x[23]-3.1*x[4]*x[30]-1.8*x[5]*x[5]-3.33*x[5]*x[7]+3.64*x[5]*x[21]-2.63*x[5]*x[23]-3.71*x[5]*x[26]-1.18*x[5]*x[27]-3.44*x[6]*x[14]-3.34*x[6]-2.76*x[6]*x[17]+1.45*x[6]*x[25]-0.29*x[6]*x[29]-0.06*x[7]*x[9]+2.11*x[7]*x[23]-3.71*x[7]*x[28]+0.16*x[7]*x[29]-4.45*x[7]*x[30]+3.07*x[8]*x[10]-3.54*x[8]*x[13]-1.7*x[8]*x[14]-3.76*x[8]*x[17]+3.26*x[8]*x[20]+3.75*x[8]*x[25]+1.71*x[8]*x[28]-4.13*x[8]*x[30]-0.33*x[9]*x[9]-3.02*x[9]*x[14]-1.39*x[9]*x[23]+3.56*x[9]*x[25]-2.54*x[10]*x[17]+3.3*x[10]*x[22]+1.09*x[10]*x[24]+0.75*x[10]*x[25]+4.74*x[11]*x[20]+3.15*x[11]*x[24]+0.69*x[11]*x[25]+0.92*x[11]*x[27]-0.08*x[11]*x[28]+2.32*x[12]*x[16]-1.35*x[12]*x[19]-1.94*x[12]*x[25]-0.56*x[12]*x[26]+3.98*x[13]*x[15]+4.79*x[13]*x[16]-1.4*x[13]*x[17]-3.19*x[13]*x[18]-3.29*x[13]*x[19]-0.45*x[13]*x[25]+1.21*x[13]*x[28]+2.27*x[14]*x[14]+4.71*x[14]*x[17]+0.22*x[14]*x[18]+x[14]*x[22]-2.41*x[14]*x[25]+1.47*x[14]*x[29]-3.91*x[15]*x[15]+2.46*x[15]*x[16]-2.65*x[15]*x[21]-3.22*x[15]*x[28]+0.7*x[15]*x[30]-1.98*x[16]*x[19]-3.25*x[16]*x[21]-0.42*x[16]*x[23]+4.48*x[16]*x[30]+3.51*x[17]*x[22]+3.59*x[18]*x[23]-4.04*x[18]*x[27]-1.4*x[18]*x[28]+3.86*x[19]*x[22]-4.09*x[19]*x[26]-4.94*x[20]*x[24]+3.07*x[21]*x[26]-2.13*x[22]*x[22]+4.25*x[22]*x[27]-3.04*x[22]*x[28]-4.18*x[23]*x[24]+4.88*x[24]*x[27]-1.89*x[24]*x[30]+4*x[25]*x[25]+4.58*x[25]*x[29]+0.16*x[26]*x[26]+1.6*x[26]*x[29]-1.11*x[30]*x[30] >= -391.0)
@constraint(m, e11, -4.19*x[2]+1.28*x[8]-2.52*x[11]-3.68*x[15]-3.27*x[17]-3.71*x[18]+0.29*x[23]-0.26*x[24]-1.11*x[27]+3.34*x[28]-1.21*x[30] >= -98.6)
@NLconstraint(m, e12, 2.83*x[1]-0.09*x[1]*x[8]+4.56*x[1]*x[9]+0.14*x[9]+2.57*x[1]*x[10]-0.72*x[1]*x[11]+0.73*x[1]*x[23]+4.3*x[1]*x[27]+1.95*x[1]*x[28]-0.08*x[1]*x[30]-4.98*x[2]*x[11]-2.84*x[2]*x[15]-3.67*x[2]*x[16]+4.63*x[16]+0.56*x[2]*x[17]-4.14*x[17]+1.11*x[2]*x[27]+3.45*x[3]*x[6]+5*x[3]+4.66*x[3]*x[7]-2.17*x[3]*x[11]-3.73*x[3]*x[26]+4.32*x[3]*x[27]-2.88*x[3]*x[28]+2.35*x[3]*x[29]+1.49*x[4]*x[7]-2.29*x[4]*x[8]-2.21*x[4]*x[16]-0.52*x[4]*x[22]-3.96*x[4]*x[23]+1.63*x[4]*x[24]-4.96*x[4]*x[25]+1.97*x[25]+1.39*x[4]*x[27]+1.26*x[5]*x[5]+1.55*x[5]*x[7]+2.9*x[5]*x[9]+0.66*x[5]*x[10]+4.62*x[5]*x[12]-0.28*x[5]*x[21]-0.26*x[21]+0.36*x[5]*x[22]-1.07*x[5]*x[23]+2.15*x[5]*x[27]+4.1*x[5]*x[29]+0.28*x[6]*x[7]+3.36*x[6]*x[9]-4.35*x[6]*x[11]-1.09*x[6]*x[14]+4.41*x[6]*x[20]+3.08*x[6]*x[21]+2.53*x[6]*x[24]+1.69*x[6]*x[25]+2.41*x[7]*x[8]-3.55*x[7]*x[9]-3.19*x[7]*x[12]+1.24*x[7]*x[21]-1.06*x[7]*x[22]-0.01*x[7]*x[26]+3.67*x[8]*x[9]-3.2*x[8]*x[11]+1.42*x[8]*x[13]+1.72*x[8]*x[19]-0.5*x[19]-1.61*x[8]*x[20]-4.76*x[8]*x[27]+0.1*x[8]*x[28]-2.33*x[9]*x[10]-4.25*x[9]*x[16]-3.23*x[9]*x[18]-1.06*x[9]*x[19]-3.28*x[9]*x[23]-4.06*x[9]*x[29]-2.26*x[9]*x[30]+3.09*x[10]*x[10]-3.92*x[10]*x[16]+0.74*x[10]*x[22]-2.98*x[11]*x[11]+0.79*x[11]*x[26]-2.88*x[12]*x[15]-4.09*x[12]*x[16]-1.39*x[12]*x[17]+2.36*x[12]*x[20]-4.6*x[12]*x[25]-3.39*x[12]*x[29]+3.01*x[13]*x[23]+1.3*x[13]*x[25]-2.88*x[13]*x[26]-3.6*x[14]*x[25]+2.75*x[15]*x[25]+2.86*x[15]*x[26]-1.91*x[16]*x[20]+0.17*x[16]*x[23]-4.64*x[16]*x[25]-2.33*x[16]*x[27]+1.1*x[16]*x[29]-3.26*x[16]*x[30]-1.94*x[17]*x[20]+1.06*x[17]*x[24]+4.43*x[17]*x[26]+0.29*x[18]*x[19]+1.32*x[18]*x[20]+0.95*x[18]*x[23]+0.59*x[18]*x[26]+2.48*x[18]*x[27]+4.92*x[19]*x[20]+1.3*x[19]*x[21]-2.5*x[19]*x[24]-0.61*x[19]*x[25]-4.49*x[20]*x[20]+1.04*x[20]*x[23]-3.67*x[20]*x[24]+3.25*x[22]*x[22]+0.17*x[22]*x[24]-4.74*x[22]*x[28]+4.38*x[23]*x[24]+4.65*x[23]*x[26]+3.15*x[23]*x[29]-3.97*x[24]*x[24]-1.77*x[24]*x[26]-3.52*x[25]*x[29]-0.2*x[26]*x[29]+2.17*x[26]*x[30]-2.75*x[27]*x[28]+0.87*x[27]*x[29]-4.7*x[28]*x[29]+1.66*x[30]*x[30] >= -1224.7)
@constraint(m, e13, -0.74*x[2]-1.73*x[7]-4.81*x[14]-3.08*x[18] >= -61.2)
@NLconstraint(m, e14, 3.1*x[1]-3.18*x[1]*x[2]-4.55*x[1]*x[6]+0.83*x[1]*x[13]+4.32*x[1]*x[15]+1.29*x[15]-0.77*x[1]*x[16]-3.14*x[1]*x[17]+0.42*x[1]*x[21]-1.53*x[1]*x[23]-1.68*x[1]*x[25]-0.39*x[25]-3.54*x[1]*x[29]-4.08*x[1]*x[30]+0.68*x[30]-3.54*x[2]*x[9]+4.5*x[2]*x[11]+4.35*x[2]*x[16]-0.89*x[2]*x[19]-2.59*x[2]*x[20]-3.77*x[20]-3.09*x[2]*x[21]+2.17*x[2]*x[28]-3.79*x[28]+1.64*x[2]*x[29]+0.43*x[2]*x[30]+1.59*x[3]*x[13]-1.82*x[3]*x[18]+4.61*x[3]*x[21]+2.46*x[3]*x[24]+4.09*x[3]*x[26]-3.8*x[26]-0.81*x[4]*x[6]-3.09*x[4]*x[7]-1.06*x[7]+1.46*x[4]*x[9]+0.91*x[4]*x[13]-0.76*x[4]*x[14]+3.1*x[4]*x[18]-0.2*x[4]*x[23]-2.52*x[4]*x[24]-4.66*x[4]*x[25]-0.14*x[4]*x[29]-4.85*x[4]*x[30]-3.22*x[5]*x[6]+4.28*x[5]*x[8]+1.86*x[8]-2.23*x[5]*x[9]-1.84*x[5]*x[10]+2.72*x[5]*x[12]+2.03*x[5]*x[14]+4.04*x[5]*x[17]-3.02*x[5]*x[21]+3.38*x[5]*x[24]-1.87*x[5]*x[25]+1.28*x[5]*x[26]-1.66*x[6]*x[8]+3.12*x[6]*x[10]+1.7*x[6]*x[27]+2.94*x[7]*x[20]+2.14*x[7]*x[26]+0.68*x[7]*x[28]-0.59*x[8]*x[9]-3*x[8]*x[10]-0.12*x[8]*x[12]+4.71*x[8]*x[15]+1.92*x[8]*x[16]-0.79*x[8]*x[18]-0.95*x[8]*x[20]-0.39*x[8]*x[26]+0.83*x[9]*x[9]+3.43*x[9]*x[18]+1.82*x[9]*x[19]-2.58*x[9]*x[25]-1.16*x[9]*x[27]-2.99*x[9]*x[29]-4.79*x[10]*x[10]-2.6*x[10]*x[13]+1.4*x[10]*x[18]+1.73*x[10]*x[20]+4.66*x[10]*x[27]+3.75*x[10]*x[30]-3.61*x[11]*x[21]+2.26*x[11]*x[25]-0.27*x[12]*x[12]+1.1*x[12]*x[17]-2.92*x[12]*x[19]+1.57*x[12]*x[22]+2.5*x[22]+3.01*x[12]*x[26]+0.9*x[12]*x[27]+0.28*x[12]*x[29]+4.68*x[13]*x[16]+2.78*x[13]*x[19]+0.05*x[13]*x[20]+4.75*x[13]*x[23]+1.58*x[13]*x[29]-0.99*x[14]*x[18]-3.55*x[14]*x[19]-1.35*x[15]*x[17]+1.5*x[15]*x[19]-0.55*x[15]*x[22]+4.22*x[15]*x[28]+4.63*x[15]*x[30]-2.86*x[16]*x[17]+2.92*x[16]*x[19]+4.11*x[16]*x[22]+2.52*x[16]*x[28]-1.55*x[17]*x[17]-0.29*x[17]*x[18]+4.52*x[17]*x[20]+2.38*x[17]*x[21]-1.15*x[17]*x[25]-1.67*x[17]*x[27]+2.6*x[17]*x[29]-4.49*x[18]*x[19]+1.32*x[18]*x[20]+3.02*x[18]*x[22]-2.76*x[18]*x[23]-3.93*x[18]*x[24]+4.16*x[18]*x[27]-0.57*x[19]*x[23]+3.75*x[19]*x[28]-1.45*x[19]*x[29]-1.15*x[19]*x[30]-3.28*x[20]*x[25]+2.97*x[21]*x[22]-3.73*x[21]*x[29]-4.01*x[21]*x[30]+2.62*x[22]*x[29]-0.71*x[22]*x[30]+2.49*x[23]*x[28]-2.25*x[23]*x[29]+1.93*x[24]*x[25]+0.13*x[27]*x[28] >= 687.1)
@constraint(m, e15, -4.8*x[2]+0.27*x[5]+2.08*x[7]-3.92*x[10]-3.06*x[11]+3.39*x[12]+4.27*x[13]+4.59*x[20]+2.57*x[21]+1.86*x[25]-3.66*x[29]-0.42*x[30] >= 10.8)
@NLconstraint(m, e16, 0.57*x[1]*x[3]-3.14*x[1]*x[7]-1.42*x[7]+4.89*x[1]*x[8]-4.85*x[8]-0.69*x[1]*x[12]+4.38*x[1]*x[13]-4.3*x[1]*x[15]+3.4*x[1]*x[21]+4.47*x[1]*x[28]+2.78*x[28]-0.98*x[1]*x[30]-2.13*x[2]*x[4]-0.01*x[2]*x[11]-1.85*x[11]+4.21*x[2]*x[13]+0.85*x[2]*x[14]-0.31*x[2]*x[15]+3.27*x[2]*x[19]-1.7*x[2]*x[27]-2.07*x[27]-3.94*x[2]*x[29]+2.18*x[3]*x[3]+1.11*x[3]*x[5]+1.46*x[3]*x[6]+0.18*x[3]*x[9]-0.22*x[3]*x[14]+0.97*x[3]*x[26]+3.83*x[3]*x[27]-0.16*x[3]*x[29]+1.51*x[3]*x[30]+4.69*x[4]*x[5]-1.28*x[4]*x[7]+2.09*x[4]*x[12]+x[4]*x[13]-1.25*x[4]*x[17]+4.99*x[4]*x[20]-4.36*x[4]*x[24]-3.55*x[24]-4.69*x[5]*x[7]+1.34*x[5]*x[8]+2.31*x[5]*x[11]-1.82*x[5]*x[15]-1.68*x[5]*x[17]-0.06*x[6]*x[7]-2.81*x[6]*x[8]+0.59*x[6]*x[10]-4.1*x[6]*x[11]+1.57*x[6]*x[15]+2.09*x[6]*x[16]+3.57*x[6]*x[18]+2.34*x[6]*x[20]+1.71*x[6]*x[21]+2.75*x[6]*x[22]-4.3*x[22]+2.23*x[6]*x[25]-0.29*x[25]+3.5*x[7]*x[7]-3.68*x[7]*x[9]+2.23*x[7]*x[11]-1.24*x[7]*x[13]-0.6*x[7]*x[14]+0.69*x[7]*x[17]+2.23*x[7]*x[18]-1.84*x[7]*x[20]-2.07*x[7]*x[24]+3.86*x[7]*x[25]-4.91*x[7]*x[26]+2.12*x[7]*x[30]-4.13*x[8]*x[9]+2.37*x[8]*x[10]-2.96*x[8]*x[11]+2.41*x[8]*x[14]-3.22*x[8]*x[18]-1.88*x[8]*x[20]+2.86*x[8]*x[21]+1.02*x[8]*x[25]+4.49*x[8]*x[27]+1.2*x[8]*x[28]+3.31*x[8]*x[30]+0.99*x[9]*x[18]-0.26*x[9]*x[19]+1.08*x[9]*x[21]-0.31*x[9]*x[23]+0.36*x[23]-3.45*x[9]*x[26]+4.08*x[9]*x[28]-0.51*x[10]*x[10]-3.61*x[10]*x[13]+4.34*x[10]*x[16]-2.38*x[10]*x[18]+2.7*x[10]*x[28]-0.25*x[10]*x[30]+1.83*x[11]*x[15]-4.86*x[11]*x[17]-3.34*x[11]*x[20]+2.62*x[11]*x[22]+1.2*x[11]*x[24]-2.53*x[11]*x[26]+0.18*x[11]*x[27]+2.8*x[12]*x[20]+4.69*x[13]*x[14]+1.26*x[13]*x[20]+1.49*x[13]*x[21]-1.22*x[13]*x[22]+3.55*x[13]*x[29]+3.91*x[13]*x[30]+2.21*x[14]*x[19]+4.82*x[14]*x[20]+3.46*x[15]*x[21]+0.97*x[15]*x[24]+1.7*x[16]*x[25]+4.97*x[16]*x[27]+3.79*x[16]*x[28]-3.89*x[17]*x[17]+0.27*x[17]*x[25]+1.51*x[17]*x[29]+1.53*x[17]*x[30]+2.08*x[18]*x[18]+3.71*x[18]*x[19]+0.41*x[18]*x[26]+2.8*x[18]*x[27]+2.6*x[18]*x[28]-1.9*x[19]*x[19]-4.07*x[19]*x[22]+1.14*x[19]*x[25]-3.45*x[19]*x[26]-3.02*x[19]*x[29]+0.95*x[19]*x[30]+4.64*x[20]*x[29]+0.04*x[21]*x[22]+3.93*x[21]*x[23]-2.4*x[21]*x[27]+1.54*x[21]*x[28]-2.75*x[23]*x[24]-0.99*x[23]*x[25]-0.27*x[23]*x[27]+2.57*x[24]*x[29]+0.5*x[25]*x[27]-1.07*x[26]*x[29] >= 2102.2)
@NLconstraint(m, e17, -(9.07*x[1]*x[1]-4.47*x[1]+1.81*x[1]*x[2]-8.87*x[2]-7.57*x[1]*x[3]+3.72*x[3]+3.42*x[1]*x[4]+3.14*x[4]+6.54*x[1]*x[5]+6.04*x[5]+1.35*x[1]*x[6]+0.87*x[6]+4.46*x[1]*x[7]+1.01*x[7]+0.36*x[1]*x[8]+3.48*x[8]+6.43*x[1]*x[9]+2.19*x[9]-0.29*x[1]*x[10]+7.54*x[10]+5.54*x[1]*x[11]+7.24*x[11]+4.95*x[1]*x[12]+9.34*x[12]+0.69*x[1]*x[13]+1.85*x[13]+5.42*x[1]*x[14]-0.44*x[14]+1.22*x[1]*x[15]+3.17*x[15]+0.91*x[1]*x[16]+9.2*x[16]+0.71*x[1]*x[17]-6.11*x[17]+5.19*x[1]*x[18]+0.64*x[18]+7.39*x[1]*x[19]+7.59*x[19]+1.05*x[1]*x[20]+9.59*x[20]+7.75*x[1]*x[21]+1.1*x[21]+5.78*x[1]*x[22]+7.98*x[22]+4.76*x[1]*x[23]+7.67*x[23]+3.56*x[1]*x[24]+0.58*x[24]+3.49*x[1]*x[25]+1.47*x[25]+2.27*x[1]*x[26]+2.98*x[26]+6.23*x[1]*x[27]+9.23*x[27]+8.38*x[1]*x[28]+4.91*x[28]+7.97*x[1]*x[29]+4.23*x[29]+1.16*x[1]*x[30]+9.76*x[30]+2.1*x[2]*x[2]+2.25*x[2]*x[3]+6.99*x[2]*x[4]+4.91*x[2]*x[5]+7.86*x[2]*x[6]+5.57*x[2]*x[7]+6.41*x[2]*x[8]+4.57*x[2]*x[9]+4.12*x[2]*x[10]+9.73*x[2]*x[11]+5.2*x[2]*x[12]+1.44*x[2]*x[13]-3.49*x[2]*x[14]+8.36*x[2]*x[15]-4.76*x[2]*x[16]+3.67*x[2]*x[17]+4*x[2]*x[18]+0.72*x[2]*x[19]+6.41*x[2]*x[20]+8.68*x[2]*x[21]+3.8*x[2]*x[22]+0.98*x[2]*x[23]+4.44*x[2]*x[24]+7.49*x[2]*x[25]+6.84*x[2]*x[26]+1.49*x[2]*x[27]+6.85*x[2]*x[28]-1.73*x[2]*x[29]+4.18*x[2]*x[30]+3.77*x[3]*x[3]+0.89*x[3]*x[4]+9.37*x[3]*x[5]+0.6*x[3]*x[6]+5.52*x[3]*x[7]+5.72*x[3]*x[8]+0.07*x[3]*x[9]+1.29*x[3]*x[10]+7.03*x[3]*x[11]+9.24*x[3]*x[12]+6.11*x[3]*x[13]+8.2*x[3]*x[14]+5.57*x[3]*x[15]+1.38*x[3]*x[16]+9.82*x[3]*x[17]+0.81*x[3]*x[18]-1.13*x[3]*x[19]+1.05*x[3]*x[20]-3.42*x[3]*x[21]+0.95*x[3]*x[22]+1.88*x[3]*x[23]+8.78*x[3]*x[24]+2.3*x[3]*x[25]+6.45*x[3]*x[26]+2.92*x[3]*x[27]+2.46*x[3]*x[28]+7.58*x[3]*x[29]+3.17*x[3]*x[30]+6.66*x[4]*x[4]+8.19*x[4]*x[5]+8.88*x[4]*x[6]+0.26*x[4]*x[7]+8.29*x[4]*x[8]+3.52*x[4]*x[9]+3.39*x[4]*x[10]-8.14*x[4]*x[11]-4.84*x[4]*x[12]+5.19*x[4]*x[13]+1.97*x[4]*x[14]+4.14*x[4]*x[15]-1.09*x[4]*x[16]+8.74*x[4]*x[17]+8.35*x[4]*x[18]+5.2*x[4]*x[19]+1.07*x[4]*x[20]+1.84*x[4]*x[21]+2.36*x[4]*x[22]+2.59*x[4]*x[23]+8.21*x[4]*x[24]+8.96*x[4]*x[25]+3.06*x[4]*x[26]+8.14*x[4]*x[27]+2.95*x[4]*x[28]+9.15*x[4]*x[29]+2.77*x[4]*x[30]+6.76*x[5]*x[5]+0.95*x[5]*x[6]+4.44*x[5]*x[7]+7.94*x[5]*x[8]+4.91*x[5]*x[9]+0.53*x[5]*x[10]+0.81*x[5]*x[11]+7.68*x[5]*x[12]+9.72*x[5]*x[13]+2.67*x[5]*x[14]+9.15*x[5]*x[15]+6.13*x[5]*x[16]+8.46*x[5]*x[17]-2.05*x[5]*x[18]+8.13*x[5]*x[19]+9.33*x[5]*x[20]+2.98*x[5]*x[21]+2.62*x[5]*x[22]+6.42*x[5]*x[23]+2.7*x[5]*x[24]+8.91*x[5]*x[25]+5.94*x[5]*x[26]+6.27*x[5]*x[27]+0.06*x[5]*x[28]+4.25*x[5]*x[29]+6.07*x[5]*x[30]+5.72*x[6]*x[6]+0.03*x[6]*x[7]+6.96*x[6]*x[8]+9.04*x[6]*x[9]-1.67*x[6]*x[10]+0.86*x[6]*x[11]+6.48*x[6]*x[12]+0.69*x[6]*x[13]+0.79*x[6]*x[14]+9.54*x[6]*x[15]-8.51*x[6]*x[16]-1.11*x[6]*x[17]+0.79*x[6]*x[18]+6.18*x[6]*x[19]+8.13*x[6]*x[20]+9.16*x[6]*x[21]+8.93*x[6]*x[22]+9.59*x[6]*x[23]+0.59*x[6]*x[24]+5.57*x[6]*x[25]+0.08*x[6]*x[26]+4.97*x[6]*x[27]+4.71*x[6]*x[28]+8.01*x[6]*x[29]+1.63*x[6]*x[30]+9.67*x[7]*x[7]+8.47*x[7]*x[8]+6.5*x[7]*x[9]+7.16*x[7]*x[10]+7.99*x[7]*x[11]+1.5*x[7]*x[12]+2.78*x[7]*x[13]+6.38*x[7]*x[14]+0.85*x[7]*x[15]+4.11*x[7]*x[16]+1.85*x[7]*x[17]+3.27*x[7]*x[18]+1.39*x[7]*x[19]-7.64*x[7]*x[20]+9.35*x[7]*x[21]+9.76*x[7]*x[22]+2.4*x[7]*x[23]+5.75*x[7]*x[24]+2.98*x[7]*x[25]+7.04*x[7]*x[26]+6.46*x[7]*x[27]+1.36*x[7]*x[28]-1.61*x[7]*x[29]+1.79*x[7]*x[30]+4.79*x[8]*x[8]+8.88*x[8]*x[9]+0.36*x[8]*x[10]+9.4*x[8]*x[11]+5.74*x[8]*x[12]+6.52*x[8]*x[13]+5.25*x[8]*x[14]+1.5*x[8]*x[15]+8.82*x[8]*x[16]+8.3*x[8]*x[17]+5.59*x[8]*x[18]+9.82*x[8]*x[19]+5.29*x[8]*x[20]+0.38*x[8]*x[21]+7.94*x[8]*x[22]+3.76*x[8]*x[23]-1.09*x[8]*x[24]+1.59*x[8]*x[25]+9.63*x[8]*x[26]+3.73*x[8]*x[27]+3.26*x[8]*x[28]+2.61*x[8]*x[29]+5.68*x[8]*x[30]+7.4*x[9]*x[9]+5.62*x[9]*x[10]+3.73*x[9]*x[11]+7.28*x[9]*x[12]-1.27*x[9]*x[13]-4.69*x[9]*x[14]+5.6*x[9]*x[15]+5.41*x[9]*x[16]+4.49*x[9]*x[17]+1.85*x[9]*x[18]+3*x[9]*x[19]+7.96*x[9]*x[20]+7.26*x[9]*x[21]+2.57*x[9]*x[22]+5.95*x[9]*x[23]+3.87*x[9]*x[24]+x[9]*x[25]+8.77*x[9]*x[26]-8.14*x[9]*x[27]+2.65*x[9]*x[28]+2.38*x[9]*x[29]+5.13*x[9]*x[30]+7.23*x[10]*x[10]+2.74*x[10]*x[11]+8.55*x[10]*x[12]+5.38*x[10]*x[13]+6.72*x[10]*x[14]+7.19*x[10]*x[15]+5.61*x[10]*x[16]+9.43*x[10]*x[17]+4.07*x[10]*x[18]+10*x[10]*x[19]+7.57*x[10]*x[20]+7.34*x[10]*x[21]+4.83*x[10]*x[22]+1.72*x[10]*x[23]+8.02*x[10]*x[24]+1.09*x[10]*x[25]+7.36*x[10]*x[26]+7.52*x[10]*x[27]+1.61*x[10]*x[28]+9.93*x[10]*x[29]+7.93*x[10]*x[30]+6.45*x[11]*x[11]+7.65*x[11]*x[12]+0.45*x[11]*x[13]+0.81*x[11]*x[14]+4.98*x[11]*x[15]+2.89*x[11]*x[16]+7.2*x[11]*x[17]-3.05*x[11]*x[18]+3.65*x[11]*x[19]+5.76*x[11]*x[20]+4.79*x[11]*x[21]+8.71*x[11]*x[22]+9.93*x[11]*x[23]+9.21*x[11]*x[24]+7.43*x[11]*x[25]+2.14*x[11]*x[26]+5.9*x[11]*x[27]+4.31*x[11]*x[28]+6.91*x[11]*x[29]+4.99*x[11]*x[30]+4.19*x[12]*x[12]+1.96*x[12]*x[13]+4.79*x[12]*x[14]+6.76*x[12]*x[15]+0.55*x[12]*x[16]+4.61*x[12]*x[17]+9.95*x[12]*x[18]+3.44*x[12]*x[19]-6.48*x[12]*x[20]+5.51*x[12]*x[21]-7.26*x[12]*x[22]+3.96*x[12]*x[23]+0.49*x[12]*x[24]+7.34*x[12]*x[25]+8.43*x[12]*x[26]+9.24*x[12]*x[27]+1.24*x[12]*x[28]+7.77*x[12]*x[29]+0.85*x[12]*x[30]-3.4*x[13]*x[13]+1.14*x[13]*x[14]+3.73*x[13]*x[15]+5.56*x[13]*x[16]+1.8*x[13]*x[17]+3.79*x[13]*x[18]+2.02*x[13]*x[19]-9.99*x[13]*x[20]+5.8*x[13]*x[21]-3.7*x[13]*x[22]+8.03*x[13]*x[23]+6.78*x[13]*x[24]+8.69*x[13]*x[25]+1.7*x[13]*x[26]-0.04*x[13]*x[27]+4.23*x[13]*x[28]+2.57*x[13]*x[29]+4.6*x[13]*x[30]+1.22*x[14]*x[14]+9.61*x[14]*x[15]+0.97*x[14]*x[16]+2.35*x[14]*x[17]-6.39*x[14]*x[18]+1.14*x[14]*x[19]+6.69*x[14]*x[20]+1.3*x[14]*x[21]+5.96*x[14]*x[22]+9.62*x[14]*x[23]+9.72*x[14]*x[24]+6.87*x[14]*x[25]+4.02*x[14]*x[26]+5.54*x[14]*x[27]+4.87*x[14]*x[28]+4.23*x[14]*x[29]+2.84*x[14]*x[30]-2.83*x[15]*x[15]+3.77*x[15]*x[16]+0.21*x[15]*x[17]+1.1*x[15]*x[18]+4.9*x[15]*x[19]+0.95*x[15]*x[20]+5.09*x[15]*x[21]+7.78*x[15]*x[22]+4.2*x[15]*x[23]+8.76*x[15]*x[24]+7.53*x[15]*x[25]+9.14*x[15]*x[26]+1.01*x[15]*x[27]+0.58*x[15]*x[28]+1.27*x[15]*x[29]+0.8*x[15]*x[30]+2.47*x[16]*x[16]-7.39*x[16]*x[17]+6.8*x[16]*x[18]+2.26*x[16]*x[19]+7.92*x[16]*x[20]+7.03*x[16]*x[21]+6.66*x[16]*x[22]+5.93*x[16]*x[23]+1.19*x[16]*x[24]-0.99*x[16]*x[25]+7.67*x[16]*x[26]+7.85*x[16]*x[27]+6.14*x[16]*x[28]+8.45*x[16]*x[29]+8.59*x[16]*x[30]+2.46*x[17]*x[17]+6.04*x[17]*x[18]-2.21*x[17]*x[19]+6.61*x[17]*x[20]+8.35*x[17]*x[21]-3.03*x[17]*x[22]+6.18*x[17]*x[23]+1.13*x[17]*x[24]+7.39*x[17]*x[25]+8.37*x[17]*x[26]+9.13*x[17]*x[27]+8.26*x[17]*x[28]+4.34*x[17]*x[29]+9.52*x[17]*x[30]+4.44*x[18]*x[18]+4.5*x[18]*x[19]+9.13*x[18]*x[20]+5.03*x[18]*x[21]+0.46*x[18]*x[22]+3.02*x[18]*x[23]+8.94*x[18]*x[24]+3.02*x[18]*x[25]+1.23*x[18]*x[26]-0.91*x[18]*x[27]+2.46*x[18]*x[28]+4.39*x[18]*x[29]-2.14*x[18]*x[30]-0.98*x[19]*x[19]+3.29*x[19]*x[20]+6.57*x[19]*x[21]+0.45*x[19]*x[22]+6.46*x[19]*x[23]+4.77*x[19]*x[24]+8.69*x[19]*x[25]+5.04*x[19]*x[26]+1.98*x[19]*x[27]+3.48*x[19]*x[28]+4.34*x[19]*x[29]+5.35*x[19]*x[30]+9.44*x[20]*x[20]+3.49*x[20]*x[21]+2.55*x[20]*x[22]+4.03*x[20]*x[23]+2.01*x[20]*x[24]-8.6*x[20]*x[25]-3.24*x[20]*x[26]-3.11*x[20]*x[27]+4.82*x[20]*x[28]+4.8*x[20]*x[29]+7.8*x[20]*x[30]+8.24*x[21]*x[21]+5.8*x[21]*x[22]+0.05*x[21]*x[23]+0.91*x[21]*x[24]+0.8*x[21]*x[25]+4.96*x[21]*x[26]+3.62*x[21]*x[27]+4.52*x[21]*x[28]+2.57*x[21]*x[29]+5.72*x[21]*x[30]+2.17*x[22]*x[22]-9.83*x[22]*x[23]+2.49*x[22]*x[24]+6.63*x[22]*x[25]+4.78*x[22]*x[26]+8.36*x[22]*x[27]+0.48*x[22]*x[28]+6.88*x[22]*x[29]+4.05*x[22]*x[30]+7.83*x[23]*x[23]+7.67*x[23]*x[24]+4.22*x[23]*x[25]+5.54*x[23]*x[26]+4.08*x[23]*x[27]+8.03*x[23]*x[28]-8.48*x[23]*x[29]+2.64*x[23]*x[30]+4.69*x[24]*x[24]+0.88*x[24]*x[25]-9.3*x[24]*x[26]+9.22*x[24]*x[27]+5.38*x[24]*x[28]+9.1*x[24]*x[29]+1.47*x[24]*x[30]+7.04*x[25]*x[25]+5.14*x[25]*x[26]+2.62*x[25]*x[27]+6.28*x[25]*x[28]+0.25*x[25]*x[29]+0.93*x[25]*x[30]+1.97*x[26]*x[26]+2.37*x[26]*x[27]+4.13*x[26]*x[28]+7.99*x[26]*x[29]+1.51*x[26]*x[30]+4.45*x[27]*x[27]+0.29*x[27]*x[28]+6.66*x[27]*x[29]+7.06*x[27]*x[30]+3.42*x[28]*x[28]+5.4*x[28]*x[29]+1.58*x[28]*x[30]+7.65*x[29]*x[29]+6.22*x[29]*x[30]+5.79*x[30]*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 
