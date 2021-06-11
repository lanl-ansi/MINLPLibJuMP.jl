using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
@variable(m, i[i_Idx] <= 100, Int)
set_lower_bound(x[60], 1.7889)
set_upper_bound(x[60], 8.54)
set_lower_bound(x[61], 1.7889)
set_upper_bound(x[61], 8.54)
set_lower_bound(x[62], 1.8735)
set_upper_bound(x[62], 8.9443)
set_lower_bound(x[63], 1.8735)
set_upper_bound(x[63], 8.9443)
set_lower_bound(x[64], 1.7889)
set_upper_bound(x[64], 8.54)
set_lower_bound(x[66], 1.8735)
set_upper_bound(x[66], 8.9443)
set_lower_bound(x[68], 2.7692)
set_upper_bound(x[68], 8.54)
set_lower_bound(x[70], 4.2155)
set_upper_bound(x[70], 13.0)
set_lower_bound(x[72], 1.3416)
set_upper_bound(x[72], 6.7082)
set_lower_bound(x[74], 1.3416)
set_upper_bound(x[74], 6.7082)
set_lower_bound(x[76], 1.3416)
set_upper_bound(x[76], 6.7082)
set_lower_bound(x[78], 1.3416)
set_upper_bound(x[78], 6.7082)
set_lower_bound(x[80], 1.3416)
set_upper_bound(x[80], 6.7082)
set_lower_bound(x[82], 1.3416)
set_upper_bound(x[82], 6.7082)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[50]-x[51]-x[52]-x[53]-x[54]-x[55] == 0.0)
@constraint(m, e2, x[56]-x[57] >= 0.0)
@constraint(m, e3, x[58]-x[59] >= 0.0)
@constraint(m, e4, i[1]-i[2] == 0.0)
@constraint(m, e5, -8.54*i[1]-x[44]+0.5*x[60]+0.5*x[61] <= 0.0)
@constraint(m, e6, 13*i[1]-x[45]+0.5*x[62]+0.5*x[63] <= 13.0)
@constraint(m, e7, -8.54*i[3]+0.5*x[60]+0.5*x[64]-x[65] <= 0.0)
@constraint(m, e8, 13*i[3]+0.5*x[62]+0.5*x[66]-x[67] <= 13.0)
@constraint(m, e9, -8.54*i[5]+0.5*x[60]+0.5*x[68]-x[69] <= 0.0)
@constraint(m, e10, 13*i[5]+0.5*x[62]+0.5*x[70]-x[71] <= 13.0)
@constraint(m, e11, -8.54*i[7]+0.5*x[60]+0.5*x[72]-x[73] <= 0.0)
@constraint(m, e12, 13*i[7]+0.5*x[62]+0.5*x[74]-x[75] <= 13.0)
@constraint(m, e13, -8.54*i[9]+0.5*x[60]+0.5*x[76]-x[77] <= 0.0)
@constraint(m, e14, 13*i[9]+0.5*x[62]+0.5*x[78]-x[79] <= 13.0)
@constraint(m, e15, -8.54*i[11]+0.5*x[60]+0.5*x[80]-x[81] <= 0.0)
@constraint(m, e16, 13*i[11]+0.5*x[62]+0.5*x[82]-x[83] <= 13.0)
@constraint(m, e17, -8.54*i[13]-x[46]+0.5*x[61]+0.5*x[64] <= 0.0)
@constraint(m, e18, 13*i[13]-x[47]+0.5*x[63]+0.5*x[66] <= 13.0)
@constraint(m, e19, -8.54*i[15]+0.5*x[61]+0.5*x[68]-x[84] <= 0.0)
@constraint(m, e20, 13*i[15]+0.5*x[63]+0.5*x[70]-x[85] <= 13.0)
@constraint(m, e21, -8.54*i[17]+0.5*x[61]+0.5*x[72]-x[86] <= 0.0)
@constraint(m, e22, 13*i[17]+0.5*x[63]+0.5*x[74]-x[87] <= 13.0)
@constraint(m, e23, -8.54*i[19]+0.5*x[61]+0.5*x[76]-x[88] <= 0.0)
@constraint(m, e24, 13*i[19]+0.5*x[63]+0.5*x[78]-x[89] <= 13.0)
@constraint(m, e25, -8.54*i[21]+0.5*x[61]+0.5*x[80]-x[90] <= 0.0)
@constraint(m, e26, 13*i[21]+0.5*x[63]+0.5*x[82]-x[91] <= 13.0)
@constraint(m, e27, -8.54*i[23]-x[48]+0.5*x[64]+0.5*x[68] <= 0.0)
@constraint(m, e28, 13*i[23]-x[49]+0.5*x[66]+0.5*x[70] <= 13.0)
@constraint(m, e29, -8.54*i[25]+0.5*x[64]+0.5*x[72]-x[92] <= 0.0)
@constraint(m, e30, 13*i[25]+0.5*x[66]+0.5*x[74]-x[93] <= 13.0)
@constraint(m, e31, -8.54*i[27]+0.5*x[64]+0.5*x[76]-x[94] <= 0.0)
@constraint(m, e32, 13*i[27]+0.5*x[66]+0.5*x[78]-x[95] <= 13.0)
@constraint(m, e33, -8.54*i[29]+0.5*x[64]+0.5*x[80]-x[96] <= 0.0)
@constraint(m, e34, 13*i[29]+0.5*x[66]+0.5*x[82]-x[97] <= 13.0)
@constraint(m, e35, -8.54*i[31]-x[50]+0.5*x[68]+0.5*x[72] <= 0.0)
@constraint(m, e36, 13*i[31]-x[51]+0.5*x[70]+0.5*x[74] <= 13.0)
@constraint(m, e37, -8.54*i[33]+0.5*x[68]+0.5*x[76]-x[98] <= 0.0)
@constraint(m, e38, 13*i[33]+0.5*x[70]+0.5*x[78]-x[99] <= 13.0)
@constraint(m, e39, -8.54*i[35]+0.5*x[68]+0.5*x[80]-x[100] <= 0.0)
@constraint(m, e40, 13*i[35]+0.5*x[70]+0.5*x[82]-x[101] <= 13.0)
@constraint(m, e41, -8.54*i[37]-x[52]+0.5*x[72]+0.5*x[76] <= 0.0)
@constraint(m, e42, 13*i[37]-x[53]+0.5*x[74]+0.5*x[78] <= 13.0)
@constraint(m, e43, -8.54*i[39]+0.5*x[72]+0.5*x[80]-x[102] <= 0.0)
@constraint(m, e44, 13*i[39]+0.5*x[74]+0.5*x[82]-x[103] <= 13.0)
@constraint(m, e45, -8.54*i[41]-x[54]+0.5*x[76]+0.5*x[80] <= 0.0)
@constraint(m, e46, 13*i[41]-x[55]+0.5*x[78]+0.5*x[82] <= 13.0)
@constraint(m, e47, -0.559003*x[60]-0.111806*x[62] <= -2.0)
@constraint(m, e48, -0.117096*x[60]-0.53375*x[62] <= -2.0)
@constraint(m, e49, -0.559003*x[61]-0.111806*x[63] <= -2.0)
@constraint(m, e50, -0.117096*x[61]-0.53375*x[63] <= -2.0)
@constraint(m, e51, -0.559003*x[64]-0.111806*x[66] <= -2.0)
@constraint(m, e52, -0.117096*x[64]-0.53375*x[66] <= -2.0)
@constraint(m, e53, -0.361115*x[68]-0.076922*x[70] <= -2.0)
@constraint(m, e54, -0.117096*x[68]-0.237222*x[70] <= -2.0)
@constraint(m, e55, -0.745379*x[72]-0.149067*x[74] <= -2.0)
@constraint(m, e56, -0.149071*x[72]-0.745356*x[74] <= -2.0)
@constraint(m, e57, -0.745379*x[76]-0.149067*x[78] <= -2.0)
@constraint(m, e58, -0.149071*x[76]-0.745356*x[78] <= -2.0)
@constraint(m, e59, -0.745379*x[80]-0.149067*x[82] <= -2.0)
@constraint(m, e60, -0.149071*x[80]-0.745356*x[82] <= -2.0)
@constraint(m, e61, x[56]+0.5*x[60] <= 8.54)
@constraint(m, e62, -x[56]+0.5*x[60] <= 0.0)
@constraint(m, e63, x[59]+0.5*x[62] <= 13.0)
@constraint(m, e64, -x[59]+0.5*x[62] <= 0.0)
@constraint(m, e65, x[57]+0.5*x[61] <= 8.54)
@constraint(m, e66, -x[57]+0.5*x[61] <= 0.0)
@constraint(m, e67, x[58]+0.5*x[63] <= 13.0)
@constraint(m, e68, -x[58]+0.5*x[63] <= 0.0)
@constraint(m, e69, 0.5*x[64]+x[104] <= 8.54)
@constraint(m, e70, 0.5*x[64]-x[104] <= 0.0)
@constraint(m, e71, 0.5*x[66]+x[105] <= 13.0)
@constraint(m, e72, 0.5*x[66]-x[105] <= 0.0)
@constraint(m, e73, 0.5*x[68]+x[106] <= 8.54)
@constraint(m, e74, 0.5*x[68]-x[106] <= 0.0)
@constraint(m, e75, 0.5*x[70]+x[107] <= 13.0)
@constraint(m, e76, 0.5*x[70]-x[107] <= 0.0)
@constraint(m, e77, 0.5*x[72]+x[108] <= 8.54)
@constraint(m, e78, 0.5*x[72]-x[108] <= 0.0)
@constraint(m, e79, 0.5*x[74]+x[109] <= 13.0)
@constraint(m, e80, 0.5*x[74]-x[109] <= 0.0)
@constraint(m, e81, 0.5*x[76]+x[110] <= 8.54)
@constraint(m, e82, 0.5*x[76]-x[110] <= 0.0)
@constraint(m, e83, 0.5*x[78]+x[111] <= 13.0)
@constraint(m, e84, 0.5*x[78]-x[111] <= 0.0)
@constraint(m, e85, 0.5*x[80]+x[112] <= 8.54)
@constraint(m, e86, 0.5*x[80]-x[112] <= 0.0)
@constraint(m, e87, 0.5*x[82]+x[113] <= 13.0)
@constraint(m, e88, 0.5*x[82]-x[113] <= 0.0)
@constraint(m, e89, -x[44]+x[56]-x[57] <= 0.0)
@constraint(m, e90, -x[44]-x[56]+x[57] <= 0.0)
@constraint(m, e91, -x[45]-x[58]+x[59] <= 0.0)
@constraint(m, e92, -x[45]+x[58]-x[59] <= 0.0)
@constraint(m, e93, -8.54*i[1]-8.54*i[2]-x[56]+x[57]+0.5*x[60]+0.5*x[61] <= 0.0)
@constraint(m, e94, -8.54*i[1]+8.54*i[2]+x[56]-x[57]+0.5*x[60]+0.5*x[61] <= 8.54)
@constraint(m, e95, 13*i[1]-13*i[2]+x[58]-x[59]+0.5*x[62]+0.5*x[63] <= 13.0)
@constraint(m, e96, 13*i[1]+13*i[2]-x[58]+x[59]+0.5*x[62]+0.5*x[63] <= 26.0)
@constraint(m, e97, x[56]-x[65]-x[104] <= 0.0)
@constraint(m, e98, -x[56]-x[65]+x[104] <= 0.0)
@constraint(m, e99, x[59]-x[67]-x[105] <= 0.0)
@constraint(m, e100, -x[59]-x[67]+x[105] <= 0.0)
@constraint(m, e101, -8.54*i[3]-8.54*i[4]-x[56]+0.5*x[60]+0.5*x[64]+x[104] <= 0.0)
@constraint(m, e102, -8.54*i[3]+8.54*i[4]+x[56]+0.5*x[60]+0.5*x[64]-x[104] <= 8.54)
@constraint(m, e103, 13*i[3]-13*i[4]-x[59]+0.5*x[62]+0.5*x[66]+x[105] <= 13.0)
@constraint(m, e104, 13*i[3]+13*i[4]+x[59]+0.5*x[62]+0.5*x[66]-x[105] <= 26.0)
@constraint(m, e105, x[56]-x[69]-x[106] <= 0.0)
@constraint(m, e106, -x[56]-x[69]+x[106] <= 0.0)
@constraint(m, e107, x[59]-x[71]-x[107] <= 0.0)
@constraint(m, e108, -x[59]-x[71]+x[107] <= 0.0)
@constraint(m, e109, -8.54*i[5]-8.54*i[6]-x[56]+0.5*x[60]+0.5*x[68]+x[106] <= 0.0)
@constraint(m, e110, -8.54*i[5]+8.54*i[6]+x[56]+0.5*x[60]+0.5*x[68]-x[106] <= 8.54)
@constraint(m, e111, 13*i[5]-13*i[6]-x[59]+0.5*x[62]+0.5*x[70]+x[107] <= 13.0)
@constraint(m, e112, 13*i[5]+13*i[6]+x[59]+0.5*x[62]+0.5*x[70]-x[107] <= 26.0)
@constraint(m, e113, x[56]-x[73]-x[108] <= 0.0)
@constraint(m, e114, -x[56]-x[73]+x[108] <= 0.0)
@constraint(m, e115, x[59]-x[75]-x[109] <= 0.0)
@constraint(m, e116, -x[59]-x[75]+x[109] <= 0.0)
@constraint(m, e117, -8.54*i[7]-8.54*i[8]-x[56]+0.5*x[60]+0.5*x[72]+x[108] <= 0.0)
@constraint(m, e118, -8.54*i[7]+8.54*i[8]+x[56]+0.5*x[60]+0.5*x[72]-x[108] <= 8.54)
@constraint(m, e119, 13*i[7]-13*i[8]-x[59]+0.5*x[62]+0.5*x[74]+x[109] <= 13.0)
@constraint(m, e120, 13*i[7]+13*i[8]+x[59]+0.5*x[62]+0.5*x[74]-x[109] <= 26.0)
@constraint(m, e121, x[56]-x[77]-x[110] <= 0.0)
@constraint(m, e122, -x[56]-x[77]+x[110] <= 0.0)
@constraint(m, e123, x[59]-x[79]-x[111] <= 0.0)
@constraint(m, e124, -x[59]-x[79]+x[111] <= 0.0)
@constraint(m, e125, -8.54*i[9]-8.54*i[10]-x[56]+0.5*x[60]+0.5*x[76]+x[110] <= 0.0)
@constraint(m, e126, -8.54*i[9]+8.54*i[10]+x[56]+0.5*x[60]+0.5*x[76]-x[110] <= 8.54)
@constraint(m, e127, 13*i[9]-13*i[10]-x[59]+0.5*x[62]+0.5*x[78]+x[111] <= 13.0)
@constraint(m, e128, 13*i[9]+13*i[10]+x[59]+0.5*x[62]+0.5*x[78]-x[111] <= 26.0)
@constraint(m, e129, x[56]-x[81]-x[112] <= 0.0)
@constraint(m, e130, -x[56]-x[81]+x[112] <= 0.0)
@constraint(m, e131, x[59]-x[83]-x[113] <= 0.0)
@constraint(m, e132, -x[59]-x[83]+x[113] <= 0.0)
@constraint(m, e133, -8.54*i[11]-8.54*i[12]-x[56]+0.5*x[60]+0.5*x[80]+x[112] <= 0.0)
@constraint(m, e134, -8.54*i[11]+8.54*i[12]+x[56]+0.5*x[60]+0.5*x[80]-x[112] <= 8.54)
@constraint(m, e135, 13*i[11]-13*i[12]-x[59]+0.5*x[62]+0.5*x[82]+x[113] <= 13.0)
@constraint(m, e136, 13*i[11]+13*i[12]+x[59]+0.5*x[62]+0.5*x[82]-x[113] <= 26.0)
@constraint(m, e137, -x[46]+x[57]-x[104] <= 0.0)
@constraint(m, e138, -x[46]-x[57]+x[104] <= 0.0)
@constraint(m, e139, -x[47]+x[58]-x[105] <= 0.0)
@constraint(m, e140, -x[47]-x[58]+x[105] <= 0.0)
@constraint(m, e141, -8.54*i[13]-8.54*i[14]-x[57]+0.5*x[61]+0.5*x[64]+x[104] <= 0.0)
@constraint(m, e142, -8.54*i[13]+8.54*i[14]+x[57]+0.5*x[61]+0.5*x[64]-x[104] <= 8.54)
@constraint(m, e143, 13*i[13]-13*i[14]-x[58]+0.5*x[63]+0.5*x[66]+x[105] <= 13.0)
@constraint(m, e144, 13*i[13]+13*i[14]+x[58]+0.5*x[63]+0.5*x[66]-x[105] <= 26.0)
@constraint(m, e145, x[57]-x[84]-x[106] <= 0.0)
@constraint(m, e146, -x[57]-x[84]+x[106] <= 0.0)
@constraint(m, e147, x[58]-x[85]-x[107] <= 0.0)
@constraint(m, e148, -x[58]-x[85]+x[107] <= 0.0)
@constraint(m, e149, -8.54*i[15]-8.54*i[16]-x[57]+0.5*x[61]+0.5*x[68]+x[106] <= 0.0)
@constraint(m, e150, -8.54*i[15]+8.54*i[16]+x[57]+0.5*x[61]+0.5*x[68]-x[106] <= 8.54)
@constraint(m, e151, 13*i[15]-13*i[16]-x[58]+0.5*x[63]+0.5*x[70]+x[107] <= 13.0)
@constraint(m, e152, 13*i[15]+13*i[16]+x[58]+0.5*x[63]+0.5*x[70]-x[107] <= 26.0)
@constraint(m, e153, x[57]-x[86]-x[108] <= 0.0)
@constraint(m, e154, -x[57]-x[86]+x[108] <= 0.0)
@constraint(m, e155, x[58]-x[87]-x[109] <= 0.0)
@constraint(m, e156, -x[58]-x[87]+x[109] <= 0.0)
@constraint(m, e157, -8.54*i[17]-8.54*i[18]-x[57]+0.5*x[61]+0.5*x[72]+x[108] <= 0.0)
@constraint(m, e158, -8.54*i[17]+8.54*i[18]+x[57]+0.5*x[61]+0.5*x[72]-x[108] <= 8.54)
@constraint(m, e159, 13*i[17]-13*i[18]-x[58]+0.5*x[63]+0.5*x[74]+x[109] <= 13.0)
@constraint(m, e160, 13*i[17]+13*i[18]+x[58]+0.5*x[63]+0.5*x[74]-x[109] <= 26.0)
@constraint(m, e161, x[57]-x[88]-x[110] <= 0.0)
@constraint(m, e162, -x[57]-x[88]+x[110] <= 0.0)
@constraint(m, e163, x[58]-x[89]-x[111] <= 0.0)
@constraint(m, e164, -x[58]-x[89]+x[111] <= 0.0)
@constraint(m, e165, -8.54*i[19]-8.54*i[20]-x[57]+0.5*x[61]+0.5*x[76]+x[110] <= 0.0)
@constraint(m, e166, -8.54*i[19]+8.54*i[20]+x[57]+0.5*x[61]+0.5*x[76]-x[110] <= 8.54)
@constraint(m, e167, 13*i[19]-13*i[20]-x[58]+0.5*x[63]+0.5*x[78]+x[111] <= 13.0)
@constraint(m, e168, 13*i[19]+13*i[20]+x[58]+0.5*x[63]+0.5*x[78]-x[111] <= 26.0)
@constraint(m, e169, x[57]-x[90]-x[112] <= 0.0)
@constraint(m, e170, -x[57]-x[90]+x[112] <= 0.0)
@constraint(m, e171, x[58]-x[91]-x[113] <= 0.0)
@constraint(m, e172, -x[58]-x[91]+x[113] <= 0.0)
@constraint(m, e173, -8.54*i[21]-8.54*i[22]-x[57]+0.5*x[61]+0.5*x[80]+x[112] <= 0.0)
@constraint(m, e174, -8.54*i[21]+8.54*i[22]+x[57]+0.5*x[61]+0.5*x[80]-x[112] <= 8.54)
@constraint(m, e175, 13*i[21]-13*i[22]-x[58]+0.5*x[63]+0.5*x[82]+x[113] <= 13.0)
@constraint(m, e176, 13*i[21]+13*i[22]+x[58]+0.5*x[63]+0.5*x[82]-x[113] <= 26.0)
@constraint(m, e177, -x[48]+x[104]-x[106] <= 0.0)
@constraint(m, e178, -x[48]-x[104]+x[106] <= 0.0)
@constraint(m, e179, -x[49]+x[105]-x[107] <= 0.0)
@constraint(m, e180, -x[49]-x[105]+x[107] <= 0.0)
@constraint(m, e181, -8.54*i[23]-8.54*i[24]+0.5*x[64]+0.5*x[68]-x[104]+x[106] <= 0.0)
@constraint(m, e182, -8.54*i[23]+8.54*i[24]+0.5*x[64]+0.5*x[68]+x[104]-x[106] <= 8.54)
@constraint(m, e183, 13*i[23]-13*i[24]+0.5*x[66]+0.5*x[70]-x[105]+x[107] <= 13.0)
@constraint(m, e184, 13*i[23]+13*i[24]+0.5*x[66]+0.5*x[70]+x[105]-x[107] <= 26.0)
@constraint(m, e185, -x[92]+x[104]-x[108] <= 0.0)
@constraint(m, e186, -x[92]-x[104]+x[108] <= 0.0)
@constraint(m, e187, -x[93]+x[105]-x[109] <= 0.0)
@constraint(m, e188, -x[93]-x[105]+x[109] <= 0.0)
@constraint(m, e189, -8.54*i[25]-8.54*i[26]+0.5*x[64]+0.5*x[72]-x[104]+x[108] <= 0.0)
@constraint(m, e190, -8.54*i[25]+8.54*i[26]+0.5*x[64]+0.5*x[72]+x[104]-x[108] <= 8.54)
@constraint(m, e191, 13*i[25]-13*i[26]+0.5*x[66]+0.5*x[74]-x[105]+x[109] <= 13.0)
@constraint(m, e192, 13*i[25]+13*i[26]+0.5*x[66]+0.5*x[74]+x[105]-x[109] <= 26.0)
@constraint(m, e193, -x[94]+x[104]-x[110] <= 0.0)
@constraint(m, e194, -x[94]-x[104]+x[110] <= 0.0)
@constraint(m, e195, -x[95]+x[105]-x[111] <= 0.0)
@constraint(m, e196, -x[95]-x[105]+x[111] <= 0.0)
@constraint(m, e197, -8.54*i[27]-8.54*i[28]+0.5*x[64]+0.5*x[76]-x[104]+x[110] <= 0.0)
@constraint(m, e198, -8.54*i[27]+8.54*i[28]+0.5*x[64]+0.5*x[76]+x[104]-x[110] <= 8.54)
@constraint(m, e199, 13*i[27]-13*i[28]+0.5*x[66]+0.5*x[78]-x[105]+x[111] <= 13.0)
@constraint(m, e200, 13*i[27]+13*i[28]+0.5*x[66]+0.5*x[78]+x[105]-x[111] <= 26.0)
@constraint(m, e201, -x[96]+x[104]-x[112] <= 0.0)
@constraint(m, e202, -x[96]-x[104]+x[112] <= 0.0)
@constraint(m, e203, -x[97]+x[105]-x[113] <= 0.0)
@constraint(m, e204, -x[97]-x[105]+x[113] <= 0.0)
@constraint(m, e205, -8.54*i[29]-8.54*i[30]+0.5*x[64]+0.5*x[80]-x[104]+x[112] <= 0.0)
@constraint(m, e206, -8.54*i[29]+8.54*i[30]+0.5*x[64]+0.5*x[80]+x[104]-x[112] <= 8.54)
@constraint(m, e207, 13*i[29]-13*i[30]+0.5*x[66]+0.5*x[82]-x[105]+x[113] <= 13.0)
@constraint(m, e208, 13*i[29]+13*i[30]+0.5*x[66]+0.5*x[82]+x[105]-x[113] <= 26.0)
@constraint(m, e209, -x[50]+x[106]-x[108] <= 0.0)
@constraint(m, e210, -x[50]-x[106]+x[108] <= 0.0)
@constraint(m, e211, -x[51]+x[107]-x[109] <= 0.0)
@constraint(m, e212, -x[51]-x[107]+x[109] <= 0.0)
@constraint(m, e213, -8.54*i[31]-8.54*i[32]+0.5*x[68]+0.5*x[72]-x[106]+x[108] <= 0.0)
@constraint(m, e214, -8.54*i[31]+8.54*i[32]+0.5*x[68]+0.5*x[72]+x[106]-x[108] <= 8.54)
@constraint(m, e215, 13*i[31]-13*i[32]+0.5*x[70]+0.5*x[74]-x[107]+x[109] <= 13.0)
@constraint(m, e216, 13*i[31]+13*i[32]+0.5*x[70]+0.5*x[74]+x[107]-x[109] <= 26.0)
@constraint(m, e217, -x[98]+x[106]-x[110] <= 0.0)
@constraint(m, e218, -x[98]-x[106]+x[110] <= 0.0)
@constraint(m, e219, -x[99]+x[107]-x[111] <= 0.0)
@constraint(m, e220, -x[99]-x[107]+x[111] <= 0.0)
@constraint(m, e221, -8.54*i[33]-8.54*i[34]+0.5*x[68]+0.5*x[76]-x[106]+x[110] <= 0.0)
@constraint(m, e222, -8.54*i[33]+8.54*i[34]+0.5*x[68]+0.5*x[76]+x[106]-x[110] <= 8.54)
@constraint(m, e223, 13*i[33]-13*i[34]+0.5*x[70]+0.5*x[78]-x[107]+x[111] <= 13.0)
@constraint(m, e224, 13*i[33]+13*i[34]+0.5*x[70]+0.5*x[78]+x[107]-x[111] <= 26.0)
@constraint(m, e225, -x[100]+x[106]-x[112] <= 0.0)
@constraint(m, e226, -x[100]-x[106]+x[112] <= 0.0)
@constraint(m, e227, -x[101]+x[107]-x[113] <= 0.0)
@constraint(m, e228, -x[101]-x[107]+x[113] <= 0.0)
@constraint(m, e229, -8.54*i[35]-8.54*i[36]+0.5*x[68]+0.5*x[80]-x[106]+x[112] <= 0.0)
@constraint(m, e230, -8.54*i[35]+8.54*i[36]+0.5*x[68]+0.5*x[80]+x[106]-x[112] <= 8.54)
@constraint(m, e231, 13*i[35]-13*i[36]+0.5*x[70]+0.5*x[82]-x[107]+x[113] <= 13.0)
@constraint(m, e232, 13*i[35]+13*i[36]+0.5*x[70]+0.5*x[82]+x[107]-x[113] <= 26.0)
@constraint(m, e233, -x[52]+x[108]-x[110] <= 0.0)
@constraint(m, e234, -x[52]-x[108]+x[110] <= 0.0)
@constraint(m, e235, -x[53]+x[109]-x[111] <= 0.0)
@constraint(m, e236, -x[53]-x[109]+x[111] <= 0.0)
@constraint(m, e237, -8.54*i[37]-8.54*i[38]+0.5*x[72]+0.5*x[76]-x[108]+x[110] <= 0.0)
@constraint(m, e238, -8.54*i[37]+8.54*i[38]+0.5*x[72]+0.5*x[76]+x[108]-x[110] <= 8.54)
@constraint(m, e239, 13*i[37]-13*i[38]+0.5*x[74]+0.5*x[78]-x[109]+x[111] <= 13.0)
@constraint(m, e240, 13*i[37]+13*i[38]+0.5*x[74]+0.5*x[78]+x[109]-x[111] <= 26.0)
@constraint(m, e241, -x[102]+x[108]-x[112] <= 0.0)
@constraint(m, e242, -x[102]-x[108]+x[112] <= 0.0)
@constraint(m, e243, -x[103]+x[109]-x[113] <= 0.0)
@constraint(m, e244, -x[103]-x[109]+x[113] <= 0.0)
@constraint(m, e245, -8.54*i[39]-8.54*i[40]+0.5*x[72]+0.5*x[80]-x[108]+x[112] <= 0.0)
@constraint(m, e246, -8.54*i[39]+8.54*i[40]+0.5*x[72]+0.5*x[80]+x[108]-x[112] <= 8.54)
@constraint(m, e247, 13*i[39]-13*i[40]+0.5*x[74]+0.5*x[82]-x[109]+x[113] <= 13.0)
@constraint(m, e248, 13*i[39]+13*i[40]+0.5*x[74]+0.5*x[82]+x[109]-x[113] <= 26.0)
@constraint(m, e249, -x[54]+x[110]-x[112] <= 0.0)
@constraint(m, e250, -x[54]-x[110]+x[112] <= 0.0)
@constraint(m, e251, -x[55]+x[111]-x[113] <= 0.0)
@constraint(m, e252, -x[55]-x[111]+x[113] <= 0.0)
@constraint(m, e253, -8.54*i[41]-8.54*i[42]+0.5*x[76]+0.5*x[80]-x[110]+x[112] <= 0.0)
@constraint(m, e254, -8.54*i[41]+8.54*i[42]+0.5*x[76]+0.5*x[80]+x[110]-x[112] <= 8.54)
@constraint(m, e255, 13*i[41]-13*i[42]+0.5*x[78]+0.5*x[82]-x[111]+x[113] <= 13.0)
@constraint(m, e256, 13*i[41]+13*i[42]+0.5*x[78]+0.5*x[82]+x[111]-x[113] <= 26.0)
@NLconstraint(m, e257, 16/x[60]-x[62] <= 0.0)
@NLconstraint(m, e258, 16/x[62]-x[60] <= 0.0)
@NLconstraint(m, e259, 16/x[61]-x[63] <= 0.0)
@NLconstraint(m, e260, 16/x[63]-x[61] <= 0.0)
@NLconstraint(m, e261, 16/x[64]-x[66] <= 0.0)
@NLconstraint(m, e262, 16/x[66]-x[64] <= 0.0)
@NLconstraint(m, e263, 36/x[68]-x[70] <= 0.0)
@NLconstraint(m, e264, 36/x[70]-x[68] <= 0.0)
@NLconstraint(m, e265, 9/x[72]-x[74] <= 0.0)
@NLconstraint(m, e266, 9/x[74]-x[72] <= 0.0)
@NLconstraint(m, e267, 9/x[76]-x[78] <= 0.0)
@NLconstraint(m, e268, 9/x[78]-x[76] <= 0.0)
@NLconstraint(m, e269, 9/x[80]-x[82] <= 0.0)
@NLconstraint(m, e270, 9/x[82]-x[80] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
