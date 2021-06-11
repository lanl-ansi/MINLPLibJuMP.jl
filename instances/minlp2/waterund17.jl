using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[65], 0.0)
set_upper_bound(x[2], 100000.0)
set_upper_bound(x[3], 100000.0)
set_upper_bound(x[4], 100000.0)
set_upper_bound(x[5], 100000.0)
set_upper_bound(x[6], 100000.0)
set_upper_bound(x[7], 100000.0)
set_upper_bound(x[8], 100000.0)
set_upper_bound(x[9], 100000.0)
set_upper_bound(x[10], 100000.0)
set_upper_bound(x[11], 100000.0)
set_upper_bound(x[12], 100000.0)
set_upper_bound(x[13], 100000.0)
set_upper_bound(x[14], 100000.0)
set_upper_bound(x[15], 100000.0)
set_upper_bound(x[16], 100000.0)
set_upper_bound(x[17], 100000.0)
set_upper_bound(x[18], 100000.0)
set_upper_bound(x[19], 100000.0)
set_upper_bound(x[20], 100000.0)
set_upper_bound(x[21], 100000.0)
set_upper_bound(x[22], 100000.0)
set_upper_bound(x[23], 100000.0)
set_upper_bound(x[24], 100000.0)
set_upper_bound(x[25], 100000.0)
set_upper_bound(x[26], 100000.0)
set_upper_bound(x[27], 100000.0)
set_upper_bound(x[28], 100000.0)
set_upper_bound(x[29], 100000.0)
set_upper_bound(x[30], 100000.0)
set_upper_bound(x[31], 100000.0)
set_upper_bound(x[32], 100000.0)
set_upper_bound(x[33], 100000.0)
set_upper_bound(x[34], 100000.0)
set_upper_bound(x[35], 100000.0)
set_upper_bound(x[36], 100000.0)
set_upper_bound(x[37], 100000.0)
set_upper_bound(x[38], 100000.0)
set_upper_bound(x[39], 100000.0)
set_upper_bound(x[40], 100000.0)
set_upper_bound(x[41], 100000.0)
set_upper_bound(x[42], 100000.0)
set_upper_bound(x[43], 100000.0)
set_upper_bound(x[44], 100000.0)
set_upper_bound(x[45], 100000.0)
set_upper_bound(x[46], 100000.0)
set_upper_bound(x[47], 100000.0)
set_upper_bound(x[48], 100000.0)
set_upper_bound(x[49], 100000.0)
set_upper_bound(x[50], 100000.0)
set_upper_bound(x[51], 100000.0)
set_upper_bound(x[52], 100000.0)
set_upper_bound(x[53], 100000.0)
set_upper_bound(x[54], 100000.0)
set_upper_bound(x[55], 100000.0)
set_upper_bound(x[56], 100000.0)
set_upper_bound(x[57], 100000.0)
set_upper_bound(x[58], 100000.0)
set_upper_bound(x[59], 100000.0)
set_upper_bound(x[60], 100000.0)
set_upper_bound(x[61], 100000.0)
set_upper_bound(x[62], 100000.0)
set_upper_bound(x[63], 100000.0)
set_upper_bound(x[64], 100000.0)
set_upper_bound(x[65], 100000.0)
set_upper_bound(x[66], 100000.0)
set_upper_bound(x[67], 100000.0)
set_upper_bound(x[68], 100000.0)
set_upper_bound(x[69], 100000.0)
set_upper_bound(x[70], 100000.0)
set_upper_bound(x[71], 100000.0)
set_upper_bound(x[72], 100000.0)
set_upper_bound(x[73], 100000.0)
set_upper_bound(x[74], 100000.0)
set_upper_bound(x[75], 100000.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[2]-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16] == 0.0)
@constraint(m, e2, -x[2]-x[7]-x[12]+x[17]-x[27]-x[32]-x[37]-x[42]-x[47] == 0.0)
@constraint(m, e3, -x[3]-x[8]-x[13]+x[18]-x[28]-x[33]-x[38]-x[43]-x[48] == 0.0)
@constraint(m, e4, -x[4]-x[9]-x[14]+x[19]-x[29]-x[34]-x[39]-x[44]-x[49] == 0.0)
@constraint(m, e5, -x[5]-x[10]-x[15]+x[20]-x[30]-x[35]-x[40]-x[45]-x[50] == 0.0)
@constraint(m, e6, -x[6]-x[11]-x[16]-x[31]-x[36]-x[41]-x[46]-x[51] == -65.0)
@constraint(m, e7, x[17]-x[22]-x[27]-x[28]-x[29]-x[30]-x[31] == 0.0)
@constraint(m, e8, x[18]-x[23]-x[32]-x[33]-x[34]-x[35]-x[36] == 0.0)
@constraint(m, e9, x[19]-x[24]-x[37]-x[38]-x[39]-x[40]-x[41] == 0.0)
@constraint(m, e10, x[20]-x[25]-x[42]-x[43]-x[44]-x[45]-x[46] == 0.0)
@constraint(m, e11, -x[26]-x[47]-x[48]-x[49]-x[50]-x[51] == -75.0)
@NLconstraint(m, e12, x[17]*x[52]-(x[27]*x[64]+x[32]*x[67]+x[37]*x[70]+x[42]*x[73])-3*x[2]-2*x[12]-150*x[47] == 0.0)
@NLconstraint(m, e13, x[17]*x[53]-(x[27]*x[65]+x[32]*x[68]+x[37]*x[71]+x[42]*x[74])-2*x[7]-4*x[12]-800*x[47] == 0.0)
@NLconstraint(m, e14, x[17]*x[54]-(x[27]*x[66]+x[32]*x[69]+x[37]*x[72]+x[42]*x[75])-2*x[2]-2*x[7]-220*x[47] == 0.0)
@NLconstraint(m, e15, x[18]*x[55]-(x[28]*x[64]+x[33]*x[67]+x[38]*x[70]+x[43]*x[73])-3*x[3]-2*x[13]-150*x[48] == 0.0)
@NLconstraint(m, e16, x[18]*x[56]-(x[28]*x[65]+x[33]*x[68]+x[38]*x[71]+x[43]*x[74])-2*x[8]-4*x[13]-800*x[48] == 0.0)
@NLconstraint(m, e17, x[18]*x[57]-(x[28]*x[66]+x[33]*x[69]+x[38]*x[72]+x[43]*x[75])-2*x[3]-2*x[8]-220*x[48] == 0.0)
@NLconstraint(m, e18, x[19]*x[58]-(x[29]*x[64]+x[34]*x[67]+x[39]*x[70]+x[44]*x[73])-3*x[4]-2*x[14]-150*x[49] == 0.0)
@NLconstraint(m, e19, x[19]*x[59]-(x[29]*x[65]+x[34]*x[68]+x[39]*x[71]+x[44]*x[74])-2*x[9]-4*x[14]-800*x[49] == 0.0)
@NLconstraint(m, e20, x[19]*x[60]-(x[29]*x[66]+x[34]*x[69]+x[39]*x[72]+x[44]*x[75])-2*x[4]-2*x[9]-220*x[49] == 0.0)
@NLconstraint(m, e21, x[20]*x[61]-(x[30]*x[64]+x[35]*x[67]+x[40]*x[70]+x[45]*x[73])-3*x[5]-2*x[15]-150*x[50] == 0.0)
@NLconstraint(m, e22, x[20]*x[62]-(x[30]*x[65]+x[35]*x[68]+x[40]*x[71]+x[45]*x[74])-2*x[10]-4*x[15]-800*x[50] == 0.0)
@NLconstraint(m, e23, x[20]*x[63]-(x[30]*x[66]+x[35]*x[69]+x[40]*x[72]+x[45]*x[75])-2*x[5]-2*x[10]-220*x[50] == 0.0)
@NLconstraint(m, e24, -x[17]*(x[64]-x[52]) == -6120.0)
@NLconstraint(m, e25, -x[17]*(x[65]-x[53]) == -3096.0)
@NLconstraint(m, e26, -x[17]*(x[66]-x[54]) == -1800.0)
@NLconstraint(m, e27, -x[18]*(x[67]-x[55]) == -6400.0)
@NLconstraint(m, e28, -x[18]*(x[68]-x[56]) == -60800.0)
@NLconstraint(m, e29, -x[18]*(x[69]-x[57]) == -8640.0)
@NLconstraint(m, e30, -x[19]*(x[70]-x[58]) == -5600.0)
@NLconstraint(m, e31, -x[19]*(x[71]-x[59]) == -1400.0)
@NLconstraint(m, e32, -x[19]*(x[72]-x[60]) == -11200.0)
@NLconstraint(m, e33, -x[20]*(x[73]-x[61]) == -648.0)
@NLconstraint(m, e34, -x[20]*(x[74]-x[62]) == -408.0)
@NLconstraint(m, e35, -x[20]*(x[75]-x[63]) == -360.0)
@constraint(m, e36, x[52] <= 30.0)
@constraint(m, e37, x[53] <= 37.0)
@constraint(m, e38, x[54] <= 10.0)
@constraint(m, e39, x[55] <= 20.0)
@constraint(m, e40, x[56] <= 300.0)
@constraint(m, e41, x[57] <= 45.0)
@constraint(m, e42, x[58] <= 120.0)
@constraint(m, e43, x[59] <= 20.0)
@constraint(m, e44, x[60] <= 200.0)
@constraint(m, e45, x[61] <= 23.0)
@constraint(m, e46, x[62] <= 43.0)
@constraint(m, e47, x[63] <= 15.0)
@constraint(m, e48, x[64] <= 115.0)
@constraint(m, e49, x[65] <= 80.0)
@constraint(m, e50, x[66] <= 35.0)
@constraint(m, e51, x[67] <= 120.0)
@constraint(m, e52, x[68] <= 1250.0)
@constraint(m, e53, x[69] <= 180.0)
@constraint(m, e54, x[70] <= 220.0)
@constraint(m, e55, x[71] <= 45.0)
@constraint(m, e56, x[72] <= 400.0)
@constraint(m, e57, x[73] <= 50.0)
@constraint(m, e58, x[74] <= 60.0)
@constraint(m, e59, x[75] <= 30.0)
@NLconstraint(m, e60, -(x[31]*x[64]+x[36]*x[67]+x[41]*x[70]+x[46]*x[73])-3*x[6]-2*x[16]-150*x[51] >= -5850.0)
@NLconstraint(m, e61, -(x[31]*x[65]+x[36]*x[68]+x[41]*x[71]+x[46]*x[74])-2*x[11]-4*x[16]-800*x[51] >= -26000.0)
@NLconstraint(m, e62, -(x[31]*x[66]+x[36]*x[69]+x[41]*x[72]+x[46]*x[75])-2*x[6]-2*x[11]-220*x[51] >= -10400.0)
@constraint(m, e63, x[17] <= 72.0)
@constraint(m, e64, x[18] <= 64.0)
@constraint(m, e65, x[19] <= 56.0)
@constraint(m, e66, x[20] <= 24.0)
@constraint(m, e67, x[21] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
