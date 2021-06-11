using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271]
@variable(m, x[x_Idx])
b_Idx = Any[173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[146], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[108], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.5*x[1]-0.5*x[2]-0.5*x[3]-0.5*x[4]-0.5*x[5]-0.5*x[6]-0.5*x[7]-0.5*x[8]-0.5*x[9]-0.5*x[10]-0.5*x[11]-0.5*x[12]+0.5*x[172]+x[258] == 0.0)
@constraint(m, e2, -x[1]-x[2]-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]+x[13] == 0.0)
@constraint(m, e3, x[1]+x[87] == 3000.0)
@constraint(m, e4, x[2]+x[88] == 3000.0)
@constraint(m, e5, x[3]+x[89] == 3000.0)
@constraint(m, e6, x[4]+x[90] == 3000.0)
@constraint(m, e7, x[5]+x[91] == 3000.0)
@constraint(m, e8, x[6]+x[92] == 3000.0)
@constraint(m, e9, x[7]+x[93] == 3000.0)
@constraint(m, e10, x[8]+x[94] == 3000.0)
@constraint(m, e11, x[9]+x[95] == 3000.0)
@constraint(m, e12, x[10]+x[96] == 3000.0)
@constraint(m, e13, x[11]+x[97] == 3000.0)
@constraint(m, e14, x[12]+x[98] == 3000.0)
@constraint(m, e15, -5.7*x[1]+32.1*x[14]+23.3*x[15]+3.72*x[16] == 0.0)
@constraint(m, e16, -4.275*x[2]+32.1*x[17]+23.3*x[18]+3.72*x[19] == 0.0)
@constraint(m, e17, -2.85*x[3]+32.1*x[20]+23.3*x[21]+3.72*x[22] == 0.0)
@constraint(m, e18, -3.325*x[4]+32.1*x[23]+23.3*x[24]+3.72*x[25] == 0.0)
@constraint(m, e19, -5.89*x[5]+32.1*x[26]+23.3*x[27]+3.72*x[28] == 0.0)
@constraint(m, e20, -3.515*x[6]+32.1*x[29]+23.3*x[30]+3.72*x[31] == 0.0)
@constraint(m, e21, -5.7*x[7]+32.1*x[32]+23.3*x[33]+3.72*x[34] == 0.0)
@constraint(m, e22, -4.37*x[8]+32.1*x[35]+23.3*x[36]+3.72*x[37] == 0.0)
@constraint(m, e23, -2.945*x[9]+32.1*x[38]+23.3*x[39]+3.72*x[40] == 0.0)
@constraint(m, e24, -5.795*x[10]+32.1*x[41]+23.3*x[42]+3.72*x[43] == 0.0)
@constraint(m, e25, -4.18*x[11]+32.1*x[44]+23.3*x[45]+3.72*x[46] == 0.0)
@constraint(m, e26, -3.23*x[12]+32.1*x[47]+23.3*x[48]+3.72*x[49] == 0.0)
@constraint(m, e27, 0.01*x[1]+2.457*x[14]+2.53*x[15]+0.29*x[16]-x[50]+x[99] == 0.0)
@constraint(m, e28, -0.09*x[2]+2.457*x[17]+2.53*x[18]+0.29*x[19]-x[51]+x[100] == 0.0)
@constraint(m, e29, -0.24*x[3]+2.457*x[20]+2.53*x[21]+0.29*x[22]-x[52]+x[101] == 0.0)
@constraint(m, e30, -0.19*x[4]+2.457*x[23]+2.53*x[24]+0.29*x[25]-x[53]+x[102] == 0.0)
@constraint(m, e31, 0.11*x[5]+2.457*x[26]+2.53*x[27]+0.29*x[28]-x[54]+x[103] == 0.0)
@constraint(m, e32, -0.14*x[6]+2.457*x[29]+2.53*x[30]+0.29*x[31]-x[55]+x[104] == 0.0)
@constraint(m, e33, 0.0600000000000001*x[7]+2.457*x[32]+2.53*x[33]+0.29*x[34]-x[56]+x[105] == 0.0)
@constraint(m, e34, -0.06*x[8]+2.457*x[35]+2.53*x[36]+0.29*x[37]-x[57]+x[106] == 0.0)
@constraint(m, e35, -0.23*x[9]+2.457*x[38]+2.53*x[39]+0.29*x[40]-x[58]+x[107] == 0.0)
@constraint(m, e36, 0.11*x[10]+2.457*x[41]+2.53*x[42]+0.29*x[43]-x[59]+x[108] == 0.0)
@constraint(m, e37, -0.07*x[11]+2.457*x[44]+2.53*x[45]+0.29*x[46]-x[60]+x[109] == 0.0)
@constraint(m, e38, -0.16*x[12]+2.457*x[47]+2.53*x[48]+0.29*x[49]-x[61]+x[110] == 0.0)
@NLconstraint(m, e39, 0.5*x[1]-x[172]*(x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12])+0.4*x[2]+0.25*x[3]+0.3*x[4]+0.6*x[5]+0.35*x[6]+0.55*x[7]+0.43*x[8]+0.26*x[9]+0.6*x[10]+0.42*x[11]+0.33*x[12]+2.457*x[14]+2.53*x[15]+0.29*x[16]+2.457*x[17]+2.53*x[18]+0.29*x[19]+2.457*x[20]+2.53*x[21]+0.29*x[22]+2.457*x[23]+2.53*x[24]+0.29*x[25]+2.457*x[26]+2.53*x[27]+0.29*x[28]+2.457*x[29]+2.53*x[30]+0.29*x[31]+2.457*x[32]+2.53*x[33]+0.29*x[34]+2.457*x[35]+2.53*x[36]+0.29*x[37]+2.457*x[38]+2.53*x[39]+0.29*x[40]+2.457*x[41]+2.53*x[42]+0.29*x[43]+2.457*x[44]+2.53*x[45]+0.29*x[46]+2.457*x[47]+2.53*x[48]+0.29*x[49] == 0.0)
@constraint(m, e40, x[172] <= 0.49)
@constraint(m, e41, x[172] >= 0.0)
@constraint(m, e42, 0.0098*x[13]-x[111]+x[271] == 376.0)
@constraint(m, e43, 0.002*x[1]+x[63]+0.01*x[75]-x[112]-5.7*x[259]-x[271] == -20.0)
@constraint(m, e44, 0.002*x[2]+x[64]-0.09*x[76]-x[113]-4.275*x[260]-x[271] == -26.0)
@constraint(m, e45, 0.002*x[3]+x[65]-0.24*x[77]-x[114]-2.85*x[261]-x[271] == -32.0)
@constraint(m, e46, 0.002*x[4]+x[66]-0.19*x[78]-x[115]-3.325*x[262]-x[271] == -27.0)
@constraint(m, e47, 0.002*x[5]+x[67]+0.11*x[79]-x[116]-5.89*x[263]-x[271] == -19.0)
@constraint(m, e48, 0.002*x[6]+x[68]-0.14*x[80]-x[117]-3.515*x[264]-x[271] == -27.0)
@constraint(m, e49, 0.002*x[7]+x[69]+0.0600000000000001*x[81]-x[118]-5.7*x[265]-x[271] == -20.3)
@constraint(m, e50, 0.002*x[8]+x[70]-0.06*x[82]-x[119]-4.37*x[266]-x[271] == -26.2)
@constraint(m, e51, 0.002*x[9]+x[71]-0.23*x[83]-x[120]-2.945*x[267]-x[271] == -31.0)
@constraint(m, e52, 0.002*x[10]+x[72]+0.11*x[84]-x[121]-5.795*x[268]-x[271] == -20.0)
@constraint(m, e53, 0.002*x[11]+x[73]-0.07*x[85]-x[122]-4.18*x[269]-x[271] == -25.0)
@constraint(m, e54, 0.002*x[12]+x[74]-0.16*x[86]-x[123]-3.23*x[270]-x[271] == -27.8)
@constraint(m, e55, 2.457*x[75]-x[124]+32.1*x[259] == -100.0)
@constraint(m, e56, 2.53*x[75]-x[125]+23.3*x[259] == -50.0)
@constraint(m, e57, 0.29*x[75]-x[126]+3.72*x[259] == -11.0)
@constraint(m, e58, 2.457*x[76]-x[127]+32.1*x[260] == -100.0)
@constraint(m, e59, 2.53*x[76]-x[128]+23.3*x[260] == -50.0)
@constraint(m, e60, 0.29*x[76]-x[129]+3.72*x[260] == -11.0)
@constraint(m, e61, 2.457*x[77]-x[130]+32.1*x[261] == -100.0)
@constraint(m, e62, 2.53*x[77]-x[131]+23.3*x[261] == -50.0)
@constraint(m, e63, 0.29*x[77]-x[132]+3.72*x[261] == -11.0)
@constraint(m, e64, 2.457*x[78]-x[133]+32.1*x[262] == -100.0)
@constraint(m, e65, 2.53*x[78]-x[134]+23.3*x[262] == -50.0)
@constraint(m, e66, 0.29*x[78]-x[135]+3.72*x[262] == -11.0)
@constraint(m, e67, 2.457*x[79]-x[136]+32.1*x[263] == -100.0)
@constraint(m, e68, 2.53*x[79]-x[137]+23.3*x[263] == -50.0)
@constraint(m, e69, 0.29*x[79]-x[138]+3.72*x[263] == -11.0)
@constraint(m, e70, 2.457*x[80]-x[139]+32.1*x[264] == -100.0)
@constraint(m, e71, 2.53*x[80]-x[140]+23.3*x[264] == -50.0)
@constraint(m, e72, 0.29*x[80]-x[141]+3.72*x[264] == -11.0)
@constraint(m, e73, 2.457*x[81]-x[142]+32.1*x[265] == -100.0)
@constraint(m, e74, 2.53*x[81]-x[143]+23.3*x[265] == -50.0)
@constraint(m, e75, 0.29*x[81]-x[144]+3.72*x[265] == -11.0)
@constraint(m, e76, 2.457*x[82]-x[145]+32.1*x[266] == -100.0)
@constraint(m, e77, 2.53*x[82]-x[146]+23.3*x[266] == -50.0)
@constraint(m, e78, 0.29*x[82]-x[147]+3.72*x[266] == -11.0)
@constraint(m, e79, 2.457*x[83]-x[148]+32.1*x[267] == -100.0)
@constraint(m, e80, 2.53*x[83]-x[149]+23.3*x[267] == -50.0)
@constraint(m, e81, 0.29*x[83]-x[150]+3.72*x[267] == -11.0)
@constraint(m, e82, 2.457*x[84]-x[151]+32.1*x[268] == -100.0)
@constraint(m, e83, 2.53*x[84]-x[152]+23.3*x[268] == -50.0)
@constraint(m, e84, 0.29*x[84]-x[153]+3.72*x[268] == -11.0)
@constraint(m, e85, 2.457*x[85]-x[154]+32.1*x[269] == -100.0)
@constraint(m, e86, 2.53*x[85]-x[155]+23.3*x[269] == -50.0)
@constraint(m, e87, 0.29*x[85]-x[156]+3.72*x[269] == -11.0)
@constraint(m, e88, 2.457*x[86]-x[157]+32.1*x[270] == -100.0)
@constraint(m, e89, 2.53*x[86]-x[158]+23.3*x[270] == -50.0)
@constraint(m, e90, 0.29*x[86]-x[159]+3.72*x[270] == -11.0)
@constraint(m, e91, x[62]-x[75]-x[160] == 0.0)
@constraint(m, e92, x[62]-x[76]-x[161] == 0.0)
@constraint(m, e93, x[62]-x[77]-x[162] == 0.0)
@constraint(m, e94, x[62]-x[78]-x[163] == 0.0)
@constraint(m, e95, x[62]-x[79]-x[164] == 0.0)
@constraint(m, e96, x[62]-x[80]-x[165] == 0.0)
@constraint(m, e97, x[62]-x[81]-x[166] == 0.0)
@constraint(m, e98, x[62]-x[82]-x[167] == 0.0)
@constraint(m, e99, x[62]-x[83]-x[168] == 0.0)
@constraint(m, e100, x[62]-x[84]-x[169] == 0.0)
@constraint(m, e101, x[62]-x[85]-x[170] == 0.0)
@constraint(m, e102, x[62]-x[86]-x[171] == 0.0)
@constraint(m, e103, x[87]-36000*b[173] <= 0.0)
@constraint(m, e104, x[88]-36000*b[174] <= 0.0)
@constraint(m, e105, x[89]-36000*b[175] <= 0.0)
@constraint(m, e106, x[90]-36000*b[176] <= 0.0)
@constraint(m, e107, x[91]-36000*b[177] <= 0.0)
@constraint(m, e108, x[92]-36000*b[178] <= 0.0)
@constraint(m, e109, x[93]-36000*b[179] <= 0.0)
@constraint(m, e110, x[94]-36000*b[180] <= 0.0)
@constraint(m, e111, x[95]-36000*b[181] <= 0.0)
@constraint(m, e112, x[96]-36000*b[182] <= 0.0)
@constraint(m, e113, x[97]-36000*b[183] <= 0.0)
@constraint(m, e114, x[98]-36000*b[184] <= 0.0)
@constraint(m, e115, x[63]+36000*b[173] <= 36000.0)
@constraint(m, e116, x[64]+36000*b[174] <= 36000.0)
@constraint(m, e117, x[65]+36000*b[175] <= 36000.0)
@constraint(m, e118, x[66]+36000*b[176] <= 36000.0)
@constraint(m, e119, x[67]+36000*b[177] <= 36000.0)
@constraint(m, e120, x[68]+36000*b[178] <= 36000.0)
@constraint(m, e121, x[69]+36000*b[179] <= 36000.0)
@constraint(m, e122, x[70]+36000*b[180] <= 36000.0)
@constraint(m, e123, x[71]+36000*b[181] <= 36000.0)
@constraint(m, e124, x[72]+36000*b[182] <= 36000.0)
@constraint(m, e125, x[73]+36000*b[183] <= 36000.0)
@constraint(m, e126, x[74]+36000*b[184] <= 36000.0)
@constraint(m, e127, x[99]-36000*b[185] <= 0.0)
@constraint(m, e128, x[100]-36000*b[186] <= 0.0)
@constraint(m, e129, x[101]-36000*b[187] <= 0.0)
@constraint(m, e130, x[102]-36000*b[188] <= 0.0)
@constraint(m, e131, x[103]-36000*b[189] <= 0.0)
@constraint(m, e132, x[104]-36000*b[190] <= 0.0)
@constraint(m, e133, x[105]-36000*b[191] <= 0.0)
@constraint(m, e134, x[106]-36000*b[192] <= 0.0)
@constraint(m, e135, x[107]-36000*b[193] <= 0.0)
@constraint(m, e136, x[108]-36000*b[194] <= 0.0)
@constraint(m, e137, x[109]-36000*b[195] <= 0.0)
@constraint(m, e138, x[110]-36000*b[196] <= 0.0)
@constraint(m, e139, x[75]+36000*b[185] <= 36000.0)
@constraint(m, e140, x[76]+36000*b[186] <= 36000.0)
@constraint(m, e141, x[77]+36000*b[187] <= 36000.0)
@constraint(m, e142, x[78]+36000*b[188] <= 36000.0)
@constraint(m, e143, x[79]+36000*b[189] <= 36000.0)
@constraint(m, e144, x[80]+36000*b[190] <= 36000.0)
@constraint(m, e145, x[81]+36000*b[191] <= 36000.0)
@constraint(m, e146, x[82]+36000*b[192] <= 36000.0)
@constraint(m, e147, x[83]+36000*b[193] <= 36000.0)
@constraint(m, e148, x[84]+36000*b[194] <= 36000.0)
@constraint(m, e149, x[85]+36000*b[195] <= 36000.0)
@constraint(m, e150, x[86]+36000*b[196] <= 36000.0)
@constraint(m, e151, x[111]-36000*b[197] <= 0.0)
@constraint(m, e152, x[13]+36000*b[197] <= 36000.0)
@constraint(m, e153, x[112]-36000*b[198] <= 0.0)
@constraint(m, e154, x[113]-36000*b[199] <= 0.0)
@constraint(m, e155, x[114]-36000*b[200] <= 0.0)
@constraint(m, e156, x[115]-36000*b[201] <= 0.0)
@constraint(m, e157, x[116]-36000*b[202] <= 0.0)
@constraint(m, e158, x[117]-36000*b[203] <= 0.0)
@constraint(m, e159, x[118]-36000*b[204] <= 0.0)
@constraint(m, e160, x[119]-36000*b[205] <= 0.0)
@constraint(m, e161, x[120]-36000*b[206] <= 0.0)
@constraint(m, e162, x[121]-36000*b[207] <= 0.0)
@constraint(m, e163, x[122]-36000*b[208] <= 0.0)
@constraint(m, e164, x[123]-36000*b[209] <= 0.0)
@constraint(m, e165, x[1]+36000*b[198] <= 36000.0)
@constraint(m, e166, x[2]+36000*b[199] <= 36000.0)
@constraint(m, e167, x[3]+36000*b[200] <= 36000.0)
@constraint(m, e168, x[4]+36000*b[201] <= 36000.0)
@constraint(m, e169, x[5]+36000*b[202] <= 36000.0)
@constraint(m, e170, x[6]+36000*b[203] <= 36000.0)
@constraint(m, e171, x[7]+36000*b[204] <= 36000.0)
@constraint(m, e172, x[8]+36000*b[205] <= 36000.0)
@constraint(m, e173, x[9]+36000*b[206] <= 36000.0)
@constraint(m, e174, x[10]+36000*b[207] <= 36000.0)
@constraint(m, e175, x[11]+36000*b[208] <= 36000.0)
@constraint(m, e176, x[12]+36000*b[209] <= 36000.0)
@constraint(m, e177, x[124]-36000*b[210] <= 0.0)
@constraint(m, e178, x[125]-36000*b[211] <= 0.0)
@constraint(m, e179, x[126]-36000*b[212] <= 0.0)
@constraint(m, e180, x[127]-36000*b[213] <= 0.0)
@constraint(m, e181, x[128]-36000*b[214] <= 0.0)
@constraint(m, e182, x[129]-36000*b[215] <= 0.0)
@constraint(m, e183, x[130]-36000*b[216] <= 0.0)
@constraint(m, e184, x[131]-36000*b[217] <= 0.0)
@constraint(m, e185, x[132]-36000*b[218] <= 0.0)
@constraint(m, e186, x[133]-36000*b[219] <= 0.0)
@constraint(m, e187, x[134]-36000*b[220] <= 0.0)
@constraint(m, e188, x[135]-36000*b[221] <= 0.0)
@constraint(m, e189, x[136]-36000*b[222] <= 0.0)
@constraint(m, e190, x[137]-36000*b[223] <= 0.0)
@constraint(m, e191, x[138]-36000*b[224] <= 0.0)
@constraint(m, e192, x[139]-36000*b[225] <= 0.0)
@constraint(m, e193, x[140]-36000*b[226] <= 0.0)
@constraint(m, e194, x[141]-36000*b[227] <= 0.0)
@constraint(m, e195, x[142]-36000*b[228] <= 0.0)
@constraint(m, e196, x[143]-36000*b[229] <= 0.0)
@constraint(m, e197, x[144]-36000*b[230] <= 0.0)
@constraint(m, e198, x[145]-36000*b[231] <= 0.0)
@constraint(m, e199, x[146]-36000*b[232] <= 0.0)
@constraint(m, e200, x[147]-36000*b[233] <= 0.0)
@constraint(m, e201, x[148]-36000*b[234] <= 0.0)
@constraint(m, e202, x[149]-36000*b[235] <= 0.0)
@constraint(m, e203, x[150]-36000*b[236] <= 0.0)
@constraint(m, e204, x[151]-36000*b[237] <= 0.0)
@constraint(m, e205, x[152]-36000*b[238] <= 0.0)
@constraint(m, e206, x[153]-36000*b[239] <= 0.0)
@constraint(m, e207, x[154]-36000*b[240] <= 0.0)
@constraint(m, e208, x[155]-36000*b[241] <= 0.0)
@constraint(m, e209, x[156]-36000*b[242] <= 0.0)
@constraint(m, e210, x[157]-36000*b[243] <= 0.0)
@constraint(m, e211, x[158]-36000*b[244] <= 0.0)
@constraint(m, e212, x[159]-36000*b[245] <= 0.0)
@constraint(m, e213, x[14]+36000*b[210] <= 36000.0)
@constraint(m, e214, x[15]+36000*b[211] <= 36000.0)
@constraint(m, e215, x[16]+36000*b[212] <= 36000.0)
@constraint(m, e216, x[17]+36000*b[213] <= 36000.0)
@constraint(m, e217, x[18]+36000*b[214] <= 36000.0)
@constraint(m, e218, x[19]+36000*b[215] <= 36000.0)
@constraint(m, e219, x[20]+36000*b[216] <= 36000.0)
@constraint(m, e220, x[21]+36000*b[217] <= 36000.0)
@constraint(m, e221, x[22]+36000*b[218] <= 36000.0)
@constraint(m, e222, x[23]+36000*b[219] <= 36000.0)
@constraint(m, e223, x[24]+36000*b[220] <= 36000.0)
@constraint(m, e224, x[25]+36000*b[221] <= 36000.0)
@constraint(m, e225, x[26]+36000*b[222] <= 36000.0)
@constraint(m, e226, x[27]+36000*b[223] <= 36000.0)
@constraint(m, e227, x[28]+36000*b[224] <= 36000.0)
@constraint(m, e228, x[29]+36000*b[225] <= 36000.0)
@constraint(m, e229, x[30]+36000*b[226] <= 36000.0)
@constraint(m, e230, x[31]+36000*b[227] <= 36000.0)
@constraint(m, e231, x[32]+36000*b[228] <= 36000.0)
@constraint(m, e232, x[33]+36000*b[229] <= 36000.0)
@constraint(m, e233, x[34]+36000*b[230] <= 36000.0)
@constraint(m, e234, x[35]+36000*b[231] <= 36000.0)
@constraint(m, e235, x[36]+36000*b[232] <= 36000.0)
@constraint(m, e236, x[37]+36000*b[233] <= 36000.0)
@constraint(m, e237, x[38]+36000*b[234] <= 36000.0)
@constraint(m, e238, x[39]+36000*b[235] <= 36000.0)
@constraint(m, e239, x[40]+36000*b[236] <= 36000.0)
@constraint(m, e240, x[41]+36000*b[237] <= 36000.0)
@constraint(m, e241, x[42]+36000*b[238] <= 36000.0)
@constraint(m, e242, x[43]+36000*b[239] <= 36000.0)
@constraint(m, e243, x[44]+36000*b[240] <= 36000.0)
@constraint(m, e244, x[45]+36000*b[241] <= 36000.0)
@constraint(m, e245, x[46]+36000*b[242] <= 36000.0)
@constraint(m, e246, x[47]+36000*b[243] <= 36000.0)
@constraint(m, e247, x[48]+36000*b[244] <= 36000.0)
@constraint(m, e248, x[49]+36000*b[245] <= 36000.0)
@constraint(m, e249, x[160]-36000*b[246] <= 0.0)
@constraint(m, e250, x[161]-36000*b[247] <= 0.0)
@constraint(m, e251, x[162]-36000*b[248] <= 0.0)
@constraint(m, e252, x[163]-36000*b[249] <= 0.0)
@constraint(m, e253, x[164]-36000*b[250] <= 0.0)
@constraint(m, e254, x[165]-36000*b[251] <= 0.0)
@constraint(m, e255, x[166]-36000*b[252] <= 0.0)
@constraint(m, e256, x[167]-36000*b[253] <= 0.0)
@constraint(m, e257, x[168]-36000*b[254] <= 0.0)
@constraint(m, e258, x[169]-36000*b[255] <= 0.0)
@constraint(m, e259, x[170]-36000*b[256] <= 0.0)
@constraint(m, e260, x[171]-36000*b[257] <= 0.0)
@constraint(m, e261, x[50]+36000*b[246] <= 36000.0)
@constraint(m, e262, x[51]+36000*b[247] <= 36000.0)
@constraint(m, e263, x[52]+36000*b[248] <= 36000.0)
@constraint(m, e264, x[53]+36000*b[249] <= 36000.0)
@constraint(m, e265, x[54]+36000*b[250] <= 36000.0)
@constraint(m, e266, x[55]+36000*b[251] <= 36000.0)
@constraint(m, e267, x[56]+36000*b[252] <= 36000.0)
@constraint(m, e268, x[57]+36000*b[253] <= 36000.0)
@constraint(m, e269, x[58]+36000*b[254] <= 36000.0)
@constraint(m, e270, x[59]+36000*b[255] <= 36000.0)
@constraint(m, e271, x[60]+36000*b[256] <= 36000.0)
@constraint(m, e272, x[61]+36000*b[257] <= 36000.0)
@constraint(m, e273, x[62] <= 2000.0)


# ----- Objective ----- #
@objective(m, Max, x[258])

m = m 		 # model get returned when including this script. 
