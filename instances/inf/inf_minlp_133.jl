using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205]
@variable(m, x[x_Idx])
b_Idx = Any[41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]
@variable(m, b[b_Idx])
setlowerbound(x[146], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[154], 0.0)
setlowerbound(x[164], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[91], 0.0)
setcategory(b[45], :Bin)
setcategory(b[64], :Bin)
setlowerbound(x[165], 0.0)
setlowerbound(x[186], 0.0)
setcategory(b[87], :Bin)
setlowerbound(x[202], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[141], 0.0)
setlowerbound(x[94], 0.0)
setcategory(b[79], :Bin)
setlowerbound(x[144], 0.0)
setlowerbound(x[145], 0.0)
setlowerbound(x[172], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[160], 0.0)
setlowerbound(x[188], 0.0)
setcategory(b[60], :Bin)
setlowerbound(x[103], 0.0)
setlowerbound(x[162], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[200], 0.0)
setlowerbound(x[174], 0.0)
setlowerbound(x[99], 0.0)
setcategory(b[88], :Bin)
setlowerbound(x[169], 0.0)
setcategory(b[50], :Bin)
setlowerbound(x[6], 0.0)
setlowerbound(x[197], 0.0)
setlowerbound(x[198], 0.0)
setlowerbound(x[148], 0.0)
setlowerbound(x[150], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setcategory(b[62], :Bin)
setlowerbound(x[101], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[190], 0.0)
setlowerbound(x[196], 0.0)
setlowerbound(x[38], 0.0)
setcategory(b[75], :Bin)
setlowerbound(x[151], 0.0)
setlowerbound(x[171], 0.0)
setlowerbound(x[147], 0.0)
setcategory(b[70], :Bin)
setlowerbound(x[138], 0.0)
setcategory(b[41], :Bin)
setcategory(b[48], :Bin)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[111], 0.0)
setcategory(b[90], :Bin)
setlowerbound(x[185], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[27], 0.0)
setcategory(b[84], :Bin)
setlowerbound(x[179], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[175], 0.0)
setcategory(b[53], :Bin)
setlowerbound(x[142], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[5], 0.0)
setcategory(b[61], :Bin)
setcategory(b[89], :Bin)
setlowerbound(x[24], 0.0)
setlowerbound(x[161], 0.0)
setcategory(b[86], :Bin)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[156], 0.0)
setcategory(b[69], :Bin)
setcategory(b[68], :Bin)
setlowerbound(x[199], 0.0)
setlowerbound(x[26], 0.0)
setcategory(b[47], :Bin)
setlowerbound(x[12], 0.0)
setlowerbound(x[173], 0.0)
setcategory(b[76], :Bin)
setlowerbound(x[176], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[189], 0.0)
setlowerbound(x[187], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[166], 0.0)
setlowerbound(x[157], 0.0)
setlowerbound(x[19], 0.0)
setcategory(b[52], :Bin)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[163], 0.0)
setlowerbound(x[133], 0.0)
setlowerbound(x[192], 0.0)
setlowerbound(x[195], 0.0)
setlowerbound(x[117], 0.0)
setcategory(b[71], :Bin)
setlowerbound(x[16], 0.0)
setcategory(b[78], :Bin)
setlowerbound(x[14], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[181], 0.0)
setlowerbound(x[153], 0.0)
setcategory(b[66], :Bin)
setcategory(b[80], :Bin)
setlowerbound(x[201], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setcategory(b[49], :Bin)
setlowerbound(x[113], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[8], 0.0)
setcategory(b[54], :Bin)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[96], 0.0)
setcategory(b[77], :Bin)
setlowerbound(x[25], 0.0)
setcategory(b[46], :Bin)
setcategory(b[56], :Bin)
setlowerbound(x[182], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[191], 0.0)
setlowerbound(x[37], 0.0)
setcategory(b[74], :Bin)
setlowerbound(x[177], 0.0)
setcategory(b[72], :Bin)
setlowerbound(x[18], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[152], 0.0)
setcategory(b[43], :Bin)
setlowerbound(x[184], 0.0)
setcategory(b[83], :Bin)
setlowerbound(x[98], 0.0)
setlowerbound(x[158], 0.0)
setlowerbound(x[33], 0.0)
setcategory(b[59], :Bin)
setlowerbound(x[203], 0.0)
setlowerbound(x[35], 0.0)
setcategory(b[67], :Bin)
setlowerbound(x[170], 0.0)
setlowerbound(x[149], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[183], 0.0)
setlowerbound(x[167], 0.0)
setlowerbound(x[102], 0.0)
setcategory(b[73], :Bin)
setcategory(b[44], :Bin)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setcategory(b[85], :Bin)
setcategory(b[82], :Bin)
setlowerbound(x[110], 0.0)
setcategory(b[42], :Bin)
setcategory(b[81], :Bin)
setlowerbound(x[2], 0.0)
setlowerbound(x[155], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[193], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[180], 0.0)
setcategory(b[58], :Bin)
setcategory(b[57], :Bin)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[194], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setcategory(b[51], :Bin)
setlowerbound(x[178], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[168], 0.0)
setlowerbound(x[40], 0.0)
setcategory(b[65], :Bin)
setlowerbound(x[31], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[159], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setcategory(b[55], :Bin)
setlowerbound(x[108], 0.0)
setcategory(b[63], :Bin)


# ----- Constraints ----- #
@constraint(m, e1, b[71] == 1.0)
@constraint(m, e2, b[72] == 1.0)
@constraint(m, e3, b[73] == 1.0)
@constraint(m, e4, b[74] == 1.0)
@constraint(m, e5, b[75] == 1.0)
@constraint(m, e6, b[76] == 1.0)
@constraint(m, e7, b[77] == 1.0)
@constraint(m, e8, b[78] == 1.0)
@constraint(m, e9, b[79] == 1.0)
@constraint(m, e10, b[80] == 1.0)
@constraint(m, e11, -x[1]+x[11]-120000*b[51] >= -119900.0)
@constraint(m, e12, -x[2]+x[12]-120000*b[52] >= -119900.0)
@constraint(m, e13, -x[3]+x[13]-120000*b[53] >= -119900.0)
@constraint(m, e14, -x[4]+x[14]-120000*b[54] >= -119900.0)
@constraint(m, e15, -x[5]+x[15]-120000*b[55] >= -119900.0)
@constraint(m, e16, -x[6]+x[16]-120000*b[56] >= -119900.0)
@constraint(m, e17, -x[7]+x[17]-120000*b[57] >= -119900.0)
@constraint(m, e18, -x[8]+x[18]-120000*b[58] >= -119900.0)
@constraint(m, e19, -x[9]+x[19]-120000*b[59] >= -119900.0)
@constraint(m, e20, -x[10]+x[20]-120000*b[60] >= -119900.0)
@constraint(m, e21, -x[1]+x[21]-120000*b[61] >= -119900.0)
@constraint(m, e22, -x[2]+x[22]-120000*b[62] >= -119900.0)
@constraint(m, e23, -x[3]+x[23]-120000*b[63] >= -119900.0)
@constraint(m, e24, -x[4]+x[24]-120000*b[64] >= -119900.0)
@constraint(m, e25, -x[5]+x[25]-120000*b[65] >= -119900.0)
@constraint(m, e26, -x[6]+x[26]-120000*b[66] >= -119900.0)
@constraint(m, e27, -x[7]+x[27]-120000*b[67] >= -119900.0)
@constraint(m, e28, -x[8]+x[28]-120000*b[68] >= -119900.0)
@constraint(m, e29, -x[9]+x[29]-120000*b[69] >= -119900.0)
@constraint(m, e30, -x[10]+x[30]-120000*b[70] >= -119900.0)
@constraint(m, e31, -x[1]+x[31]-120000*b[71] >= -119900.0)
@constraint(m, e32, -x[2]+x[32]-120000*b[72] >= -119900.0)
@constraint(m, e33, -x[3]+x[33]-120000*b[73] >= -119900.0)
@constraint(m, e34, -x[4]+x[34]-120000*b[74] >= -119900.0)
@constraint(m, e35, -x[5]+x[35]-120000*b[75] >= -119900.0)
@constraint(m, e36, -x[6]+x[36]-120000*b[76] >= -119900.0)
@constraint(m, e37, -x[7]+x[37]-120000*b[77] >= -119900.0)
@constraint(m, e38, -x[8]+x[38]-120000*b[78] >= -119900.0)
@constraint(m, e39, -x[9]+x[39]-120000*b[79] >= -119900.0)
@constraint(m, e40, -x[10]+x[40]-120000*b[80] >= -119900.0)
@constraint(m, e41, x[1]-x[11]-120000*b[41] >= -119900.0)
@constraint(m, e42, x[2]-x[12]-120000*b[42] >= -119900.0)
@constraint(m, e43, x[3]-x[13]-120000*b[43] >= -119900.0)
@constraint(m, e44, x[4]-x[14]-120000*b[44] >= -119900.0)
@constraint(m, e45, x[5]-x[15]-120000*b[45] >= -119900.0)
@constraint(m, e46, x[6]-x[16]-120000*b[46] >= -119900.0)
@constraint(m, e47, x[7]-x[17]-120000*b[47] >= -119900.0)
@constraint(m, e48, x[8]-x[18]-120000*b[48] >= -119900.0)
@constraint(m, e49, x[9]-x[19]-120000*b[49] >= -119900.0)
@constraint(m, e50, x[10]-x[20]-120000*b[50] >= -119900.0)
@constraint(m, e51, -x[11]+x[21]-120000*b[61] >= -119900.0)
@constraint(m, e52, -x[12]+x[22]-120000*b[62] >= -119900.0)
@constraint(m, e53, -x[13]+x[23]-120000*b[63] >= -119900.0)
@constraint(m, e54, -x[14]+x[24]-120000*b[64] >= -119900.0)
@constraint(m, e55, -x[15]+x[25]-120000*b[65] >= -119900.0)
@constraint(m, e56, -x[16]+x[26]-120000*b[66] >= -119900.0)
@constraint(m, e57, -x[17]+x[27]-120000*b[67] >= -119900.0)
@constraint(m, e58, -x[18]+x[28]-120000*b[68] >= -119900.0)
@constraint(m, e59, -x[19]+x[29]-120000*b[69] >= -119900.0)
@constraint(m, e60, -x[20]+x[30]-120000*b[70] >= -119900.0)
@constraint(m, e61, -x[11]+x[31]-120000*b[71] >= -119900.0)
@constraint(m, e62, -x[12]+x[32]-120000*b[72] >= -119900.0)
@constraint(m, e63, -x[13]+x[33]-120000*b[73] >= -119900.0)
@constraint(m, e64, -x[14]+x[34]-120000*b[74] >= -119900.0)
@constraint(m, e65, -x[15]+x[35]-120000*b[75] >= -119900.0)
@constraint(m, e66, -x[16]+x[36]-120000*b[76] >= -119900.0)
@constraint(m, e67, -x[17]+x[37]-120000*b[77] >= -119900.0)
@constraint(m, e68, -x[18]+x[38]-120000*b[78] >= -119900.0)
@constraint(m, e69, -x[19]+x[39]-120000*b[79] >= -119900.0)
@constraint(m, e70, -x[20]+x[40]-120000*b[80] >= -119900.0)
@constraint(m, e71, x[1]-x[21]-120000*b[41] >= -119900.0)
@constraint(m, e72, x[2]-x[22]-120000*b[42] >= -119900.0)
@constraint(m, e73, x[3]-x[23]-120000*b[43] >= -119900.0)
@constraint(m, e74, x[4]-x[24]-120000*b[44] >= -119900.0)
@constraint(m, e75, x[5]-x[25]-120000*b[45] >= -119900.0)
@constraint(m, e76, x[6]-x[26]-120000*b[46] >= -119900.0)
@constraint(m, e77, x[7]-x[27]-120000*b[47] >= -119900.0)
@constraint(m, e78, x[8]-x[28]-120000*b[48] >= -119900.0)
@constraint(m, e79, x[9]-x[29]-120000*b[49] >= -119900.0)
@constraint(m, e80, x[10]-x[30]-120000*b[50] >= -119900.0)
@constraint(m, e81, x[11]-x[21]-120000*b[51] >= -119900.0)
@constraint(m, e82, x[12]-x[22]-120000*b[52] >= -119900.0)
@constraint(m, e83, x[13]-x[23]-120000*b[53] >= -119900.0)
@constraint(m, e84, x[14]-x[24]-120000*b[54] >= -119900.0)
@constraint(m, e85, x[15]-x[25]-120000*b[55] >= -119900.0)
@constraint(m, e86, x[16]-x[26]-120000*b[56] >= -119900.0)
@constraint(m, e87, x[17]-x[27]-120000*b[57] >= -119900.0)
@constraint(m, e88, x[18]-x[28]-120000*b[58] >= -119900.0)
@constraint(m, e89, x[19]-x[29]-120000*b[59] >= -119900.0)
@constraint(m, e90, x[20]-x[30]-120000*b[60] >= -119900.0)
@constraint(m, e91, -x[21]+x[31]-120000*b[71] >= -119900.0)
@constraint(m, e92, -x[22]+x[32]-120000*b[72] >= -119900.0)
@constraint(m, e93, -x[23]+x[33]-120000*b[73] >= -119900.0)
@constraint(m, e94, -x[24]+x[34]-120000*b[74] >= -119900.0)
@constraint(m, e95, -x[25]+x[35]-120000*b[75] >= -119900.0)
@constraint(m, e96, -x[26]+x[36]-120000*b[76] >= -119900.0)
@constraint(m, e97, -x[27]+x[37]-120000*b[77] >= -119900.0)
@constraint(m, e98, -x[28]+x[38]-120000*b[78] >= -119900.0)
@constraint(m, e99, -x[29]+x[39]-120000*b[79] >= -119900.0)
@constraint(m, e100, -x[30]+x[40]-120000*b[80] >= -119900.0)
@constraint(m, e101, x[1]-x[31]-120000*b[41] >= -119900.0)
@constraint(m, e102, x[2]-x[32]-120000*b[42] >= -119900.0)
@constraint(m, e103, x[3]-x[33]-120000*b[43] >= -119900.0)
@constraint(m, e104, x[4]-x[34]-120000*b[44] >= -119900.0)
@constraint(m, e105, x[5]-x[35]-120000*b[45] >= -119900.0)
@constraint(m, e106, x[6]-x[36]-120000*b[46] >= -119900.0)
@constraint(m, e107, x[7]-x[37]-120000*b[47] >= -119900.0)
@constraint(m, e108, x[8]-x[38]-120000*b[48] >= -119900.0)
@constraint(m, e109, x[9]-x[39]-120000*b[49] >= -119900.0)
@constraint(m, e110, x[10]-x[40]-120000*b[50] >= -119900.0)
@constraint(m, e111, x[11]-x[31]-120000*b[51] >= -119900.0)
@constraint(m, e112, x[12]-x[32]-120000*b[52] >= -119900.0)
@constraint(m, e113, x[13]-x[33]-120000*b[53] >= -119900.0)
@constraint(m, e114, x[14]-x[34]-120000*b[54] >= -119900.0)
@constraint(m, e115, x[15]-x[35]-120000*b[55] >= -119900.0)
@constraint(m, e116, x[16]-x[36]-120000*b[56] >= -119900.0)
@constraint(m, e117, x[17]-x[37]-120000*b[57] >= -119900.0)
@constraint(m, e118, x[18]-x[38]-120000*b[58] >= -119900.0)
@constraint(m, e119, x[19]-x[39]-120000*b[59] >= -119900.0)
@constraint(m, e120, x[20]-x[40]-120000*b[60] >= -119900.0)
@constraint(m, e121, x[21]-x[31]-120000*b[61] >= -119900.0)
@constraint(m, e122, x[22]-x[32]-120000*b[62] >= -119900.0)
@constraint(m, e123, x[23]-x[33]-120000*b[63] >= -119900.0)
@constraint(m, e124, x[24]-x[34]-120000*b[64] >= -119900.0)
@constraint(m, e125, x[25]-x[35]-120000*b[65] >= -119900.0)
@constraint(m, e126, x[26]-x[36]-120000*b[66] >= -119900.0)
@constraint(m, e127, x[27]-x[37]-120000*b[67] >= -119900.0)
@constraint(m, e128, x[28]-x[38]-120000*b[68] >= -119900.0)
@constraint(m, e129, x[29]-x[39]-120000*b[69] >= -119900.0)
@constraint(m, e130, x[30]-x[40]-120000*b[70] >= -119900.0)
@constraint(m, e131, 21312000*b[41]+9110880*b[42]+10256400*b[43]+9324000*b[44]+7692300*b[45]+9324000*b[46]+12587400*b[47]+5314680*b[48]+5594400*b[49]+25974000*b[50]+21312000*b[51]+9110880*b[52]+10256400*b[53]+9324000*b[54]+7692300*b[55]+9324000*b[56]+12587400*b[57]+5314680*b[58]+5594400*b[59]+25974000*b[60]+21312000*b[61]+9110880*b[62]+10256400*b[63]+9324000*b[64]+7692300*b[65]+9324000*b[66]+12587400*b[67]+5314680*b[68]+5594400*b[69]+25974000*b[70]+333*x[201] >= 8.5e7)
@constraint(m, e132, -800*b[41]-800*b[51]-800*b[61]+x[91] == 0.0)
@constraint(m, e133, -912*b[42]-912*b[52]-912*b[62]+x[92] == 0.0)
@constraint(m, e134, -880*b[43]-880*b[53]-880*b[63]+x[93] == 0.0)
@constraint(m, e135, -800*b[44]-800*b[54]-800*b[64]+x[94] == 0.0)
@constraint(m, e136, -924*b[45]-924*b[55]-924*b[65]+x[95] == 0.0)
@constraint(m, e137, -560*b[46]-560*b[56]-560*b[66]+x[96] == 0.0)
@constraint(m, e138, -1080*b[47]-1080*b[57]-1080*b[67]+x[97] == 0.0)
@constraint(m, e139, -532*b[48]-532*b[58]-532*b[68]+x[98] == 0.0)
@constraint(m, e140, -1120*b[49]-1120*b[59]-1120*b[69]+x[99] == 0.0)
@constraint(m, e141, -1200*b[50]-1200*b[60]-1200*b[70]+x[100] == 0.0)
@constraint(m, e142, x[91]-x[101]-x[102]-x[103]-x[104]-x[105]-x[106]-x[107]-x[108]-x[109]-x[110] == 0.0)
@constraint(m, e143, x[92]-x[111]-x[112]-x[113]-x[114]-x[115]-x[116]-x[117]-x[118]-x[119]-x[120] == 0.0)
@constraint(m, e144, x[93]-x[121]-x[122]-x[123]-x[124]-x[125]-x[126]-x[127]-x[128]-x[129]-x[130] == 0.0)
@constraint(m, e145, x[94]-x[131]-x[132]-x[133]-x[134]-x[135]-x[136]-x[137]-x[138]-x[139]-x[140] == 0.0)
@constraint(m, e146, x[95]-x[141]-x[142]-x[143]-x[144]-x[145]-x[146]-x[147]-x[148]-x[149]-x[150] == 0.0)
@constraint(m, e147, x[96]-x[151]-x[152]-x[153]-x[154]-x[155]-x[156]-x[157]-x[158]-x[159]-x[160] == 0.0)
@constraint(m, e148, x[97]-x[161]-x[162]-x[163]-x[164]-x[165]-x[166]-x[167]-x[168]-x[169]-x[170] == 0.0)
@constraint(m, e149, x[98]-x[171]-x[172]-x[173]-x[174]-x[175]-x[176]-x[177]-x[178]-x[179]-x[180] == 0.0)
@constraint(m, e150, x[99]-x[181]-x[182]-x[183]-x[184]-x[185]-x[186]-x[187]-x[188]-x[189]-x[190] == 0.0)
@constraint(m, e151, x[100]-x[191]-x[192]-x[193]-x[194]-x[195]-x[196]-x[197]-x[198]-x[199]-x[200] == 0.0)
@constraint(m, e152, b[81]+b[82]+b[83]+b[84]+b[85]+b[86]+b[87]+b[88]+b[89]+b[90] == 1.0)
@constraint(m, e153, -130000*b[81]+x[101] <= 0.0)
@constraint(m, e154, -130000*b[82]+x[102] <= 0.0)
@constraint(m, e155, -130000*b[83]+x[103] <= 0.0)
@constraint(m, e156, -130000*b[84]+x[104] <= 0.0)
@constraint(m, e157, -130000*b[85]+x[105] <= 0.0)
@constraint(m, e158, -130000*b[86]+x[106] <= 0.0)
@constraint(m, e159, -130000*b[87]+x[107] <= 0.0)
@constraint(m, e160, -130000*b[88]+x[108] <= 0.0)
@constraint(m, e161, -130000*b[89]+x[109] <= 0.0)
@constraint(m, e162, -130000*b[90]+x[110] <= 0.0)
@constraint(m, e163, -130000*b[81]+x[111] <= 0.0)
@constraint(m, e164, -130000*b[82]+x[112] <= 0.0)
@constraint(m, e165, -130000*b[83]+x[113] <= 0.0)
@constraint(m, e166, -130000*b[84]+x[114] <= 0.0)
@constraint(m, e167, -130000*b[85]+x[115] <= 0.0)
@constraint(m, e168, -130000*b[86]+x[116] <= 0.0)
@constraint(m, e169, -130000*b[87]+x[117] <= 0.0)
@constraint(m, e170, -130000*b[88]+x[118] <= 0.0)
@constraint(m, e171, -130000*b[89]+x[119] <= 0.0)
@constraint(m, e172, -130000*b[90]+x[120] <= 0.0)
@constraint(m, e173, -130000*b[81]+x[121] <= 0.0)
@constraint(m, e174, -130000*b[82]+x[122] <= 0.0)
@constraint(m, e175, -130000*b[83]+x[123] <= 0.0)
@constraint(m, e176, -130000*b[84]+x[124] <= 0.0)
@constraint(m, e177, -130000*b[85]+x[125] <= 0.0)
@constraint(m, e178, -130000*b[86]+x[126] <= 0.0)
@constraint(m, e179, -130000*b[87]+x[127] <= 0.0)
@constraint(m, e180, -130000*b[88]+x[128] <= 0.0)
@constraint(m, e181, -130000*b[89]+x[129] <= 0.0)
@constraint(m, e182, -130000*b[90]+x[130] <= 0.0)
@constraint(m, e183, -130000*b[81]+x[131] <= 0.0)
@constraint(m, e184, -130000*b[82]+x[132] <= 0.0)
@constraint(m, e185, -130000*b[83]+x[133] <= 0.0)
@constraint(m, e186, -130000*b[84]+x[134] <= 0.0)
@constraint(m, e187, -130000*b[85]+x[135] <= 0.0)
@constraint(m, e188, -130000*b[86]+x[136] <= 0.0)
@constraint(m, e189, -130000*b[87]+x[137] <= 0.0)
@constraint(m, e190, -130000*b[88]+x[138] <= 0.0)
@constraint(m, e191, -130000*b[89]+x[139] <= 0.0)
@constraint(m, e192, -130000*b[90]+x[140] <= 0.0)
@constraint(m, e193, -130000*b[81]+x[141] <= 0.0)
@constraint(m, e194, -130000*b[82]+x[142] <= 0.0)
@constraint(m, e195, -130000*b[83]+x[143] <= 0.0)
@constraint(m, e196, -130000*b[84]+x[144] <= 0.0)
@constraint(m, e197, -130000*b[85]+x[145] <= 0.0)
@constraint(m, e198, -130000*b[86]+x[146] <= 0.0)
@constraint(m, e199, -130000*b[87]+x[147] <= 0.0)
@constraint(m, e200, -130000*b[88]+x[148] <= 0.0)
@constraint(m, e201, -130000*b[89]+x[149] <= 0.0)
@constraint(m, e202, -130000*b[90]+x[150] <= 0.0)
@constraint(m, e203, -130000*b[81]+x[151] <= 0.0)
@constraint(m, e204, -130000*b[82]+x[152] <= 0.0)
@constraint(m, e205, -130000*b[83]+x[153] <= 0.0)
@constraint(m, e206, -130000*b[84]+x[154] <= 0.0)
@constraint(m, e207, -130000*b[85]+x[155] <= 0.0)
@constraint(m, e208, -130000*b[86]+x[156] <= 0.0)
@constraint(m, e209, -130000*b[87]+x[157] <= 0.0)
@constraint(m, e210, -130000*b[88]+x[158] <= 0.0)
@constraint(m, e211, -130000*b[89]+x[159] <= 0.0)
@constraint(m, e212, -130000*b[90]+x[160] <= 0.0)
@constraint(m, e213, -130000*b[81]+x[161] <= 0.0)
@constraint(m, e214, -130000*b[82]+x[162] <= 0.0)
@constraint(m, e215, -130000*b[83]+x[163] <= 0.0)
@constraint(m, e216, -130000*b[84]+x[164] <= 0.0)
@constraint(m, e217, -130000*b[85]+x[165] <= 0.0)
@constraint(m, e218, -130000*b[86]+x[166] <= 0.0)
@constraint(m, e219, -130000*b[87]+x[167] <= 0.0)
@constraint(m, e220, -130000*b[88]+x[168] <= 0.0)
@constraint(m, e221, -130000*b[89]+x[169] <= 0.0)
@constraint(m, e222, -130000*b[90]+x[170] <= 0.0)
@constraint(m, e223, -130000*b[81]+x[171] <= 0.0)
@constraint(m, e224, -130000*b[82]+x[172] <= 0.0)
@constraint(m, e225, -130000*b[83]+x[173] <= 0.0)
@constraint(m, e226, -130000*b[84]+x[174] <= 0.0)
@constraint(m, e227, -130000*b[85]+x[175] <= 0.0)
@constraint(m, e228, -130000*b[86]+x[176] <= 0.0)
@constraint(m, e229, -130000*b[87]+x[177] <= 0.0)
@constraint(m, e230, -130000*b[88]+x[178] <= 0.0)
@constraint(m, e231, -130000*b[89]+x[179] <= 0.0)
@constraint(m, e232, -130000*b[90]+x[180] <= 0.0)
@constraint(m, e233, -130000*b[81]+x[181] <= 0.0)
@constraint(m, e234, -130000*b[82]+x[182] <= 0.0)
@constraint(m, e235, -130000*b[83]+x[183] <= 0.0)
@constraint(m, e236, -130000*b[84]+x[184] <= 0.0)
@constraint(m, e237, -130000*b[85]+x[185] <= 0.0)
@constraint(m, e238, -130000*b[86]+x[186] <= 0.0)
@constraint(m, e239, -130000*b[87]+x[187] <= 0.0)
@constraint(m, e240, -130000*b[88]+x[188] <= 0.0)
@constraint(m, e241, -130000*b[89]+x[189] <= 0.0)
@constraint(m, e242, -130000*b[90]+x[190] <= 0.0)
@constraint(m, e243, -130000*b[81]+x[191] <= 0.0)
@constraint(m, e244, -130000*b[82]+x[192] <= 0.0)
@constraint(m, e245, -130000*b[83]+x[193] <= 0.0)
@constraint(m, e246, -130000*b[84]+x[194] <= 0.0)
@constraint(m, e247, -130000*b[85]+x[195] <= 0.0)
@constraint(m, e248, -130000*b[86]+x[196] <= 0.0)
@constraint(m, e249, -130000*b[87]+x[197] <= 0.0)
@constraint(m, e250, -130000*b[88]+x[198] <= 0.0)
@constraint(m, e251, -130000*b[89]+x[199] <= 0.0)
@constraint(m, e252, -130000*b[90]+x[200] <= 0.0)
@constraint(m, e253, x[1]-x[202] == 0.0)
@constraint(m, e254, x[2]-x[202] == 0.0)
@constraint(m, e255, x[3]-x[202] == 0.0)
@constraint(m, e256, x[4]-x[202] == 0.0)
@constraint(m, e257, x[5]-x[202] == 0.0)
@constraint(m, e258, x[6]-x[202] == 0.0)
@constraint(m, e259, x[7]-x[202] == 0.0)
@constraint(m, e260, x[8]-x[202] == 0.0)
@constraint(m, e261, x[9]-x[202] == 0.0)
@constraint(m, e262, x[10]-x[202] == 0.0)
@constraint(m, e263, x[11]-800*x[203] == -81760.0)
@constraint(m, e264, x[12]-912*x[203] == -105427.2)
@constraint(m, e265, x[13]-880*x[203] == -98032.0)
@constraint(m, e266, x[14]-800*x[203] == -77680.0)
@constraint(m, e267, x[15]-924*x[203] == -111064.8)
@constraint(m, e268, x[16]-560*x[203] == -46256.0)
@constraint(m, e269, x[17]-1080*x[203] == -101736.0)
@constraint(m, e270, x[18]-532*x[203] == -48571.6)
@constraint(m, e271, x[19]-1120*x[203] == -102256.0)
@constraint(m, e272, x[20]-1200*x[203] == -81600.0)
@constraint(m, e273, x[21]-266400*x[204] == -81760.0)
@constraint(m, e274, x[22]-303696*x[204] == -105427.2)
@constraint(m, e275, x[23]-293040*x[204] == -98032.0)
@constraint(m, e276, x[24]-266400*x[204] == -77680.0)
@constraint(m, e277, x[25]-307692*x[204] == -111064.8)
@constraint(m, e278, x[26]-186480*x[204] == -46256.0)
@constraint(m, e279, x[27]-359640*x[204] == -101736.0)
@constraint(m, e280, x[28]-177156*x[204] == -48571.6)
@constraint(m, e281, x[29]-372960*x[204] == -102256.0)
@constraint(m, e282, x[30]-399600*x[204] == -81600.0)
@constraint(m, e283, x[31] == 13824.0)
@constraint(m, e284, x[32] == 6347.51999999999)
@constraint(m, e285, x[33] == 8976.0)
@constraint(m, e286, x[34] == 16992.0)
@constraint(m, e287, x[35] == 3215.52)
@constraint(m, e288, x[36] == 18144.0)
@constraint(m, e289, x[37] == 25336.8)
@constraint(m, e290, x[38] == 13661.76)
@constraint(m, e291, x[39] == 28761.6)
@constraint(m, e292, x[40] == 52344.0)
@NLconstraint(m, e293, -(-((6540800+80*x[202])*b[41]+(3162816+30*x[202])*b[42]+(3431120+35*x[202])*b[43]+(2718800+35*x[202])*b[44]+(2776620+25*x[202])*b[45]+(2312800+50*x[202])*b[46]+(3560760+35*x[202])*b[47]+(1457148+30*x[202])*b[48]+(1533840+15*x[202])*b[49]+(5304000+65*x[202])*b[50])-x[203]*(64000*b[51]+27360*b[52]+30800*b[53]+28000*b[54]+23100*b[55]+28000*b[56]+37800*b[57]+15960*b[58]+16800*b[59]+78000*b[60])-333*x[204]*(64000*b[61]+27360*b[62]+30800*b[63]+28000*b[64]+23100*b[65]+28000*b[66]+37800*b[67]+15960*b[68]+16800*b[69]+78000*b[70]))+69.02*x[102]+61.2*x[103]+61.2*x[104]+68.68*x[105]+61.1*x[106]+84.15*x[107]+71.57*x[108]+91.8*x[109]+97.92*x[110]+69.02*x[111]+60.16*x[113]+71.44*x[114]+39.78*x[115]+60.01*x[116]+68.51*x[117]+83.81*x[118]+76.33*x[119]+98.6*x[120]+61.2*x[121]+60.16*x[122]+57.81*x[124]+54.52*x[125]+46.41*x[126]+48.11*x[127]+52.36*x[128]+56.27*x[129]+77.18*x[130]+61.2*x[131]+71.44*x[132]+57.81*x[133]+53.58*x[135]+49.13*x[136]+75.2*x[137]+34.68*x[138]+35.36*x[139]+56.95*x[140]+68.68*x[141]+39.78*x[142]+54.52*x[143]+53.58*x[144]+84.13*x[146]+40.12*x[147]+37.4*x[148]+48.62*x[149]+64.6*x[150]+61.1*x[151]+60.01*x[152]+46.41*x[153]+49.13*x[154]+84.13*x[155]+62.56*x[157]+50.15*x[158]+70.21*x[159]+77.01*x[160]+84.15*x[161]+68.51*x[162]+48.11*x[163]+75.2*x[164]+40.12*x[165]+62.56*x[166]+55.46*x[168]+23.97*x[169]+86.95*x[170]+71.57*x[171]+83.81*x[172]+52.36*x[173]+34.68*x[174]+37.4*x[175]+50.15*x[176]+55.46*x[177]+67.21*x[179]+77.55*x[180]+91.8*x[181]+76.33*x[182]+56.27*x[183]+35.36*x[184]+48.62*x[185]+70.21*x[186]+23.97*x[187]+67.21*x[188]+72.85*x[190]+97.92*x[191]+98.6*x[192]+77.18*x[193]+56.95*x[194]+64.6*x[195]+77.01*x[196]+86.95*x[197]+77.55*x[198]+72.85*x[199]+120*x[201]+x[205] == 6.375e7)


# ----- Objective ----- #
@objective(m, Max, x[205])

m = m 		 # model get returned when including this script. 