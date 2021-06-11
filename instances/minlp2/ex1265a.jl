using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[26, 27, 28, 29, 30]
@variable(m, b[b_Idx], Bin)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 31, 32, 33, 34, 35]
@variable(m, i[i_Idx], Int)
set_upper_bound(i[1], 5.0)
set_upper_bound(i[2], 5.0)
set_upper_bound(i[3], 5.0)
set_upper_bound(i[4], 5.0)
set_upper_bound(i[5], 5.0)
set_upper_bound(i[6], 5.0)
set_upper_bound(i[7], 5.0)
set_upper_bound(i[8], 5.0)
set_upper_bound(i[9], 5.0)
set_upper_bound(i[10], 5.0)
set_upper_bound(i[11], 5.0)
set_upper_bound(i[12], 5.0)
set_upper_bound(i[13], 5.0)
set_upper_bound(i[14], 5.0)
set_upper_bound(i[15], 5.0)
set_upper_bound(i[16], 5.0)
set_upper_bound(i[17], 5.0)
set_upper_bound(i[18], 5.0)
set_upper_bound(i[19], 5.0)
set_upper_bound(i[20], 5.0)
set_upper_bound(i[21], 5.0)
set_upper_bound(i[22], 5.0)
set_upper_bound(i[23], 5.0)
set_upper_bound(i[24], 5.0)
set_upper_bound(i[25], 5.0)
set_upper_bound(i[31], 15.0)
set_upper_bound(i[32], 12.0)
set_upper_bound(i[33], 9.0)
set_upper_bound(i[34], 6.0)
set_upper_bound(i[35], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[26]-0.2*b[27]-0.3*b[28]-0.4*b[29]-0.5*b[30]-i[31]-i[32]-i[33]-i[34]-i[35]+objvar == 0.0)
@NLconstraint(m, e2, i[31]*i[1]+i[32]*i[2]+i[33]*i[3]+i[34]*i[4]+i[35]*i[5] >= 12.0)
@NLconstraint(m, e3, i[31]*i[6]+i[32]*i[7]+i[33]*i[8]+i[34]*i[9]+i[35]*i[10] >= 6.0)
@NLconstraint(m, e4, i[31]*i[11]+i[32]*i[12]+i[33]*i[13]+i[34]*i[14]+i[35]*i[15] >= 15.0)
@NLconstraint(m, e5, i[31]*i[16]+i[32]*i[17]+i[33]*i[18]+i[34]*i[19]+i[35]*i[20] >= 6.0)
@NLconstraint(m, e6, i[31]*i[21]+i[32]*i[22]+i[33]*i[23]+i[34]*i[24]+i[35]*i[25] >= 9.0)
@constraint(m, e7, -330*i[1]-360*i[6]-370*i[11]-415*i[16]-435*i[21]+1800*b[26] <= 0.0)
@constraint(m, e8, -330*i[2]-360*i[7]-370*i[12]-415*i[17]-435*i[22]+1800*b[27] <= 0.0)
@constraint(m, e9, -330*i[3]-360*i[8]-370*i[13]-415*i[18]-435*i[23]+1800*b[28] <= 0.0)
@constraint(m, e10, -330*i[4]-360*i[9]-370*i[14]-415*i[19]-435*i[24]+1800*b[29] <= 0.0)
@constraint(m, e11, -330*i[5]-360*i[10]-370*i[15]-415*i[20]-435*i[25]+1800*b[30] <= 0.0)
@constraint(m, e12, 330*i[1]+360*i[6]+370*i[11]+415*i[16]+435*i[21]-2000*b[26] <= 0.0)
@constraint(m, e13, 330*i[2]+360*i[7]+370*i[12]+415*i[17]+435*i[22]-2000*b[27] <= 0.0)
@constraint(m, e14, 330*i[3]+360*i[8]+370*i[13]+415*i[18]+435*i[23]-2000*b[28] <= 0.0)
@constraint(m, e15, 330*i[4]+360*i[9]+370*i[14]+415*i[19]+435*i[24]-2000*b[29] <= 0.0)
@constraint(m, e16, 330*i[5]+360*i[10]+370*i[15]+415*i[20]+435*i[25]-2000*b[30] <= 0.0)
@constraint(m, e17, -i[1]-i[6]-i[11]-i[16]-i[21]+b[26] <= 0.0)
@constraint(m, e18, -i[2]-i[7]-i[12]-i[17]-i[22]+b[27] <= 0.0)
@constraint(m, e19, -i[3]-i[8]-i[13]-i[18]-i[23]+b[28] <= 0.0)
@constraint(m, e20, -i[4]-i[9]-i[14]-i[19]-i[24]+b[29] <= 0.0)
@constraint(m, e21, -i[5]-i[10]-i[15]-i[20]-i[25]+b[30] <= 0.0)
@constraint(m, e22, i[1]+i[6]+i[11]+i[16]+i[21]-5*b[26] <= 0.0)
@constraint(m, e23, i[2]+i[7]+i[12]+i[17]+i[22]-5*b[27] <= 0.0)
@constraint(m, e24, i[3]+i[8]+i[13]+i[18]+i[23]-5*b[28] <= 0.0)
@constraint(m, e25, i[4]+i[9]+i[14]+i[19]+i[24]-5*b[29] <= 0.0)
@constraint(m, e26, i[5]+i[10]+i[15]+i[20]+i[25]-5*b[30] <= 0.0)
@constraint(m, e27, b[26]-i[31] <= 0.0)
@constraint(m, e28, b[27]-i[32] <= 0.0)
@constraint(m, e29, b[28]-i[33] <= 0.0)
@constraint(m, e30, b[29]-i[34] <= 0.0)
@constraint(m, e31, b[30]-i[35] <= 0.0)
@constraint(m, e32, -15*b[26]+i[31] <= 0.0)
@constraint(m, e33, -12*b[27]+i[32] <= 0.0)
@constraint(m, e34, -9*b[28]+i[33] <= 0.0)
@constraint(m, e35, -6*b[29]+i[34] <= 0.0)
@constraint(m, e36, -6*b[30]+i[35] <= 0.0)
@constraint(m, e37, i[31]+i[32]+i[33]+i[34]+i[35] >= 10.0)
@constraint(m, e38, -b[26]+b[27] <= 0.0)
@constraint(m, e39, -b[27]+b[28] <= 0.0)
@constraint(m, e40, -b[28]+b[29] <= 0.0)
@constraint(m, e41, -b[29]+b[30] <= 0.0)
@constraint(m, e42, -i[31]+i[32] <= 0.0)
@constraint(m, e43, -i[32]+i[33] <= 0.0)
@constraint(m, e44, -i[33]+i[34] <= 0.0)
@constraint(m, e45, -i[34]+i[35] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
