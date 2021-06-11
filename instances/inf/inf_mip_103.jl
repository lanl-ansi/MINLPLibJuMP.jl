using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125]
@variable(m, x[x_Idx])
b_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[102], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-2.6505*b[2]-2.6505*b[3]-2.6505*b[4]-2.6505*b[5]-1.1405*b[6]-1.1005*b[7]-1.1405*b[8]-1.1405*b[9]-2.9605*b[10]-2.9605*b[11]-2.9605*b[12]-2.9605*b[13]-1.5605*b[14]-1.5605*b[15]-1.5605*b[16]-1.5605*b[17]-1.9805*b[18]-1.9805*b[19]-1.2505*b[20]-1.5005*b[21]-3.2805*b[22]-3.2805*b[23]-3.2805*b[24]-3.2805*b[25]-1.9205*b[26]-1.9205*b[27]-1.9205*b[28]-1.9205*b[29]-2.6005*b[30]-2.6005*b[31]-2.6005*b[32]-2.6005*b[33]-2.1805*b[34]-2.1805*b[35]-2.1805*b[36]-2.1805*b[37]-1.5205*b[38]-1.5205*b[39]-1.4005*b[40]-1.4005*b[41]-2.0305*b[42]-2.0305*b[43]-2.0305*b[44]-2.0305*b[45]-2.2405*b[46]-2.2405*b[47]-2.2405*b[48]-2.2405*b[49]-1.4605*b[50]-1.4605*b[51]-1.4605*b[52]-1.4605*b[53]-0.6605*b[54]-0.6605*b[55]-0.6605*b[56]-0.6605*b[57]-1.1405*b[58]-1.1405*b[59]-1.1405*b[60]-1.1405*b[61]-1.6605*b[62]-1.6605*b[63]-1.6605*b[64]-1.6605*b[65]-0.8605*b[66]-0.8605*b[67]-0.8605*b[68]-0.8605*b[69]-1.5105*b[70]-1.5105*b[71]-1.5105*b[72]-1.5105*b[73]-1.2005*b[74]-1.2005*b[75]-1.2005*b[76]-1.2005*b[77]-0.8605*b[78]-0.8605*b[79]-0.8605*b[80]-0.8605*b[81]-1.9205*b[82]-1.9205*b[83]-1.9205*b[84]-1.9205*b[85]-0.33*x[86]-0.33*x[87]-0.33*x[88]-0.33*x[89]-0.33*x[90]-0.33*x[91]-0.33*x[92]-0.33*x[93]-0.33*x[94]-0.33*x[95]-0.33*x[96]-0.33*x[97]-0.33*x[98]-0.33*x[99]-0.33*x[100]-0.33*x[101]-0.33*x[102]-0.33*x[103]-0.33*x[104]-0.33*x[105] == 0.0)
@constraint(m, e2, b[2]+b[3]+b[4]+b[5] == 1.0)
@constraint(m, e3, b[6]+b[7]+b[8]+b[9] == 1.0)
@constraint(m, e4, b[10]+b[11]+b[12]+b[13] == 1.0)
@constraint(m, e5, b[14]+b[15]+b[16]+b[17] == 1.0)
@constraint(m, e6, b[18]+b[19]+b[20]+b[21] == 1.0)
@constraint(m, e7, b[22]+b[23]+b[24]+b[25] == 1.0)
@constraint(m, e8, b[26]+b[27]+b[28]+b[29] == 1.0)
@constraint(m, e9, b[30]+b[31]+b[32]+b[33] == 1.0)
@constraint(m, e10, b[34]+b[35]+b[36]+b[37] == 1.0)
@constraint(m, e11, b[38]+b[39]+b[40]+b[41] == 1.0)
@constraint(m, e12, b[42]+b[43]+b[44]+b[45] == 1.0)
@constraint(m, e13, b[46]+b[47]+b[48]+b[49] == 1.0)
@constraint(m, e14, b[50]+b[51]+b[52]+b[53] == 1.0)
@constraint(m, e15, b[54]+b[55]+b[56]+b[57] == 1.0)
@constraint(m, e16, b[58]+b[59]+b[60]+b[61] == 1.0)
@constraint(m, e17, b[62]+b[63]+b[64]+b[65] == 1.0)
@constraint(m, e18, b[66]+b[67]+b[68]+b[69] == 1.0)
@constraint(m, e19, b[70]+b[71]+b[72]+b[73] == 1.0)
@constraint(m, e20, b[74]+b[75]+b[76]+b[77] == 1.0)
@constraint(m, e21, b[78]+b[79]+b[80]+b[81] == 1.0)
@constraint(m, e22, b[2]-b[6] == 0.0)
@constraint(m, e23, b[3]-b[7] == 0.0)
@constraint(m, e24, b[4]-b[8] == 0.0)
@constraint(m, e25, b[5]-b[9] == 0.0)
@constraint(m, e26, b[6]-b[10] == 0.0)
@constraint(m, e27, b[7]-b[11] == 0.0)
@constraint(m, e28, b[8]-b[12] == 0.0)
@constraint(m, e29, b[9]-b[13] == 0.0)
@constraint(m, e30, b[10]-b[14] == 0.0)
@constraint(m, e31, b[11]-b[15] == 0.0)
@constraint(m, e32, b[12]-b[16] == 0.0)
@constraint(m, e33, b[13]-b[17] == 0.0)
@constraint(m, e34, b[14]-b[18] == 0.0)
@constraint(m, e35, b[15]-b[19] == 0.0)
@constraint(m, e36, b[16]-b[20] == 0.0)
@constraint(m, e37, b[17]-b[21] == 0.0)
@constraint(m, e38, b[18]-b[22] == 0.0)
@constraint(m, e39, b[19]-b[23] == 0.0)
@constraint(m, e40, b[20]-b[24] == 0.0)
@constraint(m, e41, b[21]-b[25] == 0.0)
@constraint(m, e42, b[22]-b[26] == 0.0)
@constraint(m, e43, b[23]-b[27] == 0.0)
@constraint(m, e44, b[24]-b[28] == 0.0)
@constraint(m, e45, b[25]-b[29] == 0.0)
@constraint(m, e46, b[26]-b[30] == 0.0)
@constraint(m, e47, b[27]-b[31] == 0.0)
@constraint(m, e48, b[28]-b[32] == 0.0)
@constraint(m, e49, b[29]-b[33] == 0.0)
@constraint(m, e50, b[30]-b[34] == 0.0)
@constraint(m, e51, b[31]-b[35] == 0.0)
@constraint(m, e52, b[32]-b[36] == 0.0)
@constraint(m, e53, b[33]-b[37] == 0.0)
@constraint(m, e54, b[34]-b[38] == 0.0)
@constraint(m, e55, b[35]-b[39] == 0.0)
@constraint(m, e56, b[36]-b[40] == 0.0)
@constraint(m, e57, b[37]-b[41] == 0.0)
@constraint(m, e58, b[38]-b[42] == 0.0)
@constraint(m, e59, b[39]-b[43] == 0.0)
@constraint(m, e60, b[40]-b[44] == 0.0)
@constraint(m, e61, b[41]-b[45] == 0.0)
@constraint(m, e62, b[42]-b[46] == 0.0)
@constraint(m, e63, b[43]-b[47] == 0.0)
@constraint(m, e64, b[44]-b[48] == 0.0)
@constraint(m, e65, b[45]-b[49] == 0.0)
@constraint(m, e66, b[46]-b[50] == 0.0)
@constraint(m, e67, b[47]-b[51] == 0.0)
@constraint(m, e68, b[48]-b[52] == 0.0)
@constraint(m, e69, b[49]-b[53] == 0.0)
@constraint(m, e70, b[50]-b[54] == 0.0)
@constraint(m, e71, b[51]-b[55] == 0.0)
@constraint(m, e72, b[52]-b[56] == 0.0)
@constraint(m, e73, b[53]-b[57] == 0.0)
@constraint(m, e74, b[54]-b[58] == 0.0)
@constraint(m, e75, b[55]-b[59] == 0.0)
@constraint(m, e76, b[56]-b[60] == 0.0)
@constraint(m, e77, b[57]-b[61] == 0.0)
@constraint(m, e78, b[58]-b[62] == 0.0)
@constraint(m, e79, b[59]-b[63] == 0.0)
@constraint(m, e80, b[60]-b[64] == 0.0)
@constraint(m, e81, b[61]-b[65] == 0.0)
@constraint(m, e82, b[62]-b[66] == 0.0)
@constraint(m, e83, b[63]-b[67] == 0.0)
@constraint(m, e84, b[64]-b[68] == 0.0)
@constraint(m, e85, b[65]-b[69] == 0.0)
@constraint(m, e86, b[66]-b[70] == 0.0)
@constraint(m, e87, b[67]-b[71] == 0.0)
@constraint(m, e88, b[68]-b[72] == 0.0)
@constraint(m, e89, b[69]-b[73] == 0.0)
@constraint(m, e90, b[70]-b[74] == 0.0)
@constraint(m, e91, b[71]-b[75] == 0.0)
@constraint(m, e92, b[72]-b[76] == 0.0)
@constraint(m, e93, b[73]-b[77] == 0.0)
@constraint(m, e94, b[74]-b[78] == 0.0)
@constraint(m, e95, b[75]-b[79] == 0.0)
@constraint(m, e96, b[76]-b[80] == 0.0)
@constraint(m, e97, b[77]-b[81] == 0.0)
@constraint(m, e98, b[78]-b[82] == 0.0)
@constraint(m, e99, b[79]-b[83] == 0.0)
@constraint(m, e100, b[80]-b[84] == 0.0)
@constraint(m, e101, b[81]-b[85] == 0.0)
@constraint(m, e102, b[2] <= 1.0)
@constraint(m, e103, b[3] <= 1.0)
@constraint(m, e104, b[4] <= 1.0)
@constraint(m, e105, b[5] <= 1.0)
@constraint(m, e106, b[6]+2*b[10]+b[14]+b[18]+b[22]+2*b[26]+b[30]+b[34]+2*b[38]+b[42]+b[46]+2*b[50]+b[54]+b[58]+b[62]+b[66]+b[70]+b[74]+b[78]+2*b[82] <= 20.0)
@constraint(m, e107, b[7]+2*b[11]+b[15]+b[19]+b[23]+2*b[27]+b[31]+b[35]+2*b[39]+b[43]+b[47]+2*b[51]+b[55]+b[59]+b[63]+b[67]+b[71]+b[75]+b[79]+2*b[83] <= 20.0)
@constraint(m, e108, b[8]+2*b[12]+b[16]+b[20]+b[24]+2*b[28]+b[32]+b[36]+2*b[40]+b[44]+b[48]+2*b[52]+b[56]+b[60]+b[64]+b[68]+b[72]+b[76]+b[80]+2*b[84] <= 20.0)
@constraint(m, e109, b[9]+2*b[13]+b[17]+b[21]+b[25]+2*b[29]+b[33]+b[37]+2*b[41]+b[45]+b[49]+2*b[53]+b[57]+b[61]+b[65]+b[69]+b[73]+b[77]+b[81]+2*b[85] <= 20.0)
@constraint(m, e110, -x[86]+x[106] <= 88.0)
@constraint(m, e111, -x[87]+x[107] <= 88.0)
@constraint(m, e112, -x[88]+x[108] <= 88.0)
@constraint(m, e113, -x[89]+x[109] <= 88.0)
@constraint(m, e114, -x[90]+x[110] <= 88.0)
@constraint(m, e115, -x[91]+x[111] <= 88.0)
@constraint(m, e116, -x[92]+x[112] <= 88.0)
@constraint(m, e117, -x[93]+x[113] <= 88.0)
@constraint(m, e118, -x[94]+x[114] <= 88.0)
@constraint(m, e119, -x[95]+x[115] <= 88.0)
@constraint(m, e120, -x[96]+x[116] <= 88.0)
@constraint(m, e121, -x[97]+x[117] <= 88.0)
@constraint(m, e122, -x[98]+x[118] <= 88.0)
@constraint(m, e123, -x[99]+x[119] <= 88.0)
@constraint(m, e124, -x[100]+x[120] <= 88.0)
@constraint(m, e125, -x[101]+x[121] <= 88.0)
@constraint(m, e126, -x[102]+x[122] <= 88.0)
@constraint(m, e127, -x[103]+x[123] <= 88.0)
@constraint(m, e128, -x[104]+x[124] <= 88.0)
@constraint(m, e129, -x[105]+x[125] <= 88.0)
@constraint(m, e130, x[106] >= 2.0)
@constraint(m, e131, x[107] >= 2.0)
@constraint(m, e132, x[108] >= 2.0)
@constraint(m, e133, x[109] >= 2.0)
@constraint(m, e134, x[110] >= 2.0)
@constraint(m, e135, x[111] >= 2.0)
@constraint(m, e136, x[112] >= 2.0)
@constraint(m, e137, x[113] >= 2.0)
@constraint(m, e138, x[114] >= 2.0)
@constraint(m, e139, x[115] >= 2.0)
@constraint(m, e140, x[116] >= 2.0)
@constraint(m, e141, x[117] >= 2.0)
@constraint(m, e142, x[118] >= 2.0)
@constraint(m, e143, x[119] >= 2.0)
@constraint(m, e144, x[120] >= 2.0)
@constraint(m, e145, x[121] >= 2.0)
@constraint(m, e146, x[122] >= 2.0)
@constraint(m, e147, x[123] >= 2.0)
@constraint(m, e148, x[124] >= 2.0)
@constraint(m, e149, x[125] >= 2.0)
@constraint(m, e150, 100000*b[6]+x[106]-x[107] <= 99996.0)
@constraint(m, e151, 100000*b[7]+x[106]-x[107] <= 99996.32)
@constraint(m, e152, 100000*b[8]+x[106]-x[107] <= 99996.0)
@constraint(m, e153, 100000*b[9]+x[106]-x[107] <= 99996.0)
@constraint(m, e154, 100000*b[10]+x[107]-x[108] <= 99995.0)
@constraint(m, e155, 100000*b[11]+x[107]-x[108] <= 99995.0)
@constraint(m, e156, 100000*b[12]+x[107]-x[108] <= 99995.0)
@constraint(m, e157, 100000*b[13]+x[107]-x[108] <= 99995.0)
@constraint(m, e158, 100000*b[14]+x[108]-x[109] <= 99990.0)
@constraint(m, e159, 100000*b[15]+x[108]-x[109] <= 99990.0)
@constraint(m, e160, 100000*b[16]+x[108]-x[109] <= 99990.0)
@constraint(m, e161, 100000*b[17]+x[108]-x[109] <= 99990.0)
@constraint(m, e162, 100000*b[18]+x[109]-x[110] <= 99994.0)
@constraint(m, e163, 100000*b[19]+x[109]-x[110] <= 99994.0)
@constraint(m, e164, 100000*b[20]+x[109]-x[110] <= 99995.0)
@constraint(m, e165, 100000*b[21]+x[109]-x[110] <= 99994.0)
@constraint(m, e166, 100000*b[22]+x[110]-x[111] <= 99991.0)
@constraint(m, e167, 100000*b[23]+x[110]-x[111] <= 99991.0)
@constraint(m, e168, 100000*b[24]+x[110]-x[111] <= 99991.0)
@constraint(m, e169, 100000*b[25]+x[110]-x[111] <= 99991.0)
@constraint(m, e170, 100000*b[26]+x[111]-x[112] <= 99990.0)
@constraint(m, e171, 100000*b[27]+x[111]-x[112] <= 99990.0)
@constraint(m, e172, 100000*b[28]+x[111]-x[112] <= 99990.0)
@constraint(m, e173, 100000*b[29]+x[111]-x[112] <= 99990.0)
@constraint(m, e174, 100000*b[30]+x[112]-x[113] <= 99995.0)
@constraint(m, e175, 100000*b[31]+x[112]-x[113] <= 99995.0)
@constraint(m, e176, 100000*b[32]+x[112]-x[113] <= 99995.0)
@constraint(m, e177, 100000*b[33]+x[112]-x[113] <= 99995.0)
@constraint(m, e178, 100000*b[34]+x[113]-x[114] <= 99992.0)
@constraint(m, e179, 100000*b[35]+x[113]-x[114] <= 99992.0)
@constraint(m, e180, 100000*b[36]+x[113]-x[114] <= 99992.0)
@constraint(m, e181, 100000*b[37]+x[113]-x[114] <= 99992.0)
@constraint(m, e182, 100000*b[38]+x[114]-x[115] <= 99993.0)
@constraint(m, e183, 100000*b[39]+x[114]-x[115] <= 99993.0)
@constraint(m, e184, 100000*b[40]+x[114]-x[115] <= 99993.0)
@constraint(m, e185, 100000*b[41]+x[114]-x[115] <= 99997.0)
@constraint(m, e186, 100000*b[42]+x[115]-x[116] <= 99993.0)
@constraint(m, e187, 100000*b[43]+x[115]-x[116] <= 99993.0)
@constraint(m, e188, 100000*b[44]+x[115]-x[116] <= 99993.0)
@constraint(m, e189, 100000*b[45]+x[115]-x[116] <= 99993.0)
@constraint(m, e190, 100000*b[46]+x[116]-x[117] <= 99993.0)
@constraint(m, e191, 100000*b[47]+x[116]-x[117] <= 99993.0)
@constraint(m, e192, 100000*b[48]+x[116]-x[117] <= 99993.0)
@constraint(m, e193, 100000*b[49]+x[116]-x[117] <= 99993.0)
@constraint(m, e194, 100000*b[50]+x[117]-x[118] <= 99992.0)
@constraint(m, e195, 100000*b[51]+x[117]-x[118] <= 99992.0)
@constraint(m, e196, 100000*b[52]+x[117]-x[118] <= 99992.0)
@constraint(m, e197, 100000*b[53]+x[117]-x[118] <= 99992.0)
@constraint(m, e198, 100000*b[54]+x[118]-x[119] <= 99994.0)
@constraint(m, e199, 100000*b[55]+x[118]-x[119] <= 99994.0)
@constraint(m, e200, 100000*b[56]+x[118]-x[119] <= 99994.0)
@constraint(m, e201, 100000*b[57]+x[118]-x[119] <= 99994.0)
@constraint(m, e202, 100000*b[58]+x[119]-x[120] <= 99997.0)
@constraint(m, e203, 100000*b[59]+x[119]-x[120] <= 99997.0)
@constraint(m, e204, 100000*b[60]+x[119]-x[120] <= 99997.0)
@constraint(m, e205, 100000*b[61]+x[119]-x[120] <= 99997.0)
@constraint(m, e206, 100000*b[62]+x[120]-x[121] <= 99996.0)
@constraint(m, e207, 100000*b[63]+x[120]-x[121] <= 99996.0)
@constraint(m, e208, 100000*b[64]+x[120]-x[121] <= 99996.0)
@constraint(m, e209, 100000*b[65]+x[120]-x[121] <= 99996.0)
@constraint(m, e210, 100000*b[66]+x[121]-x[122] <= 99993.0)
@constraint(m, e211, 100000*b[67]+x[121]-x[122] <= 99993.0)
@constraint(m, e212, 100000*b[68]+x[121]-x[122] <= 99993.0)
@constraint(m, e213, 100000*b[69]+x[121]-x[122] <= 99993.0)
@constraint(m, e214, 100000*b[70]+x[122]-x[123] <= 99997.0)
@constraint(m, e215, 100000*b[71]+x[122]-x[123] <= 99997.0)
@constraint(m, e216, 100000*b[72]+x[122]-x[123] <= 99997.0)
@constraint(m, e217, 100000*b[73]+x[122]-x[123] <= 99997.0)
@constraint(m, e218, 100000*b[74]+x[123]-x[124] <= 99996.0)
@constraint(m, e219, 100000*b[75]+x[123]-x[124] <= 99996.0)
@constraint(m, e220, 100000*b[76]+x[123]-x[124] <= 99996.0)
@constraint(m, e221, 100000*b[77]+x[123]-x[124] <= 99996.0)
@constraint(m, e222, 100000*b[78]+x[124]-x[125] <= 99993.0)
@constraint(m, e223, 100000*b[79]+x[124]-x[125] <= 99993.0)
@constraint(m, e224, 100000*b[80]+x[124]-x[125] <= 99993.0)
@constraint(m, e225, 100000*b[81]+x[124]-x[125] <= 99993.0)
@constraint(m, e226, b[82] <= 1.0)
@constraint(m, e227, b[83] <= 1.0)
@constraint(m, e228, b[84] <= 1.0)
@constraint(m, e229, b[85] <= 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
