using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57]
@variable(m, x[x_Idx])
b_Idx = Any[9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[56], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[1], 11.5)
setupperbound(x[1], 52.5)
setlowerbound(x[2], 12.5)
setupperbound(x[2], 51.5)
setlowerbound(x[3], 10.5)
setupperbound(x[3], 53.5)
setlowerbound(x[4], 10.0)
setupperbound(x[4], 54.0)
setlowerbound(x[5], 7.0)
setupperbound(x[5], 82.0)
setlowerbound(x[6], 6.5)
setupperbound(x[6], 82.5)
setlowerbound(x[7], 5.5)
setupperbound(x[7], 83.5)
setlowerbound(x[8], 5.5)
setupperbound(x[8], 83.5)


# ----- Constraints ----- #
@constraint(m, e1, -300*x[45]-240*x[46]-210*x[47]-100*x[48]-150*x[49]-120*x[50]-300*x[51]-240*x[52]-210*x[53]-100*x[54]-150*x[55]-120*x[56]+x[57] == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[45] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[46] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[47] >= 0.0)
@constraint(m, e5, -x[2]+x[3]+x[48] >= 0.0)
@constraint(m, e6, -x[2]+x[4]+x[49] >= 0.0)
@constraint(m, e7, -x[3]+x[4]+x[50] >= 0.0)
@constraint(m, e8, x[1]-x[2]+x[45] >= 0.0)
@constraint(m, e9, x[1]-x[3]+x[46] >= 0.0)
@constraint(m, e10, x[1]-x[4]+x[47] >= 0.0)
@constraint(m, e11, x[2]-x[3]+x[48] >= 0.0)
@constraint(m, e12, x[2]-x[4]+x[49] >= 0.0)
@constraint(m, e13, x[3]-x[4]+x[50] >= 0.0)
@constraint(m, e14, -x[5]+x[6]+x[51] >= 0.0)
@constraint(m, e15, -x[5]+x[7]+x[52] >= 0.0)
@constraint(m, e16, -x[5]+x[8]+x[53] >= 0.0)
@constraint(m, e17, -x[6]+x[7]+x[54] >= 0.0)
@constraint(m, e18, -x[6]+x[8]+x[55] >= 0.0)
@constraint(m, e19, -x[7]+x[8]+x[56] >= 0.0)
@constraint(m, e20, x[5]-x[6]+x[51] >= 0.0)
@constraint(m, e21, x[5]-x[7]+x[52] >= 0.0)
@constraint(m, e22, x[5]-x[8]+x[53] >= 0.0)
@constraint(m, e23, x[6]-x[7]+x[54] >= 0.0)
@constraint(m, e24, x[6]-x[8]+x[55] >= 0.0)
@constraint(m, e25, x[7]-x[8]+x[56] >= 0.0)
@constraint(m, e26, x[1]-x[2]+46*b[9] <= 40.0)
@constraint(m, e27, x[1]-x[3]+46*b[10] <= 42.0)
@constraint(m, e28, x[1]-x[4]+46*b[11] <= 42.5)
@constraint(m, e29, x[2]-x[3]+46*b[12] <= 41.0)
@constraint(m, e30, x[2]-x[4]+46*b[13] <= 41.5)
@constraint(m, e31, x[3]-x[4]+46*b[14] <= 43.5)
@constraint(m, e32, -x[1]+x[2]+46*b[15] <= 40.0)
@constraint(m, e33, -x[1]+x[3]+46*b[16] <= 42.0)
@constraint(m, e34, -x[1]+x[4]+46*b[17] <= 42.5)
@constraint(m, e35, -x[2]+x[3]+46*b[18] <= 41.0)
@constraint(m, e36, -x[2]+x[4]+46*b[19] <= 41.5)
@constraint(m, e37, -x[3]+x[4]+46*b[20] <= 43.5)
@constraint(m, e38, x[5]-x[6]+81*b[21] <= 75.5)
@constraint(m, e39, x[5]-x[7]+81*b[22] <= 76.5)
@constraint(m, e40, x[5]-x[8]+81*b[23] <= 76.5)
@constraint(m, e41, x[6]-x[7]+81*b[24] <= 77.0)
@constraint(m, e42, x[6]-x[8]+81*b[25] <= 77.0)
@constraint(m, e43, x[7]-x[8]+81*b[26] <= 78.0)
@constraint(m, e44, -x[5]+x[6]+81*b[27] <= 75.5)
@constraint(m, e45, -x[5]+x[7]+81*b[28] <= 76.5)
@constraint(m, e46, -x[5]+x[8]+81*b[29] <= 76.5)
@constraint(m, e47, -x[6]+x[7]+81*b[30] <= 77.0)
@constraint(m, e48, -x[6]+x[8]+81*b[31] <= 77.0)
@constraint(m, e49, -x[7]+x[8]+81*b[32] <= 78.0)
@constraint(m, e50, b[9]+b[15]+b[21]+b[27] == 1.0)
@constraint(m, e51, b[10]+b[16]+b[22]+b[28] == 1.0)
@constraint(m, e52, b[11]+b[17]+b[23]+b[29] == 1.0)
@constraint(m, e53, b[12]+b[18]+b[24]+b[30] == 1.0)
@constraint(m, e54, b[13]+b[19]+b[25]+b[31] == 1.0)
@constraint(m, e55, b[14]+b[20]+b[26]+b[32] == 1.0)
@NLconstraint(m, e56,  ((-17.5)+x[1])^2+ ((-7)+x[5])^2+6814*b[33] <= 6850.0)
@NLconstraint(m, e57,  ((-18.5)+x[2])^2+ ((-7.5)+x[6])^2+6678*b[34] <= 6714.0)
@NLconstraint(m, e58,  ((-16.5)+x[3])^2+ ((-8.5)+x[7])^2+6958*b[35] <= 6994.0)
@NLconstraint(m, e59,  ((-16)+x[4])^2+ ((-8.5)+x[8])^2+7033*b[36] <= 7069.0)
@NLconstraint(m, e60,  ((-52.5)+x[1])^2+ ((-77)+x[5])^2+6556*b[37] <= 6581.0)
@NLconstraint(m, e61,  ((-53.5)+x[2])^2+ ((-77.5)+x[6])^2+6697*b[38] <= 6722.0)
@NLconstraint(m, e62,  ((-51.5)+x[3])^2+ ((-78.5)+x[7])^2+6985*b[39] <= 7010.0)
@NLconstraint(m, e63,  ((-51)+x[4])^2+ ((-78.5)+x[8])^2+6985*b[40] <= 7010.0)
@NLconstraint(m, e64,  ((-32.5)+x[1])^2+ ((-47)+x[5])^2+2025*b[41] <= 2041.0)
@NLconstraint(m, e65,  ((-33.5)+x[2])^2+ ((-47.5)+x[6])^2+2106*b[42] <= 2122.0)
@NLconstraint(m, e66,  ((-31.5)+x[3])^2+ ((-48.5)+x[7])^2+2317*b[43] <= 2333.0)
@NLconstraint(m, e67,  ((-31)+x[4])^2+ ((-48.5)+x[8])^2+2362*b[44] <= 2378.0)
@NLconstraint(m, e68,  ((-17.5)+x[1])^2+ ((-13)+x[5])^2+5950*b[33] <= 5986.0)
@NLconstraint(m, e69,  ((-18.5)+x[2])^2+ ((-12.5)+x[6])^2+5953*b[34] <= 5989.0)
@NLconstraint(m, e70,  ((-16.5)+x[3])^2+ ((-11.5)+x[7])^2+6517*b[35] <= 6553.0)
@NLconstraint(m, e71,  ((-16)+x[4])^2+ ((-11.5)+x[8])^2+6592*b[36] <= 6628.0)
@NLconstraint(m, e72,  ((-52.5)+x[1])^2+ ((-83)+x[5])^2+7432*b[37] <= 7457.0)
@NLconstraint(m, e73,  ((-53.5)+x[2])^2+ ((-82.5)+x[6])^2+7432*b[38] <= 7457.0)
@NLconstraint(m, e74,  ((-51.5)+x[3])^2+ ((-81.5)+x[7])^2+7432*b[39] <= 7457.0)
@NLconstraint(m, e75,  ((-51)+x[4])^2+ ((-81.5)+x[8])^2+7432*b[40] <= 7457.0)
@NLconstraint(m, e76,  ((-32.5)+x[1])^2+ ((-53)+x[5])^2+2541*b[41] <= 2557.0)
@NLconstraint(m, e77,  ((-33.5)+x[2])^2+ ((-52.5)+x[6])^2+2541*b[42] <= 2557.0)
@NLconstraint(m, e78,  ((-31.5)+x[3])^2+ ((-51.5)+x[7])^2+2584*b[43] <= 2600.0)
@NLconstraint(m, e79,  ((-31)+x[4])^2+ ((-51.5)+x[8])^2+2629*b[44] <= 2645.0)
@NLconstraint(m, e80,  ((-12.5)+x[1])^2+ ((-7)+x[5])^2+7189*b[33] <= 7225.0)
@NLconstraint(m, e81,  ((-11.5)+x[2])^2+ ((-7.5)+x[6])^2+7189*b[34] <= 7225.0)
@NLconstraint(m, e82,  ((-13.5)+x[3])^2+ ((-8.5)+x[7])^2+7189*b[35] <= 7225.0)
@NLconstraint(m, e83,  ((-14)+x[4])^2+ ((-8.5)+x[8])^2+7189*b[36] <= 7225.0)
@NLconstraint(m, e84,  ((-47.5)+x[1])^2+ ((-77)+x[5])^2+6171*b[37] <= 6196.0)
@NLconstraint(m, e85,  ((-46.5)+x[2])^2+ ((-77.5)+x[6])^2+6172*b[38] <= 6197.0)
@NLconstraint(m, e86,  ((-48.5)+x[3])^2+ ((-78.5)+x[7])^2+6748*b[39] <= 6773.0)
@NLconstraint(m, e87,  ((-49)+x[4])^2+ ((-78.5)+x[8])^2+6825*b[40] <= 6850.0)
@NLconstraint(m, e88,  ((-27.5)+x[1])^2+ ((-47)+x[5])^2+2209*b[41] <= 2225.0)
@NLconstraint(m, e89,  ((-26.5)+x[2])^2+ ((-47.5)+x[6])^2+2290*b[42] <= 2306.0)
@NLconstraint(m, e90,  ((-28.5)+x[3])^2+ ((-48.5)+x[7])^2+2458*b[43] <= 2474.0)
@NLconstraint(m, e91,  ((-29)+x[4])^2+ ((-48.5)+x[8])^2+2458*b[44] <= 2474.0)
@NLconstraint(m, e92,  ((-12.5)+x[1])^2+ ((-13)+x[5])^2+6325*b[33] <= 6361.0)
@NLconstraint(m, e93,  ((-11.5)+x[2])^2+ ((-12.5)+x[6])^2+6464*b[34] <= 6500.0)
@NLconstraint(m, e94,  ((-13.5)+x[3])^2+ ((-11.5)+x[7])^2+6748*b[35] <= 6784.0)
@NLconstraint(m, e95,  ((-14)+x[4])^2+ ((-11.5)+x[8])^2+6748*b[36] <= 6784.0)
@NLconstraint(m, e96,  ((-47.5)+x[1])^2+ ((-83)+x[5])^2+7047*b[37] <= 7072.0)
@NLconstraint(m, e97,  ((-46.5)+x[2])^2+ ((-82.5)+x[6])^2+6907*b[38] <= 6932.0)
@NLconstraint(m, e98,  ((-48.5)+x[3])^2+ ((-81.5)+x[7])^2+7195*b[39] <= 7220.0)
@NLconstraint(m, e99,  ((-49)+x[4])^2+ ((-81.5)+x[8])^2+7272*b[40] <= 7297.0)
@NLconstraint(m, e100,  ((-27.5)+x[1])^2+ ((-53)+x[5])^2+2725*b[41] <= 2741.0)
@NLconstraint(m, e101,  ((-26.5)+x[2])^2+ ((-52.5)+x[6])^2+2725*b[42] <= 2741.0)
@NLconstraint(m, e102,  ((-28.5)+x[3])^2+ ((-51.5)+x[7])^2+2725*b[43] <= 2741.0)
@NLconstraint(m, e103,  ((-29)+x[4])^2+ ((-51.5)+x[8])^2+2725*b[44] <= 2741.0)
@constraint(m, e104, b[33]+b[37]+b[41] == 1.0)
@constraint(m, e105, b[34]+b[38]+b[42] == 1.0)
@constraint(m, e106, b[35]+b[39]+b[43] == 1.0)
@constraint(m, e107, b[36]+b[40]+b[44] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[57])

m = m 		 # model get returned when including this script. 
