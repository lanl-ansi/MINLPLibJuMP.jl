using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 383]
@variable(m, x[x_Idx])
b_Idx = Any[343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[146], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[154], 0.0)
setlowerbound(x[287], 0.0)
setlowerbound(x[164], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[328], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[308], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[299], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[241], 0.0)
setlowerbound(x[303], 0.0)
setlowerbound(x[251], 0.0)
setlowerbound(x[165], 0.0)
setlowerbound(x[265], 0.0)
setlowerbound(x[312], 0.0)
setlowerbound(x[186], 0.0)
setlowerbound(x[243], 0.0)
setlowerbound(x[327], 0.0)
setlowerbound(x[202], 0.0)
setlowerbound(x[220], 0.0)
setlowerbound(x[250], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[248], 0.0)
setlowerbound(x[319], 0.0)
setlowerbound(x[289], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[141], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[144], 0.0)
setlowerbound(x[273], 0.0)
setlowerbound(x[332], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[145], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[172], 0.0)
setlowerbound(x[260], 0.0)
setlowerbound(x[226], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[160], 0.0)
setlowerbound(x[188], 0.0)
setlowerbound(x[307], 0.0)
setlowerbound(x[321], 0.0)
setlowerbound(x[298], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[238], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[162], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[292], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[200], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[206], 0.0)
setlowerbound(x[277], 0.0)
setlowerbound(x[244], 0.0)
setlowerbound(x[278], 0.0)
setlowerbound(x[215], 0.0)
setlowerbound(x[253], 0.0)
setlowerbound(x[174], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[169], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[197], 0.0)
setlowerbound(x[198], 0.0)
setlowerbound(x[148], 0.0)
setlowerbound(x[291], 0.0)
setlowerbound(x[150], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[218], 0.0)
setlowerbound(x[225], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[264], 0.0)
setlowerbound(x[318], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[231], 0.0)
setlowerbound(x[259], 0.0)
setlowerbound(x[261], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[190], 0.0)
setlowerbound(x[196], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[232], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[285], 0.0)
setlowerbound(x[151], 0.0)
setlowerbound(x[171], 0.0)
setlowerbound(x[147], 0.0)
setlowerbound(x[306], 0.0)
setlowerbound(x[138], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[290], 0.0)
setlowerbound(x[234], 0.0)
setlowerbound(x[329], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[311], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[219], 0.0)
setlowerbound(x[185], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[326], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[224], 0.0)
setlowerbound(x[324], 0.0)
setlowerbound(x[179], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[175], 0.0)
setlowerbound(x[330], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[209], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[258], 0.0)
setlowerbound(x[282], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[295], 0.0)
setlowerbound(x[313], 0.0)
setlowerbound(x[281], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[161], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[288], 0.0)
setlowerbound(x[263], 0.0)
setlowerbound(x[309], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[156], 0.0)
setlowerbound(x[199], 0.0)
setlowerbound(x[331], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[213], 0.0)
setlowerbound(x[173], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[252], 0.0)
setlowerbound(x[176], 0.0)
setlowerbound(x[240], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[284], 0.0)
setlowerbound(x[317], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[227], 0.0)
setlowerbound(x[189], 0.0)
setlowerbound(x[279], 0.0)
setlowerbound(x[187], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[325], 0.0)
setlowerbound(x[166], 0.0)
setlowerbound(x[280], 0.0)
setlowerbound(x[157], 0.0)
setlowerbound(x[316], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[314], 0.0)
setlowerbound(x[305], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[338], 0.0)
setlowerbound(x[230], 0.0)
setlowerbound(x[163], 0.0)
setlowerbound(x[216], 0.0)
setlowerbound(x[133], 0.0)
setlowerbound(x[192], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[205], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[195], 0.0)
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[207], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[181], 0.0)
setlowerbound(x[153], 0.0)
setlowerbound(x[257], 0.0)
setlowerbound(x[201], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[223], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[335], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[272], 0.0)
setlowerbound(x[208], 0.0)
setlowerbound(x[334], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[270], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[210], 0.0)
setlowerbound(x[267], 0.0)
setlowerbound(x[274], 0.0)
setlowerbound(x[296], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[302], 0.0)
setlowerbound(x[182], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[297], 0.0)
setlowerbound(x[191], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[249], 0.0)
setlowerbound(x[177], 0.0)
setlowerbound(x[310], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[268], 0.0)
setlowerbound(x[276], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[275], 0.0)
setlowerbound(x[152], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[233], 0.0)
setlowerbound(x[336], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[184], 0.0)
setlowerbound(x[236], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[158], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[203], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[254], 0.0)
setlowerbound(x[170], 0.0)
setlowerbound(x[149], 0.0)
setlowerbound(x[221], 0.0)
setlowerbound(x[339], 0.0)
setlowerbound(x[217], 0.0)
setlowerbound(x[212], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[271], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[323], 0.0)
setlowerbound(x[183], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[167], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[239], 0.0)
setlowerbound(x[294], 0.0)
setlowerbound(x[228], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[222], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[340], 0.0)
setlowerbound(x[256], 0.0)
setlowerbound(x[266], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[269], 0.0)
setlowerbound(x[245], 0.0)
setlowerbound(x[320], 0.0)
setlowerbound(x[333], 0.0)
setlowerbound(x[155], 0.0)
setlowerbound(x[204], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[283], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[293], 0.0)
setlowerbound(x[337], 0.0)
setlowerbound(x[322], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[193], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[180], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[237], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[194], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[214], 0.0)
setlowerbound(x[304], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[247], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[178], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[341], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[286], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[300], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[235], 0.0)
setlowerbound(x[168], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[246], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[315], 0.0)
setlowerbound(x[242], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[255], 0.0)
setlowerbound(x[159], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[262], 0.0)
setlowerbound(x[135], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[342], 0.0)
setlowerbound(x[301], 0.0)
setlowerbound(x[229], 0.0)
setlowerbound(x[211], 0.0)
setlowerbound(x[108], 0.0)
setupperbound(x[1], 29.0)
setupperbound(x[2], 29.0)
setupperbound(x[3], 29.0)
setupperbound(x[4], 29.0)
setupperbound(x[5], 29.0)
setupperbound(x[6], 29.0)
setupperbound(x[7], 29.0)
setupperbound(x[8], 29.0)
setupperbound(x[9], 29.0)
setupperbound(x[10], 29.0)
setlowerbound(x[11], 1.0)
setupperbound(x[11], 40.0)
setlowerbound(x[12], 1.0)
setupperbound(x[12], 50.0)
setlowerbound(x[13], 1.0)
setupperbound(x[13], 60.0)
setlowerbound(x[14], 1.0)
setupperbound(x[14], 35.0)
setlowerbound(x[15], 1.0)
setupperbound(x[15], 75.0)
setlowerbound(x[16], 1.0)
setupperbound(x[16], 40.0)
setlowerbound(x[17], 1.0)
setupperbound(x[17], 50.0)
setlowerbound(x[18], 1.0)
setupperbound(x[18], 60.0)
setlowerbound(x[19], 1.0)
setupperbound(x[19], 35.0)
setlowerbound(x[20], 1.0)
setupperbound(x[20], 75.0)
setupperbound(x[21], 30.0)
setupperbound(x[22], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, -2*x[21]-2*x[22]+x[383] == 0.0)
@constraint(m, e2, -x[1]-x[11]+x[21] >= 0.0)
@constraint(m, e3, -x[2]-x[12]+x[21] >= 0.0)
@constraint(m, e4, -x[3]-x[13]+x[21] >= 0.0)
@constraint(m, e5, -x[4]-x[14]+x[21] >= 0.0)
@constraint(m, e6, -x[5]-x[15]+x[21] >= 0.0)
@constraint(m, e7, -x[6]-x[16]+x[22] >= 0.0)
@constraint(m, e8, -x[7]-x[17]+x[22] >= 0.0)
@constraint(m, e9, -x[8]-x[18]+x[22] >= 0.0)
@constraint(m, e10, -x[9]-x[19]+x[22] >= 0.0)
@constraint(m, e11, -x[10]-x[20]+x[22] >= 0.0)
@NLconstraint(m, e12, 40/x[16]-x[11] <= 0.0)
@NLconstraint(m, e13, 50/x[17]-x[12] <= 0.0)
@NLconstraint(m, e14, 60/x[18]-x[13] <= 0.0)
@NLconstraint(m, e15, 35/x[19]-x[14] <= 0.0)
@NLconstraint(m, e16, 75/x[20]-x[15] <= 0.0)
@constraint(m, e17, x[1]-x[23]-x[27]-x[31]-x[35] == 0.0)
@constraint(m, e18, x[1]-x[24]-x[28]-x[32]-x[36] == 0.0)
@constraint(m, e19, x[1]-x[25]-x[29]-x[33]-x[37] == 0.0)
@constraint(m, e20, x[1]-x[26]-x[30]-x[34]-x[38] == 0.0)
@constraint(m, e21, x[2]-x[39]-x[43]-x[47]-x[51] == 0.0)
@constraint(m, e22, x[2]-x[40]-x[44]-x[48]-x[52] == 0.0)
@constraint(m, e23, x[2]-x[41]-x[45]-x[49]-x[53] == 0.0)
@constraint(m, e24, x[2]-x[42]-x[46]-x[50]-x[54] == 0.0)
@constraint(m, e25, x[3]-x[55]-x[59]-x[63]-x[67] == 0.0)
@constraint(m, e26, x[3]-x[56]-x[60]-x[64]-x[68] == 0.0)
@constraint(m, e27, x[3]-x[57]-x[61]-x[65]-x[69] == 0.0)
@constraint(m, e28, x[3]-x[58]-x[62]-x[66]-x[70] == 0.0)
@constraint(m, e29, x[4]-x[71]-x[75]-x[79]-x[83] == 0.0)
@constraint(m, e30, x[4]-x[72]-x[76]-x[80]-x[84] == 0.0)
@constraint(m, e31, x[4]-x[73]-x[77]-x[81]-x[85] == 0.0)
@constraint(m, e32, x[4]-x[74]-x[78]-x[82]-x[86] == 0.0)
@constraint(m, e33, x[5]-x[87]-x[91]-x[95]-x[99] == 0.0)
@constraint(m, e34, x[5]-x[88]-x[92]-x[96]-x[100] == 0.0)
@constraint(m, e35, x[5]-x[89]-x[93]-x[97]-x[101] == 0.0)
@constraint(m, e36, x[5]-x[90]-x[94]-x[98]-x[102] == 0.0)
@constraint(m, e37, x[6]-x[103]-x[107]-x[111]-x[115] == 0.0)
@constraint(m, e38, x[6]-x[104]-x[108]-x[112]-x[116] == 0.0)
@constraint(m, e39, x[6]-x[105]-x[109]-x[113]-x[117] == 0.0)
@constraint(m, e40, x[6]-x[106]-x[110]-x[114]-x[118] == 0.0)
@constraint(m, e41, x[7]-x[119]-x[123]-x[127]-x[131] == 0.0)
@constraint(m, e42, x[7]-x[120]-x[124]-x[128]-x[132] == 0.0)
@constraint(m, e43, x[7]-x[121]-x[125]-x[129]-x[133] == 0.0)
@constraint(m, e44, x[7]-x[122]-x[126]-x[130]-x[134] == 0.0)
@constraint(m, e45, x[8]-x[135]-x[139]-x[143]-x[147] == 0.0)
@constraint(m, e46, x[8]-x[136]-x[140]-x[144]-x[148] == 0.0)
@constraint(m, e47, x[8]-x[137]-x[141]-x[145]-x[149] == 0.0)
@constraint(m, e48, x[8]-x[138]-x[142]-x[146]-x[150] == 0.0)
@constraint(m, e49, x[9]-x[151]-x[155]-x[159]-x[163] == 0.0)
@constraint(m, e50, x[9]-x[152]-x[156]-x[160]-x[164] == 0.0)
@constraint(m, e51, x[9]-x[153]-x[157]-x[161]-x[165] == 0.0)
@constraint(m, e52, x[9]-x[154]-x[158]-x[162]-x[166] == 0.0)
@constraint(m, e53, x[10]-x[167]-x[171]-x[175]-x[179] == 0.0)
@constraint(m, e54, x[10]-x[168]-x[172]-x[176]-x[180] == 0.0)
@constraint(m, e55, x[10]-x[169]-x[173]-x[177]-x[181] == 0.0)
@constraint(m, e56, x[10]-x[170]-x[174]-x[178]-x[182] == 0.0)
@constraint(m, e57, x[11]-x[183]-x[187]-x[191]-x[195] == 0.0)
@constraint(m, e58, x[11]-x[184]-x[188]-x[192]-x[196] == 0.0)
@constraint(m, e59, x[11]-x[185]-x[189]-x[193]-x[197] == 0.0)
@constraint(m, e60, x[11]-x[186]-x[190]-x[194]-x[198] == 0.0)
@constraint(m, e61, x[12]-x[199]-x[203]-x[207]-x[211] == 0.0)
@constraint(m, e62, x[12]-x[200]-x[204]-x[208]-x[212] == 0.0)
@constraint(m, e63, x[12]-x[201]-x[205]-x[209]-x[213] == 0.0)
@constraint(m, e64, x[12]-x[202]-x[206]-x[210]-x[214] == 0.0)
@constraint(m, e65, x[13]-x[215]-x[219]-x[223]-x[227] == 0.0)
@constraint(m, e66, x[13]-x[216]-x[220]-x[224]-x[228] == 0.0)
@constraint(m, e67, x[13]-x[217]-x[221]-x[225]-x[229] == 0.0)
@constraint(m, e68, x[13]-x[218]-x[222]-x[226]-x[230] == 0.0)
@constraint(m, e69, x[14]-x[231]-x[235]-x[239]-x[243] == 0.0)
@constraint(m, e70, x[14]-x[232]-x[236]-x[240]-x[244] == 0.0)
@constraint(m, e71, x[14]-x[233]-x[237]-x[241]-x[245] == 0.0)
@constraint(m, e72, x[14]-x[234]-x[238]-x[242]-x[246] == 0.0)
@constraint(m, e73, x[15]-x[247]-x[251]-x[255]-x[259] == 0.0)
@constraint(m, e74, x[15]-x[248]-x[252]-x[256]-x[260] == 0.0)
@constraint(m, e75, x[15]-x[249]-x[253]-x[257]-x[261] == 0.0)
@constraint(m, e76, x[15]-x[250]-x[254]-x[258]-x[262] == 0.0)
@constraint(m, e77, x[16]-x[263]-x[267]-x[271]-x[275] == 0.0)
@constraint(m, e78, x[16]-x[264]-x[268]-x[272]-x[276] == 0.0)
@constraint(m, e79, x[16]-x[265]-x[269]-x[273]-x[277] == 0.0)
@constraint(m, e80, x[16]-x[266]-x[270]-x[274]-x[278] == 0.0)
@constraint(m, e81, x[17]-x[279]-x[283]-x[287]-x[291] == 0.0)
@constraint(m, e82, x[17]-x[280]-x[284]-x[288]-x[292] == 0.0)
@constraint(m, e83, x[17]-x[281]-x[285]-x[289]-x[293] == 0.0)
@constraint(m, e84, x[17]-x[282]-x[286]-x[290]-x[294] == 0.0)
@constraint(m, e85, x[18]-x[295]-x[299]-x[303]-x[307] == 0.0)
@constraint(m, e86, x[18]-x[296]-x[300]-x[304]-x[308] == 0.0)
@constraint(m, e87, x[18]-x[297]-x[301]-x[305]-x[309] == 0.0)
@constraint(m, e88, x[18]-x[298]-x[302]-x[306]-x[310] == 0.0)
@constraint(m, e89, x[19]-x[311]-x[315]-x[319]-x[323] == 0.0)
@constraint(m, e90, x[19]-x[312]-x[316]-x[320]-x[324] == 0.0)
@constraint(m, e91, x[19]-x[313]-x[317]-x[321]-x[325] == 0.0)
@constraint(m, e92, x[19]-x[314]-x[318]-x[322]-x[326] == 0.0)
@constraint(m, e93, x[20]-x[327]-x[331]-x[335]-x[339] == 0.0)
@constraint(m, e94, x[20]-x[328]-x[332]-x[336]-x[340] == 0.0)
@constraint(m, e95, x[20]-x[329]-x[333]-x[337]-x[341] == 0.0)
@constraint(m, e96, x[20]-x[330]-x[334]-x[338]-x[342] == 0.0)
@constraint(m, e97, x[23]-29*b[343] <= 0.0)
@constraint(m, e98, x[24]-29*b[344] <= 0.0)
@constraint(m, e99, x[25]-29*b[345] <= 0.0)
@constraint(m, e100, x[26]-29*b[346] <= 0.0)
@constraint(m, e101, x[27]-29*b[353] <= 0.0)
@constraint(m, e102, x[28]-29*b[354] <= 0.0)
@constraint(m, e103, x[29]-29*b[355] <= 0.0)
@constraint(m, e104, x[30]-29*b[356] <= 0.0)
@constraint(m, e105, x[31]-29*b[363] <= 0.0)
@constraint(m, e106, x[32]-29*b[364] <= 0.0)
@constraint(m, e107, x[33]-29*b[365] <= 0.0)
@constraint(m, e108, x[34]-29*b[366] <= 0.0)
@constraint(m, e109, x[35]-29*b[373] <= 0.0)
@constraint(m, e110, x[36]-29*b[374] <= 0.0)
@constraint(m, e111, x[37]-29*b[375] <= 0.0)
@constraint(m, e112, x[38]-29*b[376] <= 0.0)
@constraint(m, e113, x[39]-29*b[343] <= 0.0)
@constraint(m, e114, x[40]-29*b[347] <= 0.0)
@constraint(m, e115, x[41]-29*b[348] <= 0.0)
@constraint(m, e116, x[42]-29*b[349] <= 0.0)
@constraint(m, e117, x[43]-29*b[353] <= 0.0)
@constraint(m, e118, x[44]-29*b[357] <= 0.0)
@constraint(m, e119, x[45]-29*b[358] <= 0.0)
@constraint(m, e120, x[46]-29*b[359] <= 0.0)
@constraint(m, e121, x[47]-29*b[363] <= 0.0)
@constraint(m, e122, x[48]-29*b[367] <= 0.0)
@constraint(m, e123, x[49]-29*b[368] <= 0.0)
@constraint(m, e124, x[50]-29*b[369] <= 0.0)
@constraint(m, e125, x[51]-29*b[373] <= 0.0)
@constraint(m, e126, x[52]-29*b[377] <= 0.0)
@constraint(m, e127, x[53]-29*b[378] <= 0.0)
@constraint(m, e128, x[54]-29*b[379] <= 0.0)
@constraint(m, e129, x[55]-29*b[344] <= 0.0)
@constraint(m, e130, x[56]-29*b[347] <= 0.0)
@constraint(m, e131, x[57]-29*b[350] <= 0.0)
@constraint(m, e132, x[58]-29*b[351] <= 0.0)
@constraint(m, e133, x[59]-29*b[354] <= 0.0)
@constraint(m, e134, x[60]-29*b[357] <= 0.0)
@constraint(m, e135, x[61]-29*b[360] <= 0.0)
@constraint(m, e136, x[62]-29*b[361] <= 0.0)
@constraint(m, e137, x[63]-29*b[364] <= 0.0)
@constraint(m, e138, x[64]-29*b[367] <= 0.0)
@constraint(m, e139, x[65]-29*b[370] <= 0.0)
@constraint(m, e140, x[66]-29*b[371] <= 0.0)
@constraint(m, e141, x[67]-29*b[374] <= 0.0)
@constraint(m, e142, x[68]-29*b[377] <= 0.0)
@constraint(m, e143, x[69]-29*b[380] <= 0.0)
@constraint(m, e144, x[70]-29*b[381] <= 0.0)
@constraint(m, e145, x[71]-29*b[345] <= 0.0)
@constraint(m, e146, x[72]-29*b[348] <= 0.0)
@constraint(m, e147, x[73]-29*b[350] <= 0.0)
@constraint(m, e148, x[74]-29*b[352] <= 0.0)
@constraint(m, e149, x[75]-29*b[355] <= 0.0)
@constraint(m, e150, x[76]-29*b[358] <= 0.0)
@constraint(m, e151, x[77]-29*b[360] <= 0.0)
@constraint(m, e152, x[78]-29*b[362] <= 0.0)
@constraint(m, e153, x[79]-29*b[365] <= 0.0)
@constraint(m, e154, x[80]-29*b[368] <= 0.0)
@constraint(m, e155, x[81]-29*b[370] <= 0.0)
@constraint(m, e156, x[82]-29*b[372] <= 0.0)
@constraint(m, e157, x[83]-29*b[375] <= 0.0)
@constraint(m, e158, x[84]-29*b[378] <= 0.0)
@constraint(m, e159, x[85]-29*b[380] <= 0.0)
@constraint(m, e160, x[86]-29*b[382] <= 0.0)
@constraint(m, e161, x[87]-29*b[346] <= 0.0)
@constraint(m, e162, x[88]-29*b[349] <= 0.0)
@constraint(m, e163, x[89]-29*b[351] <= 0.0)
@constraint(m, e164, x[90]-29*b[352] <= 0.0)
@constraint(m, e165, x[91]-29*b[356] <= 0.0)
@constraint(m, e166, x[92]-29*b[359] <= 0.0)
@constraint(m, e167, x[93]-29*b[361] <= 0.0)
@constraint(m, e168, x[94]-29*b[362] <= 0.0)
@constraint(m, e169, x[95]-29*b[366] <= 0.0)
@constraint(m, e170, x[96]-29*b[369] <= 0.0)
@constraint(m, e171, x[97]-29*b[371] <= 0.0)
@constraint(m, e172, x[98]-29*b[372] <= 0.0)
@constraint(m, e173, x[99]-29*b[376] <= 0.0)
@constraint(m, e174, x[100]-29*b[379] <= 0.0)
@constraint(m, e175, x[101]-29*b[381] <= 0.0)
@constraint(m, e176, x[102]-29*b[382] <= 0.0)
@constraint(m, e177, x[103]-29*b[343] <= 0.0)
@constraint(m, e178, x[104]-29*b[344] <= 0.0)
@constraint(m, e179, x[105]-29*b[345] <= 0.0)
@constraint(m, e180, x[106]-29*b[346] <= 0.0)
@constraint(m, e181, x[107]-29*b[353] <= 0.0)
@constraint(m, e182, x[108]-29*b[354] <= 0.0)
@constraint(m, e183, x[109]-29*b[355] <= 0.0)
@constraint(m, e184, x[110]-29*b[356] <= 0.0)
@constraint(m, e185, x[111]-29*b[363] <= 0.0)
@constraint(m, e186, x[112]-29*b[364] <= 0.0)
@constraint(m, e187, x[113]-29*b[365] <= 0.0)
@constraint(m, e188, x[114]-29*b[366] <= 0.0)
@constraint(m, e189, x[115]-29*b[373] <= 0.0)
@constraint(m, e190, x[116]-29*b[374] <= 0.0)
@constraint(m, e191, x[117]-29*b[375] <= 0.0)
@constraint(m, e192, x[118]-29*b[376] <= 0.0)
@constraint(m, e193, x[119]-29*b[343] <= 0.0)
@constraint(m, e194, x[120]-29*b[347] <= 0.0)
@constraint(m, e195, x[121]-29*b[348] <= 0.0)
@constraint(m, e196, x[122]-29*b[349] <= 0.0)
@constraint(m, e197, x[123]-29*b[353] <= 0.0)
@constraint(m, e198, x[124]-29*b[357] <= 0.0)
@constraint(m, e199, x[125]-29*b[358] <= 0.0)
@constraint(m, e200, x[126]-29*b[359] <= 0.0)
@constraint(m, e201, x[127]-29*b[363] <= 0.0)
@constraint(m, e202, x[128]-29*b[367] <= 0.0)
@constraint(m, e203, x[129]-29*b[368] <= 0.0)
@constraint(m, e204, x[130]-29*b[369] <= 0.0)
@constraint(m, e205, x[131]-29*b[373] <= 0.0)
@constraint(m, e206, x[132]-29*b[377] <= 0.0)
@constraint(m, e207, x[133]-29*b[378] <= 0.0)
@constraint(m, e208, x[134]-29*b[379] <= 0.0)
@constraint(m, e209, x[135]-29*b[344] <= 0.0)
@constraint(m, e210, x[136]-29*b[347] <= 0.0)
@constraint(m, e211, x[137]-29*b[350] <= 0.0)
@constraint(m, e212, x[138]-29*b[351] <= 0.0)
@constraint(m, e213, x[139]-29*b[354] <= 0.0)
@constraint(m, e214, x[140]-29*b[357] <= 0.0)
@constraint(m, e215, x[141]-29*b[360] <= 0.0)
@constraint(m, e216, x[142]-29*b[361] <= 0.0)
@constraint(m, e217, x[143]-29*b[364] <= 0.0)
@constraint(m, e218, x[144]-29*b[367] <= 0.0)
@constraint(m, e219, x[145]-29*b[370] <= 0.0)
@constraint(m, e220, x[146]-29*b[371] <= 0.0)
@constraint(m, e221, x[147]-29*b[374] <= 0.0)
@constraint(m, e222, x[148]-29*b[377] <= 0.0)
@constraint(m, e223, x[149]-29*b[380] <= 0.0)
@constraint(m, e224, x[150]-29*b[381] <= 0.0)
@constraint(m, e225, x[151]-29*b[345] <= 0.0)
@constraint(m, e226, x[152]-29*b[348] <= 0.0)
@constraint(m, e227, x[153]-29*b[350] <= 0.0)
@constraint(m, e228, x[154]-29*b[352] <= 0.0)
@constraint(m, e229, x[155]-29*b[355] <= 0.0)
@constraint(m, e230, x[156]-29*b[358] <= 0.0)
@constraint(m, e231, x[157]-29*b[360] <= 0.0)
@constraint(m, e232, x[158]-29*b[362] <= 0.0)
@constraint(m, e233, x[159]-29*b[365] <= 0.0)
@constraint(m, e234, x[160]-29*b[368] <= 0.0)
@constraint(m, e235, x[161]-29*b[370] <= 0.0)
@constraint(m, e236, x[162]-29*b[372] <= 0.0)
@constraint(m, e237, x[163]-29*b[375] <= 0.0)
@constraint(m, e238, x[164]-29*b[378] <= 0.0)
@constraint(m, e239, x[165]-29*b[380] <= 0.0)
@constraint(m, e240, x[166]-29*b[382] <= 0.0)
@constraint(m, e241, x[167]-29*b[346] <= 0.0)
@constraint(m, e242, x[168]-29*b[349] <= 0.0)
@constraint(m, e243, x[169]-29*b[351] <= 0.0)
@constraint(m, e244, x[170]-29*b[352] <= 0.0)
@constraint(m, e245, x[171]-29*b[356] <= 0.0)
@constraint(m, e246, x[172]-29*b[359] <= 0.0)
@constraint(m, e247, x[173]-29*b[361] <= 0.0)
@constraint(m, e248, x[174]-29*b[362] <= 0.0)
@constraint(m, e249, x[175]-29*b[366] <= 0.0)
@constraint(m, e250, x[176]-29*b[369] <= 0.0)
@constraint(m, e251, x[177]-29*b[371] <= 0.0)
@constraint(m, e252, x[178]-29*b[372] <= 0.0)
@constraint(m, e253, x[179]-29*b[376] <= 0.0)
@constraint(m, e254, x[180]-29*b[379] <= 0.0)
@constraint(m, e255, x[181]-29*b[381] <= 0.0)
@constraint(m, e256, x[182]-29*b[382] <= 0.0)
@constraint(m, e257, x[183]-40*b[343] <= 0.0)
@constraint(m, e258, x[184]-40*b[344] <= 0.0)
@constraint(m, e259, x[185]-40*b[345] <= 0.0)
@constraint(m, e260, x[186]-40*b[346] <= 0.0)
@constraint(m, e261, x[187]-40*b[353] <= 0.0)
@constraint(m, e262, x[188]-40*b[354] <= 0.0)
@constraint(m, e263, x[189]-40*b[355] <= 0.0)
@constraint(m, e264, x[190]-40*b[356] <= 0.0)
@constraint(m, e265, x[191]-40*b[363] <= 0.0)
@constraint(m, e266, x[192]-40*b[364] <= 0.0)
@constraint(m, e267, x[193]-40*b[365] <= 0.0)
@constraint(m, e268, x[194]-40*b[366] <= 0.0)
@constraint(m, e269, x[195]-40*b[373] <= 0.0)
@constraint(m, e270, x[196]-40*b[374] <= 0.0)
@constraint(m, e271, x[197]-40*b[375] <= 0.0)
@constraint(m, e272, x[198]-40*b[376] <= 0.0)
@constraint(m, e273, x[199]-40*b[343] <= 0.0)
@constraint(m, e274, x[200]-50*b[347] <= 0.0)
@constraint(m, e275, x[201]-50*b[348] <= 0.0)
@constraint(m, e276, x[202]-50*b[349] <= 0.0)
@constraint(m, e277, x[203]-40*b[353] <= 0.0)
@constraint(m, e278, x[204]-50*b[357] <= 0.0)
@constraint(m, e279, x[205]-50*b[358] <= 0.0)
@constraint(m, e280, x[206]-50*b[359] <= 0.0)
@constraint(m, e281, x[207]-40*b[363] <= 0.0)
@constraint(m, e282, x[208]-50*b[367] <= 0.0)
@constraint(m, e283, x[209]-50*b[368] <= 0.0)
@constraint(m, e284, x[210]-50*b[369] <= 0.0)
@constraint(m, e285, x[211]-40*b[373] <= 0.0)
@constraint(m, e286, x[212]-50*b[377] <= 0.0)
@constraint(m, e287, x[213]-50*b[378] <= 0.0)
@constraint(m, e288, x[214]-50*b[379] <= 0.0)
@constraint(m, e289, x[215]-40*b[344] <= 0.0)
@constraint(m, e290, x[216]-50*b[347] <= 0.0)
@constraint(m, e291, x[217]-60*b[350] <= 0.0)
@constraint(m, e292, x[218]-60*b[351] <= 0.0)
@constraint(m, e293, x[219]-40*b[354] <= 0.0)
@constraint(m, e294, x[220]-50*b[357] <= 0.0)
@constraint(m, e295, x[221]-60*b[360] <= 0.0)
@constraint(m, e296, x[222]-60*b[361] <= 0.0)
@constraint(m, e297, x[223]-40*b[364] <= 0.0)
@constraint(m, e298, x[224]-50*b[367] <= 0.0)
@constraint(m, e299, x[225]-60*b[370] <= 0.0)
@constraint(m, e300, x[226]-60*b[371] <= 0.0)
@constraint(m, e301, x[227]-40*b[374] <= 0.0)
@constraint(m, e302, x[228]-50*b[377] <= 0.0)
@constraint(m, e303, x[229]-60*b[380] <= 0.0)
@constraint(m, e304, x[230]-60*b[381] <= 0.0)
@constraint(m, e305, x[231]-40*b[345] <= 0.0)
@constraint(m, e306, x[232]-50*b[348] <= 0.0)
@constraint(m, e307, x[233]-60*b[350] <= 0.0)
@constraint(m, e308, x[234]-35*b[352] <= 0.0)
@constraint(m, e309, x[235]-40*b[355] <= 0.0)
@constraint(m, e310, x[236]-50*b[358] <= 0.0)
@constraint(m, e311, x[237]-60*b[360] <= 0.0)
@constraint(m, e312, x[238]-35*b[362] <= 0.0)
@constraint(m, e313, x[239]-40*b[365] <= 0.0)
@constraint(m, e314, x[240]-50*b[368] <= 0.0)
@constraint(m, e315, x[241]-60*b[370] <= 0.0)
@constraint(m, e316, x[242]-35*b[372] <= 0.0)
@constraint(m, e317, x[243]-40*b[375] <= 0.0)
@constraint(m, e318, x[244]-50*b[378] <= 0.0)
@constraint(m, e319, x[245]-60*b[380] <= 0.0)
@constraint(m, e320, x[246]-35*b[382] <= 0.0)
@constraint(m, e321, x[247]-40*b[346] <= 0.0)
@constraint(m, e322, x[248]-50*b[349] <= 0.0)
@constraint(m, e323, x[249]-60*b[351] <= 0.0)
@constraint(m, e324, x[250]-35*b[352] <= 0.0)
@constraint(m, e325, x[251]-40*b[356] <= 0.0)
@constraint(m, e326, x[252]-50*b[359] <= 0.0)
@constraint(m, e327, x[253]-60*b[361] <= 0.0)
@constraint(m, e328, x[254]-35*b[362] <= 0.0)
@constraint(m, e329, x[255]-40*b[366] <= 0.0)
@constraint(m, e330, x[256]-50*b[369] <= 0.0)
@constraint(m, e331, x[257]-60*b[371] <= 0.0)
@constraint(m, e332, x[258]-35*b[372] <= 0.0)
@constraint(m, e333, x[259]-40*b[376] <= 0.0)
@constraint(m, e334, x[260]-50*b[379] <= 0.0)
@constraint(m, e335, x[261]-60*b[381] <= 0.0)
@constraint(m, e336, x[262]-35*b[382] <= 0.0)
@constraint(m, e337, x[263]-40*b[343] <= 0.0)
@constraint(m, e338, x[264]-40*b[344] <= 0.0)
@constraint(m, e339, x[265]-40*b[345] <= 0.0)
@constraint(m, e340, x[266]-40*b[346] <= 0.0)
@constraint(m, e341, x[267]-40*b[353] <= 0.0)
@constraint(m, e342, x[268]-40*b[354] <= 0.0)
@constraint(m, e343, x[269]-40*b[355] <= 0.0)
@constraint(m, e344, x[270]-40*b[356] <= 0.0)
@constraint(m, e345, x[271]-40*b[363] <= 0.0)
@constraint(m, e346, x[272]-40*b[364] <= 0.0)
@constraint(m, e347, x[273]-40*b[365] <= 0.0)
@constraint(m, e348, x[274]-40*b[366] <= 0.0)
@constraint(m, e349, x[275]-40*b[373] <= 0.0)
@constraint(m, e350, x[276]-40*b[374] <= 0.0)
@constraint(m, e351, x[277]-40*b[375] <= 0.0)
@constraint(m, e352, x[278]-40*b[376] <= 0.0)
@constraint(m, e353, x[279]-40*b[343] <= 0.0)
@constraint(m, e354, x[280]-50*b[347] <= 0.0)
@constraint(m, e355, x[281]-50*b[348] <= 0.0)
@constraint(m, e356, x[282]-50*b[349] <= 0.0)
@constraint(m, e357, x[283]-40*b[353] <= 0.0)
@constraint(m, e358, x[284]-50*b[357] <= 0.0)
@constraint(m, e359, x[285]-50*b[358] <= 0.0)
@constraint(m, e360, x[286]-50*b[359] <= 0.0)
@constraint(m, e361, x[287]-40*b[363] <= 0.0)
@constraint(m, e362, x[288]-50*b[367] <= 0.0)
@constraint(m, e363, x[289]-50*b[368] <= 0.0)
@constraint(m, e364, x[290]-50*b[369] <= 0.0)
@constraint(m, e365, x[291]-40*b[373] <= 0.0)
@constraint(m, e366, x[292]-50*b[377] <= 0.0)
@constraint(m, e367, x[293]-50*b[378] <= 0.0)
@constraint(m, e368, x[294]-50*b[379] <= 0.0)
@constraint(m, e369, x[295]-40*b[344] <= 0.0)
@constraint(m, e370, x[296]-50*b[347] <= 0.0)
@constraint(m, e371, x[297]-60*b[350] <= 0.0)
@constraint(m, e372, x[298]-60*b[351] <= 0.0)
@constraint(m, e373, x[299]-40*b[354] <= 0.0)
@constraint(m, e374, x[300]-50*b[357] <= 0.0)
@constraint(m, e375, x[301]-60*b[360] <= 0.0)
@constraint(m, e376, x[302]-60*b[361] <= 0.0)
@constraint(m, e377, x[303]-40*b[364] <= 0.0)
@constraint(m, e378, x[304]-50*b[367] <= 0.0)
@constraint(m, e379, x[305]-60*b[370] <= 0.0)
@constraint(m, e380, x[306]-60*b[371] <= 0.0)
@constraint(m, e381, x[307]-40*b[374] <= 0.0)
@constraint(m, e382, x[308]-50*b[377] <= 0.0)
@constraint(m, e383, x[309]-60*b[380] <= 0.0)
@constraint(m, e384, x[310]-60*b[381] <= 0.0)
@constraint(m, e385, x[311]-40*b[345] <= 0.0)
@constraint(m, e386, x[312]-50*b[348] <= 0.0)
@constraint(m, e387, x[313]-60*b[350] <= 0.0)
@constraint(m, e388, x[314]-35*b[352] <= 0.0)
@constraint(m, e389, x[315]-40*b[355] <= 0.0)
@constraint(m, e390, x[316]-50*b[358] <= 0.0)
@constraint(m, e391, x[317]-60*b[360] <= 0.0)
@constraint(m, e392, x[318]-35*b[362] <= 0.0)
@constraint(m, e393, x[319]-40*b[365] <= 0.0)
@constraint(m, e394, x[320]-50*b[368] <= 0.0)
@constraint(m, e395, x[321]-60*b[370] <= 0.0)
@constraint(m, e396, x[322]-35*b[372] <= 0.0)
@constraint(m, e397, x[323]-40*b[375] <= 0.0)
@constraint(m, e398, x[324]-50*b[378] <= 0.0)
@constraint(m, e399, x[325]-60*b[380] <= 0.0)
@constraint(m, e400, x[326]-35*b[382] <= 0.0)
@constraint(m, e401, x[327]-40*b[346] <= 0.0)
@constraint(m, e402, x[328]-50*b[349] <= 0.0)
@constraint(m, e403, x[329]-60*b[351] <= 0.0)
@constraint(m, e404, x[330]-35*b[352] <= 0.0)
@constraint(m, e405, x[331]-40*b[356] <= 0.0)
@constraint(m, e406, x[332]-50*b[359] <= 0.0)
@constraint(m, e407, x[333]-60*b[361] <= 0.0)
@constraint(m, e408, x[334]-35*b[362] <= 0.0)
@constraint(m, e409, x[335]-40*b[366] <= 0.0)
@constraint(m, e410, x[336]-50*b[369] <= 0.0)
@constraint(m, e411, x[337]-60*b[371] <= 0.0)
@constraint(m, e412, x[338]-35*b[372] <= 0.0)
@constraint(m, e413, x[339]-40*b[376] <= 0.0)
@constraint(m, e414, x[340]-50*b[379] <= 0.0)
@constraint(m, e415, x[341]-60*b[381] <= 0.0)
@constraint(m, e416, x[342]-35*b[382] <= 0.0)
@constraint(m, e417, x[23]-x[39]+x[183] <= 0.0)
@constraint(m, e418, x[24]-x[55]+x[184] <= 0.0)
@constraint(m, e419, x[25]-x[71]+x[185] <= 0.0)
@constraint(m, e420, x[26]-x[87]+x[186] <= 0.0)
@constraint(m, e421, x[40]-x[56]+x[200] <= 0.0)
@constraint(m, e422, x[41]-x[72]+x[201] <= 0.0)
@constraint(m, e423, x[42]-x[88]+x[202] <= 0.0)
@constraint(m, e424, x[57]-x[73]+x[217] <= 0.0)
@constraint(m, e425, x[58]-x[89]+x[218] <= 0.0)
@constraint(m, e426, x[74]-x[90]+x[234] <= 0.0)
@constraint(m, e427, -x[27]+x[43]+x[203] <= 0.0)
@constraint(m, e428, -x[28]+x[59]+x[219] <= 0.0)
@constraint(m, e429, -x[29]+x[75]+x[235] <= 0.0)
@constraint(m, e430, -x[30]+x[91]+x[251] <= 0.0)
@constraint(m, e431, -x[44]+x[60]+x[220] <= 0.0)
@constraint(m, e432, -x[45]+x[76]+x[236] <= 0.0)
@constraint(m, e433, -x[46]+x[92]+x[252] <= 0.0)
@constraint(m, e434, -x[61]+x[77]+x[237] <= 0.0)
@constraint(m, e435, -x[62]+x[93]+x[253] <= 0.0)
@constraint(m, e436, -x[78]+x[94]+x[254] <= 0.0)
@constraint(m, e437, x[111]-x[127]+x[271] <= 0.0)
@constraint(m, e438, x[112]-x[143]+x[272] <= 0.0)
@constraint(m, e439, x[113]-x[159]+x[273] <= 0.0)
@constraint(m, e440, x[114]-x[175]+x[274] <= 0.0)
@constraint(m, e441, x[128]-x[144]+x[288] <= 0.0)
@constraint(m, e442, x[129]-x[160]+x[289] <= 0.0)
@constraint(m, e443, x[130]-x[176]+x[290] <= 0.0)
@constraint(m, e444, x[145]-x[161]+x[305] <= 0.0)
@constraint(m, e445, x[146]-x[177]+x[306] <= 0.0)
@constraint(m, e446, x[162]-x[178]+x[322] <= 0.0)
@constraint(m, e447, -x[115]+x[131]+x[291] <= 0.0)
@constraint(m, e448, -x[116]+x[147]+x[307] <= 0.0)
@constraint(m, e449, -x[117]+x[163]+x[323] <= 0.0)
@constraint(m, e450, -x[118]+x[179]+x[339] <= 0.0)
@constraint(m, e451, -x[132]+x[148]+x[308] <= 0.0)
@constraint(m, e452, -x[133]+x[164]+x[324] <= 0.0)
@constraint(m, e453, -x[134]+x[180]+x[340] <= 0.0)
@constraint(m, e454, -x[149]+x[165]+x[325] <= 0.0)
@constraint(m, e455, -x[150]+x[181]+x[341] <= 0.0)
@constraint(m, e456, -x[166]+x[182]+x[342] <= 0.0)
@constraint(m, e457, b[343]+b[353]+b[363]+b[373] == 1.0)
@constraint(m, e458, b[344]+b[354]+b[364]+b[374] == 1.0)
@constraint(m, e459, b[345]+b[355]+b[365]+b[375] == 1.0)
@constraint(m, e460, b[346]+b[356]+b[366]+b[376] == 1.0)
@constraint(m, e461, b[347]+b[357]+b[367]+b[377] == 1.0)
@constraint(m, e462, b[348]+b[358]+b[368]+b[378] == 1.0)
@constraint(m, e463, b[349]+b[359]+b[369]+b[379] == 1.0)
@constraint(m, e464, b[350]+b[360]+b[370]+b[380] == 1.0)
@constraint(m, e465, b[351]+b[361]+b[371]+b[381] == 1.0)
@constraint(m, e466, b[352]+b[362]+b[372]+b[382] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[383])

m = m 		 # model get returned when including this script. 
