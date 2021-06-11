using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[17, 18, 19, 20]
@variable(m, b[b_Idx], Bin)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 21, 22, 23, 24]
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
set_upper_bound(i[21], 15.0)
set_upper_bound(i[22], 12.0)
set_upper_bound(i[23], 9.0)
set_upper_bound(i[24], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[17]-0.2*b[18]-0.3*b[19]-0.4*b[20]-i[21]-i[22]-i[23]-i[24]+objvar == 0.0)
@NLconstraint(m, e2, i[21]*i[1]+i[22]*i[2]+i[23]*i[3]+i[24]*i[4] >= 9.0)
@NLconstraint(m, e3, i[21]*i[5]+i[22]*i[6]+i[23]*i[7]+i[24]*i[8] >= 7.0)
@NLconstraint(m, e4, i[21]*i[9]+i[22]*i[10]+i[23]*i[11]+i[24]*i[12] >= 12.0)
@NLconstraint(m, e5, i[21]*i[13]+i[22]*i[14]+i[23]*i[15]+i[24]*i[16] >= 11.0)
@constraint(m, e6, -330*i[1]-360*i[5]-385*i[9]-415*i[13]+1700*b[17] <= 0.0)
@constraint(m, e7, -330*i[2]-360*i[6]-385*i[10]-415*i[14]+1700*b[18] <= 0.0)
@constraint(m, e8, -330*i[3]-360*i[7]-385*i[11]-415*i[15]+1700*b[19] <= 0.0)
@constraint(m, e9, -330*i[4]-360*i[8]-385*i[12]-415*i[16]+1700*b[20] <= 0.0)
@constraint(m, e10, 330*i[1]+360*i[5]+385*i[9]+415*i[13]-1900*b[17] <= 0.0)
@constraint(m, e11, 330*i[2]+360*i[6]+385*i[10]+415*i[14]-1900*b[18] <= 0.0)
@constraint(m, e12, 330*i[3]+360*i[7]+385*i[11]+415*i[15]-1900*b[19] <= 0.0)
@constraint(m, e13, 330*i[4]+360*i[8]+385*i[12]+415*i[16]-1900*b[20] <= 0.0)
@constraint(m, e14, -i[1]-i[5]-i[9]-i[13]+b[17] <= 0.0)
@constraint(m, e15, -i[2]-i[6]-i[10]-i[14]+b[18] <= 0.0)
@constraint(m, e16, -i[3]-i[7]-i[11]-i[15]+b[19] <= 0.0)
@constraint(m, e17, -i[4]-i[8]-i[12]-i[16]+b[20] <= 0.0)
@constraint(m, e18, i[1]+i[5]+i[9]+i[13]-5*b[17] <= 0.0)
@constraint(m, e19, i[2]+i[6]+i[10]+i[14]-5*b[18] <= 0.0)
@constraint(m, e20, i[3]+i[7]+i[11]+i[15]-5*b[19] <= 0.0)
@constraint(m, e21, i[4]+i[8]+i[12]+i[16]-5*b[20] <= 0.0)
@constraint(m, e22, b[17]-i[21] <= 0.0)
@constraint(m, e23, b[18]-i[22] <= 0.0)
@constraint(m, e24, b[19]-i[23] <= 0.0)
@constraint(m, e25, b[20]-i[24] <= 0.0)
@constraint(m, e26, -15*b[17]+i[21] <= 0.0)
@constraint(m, e27, -12*b[18]+i[22] <= 0.0)
@constraint(m, e28, -9*b[19]+i[23] <= 0.0)
@constraint(m, e29, -6*b[20]+i[24] <= 0.0)
@constraint(m, e30, i[21]+i[22]+i[23]+i[24] >= 8.0)
@constraint(m, e31, -b[17]+b[18] <= 0.0)
@constraint(m, e32, -b[18]+b[19] <= 0.0)
@constraint(m, e33, -b[19]+b[20] <= 0.0)
@constraint(m, e34, -i[21]+i[22] <= 0.0)
@constraint(m, e35, -i[22]+i[23] <= 0.0)
@constraint(m, e36, -i[23]+i[24] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
