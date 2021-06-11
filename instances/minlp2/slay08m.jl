using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184]
@variable(m, x[x_Idx])
b_Idx = Any[17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[146], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[135], 0.0)
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
set_lower_bound(x[9], 3.0)
set_upper_bound(x[9], 37.0)
set_lower_bound(x[10], 2.5)
set_upper_bound(x[10], 37.5)
set_lower_bound(x[11], 1.5)
set_upper_bound(x[11], 38.5)
set_lower_bound(x[12], 1.5)
set_upper_bound(x[12], 38.5)
set_lower_bound(x[13], 2.0)
set_upper_bound(x[13], 38.0)
set_lower_bound(x[14], 1.0)
set_upper_bound(x[14], 39.0)
set_lower_bound(x[15], 3.0)
set_upper_bound(x[15], 37.0)
set_lower_bound(x[16], 3.0)
set_upper_bound(x[16], 37.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(150*( ((-4)+x[1])^2+ ((-10)+x[9])^2)+390*( ((-10)+x[2])^2+ ((-15)+x[10])^2)+240*( ((-7)+x[3])^2+ ((-9)+x[11])^2)+70*( ((-3)+x[4])^2+ ((-3)+x[12])^2)+165*( ((-20)+x[5])^2+ ((-17)+x[13])^2)+100*( ((-18)+x[6])^2+ ((-8)+x[14])^2)+200*( ((-30)+x[7])^2+ ((-20)+x[15])^2)+400*( ((-24)+x[8])^2+ ((-10)+x[16])^2))-300*x[129]-240*x[130]-210*x[131]-140*x[132]-300*x[133]-250*x[134]-300*x[135]-100*x[136]-150*x[137]-220*x[138]-200*x[139]-300*x[140]-290*x[141]-120*x[142]-300*x[143]-150*x[144]-150*x[145]-100*x[146]-100*x[147]-120*x[148]-180*x[149]-220*x[150]-130*x[151]-190*x[152]-110*x[153]-220*x[154]-140*x[155]-260*x[156]-300*x[157]-240*x[158]-210*x[159]-140*x[160]-300*x[161]-250*x[162]-300*x[163]-100*x[164]-150*x[165]-220*x[166]-200*x[167]-300*x[168]-290*x[169]-120*x[170]-300*x[171]-150*x[172]-150*x[173]-100*x[174]-100*x[175]-120*x[176]-180*x[177]-220*x[178]-130*x[179]-190*x[180]-110*x[181]-220*x[182]-140*x[183]-260*x[184]+objvar == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[129] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[130] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[131] >= 0.0)
@constraint(m, e5, -x[1]+x[5]+x[132] >= 0.0)
@constraint(m, e6, -x[1]+x[6]+x[133] >= 0.0)
@constraint(m, e7, -x[1]+x[7]+x[134] >= 0.0)
@constraint(m, e8, -x[1]+x[8]+x[135] >= 0.0)
@constraint(m, e9, -x[2]+x[3]+x[136] >= 0.0)
@constraint(m, e10, -x[2]+x[4]+x[137] >= 0.0)
@constraint(m, e11, -x[2]+x[5]+x[138] >= 0.0)
@constraint(m, e12, -x[2]+x[6]+x[139] >= 0.0)
@constraint(m, e13, -x[2]+x[7]+x[140] >= 0.0)
@constraint(m, e14, -x[2]+x[8]+x[141] >= 0.0)
@constraint(m, e15, -x[3]+x[4]+x[142] >= 0.0)
@constraint(m, e16, -x[3]+x[5]+x[143] >= 0.0)
@constraint(m, e17, -x[3]+x[6]+x[144] >= 0.0)
@constraint(m, e18, -x[3]+x[7]+x[145] >= 0.0)
@constraint(m, e19, -x[3]+x[8]+x[146] >= 0.0)
@constraint(m, e20, -x[4]+x[5]+x[147] >= 0.0)
@constraint(m, e21, -x[4]+x[6]+x[148] >= 0.0)
@constraint(m, e22, -x[4]+x[7]+x[149] >= 0.0)
@constraint(m, e23, -x[4]+x[8]+x[150] >= 0.0)
@constraint(m, e24, -x[5]+x[6]+x[151] >= 0.0)
@constraint(m, e25, -x[5]+x[7]+x[152] >= 0.0)
@constraint(m, e26, -x[5]+x[8]+x[153] >= 0.0)
@constraint(m, e27, -x[6]+x[7]+x[154] >= 0.0)
@constraint(m, e28, -x[6]+x[8]+x[155] >= 0.0)
@constraint(m, e29, -x[7]+x[8]+x[156] >= 0.0)
@constraint(m, e30, x[1]-x[2]+x[129] >= 0.0)
@constraint(m, e31, x[1]-x[3]+x[130] >= 0.0)
@constraint(m, e32, x[1]-x[4]+x[131] >= 0.0)
@constraint(m, e33, x[1]-x[5]+x[132] >= 0.0)
@constraint(m, e34, x[1]-x[6]+x[133] >= 0.0)
@constraint(m, e35, x[1]-x[7]+x[134] >= 0.0)
@constraint(m, e36, x[1]-x[8]+x[135] >= 0.0)
@constraint(m, e37, x[2]-x[3]+x[136] >= 0.0)
@constraint(m, e38, x[2]-x[4]+x[137] >= 0.0)
@constraint(m, e39, x[2]-x[5]+x[138] >= 0.0)
@constraint(m, e40, x[2]-x[6]+x[139] >= 0.0)
@constraint(m, e41, x[2]-x[7]+x[140] >= 0.0)
@constraint(m, e42, x[2]-x[8]+x[141] >= 0.0)
@constraint(m, e43, x[3]-x[4]+x[142] >= 0.0)
@constraint(m, e44, x[3]-x[5]+x[143] >= 0.0)
@constraint(m, e45, x[3]-x[6]+x[144] >= 0.0)
@constraint(m, e46, x[3]-x[7]+x[145] >= 0.0)
@constraint(m, e47, x[3]-x[8]+x[146] >= 0.0)
@constraint(m, e48, x[4]-x[5]+x[147] >= 0.0)
@constraint(m, e49, x[4]-x[6]+x[148] >= 0.0)
@constraint(m, e50, x[4]-x[7]+x[149] >= 0.0)
@constraint(m, e51, x[4]-x[8]+x[150] >= 0.0)
@constraint(m, e52, x[5]-x[6]+x[151] >= 0.0)
@constraint(m, e53, x[5]-x[7]+x[152] >= 0.0)
@constraint(m, e54, x[5]-x[8]+x[153] >= 0.0)
@constraint(m, e55, x[6]-x[7]+x[154] >= 0.0)
@constraint(m, e56, x[6]-x[8]+x[155] >= 0.0)
@constraint(m, e57, x[7]-x[8]+x[156] >= 0.0)
@constraint(m, e58, -x[9]+x[10]+x[157] >= 0.0)
@constraint(m, e59, -x[9]+x[11]+x[158] >= 0.0)
@constraint(m, e60, -x[9]+x[12]+x[159] >= 0.0)
@constraint(m, e61, -x[9]+x[13]+x[160] >= 0.0)
@constraint(m, e62, -x[9]+x[14]+x[161] >= 0.0)
@constraint(m, e63, -x[9]+x[15]+x[162] >= 0.0)
@constraint(m, e64, -x[9]+x[16]+x[163] >= 0.0)
@constraint(m, e65, -x[10]+x[11]+x[164] >= 0.0)
@constraint(m, e66, -x[10]+x[12]+x[165] >= 0.0)
@constraint(m, e67, -x[10]+x[13]+x[166] >= 0.0)
@constraint(m, e68, -x[10]+x[14]+x[167] >= 0.0)
@constraint(m, e69, -x[10]+x[15]+x[168] >= 0.0)
@constraint(m, e70, -x[10]+x[16]+x[169] >= 0.0)
@constraint(m, e71, -x[11]+x[12]+x[170] >= 0.0)
@constraint(m, e72, -x[11]+x[13]+x[171] >= 0.0)
@constraint(m, e73, -x[11]+x[14]+x[172] >= 0.0)
@constraint(m, e74, -x[11]+x[15]+x[173] >= 0.0)
@constraint(m, e75, -x[11]+x[16]+x[174] >= 0.0)
@constraint(m, e76, -x[12]+x[13]+x[175] >= 0.0)
@constraint(m, e77, -x[12]+x[14]+x[176] >= 0.0)
@constraint(m, e78, -x[12]+x[15]+x[177] >= 0.0)
@constraint(m, e79, -x[12]+x[16]+x[178] >= 0.0)
@constraint(m, e80, -x[13]+x[14]+x[179] >= 0.0)
@constraint(m, e81, -x[13]+x[15]+x[180] >= 0.0)
@constraint(m, e82, -x[13]+x[16]+x[181] >= 0.0)
@constraint(m, e83, -x[14]+x[15]+x[182] >= 0.0)
@constraint(m, e84, -x[14]+x[16]+x[183] >= 0.0)
@constraint(m, e85, -x[15]+x[16]+x[184] >= 0.0)
@constraint(m, e86, x[9]-x[10]+x[157] >= 0.0)
@constraint(m, e87, x[9]-x[11]+x[158] >= 0.0)
@constraint(m, e88, x[9]-x[12]+x[159] >= 0.0)
@constraint(m, e89, x[9]-x[13]+x[160] >= 0.0)
@constraint(m, e90, x[9]-x[14]+x[161] >= 0.0)
@constraint(m, e91, x[9]-x[15]+x[162] >= 0.0)
@constraint(m, e92, x[9]-x[16]+x[163] >= 0.0)
@constraint(m, e93, x[10]-x[11]+x[164] >= 0.0)
@constraint(m, e94, x[10]-x[12]+x[165] >= 0.0)
@constraint(m, e95, x[10]-x[13]+x[166] >= 0.0)
@constraint(m, e96, x[10]-x[14]+x[167] >= 0.0)
@constraint(m, e97, x[10]-x[15]+x[168] >= 0.0)
@constraint(m, e98, x[10]-x[16]+x[169] >= 0.0)
@constraint(m, e99, x[11]-x[12]+x[170] >= 0.0)
@constraint(m, e100, x[11]-x[13]+x[171] >= 0.0)
@constraint(m, e101, x[11]-x[14]+x[172] >= 0.0)
@constraint(m, e102, x[11]-x[15]+x[173] >= 0.0)
@constraint(m, e103, x[11]-x[16]+x[174] >= 0.0)
@constraint(m, e104, x[12]-x[13]+x[175] >= 0.0)
@constraint(m, e105, x[12]-x[14]+x[176] >= 0.0)
@constraint(m, e106, x[12]-x[15]+x[177] >= 0.0)
@constraint(m, e107, x[12]-x[16]+x[178] >= 0.0)
@constraint(m, e108, x[13]-x[14]+x[179] >= 0.0)
@constraint(m, e109, x[13]-x[15]+x[180] >= 0.0)
@constraint(m, e110, x[13]-x[16]+x[181] >= 0.0)
@constraint(m, e111, x[14]-x[15]+x[182] >= 0.0)
@constraint(m, e112, x[14]-x[16]+x[183] >= 0.0)
@constraint(m, e113, x[15]-x[16]+x[184] >= 0.0)
@constraint(m, e114, x[1]-x[2]+40*b[17] <= 34.0)
@constraint(m, e115, x[1]-x[3]+40*b[18] <= 36.0)
@constraint(m, e116, x[1]-x[4]+40*b[19] <= 36.5)
@constraint(m, e117, x[1]-x[5]+40*b[20] <= 35.5)
@constraint(m, e118, x[1]-x[6]+40*b[21] <= 35.0)
@constraint(m, e119, x[1]-x[7]+40*b[22] <= 33.5)
@constraint(m, e120, x[1]-x[8]+40*b[23] <= 35.5)
@constraint(m, e121, x[2]-x[3]+40*b[24] <= 35.0)
@constraint(m, e122, x[2]-x[4]+40*b[25] <= 35.5)
@constraint(m, e123, x[2]-x[5]+40*b[26] <= 34.5)
@constraint(m, e124, x[2]-x[6]+40*b[27] <= 34.0)
@constraint(m, e125, x[2]-x[7]+40*b[28] <= 32.5)
@constraint(m, e126, x[2]-x[8]+40*b[29] <= 34.5)
@constraint(m, e127, x[3]-x[4]+40*b[30] <= 37.5)
@constraint(m, e128, x[3]-x[5]+40*b[31] <= 36.5)
@constraint(m, e129, x[3]-x[6]+40*b[32] <= 36.0)
@constraint(m, e130, x[3]-x[7]+40*b[33] <= 34.5)
@constraint(m, e131, x[3]-x[8]+40*b[34] <= 36.5)
@constraint(m, e132, x[4]-x[5]+40*b[35] <= 37.0)
@constraint(m, e133, x[4]-x[6]+40*b[36] <= 36.5)
@constraint(m, e134, x[4]-x[7]+40*b[37] <= 35.0)
@constraint(m, e135, x[4]-x[8]+40*b[38] <= 37.0)
@constraint(m, e136, x[5]-x[6]+40*b[39] <= 35.5)
@constraint(m, e137, x[5]-x[7]+40*b[40] <= 34.0)
@constraint(m, e138, x[5]-x[8]+40*b[41] <= 36.0)
@constraint(m, e139, x[6]-x[7]+40*b[42] <= 33.5)
@constraint(m, e140, x[6]-x[8]+40*b[43] <= 35.5)
@constraint(m, e141, x[7]-x[8]+40*b[44] <= 34.0)
@constraint(m, e142, -x[1]+x[2]+40*b[45] <= 34.0)
@constraint(m, e143, -x[1]+x[3]+40*b[46] <= 36.0)
@constraint(m, e144, -x[1]+x[4]+40*b[47] <= 36.5)
@constraint(m, e145, -x[1]+x[5]+40*b[48] <= 35.5)
@constraint(m, e146, -x[1]+x[6]+40*b[49] <= 35.0)
@constraint(m, e147, -x[1]+x[7]+40*b[50] <= 33.5)
@constraint(m, e148, -x[1]+x[8]+40*b[51] <= 35.5)
@constraint(m, e149, -x[2]+x[3]+40*b[52] <= 35.0)
@constraint(m, e150, -x[2]+x[4]+40*b[53] <= 35.5)
@constraint(m, e151, -x[2]+x[5]+40*b[54] <= 34.5)
@constraint(m, e152, -x[2]+x[6]+40*b[55] <= 34.0)
@constraint(m, e153, -x[2]+x[7]+40*b[56] <= 32.5)
@constraint(m, e154, -x[2]+x[8]+40*b[57] <= 34.5)
@constraint(m, e155, -x[3]+x[4]+40*b[58] <= 37.5)
@constraint(m, e156, -x[3]+x[5]+40*b[59] <= 36.5)
@constraint(m, e157, -x[3]+x[6]+40*b[60] <= 36.0)
@constraint(m, e158, -x[3]+x[7]+40*b[61] <= 34.5)
@constraint(m, e159, -x[3]+x[8]+40*b[62] <= 36.5)
@constraint(m, e160, -x[4]+x[5]+40*b[63] <= 37.0)
@constraint(m, e161, -x[4]+x[6]+40*b[64] <= 36.5)
@constraint(m, e162, -x[4]+x[7]+40*b[65] <= 35.0)
@constraint(m, e163, -x[4]+x[8]+40*b[66] <= 37.0)
@constraint(m, e164, -x[5]+x[6]+40*b[67] <= 35.5)
@constraint(m, e165, -x[5]+x[7]+40*b[68] <= 34.0)
@constraint(m, e166, -x[5]+x[8]+40*b[69] <= 36.0)
@constraint(m, e167, -x[6]+x[7]+40*b[70] <= 33.5)
@constraint(m, e168, -x[6]+x[8]+40*b[71] <= 35.5)
@constraint(m, e169, -x[7]+x[8]+40*b[72] <= 34.0)
@constraint(m, e170, x[9]-x[10]+40*b[73] <= 34.5)
@constraint(m, e171, x[9]-x[11]+40*b[74] <= 35.5)
@constraint(m, e172, x[9]-x[12]+40*b[75] <= 35.5)
@constraint(m, e173, x[9]-x[13]+40*b[76] <= 35.0)
@constraint(m, e174, x[9]-x[14]+40*b[77] <= 36.0)
@constraint(m, e175, x[9]-x[15]+40*b[78] <= 34.0)
@constraint(m, e176, x[9]-x[16]+40*b[79] <= 34.0)
@constraint(m, e177, x[10]-x[11]+40*b[80] <= 36.0)
@constraint(m, e178, x[10]-x[12]+40*b[81] <= 36.0)
@constraint(m, e179, x[10]-x[13]+40*b[82] <= 35.5)
@constraint(m, e180, x[10]-x[14]+40*b[83] <= 36.5)
@constraint(m, e181, x[10]-x[15]+40*b[84] <= 34.5)
@constraint(m, e182, x[10]-x[16]+40*b[85] <= 34.5)
@constraint(m, e183, x[11]-x[12]+40*b[86] <= 37.0)
@constraint(m, e184, x[11]-x[13]+40*b[87] <= 36.5)
@constraint(m, e185, x[11]-x[14]+40*b[88] <= 37.5)
@constraint(m, e186, x[11]-x[15]+40*b[89] <= 35.5)
@constraint(m, e187, x[11]-x[16]+40*b[90] <= 35.5)
@constraint(m, e188, x[12]-x[13]+40*b[91] <= 36.5)
@constraint(m, e189, x[12]-x[14]+40*b[92] <= 37.5)
@constraint(m, e190, x[12]-x[15]+40*b[93] <= 35.5)
@constraint(m, e191, x[12]-x[16]+40*b[94] <= 35.5)
@constraint(m, e192, x[13]-x[14]+40*b[95] <= 37.0)
@constraint(m, e193, x[13]-x[15]+40*b[96] <= 35.0)
@constraint(m, e194, x[13]-x[16]+40*b[97] <= 35.0)
@constraint(m, e195, x[14]-x[15]+40*b[98] <= 36.0)
@constraint(m, e196, x[14]-x[16]+40*b[99] <= 36.0)
@constraint(m, e197, x[15]-x[16]+40*b[100] <= 34.0)
@constraint(m, e198, -x[9]+x[10]+40*b[101] <= 34.5)
@constraint(m, e199, -x[9]+x[11]+40*b[102] <= 35.5)
@constraint(m, e200, -x[9]+x[12]+40*b[103] <= 35.5)
@constraint(m, e201, -x[9]+x[13]+40*b[104] <= 35.0)
@constraint(m, e202, -x[9]+x[14]+40*b[105] <= 36.0)
@constraint(m, e203, -x[9]+x[15]+40*b[106] <= 34.0)
@constraint(m, e204, -x[9]+x[16]+40*b[107] <= 34.0)
@constraint(m, e205, -x[10]+x[11]+40*b[108] <= 36.0)
@constraint(m, e206, -x[10]+x[12]+40*b[109] <= 36.0)
@constraint(m, e207, -x[10]+x[13]+40*b[110] <= 35.5)
@constraint(m, e208, -x[10]+x[14]+40*b[111] <= 36.5)
@constraint(m, e209, -x[10]+x[15]+40*b[112] <= 34.5)
@constraint(m, e210, -x[10]+x[16]+40*b[113] <= 34.5)
@constraint(m, e211, -x[11]+x[12]+40*b[114] <= 37.0)
@constraint(m, e212, -x[11]+x[13]+40*b[115] <= 36.5)
@constraint(m, e213, -x[11]+x[14]+40*b[116] <= 37.5)
@constraint(m, e214, -x[11]+x[15]+40*b[117] <= 35.5)
@constraint(m, e215, -x[11]+x[16]+40*b[118] <= 35.5)
@constraint(m, e216, -x[12]+x[13]+40*b[119] <= 36.5)
@constraint(m, e217, -x[12]+x[14]+40*b[120] <= 37.5)
@constraint(m, e218, -x[12]+x[15]+40*b[121] <= 35.5)
@constraint(m, e219, -x[12]+x[16]+40*b[122] <= 35.5)
@constraint(m, e220, -x[13]+x[14]+40*b[123] <= 37.0)
@constraint(m, e221, -x[13]+x[15]+40*b[124] <= 35.0)
@constraint(m, e222, -x[13]+x[16]+40*b[125] <= 35.0)
@constraint(m, e223, -x[14]+x[15]+40*b[126] <= 36.0)
@constraint(m, e224, -x[14]+x[16]+40*b[127] <= 36.0)
@constraint(m, e225, -x[15]+x[16]+40*b[128] <= 34.0)
@constraint(m, e226, b[17]+b[45]+b[73]+b[101] == 1.0)
@constraint(m, e227, b[18]+b[46]+b[74]+b[102] == 1.0)
@constraint(m, e228, b[19]+b[47]+b[75]+b[103] == 1.0)
@constraint(m, e229, b[20]+b[48]+b[76]+b[104] == 1.0)
@constraint(m, e230, b[21]+b[49]+b[77]+b[105] == 1.0)
@constraint(m, e231, b[22]+b[50]+b[78]+b[106] == 1.0)
@constraint(m, e232, b[23]+b[51]+b[79]+b[107] == 1.0)
@constraint(m, e233, b[24]+b[52]+b[80]+b[108] == 1.0)
@constraint(m, e234, b[25]+b[53]+b[81]+b[109] == 1.0)
@constraint(m, e235, b[26]+b[54]+b[82]+b[110] == 1.0)
@constraint(m, e236, b[27]+b[55]+b[83]+b[111] == 1.0)
@constraint(m, e237, b[28]+b[56]+b[84]+b[112] == 1.0)
@constraint(m, e238, b[29]+b[57]+b[85]+b[113] == 1.0)
@constraint(m, e239, b[30]+b[58]+b[86]+b[114] == 1.0)
@constraint(m, e240, b[31]+b[59]+b[87]+b[115] == 1.0)
@constraint(m, e241, b[32]+b[60]+b[88]+b[116] == 1.0)
@constraint(m, e242, b[33]+b[61]+b[89]+b[117] == 1.0)
@constraint(m, e243, b[34]+b[62]+b[90]+b[118] == 1.0)
@constraint(m, e244, b[35]+b[63]+b[91]+b[119] == 1.0)
@constraint(m, e245, b[36]+b[64]+b[92]+b[120] == 1.0)
@constraint(m, e246, b[37]+b[65]+b[93]+b[121] == 1.0)
@constraint(m, e247, b[38]+b[66]+b[94]+b[122] == 1.0)
@constraint(m, e248, b[39]+b[67]+b[95]+b[123] == 1.0)
@constraint(m, e249, b[40]+b[68]+b[96]+b[124] == 1.0)
@constraint(m, e250, b[41]+b[69]+b[97]+b[125] == 1.0)
@constraint(m, e251, b[42]+b[70]+b[98]+b[126] == 1.0)
@constraint(m, e252, b[43]+b[71]+b[99]+b[127] == 1.0)
@constraint(m, e253, b[44]+b[72]+b[100]+b[128] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
