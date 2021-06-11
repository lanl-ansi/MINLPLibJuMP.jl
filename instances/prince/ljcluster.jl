using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0)
set_lower_bound(x[2], 1.0)
set_lower_bound(x[3], 1.0)
set_lower_bound(x[4], 1.0)
set_lower_bound(x[5], 1.0)
set_lower_bound(x[6], 1.0)
set_lower_bound(x[7], 1.0)
set_lower_bound(x[8], 1.0)
set_lower_bound(x[9], 1.0)
set_lower_bound(x[10], 1.0)
set_lower_bound(x[11], 1.0)
set_lower_bound(x[12], 1.0)
set_lower_bound(x[13], 1.0)
set_lower_bound(x[14], 1.0)
set_lower_bound(x[15], 1.0)
set_lower_bound(x[16], 1.0)
set_lower_bound(x[17], 1.0)
set_lower_bound(x[18], 1.0)
set_lower_bound(x[19], 1.0)
set_lower_bound(x[20], 1.0)
set_lower_bound(x[21], 0.8)
set_lower_bound(x[22], 0.8)
set_lower_bound(x[23], 0.8)
set_lower_bound(x[24], 0.8)
set_lower_bound(x[25], 0.8)
set_lower_bound(x[26], 0.8)
set_lower_bound(x[27], 0.8)
set_lower_bound(x[28], 0.8)
set_lower_bound(x[29], 0.8)
set_lower_bound(x[30], 0.8)
set_lower_bound(x[31], 0.8)
set_lower_bound(x[32], 0.8)
set_lower_bound(x[33], 0.8)
set_lower_bound(x[34], 0.8)
set_lower_bound(x[35], 0.8)
set_lower_bound(x[36], 0.8)
set_lower_bound(x[37], 0.8)
set_lower_bound(x[38], 0.8)
set_lower_bound(x[39], 0.8)
set_lower_bound(x[40], 0.8)
set_lower_bound(x[41], 0.8)
set_lower_bound(x[42], 0.8)
set_lower_bound(x[43], 0.8)
set_lower_bound(x[44], 0.8)
set_lower_bound(x[45], 0.8)
set_lower_bound(x[46], 0.8)
set_lower_bound(x[47], 0.8)
set_lower_bound(x[48], 0.8)
set_lower_bound(x[49], 0.8)
set_lower_bound(x[50], 0.8)
set_lower_bound(x[51], 0.8)
set_lower_bound(x[52], 0.8)
set_lower_bound(x[53], 0.8)
set_lower_bound(x[54], 0.8)
set_lower_bound(x[55], 0.8)
set_lower_bound(x[56], 0.8)
set_lower_bound(x[57], 0.8)
set_lower_bound(x[58], 0.8)
set_lower_bound(x[59], 0.8)
set_lower_bound(x[60], 0.8)
set_lower_bound(x[61], 0.8)
set_lower_bound(x[62], 0.8)
set_lower_bound(x[63], 0.8)
set_lower_bound(x[64], 0.8)
set_lower_bound(x[65], 0.8)


# ----- Constraints ----- #
@NLconstraint(m, e1, -sqrt( (x[3]-x[1])^2+ (x[4]-x[2])^2)+x[21] == 0.0)
@NLconstraint(m, e2, -sqrt( (x[5]-x[1])^2+ (x[6]-x[2])^2)+x[22] == 0.0)
@NLconstraint(m, e3, -sqrt( (x[5]-x[3])^2+ (x[6]-x[4])^2)+x[23] == 0.0)
@NLconstraint(m, e4, -sqrt( (x[7]-x[1])^2+ (x[8]-x[2])^2)+x[24] == 0.0)
@NLconstraint(m, e5, -sqrt( (x[7]-x[3])^2+ (x[8]-x[4])^2)+x[25] == 0.0)
@NLconstraint(m, e6, -sqrt( (x[7]-x[5])^2+ (x[8]-x[6])^2)+x[26] == 0.0)
@NLconstraint(m, e7, -sqrt( (x[9]-x[1])^2+ (x[10]-x[2])^2)+x[27] == 0.0)
@NLconstraint(m, e8, -sqrt( (x[9]-x[3])^2+ (x[10]-x[4])^2)+x[28] == 0.0)
@NLconstraint(m, e9, -sqrt( (x[9]-x[5])^2+ (x[10]-x[6])^2)+x[29] == 0.0)
@NLconstraint(m, e10, -sqrt( (x[9]-x[7])^2+ (x[10]-x[8])^2)+x[30] == 0.0)
@NLconstraint(m, e11, -sqrt( (x[11]-x[1])^2+ (x[12]-x[2])^2)+x[31] == 0.0)
@NLconstraint(m, e12, -sqrt( (x[11]-x[3])^2+ (x[12]-x[4])^2)+x[32] == 0.0)
@NLconstraint(m, e13, -sqrt( (x[11]-x[5])^2+ (x[12]-x[6])^2)+x[33] == 0.0)
@NLconstraint(m, e14, -sqrt( (x[11]-x[7])^2+ (x[12]-x[8])^2)+x[34] == 0.0)
@NLconstraint(m, e15, -sqrt( (x[11]-x[9])^2+ (x[12]-x[10])^2)+x[35] == 0.0)
@NLconstraint(m, e16, -sqrt( (x[13]-x[1])^2+ (x[14]-x[2])^2)+x[36] == 0.0)
@NLconstraint(m, e17, -sqrt( (x[13]-x[3])^2+ (x[14]-x[4])^2)+x[37] == 0.0)
@NLconstraint(m, e18, -sqrt( (x[13]-x[5])^2+ (x[14]-x[6])^2)+x[38] == 0.0)
@NLconstraint(m, e19, -sqrt( (x[13]-x[7])^2+ (x[14]-x[8])^2)+x[39] == 0.0)
@NLconstraint(m, e20, -sqrt( (x[13]-x[9])^2+ (x[14]-x[10])^2)+x[40] == 0.0)
@NLconstraint(m, e21, -sqrt( (x[13]-x[11])^2+ (x[14]-x[12])^2)+x[41] == 0.0)
@NLconstraint(m, e22, -sqrt( (x[15]-x[1])^2+ (x[16]-x[2])^2)+x[42] == 0.0)
@NLconstraint(m, e23, -sqrt( (x[15]-x[3])^2+ (x[16]-x[4])^2)+x[43] == 0.0)
@NLconstraint(m, e24, -sqrt( (x[15]-x[5])^2+ (x[16]-x[6])^2)+x[44] == 0.0)
@NLconstraint(m, e25, -sqrt( (x[15]-x[7])^2+ (x[16]-x[8])^2)+x[45] == 0.0)
@NLconstraint(m, e26, -sqrt( (x[15]-x[9])^2+ (x[16]-x[10])^2)+x[46] == 0.0)
@NLconstraint(m, e27, -sqrt( (x[15]-x[11])^2+ (x[16]-x[12])^2)+x[47] == 0.0)
@NLconstraint(m, e28, -sqrt( (x[15]-x[13])^2+ (x[16]-x[14])^2)+x[48] == 0.0)
@NLconstraint(m, e29, -sqrt( (x[17]-x[1])^2+ (x[18]-x[2])^2)+x[49] == 0.0)
@NLconstraint(m, e30, -sqrt( (x[17]-x[3])^2+ (x[18]-x[4])^2)+x[50] == 0.0)
@NLconstraint(m, e31, -sqrt( (x[17]-x[5])^2+ (x[18]-x[6])^2)+x[51] == 0.0)
@NLconstraint(m, e32, -sqrt( (x[17]-x[7])^2+ (x[18]-x[8])^2)+x[52] == 0.0)
@NLconstraint(m, e33, -sqrt( (x[17]-x[9])^2+ (x[18]-x[10])^2)+x[53] == 0.0)
@NLconstraint(m, e34, -sqrt( (x[17]-x[11])^2+ (x[18]-x[12])^2)+x[54] == 0.0)
@NLconstraint(m, e35, -sqrt( (x[17]-x[13])^2+ (x[18]-x[14])^2)+x[55] == 0.0)
@NLconstraint(m, e36, -sqrt( (x[17]-x[15])^2+ (x[18]-x[16])^2)+x[56] == 0.0)
@NLconstraint(m, e37, -sqrt( (x[19]-x[1])^2+ (x[20]-x[2])^2)+x[57] == 0.0)
@NLconstraint(m, e38, -sqrt( (x[19]-x[3])^2+ (x[20]-x[4])^2)+x[58] == 0.0)
@NLconstraint(m, e39, -sqrt( (x[19]-x[5])^2+ (x[20]-x[6])^2)+x[59] == 0.0)
@NLconstraint(m, e40, -sqrt( (x[19]-x[7])^2+ (x[20]-x[8])^2)+x[60] == 0.0)
@NLconstraint(m, e41, -sqrt( (x[19]-x[9])^2+ (x[20]-x[10])^2)+x[61] == 0.0)
@NLconstraint(m, e42, -sqrt( (x[19]-x[11])^2+ (x[20]-x[12])^2)+x[62] == 0.0)
@NLconstraint(m, e43, -sqrt( (x[19]-x[13])^2+ (x[20]-x[14])^2)+x[63] == 0.0)
@NLconstraint(m, e44, -sqrt( (x[19]-x[15])^2+ (x[20]-x[16])^2)+x[64] == 0.0)
@NLconstraint(m, e45, -sqrt( (x[19]-x[17])^2+ (x[20]-x[18])^2)+x[65] == 0.0)
@NLconstraint(m, e46, -(1/ (x[21])^12-2/ (x[21])^6+1/ (x[22])^12-2/ (x[22])^6+1/ (x[23])^12-2/ (x[23])^6+1/ (x[24])^12-2/ (x[24])^6+1/ (x[25])^12-2/ (x[25])^6+1/ (x[26])^12-2/ (x[26])^6+1/ (x[27])^12-2/ (x[27])^6+1/ (x[28])^12-2/ (x[28])^6+1/ (x[29])^12-2/ (x[29])^6+1/ (x[30])^12-2/ (x[30])^6+1/ (x[31])^12-2/ (x[31])^6+1/ (x[32])^12-2/ (x[32])^6+1/ (x[33])^12-2/ (x[33])^6+1/ (x[34])^12-2/ (x[34])^6+1/ (x[35])^12-2/ (x[35])^6+1/ (x[36])^12-2/ (x[36])^6+1/ (x[37])^12-2/ (x[37])^6+1/ (x[38])^12-2/ (x[38])^6+1/ (x[39])^12-2/ (x[39])^6+1/ (x[40])^12-2/ (x[40])^6+1/ (x[41])^12-2/ (x[41])^6+1/ (x[42])^12-2/ (x[42])^6+1/ (x[43])^12-2/ (x[43])^6+1/ (x[44])^12-2/ (x[44])^6+1/ (x[45])^12-2/ (x[45])^6+1/ (x[46])^12-2/ (x[46])^6+1/ (x[47])^12-2/ (x[47])^6+1/ (x[48])^12-2/ (x[48])^6+1/ (x[49])^12-2/ (x[49])^6+1/ (x[50])^12-2/ (x[50])^6+1/ (x[51])^12-2/ (x[51])^6+1/ (x[52])^12-2/ (x[52])^6+1/ (x[53])^12-2/ (x[53])^6+1/ (x[54])^12-2/ (x[54])^6+1/ (x[55])^12-2/ (x[55])^6+1/ (x[56])^12-2/ (x[56])^6+1/ (x[57])^12-2/ (x[57])^6+1/ (x[58])^12-2/ (x[58])^6+1/ (x[59])^12-2/ (x[59])^6+1/ (x[60])^12-2/ (x[60])^6+1/ (x[61])^12-2/ (x[61])^6+1/ (x[62])^12-2/ (x[62])^6+1/ (x[63])^12-2/ (x[63])^6+1/ (x[64])^12-2/ (x[64])^6+1/ (x[65])^12-2/ (x[65])^6)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
