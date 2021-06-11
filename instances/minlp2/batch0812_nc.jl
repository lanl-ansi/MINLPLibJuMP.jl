using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]
@variable(m, x[x_Idx])
b_Idx = Any[41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[1], 1.0)
set_upper_bound(x[1], 5.0)
set_lower_bound(x[2], 1.0)
set_upper_bound(x[2], 5.0)
set_lower_bound(x[3], 1.0)
set_upper_bound(x[3], 5.0)
set_lower_bound(x[4], 1.0)
set_upper_bound(x[4], 5.0)
set_lower_bound(x[5], 1.0)
set_upper_bound(x[5], 5.0)
set_lower_bound(x[6], 1.0)
set_upper_bound(x[6], 5.0)
set_lower_bound(x[7], 1.0)
set_upper_bound(x[7], 5.0)
set_lower_bound(x[8], 1.0)
set_upper_bound(x[8], 5.0)
set_lower_bound(x[9], 1.0)
set_upper_bound(x[9], 5.0)
set_lower_bound(x[10], 1.0)
set_upper_bound(x[10], 5.0)
set_lower_bound(x[11], 1.0)
set_upper_bound(x[11], 5.0)
set_lower_bound(x[12], 1.0)
set_upper_bound(x[12], 5.0)
set_lower_bound(x[13], 300.0)
set_upper_bound(x[13], 3000.0)
set_lower_bound(x[14], 300.0)
set_upper_bound(x[14], 3000.0)
set_lower_bound(x[15], 300.0)
set_upper_bound(x[15], 3000.0)
set_lower_bound(x[16], 300.0)
set_upper_bound(x[16], 3000.0)
set_lower_bound(x[17], 300.0)
set_upper_bound(x[17], 3000.0)
set_lower_bound(x[18], 300.0)
set_upper_bound(x[18], 3000.0)
set_lower_bound(x[19], 300.0)
set_upper_bound(x[19], 3000.0)
set_lower_bound(x[20], 300.0)
set_upper_bound(x[20], 3000.0)
set_lower_bound(x[21], 300.0)
set_upper_bound(x[21], 3000.0)
set_lower_bound(x[22], 300.0)
set_upper_bound(x[22], 3000.0)
set_lower_bound(x[23], 300.0)
set_upper_bound(x[23], 3000.0)
set_lower_bound(x[24], 300.0)
set_upper_bound(x[24], 3000.0)
set_lower_bound(x[25], 134.183333333333)
set_upper_bound(x[25], 379.746835443038)
set_lower_bound(x[26], 67.32)
set_upper_bound(x[26], 882.352941176471)
set_lower_bound(x[27], 126.933333333333)
set_upper_bound(x[27], 652.173913043478)
set_lower_bound(x[28], 33.0166666666667)
set_upper_bound(x[28], 638.297872340426)
set_lower_bound(x[29], 68.97)
set_upper_bound(x[29], 666.666666666667)
set_lower_bound(x[30], 37.5416666666667)
set_upper_bound(x[30], 441.176470588235)
set_lower_bound(x[31], 42.24)
set_upper_bound(x[31], 576.923076923077)
set_lower_bound(x[32], 20.7833333333333)
set_upper_bound(x[32], 1363.63636363636)
set_lower_bound(x[33], 1.66)
set_upper_bound(x[33], 8.3)
set_lower_bound(x[34], 1.36)
set_upper_bound(x[34], 6.8)
set_lower_bound(x[35], 2.38)
set_upper_bound(x[35], 11.9)
set_lower_bound(x[36], 0.7)
set_upper_bound(x[36], 3.5)
set_lower_bound(x[37], 1.14)
set_upper_bound(x[37], 5.7)
set_lower_bound(x[38], 0.85)
set_upper_bound(x[38], 4.25)
set_lower_bound(x[39], 0.88)
set_upper_bound(x[39], 4.4)
set_lower_bound(x[40], 0.86)
set_upper_bound(x[40], 4.3)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(250*x[13]^0.6*x[1]+550*x[14]^0.6*x[2]+250*x[15]^0.6*x[3]+1000*x[16]^0.6*x[4]+300*x[17]^0.6*x[5]+800*x[18]^0.6*x[6]+200*x[19]^0.6*x[7]+1200*x[20]^0.6*x[8]+250*x[21]^0.6*x[9]+250*x[22]^0.6*x[10]+450*x[23]^0.6*x[11]+700*x[24]^0.6*x[12])+objvar == 0.0)
@constraint(m, e2, x[13]-7.9*x[25] >= 0.0)
@constraint(m, e3, x[14]-2*x[25] >= 0.0)
@constraint(m, e4, x[15]-5.2*x[25] >= 0.0)
@constraint(m, e5, x[16]-4.9*x[25] >= 0.0)
@constraint(m, e6, x[17]-6.1*x[25] >= 0.0)
@constraint(m, e7, x[18]-4.2*x[25] >= 0.0)
@constraint(m, e8, x[19]-2.8*x[25] >= 0.0)
@constraint(m, e9, x[20]-3.3*x[25] >= 0.0)
@constraint(m, e10, x[21]-4.1*x[25] >= 0.0)
@constraint(m, e11, x[22]-3.8*x[25] >= 0.0)
@constraint(m, e12, x[23]-2.8*x[25] >= 0.0)
@constraint(m, e13, x[24]-3.9*x[25] >= 0.0)
@constraint(m, e14, x[13]-0.7*x[26] >= 0.0)
@constraint(m, e15, x[14]-0.8*x[26] >= 0.0)
@constraint(m, e16, x[15]-0.9*x[26] >= 0.0)
@constraint(m, e17, x[16]-3.4*x[26] >= 0.0)
@constraint(m, e18, x[17]-2.1*x[26] >= 0.0)
@constraint(m, e19, x[18]-2.5*x[26] >= 0.0)
@constraint(m, e20, x[19]-3.3*x[26] >= 0.0)
@constraint(m, e21, x[20]-3*x[26] >= 0.0)
@constraint(m, e22, x[21]-2.7*x[26] >= 0.0)
@constraint(m, e23, x[22]-2.4*x[26] >= 0.0)
@constraint(m, e24, x[23]-2.2*x[26] >= 0.0)
@constraint(m, e25, x[24]-3.1*x[26] >= 0.0)
@constraint(m, e26, x[13]-0.7*x[27] >= 0.0)
@constraint(m, e27, x[14]-2.6*x[27] >= 0.0)
@constraint(m, e28, x[15]-1.6*x[27] >= 0.0)
@constraint(m, e29, x[16]-3.6*x[27] >= 0.0)
@constraint(m, e30, x[17]-3.2*x[27] >= 0.0)
@constraint(m, e31, x[18]-2.9*x[27] >= 0.0)
@constraint(m, e32, x[19]-2.6*x[27] >= 0.0)
@constraint(m, e33, x[20]-2.2*x[27] >= 0.0)
@constraint(m, e34, x[21]-4.6*x[27] >= 0.0)
@constraint(m, e35, x[22]-4.3*x[27] >= 0.0)
@constraint(m, e36, x[23]-4.2*x[27] >= 0.0)
@constraint(m, e37, x[24]-4.6*x[27] >= 0.0)
@constraint(m, e38, x[13]-4.7*x[28] >= 0.0)
@constraint(m, e39, x[14]-2.3*x[28] >= 0.0)
@constraint(m, e40, x[15]-1.6*x[28] >= 0.0)
@constraint(m, e41, x[16]-2.7*x[28] >= 0.0)
@constraint(m, e42, x[17]-1.2*x[28] >= 0.0)
@constraint(m, e43, x[18]-2.5*x[28] >= 0.0)
@constraint(m, e44, x[19]-1.5*x[28] >= 0.0)
@constraint(m, e45, x[20]-1.5*x[28] >= 0.0)
@constraint(m, e46, x[21]-1.3*x[28] >= 0.0)
@constraint(m, e47, x[22]-1.7*x[28] >= 0.0)
@constraint(m, e48, x[23]-1.5*x[28] >= 0.0)
@constraint(m, e49, x[24]-1.8*x[28] >= 0.0)
@constraint(m, e50, x[13]-1.2*x[29] >= 0.0)
@constraint(m, e51, x[14]-3.6*x[29] >= 0.0)
@constraint(m, e52, x[15]-2.4*x[29] >= 0.0)
@constraint(m, e53, x[16]-4.5*x[29] >= 0.0)
@constraint(m, e54, x[17]-1.6*x[29] >= 0.0)
@constraint(m, e55, x[18]-2.1*x[29] >= 0.0)
@constraint(m, e56, x[19]-2.4*x[29] >= 0.0)
@constraint(m, e57, x[20]-2.7*x[29] >= 0.0)
@constraint(m, e58, x[21]-2.8*x[29] >= 0.0)
@constraint(m, e59, x[22]-3.5*x[29] >= 0.0)
@constraint(m, e60, x[23]-3.5*x[29] >= 0.0)
@constraint(m, e61, x[24]-4.3*x[29] >= 0.0)
@constraint(m, e62, x[13]-0.7*x[30] >= 0.0)
@constraint(m, e63, x[14]-2.4*x[30] >= 0.0)
@constraint(m, e64, x[15]-3.1*x[30] >= 0.0)
@constraint(m, e65, x[16]-2.2*x[30] >= 0.0)
@constraint(m, e66, x[17]-3.7*x[30] >= 0.0)
@constraint(m, e67, x[18]-4.8*x[30] >= 0.0)
@constraint(m, e68, x[19]-4.5*x[30] >= 0.0)
@constraint(m, e69, x[20]-5.2*x[30] >= 0.0)
@constraint(m, e70, x[21]-6.4*x[30] >= 0.0)
@constraint(m, e71, x[22]-5.7*x[30] >= 0.0)
@constraint(m, e72, x[23]-6.4*x[30] >= 0.0)
@constraint(m, e73, x[24]-6.8*x[30] >= 0.0)
@constraint(m, e74, x[13]-2.3*x[31] >= 0.0)
@constraint(m, e75, x[14]-4.7*x[31] >= 0.0)
@constraint(m, e76, x[15]-5.2*x[31] >= 0.0)
@constraint(m, e77, x[16]-3.5*x[31] >= 0.0)
@constraint(m, e78, x[17]-2.9*x[31] >= 0.0)
@constraint(m, e79, x[18]-3.6*x[31] >= 0.0)
@constraint(m, e80, x[19]-3.3*x[31] >= 0.0)
@constraint(m, e81, x[20]-3.2*x[31] >= 0.0)
@constraint(m, e82, x[21]-4.1*x[31] >= 0.0)
@constraint(m, e83, x[22]-3.7*x[31] >= 0.0)
@constraint(m, e84, x[23]-3.4*x[31] >= 0.0)
@constraint(m, e85, x[24]-3.7*x[31] >= 0.0)
@constraint(m, e86, x[13]-0.4*x[32] >= 0.0)
@constraint(m, e87, x[14]-0.9*x[32] >= 0.0)
@constraint(m, e88, x[15]-1.1*x[32] >= 0.0)
@constraint(m, e89, x[16]-1.4*x[32] >= 0.0)
@constraint(m, e90, x[17]-1.6*x[32] >= 0.0)
@constraint(m, e91, x[18]-2.2*x[32] >= 0.0)
@constraint(m, e92, x[19]-2*x[32] >= 0.0)
@constraint(m, e93, x[20]-1.8*x[32] >= 0.0)
@constraint(m, e94, x[21]-1.8*x[32] >= 0.0)
@constraint(m, e95, x[22]-1.6*x[32] >= 0.0)
@constraint(m, e96, x[23]-1.8*x[32] >= 0.0)
@constraint(m, e97, x[24]-2*x[32] >= 0.0)
@NLconstraint(m, e98, x[1]*x[33] >= 6.4)
@NLconstraint(m, e99, x[2]*x[33] >= 4.7)
@NLconstraint(m, e100, x[3]*x[33] >= 8.3)
@NLconstraint(m, e101, x[4]*x[33] >= 3.9)
@NLconstraint(m, e102, x[5]*x[33] >= 2.1)
@NLconstraint(m, e103, x[6]*x[33] >= 1.2)
@NLconstraint(m, e104, x[7]*x[33] >= 0.8)
@NLconstraint(m, e105, x[8]*x[33] >= 2.2)
@NLconstraint(m, e106, x[9]*x[33] >= 1.2)
@NLconstraint(m, e107, x[10]*x[33] >= 2.5)
@NLconstraint(m, e108, x[11]*x[33] >= 3.4)
@NLconstraint(m, e109, x[12]*x[33] >= 3.8)
@NLconstraint(m, e110, x[1]*x[34] >= 6.8)
@NLconstraint(m, e111, x[2]*x[34] >= 6.4)
@NLconstraint(m, e112, x[3]*x[34] >= 6.5)
@NLconstraint(m, e113, x[4]*x[34] >= 4.4)
@NLconstraint(m, e114, x[5]*x[34] >= 2.3)
@NLconstraint(m, e115, x[6]*x[34] >= 3.2)
@NLconstraint(m, e116, x[7]*x[34] >= 0.4)
@NLconstraint(m, e117, x[8]*x[34] >= 0.2)
@NLconstraint(m, e118, x[9]*x[34] >= 0.5)
@NLconstraint(m, e119, x[10]*x[34] >= 3.3)
@NLconstraint(m, e120, x[11]*x[34] >= 0.6)
@NLconstraint(m, e121, x[12]*x[34] >= 1.2)
@NLconstraint(m, e122, x[1]*x[35] >= 1.0)
@NLconstraint(m, e123, x[2]*x[35] >= 6.3)
@NLconstraint(m, e124, x[3]*x[35] >= 5.4)
@NLconstraint(m, e125, x[4]*x[35] >= 11.9)
@NLconstraint(m, e126, x[5]*x[35] >= 5.7)
@NLconstraint(m, e127, x[6]*x[35] >= 6.2)
@NLconstraint(m, e128, x[7]*x[35] >= 1.1)
@NLconstraint(m, e129, x[8]*x[35] >= 0.6)
@NLconstraint(m, e130, x[9]*x[35] >= 1.2)
@NLconstraint(m, e131, x[10]*x[35] >= 4.3)
@NLconstraint(m, e132, x[11]*x[35] >= 2.8)
@NLconstraint(m, e133, x[12]*x[35] >= 5.2)
@NLconstraint(m, e134, x[1]*x[36] >= 3.2)
@NLconstraint(m, e135, x[2]*x[36] >= 3.0)
@NLconstraint(m, e136, x[3]*x[36] >= 3.5)
@NLconstraint(m, e137, x[4]*x[36] >= 3.3)
@NLconstraint(m, e138, x[5]*x[36] >= 2.8)
@NLconstraint(m, e139, x[6]*x[36] >= 3.4)
@NLconstraint(m, e140, x[7]*x[36] >= 1.7)
@NLconstraint(m, e141, x[8]*x[36] >= 0.9)
@NLconstraint(m, e142, x[9]*x[36] >= 2.2)
@NLconstraint(m, e143, x[10]*x[36] >= 2.15)
@NLconstraint(m, e144, x[11]*x[36] >= 1.8)
@NLconstraint(m, e145, x[12]*x[36] >= 2.5)
@NLconstraint(m, e146, x[1]*x[37] >= 2.1)
@NLconstraint(m, e147, x[2]*x[37] >= 2.5)
@NLconstraint(m, e148, x[3]*x[37] >= 4.2)
@NLconstraint(m, e149, x[4]*x[37] >= 3.6)
@NLconstraint(m, e150, x[5]*x[37] >= 5.7)
@NLconstraint(m, e151, x[6]*x[37] >= 2.2)
@NLconstraint(m, e152, x[7]*x[37] >= 1.2)
@NLconstraint(m, e153, x[8]*x[37] >= 0.6)
@NLconstraint(m, e154, x[9]*x[37] >= 1.15)
@NLconstraint(m, e155, x[10]*x[37] >= 3.1)
@NLconstraint(m, e156, x[11]*x[37] >= 4.2)
@NLconstraint(m, e157, x[12]*x[37] >= 1.6)
@NLconstraint(m, e158, x[1]*x[38] >= 1.1)
@NLconstraint(m, e159, x[2]*x[38] >= 0.8)
@NLconstraint(m, e160, x[3]*x[38] >= 0.4)
@NLconstraint(m, e161, x[4]*x[38] >= 1.1)
@NLconstraint(m, e162, x[5]*x[38] >= 1.8)
@NLconstraint(m, e163, x[6]*x[38] >= 2.5)
@NLconstraint(m, e164, x[7]*x[38] >= 0.5)
@NLconstraint(m, e165, x[8]*x[38] >= 1.3)
@NLconstraint(m, e166, x[9]*x[38] >= 1.4)
@NLconstraint(m, e167, x[10]*x[38] >= 4.25)
@NLconstraint(m, e168, x[11]*x[38] >= 2.7)
@NLconstraint(m, e169, x[12]*x[38] >= 0.9)
@NLconstraint(m, e170, x[1]*x[39] >= 4.2)
@NLconstraint(m, e171, x[2]*x[39] >= 4.0)
@NLconstraint(m, e172, x[3]*x[39] >= 2.2)
@NLconstraint(m, e173, x[4]*x[39] >= 0.5)
@NLconstraint(m, e174, x[5]*x[39] >= 3.4)
@NLconstraint(m, e175, x[6]*x[39] >= 2.2)
@NLconstraint(m, e176, x[7]*x[39] >= 1.4)
@NLconstraint(m, e177, x[8]*x[39] >= 0.9)
@NLconstraint(m, e178, x[9]*x[39] >= 2.1)
@NLconstraint(m, e179, x[10]*x[39] >= 4.4)
@NLconstraint(m, e180, x[11]*x[39] >= 2.2)
@NLconstraint(m, e181, x[12]*x[39] >= 3.2)
@NLconstraint(m, e182, x[1]*x[40] >= 2.7)
@NLconstraint(m, e183, x[2]*x[40] >= 4.3)
@NLconstraint(m, e184, x[3]*x[40] >= 1.9)
@NLconstraint(m, e185, x[4]*x[40] >= 2.0)
@NLconstraint(m, e186, x[5]*x[40] >= 1.7)
@NLconstraint(m, e187, x[6]*x[40] >= 0.7)
@NLconstraint(m, e188, x[7]*x[40] >= 0.3)
@NLconstraint(m, e189, x[8]*x[40] >= 0.2)
@NLconstraint(m, e190, x[9]*x[40] >= 1.6)
@NLconstraint(m, e191, x[10]*x[40] >= 3.5)
@NLconstraint(m, e192, x[11]*x[40] >= 3.4)
@NLconstraint(m, e193, x[12]*x[40] >= 2.1)
@NLconstraint(m, e194, 485000*x[33]/x[25]+297000*x[34]/x[26]+320000*x[35]/x[27]+283000*x[36]/x[28]+363000*x[37]/x[29]+265000*x[38]/x[30]+288000*x[39]/x[31]+145000*x[40]/x[32] <= 6000.0)
@constraint(m, e195, x[1]-b[41]-2*b[53]-4*b[65] == 1.0)
@constraint(m, e196, x[2]-b[42]-2*b[54]-4*b[66] == 1.0)
@constraint(m, e197, x[3]-b[43]-2*b[55]-4*b[67] == 1.0)
@constraint(m, e198, x[4]-b[44]-2*b[56]-4*b[68] == 1.0)
@constraint(m, e199, x[5]-b[45]-2*b[57]-4*b[69] == 1.0)
@constraint(m, e200, x[6]-b[46]-2*b[58]-4*b[70] == 1.0)
@constraint(m, e201, x[7]-b[47]-2*b[59]-4*b[71] == 1.0)
@constraint(m, e202, x[8]-b[48]-2*b[60]-4*b[72] == 1.0)
@constraint(m, e203, x[9]-b[49]-2*b[61]-4*b[73] == 1.0)
@constraint(m, e204, x[10]-b[50]-2*b[62]-4*b[74] == 1.0)
@constraint(m, e205, x[11]-b[51]-2*b[63]-4*b[75] == 1.0)
@constraint(m, e206, x[12]-b[52]-2*b[64]-4*b[76] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
