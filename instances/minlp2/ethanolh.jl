using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]
@variable(m, x[x_Idx])
b_Idx = Any[39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 325.08*x[1]^eps*x[2]^eps*x[3]^0.05*x[4]^0.533*x[5]^(-0.0822)*x[12]+objvar == 0.0)
@NLconstraint(m, e2, -(16.00034*x[1]^eps*x[2]^(-0.2344)*x[3]^eps*x[4]^eps*x[5]^eps*x[6]-196.1292*x[1]^0.7464*x[2]^eps*x[3]^eps*x[4]^eps*x[5]^0.0243*x[7]) == 0.0)
@NLconstraint(m, e3, -(196.1292*x[1]^0.7464*x[2]^eps*x[3]^eps*x[4]^eps*x[5]^0.0243*x[7]-16.58544*x[1]^eps*x[2]^0.7318*x[3]^eps*x[4]^eps*x[5]^(-0.3941)*x[8]-0.012879*x[1]^eps*x[2]^8.6107*x[3]^eps*x[4]^eps*x[5]^eps*x[9]) == 0.0)
@NLconstraint(m, e4, -(16.58544*x[1]^eps*x[2]^0.7318*x[3]^eps*x[4]^eps*x[5]^(-0.3941)*x[8]-3.78145609890476*x[1]^eps*x[2]^eps*x[3]^0.6159*x[4]^eps*x[5]^0.1308*x[10]-9.59175*x[1]^eps*x[2]^eps*x[3]^0.05*x[4]^0.533*x[5]^(-0.0822)*x[11]) == 0.0)
@NLconstraint(m, e5, -(7.56291219780952*x[1]^eps*x[2]^eps*x[3]^0.6159*x[4]^eps*x[5]^0.1308*x[10]-325.08*x[1]^eps*x[2]^eps*x[3]^0.05*x[4]^0.533*x[5]^(-0.0822)*x[12]) == 0.0)
@NLconstraint(m, e6, -(-196.1292*x[1]^0.7464*x[2]^eps*x[3]^eps*x[4]^eps*x[5]^0.0243*x[7]-16.58544*x[1]^eps*x[2]^0.7318*x[3]^eps*x[4]^eps*x[5]^(-0.3941)*x[8]-0.012879*x[1]^eps*x[2]^8.6107*x[3]^eps*x[4]^eps*x[5]^eps*x[9]+7.56291219780952*x[1]^eps*x[2]^eps*x[3]^0.6159*x[4]^eps*x[5]^0.1308*x[10]+325.08*x[1]^eps*x[2]^eps*x[3]^0.05*x[4]^0.533*x[5]^(-0.0822)*x[12]-25.1*x[1]^eps*x[2]^eps*x[3]^eps*x[4]^eps*x[5]^1*x[13]) == 0.0)
@constraint(m, e7, x[1] >= 0.00345)
@constraint(m, e8, x[2] >= 0.1011)
@constraint(m, e9, x[3] >= 0.9144)
@constraint(m, e10, x[4] >= 0.00095)
@constraint(m, e11, x[5] >= 0.11278)
@constraint(m, e12, x[1] <= 0.345)
@constraint(m, e13, x[2] <= 10.11)
@constraint(m, e14, x[3] <= 91.44)
@constraint(m, e15, x[4] <= 0.095)
@constraint(m, e16, x[5] <= 11.278)
@constraint(m, e17, x[6]-x[14]-x[22]-x[30] == 0.0)
@constraint(m, e18, x[7]-x[15]-x[23]-x[31] == 0.0)
@constraint(m, e19, x[8]-x[16]-x[24]-x[32] == 0.0)
@constraint(m, e20, x[9]-x[17]-x[25]-x[33] == 0.0)
@constraint(m, e21, x[10]-x[18]-x[26]-x[34] == 0.0)
@constraint(m, e22, x[11]-x[19]-x[27]-x[35] == 0.0)
@constraint(m, e23, x[12]-x[20]-x[28]-x[36] == 0.0)
@constraint(m, e24, x[13]-x[21]-x[29]-x[37] == 0.0)
@constraint(m, e25, x[14]-0.2*b[39] >= 0.0)
@constraint(m, e26, x[15]-0.2*b[40] >= 0.0)
@constraint(m, e27, x[16]-0.2*b[41] >= 0.0)
@constraint(m, e28, x[17]-0.2*b[42] >= 0.0)
@constraint(m, e29, x[18]-0.2*b[43] >= 0.0)
@constraint(m, e30, x[19]-0.2*b[44] >= 0.0)
@constraint(m, e31, x[20]-0.2*b[45] >= 0.0)
@constraint(m, e32, x[21]-0.2*b[46] >= 0.0)
@constraint(m, e33, x[14]-0.999999995*b[39] <= 0.0)
@constraint(m, e34, x[15]-0.999999995*b[40] <= 0.0)
@constraint(m, e35, x[16]-0.999999995*b[41] <= 0.0)
@constraint(m, e36, x[17]-0.999999995*b[42] <= 0.0)
@constraint(m, e37, x[18]-0.999999995*b[43] <= 0.0)
@constraint(m, e38, x[19]-0.999999995*b[44] <= 0.0)
@constraint(m, e39, x[20]-0.999999995*b[45] <= 0.0)
@constraint(m, e40, x[21]-0.999999995*b[46] <= 0.0)
@constraint(m, e41, x[22]-0.999999995*b[47] >= 0.0)
@constraint(m, e42, x[23]-0.999999995*b[48] >= 0.0)
@constraint(m, e43, x[24]-0.999999995*b[49] >= 0.0)
@constraint(m, e44, x[25]-0.999999995*b[50] >= 0.0)
@constraint(m, e45, x[26]-0.999999995*b[51] >= 0.0)
@constraint(m, e46, x[27]-0.999999995*b[52] >= 0.0)
@constraint(m, e47, x[28]-0.999999995*b[53] >= 0.0)
@constraint(m, e48, x[29]-0.999999995*b[54] >= 0.0)
@constraint(m, e49, x[22]-1.000000005*b[47] <= 0.0)
@constraint(m, e50, x[23]-1.000000005*b[48] <= 0.0)
@constraint(m, e51, x[24]-1.000000005*b[49] <= 0.0)
@constraint(m, e52, x[25]-1.000000005*b[50] <= 0.0)
@constraint(m, e53, x[26]-1.000000005*b[51] <= 0.0)
@constraint(m, e54, x[27]-1.000000005*b[52] <= 0.0)
@constraint(m, e55, x[28]-1.000000005*b[53] <= 0.0)
@constraint(m, e56, x[29]-1.000000005*b[54] <= 0.0)
@constraint(m, e57, x[30]-1.000000005*b[55] >= 0.0)
@constraint(m, e58, x[31]-1.000000005*b[56] >= 0.0)
@constraint(m, e59, x[32]-1.000000005*b[57] >= 0.0)
@constraint(m, e60, x[33]-1.000000005*b[58] >= 0.0)
@constraint(m, e61, x[34]-1.000000005*b[59] >= 0.0)
@constraint(m, e62, x[35]-1.000000005*b[60] >= 0.0)
@constraint(m, e63, x[36]-1.000000005*b[61] >= 0.0)
@constraint(m, e64, x[37]-1.000000005*b[62] >= 0.0)
@constraint(m, e65, x[30]-5*b[55] <= 0.0)
@constraint(m, e66, x[31]-5*b[56] <= 0.0)
@constraint(m, e67, x[32]-5*b[57] <= 0.0)
@constraint(m, e68, x[33]-5*b[58] <= 0.0)
@constraint(m, e69, x[34]-5*b[59] <= 0.0)
@constraint(m, e70, x[35]-5*b[60] <= 0.0)
@constraint(m, e71, x[36]-5*b[61] <= 0.0)
@constraint(m, e72, x[37]-5*b[62] <= 0.0)
@constraint(m, e73, b[39]+b[47]+b[55] == 1.0)
@constraint(m, e74, b[40]+b[48]+b[56] == 1.0)
@constraint(m, e75, b[41]+b[49]+b[57] == 1.0)
@constraint(m, e76, b[42]+b[50]+b[58] == 1.0)
@constraint(m, e77, b[43]+b[51]+b[59] == 1.0)
@constraint(m, e78, b[44]+b[52]+b[60] == 1.0)
@constraint(m, e79, b[45]+b[53]+b[61] == 1.0)
@constraint(m, e80, b[46]+b[54]+b[62] == 1.0)
@constraint(m, e81, b[39]+b[40]+b[41]+b[42]+b[43]+b[44]+b[45]+b[46]+b[55]+b[56]+b[57]+b[58]+b[59]+b[60]+b[61]+b[62] <= 8.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
