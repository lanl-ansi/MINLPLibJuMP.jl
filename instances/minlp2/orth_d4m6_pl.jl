using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(objvar, 0.0)
set_upper_bound(objvar, 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_lower_bound(x[28], -1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_lower_bound(x[30], -1.0)
set_upper_bound(x[30], 1.0)
set_lower_bound(x[31], -1.0)
set_upper_bound(x[31], 1.0)
set_lower_bound(x[32], -1.0)
set_upper_bound(x[32], 1.0)
set_lower_bound(x[33], -1.0)
set_upper_bound(x[33], 1.0)
set_lower_bound(x[34], -1.0)
set_upper_bound(x[34], 1.0)
set_lower_bound(x[35], -1.0)
set_upper_bound(x[35], 1.0)
set_lower_bound(x[36], -1.0)
set_upper_bound(x[36], 1.0)
set_lower_bound(x[37], -1.0)
set_upper_bound(x[37], 1.0)
set_lower_bound(x[38], -1.0)
set_upper_bound(x[38], 1.0)
set_lower_bound(x[39], -1.0)
set_upper_bound(x[39], 1.0)
set_lower_bound(x[40], -1.0)
set_upper_bound(x[40], 1.0)
set_lower_bound(x[41], -1.0)
set_upper_bound(x[41], 1.0)
set_lower_bound(x[42], -1.0)
set_upper_bound(x[42], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -x[2]*x[3]*x[4]+x[5] == 0.0)
@NLconstraint(m, e2, -x[2]*x[3]*x[6]+x[7] == 0.0)
@NLconstraint(m, e3, -x[2]*x[3]*x[8]+x[9] == 0.0)
@NLconstraint(m, e4, -x[2]*x[3]*x[10]+x[11] == 0.0)
@NLconstraint(m, e5, -x[2]*x[4]*x[6]+x[12] == 0.0)
@NLconstraint(m, e6, -x[2]*x[4]*x[8]+x[13] == 0.0)
@NLconstraint(m, e7, -x[2]*x[4]*x[10]+x[14] == 0.0)
@NLconstraint(m, e8, -x[2]*x[6]*x[8]+x[15] == 0.0)
@NLconstraint(m, e9, -x[2]*x[6]*x[10]+x[16] == 0.0)
@NLconstraint(m, e10, -x[2]*x[8]*x[10]+x[17] == 0.0)
@NLconstraint(m, e11, -x[3]*x[4]*x[6]+x[18] == 0.0)
@NLconstraint(m, e12, -x[3]*x[4]*x[8]+x[19] == 0.0)
@NLconstraint(m, e13, -x[3]*x[4]*x[10]+x[20] == 0.0)
@NLconstraint(m, e14, -x[3]*x[6]*x[8]+x[21] == 0.0)
@NLconstraint(m, e15, -x[3]*x[6]*x[10]+x[22] == 0.0)
@NLconstraint(m, e16, -x[3]*x[8]*x[10]+x[23] == 0.0)
@NLconstraint(m, e17, -x[4]*x[6]*x[8]+x[24] == 0.0)
@NLconstraint(m, e18, -x[4]*x[6]*x[10]+x[25] == 0.0)
@NLconstraint(m, e19, -x[4]*x[8]*x[10]+x[26] == 0.0)
@NLconstraint(m, e20, -x[6]*x[8]*x[10]+x[27] == 0.0)
@constraint(m, e21, x[2]+x[3]+x[4]+x[6]+x[8]+x[10] == 4.0)
@constraint(m, e22, x[28]-x[29] <= 0.0)
@constraint(m, e23, -x[29]+x[30] <= 0.0)
@constraint(m, e24, -x[29]+x[31] <= 0.0)
@constraint(m, e25, -x[29]+x[32] <= 0.0)
@constraint(m, e26, -x[29]+x[33] <= 0.0)
@constraint(m, e27, -x[29]+x[34] <= 0.0)
@constraint(m, e28, -x[29]+x[35] <= 0.0)
@constraint(m, e29, -x[29]+x[36] <= 0.0)
@constraint(m, e30, -x[29]+x[37] <= 0.0)
@constraint(m, e31, -x[29]+x[38] <= 0.0)
@constraint(m, e32, -x[29]+x[39] <= 0.0)
@constraint(m, e33, -x[29]+x[40] <= 0.0)
@constraint(m, e34, -x[29]+x[41] <= 0.0)
@constraint(m, e35, -x[29]+x[42] <= 0.0)
@NLconstraint(m, e36,  (x[28])^2*x[18]+ (x[30])^2*x[19]+ (x[31])^2*x[20]+ (x[32])^2*x[21]+ (x[33])^2*x[22]+ (x[34])^2*x[23]+ (x[35])^2*x[24]+ (x[36])^2*x[25]+ (x[37])^2*x[26]+ (x[38])^2*x[27] == 1.0)
@NLconstraint(m, e37,  (x[28])^2*x[12]+ (x[30])^2*x[13]+ (x[31])^2*x[14]+ (x[32])^2*x[15]+ (x[33])^2*x[16]+ (x[34])^2*x[17]+ (x[39])^2*x[24]+ (x[40])^2*x[25]+ (x[41])^2*x[26]+ (x[42])^2*x[27] == 1.0)
@NLconstraint(m, e38,  (x[28])^2*x[7]+ (x[30])^2*x[9]+ (x[31])^2*x[11]+ (x[35])^2*x[15]+ (x[36])^2*x[16]+ (x[37])^2*x[17]+ (x[39])^2*x[21]+ (x[40])^2*x[22]+ (x[41])^2*x[23]+ (x[29])^2*x[27] == 1.0)
@NLconstraint(m, e39,  (x[28])^2*x[5]+ (x[32])^2*x[9]+ (x[33])^2*x[11]+ (x[35])^2*x[13]+ (x[36])^2*x[14]+ (x[38])^2*x[17]+ (x[39])^2*x[19]+ (x[40])^2*x[20]+ (x[42])^2*x[23]+ (x[29])^2*x[26] == 1.0)
@NLconstraint(m, e40,  (x[30])^2*x[5]+ (x[32])^2*x[7]+ (x[34])^2*x[11]+ (x[35])^2*x[12]+ (x[37])^2*x[14]+ (x[38])^2*x[16]+ (x[39])^2*x[18]+ (x[41])^2*x[20]+ (x[42])^2*x[22]+ (x[29])^2*x[25] == 1.0)
@NLconstraint(m, e41,  (x[31])^2*x[5]+ (x[33])^2*x[7]+ (x[34])^2*x[9]+ (x[36])^2*x[12]+ (x[37])^2*x[13]+ (x[38])^2*x[15]+ (x[40])^2*x[18]+ (x[41])^2*x[19]+ (x[42])^2*x[21]+ (x[29])^2*x[24] == 1.0)
@NLconstraint(m, e42, x[28]*x[34]-x[30]*x[33]+x[31]*x[32] == 0.0)
@NLconstraint(m, e43, x[28]*x[37]-x[30]*x[36]+x[31]*x[35] == 0.0)
@NLconstraint(m, e44, x[28]*x[41]-x[30]*x[40]+x[31]*x[39] == 0.0)
@NLconstraint(m, e45, x[28]*x[38]-x[32]*x[36]+x[33]*x[35] == 0.0)
@NLconstraint(m, e46, x[28]*x[42]-x[32]*x[40]+x[33]*x[39] == 0.0)
@NLconstraint(m, e47, x[28]*x[29]-x[35]*x[40]+x[36]*x[39] == 0.0)
@NLconstraint(m, e48, x[30]*x[38]-x[32]*x[37]+x[34]*x[35] == 0.0)
@NLconstraint(m, e49, x[30]*x[42]-x[32]*x[41]+x[34]*x[39] == 0.0)
@NLconstraint(m, e50, x[29]*x[30]-x[35]*x[41]+x[37]*x[39] == 0.0)
@NLconstraint(m, e51, x[31]*x[38]-x[33]*x[37]+x[34]*x[36] == 0.0)
@NLconstraint(m, e52, x[31]*x[42]-x[33]*x[41]+x[34]*x[40] == 0.0)
@NLconstraint(m, e53, x[29]*x[31]-x[36]*x[41]+x[37]*x[40] == 0.0)
@NLconstraint(m, e54, x[29]*x[32]-x[35]*x[42]+x[38]*x[39] == 0.0)
@NLconstraint(m, e55, x[29]*x[33]-x[36]*x[42]+x[38]*x[40] == 0.0)
@NLconstraint(m, e56, x[29]*x[34]-x[37]*x[42]+x[38]*x[41] == 0.0)
@constraint(m, e57, -objvar-x[28] <= 0.0)
@constraint(m, e58, -objvar+x[28] <= 0.0)
@constraint(m, e59, -objvar-x[30] <= 0.0)
@constraint(m, e60, -objvar+x[30] <= 0.0)
@constraint(m, e61, -objvar-x[31] <= 0.0)
@constraint(m, e62, -objvar+x[31] <= 0.0)
@constraint(m, e63, -objvar-x[32] <= 0.0)
@constraint(m, e64, -objvar+x[32] <= 0.0)
@constraint(m, e65, -objvar-x[33] <= 0.0)
@constraint(m, e66, -objvar+x[33] <= 0.0)
@constraint(m, e67, -objvar-x[34] <= 0.0)
@constraint(m, e68, -objvar+x[34] <= 0.0)
@constraint(m, e69, -objvar-x[35] <= 0.0)
@constraint(m, e70, -objvar+x[35] <= 0.0)
@constraint(m, e71, -objvar-x[36] <= 0.0)
@constraint(m, e72, -objvar+x[36] <= 0.0)
@constraint(m, e73, -objvar-x[37] <= 0.0)
@constraint(m, e74, -objvar+x[37] <= 0.0)
@constraint(m, e75, -objvar-x[38] <= 0.0)
@constraint(m, e76, -objvar+x[38] <= 0.0)
@constraint(m, e77, -objvar-x[39] <= 0.0)
@constraint(m, e78, -objvar+x[39] <= 0.0)
@constraint(m, e79, -objvar-x[40] <= 0.0)
@constraint(m, e80, -objvar+x[40] <= 0.0)
@constraint(m, e81, -objvar-x[41] <= 0.0)
@constraint(m, e82, -objvar+x[41] <= 0.0)
@constraint(m, e83, -objvar-x[42] <= 0.0)
@constraint(m, e84, -objvar+x[42] <= 0.0)
@constraint(m, e85, -objvar-x[29] <= 0.0)
@constraint(m, e86, -objvar+x[29] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
