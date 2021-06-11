using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
@variable(m, i[i_Idx] <= 100, Int)
set_lower_bound(x[58], 2.8)
set_upper_bound(x[58], 7.4833)
set_lower_bound(x[59], 2.0)
set_upper_bound(x[59], 6.3246)
set_lower_bound(x[60], 1.8708)
set_upper_bound(x[60], 5.0)
set_lower_bound(x[61], 1.5811)
set_upper_bound(x[61], 5.0)
set_lower_bound(x[62], 1.8)
set_upper_bound(x[62], 6.0)
set_lower_bound(x[64], 1.5)
set_upper_bound(x[64], 5.0)
set_lower_bound(x[66], 1.2247)
set_upper_bound(x[66], 4.899)
set_lower_bound(x[68], 1.2247)
set_upper_bound(x[68], 4.899)
set_lower_bound(x[70], 2.0)
set_upper_bound(x[70], 6.3246)
set_lower_bound(x[72], 1.5811)
set_upper_bound(x[72], 5.0)
set_lower_bound(x[74], 5.0)
set_upper_bound(x[74], 10.0)
set_lower_bound(x[76], 2.5)
set_upper_bound(x[76], 5.0)
set_lower_bound(x[78], 5.0)
set_upper_bound(x[78], 10.0)
set_lower_bound(x[80], 2.5)
set_upper_bound(x[80], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-2.4*x[44]-2.4*x[45]-7*x[46]-7*x[47]-12*x[48]-12*x[49]-12*x[50]-12*x[51]-6*x[52]-6*x[53] == 0.0)
@constraint(m, e2, x[54]-x[55] >= 0.0)
@constraint(m, e3, x[56]-x[57] >= 0.0)
@constraint(m, e4, i[1]-i[2] == 0.0)
@constraint(m, e5, -20*i[1]-x[44]+0.5*x[58]+0.5*x[59] <= 0.0)
@constraint(m, e6, 5*i[1]-x[45]+0.5*x[60]+0.5*x[61] <= 5.0)
@constraint(m, e7, -20*i[3]+0.5*x[58]+0.5*x[62]-x[63] <= 0.0)
@constraint(m, e8, 5*i[3]+0.5*x[60]+0.5*x[64]-x[65] <= 5.0)
@constraint(m, e9, -20*i[5]+0.5*x[58]+0.5*x[66]-x[67] <= 0.0)
@constraint(m, e10, 5*i[5]+0.5*x[60]+0.5*x[68]-x[69] <= 5.0)
@constraint(m, e11, -20*i[7]+0.5*x[58]+0.5*x[70]-x[71] <= 0.0)
@constraint(m, e12, 5*i[7]+0.5*x[60]+0.5*x[72]-x[73] <= 5.0)
@constraint(m, e13, -20*i[9]+0.5*x[58]+0.5*x[74]-x[75] <= 0.0)
@constraint(m, e14, 5*i[9]+0.5*x[60]+0.5*x[76]-x[77] <= 5.0)
@constraint(m, e15, -20*i[11]+0.5*x[58]+0.5*x[78]-x[79] <= 0.0)
@constraint(m, e16, 5*i[11]+0.5*x[60]+0.5*x[80]-x[81] <= 5.0)
@constraint(m, e17, -20*i[13]+0.5*x[59]+0.5*x[62]-x[82] <= 0.0)
@constraint(m, e18, 5*i[13]+0.5*x[61]+0.5*x[64]-x[83] <= 5.0)
@constraint(m, e19, -20*i[15]+0.5*x[59]+0.5*x[66]-x[84] <= 0.0)
@constraint(m, e20, 5*i[15]+0.5*x[61]+0.5*x[68]-x[85] <= 5.0)
@constraint(m, e21, -20*i[17]+0.5*x[59]+0.5*x[70]-x[86] <= 0.0)
@constraint(m, e22, 5*i[17]+0.5*x[61]+0.5*x[72]-x[87] <= 5.0)
@constraint(m, e23, -20*i[19]+0.5*x[59]+0.5*x[74]-x[88] <= 0.0)
@constraint(m, e24, 5*i[19]+0.5*x[61]+0.5*x[76]-x[89] <= 5.0)
@constraint(m, e25, -20*i[21]-x[46]+0.5*x[59]+0.5*x[78] <= 0.0)
@constraint(m, e26, 5*i[21]-x[47]+0.5*x[61]+0.5*x[80] <= 5.0)
@constraint(m, e27, -20*i[23]-x[48]+0.5*x[62]+0.5*x[66] <= 0.0)
@constraint(m, e28, 5*i[23]-x[49]+0.5*x[64]+0.5*x[68] <= 5.0)
@constraint(m, e29, -20*i[25]+0.5*x[62]+0.5*x[70]-x[90] <= 0.0)
@constraint(m, e30, 5*i[25]+0.5*x[64]+0.5*x[72]-x[91] <= 5.0)
@constraint(m, e31, -20*i[27]+0.5*x[62]+0.5*x[74]-x[92] <= 0.0)
@constraint(m, e32, 5*i[27]+0.5*x[64]+0.5*x[76]-x[93] <= 5.0)
@constraint(m, e33, -20*i[29]+0.5*x[62]+0.5*x[78]-x[94] <= 0.0)
@constraint(m, e34, 5*i[29]+0.5*x[64]+0.5*x[80]-x[95] <= 5.0)
@constraint(m, e35, -20*i[31]+0.5*x[66]+0.5*x[70]-x[96] <= 0.0)
@constraint(m, e36, 5*i[31]+0.5*x[68]+0.5*x[72]-x[97] <= 5.0)
@constraint(m, e37, -20*i[33]-x[50]+0.5*x[66]+0.5*x[74] <= 0.0)
@constraint(m, e38, 5*i[33]-x[51]+0.5*x[68]+0.5*x[76] <= 5.0)
@constraint(m, e39, -20*i[35]+0.5*x[66]+0.5*x[78]-x[98] <= 0.0)
@constraint(m, e40, 5*i[35]+0.5*x[68]+0.5*x[80]-x[99] <= 5.0)
@constraint(m, e41, -20*i[37]-x[52]+0.5*x[70]+0.5*x[74] <= 0.0)
@constraint(m, e42, 5*i[37]-x[53]+0.5*x[72]+0.5*x[76] <= 5.0)
@constraint(m, e43, -20*i[39]+0.5*x[70]+0.5*x[78]-x[100] <= 0.0)
@constraint(m, e44, 5*i[39]+0.5*x[72]+0.5*x[80]-x[101] <= 5.0)
@constraint(m, e45, -20*i[41]+0.5*x[74]+0.5*x[78]-x[102] <= 0.0)
@constraint(m, e46, 5*i[41]+0.5*x[76]+0.5*x[80]-x[103] <= 5.0)
@constraint(m, e47, -0.357143*x[58]-0.2*x[60] <= -2.0)
@constraint(m, e48, -0.133631*x[58]-0.534521*x[60] <= -2.0)
@constraint(m, e49, -0.5*x[59]-0.2*x[61] <= -2.0)
@constraint(m, e50, -0.158113*x[59]-0.63246*x[61] <= -2.0)
@constraint(m, e51, -0.555556*x[62]-0.2*x[64] <= -2.0)
@constraint(m, e52, -0.166667*x[62]-0.666667*x[64] <= -2.0)
@constraint(m, e53, -0.816526*x[66]-0.204117*x[68] <= -2.0)
@constraint(m, e54, -0.204123*x[66]-0.8165*x[68] <= -2.0)
@constraint(m, e55, -0.5*x[70]-0.2*x[72] <= -2.0)
@constraint(m, e56, -0.158113*x[70]-0.63246*x[72] <= -2.0)
@constraint(m, e57, -0.2*x[74]-0.2*x[76] <= -2.0)
@constraint(m, e58, -0.1*x[74]-0.4*x[76] <= -2.0)
@constraint(m, e59, -0.2*x[78]-0.2*x[80] <= -2.0)
@constraint(m, e60, -0.1*x[78]-0.4*x[80] <= -2.0)
@constraint(m, e61, x[54]+0.5*x[58] <= 20.0)
@constraint(m, e62, -x[54]+0.5*x[58] <= 0.0)
@constraint(m, e63, x[57]+0.5*x[60] <= 5.0)
@constraint(m, e64, -x[57]+0.5*x[60] <= 0.0)
@constraint(m, e65, x[55]+0.5*x[59] <= 20.0)
@constraint(m, e66, -x[55]+0.5*x[59] <= 0.0)
@constraint(m, e67, x[56]+0.5*x[61] <= 5.0)
@constraint(m, e68, -x[56]+0.5*x[61] <= 0.0)
@constraint(m, e69, 0.5*x[62]+x[104] <= 20.0)
@constraint(m, e70, 0.5*x[62]-x[104] <= 0.0)
@constraint(m, e71, 0.5*x[64]+x[105] <= 5.0)
@constraint(m, e72, 0.5*x[64]-x[105] <= 0.0)
@constraint(m, e73, 0.5*x[66]+x[106] <= 20.0)
@constraint(m, e74, 0.5*x[66]-x[106] <= 0.0)
@constraint(m, e75, 0.5*x[68]+x[107] <= 5.0)
@constraint(m, e76, 0.5*x[68]-x[107] <= 0.0)
@constraint(m, e77, 0.5*x[70]+x[108] <= 20.0)
@constraint(m, e78, 0.5*x[70]-x[108] <= 0.0)
@constraint(m, e79, 0.5*x[72]+x[109] <= 5.0)
@constraint(m, e80, 0.5*x[72]-x[109] <= 0.0)
@constraint(m, e81, 0.5*x[74]+x[110] <= 20.0)
@constraint(m, e82, 0.5*x[74]-x[110] <= 0.0)
@constraint(m, e83, 0.5*x[76]+x[111] <= 5.0)
@constraint(m, e84, 0.5*x[76]-x[111] <= 0.0)
@constraint(m, e85, 0.5*x[78]+x[112] <= 20.0)
@constraint(m, e86, 0.5*x[78]-x[112] <= 0.0)
@constraint(m, e87, 0.5*x[80]+x[113] <= 5.0)
@constraint(m, e88, 0.5*x[80]-x[113] <= 0.0)
@constraint(m, e89, -x[44]+x[54]-x[55] <= 0.0)
@constraint(m, e90, -x[44]-x[54]+x[55] <= 0.0)
@constraint(m, e91, -x[45]-x[56]+x[57] <= 0.0)
@constraint(m, e92, -x[45]+x[56]-x[57] <= 0.0)
@constraint(m, e93, -20*i[1]-20*i[2]-x[54]+x[55]+0.5*x[58]+0.5*x[59] <= 0.0)
@constraint(m, e94, -20*i[1]+20*i[2]+x[54]-x[55]+0.5*x[58]+0.5*x[59] <= 20.0)
@constraint(m, e95, 5*i[1]-5*i[2]+x[56]-x[57]+0.5*x[60]+0.5*x[61] <= 5.0)
@constraint(m, e96, 5*i[1]+5*i[2]-x[56]+x[57]+0.5*x[60]+0.5*x[61] <= 10.0)
@constraint(m, e97, x[54]-x[63]-x[104] <= 0.0)
@constraint(m, e98, -x[54]-x[63]+x[104] <= 0.0)
@constraint(m, e99, x[57]-x[65]-x[105] <= 0.0)
@constraint(m, e100, -x[57]-x[65]+x[105] <= 0.0)
@constraint(m, e101, -20*i[3]-20*i[4]-x[54]+0.5*x[58]+0.5*x[62]+x[104] <= 0.0)
@constraint(m, e102, -20*i[3]+20*i[4]+x[54]+0.5*x[58]+0.5*x[62]-x[104] <= 20.0)
@constraint(m, e103, 5*i[3]-5*i[4]-x[57]+0.5*x[60]+0.5*x[64]+x[105] <= 5.0)
@constraint(m, e104, 5*i[3]+5*i[4]+x[57]+0.5*x[60]+0.5*x[64]-x[105] <= 10.0)
@constraint(m, e105, x[54]-x[67]-x[106] <= 0.0)
@constraint(m, e106, -x[54]-x[67]+x[106] <= 0.0)
@constraint(m, e107, x[57]-x[69]-x[107] <= 0.0)
@constraint(m, e108, -x[57]-x[69]+x[107] <= 0.0)
@constraint(m, e109, -20*i[5]-20*i[6]-x[54]+0.5*x[58]+0.5*x[66]+x[106] <= 0.0)
@constraint(m, e110, -20*i[5]+20*i[6]+x[54]+0.5*x[58]+0.5*x[66]-x[106] <= 20.0)
@constraint(m, e111, 5*i[5]-5*i[6]-x[57]+0.5*x[60]+0.5*x[68]+x[107] <= 5.0)
@constraint(m, e112, 5*i[5]+5*i[6]+x[57]+0.5*x[60]+0.5*x[68]-x[107] <= 10.0)
@constraint(m, e113, x[54]-x[71]-x[108] <= 0.0)
@constraint(m, e114, -x[54]-x[71]+x[108] <= 0.0)
@constraint(m, e115, x[57]-x[73]-x[109] <= 0.0)
@constraint(m, e116, -x[57]-x[73]+x[109] <= 0.0)
@constraint(m, e117, -20*i[7]-20*i[8]-x[54]+0.5*x[58]+0.5*x[70]+x[108] <= 0.0)
@constraint(m, e118, -20*i[7]+20*i[8]+x[54]+0.5*x[58]+0.5*x[70]-x[108] <= 20.0)
@constraint(m, e119, 5*i[7]-5*i[8]-x[57]+0.5*x[60]+0.5*x[72]+x[109] <= 5.0)
@constraint(m, e120, 5*i[7]+5*i[8]+x[57]+0.5*x[60]+0.5*x[72]-x[109] <= 10.0)
@constraint(m, e121, x[54]-x[75]-x[110] <= 0.0)
@constraint(m, e122, -x[54]-x[75]+x[110] <= 0.0)
@constraint(m, e123, x[57]-x[77]-x[111] <= 0.0)
@constraint(m, e124, -x[57]-x[77]+x[111] <= 0.0)
@constraint(m, e125, -20*i[9]-20*i[10]-x[54]+0.5*x[58]+0.5*x[74]+x[110] <= 0.0)
@constraint(m, e126, -20*i[9]+20*i[10]+x[54]+0.5*x[58]+0.5*x[74]-x[110] <= 20.0)
@constraint(m, e127, 5*i[9]-5*i[10]-x[57]+0.5*x[60]+0.5*x[76]+x[111] <= 5.0)
@constraint(m, e128, 5*i[9]+5*i[10]+x[57]+0.5*x[60]+0.5*x[76]-x[111] <= 10.0)
@constraint(m, e129, x[54]-x[79]-x[112] <= 0.0)
@constraint(m, e130, -x[54]-x[79]+x[112] <= 0.0)
@constraint(m, e131, x[57]-x[81]-x[113] <= 0.0)
@constraint(m, e132, -x[57]-x[81]+x[113] <= 0.0)
@constraint(m, e133, -20*i[11]-20*i[12]-x[54]+0.5*x[58]+0.5*x[78]+x[112] <= 0.0)
@constraint(m, e134, -20*i[11]+20*i[12]+x[54]+0.5*x[58]+0.5*x[78]-x[112] <= 20.0)
@constraint(m, e135, 5*i[11]-5*i[12]-x[57]+0.5*x[60]+0.5*x[80]+x[113] <= 5.0)
@constraint(m, e136, 5*i[11]+5*i[12]+x[57]+0.5*x[60]+0.5*x[80]-x[113] <= 10.0)
@constraint(m, e137, x[55]-x[82]-x[104] <= 0.0)
@constraint(m, e138, -x[55]-x[82]+x[104] <= 0.0)
@constraint(m, e139, x[56]-x[83]-x[105] <= 0.0)
@constraint(m, e140, -x[56]-x[83]+x[105] <= 0.0)
@constraint(m, e141, -20*i[13]-20*i[14]-x[55]+0.5*x[59]+0.5*x[62]+x[104] <= 0.0)
@constraint(m, e142, -20*i[13]+20*i[14]+x[55]+0.5*x[59]+0.5*x[62]-x[104] <= 20.0)
@constraint(m, e143, 5*i[13]-5*i[14]-x[56]+0.5*x[61]+0.5*x[64]+x[105] <= 5.0)
@constraint(m, e144, 5*i[13]+5*i[14]+x[56]+0.5*x[61]+0.5*x[64]-x[105] <= 10.0)
@constraint(m, e145, x[55]-x[84]-x[106] <= 0.0)
@constraint(m, e146, -x[55]-x[84]+x[106] <= 0.0)
@constraint(m, e147, x[56]-x[85]-x[107] <= 0.0)
@constraint(m, e148, -x[56]-x[85]+x[107] <= 0.0)
@constraint(m, e149, -20*i[15]-20*i[16]-x[55]+0.5*x[59]+0.5*x[66]+x[106] <= 0.0)
@constraint(m, e150, -20*i[15]+20*i[16]+x[55]+0.5*x[59]+0.5*x[66]-x[106] <= 20.0)
@constraint(m, e151, 5*i[15]-5*i[16]-x[56]+0.5*x[61]+0.5*x[68]+x[107] <= 5.0)
@constraint(m, e152, 5*i[15]+5*i[16]+x[56]+0.5*x[61]+0.5*x[68]-x[107] <= 10.0)
@constraint(m, e153, x[55]-x[86]-x[108] <= 0.0)
@constraint(m, e154, -x[55]-x[86]+x[108] <= 0.0)
@constraint(m, e155, x[56]-x[87]-x[109] <= 0.0)
@constraint(m, e156, -x[56]-x[87]+x[109] <= 0.0)
@constraint(m, e157, -20*i[17]-20*i[18]-x[55]+0.5*x[59]+0.5*x[70]+x[108] <= 0.0)
@constraint(m, e158, -20*i[17]+20*i[18]+x[55]+0.5*x[59]+0.5*x[70]-x[108] <= 20.0)
@constraint(m, e159, 5*i[17]-5*i[18]-x[56]+0.5*x[61]+0.5*x[72]+x[109] <= 5.0)
@constraint(m, e160, 5*i[17]+5*i[18]+x[56]+0.5*x[61]+0.5*x[72]-x[109] <= 10.0)
@constraint(m, e161, x[55]-x[88]-x[110] <= 0.0)
@constraint(m, e162, -x[55]-x[88]+x[110] <= 0.0)
@constraint(m, e163, x[56]-x[89]-x[111] <= 0.0)
@constraint(m, e164, -x[56]-x[89]+x[111] <= 0.0)
@constraint(m, e165, -20*i[19]-20*i[20]-x[55]+0.5*x[59]+0.5*x[74]+x[110] <= 0.0)
@constraint(m, e166, -20*i[19]+20*i[20]+x[55]+0.5*x[59]+0.5*x[74]-x[110] <= 20.0)
@constraint(m, e167, 5*i[19]-5*i[20]-x[56]+0.5*x[61]+0.5*x[76]+x[111] <= 5.0)
@constraint(m, e168, 5*i[19]+5*i[20]+x[56]+0.5*x[61]+0.5*x[76]-x[111] <= 10.0)
@constraint(m, e169, -x[46]+x[55]-x[112] <= 0.0)
@constraint(m, e170, -x[46]-x[55]+x[112] <= 0.0)
@constraint(m, e171, -x[47]+x[56]-x[113] <= 0.0)
@constraint(m, e172, -x[47]-x[56]+x[113] <= 0.0)
@constraint(m, e173, -20*i[21]-20*i[22]-x[55]+0.5*x[59]+0.5*x[78]+x[112] <= 0.0)
@constraint(m, e174, -20*i[21]+20*i[22]+x[55]+0.5*x[59]+0.5*x[78]-x[112] <= 20.0)
@constraint(m, e175, 5*i[21]-5*i[22]-x[56]+0.5*x[61]+0.5*x[80]+x[113] <= 5.0)
@constraint(m, e176, 5*i[21]+5*i[22]+x[56]+0.5*x[61]+0.5*x[80]-x[113] <= 10.0)
@constraint(m, e177, -x[48]+x[104]-x[106] <= 0.0)
@constraint(m, e178, -x[48]-x[104]+x[106] <= 0.0)
@constraint(m, e179, -x[49]+x[105]-x[107] <= 0.0)
@constraint(m, e180, -x[49]-x[105]+x[107] <= 0.0)
@constraint(m, e181, -20*i[23]-20*i[24]+0.5*x[62]+0.5*x[66]-x[104]+x[106] <= 0.0)
@constraint(m, e182, -20*i[23]+20*i[24]+0.5*x[62]+0.5*x[66]+x[104]-x[106] <= 20.0)
@constraint(m, e183, 5*i[23]-5*i[24]+0.5*x[64]+0.5*x[68]-x[105]+x[107] <= 5.0)
@constraint(m, e184, 5*i[23]+5*i[24]+0.5*x[64]+0.5*x[68]+x[105]-x[107] <= 10.0)
@constraint(m, e185, -x[90]+x[104]-x[108] <= 0.0)
@constraint(m, e186, -x[90]-x[104]+x[108] <= 0.0)
@constraint(m, e187, -x[91]+x[105]-x[109] <= 0.0)
@constraint(m, e188, -x[91]-x[105]+x[109] <= 0.0)
@constraint(m, e189, -20*i[25]-20*i[26]+0.5*x[62]+0.5*x[70]-x[104]+x[108] <= 0.0)
@constraint(m, e190, -20*i[25]+20*i[26]+0.5*x[62]+0.5*x[70]+x[104]-x[108] <= 20.0)
@constraint(m, e191, 5*i[25]-5*i[26]+0.5*x[64]+0.5*x[72]-x[105]+x[109] <= 5.0)
@constraint(m, e192, 5*i[25]+5*i[26]+0.5*x[64]+0.5*x[72]+x[105]-x[109] <= 10.0)
@constraint(m, e193, -x[92]+x[104]-x[110] <= 0.0)
@constraint(m, e194, -x[92]-x[104]+x[110] <= 0.0)
@constraint(m, e195, -x[93]+x[105]-x[111] <= 0.0)
@constraint(m, e196, -x[93]-x[105]+x[111] <= 0.0)
@constraint(m, e197, -20*i[27]-20*i[28]+0.5*x[62]+0.5*x[74]-x[104]+x[110] <= 0.0)
@constraint(m, e198, -20*i[27]+20*i[28]+0.5*x[62]+0.5*x[74]+x[104]-x[110] <= 20.0)
@constraint(m, e199, 5*i[27]-5*i[28]+0.5*x[64]+0.5*x[76]-x[105]+x[111] <= 5.0)
@constraint(m, e200, 5*i[27]+5*i[28]+0.5*x[64]+0.5*x[76]+x[105]-x[111] <= 10.0)
@constraint(m, e201, -x[94]+x[104]-x[112] <= 0.0)
@constraint(m, e202, -x[94]-x[104]+x[112] <= 0.0)
@constraint(m, e203, -x[95]+x[105]-x[113] <= 0.0)
@constraint(m, e204, -x[95]-x[105]+x[113] <= 0.0)
@constraint(m, e205, -20*i[29]-20*i[30]+0.5*x[62]+0.5*x[78]-x[104]+x[112] <= 0.0)
@constraint(m, e206, -20*i[29]+20*i[30]+0.5*x[62]+0.5*x[78]+x[104]-x[112] <= 20.0)
@constraint(m, e207, 5*i[29]-5*i[30]+0.5*x[64]+0.5*x[80]-x[105]+x[113] <= 5.0)
@constraint(m, e208, 5*i[29]+5*i[30]+0.5*x[64]+0.5*x[80]+x[105]-x[113] <= 10.0)
@constraint(m, e209, -x[96]+x[106]-x[108] <= 0.0)
@constraint(m, e210, -x[96]-x[106]+x[108] <= 0.0)
@constraint(m, e211, -x[97]+x[107]-x[109] <= 0.0)
@constraint(m, e212, -x[97]-x[107]+x[109] <= 0.0)
@constraint(m, e213, -20*i[31]-20*i[32]+0.5*x[66]+0.5*x[70]-x[106]+x[108] <= 0.0)
@constraint(m, e214, -20*i[31]+20*i[32]+0.5*x[66]+0.5*x[70]+x[106]-x[108] <= 20.0)
@constraint(m, e215, 5*i[31]-5*i[32]+0.5*x[68]+0.5*x[72]-x[107]+x[109] <= 5.0)
@constraint(m, e216, 5*i[31]+5*i[32]+0.5*x[68]+0.5*x[72]+x[107]-x[109] <= 10.0)
@constraint(m, e217, -x[50]+x[106]-x[110] <= 0.0)
@constraint(m, e218, -x[50]-x[106]+x[110] <= 0.0)
@constraint(m, e219, -x[51]+x[107]-x[111] <= 0.0)
@constraint(m, e220, -x[51]-x[107]+x[111] <= 0.0)
@constraint(m, e221, -20*i[33]-20*i[34]+0.5*x[66]+0.5*x[74]-x[106]+x[110] <= 0.0)
@constraint(m, e222, -20*i[33]+20*i[34]+0.5*x[66]+0.5*x[74]+x[106]-x[110] <= 20.0)
@constraint(m, e223, 5*i[33]-5*i[34]+0.5*x[68]+0.5*x[76]-x[107]+x[111] <= 5.0)
@constraint(m, e224, 5*i[33]+5*i[34]+0.5*x[68]+0.5*x[76]+x[107]-x[111] <= 10.0)
@constraint(m, e225, -x[98]+x[106]-x[112] <= 0.0)
@constraint(m, e226, -x[98]-x[106]+x[112] <= 0.0)
@constraint(m, e227, -x[99]+x[107]-x[113] <= 0.0)
@constraint(m, e228, -x[99]-x[107]+x[113] <= 0.0)
@constraint(m, e229, -20*i[35]-20*i[36]+0.5*x[66]+0.5*x[78]-x[106]+x[112] <= 0.0)
@constraint(m, e230, -20*i[35]+20*i[36]+0.5*x[66]+0.5*x[78]+x[106]-x[112] <= 20.0)
@constraint(m, e231, 5*i[35]-5*i[36]+0.5*x[68]+0.5*x[80]-x[107]+x[113] <= 5.0)
@constraint(m, e232, 5*i[35]+5*i[36]+0.5*x[68]+0.5*x[80]+x[107]-x[113] <= 10.0)
@constraint(m, e233, -x[52]+x[108]-x[110] <= 0.0)
@constraint(m, e234, -x[52]-x[108]+x[110] <= 0.0)
@constraint(m, e235, -x[53]+x[109]-x[111] <= 0.0)
@constraint(m, e236, -x[53]-x[109]+x[111] <= 0.0)
@constraint(m, e237, -20*i[37]-20*i[38]+0.5*x[70]+0.5*x[74]-x[108]+x[110] <= 0.0)
@constraint(m, e238, -20*i[37]+20*i[38]+0.5*x[70]+0.5*x[74]+x[108]-x[110] <= 20.0)
@constraint(m, e239, 5*i[37]-5*i[38]+0.5*x[72]+0.5*x[76]-x[109]+x[111] <= 5.0)
@constraint(m, e240, 5*i[37]+5*i[38]+0.5*x[72]+0.5*x[76]+x[109]-x[111] <= 10.0)
@constraint(m, e241, -x[100]+x[108]-x[112] <= 0.0)
@constraint(m, e242, -x[100]-x[108]+x[112] <= 0.0)
@constraint(m, e243, -x[101]+x[109]-x[113] <= 0.0)
@constraint(m, e244, -x[101]-x[109]+x[113] <= 0.0)
@constraint(m, e245, -20*i[39]-20*i[40]+0.5*x[70]+0.5*x[78]-x[108]+x[112] <= 0.0)
@constraint(m, e246, -20*i[39]+20*i[40]+0.5*x[70]+0.5*x[78]+x[108]-x[112] <= 20.0)
@constraint(m, e247, 5*i[39]-5*i[40]+0.5*x[72]+0.5*x[80]-x[109]+x[113] <= 5.0)
@constraint(m, e248, 5*i[39]+5*i[40]+0.5*x[72]+0.5*x[80]+x[109]-x[113] <= 10.0)
@constraint(m, e249, -x[102]+x[110]-x[112] <= 0.0)
@constraint(m, e250, -x[102]-x[110]+x[112] <= 0.0)
@constraint(m, e251, -x[103]+x[111]-x[113] <= 0.0)
@constraint(m, e252, -x[103]-x[111]+x[113] <= 0.0)
@constraint(m, e253, -20*i[41]-20*i[42]+0.5*x[74]+0.5*x[78]-x[110]+x[112] <= 0.0)
@constraint(m, e254, -20*i[41]+20*i[42]+0.5*x[74]+0.5*x[78]+x[110]-x[112] <= 20.0)
@constraint(m, e255, 5*i[41]-5*i[42]+0.5*x[76]+0.5*x[80]-x[111]+x[113] <= 5.0)
@constraint(m, e256, 5*i[41]+5*i[42]+0.5*x[76]+0.5*x[80]+x[111]-x[113] <= 10.0)
@NLconstraint(m, e257, 14/x[58]-x[60] <= 0.0)
@NLconstraint(m, e258, 14/x[60]-x[58] <= 0.0)
@NLconstraint(m, e259, 10/x[59]-x[61] <= 0.0)
@NLconstraint(m, e260, 10/x[61]-x[59] <= 0.0)
@NLconstraint(m, e261, 9/x[62]-x[64] <= 0.0)
@NLconstraint(m, e262, 9/x[64]-x[62] <= 0.0)
@NLconstraint(m, e263, 6/x[66]-x[68] <= 0.0)
@NLconstraint(m, e264, 6/x[68]-x[66] <= 0.0)
@NLconstraint(m, e265, 10/x[70]-x[72] <= 0.0)
@NLconstraint(m, e266, 10/x[72]-x[70] <= 0.0)
@NLconstraint(m, e267, 25/x[74]-x[76] <= 0.0)
@NLconstraint(m, e268, 25/x[76]-x[74] <= 0.0)
@NLconstraint(m, e269, 25/x[78]-x[80] <= 0.0)
@NLconstraint(m, e270, 25/x[80]-x[78] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
