using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
@variable(m, x[x_Idx])
b_Idx = Any[36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[17], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[34]+x[35] == 0.0)
@constraint(m, e2, -x[2]+x[3]+6.6525*b[38]+4.24*b[47]-4.24*b[56]+4.24*b[65]+190*b[89] <= 189.34)
@constraint(m, e3, 6.6525*b[38]+4.24*b[47]-4.24*b[56]+4.24*b[65]+190*b[90] <= 189.34)
@constraint(m, e4, x[3]-x[4]+6.6525*b[38]+4.24*b[47]-4.24*b[56]+4.24*b[65]+190*b[91] <= 189.34)
@constraint(m, e5, x[3]-x[5]+6.6525*b[38]+4.24*b[47]-4.24*b[56]+4.24*b[65]+190*b[92] <= 189.34)
@constraint(m, e6, x[3]-x[6]+6.6525*b[38]+4.24*b[47]-4.24*b[56]+4.24*b[65]+190*b[93] <= 189.34)
@constraint(m, e7, x[3]-x[7]+6.6525*b[38]+4.24*b[47]-4.24*b[56]+4.24*b[65]+190*b[94] <= 189.34)
@constraint(m, e8, x[3]-x[8]+6.6525*b[38]+4.24*b[47]-4.24*b[56]+4.24*b[65]+190*b[95] <= 189.34)
@constraint(m, e9, x[3]-x[9]+6.6525*b[38]+4.24*b[47]-4.24*b[56]+4.24*b[65]+190*b[96] <= 189.34)
@constraint(m, e10, -x[1]+x[4]+6.5*b[39]+4.15*b[48]-4.15*b[57]+4.15*b[66]+190*b[97] <= 189.25)
@constraint(m, e11, -x[3]+x[4]+6.5*b[39]+4.15*b[48]-4.15*b[57]+4.15*b[66]+190*b[99] <= 189.25)
@constraint(m, e12, 6.5*b[39]+4.15*b[48]-4.15*b[57]+4.15*b[66]+190*b[100] <= 189.25)
@constraint(m, e13, x[4]-x[5]+6.5*b[39]+4.15*b[48]-4.15*b[57]+4.15*b[66]+190*b[101] <= 189.25)
@constraint(m, e14, x[4]-x[6]+6.5*b[39]+4.15*b[48]-4.15*b[57]+4.15*b[66]+190*b[102] <= 189.25)
@constraint(m, e15, x[4]-x[7]+6.5*b[39]+4.15*b[48]-4.15*b[57]+4.15*b[66]+190*b[103] <= 189.25)
@constraint(m, e16, x[4]-x[8]+6.5*b[39]+4.15*b[48]-4.15*b[57]+4.15*b[66]+190*b[104] <= 189.25)
@constraint(m, e17, x[4]-x[9]+6.5*b[39]+4.15*b[48]-4.15*b[57]+4.15*b[66]+190*b[105] <= 189.25)
@constraint(m, e18, -x[1]+x[5]+6.18*b[40]+2.985*b[49]-2.985*b[58]+2.985*b[67]+190*b[106] <= 189.43)
@constraint(m, e19, -x[2]+x[5]+6.18*b[40]+2.985*b[49]-2.985*b[58]+2.985*b[67]+190*b[107] <= 189.43)
@constraint(m, e20, -x[4]+x[5]+6.18*b[40]+2.985*b[49]-2.985*b[58]+2.985*b[67]+190*b[109] <= 189.43)
@constraint(m, e21, 6.18*b[40]+2.985*b[49]-2.985*b[58]+2.985*b[67]+190*b[110] <= 189.43)
@constraint(m, e22, x[5]-x[6]+6.18*b[40]+2.985*b[49]-2.985*b[58]+2.985*b[67]+190*b[111] <= 189.43)
@constraint(m, e23, x[5]-x[7]+6.18*b[40]+2.985*b[49]-2.985*b[58]+2.985*b[67]+190*b[112] <= 189.43)
@constraint(m, e24, x[5]-x[8]+6.18*b[40]+2.985*b[49]-2.985*b[58]+2.985*b[67]+190*b[113] <= 189.43)
@constraint(m, e25, x[5]-x[9]+6.18*b[40]+2.985*b[49]-2.985*b[58]+2.985*b[67]+190*b[114] <= 189.43)
@constraint(m, e26, -x[1]+x[6]+5.345*b[41]+2.045*b[50]-2.045*b[59]+2.045*b[68]+190*b[115] <= 189.745)
@constraint(m, e27, -x[2]+x[6]+5.345*b[41]+2.045*b[50]-2.045*b[59]+2.045*b[68]+190*b[116] <= 189.745)
@constraint(m, e28, -x[3]+x[6]+5.345*b[41]+2.045*b[50]-2.045*b[59]+2.045*b[68]+190*b[117] <= 189.745)
@constraint(m, e29, -x[5]+x[6]+5.345*b[41]+2.045*b[50]-2.045*b[59]+2.045*b[68]+190*b[119] <= 189.745)
@constraint(m, e30, 5.345*b[41]+2.045*b[50]-2.045*b[59]+2.045*b[68]+190*b[120] <= 189.745)
@constraint(m, e31, x[6]-x[7]+5.345*b[41]+2.045*b[50]-2.045*b[59]+2.045*b[68]+190*b[121] <= 189.745)
@constraint(m, e32, x[6]-x[8]+5.345*b[41]+2.045*b[50]-2.045*b[59]+2.045*b[68]+190*b[122] <= 189.745)
@constraint(m, e33, x[6]-x[9]+5.345*b[41]+2.045*b[50]-2.045*b[59]+2.045*b[68]+190*b[123] <= 189.745)
@constraint(m, e34, -x[1]+x[7]+5.445*b[42]+5.145*b[51]-5.145*b[60]+5.145*b[69]+190*b[124] <= 189.545)
@constraint(m, e35, -x[2]+x[7]+5.445*b[42]+5.145*b[51]-5.145*b[60]+5.145*b[69]+190*b[125] <= 189.545)
@constraint(m, e36, -x[3]+x[7]+5.445*b[42]+5.145*b[51]-5.145*b[60]+5.145*b[69]+190*b[126] <= 189.545)
@constraint(m, e37, -x[4]+x[7]+5.445*b[42]+5.145*b[51]-5.145*b[60]+5.145*b[69]+190*b[127] <= 189.545)
@constraint(m, e38, -x[6]+x[7]+5.445*b[42]+5.145*b[51]-5.145*b[60]+5.145*b[69]+190*b[129] <= 189.545)
@constraint(m, e39, 5.445*b[42]+5.145*b[51]-5.145*b[60]+5.145*b[69]+190*b[130] <= 189.545)
@constraint(m, e40, x[7]-x[8]+5.445*b[42]+5.145*b[51]-5.145*b[60]+5.145*b[69]+190*b[131] <= 189.545)
@constraint(m, e41, x[7]-x[9]+5.445*b[42]+5.145*b[51]-5.145*b[60]+5.145*b[69]+190*b[132] <= 189.545)
@constraint(m, e42, -x[1]+x[8]+6.1*b[43]+4.25*b[52]-4.25*b[61]+4.25*b[70]+190*b[133] <= 189.85)
@constraint(m, e43, -x[2]+x[8]+6.1*b[43]+4.25*b[52]-4.25*b[61]+4.25*b[70]+190*b[134] <= 189.85)
@constraint(m, e44, -x[3]+x[8]+6.1*b[43]+4.25*b[52]-4.25*b[61]+4.25*b[70]+190*b[135] <= 189.85)
@constraint(m, e45, -x[4]+x[8]+6.1*b[43]+4.25*b[52]-4.25*b[61]+4.25*b[70]+190*b[136] <= 189.85)
@constraint(m, e46, -x[5]+x[8]+6.1*b[43]+4.25*b[52]-4.25*b[61]+4.25*b[70]+190*b[137] <= 189.85)
@constraint(m, e47, -x[7]+x[8]+6.1*b[43]+4.25*b[52]-4.25*b[61]+4.25*b[70]+190*b[139] <= 189.85)
@constraint(m, e48, 6.1*b[43]+4.25*b[52]-4.25*b[61]+4.25*b[70]+190*b[140] <= 189.85)
@constraint(m, e49, x[8]-x[9]+6.1*b[43]+4.25*b[52]-4.25*b[61]+4.25*b[70]+190*b[141] <= 189.85)
@constraint(m, e50, -x[1]+x[9]+2.43*b[44]+1.53*b[53]-1.53*b[62]+1.53*b[71]+190*b[142] <= 189.93)
@constraint(m, e51, -x[2]+x[9]+2.43*b[44]+1.53*b[53]-1.53*b[62]+1.53*b[71]+190*b[143] <= 189.93)
@constraint(m, e52, -x[3]+x[9]+2.43*b[44]+1.53*b[53]-1.53*b[62]+1.53*b[71]+190*b[144] <= 189.93)
@constraint(m, e53, -x[4]+x[9]+2.43*b[44]+1.53*b[53]-1.53*b[62]+1.53*b[71]+190*b[145] <= 189.93)
@constraint(m, e54, -x[5]+x[9]+2.43*b[44]+1.53*b[53]-1.53*b[62]+1.53*b[71]+190*b[146] <= 189.93)
@constraint(m, e55, -x[6]+x[9]+2.43*b[44]+1.53*b[53]-1.53*b[62]+1.53*b[71]+190*b[147] <= 189.93)
@constraint(m, e56, -x[8]+x[9]+2.43*b[44]+1.53*b[53]-1.53*b[62]+1.53*b[71]+190*b[149] <= 189.93)
@constraint(m, e57, 2.43*b[44]+1.53*b[53]-1.53*b[62]+1.53*b[71]+190*b[150] <= 189.93)
@NLconstraint(m, e58, x[28]*b[36]+x[30]*(b[45]-b[54]+b[63])+x[32]*(1-b[36]-b[45]+b[54]-b[63])+x[1]-x[2]+190*b[72] <= 190.0)
@NLconstraint(m, e59, x[28]*b[36]+x[30]*(b[45]-b[54]+b[63])+x[32]*(1-b[36]-b[45]+b[54]-b[63])+x[1]-x[3]+190*b[73] <= 190.0)
@NLconstraint(m, e60, x[28]*b[36]+x[30]*(b[45]-b[54]+b[63])+x[32]*(1-b[36]-b[45]+b[54]-b[63])+x[1]-x[4]+190*b[74] <= 190.0)
@NLconstraint(m, e61, x[28]*b[36]+x[30]*(b[45]-b[54]+b[63])+x[32]*(1-b[36]-b[45]+b[54]-b[63])+x[1]-x[5]+190*b[75] <= 190.0)
@NLconstraint(m, e62, x[28]*b[36]+x[30]*(b[45]-b[54]+b[63])+x[32]*(1-b[36]-b[45]+b[54]-b[63])+x[1]-x[6]+190*b[76] <= 190.0)
@NLconstraint(m, e63, x[28]*b[36]+x[30]*(b[45]-b[54]+b[63])+x[32]*(1-b[36]-b[45]+b[54]-b[63])+x[1]-x[7]+190*b[77] <= 190.0)
@NLconstraint(m, e64, x[28]*b[36]+x[30]*(b[45]-b[54]+b[63])+x[32]*(1-b[36]-b[45]+b[54]-b[63])+x[1]-x[8]+190*b[78] <= 190.0)
@NLconstraint(m, e65, x[28]*b[36]+x[30]*(b[45]-b[54]+b[63])+x[32]*(1-b[36]-b[45]+b[54]-b[63])+x[1]-x[9]+190*b[79] <= 190.0)
@NLconstraint(m, e66, x[29]*b[37]+x[31]*(b[46]-b[55]+b[64])+x[33]*(1-b[37]-b[46]+b[55]-b[64])-x[1]+x[2]+190*b[80] <= 190.0)
@NLconstraint(m, e67, x[29]*b[37]+x[31]*(b[46]-b[55]+b[64])+x[33]*(1-b[37]-b[46]+b[55]-b[64])+x[2]-x[3]+190*b[81] <= 190.0)
@NLconstraint(m, e68, x[29]*b[37]+x[31]*(b[46]-b[55]+b[64])+x[33]*(1-b[37]-b[46]+b[55]-b[64])+x[2]-x[4]+190*b[82] <= 190.0)
@NLconstraint(m, e69, x[29]*b[37]+x[31]*(b[46]-b[55]+b[64])+x[33]*(1-b[37]-b[46]+b[55]-b[64])+x[2]-x[5]+190*b[83] <= 190.0)
@NLconstraint(m, e70, x[29]*b[37]+x[31]*(b[46]-b[55]+b[64])+x[33]*(1-b[37]-b[46]+b[55]-b[64])+x[2]-x[6]+190*b[84] <= 190.0)
@NLconstraint(m, e71, x[29]*b[37]+x[31]*(b[46]-b[55]+b[64])+x[33]*(1-b[37]-b[46]+b[55]-b[64])+x[2]-x[7]+190*b[85] <= 190.0)
@NLconstraint(m, e72, x[29]*b[37]+x[31]*(b[46]-b[55]+b[64])+x[33]*(1-b[37]-b[46]+b[55]-b[64])+x[2]-x[8]+190*b[86] <= 190.0)
@NLconstraint(m, e73, x[29]*b[37]+x[31]*(b[46]-b[55]+b[64])+x[33]*(1-b[37]-b[46]+b[55]-b[64])+x[2]-x[9]+190*b[87] <= 190.0)
@constraint(m, e74, -x[11]+x[12]-6.6525*b[38]-6.6525*b[47]+4.24*b[56]+190*b[168] <= 182.6875)
@constraint(m, e75, -6.6525*b[38]-6.6525*b[47]+4.24*b[56]+190*b[169] <= 182.6875)
@constraint(m, e76, x[12]-x[13]-6.6525*b[38]-6.6525*b[47]+4.24*b[56]+190*b[170] <= 182.6875)
@constraint(m, e77, x[12]-x[14]-6.6525*b[38]-6.6525*b[47]+4.24*b[56]+190*b[171] <= 182.6875)
@constraint(m, e78, x[12]-x[15]-6.6525*b[38]-6.6525*b[47]+4.24*b[56]+190*b[172] <= 182.6875)
@constraint(m, e79, x[12]-x[16]-6.6525*b[38]-6.6525*b[47]+4.24*b[56]+190*b[173] <= 182.6875)
@constraint(m, e80, x[12]-x[17]-6.6525*b[38]-6.6525*b[47]+4.24*b[56]+190*b[174] <= 182.6875)
@constraint(m, e81, x[12]-x[18]-6.6525*b[38]-6.6525*b[47]+4.24*b[56]+190*b[175] <= 182.6875)
@constraint(m, e82, -x[10]+x[13]-6.5*b[39]-6.5*b[48]+4.15*b[57]+190*b[176] <= 182.75)
@constraint(m, e83, -x[12]+x[13]-6.5*b[39]-6.5*b[48]+4.15*b[57]+190*b[178] <= 182.75)
@constraint(m, e84, -6.5*b[39]-6.5*b[48]+4.15*b[57]+190*b[179] <= 182.75)
@constraint(m, e85, x[13]-x[14]-6.5*b[39]-6.5*b[48]+4.15*b[57]+190*b[180] <= 182.75)
@constraint(m, e86, x[13]-x[15]-6.5*b[39]-6.5*b[48]+4.15*b[57]+190*b[181] <= 182.75)
@constraint(m, e87, x[13]-x[16]-6.5*b[39]-6.5*b[48]+4.15*b[57]+190*b[182] <= 182.75)
@constraint(m, e88, x[13]-x[17]-6.5*b[39]-6.5*b[48]+4.15*b[57]+190*b[183] <= 182.75)
@constraint(m, e89, x[13]-x[18]-6.5*b[39]-6.5*b[48]+4.15*b[57]+190*b[184] <= 182.75)
@constraint(m, e90, -x[10]+x[14]-6.18*b[40]-6.18*b[49]+2.985*b[58]+190*b[185] <= 183.25)
@constraint(m, e91, -x[11]+x[14]-6.18*b[40]-6.18*b[49]+2.985*b[58]+190*b[186] <= 183.25)
@constraint(m, e92, -x[13]+x[14]-6.18*b[40]-6.18*b[49]+2.985*b[58]+190*b[188] <= 183.25)
@constraint(m, e93, -6.18*b[40]-6.18*b[49]+2.985*b[58]+190*b[189] <= 183.25)
@constraint(m, e94, x[14]-x[15]-6.18*b[40]-6.18*b[49]+2.985*b[58]+190*b[190] <= 183.25)
@constraint(m, e95, x[14]-x[16]-6.18*b[40]-6.18*b[49]+2.985*b[58]+190*b[191] <= 183.25)
@constraint(m, e96, x[14]-x[17]-6.18*b[40]-6.18*b[49]+2.985*b[58]+190*b[192] <= 183.25)
@constraint(m, e97, x[14]-x[18]-6.18*b[40]-6.18*b[49]+2.985*b[58]+190*b[193] <= 183.25)
@constraint(m, e98, -x[10]+x[15]-5.345*b[41]-5.345*b[50]+2.045*b[59]+190*b[194] <= 184.4)
@constraint(m, e99, -x[11]+x[15]-5.345*b[41]-5.345*b[50]+2.045*b[59]+190*b[195] <= 184.4)
@constraint(m, e100, -x[12]+x[15]-5.345*b[41]-5.345*b[50]+2.045*b[59]+190*b[196] <= 184.4)
@constraint(m, e101, -x[14]+x[15]-5.345*b[41]-5.345*b[50]+2.045*b[59]+190*b[198] <= 184.4)
@constraint(m, e102, -5.345*b[41]-5.345*b[50]+2.045*b[59]+190*b[199] <= 184.4)
@constraint(m, e103, x[15]-x[16]-5.345*b[41]-5.345*b[50]+2.045*b[59]+190*b[200] <= 184.4)
@constraint(m, e104, x[15]-x[17]-5.345*b[41]-5.345*b[50]+2.045*b[59]+190*b[201] <= 184.4)
@constraint(m, e105, x[15]-x[18]-5.345*b[41]-5.345*b[50]+2.045*b[59]+190*b[202] <= 184.4)
@constraint(m, e106, -x[10]+x[16]-5.445*b[42]-5.445*b[51]+5.145*b[60]+190*b[203] <= 184.1)
@constraint(m, e107, -x[11]+x[16]-5.445*b[42]-5.445*b[51]+5.145*b[60]+190*b[204] <= 184.1)
@constraint(m, e108, -x[12]+x[16]-5.445*b[42]-5.445*b[51]+5.145*b[60]+190*b[205] <= 184.1)
@constraint(m, e109, -x[13]+x[16]-5.445*b[42]-5.445*b[51]+5.145*b[60]+190*b[206] <= 184.1)
@constraint(m, e110, -x[15]+x[16]-5.445*b[42]-5.445*b[51]+5.145*b[60]+190*b[208] <= 184.1)
@constraint(m, e111, -5.445*b[42]-5.445*b[51]+5.145*b[60]+190*b[209] <= 184.1)
@constraint(m, e112, x[16]-x[17]-5.445*b[42]-5.445*b[51]+5.145*b[60]+190*b[210] <= 184.1)
@constraint(m, e113, x[16]-x[18]-5.445*b[42]-5.445*b[51]+5.145*b[60]+190*b[211] <= 184.1)
@constraint(m, e114, -x[10]+x[17]-6.1*b[43]-6.1*b[52]+4.25*b[61]+190*b[212] <= 183.75)
@constraint(m, e115, -x[11]+x[17]-6.1*b[43]-6.1*b[52]+4.25*b[61]+190*b[213] <= 183.75)
@constraint(m, e116, -x[12]+x[17]-6.1*b[43]-6.1*b[52]+4.25*b[61]+190*b[214] <= 183.75)
@constraint(m, e117, -x[13]+x[17]-6.1*b[43]-6.1*b[52]+4.25*b[61]+190*b[215] <= 183.75)
@constraint(m, e118, -x[14]+x[17]-6.1*b[43]-6.1*b[52]+4.25*b[61]+190*b[216] <= 183.75)
@constraint(m, e119, -x[16]+x[17]-6.1*b[43]-6.1*b[52]+4.25*b[61]+190*b[218] <= 183.75)
@constraint(m, e120, -6.1*b[43]-6.1*b[52]+4.25*b[61]+190*b[219] <= 183.75)
@constraint(m, e121, x[17]-x[18]-6.1*b[43]-6.1*b[52]+4.25*b[61]+190*b[220] <= 183.75)
@constraint(m, e122, -x[10]+x[18]-2.43*b[44]-2.43*b[53]+1.53*b[62]+190*b[221] <= 187.5)
@constraint(m, e123, -x[11]+x[18]-2.43*b[44]-2.43*b[53]+1.53*b[62]+190*b[222] <= 187.5)
@constraint(m, e124, -x[12]+x[18]-2.43*b[44]-2.43*b[53]+1.53*b[62]+190*b[223] <= 187.5)
@constraint(m, e125, -x[13]+x[18]-2.43*b[44]-2.43*b[53]+1.53*b[62]+190*b[224] <= 187.5)
@constraint(m, e126, -x[14]+x[18]-2.43*b[44]-2.43*b[53]+1.53*b[62]+190*b[225] <= 187.5)
@constraint(m, e127, -x[15]+x[18]-2.43*b[44]-2.43*b[53]+1.53*b[62]+190*b[226] <= 187.5)
@constraint(m, e128, -x[17]+x[18]-2.43*b[44]-2.43*b[53]+1.53*b[62]+190*b[228] <= 187.5)
@constraint(m, e129, -2.43*b[44]-2.43*b[53]+1.53*b[62]+190*b[229] <= 187.5)
@NLconstraint(m, e130, x[30]*b[54]+x[28]*(1-b[36]-b[45])+x[32]*(b[36]+b[45]-b[54])+x[10]-x[11]+190*b[151] <= 190.0)
@NLconstraint(m, e131, x[30]*b[54]+x[28]*(1-b[36]-b[45])+x[32]*(b[36]+b[45]-b[54])+x[10]-x[12]+190*b[152] <= 190.0)
@NLconstraint(m, e132, x[30]*b[54]+x[28]*(1-b[36]-b[45])+x[32]*(b[36]+b[45]-b[54])+x[10]-x[13]+190*b[153] <= 190.0)
@NLconstraint(m, e133, x[30]*b[54]+x[28]*(1-b[36]-b[45])+x[32]*(b[36]+b[45]-b[54])+x[10]-x[14]+190*b[154] <= 190.0)
@NLconstraint(m, e134, x[30]*b[54]+x[28]*(1-b[36]-b[45])+x[32]*(b[36]+b[45]-b[54])+x[10]-x[15]+190*b[155] <= 190.0)
@NLconstraint(m, e135, x[30]*b[54]+x[28]*(1-b[36]-b[45])+x[32]*(b[36]+b[45]-b[54])+x[10]-x[16]+190*b[156] <= 190.0)
@NLconstraint(m, e136, x[30]*b[54]+x[28]*(1-b[36]-b[45])+x[32]*(b[36]+b[45]-b[54])+x[10]-x[17]+190*b[157] <= 190.0)
@NLconstraint(m, e137, x[30]*b[54]+x[28]*(1-b[36]-b[45])+x[32]*(b[36]+b[45]-b[54])+x[10]-x[18]+190*b[158] <= 190.0)
@NLconstraint(m, e138, x[31]*b[55]+x[29]*(1-b[37]-b[46])+x[33]*(b[37]+b[46]-b[55])-x[10]+x[11]+190*b[159] <= 190.0)
@NLconstraint(m, e139, x[31]*b[55]+x[29]*(1-b[37]-b[46])+x[33]*(b[37]+b[46]-b[55])+x[11]-x[12]+190*b[160] <= 190.0)
@NLconstraint(m, e140, x[31]*b[55]+x[29]*(1-b[37]-b[46])+x[33]*(b[37]+b[46]-b[55])+x[11]-x[13]+190*b[161] <= 190.0)
@NLconstraint(m, e141, x[31]*b[55]+x[29]*(1-b[37]-b[46])+x[33]*(b[37]+b[46]-b[55])+x[11]-x[14]+190*b[162] <= 190.0)
@NLconstraint(m, e142, x[31]*b[55]+x[29]*(1-b[37]-b[46])+x[33]*(b[37]+b[46]-b[55])+x[11]-x[15]+190*b[163] <= 190.0)
@NLconstraint(m, e143, x[31]*b[55]+x[29]*(1-b[37]-b[46])+x[33]*(b[37]+b[46]-b[55])+x[11]-x[16]+190*b[164] <= 190.0)
@NLconstraint(m, e144, x[31]*b[55]+x[29]*(1-b[37]-b[46])+x[33]*(b[37]+b[46]-b[55])+x[11]-x[17]+190*b[165] <= 190.0)
@NLconstraint(m, e145, x[31]*b[55]+x[29]*(1-b[37]-b[46])+x[33]*(b[37]+b[46]-b[55])+x[11]-x[18]+190*b[166] <= 190.0)
@constraint(m, e146, -x[20]+x[21]+2.4125*b[47]-4.24*b[65]+190*b[247] <= 185.1)
@constraint(m, e147, 2.4125*b[47]-4.24*b[65]+190*b[248] <= 185.1)
@constraint(m, e148, x[21]-x[22]+2.4125*b[47]-4.24*b[65]+190*b[249] <= 185.1)
@constraint(m, e149, x[21]-x[23]+2.4125*b[47]-4.24*b[65]+190*b[250] <= 185.1)
@constraint(m, e150, x[21]-x[24]+2.4125*b[47]-4.24*b[65]+190*b[251] <= 185.1)
@constraint(m, e151, x[21]-x[25]+2.4125*b[47]-4.24*b[65]+190*b[252] <= 185.1)
@constraint(m, e152, x[21]-x[26]+2.4125*b[47]-4.24*b[65]+190*b[253] <= 185.1)
@constraint(m, e153, x[21]-x[27]+2.4125*b[47]-4.24*b[65]+190*b[254] <= 185.1)
@constraint(m, e154, -x[19]+x[22]+2.35*b[48]-4.15*b[66]+190*b[255] <= 185.1)
@constraint(m, e155, -x[21]+x[22]+2.35*b[48]-4.15*b[66]+190*b[257] <= 185.1)
@constraint(m, e156, 2.35*b[48]-4.15*b[66]+190*b[258] <= 185.1)
@constraint(m, e157, x[22]-x[23]+2.35*b[48]-4.15*b[66]+190*b[259] <= 185.1)
@constraint(m, e158, x[22]-x[24]+2.35*b[48]-4.15*b[66]+190*b[260] <= 185.1)
@constraint(m, e159, x[22]-x[25]+2.35*b[48]-4.15*b[66]+190*b[261] <= 185.1)
@constraint(m, e160, x[22]-x[26]+2.35*b[48]-4.15*b[66]+190*b[262] <= 185.1)
@constraint(m, e161, x[22]-x[27]+2.35*b[48]-4.15*b[66]+190*b[263] <= 185.1)
@constraint(m, e162, -x[19]+x[23]+3.195*b[49]-2.985*b[67]+190*b[264] <= 186.445)
@constraint(m, e163, -x[20]+x[23]+3.195*b[49]-2.985*b[67]+190*b[265] <= 186.445)
@constraint(m, e164, -x[22]+x[23]+3.195*b[49]-2.985*b[67]+190*b[267] <= 186.445)
@constraint(m, e165, 3.195*b[49]-2.985*b[67]+190*b[268] <= 186.445)
@constraint(m, e166, x[23]-x[24]+3.195*b[49]-2.985*b[67]+190*b[269] <= 186.445)
@constraint(m, e167, x[23]-x[25]+3.195*b[49]-2.985*b[67]+190*b[270] <= 186.445)
@constraint(m, e168, x[23]-x[26]+3.195*b[49]-2.985*b[67]+190*b[271] <= 186.445)
@constraint(m, e169, x[23]-x[27]+3.195*b[49]-2.985*b[67]+190*b[272] <= 186.445)
@constraint(m, e170, -x[19]+x[24]+3.3*b[50]-2.045*b[68]+190*b[273] <= 187.7)
@constraint(m, e171, -x[20]+x[24]+3.3*b[50]-2.045*b[68]+190*b[274] <= 187.7)
@constraint(m, e172, -x[21]+x[24]+3.3*b[50]-2.045*b[68]+190*b[275] <= 187.7)
@constraint(m, e173, -x[23]+x[24]+3.3*b[50]-2.045*b[68]+190*b[277] <= 187.7)
@constraint(m, e174, 3.3*b[50]-2.045*b[68]+190*b[278] <= 187.7)
@constraint(m, e175, x[24]-x[25]+3.3*b[50]-2.045*b[68]+190*b[279] <= 187.7)
@constraint(m, e176, x[24]-x[26]+3.3*b[50]-2.045*b[68]+190*b[280] <= 187.7)
@constraint(m, e177, x[24]-x[27]+3.3*b[50]-2.045*b[68]+190*b[281] <= 187.7)
@constraint(m, e178, -x[19]+x[25]+0.300000000000001*b[51]-5.145*b[69]+190*b[282] <= 184.4)
@constraint(m, e179, -x[20]+x[25]+0.300000000000001*b[51]-5.145*b[69]+190*b[283] <= 184.4)
@constraint(m, e180, -x[21]+x[25]+0.300000000000001*b[51]-5.145*b[69]+190*b[284] <= 184.4)
@constraint(m, e181, -x[22]+x[25]+0.300000000000001*b[51]-5.145*b[69]+190*b[285] <= 184.4)
@constraint(m, e182, -x[24]+x[25]+0.300000000000001*b[51]-5.145*b[69]+190*b[287] <= 184.4)
@constraint(m, e183, 0.300000000000001*b[51]-5.145*b[69]+190*b[288] <= 184.4)
@constraint(m, e184, x[25]-x[26]+0.300000000000001*b[51]-5.145*b[69]+190*b[289] <= 184.4)
@constraint(m, e185, x[25]-x[27]+0.300000000000001*b[51]-5.145*b[69]+190*b[290] <= 184.4)
@constraint(m, e186, -x[19]+x[26]+1.85*b[52]-4.25*b[70]+190*b[291] <= 185.6)
@constraint(m, e187, -x[20]+x[26]+1.85*b[52]-4.25*b[70]+190*b[292] <= 185.6)
@constraint(m, e188, -x[21]+x[26]+1.85*b[52]-4.25*b[70]+190*b[293] <= 185.6)
@constraint(m, e189, -x[22]+x[26]+1.85*b[52]-4.25*b[70]+190*b[294] <= 185.6)
@constraint(m, e190, -x[23]+x[26]+1.85*b[52]-4.25*b[70]+190*b[295] <= 185.6)
@constraint(m, e191, -x[25]+x[26]+1.85*b[52]-4.25*b[70]+190*b[297] <= 185.6)
@constraint(m, e192, 1.85*b[52]-4.25*b[70]+190*b[298] <= 185.6)
@constraint(m, e193, x[26]-x[27]+1.85*b[52]-4.25*b[70]+190*b[299] <= 185.6)
@constraint(m, e194, -x[19]+x[27]+0.9*b[53]-1.53*b[71]+190*b[300] <= 188.4)
@constraint(m, e195, -x[20]+x[27]+0.9*b[53]-1.53*b[71]+190*b[301] <= 188.4)
@constraint(m, e196, -x[21]+x[27]+0.9*b[53]-1.53*b[71]+190*b[302] <= 188.4)
@constraint(m, e197, -x[22]+x[27]+0.9*b[53]-1.53*b[71]+190*b[303] <= 188.4)
@constraint(m, e198, -x[23]+x[27]+0.9*b[53]-1.53*b[71]+190*b[304] <= 188.4)
@constraint(m, e199, -x[24]+x[27]+0.9*b[53]-1.53*b[71]+190*b[305] <= 188.4)
@constraint(m, e200, -x[26]+x[27]+0.9*b[53]-1.53*b[71]+190*b[307] <= 188.4)
@constraint(m, e201, 0.9*b[53]-1.53*b[71]+190*b[308] <= 188.4)
@NLconstraint(m, e202, x[32]*b[63]+x[30]*(1-b[45]-b[63])+x[28]*b[45]+x[19]-x[20]+190*b[230] <= 190.0)
@NLconstraint(m, e203, x[32]*b[63]+x[30]*(1-b[45]-b[63])+x[28]*b[45]+x[19]-x[21]+190*b[231] <= 190.0)
@NLconstraint(m, e204, x[32]*b[63]+x[30]*(1-b[45]-b[63])+x[28]*b[45]+x[19]-x[22]+190*b[232] <= 190.0)
@NLconstraint(m, e205, x[32]*b[63]+x[30]*(1-b[45]-b[63])+x[28]*b[45]+x[19]-x[23]+190*b[233] <= 190.0)
@NLconstraint(m, e206, x[32]*b[63]+x[30]*(1-b[45]-b[63])+x[28]*b[45]+x[19]-x[24]+190*b[234] <= 190.0)
@NLconstraint(m, e207, x[32]*b[63]+x[30]*(1-b[45]-b[63])+x[28]*b[45]+x[19]-x[25]+190*b[235] <= 190.0)
@NLconstraint(m, e208, x[32]*b[63]+x[30]*(1-b[45]-b[63])+x[28]*b[45]+x[19]-x[26]+190*b[236] <= 190.0)
@NLconstraint(m, e209, x[32]*b[63]+x[30]*(1-b[45]-b[63])+x[28]*b[45]+x[19]-x[27]+190*b[237] <= 190.0)
@NLconstraint(m, e210, x[33]*b[64]+x[31]*(1-b[46]-b[64])+x[29]*b[46]-x[19]+x[20]+190*b[238] <= 190.0)
@NLconstraint(m, e211, x[33]*b[64]+x[31]*(1-b[46]-b[64])+x[29]*b[46]+x[20]-x[21]+190*b[239] <= 190.0)
@NLconstraint(m, e212, x[33]*b[64]+x[31]*(1-b[46]-b[64])+x[29]*b[46]+x[20]-x[22]+190*b[240] <= 190.0)
@NLconstraint(m, e213, x[33]*b[64]+x[31]*(1-b[46]-b[64])+x[29]*b[46]+x[20]-x[23]+190*b[241] <= 190.0)
@NLconstraint(m, e214, x[33]*b[64]+x[31]*(1-b[46]-b[64])+x[29]*b[46]+x[20]-x[24]+190*b[242] <= 190.0)
@NLconstraint(m, e215, x[33]*b[64]+x[31]*(1-b[46]-b[64])+x[29]*b[46]+x[20]-x[25]+190*b[243] <= 190.0)
@NLconstraint(m, e216, x[33]*b[64]+x[31]*(1-b[46]-b[64])+x[29]*b[46]+x[20]-x[26]+190*b[244] <= 190.0)
@NLconstraint(m, e217, x[33]*b[64]+x[31]*(1-b[46]-b[64])+x[29]*b[46]+x[20]-x[27]+190*b[245] <= 190.0)
@constraint(m, e218, b[72]+b[80]+b[151]+b[159]+b[230]+b[238] >= 1.0)
@constraint(m, e219, b[73]+b[88]+b[152]+b[167]+b[231]+b[246] >= 1.0)
@constraint(m, e220, b[74]+b[97]+b[153]+b[176]+b[232]+b[255] >= 1.0)
@constraint(m, e221, b[75]+b[106]+b[154]+b[185]+b[233]+b[264] >= 1.0)
@constraint(m, e222, b[76]+b[115]+b[155]+b[194]+b[234]+b[273] >= 1.0)
@constraint(m, e223, b[77]+b[124]+b[156]+b[203]+b[235]+b[282] >= 1.0)
@constraint(m, e224, b[78]+b[133]+b[157]+b[212]+b[236]+b[291] >= 1.0)
@constraint(m, e225, b[79]+b[142]+b[158]+b[221]+b[237]+b[300] >= 1.0)
@constraint(m, e226, b[72]+b[80]+b[151]+b[159]+b[230]+b[238] >= 1.0)
@constraint(m, e227, b[81]+b[89]+b[160]+b[168]+b[239]+b[247] >= 1.0)
@constraint(m, e228, b[82]+b[98]+b[161]+b[177]+b[240]+b[256] >= 1.0)
@constraint(m, e229, b[83]+b[107]+b[162]+b[186]+b[241]+b[265] >= 1.0)
@constraint(m, e230, b[84]+b[116]+b[163]+b[195]+b[242]+b[274] >= 1.0)
@constraint(m, e231, b[85]+b[125]+b[164]+b[204]+b[243]+b[283] >= 1.0)
@constraint(m, e232, b[86]+b[134]+b[165]+b[213]+b[244]+b[292] >= 1.0)
@constraint(m, e233, b[87]+b[143]+b[166]+b[222]+b[245]+b[301] >= 1.0)
@constraint(m, e234, b[73]+b[88]+b[152]+b[167]+b[231]+b[246] >= 1.0)
@constraint(m, e235, b[81]+b[89]+b[160]+b[168]+b[239]+b[247] >= 1.0)
@constraint(m, e236, b[91]+b[99]+b[170]+b[178]+b[249]+b[257] >= 1.0)
@constraint(m, e237, b[92]+b[108]+b[171]+b[187]+b[250]+b[266] >= 1.0)
@constraint(m, e238, b[93]+b[117]+b[172]+b[196]+b[251]+b[275] >= 1.0)
@constraint(m, e239, b[94]+b[126]+b[173]+b[205]+b[252]+b[284] >= 1.0)
@constraint(m, e240, b[95]+b[135]+b[174]+b[214]+b[253]+b[293] >= 1.0)
@constraint(m, e241, b[96]+b[144]+b[175]+b[223]+b[254]+b[302] >= 1.0)
@constraint(m, e242, b[74]+b[97]+b[153]+b[176]+b[232]+b[255] >= 1.0)
@constraint(m, e243, b[82]+b[98]+b[161]+b[177]+b[240]+b[256] >= 1.0)
@constraint(m, e244, b[91]+b[99]+b[170]+b[178]+b[249]+b[257] >= 1.0)
@constraint(m, e245, b[101]+b[109]+b[180]+b[188]+b[259]+b[267] >= 1.0)
@constraint(m, e246, b[102]+b[118]+b[181]+b[197]+b[260]+b[276] >= 1.0)
@constraint(m, e247, b[103]+b[127]+b[182]+b[206]+b[261]+b[285] >= 1.0)
@constraint(m, e248, b[104]+b[136]+b[183]+b[215]+b[262]+b[294] >= 1.0)
@constraint(m, e249, b[105]+b[145]+b[184]+b[224]+b[263]+b[303] >= 1.0)
@constraint(m, e250, b[75]+b[106]+b[154]+b[185]+b[233]+b[264] >= 1.0)
@constraint(m, e251, b[83]+b[107]+b[162]+b[186]+b[241]+b[265] >= 1.0)
@constraint(m, e252, b[92]+b[108]+b[171]+b[187]+b[250]+b[266] >= 1.0)
@constraint(m, e253, b[101]+b[109]+b[180]+b[188]+b[259]+b[267] >= 1.0)
@constraint(m, e254, b[111]+b[119]+b[190]+b[198]+b[269]+b[277] >= 1.0)
@constraint(m, e255, b[112]+b[128]+b[191]+b[207]+b[270]+b[286] >= 1.0)
@constraint(m, e256, b[113]+b[137]+b[192]+b[216]+b[271]+b[295] >= 1.0)
@constraint(m, e257, b[114]+b[146]+b[193]+b[225]+b[272]+b[304] >= 1.0)
@constraint(m, e258, b[76]+b[115]+b[155]+b[194]+b[234]+b[273] >= 1.0)
@constraint(m, e259, b[84]+b[116]+b[163]+b[195]+b[242]+b[274] >= 1.0)
@constraint(m, e260, b[93]+b[117]+b[172]+b[196]+b[251]+b[275] >= 1.0)
@constraint(m, e261, b[102]+b[118]+b[181]+b[197]+b[260]+b[276] >= 1.0)
@constraint(m, e262, b[111]+b[119]+b[190]+b[198]+b[269]+b[277] >= 1.0)
@constraint(m, e263, b[121]+b[129]+b[200]+b[208]+b[279]+b[287] >= 1.0)
@constraint(m, e264, b[122]+b[138]+b[201]+b[217]+b[280]+b[296] >= 1.0)
@constraint(m, e265, b[123]+b[147]+b[202]+b[226]+b[281]+b[305] >= 1.0)
@constraint(m, e266, b[77]+b[124]+b[156]+b[203]+b[235]+b[282] >= 1.0)
@constraint(m, e267, b[85]+b[125]+b[164]+b[204]+b[243]+b[283] >= 1.0)
@constraint(m, e268, b[94]+b[126]+b[173]+b[205]+b[252]+b[284] >= 1.0)
@constraint(m, e269, b[103]+b[127]+b[182]+b[206]+b[261]+b[285] >= 1.0)
@constraint(m, e270, b[112]+b[128]+b[191]+b[207]+b[270]+b[286] >= 1.0)
@constraint(m, e271, b[121]+b[129]+b[200]+b[208]+b[279]+b[287] >= 1.0)
@constraint(m, e272, b[131]+b[139]+b[210]+b[218]+b[289]+b[297] >= 1.0)
@constraint(m, e273, b[132]+b[148]+b[211]+b[227]+b[290]+b[306] >= 1.0)
@constraint(m, e274, b[78]+b[133]+b[157]+b[212]+b[236]+b[291] >= 1.0)
@constraint(m, e275, b[86]+b[134]+b[165]+b[213]+b[244]+b[292] >= 1.0)
@constraint(m, e276, b[95]+b[135]+b[174]+b[214]+b[253]+b[293] >= 1.0)
@constraint(m, e277, b[104]+b[136]+b[183]+b[215]+b[262]+b[294] >= 1.0)
@constraint(m, e278, b[113]+b[137]+b[192]+b[216]+b[271]+b[295] >= 1.0)
@constraint(m, e279, b[122]+b[138]+b[201]+b[217]+b[280]+b[296] >= 1.0)
@constraint(m, e280, b[131]+b[139]+b[210]+b[218]+b[289]+b[297] >= 1.0)
@constraint(m, e281, b[141]+b[149]+b[220]+b[228]+b[299]+b[307] >= 1.0)
@constraint(m, e282, b[79]+b[142]+b[158]+b[221]+b[237]+b[300] >= 1.0)
@constraint(m, e283, b[87]+b[143]+b[166]+b[222]+b[245]+b[301] >= 1.0)
@constraint(m, e284, b[96]+b[144]+b[175]+b[223]+b[254]+b[302] >= 1.0)
@constraint(m, e285, b[105]+b[145]+b[184]+b[224]+b[263]+b[303] >= 1.0)
@constraint(m, e286, b[114]+b[146]+b[193]+b[225]+b[272]+b[304] >= 1.0)
@constraint(m, e287, b[123]+b[147]+b[202]+b[226]+b[281]+b[305] >= 1.0)
@constraint(m, e288, b[132]+b[148]+b[211]+b[227]+b[290]+b[306] >= 1.0)
@constraint(m, e289, b[141]+b[149]+b[220]+b[228]+b[299]+b[307] >= 1.0)
@constraint(m, e290, x[3]+6.6525*b[38]+4.24*b[47]-4.24*b[56]+4.24*b[65] <= 8.34)
@constraint(m, e291, x[4]+6.5*b[39]+4.15*b[48]-4.15*b[57]+4.15*b[66] <= 8.25)
@constraint(m, e292, x[5]+6.18*b[40]+2.985*b[49]-2.985*b[58]+2.985*b[67] <= 8.43)
@constraint(m, e293, x[6]+5.345*b[41]+2.045*b[50]-2.045*b[59]+2.045*b[68] <= 8.745)
@constraint(m, e294, x[7]+5.445*b[42]+5.145*b[51]-5.145*b[60]+5.145*b[69] <= 8.545)
@constraint(m, e295, x[8]+6.1*b[43]+4.25*b[52]-4.25*b[61]+4.25*b[70] <= 8.85)
@constraint(m, e296, x[9]+2.43*b[44]+1.53*b[53]-1.53*b[62]+1.53*b[71] <= 8.93)
@constraint(m, e297, x[12]-6.6525*b[38]-6.6525*b[47]+4.24*b[56] <= -2.1325)
@constraint(m, e298, x[13]-6.5*b[39]-6.5*b[48]+4.15*b[57] <= -2.07)
@constraint(m, e299, x[14]-6.18*b[40]-6.18*b[49]+2.985*b[58] <= -1.57)
@constraint(m, e300, x[15]-5.345*b[41]-5.345*b[50]+2.045*b[59] <= -0.42)
@constraint(m, e301, x[16]-5.445*b[42]-5.445*b[51]+5.145*b[60] <= -0.720000000000001)
@constraint(m, e302, x[17]-6.1*b[43]-6.1*b[52]+4.25*b[61] <= -1.07)
@constraint(m, e303, x[18]-2.43*b[44]-2.43*b[53]+1.53*b[62] <= 2.68)
@constraint(m, e304, x[21]-x[34]+2.4125*b[47]-4.24*b[65] <= -4.9)
@constraint(m, e305, x[22]-x[34]+2.35*b[48]-4.15*b[66] <= -4.9)
@constraint(m, e306, x[23]-x[34]+3.195*b[49]-2.985*b[67] <= -3.555)
@constraint(m, e307, x[24]-x[34]+3.3*b[50]-2.045*b[68] <= -2.3)
@constraint(m, e308, x[25]-x[34]+0.300000000000001*b[51]-5.145*b[69] <= -5.6)
@constraint(m, e309, x[26]-x[34]+1.85*b[52]-4.25*b[70] <= -4.4)
@constraint(m, e310, x[27]-x[34]+0.9*b[53]-1.53*b[71] <= -1.6)
@NLconstraint(m, e311, x[28]*b[36]+x[30]*(b[45]-b[54]+b[63])+x[32]*(1-b[36]-b[45]+b[54]-b[63])+x[1] <= 9.0)
@NLconstraint(m, e312, x[29]*b[37]+x[31]*(b[46]-b[55]+b[64])+x[33]*(1-b[37]-b[46]+b[55]-b[64])+x[2] <= 9.0)
@NLconstraint(m, e313, x[30]*b[54]+x[28]*(1-b[36]-b[45])+x[32]*(b[36]+b[45]-b[54])+x[10] <= 5.18)
@NLconstraint(m, e314, x[31]*b[55]+x[29]*(1-b[37]-b[46])+x[33]*(b[37]+b[46]-b[55])+x[11] <= 5.18)
@NLconstraint(m, e315, x[32]*b[63]+x[30]*(1-b[45]-b[63])+x[28]*b[45]+x[19]-x[34] <= 0.0)
@NLconstraint(m, e316, x[33]*b[64]+x[31]*(1-b[46]-b[64])+x[29]*b[46]+x[20]-x[34] <= 0.0)
@constraint(m, e317, b[36]+b[45] <= 1.0)
@constraint(m, e318, b[37]+b[46] <= 1.0)
@constraint(m, e319, b[38]+b[47] <= 1.0)
@constraint(m, e320, b[39]+b[48] <= 1.0)
@constraint(m, e321, b[40]+b[49] <= 1.0)
@constraint(m, e322, b[41]+b[50] <= 1.0)
@constraint(m, e323, b[42]+b[51] <= 1.0)
@constraint(m, e324, b[43]+b[52] <= 1.0)
@constraint(m, e325, b[44]+b[53] <= 1.0)
@constraint(m, e326, b[45]+b[63] <= 1.0)
@constraint(m, e327, b[46]+b[64] <= 1.0)
@constraint(m, e328, b[47]+b[65] <= 1.0)
@constraint(m, e329, b[48]+b[66] <= 1.0)
@constraint(m, e330, b[49]+b[67] <= 1.0)
@constraint(m, e331, b[50]+b[68] <= 1.0)
@constraint(m, e332, b[51]+b[69] <= 1.0)
@constraint(m, e333, b[52]+b[70] <= 1.0)
@constraint(m, e334, b[53]+b[71] <= 1.0)
@constraint(m, e335, b[45]-b[54]+b[63] <= 1.0)
@constraint(m, e336, b[46]-b[55]+b[64] <= 1.0)
@constraint(m, e337, b[47]-b[56]+b[65] <= 1.0)
@constraint(m, e338, b[48]-b[57]+b[66] <= 1.0)
@constraint(m, e339, b[49]-b[58]+b[67] <= 1.0)
@constraint(m, e340, b[50]-b[59]+b[68] <= 1.0)
@constraint(m, e341, b[51]-b[60]+b[69] <= 1.0)
@constraint(m, e342, b[52]-b[61]+b[70] <= 1.0)
@constraint(m, e343, b[53]-b[62]+b[71] <= 1.0)
@constraint(m, e344, b[45]-b[54]+b[63] >= 0.0)
@constraint(m, e345, b[46]-b[55]+b[64] >= 0.0)
@constraint(m, e346, b[47]-b[56]+b[65] >= 0.0)
@constraint(m, e347, b[48]-b[57]+b[66] >= 0.0)
@constraint(m, e348, b[49]-b[58]+b[67] >= 0.0)
@constraint(m, e349, b[50]-b[59]+b[68] >= 0.0)
@constraint(m, e350, b[51]-b[60]+b[69] >= 0.0)
@constraint(m, e351, b[52]-b[61]+b[70] >= 0.0)
@constraint(m, e352, b[53]-b[62]+b[71] >= 0.0)
@constraint(m, e353, -b[36]-b[45]+b[54]-b[63] <= 0.0)
@constraint(m, e354, -b[37]-b[46]+b[55]-b[64] <= 0.0)
@constraint(m, e355, -b[38]-b[47]+b[56]-b[65] <= 0.0)
@constraint(m, e356, -b[39]-b[48]+b[57]-b[66] <= 0.0)
@constraint(m, e357, -b[40]-b[49]+b[58]-b[67] <= 0.0)
@constraint(m, e358, -b[41]-b[50]+b[59]-b[68] <= 0.0)
@constraint(m, e359, -b[42]-b[51]+b[60]-b[69] <= 0.0)
@constraint(m, e360, -b[43]-b[52]+b[61]-b[70] <= 0.0)
@constraint(m, e361, -b[44]-b[53]+b[62]-b[71] <= 0.0)
@constraint(m, e362, -b[36]-b[45]+b[54]-b[63] >= -1.0)
@constraint(m, e363, -b[37]-b[46]+b[55]-b[64] >= -1.0)
@constraint(m, e364, -b[38]-b[47]+b[56]-b[65] >= -1.0)
@constraint(m, e365, -b[39]-b[48]+b[57]-b[66] >= -1.0)
@constraint(m, e366, -b[40]-b[49]+b[58]-b[67] >= -1.0)
@constraint(m, e367, -b[41]-b[50]+b[59]-b[68] >= -1.0)
@constraint(m, e368, -b[42]-b[51]+b[60]-b[69] >= -1.0)
@constraint(m, e369, -b[43]-b[52]+b[61]-b[70] >= -1.0)
@constraint(m, e370, -b[44]-b[53]+b[62]-b[71] >= -1.0)
@constraint(m, e371, b[36]+b[45]-b[54] <= 1.0)
@constraint(m, e372, b[37]+b[46]-b[55] <= 1.0)
@constraint(m, e373, b[38]+b[47]-b[56] <= 1.0)
@constraint(m, e374, b[39]+b[48]-b[57] <= 1.0)
@constraint(m, e375, b[40]+b[49]-b[58] <= 1.0)
@constraint(m, e376, b[41]+b[50]-b[59] <= 1.0)
@constraint(m, e377, b[42]+b[51]-b[60] <= 1.0)
@constraint(m, e378, b[43]+b[52]-b[61] <= 1.0)
@constraint(m, e379, b[44]+b[53]-b[62] <= 1.0)
@constraint(m, e380, b[36]+b[45]-b[54] >= 0.0)
@constraint(m, e381, b[37]+b[46]-b[55] >= 0.0)
@constraint(m, e382, b[38]+b[47]-b[56] >= 0.0)
@constraint(m, e383, b[39]+b[48]-b[57] >= 0.0)
@constraint(m, e384, b[40]+b[49]-b[58] >= 0.0)
@constraint(m, e385, b[41]+b[50]-b[59] >= 0.0)
@constraint(m, e386, b[42]+b[51]-b[60] >= 0.0)
@constraint(m, e387, b[43]+b[52]-b[61] >= 0.0)
@constraint(m, e388, b[44]+b[53]-b[62] >= 0.0)
@NLconstraint(m, e389, -x[28]*x[30]*x[32] == -6.0)
@NLconstraint(m, e390, -x[29]*x[31]*x[33] == -6.0)
@constraint(m, e391, x[28] <= 5.75)
@constraint(m, e392, x[29] <= 5.0)
@constraint(m, e393, x[28] >= 4.25)
@constraint(m, e394, x[29] >= 2.375)
@constraint(m, e395, x[30] <= 2.25)
@constraint(m, e396, x[31] <= 4.125)
@constraint(m, e397, x[30] >= 2.125)
@constraint(m, e398, x[31] >= 4.25)
@constraint(m, e399, x[32] <= 0.375)
@constraint(m, e400, x[33] <= 0.25)
@constraint(m, e401, x[32] >= 0.375)
@constraint(m, e402, x[33] >= 0.25)


# ----- Objective ----- #
@objective(m, Min, x[35])

m = m 		 # model get returned when including this script. 
