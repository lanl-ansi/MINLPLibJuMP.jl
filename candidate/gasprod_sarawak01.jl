function gasprod_sarawak01(;options=Dict())

	haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
	haskey(options, :verbose) ? solver_options=options[:verbose] : verbose=false

	m = Model(solver=fetch_solver(options))

	# ----- Variables ----- #
	b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38]
	@variable(m, b[b_Idx])
	x_Idx = Any[39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132]
	@variable(m, x[x_Idx])
	setlowerbound(x[117], 0.0)
	setlowerbound(x[85], 0.0)
	setlowerbound(x[101], 0.0)
	setCategory(b[35], :Bin)
	setCategory(b[38], :Bin)
	setlowerbound(x[89], 0.0)
	setlowerbound(x[118], 0.0)
	setlowerbound(x[93], 0.0)
	setlowerbound(x[62], 0.0)
	setlowerbound(x[114], 0.0)
	setlowerbound(x[42], 0.0)
	setlowerbound(x[78], 0.0)
	setCategory(b[15], :Bin)
	setlowerbound(x[91], 0.0)
	setlowerbound(x[56], 0.0)
	setlowerbound(x[105], 0.0)
	setlowerbound(x[59], 0.0)
	setlowerbound(x[110], 0.0)
	setlowerbound(x[77], 0.0)
	setlowerbound(x[113], 0.0)
	setlowerbound(x[74], 0.0)
	setlowerbound(x[130], 0.0)
	setCategory(b[23], :Bin)
	setlowerbound(x[92], 0.0)
	setlowerbound(x[100], 0.0)
	setlowerbound(x[69], 0.0)
	setlowerbound(x[106], 0.0)
	setlowerbound(x[81], 0.0)
	setlowerbound(x[111], 0.0)
	setlowerbound(x[43], 0.0)
	setlowerbound(x[71], 0.0)
	setCategory(b[21], :Bin)
	setCategory(b[22], :Bin)
	setCategory(b[28], :Bin)
	setCategory(b[36], :Bin)
	setlowerbound(x[131], 0.0)
	setlowerbound(x[54], 0.0)
	setlowerbound(x[96], 0.0)
	setlowerbound(x[87], 0.0)
	setlowerbound(x[58], 0.0)
	setCategory(b[8], :Bin)
	setCategory(b[33], :Bin)
	setlowerbound(x[88], 0.0)
	setCategory(b[30], :Bin)
	setlowerbound(x[94], 0.0)
	setlowerbound(x[53], 0.0)
	setCategory(b[29], :Bin)
	setlowerbound(x[128], 0.0)
	setlowerbound(x[63], 0.0)
	setlowerbound(x[57], 0.0)
	setlowerbound(x[55], 0.0)
	setCategory(b[32], :Bin)
	setlowerbound(x[82], 0.0)
	setlowerbound(x[122], 0.0)
	setlowerbound(x[129], 0.0)
	setCategory(b[34], :Bin)
	setlowerbound(x[41], 0.0)
	setCategory(b[5], :Bin)
	setCategory(b[16], :Bin)
	setlowerbound(x[104], 0.0)
	setlowerbound(x[52], 0.0)
	setlowerbound(x[49], 0.0)
	setlowerbound(x[120], 0.0)
	setlowerbound(x[121], 0.0)
	setCategory(b[13], :Bin)
	setlowerbound(x[72], 0.0)
	setlowerbound(x[80], 0.0)
	setlowerbound(x[67], 0.0)
	setlowerbound(x[86], 0.0)
	setCategory(b[12], :Bin)
	setCategory(b[2], :Bin)
	setlowerbound(x[126], 0.0)
	setlowerbound(x[79], 0.0)
	setlowerbound(x[103], 0.0)
	setlowerbound(x[107], 0.0)
	setCategory(b[14], :Bin)
	setlowerbound(x[45], 0.0)
	setCategory(b[20], :Bin)
	setlowerbound(x[66], 0.0)
	setlowerbound(x[75], 0.0)
	setCategory(b[11], :Bin)
	setCategory(b[19], :Bin)
	setCategory(b[25], :Bin)
	setCategory(b[7], :Bin)
	setCategory(b[9], :Bin)
	setlowerbound(x[40], 0.0)
	setlowerbound(x[116], 0.0)
	setCategory(b[3], :Bin)
	setlowerbound(x[44], 0.0)
	setlowerbound(x[95], 0.0)
	setlowerbound(x[98], 0.0)
	setlowerbound(x[61], 0.0)
	setlowerbound(x[50], 0.0)
	setlowerbound(x[47], 0.0)
	setlowerbound(x[90], 0.0)
	setCategory(b[17], :Bin)
	setlowerbound(x[68], 0.0)
	setCategory(b[4], :Bin)
	setCategory(b[6], :Bin)
	setlowerbound(x[99], 0.0)
	setlowerbound(x[64], 0.0)
	setCategory(b[1], :Bin)
	setlowerbound(x[97], 0.0)
	setlowerbound(x[112], 0.0)
	setlowerbound(x[115], 0.0)
	setlowerbound(x[123], 0.0)
	setlowerbound(x[127], 0.0)
	setCategory(b[37], :Bin)
	setCategory(b[27], :Bin)
	setCategory(b[18], :Bin)
	setlowerbound(x[60], 0.0)
	setlowerbound(x[124], 0.0)
	setlowerbound(x[119], 0.0)
	setlowerbound(x[84], 0.0)
	setlowerbound(x[51], 0.0)
	setlowerbound(x[46], 0.0)
	setlowerbound(x[109], 0.0)
	setCategory(b[31], :Bin)
	setlowerbound(x[48], 0.0)
	setlowerbound(x[73], 0.0)
	setlowerbound(x[125], 0.0)
	setCategory(b[24], :Bin)
	setlowerbound(x[39], 0.0)
	setlowerbound(x[108], 0.0)
	setCategory(b[10], :Bin)
	setlowerbound(x[70], 0.0)
	setlowerbound(x[83], 0.0)
	setlowerbound(x[102], 0.0)
	setCategory(b[26], :Bin)
	setlowerbound(x[65], 0.0)
	setlowerbound(x[76], 0.0)
	setupperbound(x[39], 130.0)
	setupperbound(x[40], 125.0)
	setupperbound(x[41], 212.0)
	setupperbound(x[42], 334.0)
	setupperbound(x[43], 833.0)
	setupperbound(x[44], 381.0)
	setupperbound(x[45], 950.0)
	setupperbound(x[46], 155.0)
	setupperbound(x[47], 401.0)
	setupperbound(x[48], 600.0)
	setupperbound(x[49], 600.0)
	setupperbound(x[50], 532.0)
	setupperbound(x[51], 816.0)
	setupperbound(x[52], 161.0)
	setupperbound(x[53], 2467.0)
	setupperbound(x[54], 900.0)
	setupperbound(x[55], 900.0)
	setupperbound(x[56], 255.0)
	setupperbound(x[57], 255.0)
	setupperbound(x[58], 546.0)
	setupperbound(x[59], 546.0)
	setupperbound(x[60], 1331.0)
	setupperbound(x[61], 1331.0)
	setupperbound(x[62], 600.0)
	setupperbound(x[63], 600.0)
	setupperbound(x[64], 1509.0)
	setupperbound(x[65], 1509.0)
	setupperbound(x[66], 2200.0)
	setupperbound(x[67], 2200.0)
	setupperbound(x[68], 900.0)
	setupperbound(x[69], 900.0)
	setupperbound(x[70], 2200.0)
	setupperbound(x[71], 2200.0)
	setupperbound(x[72], 950.0)
	setupperbound(x[73], 950.0)
	setupperbound(x[74], 1400.0)
	setupperbound(x[75], 1400.0)
	setupperbound(x[76], 720.0)
	setupperbound(x[77], 720.0)
	setupperbound(x[78], 3000.0)
	setupperbound(x[79], 3000.0)
	setupperbound(x[80], 1800.0)
	setupperbound(x[81], 1800.0)
	setupperbound(x[82], 1400.0)
	setupperbound(x[83], 1400.0)
	setupperbound(x[84], 2200.0)
	setupperbound(x[85], 2200.0)
	setupperbound(x[86], 800.0)
	setupperbound(x[87], 800.0)
	setupperbound(x[88], 1800.0)
	setupperbound(x[89], 1800.0)
	setupperbound(x[90], 1.0)
	setupperbound(x[91], 1.0)
	setupperbound(x[92], 1.0)
	setupperbound(x[93], 1.0)
	setupperbound(x[94], 1.0)
	setupperbound(x[95], 1.0)
	setupperbound(x[96], 1.0)
	setupperbound(x[97], 1.0)


	# ----- Constraints ----- #
	@constraint(m, e1, -20*b[1]-520*b[2]-20*b[3]-100*b[4]-20*b[5]-80*b[6]-550*b[7]-80*b[9]-400*b[10]-16*b[11]-50*b[13]-80*b[15]-300*b[16]-500*b[17]-500*b[18]-500*b[19]-500*b[21]-500*b[22]-320*b[25]-40*b[26]-40*b[27]-200*b[28]-200*b[29]-80*b[30]-10*b[31]-600*b[32]-420*b[33]-7500*b[37]-9300*b[38]+12.822715454568*x[82]+12.822715454568*x[83]+12.822715454568*x[84]+12.822715454568*x[85]+12.822715454568*x[86]+12.822715454568*x[87]+12.822715454568*x[88]+12.822715454568*x[89]+x[132] == 14104.9870000248)
	@constraint(m, e2, -x[39] >= -130.0)
	@constraint(m, e3, -x[40] >= -125.0)
	@constraint(m, e4, -x[41] >= -212.0)
	@constraint(m, e5, -x[42] >= -334.0)
	@constraint(m, e6, -x[43] >= -833.0)
	@constraint(m, e7, -x[44] >= -381.0)
	@constraint(m, e8, -x[45] >= -5610.0)
	@constraint(m, e9, -x[46] >= -155.0)
	@constraint(m, e10, 401*b[1]-x[47] >= 0.0)
	@constraint(m, e11, 600*b[2]-x[48]-x[49] >= 0.0)
	@constraint(m, e12, 532*b[3]-x[50] >= 0.0)
	@constraint(m, e13, 816*b[4]-x[51] >= 0.0)
	@constraint(m, e14, 161*b[5]-x[52] >= 0.0)
	@constraint(m, e15, 2467*b[6]-x[53] >= 0.0)
	@constraint(m, e16, 923*b[7]-x[54]-x[55] >= 0.0)
	@constraint(m, e17, 401*b[8]-x[47] >= 0.0)
	@constraint(m, e18, 600*b[9]-x[48] >= 0.0)
	@constraint(m, e19, 600*b[10]-x[49] >= 0.0)
	@constraint(m, e20, 532*b[11]-x[50] >= 0.0)
	@constraint(m, e21, 816*b[12]-x[51] >= 0.0)
	@constraint(m, e22, 161*b[13]-x[52] >= 0.0)
	@constraint(m, e23, 2467*b[14]-x[53] >= 0.0)
	@constraint(m, e24, 900*b[15]-x[54] >= 0.0)
	@constraint(m, e25, 900*b[16]-x[55] >= 0.0)
	@constraint(m, e26, b[1]-b[8] >= 0.0)
	@constraint(m, e27, b[2]-b[9] >= 0.0)
	@constraint(m, e28, b[2]-b[10] >= 0.0)
	@constraint(m, e29, b[3]-b[11] >= 0.0)
	@constraint(m, e30, b[4]-b[12] >= 0.0)
	@constraint(m, e31, b[5]-b[13] >= 0.0)
	@constraint(m, e32, b[6]-b[14] >= 0.0)
	@constraint(m, e33, b[7]-b[15] >= 0.0)
	@constraint(m, e34, b[7]-b[16] >= 0.0)
	@constraint(m, e35, -b[1]+b[8] >= 0.0)
	@constraint(m, e36, -b[2]+b[9]+b[10] >= 0.0)
	@constraint(m, e37, -b[3]+b[11] >= 0.0)
	@constraint(m, e38, -b[4]+b[12] >= 0.0)
	@constraint(m, e39, -b[5]+b[13] >= 0.0)
	@constraint(m, e40, -b[6]+b[14] >= 0.0)
	@constraint(m, e41, -b[7]+b[15]+b[16] >= 0.0)
	@constraint(m, e42, -0.007177*x[39]-0.008782*x[40]+x[56] == 0.0)
	@constraint(m, e43, -0.992823*x[39]-0.991218*x[40]+x[57] == 0.0)
	@constraint(m, e44, -0.002687*x[41]-0.092341*x[42]+x[58] == 0.0)
	@constraint(m, e45, -0.997313*x[41]-0.907659*x[42]+x[59] == 0.0)
	@constraint(m, e46, -0.00684*x[44]-0.016427*x[45]+x[60] == 0.0)
	@constraint(m, e47, -0.99316*x[44]-0.983573*x[45]+x[61] == 0.0)
	@constraint(m, e48, -0.088511*x[47]-0.015894*x[48]+x[62] == 0.0)
	@constraint(m, e49, -0.911489*x[47]-0.984106*x[48]+x[63] == 0.0)
	@constraint(m, e50, -0.024263*x[50]-0.009488*x[51]-0.023048*x[52]+x[64] == 0.0)
	@constraint(m, e51, -0.975737*x[50]-0.990512*x[51]-0.976952*x[52]+x[65] == 0.0)
	@constraint(m, e52, -x[64]-x[66]+x[70] == 0.0)
	@constraint(m, e53, -x[65]-x[67]+x[71] == 0.0)
	@constraint(m, e54, -0.0383*x[55]-x[68]-x[76]+x[80] == 0.0)
	@constraint(m, e55, -0.9617*x[55]-x[69]-x[77]+x[81] == 0.0)
	@constraint(m, e56, x[66]-0.0334*x[98]-0.0383*x[99] == 0.0)
	@constraint(m, e57, x[67]-0.9666*x[98]-0.9617*x[99] == 0.0)
	@constraint(m, e58, x[68]-0.0334*x[100]-0.0383*x[101] == 0.0)
	@constraint(m, e59, x[69]-0.9666*x[100]-0.9617*x[101] == 0.0)
	@constraint(m, e60, x[72]-0.034121*x[102]-0.014483*x[103]-x[108]-x[110] == 0.0)
	@constraint(m, e61, x[73]-0.965879*x[102]-0.985517*x[103]-x[109]-x[111] == 0.0)
	@constraint(m, e62, x[74]-0.034121*x[104]-0.014483*x[105]-x[112]-x[114] == 0.0)
	@constraint(m, e63, x[75]-0.965879*x[104]-0.985517*x[105]-x[113]-x[115] == 0.0)
	@constraint(m, e64, x[76]-0.015894*x[106]-x[116]-x[118]-x[120] == 0.0)
	@constraint(m, e65, x[77]-0.984106*x[106]-x[117]-x[119]-x[121] == 0.0)
	@constraint(m, e66, x[78]-0.015894*x[107]-x[122]-x[124]-x[126] == 0.0)
	@constraint(m, e67, x[79]-0.984106*x[107]-x[123]-x[125]-x[127] == 0.0)
	@constraint(m, e68, -x[90]*x[53]+x[98] == 0.0)
	@constraint(m, e69, -x[90]*x[54]+x[99] == 0.0)
	@constraint(m, e70, -x[91]*x[53]+x[100] == 0.0)
	@constraint(m, e71, -x[91]*x[54]+x[101] == 0.0)
	@constraint(m, e72, -x[92]*x[43]+x[102] == 0.0)
	@constraint(m, e73, -x[92]*x[46]+x[103] == 0.0)
	@constraint(m, e74, -x[93]*x[43]+x[104] == 0.0)
	@constraint(m, e75, -x[93]*x[46]+x[105] == 0.0)
	@constraint(m, e76, -x[94]*x[49]+x[106] == 0.0)
	@constraint(m, e77, -x[95]*x[49]+x[107] == 0.0)
	@constraint(m, e78, -x[92]*x[58]+x[108] == 0.0)
	@constraint(m, e79, -x[92]*x[59]+x[109] == 0.0)
	@constraint(m, e80, -x[92]*x[60]+x[110] == 0.0)
	@constraint(m, e81, -x[92]*x[61]+x[111] == 0.0)
	@constraint(m, e82, -x[93]*x[58]+x[112] == 0.0)
	@constraint(m, e83, -x[93]*x[59]+x[113] == 0.0)
	@constraint(m, e84, -x[93]*x[60]+x[114] == 0.0)
	@constraint(m, e85, -x[93]*x[61]+x[115] == 0.0)
	@constraint(m, e86, -x[94]*x[62]+x[116] == 0.0)
	@constraint(m, e87, -x[94]*x[63]+x[117] == 0.0)
	@constraint(m, e88, -x[94]*x[70]+x[118] == 0.0)
	@constraint(m, e89, -x[94]*x[71]+x[119] == 0.0)
	@constraint(m, e90, -x[94]*x[72]+x[120] == 0.0)
	@constraint(m, e91, -x[94]*x[73]+x[121] == 0.0)
	@constraint(m, e92, -x[95]*x[62]+x[122] == 0.0)
	@constraint(m, e93, -x[95]*x[63]+x[123] == 0.0)
	@constraint(m, e94, -x[95]*x[70]+x[124] == 0.0)
	@constraint(m, e95, -x[95]*x[71]+x[125] == 0.0)
	@constraint(m, e96, -x[95]*x[72]+x[126] == 0.0)
	@constraint(m, e97, -x[95]*x[73]+x[127] == 0.0)
	@constraint(m, e98, -x[56]-x[74]+x[82] == 0.0)
	@constraint(m, e99, -x[57]-x[75]+x[83] == 0.0)
	@constraint(m, e100, -x[80]+x[88] == 0.0)
	@constraint(m, e101, -x[81]+x[89] == 0.0)
	@constraint(m, e102, x[84]-x[128] == 0.0)
	@constraint(m, e103, x[85]-x[129] == 0.0)
	@constraint(m, e104, x[86]-x[130] == 0.0)
	@constraint(m, e105, x[87]-x[131] == 0.0)
	@constraint(m, e106, -x[96]*x[78]+x[128] == 0.0)
	@constraint(m, e107, -x[96]*x[79]+x[129] == 0.0)
	@constraint(m, e108, -x[97]*x[78]+x[130] == 0.0)
	@constraint(m, e109, -x[97]*x[79]+x[131] == 0.0)
	@constraint(m, e110, x[90]+x[91] == 1.0)
	@constraint(m, e111, x[92]+x[93] == 1.0)
	@constraint(m, e112, x[94]+x[95] == 1.0)
	@constraint(m, e113, x[96]+x[97] == 1.0)
	@constraint(m, e114, -x[56]-x[57] >= -255.0)
	@constraint(m, e115, -x[58]-x[59] >= -546.0)
	@constraint(m, e116, -x[60]-x[61] >= -1331.0)
	@constraint(m, e117, -x[74]-x[75] >= -1400.0)
	@constraint(m, e118, 600*b[25]-x[62]-x[63] >= 0.0)
	@constraint(m, e119, 1509*b[26]-x[64]-x[65] >= 0.0)
	@constraint(m, e120, 2200*b[27]-x[66]-x[67] >= 0.0)
	@constraint(m, e121, 900*b[28]-x[68]-x[69] >= 0.0)
	@constraint(m, e122, 2200*b[29]-x[70]-x[71] >= 0.0)
	@constraint(m, e123, 950*b[30]-x[72]-x[73] >= 0.0)
	@constraint(m, e124, 720*b[31]-x[76]-x[77] >= 0.0)
	@constraint(m, e125, 3000*b[32]-x[78]-x[79] >= 0.0)
	@constraint(m, e126, 1800*b[33]-x[80]-x[81] >= 0.0)
	@constraint(m, e127, -x[82]-x[83] >= -1400.0)
	@constraint(m, e128, 2200*b[34]-x[84]-x[85] >= 0.0)
	@constraint(m, e129, 800*b[35]-x[86]-x[87] >= 0.0)
	@constraint(m, e130, 1800*b[36]-x[88]-x[89] >= 0.0)
	@constraint(m, e131, -b[8]+b[17] >= 0.0)
	@constraint(m, e132, -b[9]+b[17] >= 0.0)
	@constraint(m, e133, -b[10]+b[21] >= 0.0)
	@constraint(m, e134, -b[11]+b[18] >= 0.0)
	@constraint(m, e135, -b[12]+b[18] >= 0.0)
	@constraint(m, e136, -b[13]+b[18] >= 0.0)
	@constraint(m, e137, -b[14]+b[19] >= 0.0)
	@constraint(m, e138, -b[15]+b[19] >= 0.0)
	@constraint(m, e139, -b[16]+b[22] >= 0.0)
	@constraint(m, e140, b[21]-b[25] >= 0.0)
	@constraint(m, e141, b[20]-b[26] >= 0.0)
	@constraint(m, e142, b[20]-b[27] >= 0.0)
	@constraint(m, e143, b[22]-b[28] >= 0.0)
	@constraint(m, e144, b[21]-b[29] >= 0.0)
	@constraint(m, e145, b[21]-b[30] >= 0.0)
	@constraint(m, e146, b[22]-b[31] >= 0.0)
	@constraint(m, e147, b[23]-b[32] >= 0.0)
	@constraint(m, e148, b[24]-b[33] >= 0.0)
	@constraint(m, e149, b[17]-b[25] >= 0.0)
	@constraint(m, e150, b[18]-b[26] >= 0.0)
	@constraint(m, e151, b[19]-b[27] >= 0.0)
	@constraint(m, e152, b[19]-b[28] >= 0.0)
	@constraint(m, e153, b[20]-b[29] >= 0.0)
	@constraint(m, e154, b[21]-b[31] >= 0.0)
	@constraint(m, e155, b[21]-b[32] >= 0.0)
	@constraint(m, e156, b[22]-b[33] >= 0.0)
	@constraint(m, e157, b[23]-b[34] >= 0.0)
	@constraint(m, e158, b[23]-b[35] >= 0.0)
	@constraint(m, e159, b[24]-b[36] >= 0.0)
	@constraint(m, e160, b[8]+b[9]-b[17] >= 0.0)
	@constraint(m, e161, b[11]+b[12]+b[13]-b[18] >= 0.0)
	@constraint(m, e162, b[14]+b[15]-b[19] >= 0.0)
	@constraint(m, e163, -b[20]+b[26]+b[27] >= 0.0)
	@constraint(m, e164, b[10]-b[21]+b[25]+b[29]+b[30] >= 0.0)
	@constraint(m, e165, b[16]-b[22]+b[28]+b[31] >= 0.0)
	@constraint(m, e166, -b[23]+b[32] >= 0.0)
	@constraint(m, e167, -b[24]+b[33] >= 0.0)
	@constraint(m, e168, -b[17]+b[25] >= 0.0)
	@constraint(m, e169, -b[18]+b[26] >= 0.0)
	@constraint(m, e170, -b[19]+b[27]+b[28] >= 0.0)
	@constraint(m, e171, -b[20]+b[29] >= 0.0)
	@constraint(m, e172, -b[21]+b[31]+b[32] >= 0.0)
	@constraint(m, e173, -b[22]+b[33] >= 0.0)
	@constraint(m, e174, -b[23]+b[34]+b[35] >= 0.0)
	@constraint(m, e175, -b[24]+b[36] >= 0.0)
	@constraint(m, e176, -x[82]-x[83] >= -1100.0)
	@constraint(m, e177, 1800*b[37]-x[84]-x[85] >= 0.0)
	@constraint(m, e178, 2400*b[38]-x[86]-x[87]-x[88]-x[89] >= 0.0)
	@constraint(m, e179, 0.972*x[82]-0.028*x[83] <= 0.0)
	@constraint(m, e180, 0.972*x[84]-0.028*x[85] <= 0.0)
	@constraint(m, e181, 0.972*x[86]-0.028*x[87]+0.972*x[88]-0.028*x[89] <= 0.0)
	@constraint(m, e182, -b[34]+b[37] >= 0.0)
	@constraint(m, e183, -b[35]+b[38] >= 0.0)
	@constraint(m, e184, -b[36]+b[38] >= 0.0)
	@constraint(m, e185, b[34]-b[37] >= 0.0)
	@constraint(m, e186, b[35]+b[36]-b[38] >= 0.0)
	@constraint(m, e187, b[1]-b[8] == 0.0)
	@constraint(m, e188, -b[8]+b[17] == 0.0)
	@constraint(m, e189, b[4]-b[12] == 0.0)
	@constraint(m, e190, -b[12]+b[18] == 0.0)
	@constraint(m, e191, b[6]-b[14] == 0.0)
	@constraint(m, e192, -b[14]+b[19] == 0.0)
	@constraint(m, e193, b[23]-b[34] == 0.0)
	@constraint(m, e194, -b[34]+b[37] == 0.0)
	@constraint(m, e195, b[24]-b[36] == 0.0)
	@constraint(m, e196, -b[36]+b[38] == 0.0)
	@constraint(m, e197, -x[43]+x[102]+x[104] == 0.0)
	@constraint(m, e198, -x[46]+x[103]+x[105] == 0.0)
	@constraint(m, e199, -x[49]+x[106]+x[107] == 0.0)
	@constraint(m, e200, -x[53]+x[98]+x[100] == 0.0)
	@constraint(m, e201, -x[54]+x[99]+x[101] == 0.0)
	@constraint(m, e202, -x[58]+x[108]+x[112] == 0.0)
	@constraint(m, e203, -x[59]+x[109]+x[113] == 0.0)
	@constraint(m, e204, -x[60]+x[110]+x[114] == 0.0)
	@constraint(m, e205, -x[61]+x[111]+x[115] == 0.0)
	@constraint(m, e206, -x[62]+x[116]+x[122] == 0.0)
	@constraint(m, e207, -x[63]+x[117]+x[123] == 0.0)
	@constraint(m, e208, -x[70]+x[118]+x[124] == 0.0)
	@constraint(m, e209, -x[71]+x[119]+x[125] == 0.0)
	@constraint(m, e210, -x[72]+x[120]+x[126] == 0.0)
	@constraint(m, e211, -x[73]+x[121]+x[127] == 0.0)
	@constraint(m, e212, -x[78]+x[128]+x[130] == 0.0)
	@constraint(m, e213, -x[79]+x[129]+x[131] == 0.0)


	# ----- Objective ----- #
	@objective(m, Min, x[132])
	verbose && print(m)
	return m
end


# ----- END ----- #