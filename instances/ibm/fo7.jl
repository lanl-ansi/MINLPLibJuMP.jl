using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115]
@variable(m, x[x_Idx])
set_lower_bound(x[86], 2.0)
set_upper_bound(x[86], 8.0)
set_lower_bound(x[87], 2.0)
set_upper_bound(x[87], 8.0)
set_lower_bound(x[88], 2.0)
set_upper_bound(x[88], 8.0)
set_lower_bound(x[89], 3.0)
set_upper_bound(x[89], 8.5399)
set_lower_bound(x[90], 1.5)
set_upper_bound(x[90], 6.0)
set_lower_bound(x[91], 1.5)
set_upper_bound(x[91], 6.0)
set_lower_bound(x[92], 1.5)
set_upper_bound(x[92], 6.0)
set_lower_bound(x[93], 8.54)
set_upper_bound(x[93], 8.54)
set_lower_bound(x[94], 2.0)
set_upper_bound(x[94], 8.0)
set_lower_bound(x[95], 2.0)
set_upper_bound(x[95], 8.0)
set_lower_bound(x[96], 2.0)
set_upper_bound(x[96], 8.0)
set_lower_bound(x[97], 4.2155)
set_upper_bound(x[97], 12.0)
set_lower_bound(x[98], 1.5)
set_upper_bound(x[98], 6.0)
set_lower_bound(x[99], 1.5)
set_upper_bound(x[99], 6.0)
set_lower_bound(x[100], 1.5)
set_upper_bound(x[100], 6.0)
set_lower_bound(x[101], 13.0)
set_upper_bound(x[101], 13.0)


# ----- Constraints ----- #
@constraint(m, e1, x[43]-x[44]-x[45]-x[56]-x[57]-x[66]-x[67]-x[74]-x[75]-x[80]-x[81]-x[84]-x[85] == 0.0)
@constraint(m, e2, x[102]-x[103] <= 0.0)
@constraint(m, e3, 0.5*x[86]-x[93]+x[102] <= 0.0)
@constraint(m, e4, 0.5*x[86]-x[102] <= 0.0)
@constraint(m, e5, 0.5*x[94]-x[101]+x[109] <= 0.0)
@constraint(m, e6, 0.5*x[94]-x[109] <= 0.0)
@constraint(m, e7, 0.5*x[87]-x[93]+x[103] <= 0.0)
@constraint(m, e8, 0.5*x[87]-x[103] <= 0.0)
@constraint(m, e9, 0.5*x[95]-x[101]+x[110] <= 0.0)
@constraint(m, e10, 0.5*x[95]-x[110] <= 0.0)
@constraint(m, e11, 0.5*x[88]-x[93]+x[104] <= 0.0)
@constraint(m, e12, 0.5*x[88]-x[104] <= 0.0)
@constraint(m, e13, 0.5*x[96]-x[101]+x[111] <= 0.0)
@constraint(m, e14, 0.5*x[96]-x[111] <= 0.0)
@constraint(m, e15, 0.5*x[89]-x[93]+x[105] <= 0.0)
@constraint(m, e16, 0.5*x[89]-x[105] <= 0.0)
@constraint(m, e17, 0.5*x[97]-x[101]+x[112] <= 0.0)
@constraint(m, e18, 0.5*x[97]-x[112] <= 0.0)
@constraint(m, e19, 0.5*x[90]-x[93]+x[106] <= 0.0)
@constraint(m, e20, 0.5*x[90]-x[106] <= 0.0)
@constraint(m, e21, 0.5*x[98]-x[101]+x[113] <= 0.0)
@constraint(m, e22, 0.5*x[98]-x[113] <= 0.0)
@constraint(m, e23, 0.5*x[91]-x[93]+x[107] <= 0.0)
@constraint(m, e24, 0.5*x[91]-x[107] <= 0.0)
@constraint(m, e25, 0.5*x[99]-x[101]+x[114] <= 0.0)
@constraint(m, e26, 0.5*x[99]-x[114] <= 0.0)
@constraint(m, e27, 0.5*x[92]-x[93]+x[108] <= 0.0)
@constraint(m, e28, 0.5*x[92]-x[108] <= 0.0)
@constraint(m, e29, 0.5*x[100]-x[101]+x[115] <= 0.0)
@constraint(m, e30, 0.5*x[100]-x[115] <= 0.0)
@constraint(m, e31, -x[44]+x[102]-x[103] <= 0.0)
@constraint(m, e32, -x[44]-x[102]+x[103] <= 0.0)
@constraint(m, e33, -x[45]+x[109]-x[110] <= 0.0)
@constraint(m, e34, -x[45]-x[109]+x[110] <= 0.0)
@constraint(m, e35, -8.54*b[1]-8.54*b[2]+0.5*x[86]+0.5*x[87]-x[102]+x[103] <= 0.0)
@constraint(m, e36, -8.54*b[1]+8.54*b[2]+0.5*x[86]+0.5*x[87]+x[102]-x[103] <= 8.54)
@constraint(m, e37, 13*b[1]-13*b[2]+0.5*x[94]+0.5*x[95]-x[109]+x[110] <= 13.0)
@constraint(m, e38, 13*b[1]+13*b[2]+0.5*x[94]+0.5*x[95]+x[109]-x[110] <= 26.0)
@constraint(m, e39, -x[46]+x[102]-x[104] <= 0.0)
@constraint(m, e40, -x[46]-x[102]+x[104] <= 0.0)
@constraint(m, e41, -x[47]+x[109]-x[111] <= 0.0)
@constraint(m, e42, -x[47]-x[109]+x[111] <= 0.0)
@constraint(m, e43, -8.54*b[3]-8.54*b[4]+0.5*x[86]+0.5*x[88]-x[102]+x[104] <= 0.0)
@constraint(m, e44, -8.54*b[3]+8.54*b[4]+0.5*x[86]+0.5*x[88]+x[102]-x[104] <= 8.54)
@constraint(m, e45, 13*b[3]-13*b[4]+0.5*x[94]+0.5*x[96]-x[109]+x[111] <= 13.0)
@constraint(m, e46, 13*b[3]+13*b[4]+0.5*x[94]+0.5*x[96]+x[109]-x[111] <= 26.0)
@constraint(m, e47, -x[48]+x[102]-x[105] <= 0.0)
@constraint(m, e48, -x[48]-x[102]+x[105] <= 0.0)
@constraint(m, e49, -x[49]+x[109]-x[112] <= 0.0)
@constraint(m, e50, -x[49]-x[109]+x[112] <= 0.0)
@constraint(m, e51, -8.54*b[5]-8.54*b[6]+0.5*x[86]+0.5*x[89]-x[102]+x[105] <= 0.0)
@constraint(m, e52, -8.54*b[5]+8.54*b[6]+0.5*x[86]+0.5*x[89]+x[102]-x[105] <= 8.54)
@constraint(m, e53, 13*b[5]-13*b[6]+0.5*x[94]+0.5*x[97]-x[109]+x[112] <= 13.0)
@constraint(m, e54, 13*b[5]+13*b[6]+0.5*x[94]+0.5*x[97]+x[109]-x[112] <= 26.0)
@constraint(m, e55, -x[50]+x[102]-x[106] <= 0.0)
@constraint(m, e56, -x[50]-x[102]+x[106] <= 0.0)
@constraint(m, e57, -x[51]+x[109]-x[113] <= 0.0)
@constraint(m, e58, -x[51]-x[109]+x[113] <= 0.0)
@constraint(m, e59, -8.54*b[7]-8.54*b[8]+0.5*x[86]+0.5*x[90]-x[102]+x[106] <= 0.0)
@constraint(m, e60, -8.54*b[7]+8.54*b[8]+0.5*x[86]+0.5*x[90]+x[102]-x[106] <= 8.54)
@constraint(m, e61, 13*b[7]-13*b[8]+0.5*x[94]+0.5*x[98]-x[109]+x[113] <= 13.0)
@constraint(m, e62, 13*b[7]+13*b[8]+0.5*x[94]+0.5*x[98]+x[109]-x[113] <= 26.0)
@constraint(m, e63, -x[52]+x[102]-x[107] <= 0.0)
@constraint(m, e64, -x[52]-x[102]+x[107] <= 0.0)
@constraint(m, e65, -x[53]+x[109]-x[114] <= 0.0)
@constraint(m, e66, -x[53]-x[109]+x[114] <= 0.0)
@constraint(m, e67, -8.54*b[9]-8.54*b[10]+0.5*x[86]+0.5*x[91]-x[102]+x[107] <= 0.0)
@constraint(m, e68, -8.54*b[9]+8.54*b[10]+0.5*x[86]+0.5*x[91]+x[102]-x[107] <= 8.54)
@constraint(m, e69, 13*b[9]-13*b[10]+0.5*x[94]+0.5*x[99]-x[109]+x[114] <= 13.0)
@constraint(m, e70, 13*b[9]+13*b[10]+0.5*x[94]+0.5*x[99]+x[109]-x[114] <= 26.0)
@constraint(m, e71, -x[54]+x[102]-x[108] <= 0.0)
@constraint(m, e72, -x[54]-x[102]+x[108] <= 0.0)
@constraint(m, e73, -x[55]+x[109]-x[115] <= 0.0)
@constraint(m, e74, -x[55]-x[109]+x[115] <= 0.0)
@constraint(m, e75, -8.54*b[11]-8.54*b[12]+0.5*x[86]+0.5*x[92]-x[102]+x[108] <= 0.0)
@constraint(m, e76, -8.54*b[11]+8.54*b[12]+0.5*x[86]+0.5*x[92]+x[102]-x[108] <= 8.54)
@constraint(m, e77, 13*b[11]-13*b[12]+0.5*x[94]+0.5*x[100]-x[109]+x[115] <= 13.0)
@constraint(m, e78, 13*b[11]+13*b[12]+0.5*x[94]+0.5*x[100]+x[109]-x[115] <= 26.0)
@constraint(m, e79, -x[56]+x[103]-x[104] <= 0.0)
@constraint(m, e80, -x[56]-x[103]+x[104] <= 0.0)
@constraint(m, e81, -x[57]+x[110]-x[111] <= 0.0)
@constraint(m, e82, -x[57]-x[110]+x[111] <= 0.0)
@constraint(m, e83, -8.54*b[13]-8.54*b[14]+0.5*x[87]+0.5*x[88]-x[103]+x[104] <= 0.0)
@constraint(m, e84, -8.54*b[13]+8.54*b[14]+0.5*x[87]+0.5*x[88]+x[103]-x[104] <= 8.54)
@constraint(m, e85, 13*b[13]-13*b[14]+0.5*x[95]+0.5*x[96]-x[110]+x[111] <= 13.0)
@constraint(m, e86, 13*b[13]+13*b[14]+0.5*x[95]+0.5*x[96]+x[110]-x[111] <= 26.0)
@constraint(m, e87, -x[58]+x[103]-x[105] <= 0.0)
@constraint(m, e88, -x[58]-x[103]+x[105] <= 0.0)
@constraint(m, e89, -x[59]+x[110]-x[112] <= 0.0)
@constraint(m, e90, -x[59]-x[110]+x[112] <= 0.0)
@constraint(m, e91, -8.54*b[15]-8.54*b[16]+0.5*x[87]+0.5*x[89]-x[103]+x[105] <= 0.0)
@constraint(m, e92, -8.54*b[15]+8.54*b[16]+0.5*x[87]+0.5*x[89]+x[103]-x[105] <= 8.54)
@constraint(m, e93, 13*b[15]-13*b[16]+0.5*x[95]+0.5*x[97]-x[110]+x[112] <= 13.0)
@constraint(m, e94, 13*b[15]+13*b[16]+0.5*x[95]+0.5*x[97]+x[110]-x[112] <= 26.0)
@constraint(m, e95, -x[60]+x[103]-x[106] <= 0.0)
@constraint(m, e96, -x[60]-x[103]+x[106] <= 0.0)
@constraint(m, e97, -x[61]+x[110]-x[113] <= 0.0)
@constraint(m, e98, -x[61]-x[110]+x[113] <= 0.0)
@constraint(m, e99, -8.54*b[17]-8.54*b[18]+0.5*x[87]+0.5*x[90]-x[103]+x[106] <= 0.0)
@constraint(m, e100, -8.54*b[17]+8.54*b[18]+0.5*x[87]+0.5*x[90]+x[103]-x[106] <= 8.54)
@constraint(m, e101, 13*b[17]-13*b[18]+0.5*x[95]+0.5*x[98]-x[110]+x[113] <= 13.0)
@constraint(m, e102, 13*b[17]+13*b[18]+0.5*x[95]+0.5*x[98]+x[110]-x[113] <= 26.0)
@constraint(m, e103, -x[62]+x[103]-x[107] <= 0.0)
@constraint(m, e104, -x[62]-x[103]+x[107] <= 0.0)
@constraint(m, e105, -x[63]+x[110]-x[114] <= 0.0)
@constraint(m, e106, -x[63]-x[110]+x[114] <= 0.0)
@constraint(m, e107, -8.54*b[19]-8.54*b[20]+0.5*x[87]+0.5*x[91]-x[103]+x[107] <= 0.0)
@constraint(m, e108, -8.54*b[19]+8.54*b[20]+0.5*x[87]+0.5*x[91]+x[103]-x[107] <= 8.54)
@constraint(m, e109, 13*b[19]-13*b[20]+0.5*x[95]+0.5*x[99]-x[110]+x[114] <= 13.0)
@constraint(m, e110, 13*b[19]+13*b[20]+0.5*x[95]+0.5*x[99]+x[110]-x[114] <= 26.0)
@constraint(m, e111, -x[64]+x[103]-x[108] <= 0.0)
@constraint(m, e112, -x[64]-x[103]+x[108] <= 0.0)
@constraint(m, e113, -x[65]+x[110]-x[115] <= 0.0)
@constraint(m, e114, -x[65]-x[110]+x[115] <= 0.0)
@constraint(m, e115, -8.54*b[21]-8.54*b[22]+0.5*x[87]+0.5*x[92]-x[103]+x[108] <= 0.0)
@constraint(m, e116, -8.54*b[21]+8.54*b[22]+0.5*x[87]+0.5*x[92]+x[103]-x[108] <= 8.54)
@constraint(m, e117, 13*b[21]-13*b[22]+0.5*x[95]+0.5*x[100]-x[110]+x[115] <= 13.0)
@constraint(m, e118, 13*b[21]+13*b[22]+0.5*x[95]+0.5*x[100]+x[110]-x[115] <= 26.0)
@constraint(m, e119, -x[66]+x[104]-x[105] <= 0.0)
@constraint(m, e120, -x[66]-x[104]+x[105] <= 0.0)
@constraint(m, e121, -x[67]+x[111]-x[112] <= 0.0)
@constraint(m, e122, -x[67]-x[111]+x[112] <= 0.0)
@constraint(m, e123, -8.54*b[23]-8.54*b[24]+0.5*x[88]+0.5*x[89]-x[104]+x[105] <= 0.0)
@constraint(m, e124, -8.54*b[23]+8.54*b[24]+0.5*x[88]+0.5*x[89]+x[104]-x[105] <= 8.54)
@constraint(m, e125, 13*b[23]-13*b[24]+0.5*x[96]+0.5*x[97]-x[111]+x[112] <= 13.0)
@constraint(m, e126, 13*b[23]+13*b[24]+0.5*x[96]+0.5*x[97]+x[111]-x[112] <= 26.0)
@constraint(m, e127, -x[68]+x[104]-x[106] <= 0.0)
@constraint(m, e128, -x[68]-x[104]+x[106] <= 0.0)
@constraint(m, e129, -x[69]+x[111]-x[113] <= 0.0)
@constraint(m, e130, -x[69]-x[111]+x[113] <= 0.0)
@constraint(m, e131, -8.54*b[25]-8.54*b[26]+0.5*x[88]+0.5*x[90]-x[104]+x[106] <= 0.0)
@constraint(m, e132, -8.54*b[25]+8.54*b[26]+0.5*x[88]+0.5*x[90]+x[104]-x[106] <= 8.54)
@constraint(m, e133, 13*b[25]-13*b[26]+0.5*x[96]+0.5*x[98]-x[111]+x[113] <= 13.0)
@constraint(m, e134, 13*b[25]+13*b[26]+0.5*x[96]+0.5*x[98]+x[111]-x[113] <= 26.0)
@constraint(m, e135, -x[70]+x[104]-x[107] <= 0.0)
@constraint(m, e136, -x[70]-x[104]+x[107] <= 0.0)
@constraint(m, e137, -x[71]+x[111]-x[114] <= 0.0)
@constraint(m, e138, -x[71]-x[111]+x[114] <= 0.0)
@constraint(m, e139, -8.54*b[27]-8.54*b[28]+0.5*x[88]+0.5*x[91]-x[104]+x[107] <= 0.0)
@constraint(m, e140, -8.54*b[27]+8.54*b[28]+0.5*x[88]+0.5*x[91]+x[104]-x[107] <= 8.54)
@constraint(m, e141, 13*b[27]-13*b[28]+0.5*x[96]+0.5*x[99]-x[111]+x[114] <= 13.0)
@constraint(m, e142, 13*b[27]+13*b[28]+0.5*x[96]+0.5*x[99]+x[111]-x[114] <= 26.0)
@constraint(m, e143, -x[72]+x[104]-x[108] <= 0.0)
@constraint(m, e144, -x[72]-x[104]+x[108] <= 0.0)
@constraint(m, e145, -x[73]+x[111]-x[115] <= 0.0)
@constraint(m, e146, -x[73]-x[111]+x[115] <= 0.0)
@constraint(m, e147, -8.54*b[29]-8.54*b[30]+0.5*x[88]+0.5*x[92]-x[104]+x[108] <= 0.0)
@constraint(m, e148, -8.54*b[29]+8.54*b[30]+0.5*x[88]+0.5*x[92]+x[104]-x[108] <= 8.54)
@constraint(m, e149, 13*b[29]-13*b[30]+0.5*x[96]+0.5*x[100]-x[111]+x[115] <= 13.0)
@constraint(m, e150, 13*b[29]+13*b[30]+0.5*x[96]+0.5*x[100]+x[111]-x[115] <= 26.0)
@constraint(m, e151, -x[74]+x[105]-x[106] <= 0.0)
@constraint(m, e152, -x[74]-x[105]+x[106] <= 0.0)
@constraint(m, e153, -x[75]+x[112]-x[113] <= 0.0)
@constraint(m, e154, -x[75]-x[112]+x[113] <= 0.0)
@constraint(m, e155, -8.54*b[31]-8.54*b[32]+0.5*x[89]+0.5*x[90]-x[105]+x[106] <= 0.0)
@constraint(m, e156, -8.54*b[31]+8.54*b[32]+0.5*x[89]+0.5*x[90]+x[105]-x[106] <= 8.54)
@constraint(m, e157, 13*b[31]-13*b[32]+0.5*x[97]+0.5*x[98]-x[112]+x[113] <= 13.0)
@constraint(m, e158, 13*b[31]+13*b[32]+0.5*x[97]+0.5*x[98]+x[112]-x[113] <= 26.0)
@constraint(m, e159, -x[76]+x[105]-x[107] <= 0.0)
@constraint(m, e160, -x[76]-x[105]+x[107] <= 0.0)
@constraint(m, e161, -x[77]+x[112]-x[114] <= 0.0)
@constraint(m, e162, -x[77]-x[112]+x[114] <= 0.0)
@constraint(m, e163, -8.54*b[33]-8.54*b[34]+0.5*x[89]+0.5*x[91]-x[105]+x[107] <= 0.0)
@constraint(m, e164, -8.54*b[33]+8.54*b[34]+0.5*x[89]+0.5*x[91]+x[105]-x[107] <= 8.54)
@constraint(m, e165, 13*b[33]-13*b[34]+0.5*x[97]+0.5*x[99]-x[112]+x[114] <= 13.0)
@constraint(m, e166, 13*b[33]+13*b[34]+0.5*x[97]+0.5*x[99]+x[112]-x[114] <= 26.0)
@constraint(m, e167, -x[78]+x[105]-x[108] <= 0.0)
@constraint(m, e168, -x[78]-x[105]+x[108] <= 0.0)
@constraint(m, e169, -x[79]+x[112]-x[115] <= 0.0)
@constraint(m, e170, -x[79]-x[112]+x[115] <= 0.0)
@constraint(m, e171, -8.54*b[35]-8.54*b[36]+0.5*x[89]+0.5*x[92]-x[105]+x[108] <= 0.0)
@constraint(m, e172, -8.54*b[35]+8.54*b[36]+0.5*x[89]+0.5*x[92]+x[105]-x[108] <= 8.54)
@constraint(m, e173, 13*b[35]-13*b[36]+0.5*x[97]+0.5*x[100]-x[112]+x[115] <= 13.0)
@constraint(m, e174, 13*b[35]+13*b[36]+0.5*x[97]+0.5*x[100]+x[112]-x[115] <= 26.0)
@constraint(m, e175, -x[80]+x[106]-x[107] <= 0.0)
@constraint(m, e176, -x[80]-x[106]+x[107] <= 0.0)
@constraint(m, e177, -x[81]+x[113]-x[114] <= 0.0)
@constraint(m, e178, -x[81]-x[113]+x[114] <= 0.0)
@constraint(m, e179, -8.54*b[37]-8.54*b[38]+0.5*x[90]+0.5*x[91]-x[106]+x[107] <= 0.0)
@constraint(m, e180, -8.54*b[37]+8.54*b[38]+0.5*x[90]+0.5*x[91]+x[106]-x[107] <= 8.54)
@constraint(m, e181, 13*b[37]-13*b[38]+0.5*x[98]+0.5*x[99]-x[113]+x[114] <= 13.0)
@constraint(m, e182, 13*b[37]+13*b[38]+0.5*x[98]+0.5*x[99]+x[113]-x[114] <= 26.0)
@constraint(m, e183, -x[82]+x[106]-x[108] <= 0.0)
@constraint(m, e184, -x[82]-x[106]+x[108] <= 0.0)
@constraint(m, e185, -x[83]+x[113]-x[115] <= 0.0)
@constraint(m, e186, -x[83]-x[113]+x[115] <= 0.0)
@constraint(m, e187, -8.54*b[39]-8.54*b[40]+0.5*x[90]+0.5*x[92]-x[106]+x[108] <= 0.0)
@constraint(m, e188, -8.54*b[39]+8.54*b[40]+0.5*x[90]+0.5*x[92]+x[106]-x[108] <= 8.54)
@constraint(m, e189, 13*b[39]-13*b[40]+0.5*x[98]+0.5*x[100]-x[113]+x[115] <= 13.0)
@constraint(m, e190, 13*b[39]+13*b[40]+0.5*x[98]+0.5*x[100]+x[113]-x[115] <= 26.0)
@constraint(m, e191, -x[84]+x[107]-x[108] <= 0.0)
@constraint(m, e192, -x[84]-x[107]+x[108] <= 0.0)
@constraint(m, e193, -x[85]+x[114]-x[115] <= 0.0)
@constraint(m, e194, -x[85]-x[114]+x[115] <= 0.0)
@constraint(m, e195, -8.54*b[41]-8.54*b[42]+0.5*x[91]+0.5*x[92]-x[107]+x[108] <= 0.0)
@constraint(m, e196, -8.54*b[41]+8.54*b[42]+0.5*x[91]+0.5*x[92]+x[107]-x[108] <= 8.54)
@constraint(m, e197, 13*b[41]-13*b[42]+0.5*x[99]+0.5*x[100]-x[114]+x[115] <= 13.0)
@constraint(m, e198, 13*b[41]+13*b[42]+0.5*x[99]+0.5*x[100]+x[114]-x[115] <= 26.0)
@NLconstraint(m, e199, 16/x[86]-x[94] <= 0.0)
@NLconstraint(m, e200, 16/x[94]-x[86] <= 0.0)
@NLconstraint(m, e201, 16/x[87]-x[95] <= 0.0)
@NLconstraint(m, e202, 16/x[95]-x[87] <= 0.0)
@NLconstraint(m, e203, 16/x[88]-x[96] <= 0.0)
@NLconstraint(m, e204, 16/x[96]-x[88] <= 0.0)
@NLconstraint(m, e205, 36/x[89]-x[97] <= 0.0)
@NLconstraint(m, e206, 36/x[97]-x[89] <= 0.0)
@NLconstraint(m, e207, 9/x[90]-x[98] <= 0.0)
@NLconstraint(m, e208, 9/x[98]-x[90] <= 0.0)
@NLconstraint(m, e209, 9/x[91]-x[99] <= 0.0)
@NLconstraint(m, e210, 9/x[99]-x[91] <= 0.0)
@NLconstraint(m, e211, 9/x[92]-x[100] <= 0.0)
@NLconstraint(m, e212, 9/x[100]-x[92] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[43])

m = m 		 # model get returned when including this script. 
