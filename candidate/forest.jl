function forest(;options=Dict())

	haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
	haskey(options, :verbose) ? solver_options=options[:verbose] : verbose=false

	m = Model(solver=fetch_solver(options))

	# ----- Variables ----- #
	@variable(m, objvar)
	b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73]
	@variable(m, b[b_Idx])
	x_Idx = Any[74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236]
	@variable(m, x[x_Idx])
	setCategory(b[35], :Bin)
	setlowerbound(x[146], 0.0)
	setlowerbound(x[114], 0.0)
	setlowerbound(x[132], 0.0)
	setlowerbound(x[154], 0.0)
	setlowerbound(x[164], 0.0)
	setlowerbound(x[143], 0.0)
	setCategory(b[15], :Bin)
	setlowerbound(x[91], 0.0)
	setCategory(b[45], :Bin)
	setlowerbound(x[74], 0.0)
	setCategory(b[64], :Bin)
	setlowerbound(x[165], 0.0)
	setlowerbound(x[186], 0.0)
	setCategory(b[21], :Bin)
	setCategory(b[36], :Bin)
	setlowerbound(x[202], 0.0)
	setlowerbound(x[220], 0.0)
	setlowerbound(x[88], 0.0)
	setlowerbound(x[141], 0.0)
	setlowerbound(x[94], 0.0)
	setlowerbound(x[144], 0.0)
	setlowerbound(x[145], 0.0)
	setCategory(b[16], :Bin)
	setlowerbound(x[172], 0.0)
	setlowerbound(x[226], 0.0)
	setlowerbound(x[120], 0.0)
	setlowerbound(x[160], 0.0)
	setlowerbound(x[188], 0.0)
	setCategory(b[60], :Bin)
	setlowerbound(x[80], 0.0)
	setCategory(b[12], :Bin)
	setlowerbound(x[103], 0.0)
	setlowerbound(x[75], 0.0)
	setCategory(b[11], :Bin)
	setlowerbound(x[162], 0.0)
	setCategory(b[19], :Bin)
	setlowerbound(x[116], 0.0)
	setCategory(b[3], :Bin)
	setlowerbound(x[95], 0.0)
	setlowerbound(x[200], 0.0)
	setlowerbound(x[206], 0.0)
	setCategory(b[39], :Bin)
	setlowerbound(x[215], 0.0)
	setCategory(b[4], :Bin)
	setlowerbound(x[174], 0.0)
	setlowerbound(x[99], 0.0)
	setCategory(b[37], :Bin)
	setlowerbound(x[169], 0.0)
	setCategory(b[50], :Bin)
	setlowerbound(x[197], 0.0)
	setlowerbound(x[198], 0.0)
	setlowerbound(x[148], 0.0)
	setlowerbound(x[150], 0.0)
	setlowerbound(x[84], 0.0)
	setlowerbound(x[218], 0.0)
	setlowerbound(x[225], 0.0)
	setCategory(b[62], :Bin)
	setCategory(b[24], :Bin)
	setCategory(b[10], :Bin)
	setlowerbound(x[101], 0.0)
	setlowerbound(x[136], 0.0)
	setlowerbound(x[190], 0.0)
	setlowerbound(x[196], 0.0)
	setlowerbound(x[151], 0.0)
	setlowerbound(x[171], 0.0)
	setlowerbound(x[147], 0.0)
	setCategory(b[70], :Bin)
	setlowerbound(x[138], 0.0)
	setlowerbound(x[77], 0.0)
	setCategory(b[41], :Bin)
	setCategory(b[48], :Bin)
	setCategory(b[23], :Bin)
	setlowerbound(x[92], 0.0)
	setlowerbound(x[111], 0.0)
	setCategory(b[28], :Bin)
	setlowerbound(x[219], 0.0)
	setlowerbound(x[185], 0.0)
	setlowerbound(x[137], 0.0)
	setlowerbound(x[87], 0.0)
	setlowerbound(x[224], 0.0)
	setlowerbound(x[179], 0.0)
	setlowerbound(x[175], 0.0)
	setCategory(b[53], :Bin)
	setlowerbound(x[142], 0.0)
	setlowerbound(x[209], 0.0)
	setCategory(b[29], :Bin)
	setlowerbound(x[128], 0.0)
	setCategory(b[61], :Bin)
	setCategory(b[34], :Bin)
	setlowerbound(x[161], 0.0)
	setCategory(b[13], :Bin)
	setlowerbound(x[156], 0.0)
	setCategory(b[69], :Bin)
	setCategory(b[68], :Bin)
	setlowerbound(x[199], 0.0)
	setlowerbound(x[213], 0.0)
	setCategory(b[47], :Bin)
	setlowerbound(x[173], 0.0)
	setlowerbound(x[176], 0.0)
	setlowerbound(x[123], 0.0)
	setlowerbound(x[112], 0.0)
	setlowerbound(x[115], 0.0)
	setlowerbound(x[227], 0.0)
	setlowerbound(x[189], 0.0)
	setlowerbound(x[187], 0.0)
	setlowerbound(x[119], 0.0)
	setlowerbound(x[166], 0.0)
	setlowerbound(x[157], 0.0)
	setCategory(b[52], :Bin)
	setlowerbound(x[163], 0.0)
	setlowerbound(x[216], 0.0)
	setlowerbound(x[133], 0.0)
	setlowerbound(x[192], 0.0)
	setlowerbound(x[205], 0.0)
	setlowerbound(x[207], 0.0)
	setlowerbound(x[76], 0.0)
	setlowerbound(x[195], 0.0)
	setlowerbound(x[117], 0.0)
	setlowerbound(x[85], 0.0)
	setCategory(b[38], :Bin)
	setCategory(b[71], :Bin)
	setlowerbound(x[89], 0.0)
	setlowerbound(x[140], 0.0)
	setlowerbound(x[181], 0.0)
	setlowerbound(x[153], 0.0)
	setCategory(b[66], :Bin)
	setlowerbound(x[201], 0.0)
	setlowerbound(x[105], 0.0)
	setCategory(b[49], :Bin)
	setlowerbound(x[223], 0.0)
	setlowerbound(x[113], 0.0)
	setlowerbound(x[130], 0.0)
	setlowerbound(x[100], 0.0)
	setCategory(b[54], :Bin)
	setCategory(b[22], :Bin)
	setlowerbound(x[208], 0.0)
	setlowerbound(x[131], 0.0)
	setlowerbound(x[96], 0.0)
	setlowerbound(x[210], 0.0)
	setCategory(b[46], :Bin)
	setCategory(b[56], :Bin)
	setlowerbound(x[182], 0.0)
	setlowerbound(x[191], 0.0)
	setlowerbound(x[177], 0.0)
	setCategory(b[32], :Bin)
	setlowerbound(x[82], 0.0)
	setCategory(b[72], :Bin)
	setCategory(b[5], :Bin)
	setlowerbound(x[121], 0.0)
	setlowerbound(x[152], 0.0)
	setlowerbound(x[86], 0.0)
	setlowerbound(x[79], 0.0)
	setCategory(b[14], :Bin)
	setCategory(b[43], :Bin)
	setCategory(b[25], :Bin)
	setlowerbound(x[184], 0.0)
	setCategory(b[9], :Bin)
	setlowerbound(x[98], 0.0)
	setlowerbound(x[158], 0.0)
	setCategory(b[59], :Bin)
	setlowerbound(x[90], 0.0)
	setlowerbound(x[203], 0.0)
	setCategory(b[67], :Bin)
	setlowerbound(x[170], 0.0)
	setlowerbound(x[149], 0.0)
	setlowerbound(x[221], 0.0)
	setlowerbound(x[217], 0.0)
	setlowerbound(x[212], 0.0)
	setlowerbound(x[125], 0.0)
	setlowerbound(x[183], 0.0)
	setlowerbound(x[83], 0.0)
	setlowerbound(x[167], 0.0)
	setlowerbound(x[102], 0.0)
	setCategory(b[26], :Bin)
	setCategory(b[73], :Bin)
	setlowerbound(x[228], 0.0)
	setCategory(b[44], :Bin)
	setlowerbound(x[118], 0.0)
	setlowerbound(x[93], 0.0)
	setlowerbound(x[78], 0.0)
	setlowerbound(x[222], 0.0)
	setlowerbound(x[110], 0.0)
	setCategory(b[42], :Bin)
	setlowerbound(x[155], 0.0)
	setlowerbound(x[204], 0.0)
	setlowerbound(x[106], 0.0)
	setlowerbound(x[81], 0.0)
	setlowerbound(x[193], 0.0)
	setCategory(b[8], :Bin)
	setCategory(b[33], :Bin)
	setlowerbound(x[134], 0.0)
	setCategory(b[30], :Bin)
	setlowerbound(x[180], 0.0)
	setCategory(b[40], :Bin)
	setCategory(b[58], :Bin)
	setCategory(b[57], :Bin)
	setlowerbound(x[122], 0.0)
	setlowerbound(x[129], 0.0)
	setlowerbound(x[194], 0.0)
	setlowerbound(x[104], 0.0)
	setlowerbound(x[214], 0.0)
	setCategory(b[51], :Bin)
	setlowerbound(x[178], 0.0)
	setlowerbound(x[139], 0.0)
	setCategory(b[2], :Bin)
	setlowerbound(x[126], 0.0)
	setlowerbound(x[107], 0.0)
	setCategory(b[20], :Bin)
	setlowerbound(x[168], 0.0)
	setCategory(b[7], :Bin)
	setCategory(b[65], :Bin)
	setCategory(b[17], :Bin)
	setCategory(b[6], :Bin)
	setCategory(b[1], :Bin)
	setlowerbound(x[97], 0.0)
	setlowerbound(x[127], 0.0)
	setCategory(b[27], :Bin)
	setCategory(b[18], :Bin)
	setlowerbound(x[124], 0.0)
	setlowerbound(x[159], 0.0)
	setlowerbound(x[109], 0.0)
	setCategory(b[31], :Bin)
	setlowerbound(x[135], 0.0)
	setCategory(b[55], :Bin)
	setlowerbound(x[229], 0.0)
	setlowerbound(x[211], 0.0)
	setlowerbound(x[108], 0.0)
	setCategory(b[63], :Bin)


	# ----- Constraints ----- #
	@constraint(m, e1, x[75] == 7791.10108432975)
	@constraint(m, e2, x[76] == 9249.06867273578)
	@constraint(m, e3, x[77] == 10096.0784145717)
	@constraint(m, e4, x[78] == 10051.6451166393)
	@constraint(m, e5, x[79] == 9637.86002964406)
	@constraint(m, e6, x[80] == 10330.741769277)
	@constraint(m, e7, x[81] == 11612.3647065139)
	@constraint(m, e8, x[82] == 11152.7577810259)
	@constraint(m, e9, x[83] == 11005.572481625)
	@constraint(m, e10, x[84] == 11165.2546460694)
	@constraint(m, e11, x[85] == 8811.67839621397)
	@constraint(m, e12, x[86] == 7295.54964171257)
	@constraint(m, e13, x[87] == 8264.56262094388)
	@constraint(m, e14, x[88] == 11772.1524347523)
	@constraint(m, e15, x[89] == 9638.4603939449)
	@constraint(m, e16, x[90] == 9595.2613887519)
	@constraint(m, e17, x[91] == 9200.54106679229)
	@constraint(m, e18, x[92] == 10682.8598724346)
	@constraint(m, e19, x[93] == 12008.4764043375)
	@constraint(m, e20, x[94] == 11533.2873472145)
	@constraint(m, e21, x[95] == 11380.8202700627)
	@constraint(m, e22, x[96] == 8881.20724409107)
	@constraint(m, e23, x[97] == 7010.09739171175)
	@constraint(m, e24, x[98] == 10282.2488966628)
	@constraint(m, e25, x[99] == 8735.60231062138)
	@constraint(m, e26, x[100] == 10369.3707213156)
	@constraint(m, e27, x[101] == 9988.09563923272)
	@constraint(m, e28, x[102] == 9943.12953618609)
	@constraint(m, e29, x[103] == 9534.68743351253)
	@constraint(m, e30, x[104] == 10218.5469173467)
	@constraint(m, e31, x[105] == 11486.9657407871)
	@constraint(m, e32, x[106] == 11031.6839474399)
	@constraint(m, e33, x[107] == 10886.4809063518)
	@constraint(m, e34, x[108] == 9387.61080479751)
	@constraint(m, e35, x[109] == 7409.10227074579)
	@constraint(m, e36, x[110] == 1118.55473503165)
	@constraint(m, e37, x[111] == 950.53653428635)
	@constraint(m, e38, x[112] == 1127.95435465377)
	@constraint(m, e39, x[113] == 923.51262787277)
	@constraint(m, e40, x[114] == 919.4002942881)
	@constraint(m, e41, x[115] == 881.80181579964)
	@constraint(m, e42, x[116] == 945.24924824891)
	@constraint(m, e43, x[117] == 1062.15701729896)
	@constraint(m, e44, x[118] == 1020.44620522583)
	@constraint(m, e45, x[119] == 1006.93425201904)
	@constraint(m, e46, x[120] == 1021.62115767859)
	@constraint(m, e47, x[121] == 806.01738259634)
	@constraint(m, e48, x[122] == 0.0)
	@constraint(m, e49, x[123] == 0.0)
	@constraint(m, e50, x[124] == 0.0)
	@constraint(m, e51, x[125] == 628.45542857142)
	@constraint(m, e52, x[126] == 628.45542857142)
	@constraint(m, e53, x[127] == 628.45542857142)
	@constraint(m, e54, x[128] == 628.45542857142)
	@constraint(m, e55, x[129] == 628.45542857142)
	@constraint(m, e56, x[130] == 628.45542857142)
	@constraint(m, e57, x[131] == 628.45542857142)
	@constraint(m, e58, x[132] == 0.0)
	@constraint(m, e59, x[133] == 0.0)
	@constraint(m, e60, x[134] <= 6000.0)
	@constraint(m, e61, x[135] <= 6000.0)
	@constraint(m, e62, x[136] <= 6000.0)
	@constraint(m, e63, x[137] <= 6000.0)
	@constraint(m, e64, x[138] <= 6000.0)
	@constraint(m, e65, x[139] <= 6000.0)
	@constraint(m, e66, x[140] <= 6000.0)
	@constraint(m, e67, x[141] <= 6000.0)
	@constraint(m, e68, x[142] <= 6000.0)
	@constraint(m, e69, x[143] <= 6000.0)
	@constraint(m, e70, x[144] <= 6000.0)
	@constraint(m, e71, x[145] <= 6000.0)
	@constraint(m, e72, x[146] <= 20800.0)
	@constraint(m, e73, x[147] <= 20800.0)
	@constraint(m, e74, x[148] <= 20800.0)
	@constraint(m, e75, x[149] <= 0.0)
	@constraint(m, e76, x[150] <= 0.0)
	@constraint(m, e77, x[151] <= 0.0)
	@constraint(m, e78, x[152] <= 20800.0)
	@constraint(m, e79, x[153] <= 20800.0)
	@constraint(m, e80, x[154] <= 20800.0)
	@constraint(m, e81, x[155] <= 20800.0)
	@constraint(m, e82, x[156] <= 20800.0)
	@constraint(m, e83, x[157] <= 20800.0)
	@constraint(m, e84, x[158] <= 238.0)
	@constraint(m, e85, x[159] <= 202.0)
	@constraint(m, e86, x[160] <= 240.0)
	@constraint(m, e87, x[161] <= 197.0)
	@constraint(m, e88, x[162] <= 196.0)
	@constraint(m, e89, x[163] <= 188.0)
	@constraint(m, e90, x[164] <= 201.0)
	@constraint(m, e91, x[165] <= 226.0)
	@constraint(m, e92, x[166] <= 217.0)
	@constraint(m, e93, x[167] <= 214.0)
	@constraint(m, e94, x[168] <= 217.0)
	@constraint(m, e95, x[169] <= 172.0)
	@constraint(m, e96, x[170] <= 500.0)
	@constraint(m, e97, x[171] <= 500.0)
	@constraint(m, e98, x[172] <= 500.0)
	@constraint(m, e99, x[173] <= 500.0)
	@constraint(m, e100, x[174] <= 500.0)
	@constraint(m, e101, x[175] <= 500.0)
	@constraint(m, e102, x[176] <= 500.0)
	@constraint(m, e103, x[177] <= 500.0)
	@constraint(m, e104, x[178] <= 500.0)
	@constraint(m, e105, x[179] <= 500.0)
	@constraint(m, e106, x[180] <= 500.0)
	@constraint(m, e107, x[181] <= 500.0)
	@constraint(m, e108, x[182] <= 230000.0)
	@constraint(m, e109, x[183] <= 230000.0)
	@constraint(m, e110, x[184] <= 230000.0)
	@constraint(m, e111, x[185] <= 230000.0)
	@constraint(m, e112, x[186] <= 230000.0)
	@constraint(m, e113, x[187] <= 230000.0)
	@constraint(m, e114, x[188] <= 230000.0)
	@constraint(m, e115, x[189] <= 230000.0)
	@constraint(m, e116, x[190] <= 230000.0)
	@constraint(m, e117, x[191] <= 230000.0)
	@constraint(m, e118, x[192] <= 230000.0)
	@constraint(m, e119, x[193] <= 230000.0)
	@constraint(m, e120, -x[74]-x[86]-x[98]-x[110]-x[122]-x[134]-x[146]-x[158]-x[170]+x[182]+x[194] == 80000.0)
	@constraint(m, e121, -x[75]-x[87]-x[99]-x[111]-x[123]-x[135]-x[147]-x[159]-x[171]-x[182]+x[183]+x[195] == 0.0)
	@constraint(m, e122, -x[76]-x[88]-x[100]-x[112]-x[124]-x[136]-x[148]-x[160]-x[172]-x[183]+x[184]+x[196] == 0.0)
	@constraint(m, e123, -x[77]-x[89]-x[101]-x[113]-x[125]-x[137]-x[149]-x[161]-x[173]-x[184]+x[185]+x[197] == 0.0)
	@constraint(m, e124, -x[78]-x[90]-x[102]-x[114]-x[126]-x[138]-x[150]-x[162]-x[174]-x[185]+x[186]+x[198] == 0.0)
	@constraint(m, e125, -x[79]-x[91]-x[103]-x[115]-x[127]-x[139]-x[151]-x[163]-x[175]-x[186]+x[187]+x[199] == 0.0)
	@constraint(m, e126, -x[80]-x[92]-x[104]-x[116]-x[128]-x[140]-x[152]-x[164]-x[176]-x[187]+x[188]+x[200] == 0.0)
	@constraint(m, e127, -x[81]-x[93]-x[105]-x[117]-x[129]-x[141]-x[153]-x[165]-x[177]-x[188]+x[189]+x[201] == 0.0)
	@constraint(m, e128, -x[82]-x[94]-x[106]-x[118]-x[130]-x[142]-x[154]-x[166]-x[178]-x[189]+x[190]+x[202] == 0.0)
	@constraint(m, e129, -x[83]-x[95]-x[107]-x[119]-x[131]-x[143]-x[155]-x[167]-x[179]-x[190]+x[191]+x[203] == 0.0)
	@constraint(m, e130, -x[84]-x[96]-x[108]-x[120]-x[132]-x[144]-x[156]-x[168]-x[180]-x[191]+x[192]+x[204] == 0.0)
	@constraint(m, e131, -x[85]-x[97]-x[109]-x[121]-x[133]-x[145]-x[157]-x[169]-x[181]-x[192]+x[193]+x[205] == 0.0)
	@constraint(m, e132, 0.018*x[218]*x[206]-0.3*x[194]*x[218] == -49104.0)
	@constraint(m, e133, 0.018*x[219]*x[207]-0.3*x[195]*x[219] == -44352.0)
	@constraint(m, e134, 0.018*x[220]*x[208]-0.3*x[196]*x[220] == -49104.0)
	@constraint(m, e135, 0.018*x[221]*x[209]-0.3*x[197]*x[221] == -47520.0)
	@constraint(m, e136, 0.018*x[222]*x[210]-0.3*x[198]*x[222] == -28512.0)
	@constraint(m, e137, 0.018*x[223]*x[211]-0.3*x[199]*x[223] == -47520.0)
	@constraint(m, e138, 0.018*x[224]*x[212]-0.3*x[200]*x[224] == -49104.0)
	@constraint(m, e139, 0.018*x[225]*x[213]-0.3*x[201]*x[225] == -49104.0)
	@constraint(m, e140, 0.018*x[226]*x[214]-0.3*x[202]*x[226] == -45936.0)
	@constraint(m, e141, 0.018*x[227]*x[215]-0.3*x[203]*x[227]+14360*b[73] == -34744.0)
	@constraint(m, e142, 0.018*x[228]*x[216]-0.3*x[204]*x[228]+47520*b[73] == 0.0)
	@constraint(m, e143, 0.018*x[229]*x[217]-0.3*x[205]*x[229]+49104*b[73] == 0.0)
	@constraint(m, e144, 10000000000*b[49]+x[182] >= 120000.0)
	@constraint(m, e145, 10000000000*b[50]+x[183] >= 120000.0)
	@constraint(m, e146, 10000000000*b[51]+x[184] >= 120000.0)
	@constraint(m, e147, 10000000000*b[52]+x[185] >= 120000.0)
	@constraint(m, e148, 10000000000*b[53]+x[186] >= 120000.0)
	@constraint(m, e149, 10000000000*b[54]+x[187] >= 120000.0)
	@constraint(m, e150, 10000000000*b[55]+x[188] >= 120000.0)
	@constraint(m, e151, 10000000000*b[56]+x[189] >= 120000.0)
	@constraint(m, e152, 10000000000*b[57]+x[190] >= 120000.0)
	@constraint(m, e153, 10000000000*b[58]+x[191] >= 120000.0)
	@constraint(m, e154, 10000000000*b[59]+x[192] >= 120000.0)
	@constraint(m, e155, 10000000000*b[60]+x[193] >= 120000.0)
	@constraint(m, e156, b[49]+b[61] == 1.0)
	@constraint(m, e157, b[50]+b[62] == 1.0)
	@constraint(m, e158, b[51]+b[63] == 1.0)
	@constraint(m, e159, b[52]+b[64] == 1.0)
	@constraint(m, e160, b[53]+b[65] == 1.0)
	@constraint(m, e161, b[54]+b[66] == 1.0)
	@constraint(m, e162, b[55]+b[67] == 1.0)
	@constraint(m, e163, b[56]+b[68] == 1.0)
	@constraint(m, e164, b[57]+b[69] == 1.0)
	@constraint(m, e165, b[58]+b[70] == 1.0)
	@constraint(m, e166, b[59]+b[71] == 1.0)
	@constraint(m, e167, b[60]+b[72] == 1.0)
	@constraint(m, e168, 10000000000*b[49]+x[182] <= 1.000012e10)
	@constraint(m, e169, 10000000000*b[50]+x[183] <= 1.000012e10)
	@constraint(m, e170, 10000000000*b[51]+x[184] <= 1.000012e10)
	@constraint(m, e171, 10000000000*b[52]+x[185] <= 1.000012e10)
	@constraint(m, e172, 10000000000*b[53]+x[186] <= 1.000012e10)
	@constraint(m, e173, 10000000000*b[54]+x[187] <= 1.000012e10)
	@constraint(m, e174, 10000000000*b[55]+x[188] <= 1.000012e10)
	@constraint(m, e175, 10000000000*b[56]+x[189] <= 1.000012e10)
	@constraint(m, e176, 10000000000*b[57]+x[190] <= 1.000012e10)
	@constraint(m, e177, 10000000000*b[58]+x[191] <= 1.000012e10)
	@constraint(m, e178, 10000000000*b[59]+x[192] <= 1.000012e10)
	@constraint(m, e179, 10000000000*b[60]+x[193] <= 1.000012e10)
	@constraint(m, e180, 10000000000*b[25]+x[182] >= 180000.0)
	@constraint(m, e181, 10000000000*b[26]+x[183] >= 180000.0)
	@constraint(m, e182, 10000000000*b[27]+x[184] >= 180000.0)
	@constraint(m, e183, 10000000000*b[28]+x[185] >= 180000.0)
	@constraint(m, e184, 10000000000*b[29]+x[186] >= 180000.0)
	@constraint(m, e185, 10000000000*b[30]+x[187] >= 180000.0)
	@constraint(m, e186, 10000000000*b[31]+x[188] >= 180000.0)
	@constraint(m, e187, 10000000000*b[32]+x[189] >= 180000.0)
	@constraint(m, e188, 10000000000*b[33]+x[190] >= 180000.0)
	@constraint(m, e189, 10000000000*b[34]+x[191] >= 180000.0)
	@constraint(m, e190, 10000000000*b[35]+x[192] >= 180000.0)
	@constraint(m, e191, 10000000000*b[36]+x[193] >= 180000.0)
	@constraint(m, e192, b[25]+b[37] == 1.0)
	@constraint(m, e193, b[26]+b[38] == 1.0)
	@constraint(m, e194, b[27]+b[39] == 1.0)
	@constraint(m, e195, b[28]+b[40] == 1.0)
	@constraint(m, e196, b[29]+b[41] == 1.0)
	@constraint(m, e197, b[30]+b[42] == 1.0)
	@constraint(m, e198, b[31]+b[43] == 1.0)
	@constraint(m, e199, b[32]+b[44] == 1.0)
	@constraint(m, e200, b[33]+b[45] == 1.0)
	@constraint(m, e201, b[34]+b[46] == 1.0)
	@constraint(m, e202, b[35]+b[47] == 1.0)
	@constraint(m, e203, b[36]+b[48] == 1.0)
	@constraint(m, e204, 10000000000*b[25]+x[182] <= 1.000018e10)
	@constraint(m, e205, 10000000000*b[26]+x[183] <= 1.000018e10)
	@constraint(m, e206, 10000000000*b[27]+x[184] <= 1.000018e10)
	@constraint(m, e207, 10000000000*b[28]+x[185] <= 1.000018e10)
	@constraint(m, e208, 10000000000*b[29]+x[186] <= 1.000018e10)
	@constraint(m, e209, 10000000000*b[30]+x[187] <= 1.000018e10)
	@constraint(m, e210, 10000000000*b[31]+x[188] <= 1.000018e10)
	@constraint(m, e211, 10000000000*b[32]+x[189] <= 1.000018e10)
	@constraint(m, e212, 10000000000*b[33]+x[190] <= 1.000018e10)
	@constraint(m, e213, 10000000000*b[34]+x[191] <= 1.000018e10)
	@constraint(m, e214, 10000000000*b[35]+x[192] <= 1.000018e10)
	@constraint(m, e215, 10000000000*b[36]+x[193] <= 1.000018e10)
	@constraint(m, e216, 100000000*b[1]-x[182] >= -50000.0)
	@constraint(m, e217, 100000000*b[2]-x[183] >= -50000.0)
	@constraint(m, e218, 100000000*b[3]-x[184] >= -50000.0)
	@constraint(m, e219, 100000000*b[4]-x[185] >= -50000.0)
	@constraint(m, e220, 100000000*b[5]-x[186] >= -50000.0)
	@constraint(m, e221, 100000000*b[6]-x[187] >= -50000.0)
	@constraint(m, e222, 100000000*b[7]-x[188] >= -50000.0)
	@constraint(m, e223, 100000000*b[8]-x[189] >= -50000.0)
	@constraint(m, e224, 100000000*b[9]-x[190] >= -50000.0)
	@constraint(m, e225, 100000000*b[10]-x[191] >= -50000.0)
	@constraint(m, e226, 100000000*b[11]-x[192] >= -50000.0)
	@constraint(m, e227, 100000000*b[12]-x[193] >= -50000.0)
	@constraint(m, e228, b[1]+b[13] == 1.0)
	@constraint(m, e229, b[2]+b[14] == 1.0)
	@constraint(m, e230, b[3]+b[15] == 1.0)
	@constraint(m, e231, b[4]+b[16] == 1.0)
	@constraint(m, e232, b[5]+b[17] == 1.0)
	@constraint(m, e233, b[6]+b[18] == 1.0)
	@constraint(m, e234, b[7]+b[19] == 1.0)
	@constraint(m, e235, b[8]+b[20] == 1.0)
	@constraint(m, e236, b[9]+b[21] == 1.0)
	@constraint(m, e237, b[10]+b[22] == 1.0)
	@constraint(m, e238, b[11]+b[23] == 1.0)
	@constraint(m, e239, b[12]+b[24] == 1.0)
	@constraint(m, e240, 100000000*b[1]-x[182] <= 9.995e7)
	@constraint(m, e241, 100000000*b[2]-x[183] <= 9.995e7)
	@constraint(m, e242, 100000000*b[3]-x[184] <= 9.995e7)
	@constraint(m, e243, 100000000*b[4]-x[185] <= 9.995e7)
	@constraint(m, e244, 100000000*b[5]-x[186] <= 9.995e7)
	@constraint(m, e245, 100000000*b[6]-x[187] <= 9.995e7)
	@constraint(m, e246, 100000000*b[7]-x[188] <= 9.995e7)
	@constraint(m, e247, 100000000*b[8]-x[189] <= 9.995e7)
	@constraint(m, e248, 100000000*b[9]-x[190] <= 9.995e7)
	@constraint(m, e249, 100000000*b[10]-x[191] <= 9.995e7)
	@constraint(m, e250, 100000000*b[11]-x[192] <= 9.995e7)
	@constraint(m, e251, 100000000*b[12]-x[193] <= 9.995e7)
	@constraint(m, e252, x[193] == 50000.0)
	@constraint(m, e253, -100000000*b[13]+x[206] <= 0.0)
	@constraint(m, e254, -100000000*b[14]+x[207] <= 0.0)
	@constraint(m, e255, -100000000*b[15]+x[208] <= 0.0)
	@constraint(m, e256, -100000000*b[16]+x[209] <= 0.0)
	@constraint(m, e257, -100000000*b[17]+x[210] <= 0.0)
	@constraint(m, e258, -100000000*b[18]+x[211] <= 0.0)
	@constraint(m, e259, -100000000*b[19]+x[212] <= 0.0)
	@constraint(m, e260, -100000000*b[20]+x[213] <= 0.0)
	@constraint(m, e261, -100000000*b[21]+x[214] <= 0.0)
	@constraint(m, e262, -100000000*b[22]+x[215] <= 0.0)
	@constraint(m, e263, -100000000*b[23]+x[216] <= 0.0)
	@constraint(m, e264, -100000000*b[24]+x[217] <= 0.0)
	@constraint(m, e265, -x[194]+x[206] <= 0.0)
	@constraint(m, e266, -x[195]+x[207] <= 0.0)
	@constraint(m, e267, -x[196]+x[208] <= 0.0)
	@constraint(m, e268, -x[197]+x[209] <= 0.0)
	@constraint(m, e269, -x[198]+x[210] <= 0.0)
	@constraint(m, e270, -x[199]+x[211] <= 0.0)
	@constraint(m, e271, -x[200]+x[212] <= 0.0)
	@constraint(m, e272, -x[201]+x[213] <= 0.0)
	@constraint(m, e273, -x[202]+x[214] <= 0.0)
	@constraint(m, e274, -x[203]+x[215] <= 0.0)
	@constraint(m, e275, -x[204]+x[216] <= 0.0)
	@constraint(m, e276, -x[205]+x[217] <= 0.0)
	@constraint(m, e277, -100000000*b[13]-x[194]+x[206] >= -1.0e8)
	@constraint(m, e278, -100000000*b[14]-x[195]+x[207] >= -1.0e8)
	@constraint(m, e279, -100000000*b[15]-x[196]+x[208] >= -1.0e8)
	@constraint(m, e280, -100000000*b[16]-x[197]+x[209] >= -1.0e8)
	@constraint(m, e281, -100000000*b[17]-x[198]+x[210] >= -1.0e8)
	@constraint(m, e282, -100000000*b[18]-x[199]+x[211] >= -1.0e8)
	@constraint(m, e283, -100000000*b[19]-x[200]+x[212] >= -1.0e8)
	@constraint(m, e284, -100000000*b[20]-x[201]+x[213] >= -1.0e8)
	@constraint(m, e285, -100000000*b[21]-x[202]+x[214] >= -1.0e8)
	@constraint(m, e286, -100000000*b[22]-x[203]+x[215] >= -1.0e8)
	@constraint(m, e287, -100000000*b[23]-x[204]+x[216] >= -1.0e8)
	@constraint(m, e288, -100000000*b[24]-x[205]+x[217] >= -1.0e8)
	@constraint(m, e289, (x[75]+x[87]+x[99]+x[111]+x[123]+x[135]+x[147]+x[159]+x[171]+x[182])*x[219]-x[182]*x[218]-3.45306900938*x[75]-2.89465224642*x[87]-3.3907445128*x[99]-2.92984041218*x[111]-1.99104678785*x[123]-3.20721402214*x[135]-3.23089372607*x[147]-2.72277689967*x[159]-3.98576673328*x[171] == 0.0)
	@constraint(m, e290, (x[76]+x[88]+x[100]+x[112]+x[124]+x[136]+x[148]+x[160]+x[172]+x[183])*x[220]-x[183]*x[219]-3.71204918508*x[76]-3.13873771232*x[88]-3.84462369955*x[100]-2.92984041218*x[112]-3.72025957148*x[124]-3.19346390844*x[136]-3.32339415853*x[148]-4.17259954891*x[160]-3.98576673328*x[172] == 0.0)
	@constraint(m, e291, (x[77]+x[89]+x[101]+x[113]+x[125]+x[137]+x[149]+x[161]+x[173]+x[184])*x[221]-x[184]*x[220]-3.30072772955*x[77]-3.25387105584*x[89]-3.76719725005*x[101]-2.92984041218*x[113]-4.04067067003*x[125]-3.00611860918*x[137]-2.70045260066*x[149]-4.33701242665*x[161]-3.98576673328*x[173] == 0.0)
	@constraint(m, e292, (x[78]+x[90]+x[102]+x[114]+x[126]+x[138]+x[150]+x[162]+x[174]+x[185])*x[222]-x[185]*x[221]-3.30072772955*x[78]-3.30782679041*x[90]-3.47084083987*x[102]-2.92984041218*x[114]-3.19872785585*x[126]-2.99064973126*x[138]-3.22433875168*x[150]-3.29323976337*x[162]-3.98576673328*x[174] == 0.0)
	@constraint(m, e293, (x[79]+x[91]+x[103]+x[115]+x[127]+x[139]+x[151]+x[163]+x[175]+x[186])*x[223]-x[186]*x[222]-4.12337064061*x[79]-3.18484660261*x[91]-2.91550630549*x[103]-2.92984041218*x[115]-3.6817655639*x[127]-2.97861838176*x[139]-3.69558826155*x[151]-3.67853054759*x[163]-3.98576673328*x[175] == 0.0)
	@constraint(m, e294, (x[80]+x[92]+x[104]+x[116]+x[128]+x[140]+x[152]+x[164]+x[176]+x[187])*x[224]-x[187]*x[223]-3.2626424096*x[80]-3.26650933601*x[92]-3.36226581873*x[104]-2.92984041218*x[116]-4.39438760391*x[128]-3.17111997366*x[140]-3.78307381649*x[152]-3.57473453891*x[164]-3.98576673328*x[176] == 0.0)
	@constraint(m, e295, (x[81]+x[93]+x[105]+x[117]+x[129]+x[141]+x[153]+x[165]+x[177]+x[188])*x[225]-x[188]*x[224]-3.76452229258*x[81]-3.09556849526*x[93]-3.34535659412*x[105]-2.92984041218*x[117]-4.20801589981*x[129]-3.41862202039*x[141]-3.9128590882*x[153]-3.53653760772*x[165]-3.98576673328*x[177] == 0.0)
	@constraint(m, e296, (x[82]+x[94]+x[106]+x[118]+x[130]+x[142]+x[154]+x[166]+x[178]+x[189])*x[226]-x[189]*x[225]-3.41752271075*x[82]-3.15592438453*x[94]-3.56695643236*x[106]-2.92984041218*x[118]-3.98773617096*x[130]-3.44870039412*x[142]-3.74366715891*x[154]-4.09537531845*x[166]-3.98576673328*x[178] == 0.0)
	@constraint(m, e297, (x[83]+x[95]+x[107]+x[119]+x[131]+x[143]+x[155]+x[167]+x[179]+x[190])*x[227]-x[190]*x[226]-3.3794373908*x[83]-3.43664003059*x[95]-3.52423839126*x[107]-2.92984041218*x[119]-4.46282139516*x[131]-3.24158930641*x[143]-3.47930953913*x[155]-3.66989471967*x[167]-3.98576673328*x[179] == 0.0)
	@constraint(m, e298, (x[84]+x[96]+x[108]+x[120]+x[132]+x[144]+x[156]+x[168]+x[180]+x[191])*x[228]-x[191]*x[227]-3.30072772955*x[84]-3.17901355022*x[96]-3.47084083987*x[108]-2.92984041218*x[120]-3.97357497622*x[132]-3.09635373038*x[144]-3.55421340859*x[156]-3.93594464912*x[168]-3.98576673328*x[180] == 0.0)
	@constraint(m, e299, (x[85]+x[97]+x[109]+x[121]+x[133]+x[145]+x[157]+x[169]+x[181]+x[192])*x[229]-x[192]*x[228]-3.30072772955*x[85]-3.15957004227*x[97]-3.43025870082*x[109]-2.92984041218*x[121]-3.7252265402*x[133]-3.85175060216*x[145]-3.19457562475*x[157]-3.68683422829*x[169]-3.98576673328*x[181] == 0.0)
	@constraint(m, e300, (80000+x[74]+x[86]+x[98]+x[110]+x[122]+x[134]+x[146]+x[158]+x[170])*x[218]-3.63080050251*x[74]-2.86305654599*x[86]-3.41744328849*x[98]-2.92984041218*x[110]-3.48432855727*x[122]-3.23041733902*x[134]-3.6417311747*x[146]-4.28469923828*x[158]-3.98576673328*x[170] == 260000.0)
	@constraint(m, e301, b[73] == 1.0)
	@constraint(m, e302, x[236] == 2.15469e7)
	@constraint(m, e303, -4716820*b[73]+x[235] == 0.0)
	@constraint(m, e304, -15.6863186*x[74]-15.6863186*x[75]-15.6863186*x[76]-15.6863186*x[77]-15.6863186*x[78]-15.6863186*x[79]-15.6863186*x[80]-15.6863186*x[81]-15.6863186*x[82]-15.6863186*x[83]-15.6863186*x[84]-15.6863186*x[85]-2.1*x[86]-2.1*x[87]-2.1*x[88]-2.1*x[89]-2.1*x[90]-2.1*x[91]-2.1*x[92]-2.1*x[93]-2.1*x[94]-2.1*x[95]-2.1*x[96]-2.1*x[97]-14.2418893*x[98]-14.2418893*x[99]-14.2418893*x[100]-14.2418893*x[101]-14.2418893*x[102]-14.2418893*x[103]-14.2418893*x[104]-14.2418893*x[105]-14.2418893*x[106]-14.2418893*x[107]-14.2418893*x[108]-14.2418893*x[109]-2.1*x[110]-2.1*x[111]-2.1*x[112]-2.1*x[113]-2.1*x[114]-2.1*x[115]-2.1*x[116]-2.1*x[117]-2.1*x[118]-2.1*x[119]-2.1*x[120]-2.1*x[121]-24.630475*x[122]-24.630475*x[123]-24.630475*x[124]-24.630475*x[125]-24.630475*x[126]-24.630475*x[127]-24.630475*x[128]-24.630475*x[129]-24.630475*x[130]-24.630475*x[131]-24.630475*x[132]-24.630475*x[133]-23.7441195*x[134]-23.707386*x[135]-23.685618*x[136]-23.389029*x[137]-23.36454*x[138]-23.345493*x[139]-23.650245*x[140]-24.042069*x[141]-24.0896865*x[142]-23.761806*x[143]-23.5318815*x[144]-24.727761*x[145]-60.18757142857*x[146]-54.63853571428*x[147]-55.88790625*x[148]-47.47405555555*x[149]-54.55*x[150]-60.915*x[151]-62.09663636363*x[152]-63.8496*x[153]-61.56438461538*x[154]-57.9938*x[155]-59.0055*x[156]-54.148*x[157]-15*x[158]-15*x[159]-15*x[160]-15*x[161]-15*x[162]-15*x[163]-15*x[164]-15*x[165]-15*x[166]-15*x[167]-15*x[168]-15*x[169]-42*x[170]-42*x[171]-42*x[172]-42*x[173]-42*x[174]-42*x[175]-42*x[176]-42*x[177]-42*x[178]-42*x[179]-42*x[180]-42*x[181]+x[234] == 0.0)
	@constraint(m, e305, -2.1*x[74]-2.1*x[75]-2.1*x[76]-2.1*x[77]-2.1*x[78]-2.1*x[79]-2.1*x[80]-2.1*x[81]-2.1*x[82]-2.1*x[83]-2.1*x[84]-2.1*x[85]-2.1*x[86]-2.1*x[87]-2.1*x[88]-2.1*x[89]-2.1*x[90]-2.1*x[91]-2.1*x[92]-2.1*x[93]-2.1*x[94]-2.1*x[95]-2.1*x[96]-2.1*x[97]-2.1*x[98]-2.1*x[99]-2.1*x[100]-2.1*x[101]-2.1*x[102]-2.1*x[103]-2.1*x[104]-2.1*x[105]-2.1*x[106]-2.1*x[107]-2.1*x[108]-2.1*x[109]-2.1*x[110]-2.1*x[111]-2.1*x[112]-2.1*x[113]-2.1*x[114]-2.1*x[115]-2.1*x[116]-2.1*x[117]-2.1*x[118]-2.1*x[119]-2.1*x[120]-2.1*x[121]-18.63*x[122]-18.63*x[123]-18.63*x[124]-18.63*x[125]-18.63*x[126]-18.63*x[127]-18.63*x[128]-18.63*x[129]-18.63*x[130]-18.63*x[131]-18.63*x[132]-18.63*x[133]-18.63*x[134]-18.63*x[135]-18.63*x[136]-18.63*x[137]-18.63*x[138]-18.63*x[139]-18.63*x[140]-18.63*x[141]-18.63*x[142]-18.63*x[143]-18.63*x[144]-18.63*x[145]-11*x[146]-11*x[147]-11*x[148]-11*x[149]-11*x[150]-11*x[151]-11*x[152]-11*x[153]-11*x[154]-11*x[155]-11*x[156]-11*x[157]-15*x[158]-15*x[159]-15*x[160]-15*x[161]-15*x[162]-15*x[163]-15*x[164]-15*x[165]-15*x[166]-15*x[167]-15*x[168]-15*x[169]-30*x[170]-30*x[171]-30*x[172]-30*x[173]-30*x[174]-30*x[175]-30*x[176]-30*x[177]-30*x[178]-30*x[179]-30*x[180]-30*x[181]+x[233] == 0.0)
	@constraint(m, e306, -0.580146*x[194]-0.580146*x[195]-0.580146*x[196]-0.580146*x[197]-0.580146*x[198]-0.580146*x[199]-0.580146*x[200]-0.580146*x[201]-0.580146*x[202]-0.580146*x[203]-0.580146*x[204]-0.580146*x[205]+x[232] == 0.0)
	@constraint(m, e307, -329622.48*b[73]+x[231] == 1.32165e6)
	@constraint(m, e308, x[74] == 9171.31040135413)
	@constraint(m, e309, -150000*b[37]-150000*b[38]-150000*b[39]-150000*b[40]-150000*b[41]-150000*b[42]-150000*b[43]-150000*b[44]-150000*b[45]-150000*b[46]-150000*b[47]-150000*b[48]-150000*b[61]-150000*b[62]-150000*b[63]-150000*b[64]-150000*b[65]-150000*b[66]-150000*b[67]-150000*b[68]-150000*b[69]-150000*b[70]-150000*b[71]-150000*b[72]+x[230] == 0.0)
	@constraint(m, e310, x[230]+x[231]+x[232]+x[234]-x[235]-x[236]+objvar == 0.0)


	# ----- Objective ----- #
	@objective(m, Max, objvar)
	verbose && print(m)
	return m
end


# ----- END ----- #