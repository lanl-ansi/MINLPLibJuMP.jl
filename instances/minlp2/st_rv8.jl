using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]
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
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 7*x[1]+4*x[6]+7*x[7]+6*x[12]+9*x[13]+2*x[14]+x[19]+5*x[20]+x[25]+5*x[26]+3*x[31]+9*x[32]+5*x[33]+x[38]+x[39] <= 330.0)
@constraint(m, e2, 4*x[1]+7*x[2]+7*x[7]+8*x[8]+9*x[13]+3*x[14]+6*x[15]+2*x[20]+6*x[21]+5*x[26]+3*x[27]+4*x[32]+6*x[33]+6*x[34]+6*x[39]+3*x[40] <= 425.0)
@constraint(m, e3, x[2]+6*x[3]+8*x[8]+7*x[9]+9*x[14]+8*x[15]+8*x[16]+6*x[21]+5*x[22]+4*x[27]+2*x[28]+4*x[33]+7*x[34]+9*x[35]+2*x[40] <= 430.0)
@constraint(m, e4, x[3]+5*x[4]+9*x[9]+6*x[10]+4*x[15]+9*x[16]+6*x[17]+7*x[22]+9*x[23]+8*x[28]+3*x[29]+7*x[34]+4*x[35]+3*x[36] <= 405.0)
@constraint(m, e5, 4*x[4]+7*x[5]+3*x[10]+6*x[11]+2*x[16]+8*x[17]+5*x[18]+2*x[23]+9*x[24]+6*x[29]+4*x[30]+3*x[35]+6*x[36]+6*x[37] <= 355.0)
@constraint(m, e6, 5*x[5]+5*x[6]+7*x[11]+4*x[12]+4*x[17]+6*x[18]+2*x[19]+4*x[24]+2*x[25]+x[30]+4*x[31]+4*x[36]+3*x[37]+4*x[38] <= 275.0)
@constraint(m, e7, 2*x[1]+3*x[6]+3*x[7]+5*x[12]+9*x[13]+9*x[18]+x[19]+4*x[20]+6*x[25]+5*x[26]+3*x[31]+7*x[32]+3*x[37]+5*x[38]+4*x[39] <= 345.0)
@constraint(m, e8, 9*x[1]+7*x[2]+3*x[7]+6*x[8]+7*x[13]+2*x[14]+x[19]+x[20]+4*x[21]+5*x[26]+2*x[27]+6*x[32]+5*x[33]+4*x[38]+4*x[39]+3*x[40] <= 345.0)
@constraint(m, e9, 6*x[1]+3*x[2]+4*x[3]+2*x[8]+7*x[9]+3*x[14]+7*x[15]+2*x[20]+3*x[21]+2*x[22]+6*x[27]+x[28]+6*x[33]+7*x[34]+9*x[39]+2*x[40] <= 350.0)
@constraint(m, e10, 2*x[2]+8*x[3]+9*x[4]+x[9]+x[10]+6*x[15]+x[16]+6*x[21]+7*x[22]+6*x[23]+3*x[28]+2*x[29]+7*x[34]+6*x[35]+5*x[40] <= 350.0)
@constraint(m, e11, 3*x[3]+6*x[4]+5*x[5]+6*x[10]+5*x[11]+8*x[16]+9*x[17]+6*x[22]+4*x[23]+x[24]+5*x[29]+2*x[30]+5*x[35]+4*x[36] <= 345.0)
@constraint(m, e12, 3*x[4]+3*x[5]+9*x[6]+3*x[11]+8*x[12]+9*x[17]+4*x[18]+4*x[23]+3*x[24]+6*x[25]+6*x[30]+x[31]+6*x[36]+2*x[37] <= 335.0)
@constraint(m, e13, 8*x[5]+2*x[6]+4*x[7]+8*x[12]+9*x[13]+3*x[18]+8*x[19]+x[24]+8*x[25]+8*x[26]+3*x[31]+x[32]+5*x[37]+7*x[38] <= 375.0)
@constraint(m, e14, x[1]+9*x[6]+x[7]+4*x[8]+9*x[13]+6*x[14]+6*x[19]+7*x[20]+x[25]+5*x[26]+7*x[27]+x[32]+8*x[33]+9*x[38]+2*x[39] <= 380.0)
@constraint(m, e15, 3*x[1]+9*x[2]+4*x[7]+2*x[8]+x[9]+3*x[14]+9*x[15]+7*x[20]+7*x[21]+8*x[26]+7*x[27]+5*x[28]+4*x[33]+x[34]+6*x[39]+9*x[40] <= 425.0)
@constraint(m, e16, 9*x[2]+6*x[3]+9*x[8]+5*x[9]+6*x[10]+6*x[15]+9*x[16]+5*x[21]+7*x[22]+8*x[27]+7*x[28]+x[29]+x[34]+8*x[35]+4*x[40] <= 455.0)
@constraint(m, e17, 9*x[3]+9*x[4]+4*x[9]+2*x[10]+7*x[11]+4*x[16]+8*x[17]+3*x[22]+2*x[23]+2*x[28]+7*x[29]+3*x[30]+4*x[35]+9*x[36] <= 365.0)
@constraint(m, e18, 5*x[4]+6*x[5]+8*x[10]+9*x[11]+6*x[12]+6*x[17]+4*x[18]+3*x[23]+3*x[24]+x[29]+9*x[30]+2*x[31]+4*x[36]+7*x[37] <= 365.0)
@constraint(m, e19, 5*x[5]+7*x[6]+2*x[11]+8*x[12]+x[13]+9*x[18]+8*x[19]+6*x[24]+x[25]+4*x[30]+9*x[31]+7*x[32]+4*x[37]+6*x[38] <= 385.0)
@constraint(m, e20, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20]+x[21]+x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40] <= 400.0)
@NLconstraint(m, e21, -(-0.0004* (x[1])^2-0.0384*x[1]-0.00285* (x[2])^2-0.3876*x[2]-0.00155* (x[3])^2-0.1116*x[3]-0.0038* (x[4])^2-0.4636*x[4]-0.0044* (x[5])^2-0.044*x[5]-0.0046* (x[6])^2-0.3588*x[6]-0.00085* (x[7])^2-0.0272*x[7]-0.00165* (x[8])^2-0.231*x[8]-0.0025* (x[9])^2-0.27*x[9]-0.00385* (x[10])^2-0.308*x[10]-0.00355* (x[11])^2-0.3692*x[11]-0.0015* (x[12])^2-0.288*x[12]-0.0037* (x[13])^2-0.407*x[13]-0.00125* (x[14])^2-0.1175*x[14]-0.00095* (x[15])^2-0.1045*x[15]-0.0048* (x[16])^2-0.1632*x[16]-0.0015* (x[17])^2-0.135*x[17]-0.0037* (x[18])^2-0.0666*x[18]-0.00125* (x[19])^2-0.21*x[19]-0.00095* (x[20])^2-0.1425*x[20]-0.0045* (x[21])^2-0.882*x[21]-0.00245* (x[22])^2-0.3283*x[22]-0.0004* (x[23])^2-0.0648*x[23]-0.0048* (x[24])^2-0.0864*x[24]-0.00485* (x[25])^2-0.4753*x[25]-0.00025* (x[26])^2-0.046*x[26]-0.00435* (x[27])^2-0.7917*x[27]-0.00365* (x[28])^2-0.7008*x[28]-0.0002* (x[29])^2-0.0384*x[29]-0.00205* (x[30])^2-0.0164*x[30]-0.00165* (x[31])^2-0.0891*x[31]-0.00175* (x[32])^2-0.0945*x[32]-0.0048* (x[33])^2-0.7296*x[33]-5e-5* (x[34])^2-0.0023*x[34]-0.00155* (x[35])^2-0.1488*x[35]-0.00015* (x[36])^2-0.0189*x[36]-0.00245* (x[37])^2-0.0343*x[37]-0.00095* (x[38])^2-0.1045*x[38]-0.0038* (x[39])^2-0.608*x[39]-0.0029* (x[40])^2-0.0174*x[40])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
