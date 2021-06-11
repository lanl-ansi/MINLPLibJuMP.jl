using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
@variable(m, x[x_Idx])
b_Idx = Any[27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86]
@variable(m, b[b_Idx],  Bin)
# settcategory(b[35], :Bin)
# settcategory(b[38], :Bin)
# settcategory(b[44], :Bin)
# settcategory(b[71], :Bin)
# settcategory(b[78], :Bin)
# settcategory(b[75], :Bin)
# settcategory(b[66], :Bin)
# settcategory(b[85], :Bin)
# settcategory(b[80], :Bin)
# settcategory(b[82], :Bin)
# settcategory(b[70], :Bin)
# settcategory(b[42], :Bin)
# settcategory(b[49], :Bin)
# settcategory(b[45], :Bin)
# settcategory(b[81], :Bin)
# settcategory(b[41], :Bin)
# settcategory(b[48], :Bin)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
# settcategory(b[64], :Bin)
# settcategory(b[54], :Bin)
# settcategory(b[28], :Bin)
# settcategory(b[36], :Bin)
set_lower_bound(x[4], 0.0)
# settcategory(b[77], :Bin)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
# settcategory(b[84], :Bin)
# settcategory(b[46], :Bin)
# settcategory(b[53], :Bin)
# settcategory(b[33], :Bin)
# settcategory(b[56], :Bin)
set_lower_bound(x[11], 0.0)
# settcategory(b[30], :Bin)
# settcategory(b[79], :Bin)
# settcategory(b[29], :Bin)
# settcategory(b[40], :Bin)
set_lower_bound(x[5], 0.0)
# settcategory(b[61], :Bin)
# settcategory(b[58], :Bin)
# settcategory(b[74], :Bin)
# settcategory(b[32], :Bin)
# settcategory(b[34], :Bin)
# settcategory(b[57], :Bin)
# settcategory(b[72], :Bin)
# settcategory(b[86], :Bin)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
# settcategory(b[60], :Bin)
set_lower_bound(x[10], 0.0)
# settcategory(b[51], :Bin)
# settcategory(b[69], :Bin)
# settcategory(b[68], :Bin)
set_lower_bound(x[26], 0.0)
# settcategory(b[43], :Bin)
# settcategory(b[47], :Bin)
set_lower_bound(x[12], 0.0)
# settcategory(b[65], :Bin)
# settcategory(b[83], :Bin)
# settcategory(b[59], :Bin)
# settcategory(b[39], :Bin)
# settcategory(b[76], :Bin)
# settcategory(b[67], :Bin)
# settcategory(b[37], :Bin)
# settcategory(b[50], :Bin)
# settcategory(b[27], :Bin)
set_lower_bound(x[6], 0.0)
# settcategory(b[31], :Bin)
# settcategory(b[62], :Bin)
# settcategory(b[52], :Bin)
# settcategory(b[55], :Bin)
# settcategory(b[63], :Bin)
# settcategory(b[73], :Bin)
set_upper_bound(x[1], 29.0)
set_upper_bound(x[2], 29.0)
set_upper_bound(x[3], 29.0)
set_upper_bound(x[4], 29.0)
set_upper_bound(x[5], 29.0)
set_upper_bound(x[6], 29.0)
set_upper_bound(x[7], 29.0)
set_upper_bound(x[8], 29.0)
set_upper_bound(x[9], 29.0)
set_upper_bound(x[10], 29.0)
set_upper_bound(x[11], 29.0)
set_upper_bound(x[12], 29.0)
set_lower_bound(x[13], 1.0)
set_upper_bound(x[13], 40.0)
set_lower_bound(x[14], 1.0)
set_upper_bound(x[14], 50.0)
set_lower_bound(x[15], 1.0)
set_upper_bound(x[15], 60.0)
set_lower_bound(x[16], 1.0)
set_upper_bound(x[16], 35.0)
set_lower_bound(x[17], 1.0)
set_upper_bound(x[17], 75.0)
set_lower_bound(x[18], 1.0)
set_upper_bound(x[18], 20.0)
set_lower_bound(x[19], 1.0)
set_upper_bound(x[19], 40.0)
set_lower_bound(x[20], 1.0)
set_upper_bound(x[20], 50.0)
set_lower_bound(x[21], 1.0)
set_upper_bound(x[21], 60.0)
set_lower_bound(x[22], 1.0)
set_upper_bound(x[22], 35.0)
set_lower_bound(x[23], 1.0)
set_upper_bound(x[23], 75.0)
set_lower_bound(x[24], 1.0)
set_upper_bound(x[24], 20.0)
set_upper_bound(x[25], 30.0)
set_upper_bound(x[26], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, -2*x[25]-2*x[26]+objvar == 0.0)
@constraint(m, e2, -x[1]-x[13]+x[25] >= 0.0)
@constraint(m, e3, -x[2]-x[14]+x[25] >= 0.0)
@constraint(m, e4, -x[3]-x[15]+x[25] >= 0.0)
@constraint(m, e5, -x[4]-x[16]+x[25] >= 0.0)
@constraint(m, e6, -x[5]-x[17]+x[25] >= 0.0)
@constraint(m, e7, -x[6]-x[18]+x[25] >= 0.0)
@constraint(m, e8, -x[7]-x[19]+x[26] >= 0.0)
@constraint(m, e9, -x[8]-x[20]+x[26] >= 0.0)
@constraint(m, e10, -x[9]-x[21]+x[26] >= 0.0)
@constraint(m, e11, -x[10]-x[22]+x[26] >= 0.0)
@constraint(m, e12, -x[11]-x[23]+x[26] >= 0.0)
@constraint(m, e13, -x[12]-x[24]+x[26] >= 0.0)
@NLconstraint(m, e14, 40/x[19]-x[13] <= 0.0)
@NLconstraint(m, e15, 50/x[20]-x[14] <= 0.0)
@NLconstraint(m, e16, 60/x[21]-x[15] <= 0.0)
@NLconstraint(m, e17, 35/x[22]-x[16] <= 0.0)
@NLconstraint(m, e18, 75/x[23]-x[17] <= 0.0)
@NLconstraint(m, e19, 20/x[24]-x[18] <= 0.0)
@constraint(m, e20, x[1]-x[2]+x[13]+69*b[27] <= 69.0)
@constraint(m, e21, x[1]-x[3]+x[13]+69*b[28] <= 69.0)
@constraint(m, e22, x[1]-x[4]+x[13]+69*b[29] <= 69.0)
@constraint(m, e23, x[1]-x[5]+x[13]+69*b[30] <= 69.0)
@constraint(m, e24, x[1]-x[6]+x[13]+69*b[31] <= 69.0)
@constraint(m, e25, x[2]-x[3]+x[14]+79*b[32] <= 79.0)
@constraint(m, e26, x[2]-x[4]+x[14]+79*b[33] <= 79.0)
@constraint(m, e27, x[2]-x[5]+x[14]+79*b[34] <= 79.0)
@constraint(m, e28, x[2]-x[6]+x[14]+79*b[35] <= 79.0)
@constraint(m, e29, x[3]-x[4]+x[15]+89*b[36] <= 89.0)
@constraint(m, e30, x[3]-x[5]+x[15]+89*b[37] <= 89.0)
@constraint(m, e31, x[3]-x[6]+x[15]+89*b[38] <= 89.0)
@constraint(m, e32, x[4]-x[5]+x[16]+64*b[39] <= 64.0)
@constraint(m, e33, x[4]-x[6]+x[16]+64*b[40] <= 64.0)
@constraint(m, e34, x[5]-x[6]+x[17]+104*b[41] <= 104.0)
@constraint(m, e35, -x[1]+x[2]+x[14]+79*b[42] <= 79.0)
@constraint(m, e36, -x[1]+x[3]+x[15]+89*b[43] <= 89.0)
@constraint(m, e37, -x[1]+x[4]+x[16]+64*b[44] <= 64.0)
@constraint(m, e38, -x[1]+x[5]+x[17]+104*b[45] <= 104.0)
@constraint(m, e39, -x[1]+x[6]+x[18]+49*b[46] <= 49.0)
@constraint(m, e40, -x[2]+x[3]+x[15]+89*b[47] <= 89.0)
@constraint(m, e41, -x[2]+x[4]+x[16]+64*b[48] <= 64.0)
@constraint(m, e42, -x[2]+x[5]+x[17]+104*b[49] <= 104.0)
@constraint(m, e43, -x[2]+x[6]+x[18]+49*b[50] <= 49.0)
@constraint(m, e44, -x[3]+x[4]+x[16]+64*b[51] <= 64.0)
@constraint(m, e45, -x[3]+x[5]+x[17]+104*b[52] <= 104.0)
@constraint(m, e46, -x[3]+x[6]+x[18]+49*b[53] <= 49.0)
@constraint(m, e47, -x[4]+x[5]+x[17]+104*b[54] <= 104.0)
@constraint(m, e48, -x[4]+x[6]+x[18]+49*b[55] <= 49.0)
@constraint(m, e49, -x[5]+x[6]+x[18]+49*b[56] <= 49.0)
@constraint(m, e50, x[7]-x[8]+x[19]+69*b[57] <= 69.0)
@constraint(m, e51, x[7]-x[9]+x[19]+69*b[58] <= 69.0)
@constraint(m, e52, x[7]-x[10]+x[19]+69*b[59] <= 69.0)
@constraint(m, e53, x[7]-x[11]+x[19]+69*b[60] <= 69.0)
@constraint(m, e54, x[7]-x[12]+x[19]+69*b[61] <= 69.0)
@constraint(m, e55, x[8]-x[9]+x[20]+79*b[62] <= 79.0)
@constraint(m, e56, x[8]-x[10]+x[20]+79*b[63] <= 79.0)
@constraint(m, e57, x[8]-x[11]+x[20]+79*b[64] <= 79.0)
@constraint(m, e58, x[8]-x[12]+x[20]+79*b[65] <= 79.0)
@constraint(m, e59, x[9]-x[10]+x[21]+89*b[66] <= 89.0)
@constraint(m, e60, x[9]-x[11]+x[21]+89*b[67] <= 89.0)
@constraint(m, e61, x[9]-x[12]+x[21]+89*b[68] <= 89.0)
@constraint(m, e62, x[10]-x[11]+x[22]+64*b[69] <= 64.0)
@constraint(m, e63, x[10]-x[12]+x[22]+64*b[70] <= 64.0)
@constraint(m, e64, x[11]-x[12]+x[23]+104*b[71] <= 104.0)
@constraint(m, e65, -x[7]+x[8]+x[20]+79*b[72] <= 79.0)
@constraint(m, e66, -x[7]+x[9]+x[21]+89*b[73] <= 89.0)
@constraint(m, e67, -x[7]+x[10]+x[22]+64*b[74] <= 64.0)
@constraint(m, e68, -x[7]+x[11]+x[23]+104*b[75] <= 104.0)
@constraint(m, e69, -x[7]+x[12]+x[24]+49*b[76] <= 49.0)
@constraint(m, e70, -x[8]+x[9]+x[21]+89*b[77] <= 89.0)
@constraint(m, e71, -x[8]+x[10]+x[22]+64*b[78] <= 64.0)
@constraint(m, e72, -x[8]+x[11]+x[23]+104*b[79] <= 104.0)
@constraint(m, e73, -x[8]+x[12]+x[24]+49*b[80] <= 49.0)
@constraint(m, e74, -x[9]+x[10]+x[22]+64*b[81] <= 64.0)
@constraint(m, e75, -x[9]+x[11]+x[23]+104*b[82] <= 104.0)
@constraint(m, e76, -x[9]+x[12]+x[24]+49*b[83] <= 49.0)
@constraint(m, e77, -x[10]+x[11]+x[23]+104*b[84] <= 104.0)
@constraint(m, e78, -x[10]+x[12]+x[24]+49*b[85] <= 49.0)
@constraint(m, e79, -x[11]+x[12]+x[24]+49*b[86] <= 49.0)
@constraint(m, e80, b[27]+b[42]+b[57]+b[72] == 1.0)
@constraint(m, e81, b[28]+b[43]+b[58]+b[73] == 1.0)
@constraint(m, e82, b[29]+b[44]+b[59]+b[74] == 1.0)
@constraint(m, e83, b[30]+b[45]+b[60]+b[75] == 1.0)
@constraint(m, e84, b[31]+b[46]+b[61]+b[76] == 1.0)
@constraint(m, e85, b[32]+b[47]+b[62]+b[77] == 1.0)
@constraint(m, e86, b[33]+b[48]+b[63]+b[78] == 1.0)
@constraint(m, e87, b[34]+b[49]+b[64]+b[79] == 1.0)
@constraint(m, e88, b[35]+b[50]+b[65]+b[80] == 1.0)
@constraint(m, e89, b[36]+b[51]+b[66]+b[81] == 1.0)
@constraint(m, e90, b[37]+b[52]+b[67]+b[82] == 1.0)
@constraint(m, e91, b[38]+b[53]+b[68]+b[83] == 1.0)
@constraint(m, e92, b[39]+b[54]+b[69]+b[84] == 1.0)
@constraint(m, e93, b[40]+b[55]+b[70]+b[85] == 1.0)
@constraint(m, e94, b[41]+b[56]+b[71]+b[86] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
