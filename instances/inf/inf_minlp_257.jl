using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 96]
@variable(m, x[x_Idx])
b_Idx = Any[46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95]
@variable(m, b[b_Idx],  Bin)
# settcategory(b[71], :Bin)
set_lower_bound(x[16], 0.0)
# settcategory(b[78], :Bin)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
# settcategory(b[75], :Bin)
# settcategory(b[66], :Bin)
# settcategory(b[85], :Bin)
set_lower_bound(x[42], 0.0)
# settcategory(b[80], :Bin)
# settcategory(b[82], :Bin)
# settcategory(b[70], :Bin)
# settcategory(b[49], :Bin)
set_lower_bound(x[22], 0.0)
# settcategory(b[81], :Bin)
# settcategory(b[48], :Bin)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
# settcategory(b[64], :Bin)
# settcategory(b[54], :Bin)
set_lower_bound(x[43], 0.0)
# settcategory(b[90], :Bin)
set_lower_bound(x[36], 0.0)
# settcategory(b[87], :Bin)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
# settcategory(b[95], :Bin)
# settcategory(b[77], :Bin)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
# settcategory(b[84], :Bin)
set_lower_bound(x[30], 0.0)
# settcategory(b[46], :Bin)
# settcategory(b[53], :Bin)
# settcategory(b[56], :Bin)
set_lower_bound(x[11], 0.0)
# settcategory(b[79], :Bin)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
# settcategory(b[61], :Bin)
# settcategory(b[58], :Bin)
# settcategory(b[74], :Bin)
# settcategory(b[89], :Bin)
# settcategory(b[57], :Bin)
set_lower_bound(x[24], 0.0)
# settcategory(b[92], :Bin)
# settcategory(b[72], :Bin)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
# settcategory(b[86], :Bin)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
# settcategory(b[60], :Bin)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
# settcategory(b[51], :Bin)
# settcategory(b[69], :Bin)
# settcategory(b[68], :Bin)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
# settcategory(b[47], :Bin)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
# settcategory(b[65], :Bin)
set_lower_bound(x[44], 0.0)
# settcategory(b[83], :Bin)
# settcategory(b[59], :Bin)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
# settcategory(b[76], :Bin)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
# settcategory(b[67], :Bin)
# settcategory(b[88], :Bin)
# settcategory(b[50], :Bin)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
# settcategory(b[93], :Bin)
set_lower_bound(x[23], 0.0)
# settcategory(b[94], :Bin)
set_lower_bound(x[34], 0.0)
# settcategory(b[62], :Bin)
# settcategory(b[91], :Bin)
set_lower_bound(x[19], 0.0)
# settcategory(b[52], :Bin)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
# settcategory(b[55], :Bin)
set_lower_bound(x[15], 0.0)
# settcategory(b[63], :Bin)
# settcategory(b[73], :Bin)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-0.5*x[11] >= 0.0)
@constraint(m, e2, x[2]-0.5*x[12] >= 0.0)
@constraint(m, e3, x[3]-0.5*x[13] >= 0.0)
@constraint(m, e4, x[4]-0.5*x[14] >= 0.0)
@constraint(m, e5, x[5]-0.5*x[15] >= 0.0)
@constraint(m, e6, x[1]+0.5*x[11] <= 11.0)
@constraint(m, e7, x[2]+0.5*x[12] <= 11.0)
@constraint(m, e8, x[3]+0.5*x[13] <= 11.0)
@constraint(m, e9, x[4]+0.5*x[14] <= 11.0)
@constraint(m, e10, x[5]+0.5*x[15] <= 11.0)
@constraint(m, e11, x[6]-0.5*x[16] >= 0.0)
@constraint(m, e12, x[7]-0.5*x[17] >= 0.0)
@constraint(m, e13, x[8]-0.5*x[18] >= 0.0)
@constraint(m, e14, x[9]-0.5*x[19] >= 0.0)
@constraint(m, e15, x[10]-0.5*x[20] >= 0.0)
@constraint(m, e16, x[6]+0.5*x[16] <= 12.0)
@constraint(m, e17, x[7]+0.5*x[17] <= 12.0)
@constraint(m, e18, x[8]+0.5*x[18] <= 12.0)
@constraint(m, e19, x[9]+0.5*x[19] <= 12.0)
@constraint(m, e20, x[10]+0.5*x[20] <= 12.0)
@NLconstraint(m, e21, x[11]*x[16] >= 28.0)
@NLconstraint(m, e22, x[12]*x[17] >= 36.0)
@NLconstraint(m, e23, x[13]*x[18] >= 10.0)
@NLconstraint(m, e24, x[14]*x[19] >= 40.0)
@NLconstraint(m, e25, x[15]*x[20] >= 18.0)
@constraint(m, e26, -x[16]+12*b[46]+12*b[71] >= 0.0)
@constraint(m, e27, x[6]-x[7]-0.5*x[16]-0.5*x[17]+12*b[47]+12*b[72] >= 0.0)
@constraint(m, e28, x[6]-x[8]-0.5*x[16]-0.5*x[18]+12*b[48]+12*b[73] >= 0.0)
@constraint(m, e29, x[6]-x[9]-0.5*x[16]-0.5*x[19]+12*b[49]+12*b[74] >= 0.0)
@constraint(m, e30, x[6]-x[10]-0.5*x[16]-0.5*x[20]+12*b[50]+12*b[75] >= 0.0)
@constraint(m, e31, -x[6]+x[7]-0.5*x[16]-0.5*x[17]+12*b[51]+12*b[76] >= 0.0)
@constraint(m, e32, -x[17]+12*b[52]+12*b[77] >= 0.0)
@constraint(m, e33, x[7]-x[8]-0.5*x[17]-0.5*x[18]+12*b[53]+12*b[78] >= 0.0)
@constraint(m, e34, x[7]-x[9]-0.5*x[17]-0.5*x[19]+12*b[54]+12*b[79] >= 0.0)
@constraint(m, e35, x[7]-x[10]-0.5*x[17]-0.5*x[20]+12*b[55]+12*b[80] >= 0.0)
@constraint(m, e36, -x[6]+x[8]-0.5*x[16]-0.5*x[18]+12*b[56]+12*b[81] >= 0.0)
@constraint(m, e37, -x[7]+x[8]-0.5*x[17]-0.5*x[18]+12*b[57]+12*b[82] >= 0.0)
@constraint(m, e38, -x[18]+12*b[58]+12*b[83] >= 0.0)
@constraint(m, e39, x[8]-x[9]-0.5*x[18]-0.5*x[19]+12*b[59]+12*b[84] >= 0.0)
@constraint(m, e40, x[8]-x[10]-0.5*x[18]-0.5*x[20]+12*b[60]+12*b[85] >= 0.0)
@constraint(m, e41, -x[6]+x[9]-0.5*x[16]-0.5*x[19]+12*b[61]+12*b[86] >= 0.0)
@constraint(m, e42, -x[7]+x[9]-0.5*x[17]-0.5*x[19]+12*b[62]+12*b[87] >= 0.0)
@constraint(m, e43, -x[8]+x[9]-0.5*x[18]-0.5*x[19]+12*b[63]+12*b[88] >= 0.0)
@constraint(m, e44, -x[19]+12*b[64]+12*b[89] >= 0.0)
@constraint(m, e45, x[9]-x[10]-0.5*x[19]-0.5*x[20]+12*b[65]+12*b[90] >= 0.0)
@constraint(m, e46, -x[6]+x[10]-0.5*x[16]-0.5*x[20]+12*b[66]+12*b[91] >= 0.0)
@constraint(m, e47, -x[7]+x[10]-0.5*x[17]-0.5*x[20]+12*b[67]+12*b[92] >= 0.0)
@constraint(m, e48, -x[8]+x[10]-0.5*x[18]-0.5*x[20]+12*b[68]+12*b[93] >= 0.0)
@constraint(m, e49, -x[9]+x[10]-0.5*x[19]-0.5*x[20]+12*b[69]+12*b[94] >= 0.0)
@constraint(m, e50, -x[20]+12*b[70]+12*b[95] >= 0.0)
@constraint(m, e51, x[16]-12*b[46]+12*b[71] <= 12.0)
@constraint(m, e52, x[6]-x[7]+0.5*x[16]+0.5*x[17]-12*b[47]+12*b[72] <= 12.0)
@constraint(m, e53, x[6]-x[8]+0.5*x[16]+0.5*x[18]-12*b[48]+12*b[73] <= 12.0)
@constraint(m, e54, x[6]-x[9]+0.5*x[16]+0.5*x[19]-12*b[49]+12*b[74] <= 12.0)
@constraint(m, e55, x[6]-x[10]+0.5*x[16]+0.5*x[20]-12*b[50]+12*b[75] <= 12.0)
@constraint(m, e56, -x[6]+x[7]+0.5*x[16]+0.5*x[17]-12*b[51]+12*b[76] <= 12.0)
@constraint(m, e57, x[17]-12*b[52]+12*b[77] <= 12.0)
@constraint(m, e58, x[7]-x[8]+0.5*x[17]+0.5*x[18]-12*b[53]+12*b[78] <= 12.0)
@constraint(m, e59, x[7]-x[9]+0.5*x[17]+0.5*x[19]-12*b[54]+12*b[79] <= 12.0)
@constraint(m, e60, x[7]-x[10]+0.5*x[17]+0.5*x[20]-12*b[55]+12*b[80] <= 12.0)
@constraint(m, e61, -x[6]+x[8]+0.5*x[16]+0.5*x[18]-12*b[56]+12*b[81] <= 12.0)
@constraint(m, e62, -x[7]+x[8]+0.5*x[17]+0.5*x[18]-12*b[57]+12*b[82] <= 12.0)
@constraint(m, e63, x[18]-12*b[58]+12*b[83] <= 12.0)
@constraint(m, e64, x[8]-x[9]+0.5*x[18]+0.5*x[19]-12*b[59]+12*b[84] <= 12.0)
@constraint(m, e65, x[8]-x[10]+0.5*x[18]+0.5*x[20]-12*b[60]+12*b[85] <= 12.0)
@constraint(m, e66, -x[6]+x[9]+0.5*x[16]+0.5*x[19]-12*b[61]+12*b[86] <= 12.0)
@constraint(m, e67, -x[7]+x[9]+0.5*x[17]+0.5*x[19]-12*b[62]+12*b[87] <= 12.0)
@constraint(m, e68, -x[8]+x[9]+0.5*x[18]+0.5*x[19]-12*b[63]+12*b[88] <= 12.0)
@constraint(m, e69, x[19]-12*b[64]+12*b[89] <= 12.0)
@constraint(m, e70, x[9]-x[10]+0.5*x[19]+0.5*x[20]-12*b[65]+12*b[90] <= 12.0)
@constraint(m, e71, -x[6]+x[10]+0.5*x[16]+0.5*x[20]-12*b[66]+12*b[91] <= 12.0)
@constraint(m, e72, -x[7]+x[10]+0.5*x[17]+0.5*x[20]-12*b[67]+12*b[92] <= 12.0)
@constraint(m, e73, -x[8]+x[10]+0.5*x[18]+0.5*x[20]-12*b[68]+12*b[93] <= 12.0)
@constraint(m, e74, -x[9]+x[10]+0.5*x[19]+0.5*x[20]-12*b[69]+12*b[94] <= 12.0)
@constraint(m, e75, x[20]-12*b[70]+12*b[95] <= 12.0)
@constraint(m, e76, x[11]+11*b[46]-11*b[71] <= 11.0)
@constraint(m, e77, x[1]-x[2]+0.5*x[11]+0.5*x[12]+11*b[47]-11*b[72] <= 11.0)
@constraint(m, e78, x[1]-x[3]+0.5*x[11]+0.5*x[13]+11*b[48]-11*b[73] <= 11.0)
@constraint(m, e79, x[1]-x[4]+0.5*x[11]+0.5*x[14]+11*b[49]-11*b[74] <= 11.0)
@constraint(m, e80, x[1]-x[5]+0.5*x[11]+0.5*x[15]+11*b[50]-11*b[75] <= 11.0)
@constraint(m, e81, -x[1]+x[2]+0.5*x[11]+0.5*x[12]+11*b[51]-11*b[76] <= 11.0)
@constraint(m, e82, x[12]+11*b[52]-11*b[77] <= 11.0)
@constraint(m, e83, x[2]-x[3]+0.5*x[12]+0.5*x[13]+11*b[53]-11*b[78] <= 11.0)
@constraint(m, e84, x[2]-x[4]+0.5*x[12]+0.5*x[14]+11*b[54]-11*b[79] <= 11.0)
@constraint(m, e85, x[2]-x[5]+0.5*x[12]+0.5*x[15]+11*b[55]-11*b[80] <= 11.0)
@constraint(m, e86, -x[1]+x[3]+0.5*x[11]+0.5*x[13]+11*b[56]-11*b[81] <= 11.0)
@constraint(m, e87, -x[2]+x[3]+0.5*x[12]+0.5*x[13]+11*b[57]-11*b[82] <= 11.0)
@constraint(m, e88, x[13]+11*b[58]-11*b[83] <= 11.0)
@constraint(m, e89, x[3]-x[4]+0.5*x[13]+0.5*x[14]+11*b[59]-11*b[84] <= 11.0)
@constraint(m, e90, x[3]-x[5]+0.5*x[13]+0.5*x[15]+11*b[60]-11*b[85] <= 11.0)
@constraint(m, e91, -x[1]+x[4]+0.5*x[11]+0.5*x[14]+11*b[61]-11*b[86] <= 11.0)
@constraint(m, e92, -x[2]+x[4]+0.5*x[12]+0.5*x[14]+11*b[62]-11*b[87] <= 11.0)
@constraint(m, e93, -x[3]+x[4]+0.5*x[13]+0.5*x[14]+11*b[63]-11*b[88] <= 11.0)
@constraint(m, e94, x[14]+11*b[64]-11*b[89] <= 11.0)
@constraint(m, e95, x[4]-x[5]+0.5*x[14]+0.5*x[15]+11*b[65]-11*b[90] <= 11.0)
@constraint(m, e96, -x[1]+x[5]+0.5*x[11]+0.5*x[15]+11*b[66]-11*b[91] <= 11.0)
@constraint(m, e97, -x[2]+x[5]+0.5*x[12]+0.5*x[15]+11*b[67]-11*b[92] <= 11.0)
@constraint(m, e98, -x[3]+x[5]+0.5*x[13]+0.5*x[15]+11*b[68]-11*b[93] <= 11.0)
@constraint(m, e99, -x[4]+x[5]+0.5*x[14]+0.5*x[15]+11*b[69]-11*b[94] <= 11.0)
@constraint(m, e100, x[15]+11*b[70]-11*b[95] <= 11.0)
@constraint(m, e101, -x[11]-11*b[46]-11*b[71] >= -22.0)
@constraint(m, e102, x[1]-x[2]-0.5*x[11]-0.5*x[12]-11*b[47]-11*b[72] >= -22.0)
@constraint(m, e103, x[1]-x[3]-0.5*x[11]-0.5*x[13]-11*b[48]-11*b[73] >= -22.0)
@constraint(m, e104, x[1]-x[4]-0.5*x[11]-0.5*x[14]-11*b[49]-11*b[74] >= -22.0)
@constraint(m, e105, x[1]-x[5]-0.5*x[11]-0.5*x[15]-11*b[50]-11*b[75] >= -22.0)
@constraint(m, e106, -x[1]+x[2]-0.5*x[11]-0.5*x[12]-11*b[51]-11*b[76] >= -22.0)
@constraint(m, e107, -x[12]-11*b[52]-11*b[77] >= -22.0)
@constraint(m, e108, x[2]-x[3]-0.5*x[12]-0.5*x[13]-11*b[53]-11*b[78] >= -22.0)
@constraint(m, e109, x[2]-x[4]-0.5*x[12]-0.5*x[14]-11*b[54]-11*b[79] >= -22.0)
@constraint(m, e110, x[2]-x[5]-0.5*x[12]-0.5*x[15]-11*b[55]-11*b[80] >= -22.0)
@constraint(m, e111, -x[1]+x[3]-0.5*x[11]-0.5*x[13]-11*b[56]-11*b[81] >= -22.0)
@constraint(m, e112, -x[2]+x[3]-0.5*x[12]-0.5*x[13]-11*b[57]-11*b[82] >= -22.0)
@constraint(m, e113, -x[13]-11*b[58]-11*b[83] >= -22.0)
@constraint(m, e114, x[3]-x[4]-0.5*x[13]-0.5*x[14]-11*b[59]-11*b[84] >= -22.0)
@constraint(m, e115, x[3]-x[5]-0.5*x[13]-0.5*x[15]-11*b[60]-11*b[85] >= -22.0)
@constraint(m, e116, -x[1]+x[4]-0.5*x[11]-0.5*x[14]-11*b[61]-11*b[86] >= -22.0)
@constraint(m, e117, -x[2]+x[4]-0.5*x[12]-0.5*x[14]-11*b[62]-11*b[87] >= -22.0)
@constraint(m, e118, -x[3]+x[4]-0.5*x[13]-0.5*x[14]-11*b[63]-11*b[88] >= -22.0)
@constraint(m, e119, -x[14]-11*b[64]-11*b[89] >= -22.0)
@constraint(m, e120, x[4]-x[5]-0.5*x[14]-0.5*x[15]-11*b[65]-11*b[90] >= -22.0)
@constraint(m, e121, -x[1]+x[5]-0.5*x[11]-0.5*x[15]-11*b[66]-11*b[91] >= -22.0)
@constraint(m, e122, -x[2]+x[5]-0.5*x[12]-0.5*x[15]-11*b[67]-11*b[92] >= -22.0)
@constraint(m, e123, -x[3]+x[5]-0.5*x[13]-0.5*x[15]-11*b[68]-11*b[93] >= -22.0)
@constraint(m, e124, -x[4]+x[5]-0.5*x[14]-0.5*x[15]-11*b[69]-11*b[94] >= -22.0)
@constraint(m, e125, -x[15]-11*b[70]-11*b[95] >= -22.0)
@constraint(m, e126, x[11] >= 2.0)
@constraint(m, e127, x[12] >= 2.0)
@constraint(m, e128, x[13] >= 2.0)
@constraint(m, e129, x[14] >= 2.0)
@constraint(m, e130, x[15] >= 2.0)
@constraint(m, e131, x[11] <= 9.0)
@constraint(m, e132, x[12] <= 9.0)
@constraint(m, e133, x[13] <= 9.0)
@constraint(m, e134, x[14] <= 9.0)
@constraint(m, e135, x[15] <= 9.0)
@constraint(m, e136, x[16] >= 2.0)
@constraint(m, e137, x[17] >= 2.0)
@constraint(m, e138, x[18] >= 2.0)
@constraint(m, e139, x[19] >= 2.0)
@constraint(m, e140, x[20] >= 2.0)
@constraint(m, e141, x[16] <= 9.0)
@constraint(m, e142, x[17] <= 9.0)
@constraint(m, e143, x[18] <= 9.0)
@constraint(m, e144, x[19] <= 9.0)
@constraint(m, e145, x[20] <= 9.0)
@constraint(m, e146, x[21] == 0.0)
@NLconstraint(m, e147, -sqrt( (x[1]-x[2])^2+ (x[6]-x[7])^2)+x[22] == 0.0)
@NLconstraint(m, e148, -sqrt( (x[1]-x[3])^2+ (x[6]-x[8])^2)+x[23] == 0.0)
@NLconstraint(m, e149, -sqrt( (x[1]-x[4])^2+ (x[6]-x[9])^2)+x[24] == 0.0)
@NLconstraint(m, e150, -sqrt( (x[1]-x[5])^2+ (x[6]-x[10])^2)+x[25] == 0.0)
@NLconstraint(m, e151, -sqrt( (x[2]-x[1])^2+ (x[7]-x[6])^2)+x[26] == 0.0)
@constraint(m, e152, x[27] == 0.0)
@NLconstraint(m, e153, -sqrt( (x[2]-x[3])^2+ (x[7]-x[8])^2)+x[28] == 0.0)
@NLconstraint(m, e154, -sqrt( (x[2]-x[4])^2+ (x[7]-x[9])^2)+x[29] == 0.0)
@NLconstraint(m, e155, -sqrt( (x[2]-x[5])^2+ (x[7]-x[10])^2)+x[30] == 0.0)
@NLconstraint(m, e156, -sqrt( (x[3]-x[1])^2+ (x[8]-x[6])^2)+x[31] == 0.0)
@NLconstraint(m, e157, -sqrt( (x[3]-x[2])^2+ (x[8]-x[7])^2)+x[32] == 0.0)
@constraint(m, e158, x[33] == 0.0)
@NLconstraint(m, e159, -sqrt( (x[3]-x[4])^2+ (x[8]-x[9])^2)+x[34] == 0.0)
@NLconstraint(m, e160, -sqrt( (x[3]-x[5])^2+ (x[8]-x[10])^2)+x[35] == 0.0)
@NLconstraint(m, e161, -sqrt( (x[4]-x[1])^2+ (x[9]-x[6])^2)+x[36] == 0.0)
@NLconstraint(m, e162, -sqrt( (x[4]-x[2])^2+ (x[9]-x[7])^2)+x[37] == 0.0)
@NLconstraint(m, e163, -sqrt( (x[4]-x[3])^2+ (x[9]-x[8])^2)+x[38] == 0.0)
@constraint(m, e164, x[39] == 0.0)
@NLconstraint(m, e165, -sqrt( (x[4]-x[5])^2+ (x[9]-x[10])^2)+x[40] == 0.0)
@NLconstraint(m, e166, -sqrt( (x[5]-x[1])^2+ (x[10]-x[6])^2)+x[41] == 0.0)
@NLconstraint(m, e167, -sqrt( (x[5]-x[2])^2+ (x[10]-x[7])^2)+x[42] == 0.0)
@NLconstraint(m, e168, -sqrt( (x[5]-x[3])^2+ (x[10]-x[8])^2)+x[43] == 0.0)
@NLconstraint(m, e169, -sqrt( (x[5]-x[4])^2+ (x[10]-x[9])^2)+x[44] == 0.0)
@constraint(m, e170, x[45] == 0.0)
@constraint(m, e171, -100*x[23]-50*x[24]-10*x[28]-50*x[29]-40*x[34]-100*x[35]-70*x[40]+x[96] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[96])

m = m 		 # model get returned when including this script. 
