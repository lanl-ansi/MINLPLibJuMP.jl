using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 27]
@variable(m, x[x_Idx])
b_Idx = Any[17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -20*x[7]-40*b[17]+x[27] == 0.0)
@constraint(m, e2, x[2] >= 0.0)
@constraint(m, e3, x[3] >= 0.0)
@constraint(m, e4, x[4] >= 0.0)
@constraint(m, e5, x[5] >= 0.0)
@constraint(m, e6, x[6] >= 0.0)
@constraint(m, e7, x[2] <= 5.625e7)
@constraint(m, e8, x[3] <= 5.625e7)
@constraint(m, e9, x[4] <= 5.625e7)
@constraint(m, e10, x[5] <= 5.625e7)
@constraint(m, e11, x[6] <= 5.625e7)
@constraint(m, e12, x[1] == 5.625e7)
@constraint(m, e13, b[17]+b[18] <= 1.0)
@constraint(m, e14, b[17]+b[18] <= 1.0)
@constraint(m, e15, b[19]+b[21] <= 1.0)
@constraint(m, e16, b[20]+b[23] <= 1.0)
@constraint(m, e17, b[19]+b[21] <= 1.0)
@constraint(m, e18, b[22]+b[24] <= 1.0)
@constraint(m, e19, b[20]+b[23] <= 1.0)
@constraint(m, e20, b[22]+b[24] <= 1.0)
@constraint(m, e21, b[25]+b[26] <= 1.0)
@constraint(m, e22, b[25]+b[26] <= 1.0)
@constraint(m, e23, x[7]-100000000*b[17] <= 0.0)
@constraint(m, e24, x[8]-100000000*b[18] <= 0.0)
@constraint(m, e25, x[9]-100000000*b[19] <= 0.0)
@constraint(m, e26, x[10]-100000000*b[20] <= 0.0)
@constraint(m, e27, x[11]-100000000*b[21] <= 0.0)
@constraint(m, e28, x[12]-100000000*b[22] <= 0.0)
@constraint(m, e29, x[13]-100000000*b[23] <= 0.0)
@constraint(m, e30, x[14]-100000000*b[24] <= 0.0)
@constraint(m, e31, x[15]-100000000*b[25] <= 0.0)
@constraint(m, e32, x[16]-100000000*b[26] <= 0.0)
@constraint(m, e33, -100000000*x[7]+b[17] <= 0.0)
@constraint(m, e34, -100000000*x[8]+b[18] <= 0.0)
@constraint(m, e35, -100000000*x[9]+b[19] <= 0.0)
@constraint(m, e36, -100000000*x[10]+b[20] <= 0.0)
@constraint(m, e37, -100000000*x[11]+b[21] <= 0.0)
@constraint(m, e38, -100000000*x[12]+b[22] <= 0.0)
@constraint(m, e39, -100000000*x[13]+b[23] <= 0.0)
@constraint(m, e40, -100000000*x[14]+b[24] <= 0.0)
@constraint(m, e41, -100000000*x[15]+b[25] <= 0.0)
@constraint(m, e42, -100000000*x[16]+b[26] <= 0.0)
@constraint(m, e43, x[1]-x[2]-100000000*b[17] <= 0.0)
@constraint(m, e44, -x[1]+x[2]-100000000*b[18] <= 0.0)
@constraint(m, e45, x[2]-x[3]-100000000*b[19] <= 0.0)
@constraint(m, e46, x[2]-x[4]-100000000*b[20] <= 0.0)
@constraint(m, e47, -x[2]+x[3]-100000000*b[21] <= 0.0)
@constraint(m, e48, x[3]-x[5]-100000000*b[22] <= 0.0)
@constraint(m, e49, -x[2]+x[4]-100000000*b[23] <= 0.0)
@constraint(m, e50, -x[3]+x[5]-100000000*b[24] <= 0.0)
@constraint(m, e51, x[5]-x[6]-100000000*b[25] <= 0.0)
@constraint(m, e52, -x[5]+x[6]-100000000*b[26] <= 0.0)
@constraint(m, e53, -x[1]+x[2]+100000000*b[17] <= 1.0e8)
@constraint(m, e54, x[1]-x[2]+100000000*b[18] <= 1.0e8)
@constraint(m, e55, -x[2]+x[3]+100000000*b[19] <= 1.0e8)
@constraint(m, e56, -x[2]+x[4]+100000000*b[20] <= 1.0e8)
@constraint(m, e57, x[2]-x[3]+100000000*b[21] <= 1.0e8)
@constraint(m, e58, -x[3]+x[5]+100000000*b[22] <= 1.0e8)
@constraint(m, e59, x[2]-x[4]+100000000*b[23] <= 1.0e8)
@constraint(m, e60, x[3]-x[5]+100000000*b[24] <= 1.0e8)
@constraint(m, e61, -x[5]+x[6]+100000000*b[25] <= 1.0e8)
@constraint(m, e62, x[5]-x[6]+100000000*b[26] <= 1.0e8)
@constraint(m, e63, x[10]-x[13] == 2.0e6)
@constraint(m, e64, x[15]-x[16] == 3.0e6)
@constraint(m, e65, x[7]-x[8]-x[9]-x[10]+x[11]+x[13] == 0.0)
@constraint(m, e66, x[9]-x[11]-x[12]+x[14] == 0.0)
@constraint(m, e67, x[12]-x[14]-x[15]+x[16] == 0.0)
@constraint(m, e68, x[7] >= 0.0)
@constraint(m, e69, x[7] <= 1.0e7)
@constraint(m, e70, x[1]-x[2]-0.249149*x[7] == 0.0)
@constraint(m, e71, -x[1]+x[2]-0.249149*x[8] == 0.0)
@constraint(m, e72, x[2]-x[3]-0.249149*x[9] == 0.0)
@constraint(m, e73, x[2]-x[4]-0.249149*x[10] == 0.0)
@constraint(m, e74, -x[2]+x[3]-0.249149*x[11] == 0.0)
@constraint(m, e75, x[3]-x[5]-0.249149*x[12] == 0.0)
@constraint(m, e76, -x[2]+x[4]-0.249149*x[13] == 0.0)
@constraint(m, e77, -x[3]+x[5]-0.249149*x[14] == 0.0)
@constraint(m, e78, x[5]-x[6]-0.249149*x[15] == 0.0)
@constraint(m, e79, -x[5]+x[6]-0.249149*x[16] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[27])

m = m 		 # model get returned when including this script. 
