using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235]
@variable(m, x[x_Idx])
b_Idx = Any[19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_lower_bound(x[232], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[234], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[209], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[213], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[216], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[207], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[210], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[233], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[1], 2.5)
set_upper_bound(x[1], 37.5)
set_lower_bound(x[2], 3.5)
set_upper_bound(x[2], 36.5)
set_lower_bound(x[3], 1.5)
set_upper_bound(x[3], 38.5)
set_lower_bound(x[4], 1.0)
set_upper_bound(x[4], 39.0)
set_lower_bound(x[5], 2.0)
set_upper_bound(x[5], 38.0)
set_lower_bound(x[6], 2.5)
set_upper_bound(x[6], 37.5)
set_lower_bound(x[7], 4.0)
set_upper_bound(x[7], 36.0)
set_lower_bound(x[8], 2.0)
set_upper_bound(x[8], 38.0)
set_lower_bound(x[9], 1.0)
set_upper_bound(x[9], 39.0)
set_lower_bound(x[10], 3.0)
set_upper_bound(x[10], 37.0)
set_lower_bound(x[11], 2.5)
set_upper_bound(x[11], 37.5)
set_lower_bound(x[12], 1.5)
set_upper_bound(x[12], 38.5)
set_lower_bound(x[13], 1.5)
set_upper_bound(x[13], 38.5)
set_lower_bound(x[14], 2.0)
set_upper_bound(x[14], 38.0)
set_lower_bound(x[15], 1.0)
set_upper_bound(x[15], 39.0)
set_lower_bound(x[16], 3.0)
set_upper_bound(x[16], 37.0)
set_lower_bound(x[17], 3.0)
set_upper_bound(x[17], 37.0)
set_lower_bound(x[18], 2.5)
set_upper_bound(x[18], 37.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(150*( ((-4)+x[1])^2+ ((-10)+x[10])^2)+390*( ((-10)+x[2])^2+ ((-15)+x[11])^2)+240*( ((-7)+x[3])^2+ ((-9)+x[12])^2)+70*( ((-3)+x[4])^2+ ((-3)+x[13])^2)+165*( ((-20)+x[5])^2+ ((-17)+x[14])^2)+100*( ((-18)+x[6])^2+ ((-8)+x[15])^2)+200*( ((-30)+x[7])^2+ ((-20)+x[16])^2)+400*( ((-24)+x[8])^2+ ((-10)+x[17])^2)+330*( ((-22)+x[9])^2+ ((-6)+x[18])^2))-300*x[163]-240*x[164]-210*x[165]-140*x[166]-300*x[167]-250*x[168]-300*x[169]-210*x[170]-100*x[171]-150*x[172]-220*x[173]-200*x[174]-300*x[175]-290*x[176]-400*x[177]-120*x[178]-300*x[179]-150*x[180]-150*x[181]-100*x[182]-290*x[183]-100*x[184]-120*x[185]-180*x[186]-220*x[187]-110*x[188]-130*x[189]-190*x[190]-110*x[191]-160*x[192]-220*x[193]-140*x[194]-120*x[195]-260*x[196]-220*x[197]-140*x[198]-300*x[199]-240*x[200]-210*x[201]-140*x[202]-300*x[203]-250*x[204]-300*x[205]-210*x[206]-100*x[207]-150*x[208]-220*x[209]-200*x[210]-300*x[211]-290*x[212]-400*x[213]-120*x[214]-300*x[215]-150*x[216]-150*x[217]-100*x[218]-290*x[219]-100*x[220]-120*x[221]-180*x[222]-220*x[223]-110*x[224]-130*x[225]-190*x[226]-110*x[227]-160*x[228]-220*x[229]-140*x[230]-120*x[231]-260*x[232]-220*x[233]-140*x[234]+x[235] == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[163] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[164] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[165] >= 0.0)
@constraint(m, e5, -x[1]+x[5]+x[166] >= 0.0)
@constraint(m, e6, -x[1]+x[6]+x[167] >= 0.0)
@constraint(m, e7, -x[1]+x[7]+x[168] >= 0.0)
@constraint(m, e8, -x[1]+x[8]+x[169] >= 0.0)
@constraint(m, e9, -x[1]+x[9]+x[170] >= 0.0)
@constraint(m, e10, -x[2]+x[3]+x[171] >= 0.0)
@constraint(m, e11, -x[2]+x[4]+x[172] >= 0.0)
@constraint(m, e12, -x[2]+x[5]+x[173] >= 0.0)
@constraint(m, e13, -x[2]+x[6]+x[174] >= 0.0)
@constraint(m, e14, -x[2]+x[7]+x[175] >= 0.0)
@constraint(m, e15, -x[2]+x[8]+x[176] >= 0.0)
@constraint(m, e16, -x[2]+x[9]+x[177] >= 0.0)
@constraint(m, e17, -x[3]+x[4]+x[178] >= 0.0)
@constraint(m, e18, -x[3]+x[5]+x[179] >= 0.0)
@constraint(m, e19, -x[3]+x[6]+x[180] >= 0.0)
@constraint(m, e20, -x[3]+x[7]+x[181] >= 0.0)
@constraint(m, e21, -x[3]+x[8]+x[182] >= 0.0)
@constraint(m, e22, -x[3]+x[9]+x[183] >= 0.0)
@constraint(m, e23, -x[4]+x[5]+x[184] >= 0.0)
@constraint(m, e24, -x[4]+x[6]+x[185] >= 0.0)
@constraint(m, e25, -x[4]+x[7]+x[186] >= 0.0)
@constraint(m, e26, -x[4]+x[8]+x[187] >= 0.0)
@constraint(m, e27, -x[4]+x[9]+x[188] >= 0.0)
@constraint(m, e28, -x[5]+x[6]+x[189] >= 0.0)
@constraint(m, e29, -x[5]+x[7]+x[190] >= 0.0)
@constraint(m, e30, -x[5]+x[8]+x[191] >= 0.0)
@constraint(m, e31, -x[5]+x[9]+x[192] >= 0.0)
@constraint(m, e32, -x[6]+x[7]+x[193] >= 0.0)
@constraint(m, e33, -x[6]+x[8]+x[194] >= 0.0)
@constraint(m, e34, -x[6]+x[9]+x[195] >= 0.0)
@constraint(m, e35, -x[7]+x[8]+x[196] >= 0.0)
@constraint(m, e36, -x[7]+x[9]+x[197] >= 0.0)
@constraint(m, e37, -x[8]+x[9]+x[198] >= 0.0)
@constraint(m, e38, x[1]-x[2]+x[163] >= 0.0)
@constraint(m, e39, x[1]-x[3]+x[164] >= 0.0)
@constraint(m, e40, x[1]-x[4]+x[165] >= 0.0)
@constraint(m, e41, x[1]-x[5]+x[166] >= 0.0)
@constraint(m, e42, x[1]-x[6]+x[167] >= 0.0)
@constraint(m, e43, x[1]-x[7]+x[168] >= 0.0)
@constraint(m, e44, x[1]-x[8]+x[169] >= 0.0)
@constraint(m, e45, x[1]-x[9]+x[170] >= 0.0)
@constraint(m, e46, x[2]-x[3]+x[171] >= 0.0)
@constraint(m, e47, x[2]-x[4]+x[172] >= 0.0)
@constraint(m, e48, x[2]-x[5]+x[173] >= 0.0)
@constraint(m, e49, x[2]-x[6]+x[174] >= 0.0)
@constraint(m, e50, x[2]-x[7]+x[175] >= 0.0)
@constraint(m, e51, x[2]-x[8]+x[176] >= 0.0)
@constraint(m, e52, x[2]-x[9]+x[177] >= 0.0)
@constraint(m, e53, x[3]-x[4]+x[178] >= 0.0)
@constraint(m, e54, x[3]-x[5]+x[179] >= 0.0)
@constraint(m, e55, x[3]-x[6]+x[180] >= 0.0)
@constraint(m, e56, x[3]-x[7]+x[181] >= 0.0)
@constraint(m, e57, x[3]-x[8]+x[182] >= 0.0)
@constraint(m, e58, x[3]-x[9]+x[183] >= 0.0)
@constraint(m, e59, x[4]-x[5]+x[184] >= 0.0)
@constraint(m, e60, x[4]-x[6]+x[185] >= 0.0)
@constraint(m, e61, x[4]-x[7]+x[186] >= 0.0)
@constraint(m, e62, x[4]-x[8]+x[187] >= 0.0)
@constraint(m, e63, x[4]-x[9]+x[188] >= 0.0)
@constraint(m, e64, x[5]-x[6]+x[189] >= 0.0)
@constraint(m, e65, x[5]-x[7]+x[190] >= 0.0)
@constraint(m, e66, x[5]-x[8]+x[191] >= 0.0)
@constraint(m, e67, x[5]-x[9]+x[192] >= 0.0)
@constraint(m, e68, x[6]-x[7]+x[193] >= 0.0)
@constraint(m, e69, x[6]-x[8]+x[194] >= 0.0)
@constraint(m, e70, x[6]-x[9]+x[195] >= 0.0)
@constraint(m, e71, x[7]-x[8]+x[196] >= 0.0)
@constraint(m, e72, x[7]-x[9]+x[197] >= 0.0)
@constraint(m, e73, x[8]-x[9]+x[198] >= 0.0)
@constraint(m, e74, -x[10]+x[11]+x[199] >= 0.0)
@constraint(m, e75, -x[10]+x[12]+x[200] >= 0.0)
@constraint(m, e76, -x[10]+x[13]+x[201] >= 0.0)
@constraint(m, e77, -x[10]+x[14]+x[202] >= 0.0)
@constraint(m, e78, -x[10]+x[15]+x[203] >= 0.0)
@constraint(m, e79, -x[10]+x[16]+x[204] >= 0.0)
@constraint(m, e80, -x[10]+x[17]+x[205] >= 0.0)
@constraint(m, e81, -x[10]+x[18]+x[206] >= 0.0)
@constraint(m, e82, -x[11]+x[12]+x[207] >= 0.0)
@constraint(m, e83, -x[11]+x[13]+x[208] >= 0.0)
@constraint(m, e84, -x[11]+x[14]+x[209] >= 0.0)
@constraint(m, e85, -x[11]+x[15]+x[210] >= 0.0)
@constraint(m, e86, -x[11]+x[16]+x[211] >= 0.0)
@constraint(m, e87, -x[11]+x[17]+x[212] >= 0.0)
@constraint(m, e88, -x[11]+x[18]+x[213] >= 0.0)
@constraint(m, e89, -x[12]+x[13]+x[214] >= 0.0)
@constraint(m, e90, -x[12]+x[14]+x[215] >= 0.0)
@constraint(m, e91, -x[12]+x[15]+x[216] >= 0.0)
@constraint(m, e92, -x[12]+x[16]+x[217] >= 0.0)
@constraint(m, e93, -x[12]+x[17]+x[218] >= 0.0)
@constraint(m, e94, -x[12]+x[18]+x[219] >= 0.0)
@constraint(m, e95, -x[13]+x[14]+x[220] >= 0.0)
@constraint(m, e96, -x[13]+x[15]+x[221] >= 0.0)
@constraint(m, e97, -x[13]+x[16]+x[222] >= 0.0)
@constraint(m, e98, -x[13]+x[17]+x[223] >= 0.0)
@constraint(m, e99, -x[13]+x[18]+x[224] >= 0.0)
@constraint(m, e100, -x[14]+x[15]+x[225] >= 0.0)
@constraint(m, e101, -x[14]+x[16]+x[226] >= 0.0)
@constraint(m, e102, -x[14]+x[17]+x[227] >= 0.0)
@constraint(m, e103, -x[14]+x[18]+x[228] >= 0.0)
@constraint(m, e104, -x[15]+x[16]+x[229] >= 0.0)
@constraint(m, e105, -x[15]+x[17]+x[230] >= 0.0)
@constraint(m, e106, -x[15]+x[18]+x[231] >= 0.0)
@constraint(m, e107, -x[16]+x[17]+x[232] >= 0.0)
@constraint(m, e108, -x[16]+x[18]+x[233] >= 0.0)
@constraint(m, e109, -x[17]+x[18]+x[234] >= 0.0)
@constraint(m, e110, x[10]-x[11]+x[199] >= 0.0)
@constraint(m, e111, x[10]-x[12]+x[200] >= 0.0)
@constraint(m, e112, x[10]-x[13]+x[201] >= 0.0)
@constraint(m, e113, x[10]-x[14]+x[202] >= 0.0)
@constraint(m, e114, x[10]-x[15]+x[203] >= 0.0)
@constraint(m, e115, x[10]-x[16]+x[204] >= 0.0)
@constraint(m, e116, x[10]-x[17]+x[205] >= 0.0)
@constraint(m, e117, x[10]-x[18]+x[206] >= 0.0)
@constraint(m, e118, x[11]-x[12]+x[207] >= 0.0)
@constraint(m, e119, x[11]-x[13]+x[208] >= 0.0)
@constraint(m, e120, x[11]-x[14]+x[209] >= 0.0)
@constraint(m, e121, x[11]-x[15]+x[210] >= 0.0)
@constraint(m, e122, x[11]-x[16]+x[211] >= 0.0)
@constraint(m, e123, x[11]-x[17]+x[212] >= 0.0)
@constraint(m, e124, x[11]-x[18]+x[213] >= 0.0)
@constraint(m, e125, x[12]-x[13]+x[214] >= 0.0)
@constraint(m, e126, x[12]-x[14]+x[215] >= 0.0)
@constraint(m, e127, x[12]-x[15]+x[216] >= 0.0)
@constraint(m, e128, x[12]-x[16]+x[217] >= 0.0)
@constraint(m, e129, x[12]-x[17]+x[218] >= 0.0)
@constraint(m, e130, x[12]-x[18]+x[219] >= 0.0)
@constraint(m, e131, x[13]-x[14]+x[220] >= 0.0)
@constraint(m, e132, x[13]-x[15]+x[221] >= 0.0)
@constraint(m, e133, x[13]-x[16]+x[222] >= 0.0)
@constraint(m, e134, x[13]-x[17]+x[223] >= 0.0)
@constraint(m, e135, x[13]-x[18]+x[224] >= 0.0)
@constraint(m, e136, x[14]-x[15]+x[225] >= 0.0)
@constraint(m, e137, x[14]-x[16]+x[226] >= 0.0)
@constraint(m, e138, x[14]-x[17]+x[227] >= 0.0)
@constraint(m, e139, x[14]-x[18]+x[228] >= 0.0)
@constraint(m, e140, x[15]-x[16]+x[229] >= 0.0)
@constraint(m, e141, x[15]-x[17]+x[230] >= 0.0)
@constraint(m, e142, x[15]-x[18]+x[231] >= 0.0)
@constraint(m, e143, x[16]-x[17]+x[232] >= 0.0)
@constraint(m, e144, x[16]-x[18]+x[233] >= 0.0)
@constraint(m, e145, x[17]-x[18]+x[234] >= 0.0)
@constraint(m, e146, x[1]-x[2]+40*b[19] <= 34.0)
@constraint(m, e147, x[1]-x[3]+40*b[20] <= 36.0)
@constraint(m, e148, x[1]-x[4]+40*b[21] <= 36.5)
@constraint(m, e149, x[1]-x[5]+40*b[22] <= 35.5)
@constraint(m, e150, x[1]-x[6]+40*b[23] <= 35.0)
@constraint(m, e151, x[1]-x[7]+40*b[24] <= 33.5)
@constraint(m, e152, x[1]-x[8]+40*b[25] <= 35.5)
@constraint(m, e153, x[1]-x[9]+40*b[26] <= 36.5)
@constraint(m, e154, x[2]-x[3]+40*b[27] <= 35.0)
@constraint(m, e155, x[2]-x[4]+40*b[28] <= 35.5)
@constraint(m, e156, x[2]-x[5]+40*b[29] <= 34.5)
@constraint(m, e157, x[2]-x[6]+40*b[30] <= 34.0)
@constraint(m, e158, x[2]-x[7]+40*b[31] <= 32.5)
@constraint(m, e159, x[2]-x[8]+40*b[32] <= 34.5)
@constraint(m, e160, x[2]-x[9]+40*b[33] <= 35.5)
@constraint(m, e161, x[3]-x[4]+40*b[34] <= 37.5)
@constraint(m, e162, x[3]-x[5]+40*b[35] <= 36.5)
@constraint(m, e163, x[3]-x[6]+40*b[36] <= 36.0)
@constraint(m, e164, x[3]-x[7]+40*b[37] <= 34.5)
@constraint(m, e165, x[3]-x[8]+40*b[38] <= 36.5)
@constraint(m, e166, x[3]-x[9]+40*b[39] <= 37.5)
@constraint(m, e167, x[4]-x[5]+40*b[40] <= 37.0)
@constraint(m, e168, x[4]-x[6]+40*b[41] <= 36.5)
@constraint(m, e169, x[4]-x[7]+40*b[42] <= 35.0)
@constraint(m, e170, x[4]-x[8]+40*b[43] <= 37.0)
@constraint(m, e171, x[4]-x[9]+40*b[44] <= 38.0)
@constraint(m, e172, x[5]-x[6]+40*b[45] <= 35.5)
@constraint(m, e173, x[5]-x[7]+40*b[46] <= 34.0)
@constraint(m, e174, x[5]-x[8]+40*b[47] <= 36.0)
@constraint(m, e175, x[5]-x[9]+40*b[48] <= 37.0)
@constraint(m, e176, x[6]-x[7]+40*b[49] <= 33.5)
@constraint(m, e177, x[6]-x[8]+40*b[50] <= 35.5)
@constraint(m, e178, x[6]-x[9]+40*b[51] <= 36.5)
@constraint(m, e179, x[7]-x[8]+40*b[52] <= 34.0)
@constraint(m, e180, x[7]-x[9]+40*b[53] <= 35.0)
@constraint(m, e181, x[8]-x[9]+40*b[54] <= 37.0)
@constraint(m, e182, -x[1]+x[2]+40*b[55] <= 34.0)
@constraint(m, e183, -x[1]+x[3]+40*b[56] <= 36.0)
@constraint(m, e184, -x[1]+x[4]+40*b[57] <= 36.5)
@constraint(m, e185, -x[1]+x[5]+40*b[58] <= 35.5)
@constraint(m, e186, -x[1]+x[6]+40*b[59] <= 35.0)
@constraint(m, e187, -x[1]+x[7]+40*b[60] <= 33.5)
@constraint(m, e188, -x[1]+x[8]+40*b[61] <= 35.5)
@constraint(m, e189, -x[1]+x[9]+40*b[62] <= 36.5)
@constraint(m, e190, -x[2]+x[3]+40*b[63] <= 35.0)
@constraint(m, e191, -x[2]+x[4]+40*b[64] <= 35.5)
@constraint(m, e192, -x[2]+x[5]+40*b[65] <= 34.5)
@constraint(m, e193, -x[2]+x[6]+40*b[66] <= 34.0)
@constraint(m, e194, -x[2]+x[7]+40*b[67] <= 32.5)
@constraint(m, e195, -x[2]+x[8]+40*b[68] <= 34.5)
@constraint(m, e196, -x[2]+x[9]+40*b[69] <= 35.5)
@constraint(m, e197, -x[3]+x[4]+40*b[70] <= 37.5)
@constraint(m, e198, -x[3]+x[5]+40*b[71] <= 36.5)
@constraint(m, e199, -x[3]+x[6]+40*b[72] <= 36.0)
@constraint(m, e200, -x[3]+x[7]+40*b[73] <= 34.5)
@constraint(m, e201, -x[3]+x[8]+40*b[74] <= 36.5)
@constraint(m, e202, -x[3]+x[9]+40*b[75] <= 37.5)
@constraint(m, e203, -x[4]+x[5]+40*b[76] <= 37.0)
@constraint(m, e204, -x[4]+x[6]+40*b[77] <= 36.5)
@constraint(m, e205, -x[4]+x[7]+40*b[78] <= 35.0)
@constraint(m, e206, -x[4]+x[8]+40*b[79] <= 37.0)
@constraint(m, e207, -x[4]+x[9]+40*b[80] <= 38.0)
@constraint(m, e208, -x[5]+x[6]+40*b[81] <= 35.5)
@constraint(m, e209, -x[5]+x[7]+40*b[82] <= 34.0)
@constraint(m, e210, -x[5]+x[8]+40*b[83] <= 36.0)
@constraint(m, e211, -x[5]+x[9]+40*b[84] <= 37.0)
@constraint(m, e212, -x[6]+x[7]+40*b[85] <= 33.5)
@constraint(m, e213, -x[6]+x[8]+40*b[86] <= 35.5)
@constraint(m, e214, -x[6]+x[9]+40*b[87] <= 36.5)
@constraint(m, e215, -x[7]+x[8]+40*b[88] <= 34.0)
@constraint(m, e216, -x[7]+x[9]+40*b[89] <= 35.0)
@constraint(m, e217, -x[8]+x[9]+40*b[90] <= 37.0)
@constraint(m, e218, x[10]-x[11]+40*b[91] <= 34.5)
@constraint(m, e219, x[10]-x[12]+40*b[92] <= 35.5)
@constraint(m, e220, x[10]-x[13]+40*b[93] <= 35.5)
@constraint(m, e221, x[10]-x[14]+40*b[94] <= 35.0)
@constraint(m, e222, x[10]-x[15]+40*b[95] <= 36.0)
@constraint(m, e223, x[10]-x[16]+40*b[96] <= 34.0)
@constraint(m, e224, x[10]-x[17]+40*b[97] <= 34.0)
@constraint(m, e225, x[10]-x[18]+40*b[98] <= 34.5)
@constraint(m, e226, x[11]-x[12]+40*b[99] <= 36.0)
@constraint(m, e227, x[11]-x[13]+40*b[100] <= 36.0)
@constraint(m, e228, x[11]-x[14]+40*b[101] <= 35.5)
@constraint(m, e229, x[11]-x[15]+40*b[102] <= 36.5)
@constraint(m, e230, x[11]-x[16]+40*b[103] <= 34.5)
@constraint(m, e231, x[11]-x[17]+40*b[104] <= 34.5)
@constraint(m, e232, x[11]-x[18]+40*b[105] <= 35.0)
@constraint(m, e233, x[12]-x[13]+40*b[106] <= 37.0)
@constraint(m, e234, x[12]-x[14]+40*b[107] <= 36.5)
@constraint(m, e235, x[12]-x[15]+40*b[108] <= 37.5)
@constraint(m, e236, x[12]-x[16]+40*b[109] <= 35.5)
@constraint(m, e237, x[12]-x[17]+40*b[110] <= 35.5)
@constraint(m, e238, x[12]-x[18]+40*b[111] <= 36.0)
@constraint(m, e239, x[13]-x[14]+40*b[112] <= 36.5)
@constraint(m, e240, x[13]-x[15]+40*b[113] <= 37.5)
@constraint(m, e241, x[13]-x[16]+40*b[114] <= 35.5)
@constraint(m, e242, x[13]-x[17]+40*b[115] <= 35.5)
@constraint(m, e243, x[13]-x[18]+40*b[116] <= 36.0)
@constraint(m, e244, x[14]-x[15]+40*b[117] <= 37.0)
@constraint(m, e245, x[14]-x[16]+40*b[118] <= 35.0)
@constraint(m, e246, x[14]-x[17]+40*b[119] <= 35.0)
@constraint(m, e247, x[14]-x[18]+40*b[120] <= 35.5)
@constraint(m, e248, x[15]-x[16]+40*b[121] <= 36.0)
@constraint(m, e249, x[15]-x[17]+40*b[122] <= 36.0)
@constraint(m, e250, x[15]-x[18]+40*b[123] <= 36.5)
@constraint(m, e251, x[16]-x[17]+40*b[124] <= 34.0)
@constraint(m, e252, x[16]-x[18]+40*b[125] <= 34.5)
@constraint(m, e253, x[17]-x[18]+40*b[126] <= 34.5)
@constraint(m, e254, -x[10]+x[11]+40*b[127] <= 34.5)
@constraint(m, e255, -x[10]+x[12]+40*b[128] <= 35.5)
@constraint(m, e256, -x[10]+x[13]+40*b[129] <= 35.5)
@constraint(m, e257, -x[10]+x[14]+40*b[130] <= 35.0)
@constraint(m, e258, -x[10]+x[15]+40*b[131] <= 36.0)
@constraint(m, e259, -x[10]+x[16]+40*b[132] <= 34.0)
@constraint(m, e260, -x[10]+x[17]+40*b[133] <= 34.0)
@constraint(m, e261, -x[10]+x[18]+40*b[134] <= 34.5)
@constraint(m, e262, -x[11]+x[12]+40*b[135] <= 36.0)
@constraint(m, e263, -x[11]+x[13]+40*b[136] <= 36.0)
@constraint(m, e264, -x[11]+x[14]+40*b[137] <= 35.5)
@constraint(m, e265, -x[11]+x[15]+40*b[138] <= 36.5)
@constraint(m, e266, -x[11]+x[16]+40*b[139] <= 34.5)
@constraint(m, e267, -x[11]+x[17]+40*b[140] <= 34.5)
@constraint(m, e268, -x[11]+x[18]+40*b[141] <= 35.0)
@constraint(m, e269, -x[12]+x[13]+40*b[142] <= 37.0)
@constraint(m, e270, -x[12]+x[14]+40*b[143] <= 36.5)
@constraint(m, e271, -x[12]+x[15]+40*b[144] <= 37.5)
@constraint(m, e272, -x[12]+x[16]+40*b[145] <= 35.5)
@constraint(m, e273, -x[12]+x[17]+40*b[146] <= 35.5)
@constraint(m, e274, -x[12]+x[18]+40*b[147] <= 36.0)
@constraint(m, e275, -x[13]+x[14]+40*b[148] <= 36.5)
@constraint(m, e276, -x[13]+x[15]+40*b[149] <= 37.5)
@constraint(m, e277, -x[13]+x[16]+40*b[150] <= 35.5)
@constraint(m, e278, -x[13]+x[17]+40*b[151] <= 35.5)
@constraint(m, e279, -x[13]+x[18]+40*b[152] <= 36.0)
@constraint(m, e280, -x[14]+x[15]+40*b[153] <= 37.0)
@constraint(m, e281, -x[14]+x[16]+40*b[154] <= 35.0)
@constraint(m, e282, -x[14]+x[17]+40*b[155] <= 35.0)
@constraint(m, e283, -x[14]+x[18]+40*b[156] <= 35.5)
@constraint(m, e284, -x[15]+x[16]+40*b[157] <= 36.0)
@constraint(m, e285, -x[15]+x[17]+40*b[158] <= 36.0)
@constraint(m, e286, -x[15]+x[18]+40*b[159] <= 36.5)
@constraint(m, e287, -x[16]+x[17]+40*b[160] <= 34.0)
@constraint(m, e288, -x[16]+x[18]+40*b[161] <= 34.5)
@constraint(m, e289, -x[17]+x[18]+40*b[162] <= 34.5)
@constraint(m, e290, b[19]+b[55]+b[91]+b[127] == 1.0)
@constraint(m, e291, b[20]+b[56]+b[92]+b[128] == 1.0)
@constraint(m, e292, b[21]+b[57]+b[93]+b[129] == 1.0)
@constraint(m, e293, b[22]+b[58]+b[94]+b[130] == 1.0)
@constraint(m, e294, b[23]+b[59]+b[95]+b[131] == 1.0)
@constraint(m, e295, b[24]+b[60]+b[96]+b[132] == 1.0)
@constraint(m, e296, b[25]+b[61]+b[97]+b[133] == 1.0)
@constraint(m, e297, b[26]+b[62]+b[98]+b[134] == 1.0)
@constraint(m, e298, b[27]+b[63]+b[99]+b[135] == 1.0)
@constraint(m, e299, b[28]+b[64]+b[100]+b[136] == 1.0)
@constraint(m, e300, b[29]+b[65]+b[101]+b[137] == 1.0)
@constraint(m, e301, b[30]+b[66]+b[102]+b[138] == 1.0)
@constraint(m, e302, b[31]+b[67]+b[103]+b[139] == 1.0)
@constraint(m, e303, b[32]+b[68]+b[104]+b[140] == 1.0)
@constraint(m, e304, b[33]+b[69]+b[105]+b[141] == 1.0)
@constraint(m, e305, b[34]+b[70]+b[106]+b[142] == 1.0)
@constraint(m, e306, b[35]+b[71]+b[107]+b[143] == 1.0)
@constraint(m, e307, b[36]+b[72]+b[108]+b[144] == 1.0)
@constraint(m, e308, b[37]+b[73]+b[109]+b[145] == 1.0)
@constraint(m, e309, b[38]+b[74]+b[110]+b[146] == 1.0)
@constraint(m, e310, b[39]+b[75]+b[111]+b[147] == 1.0)
@constraint(m, e311, b[40]+b[76]+b[112]+b[148] == 1.0)
@constraint(m, e312, b[41]+b[77]+b[113]+b[149] == 1.0)
@constraint(m, e313, b[42]+b[78]+b[114]+b[150] == 1.0)
@constraint(m, e314, b[43]+b[79]+b[115]+b[151] == 1.0)
@constraint(m, e315, b[44]+b[80]+b[116]+b[152] == 1.0)
@constraint(m, e316, b[45]+b[81]+b[117]+b[153] == 1.0)
@constraint(m, e317, b[46]+b[82]+b[118]+b[154] == 1.0)
@constraint(m, e318, b[47]+b[83]+b[119]+b[155] == 1.0)
@constraint(m, e319, b[48]+b[84]+b[120]+b[156] == 1.0)
@constraint(m, e320, b[49]+b[85]+b[121]+b[157] == 1.0)
@constraint(m, e321, b[50]+b[86]+b[122]+b[158] == 1.0)
@constraint(m, e322, b[51]+b[87]+b[123]+b[159] == 1.0)
@constraint(m, e323, b[52]+b[88]+b[124]+b[160] == 1.0)
@constraint(m, e324, b[53]+b[89]+b[125]+b[161] == 1.0)
@constraint(m, e325, b[54]+b[90]+b[126]+b[162] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[235])

m = m 		 # model get returned when including this script. 
