function multiplants_mtg1a(;options=Dict())

	haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
	haskey(options, :verbose) ? solver_options=optios[:verbose] : verbose=false

	m = Model(solver=fetch_solver(options))

	# ----- Variables ----- #
	@variable(m, objvar)
	b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93]
	@variable(m, b[b_Idx])
	x_Idx = Any[94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193]
	@variable(m, x[x_Idx])
	setCategory(b[35], :Bin)
	setlowerbound(x[146], 0.0)
	setlowerbound(x[114], 0.0)
	setlowerbound(x[132], 0.0)
	setlowerbound(x[154], 0.0)
	setlowerbound(x[164], 0.0)
	setlowerbound(x[143], 0.0)
	setCategory(b[15], :Bin)
	setCategory(b[45], :Bin)
	setCategory(b[64], :Bin)
	setlowerbound(x[165], 0.0)
	setlowerbound(x[186], 0.0)
	setCategory(b[21], :Bin)
	setCategory(b[36], :Bin)
	setCategory(b[87], :Bin)
	setlowerbound(x[141], 0.0)
	setlowerbound(x[94], 0.0)
	setCategory(b[79], :Bin)
	setlowerbound(x[144], 0.0)
	setlowerbound(x[145], 0.0)
	setCategory(b[16], :Bin)
	setlowerbound(x[172], 0.0)
	setlowerbound(x[120], 0.0)
	setlowerbound(x[160], 0.0)
	setlowerbound(x[188], 0.0)
	setCategory(b[60], :Bin)
	setCategory(b[12], :Bin)
	setlowerbound(x[103], 0.0)
	setCategory(b[11], :Bin)
	setlowerbound(x[162], 0.0)
	setCategory(b[19], :Bin)
	setlowerbound(x[116], 0.0)
	setCategory(b[3], :Bin)
	setlowerbound(x[95], 0.0)
	setCategory(b[39], :Bin)
	setCategory(b[4], :Bin)
	setlowerbound(x[174], 0.0)
	setlowerbound(x[99], 0.0)
	setCategory(b[37], :Bin)
	setCategory(b[88], :Bin)
	setlowerbound(x[169], 0.0)
	setCategory(b[50], :Bin)
	setlowerbound(x[148], 0.0)
	setlowerbound(x[150], 0.0)
	setCategory(b[62], :Bin)
	setCategory(b[24], :Bin)
	setCategory(b[10], :Bin)
	setlowerbound(x[101], 0.0)
	setlowerbound(x[136], 0.0)
	setCategory(b[75], :Bin)
	setlowerbound(x[151], 0.0)
	setlowerbound(x[171], 0.0)
	setlowerbound(x[147], 0.0)
	setCategory(b[70], :Bin)
	setlowerbound(x[138], 0.0)
	setCategory(b[41], :Bin)
	setCategory(b[48], :Bin)
	setCategory(b[23], :Bin)
	setlowerbound(x[111], 0.0)
	setCategory(b[28], :Bin)
	setCategory(b[90], :Bin)
	setlowerbound(x[185], 0.0)
	setlowerbound(x[137], 0.0)
	setCategory(b[84], :Bin)
	setlowerbound(x[179], 0.0)
	setlowerbound(x[175], 0.0)
	setCategory(b[53], :Bin)
	setlowerbound(x[142], 0.0)
	setCategory(b[29], :Bin)
	setlowerbound(x[128], 0.0)
	setCategory(b[61], :Bin)
	setCategory(b[89], :Bin)
	setCategory(b[34], :Bin)
	setlowerbound(x[161], 0.0)
	setCategory(b[86], :Bin)
	setCategory(b[13], :Bin)
	setlowerbound(x[156], 0.0)
	setCategory(b[69], :Bin)
	setCategory(b[68], :Bin)
	setCategory(b[47], :Bin)
	setlowerbound(x[173], 0.0)
	setCategory(b[76], :Bin)
	setlowerbound(x[176], 0.0)
	setlowerbound(x[123], 0.0)
	setlowerbound(x[112], 0.0)
	setlowerbound(x[115], 0.0)
	setlowerbound(x[189], 0.0)
	setlowerbound(x[187], 0.0)
	setlowerbound(x[119], 0.0)
	setlowerbound(x[166], 0.0)
	setlowerbound(x[157], 0.0)
	setCategory(b[52], :Bin)
	setlowerbound(x[163], 0.0)
	setlowerbound(x[133], 0.0)
	setlowerbound(x[117], 0.0)
	setCategory(b[38], :Bin)
	setCategory(b[71], :Bin)
	setCategory(b[78], :Bin)
	setlowerbound(x[140], 0.0)
	setlowerbound(x[153], 0.0)
	setCategory(b[66], :Bin)
	setCategory(b[80], :Bin)
	setlowerbound(x[105], 0.0)
	setCategory(b[49], :Bin)
	setlowerbound(x[113], 0.0)
	setlowerbound(x[130], 0.0)
	setlowerbound(x[100], 0.0)
	setCategory(b[54], :Bin)
	setCategory(b[22], :Bin)
	setlowerbound(x[131], 0.0)
	setlowerbound(x[96], 0.0)
	setCategory(b[77], :Bin)
	setCategory(b[46], :Bin)
	setCategory(b[56], :Bin)
	setCategory(b[74], :Bin)
	setlowerbound(x[177], 0.0)
	setCategory(b[32], :Bin)
	setCategory(b[92], :Bin)
	setCategory(b[72], :Bin)
	setCategory(b[5], :Bin)
	setlowerbound(x[121], 0.0)
	setlowerbound(x[152], 0.0)
	setCategory(b[14], :Bin)
	setCategory(b[43], :Bin)
	setCategory(b[25], :Bin)
	setlowerbound(x[184], 0.0)
	setCategory(b[9], :Bin)
	setCategory(b[83], :Bin)
	setlowerbound(x[98], 0.0)
	setlowerbound(x[158], 0.0)
	setCategory(b[59], :Bin)
	setCategory(b[67], :Bin)
	setlowerbound(x[170], 0.0)
	setlowerbound(x[149], 0.0)
	setCategory(b[93], :Bin)
	setlowerbound(x[125], 0.0)
	setlowerbound(x[167], 0.0)
	setlowerbound(x[102], 0.0)
	setCategory(b[26], :Bin)
	setCategory(b[73], :Bin)
	setCategory(b[44], :Bin)
	setlowerbound(x[118], 0.0)
	setCategory(b[85], :Bin)
	setCategory(b[82], :Bin)
	setlowerbound(x[110], 0.0)
	setCategory(b[42], :Bin)
	setCategory(b[81], :Bin)
	setlowerbound(x[155], 0.0)
	setlowerbound(x[106], 0.0)
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
	setlowerbound(x[104], 0.0)
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
	setCategory(b[91], :Bin)
	setCategory(b[55], :Bin)
	setlowerbound(x[108], 0.0)
	setCategory(b[63], :Bin)
	setupperbound(x[149], 250.0)
	setupperbound(x[150], 250.0)
	setupperbound(x[151], 250.0)
	setupperbound(x[152], 250.0)
	setupperbound(x[153], 250.0)
	setupperbound(x[154], 250.0)
	setupperbound(x[155], 250.0)
	setupperbound(x[156], 250.0)
	setupperbound(x[157], 500.0)
	setupperbound(x[158], 500.0)
	setupperbound(x[159], 500.0)
	setupperbound(x[160], 500.0)
	setupperbound(x[161], 500.0)
	setupperbound(x[162], 500.0)
	setupperbound(x[163], 500.0)
	setupperbound(x[164], 500.0)
	setupperbound(x[165], 500.0)
	setupperbound(x[169], 250.0)
	setupperbound(x[170], 250.0)
	setupperbound(x[171], 250.0)
	setupperbound(x[172], 250.0)
	setupperbound(x[173], 250.0)
	setupperbound(x[174], 250.0)
	setupperbound(x[175], 500.0)
	setupperbound(x[176], 500.0)
	setupperbound(x[177], 500.0)
	setupperbound(x[178], 500.0)
	setupperbound(x[179], 500.0)
	setupperbound(x[180], 500.0)
	setlowerbound(x[181], 50.0)
	setlowerbound(x[182], 100.0)
	setlowerbound(x[183], 250.0)
	setlowerbound(x[190], 5.55555555555556)
	setupperbound(x[190], 250.0)
	setlowerbound(x[191], 16.6666666666667)
	setupperbound(x[191], 250.0)
	setlowerbound(x[192], 22.7272727272727)
	setupperbound(x[192], 250.0)
	setlowerbound(x[193], 100.0)
	setupperbound(x[193], 250.0)


	# ----- Constraints ----- #
	@NLconstraint(m, e1, objvar*x[193]+0.00203*(x[190]^2*(x[185]-x[181])+(x[193]-x[190])^2*x[181])+0.00203*(x[191]^2*(x[187]-x[182])+(x[193]-x[191])^2*x[182])+0.00203*(x[192]^2*(x[189]-x[183])+(x[193]-x[192])^2*x[183])+3800*b[4]+3800*b[5]+3800*b[6]+6080*b[7]+6080*b[8]+6080*b[9]+7500*b[10]+7500*b[11]+7500*b[12]+2250*b[16]+2250*b[17]+2250*b[18]+3080*b[19]+3080*b[20]+3080*b[21]+5390*b[22]+5390*b[23]+5390*b[24]+6840*b[31]+6840*b[32]+6840*b[33]+8360*b[34]+8360*b[35]+8360*b[36]+3750*b[37]+3750*b[38]+3750*b[39]+5250*b[43]+5250*b[44]+5250*b[45]+4620*b[46]+4620*b[47]+4620*b[48]+3080*b[49]+3080*b[50]+3080*b[51]+8360*b[58]+8360*b[59]+8360*b[60]+760*b[61]+760*b[62]+760*b[63]+1500*b[64]+1500*b[65]+1500*b[66]+3750*b[70]+3750*b[71]+3750*b[72]+4620*b[73]+4620*b[74]+4620*b[75]+770*b[76]+770*b[77]+770*b[78]-0.15*x[100]-0.15*x[101]-0.15*x[102]-0.4*x[109]-0.4*x[110]-0.4*x[111]-0.65*x[118]-0.65*x[119]-0.65*x[120]+0.1406*x[166]+0.1406*x[167]+0.1406*x[168] == 0.0)
	@constraint(m, e2, b[1]-b[3]+b[4]+b[7]-b[12]-b[21]+x[121]-x[123] == 0.0)
	@constraint(m, e3, -b[1]+b[2]+b[5]+b[8]-b[10]-b[19]-x[121]+x[122] == 0.0)
	@constraint(m, e4, -b[2]+b[3]+b[6]+b[9]-b[11]-b[20]-x[122]+x[123] == 0.0)
	@constraint(m, e5, -b[6]+b[10]+b[13]-b[15]+b[16]-b[24]+x[124]-x[126] == 0.0)
	@constraint(m, e6, -b[4]+b[11]-b[13]+b[14]+b[17]-b[22]-x[124]+x[125] == 0.0)
	@constraint(m, e7, -b[5]+b[12]-b[14]+b[15]+b[18]-b[23]-x[125]+x[126] == 0.0)
	@constraint(m, e8, -b[9]-b[18]+b[19]+b[22]+b[25]-b[27]+x[127]-x[129] == 0.0)
	@constraint(m, e9, -b[7]-b[16]+b[20]+b[23]-b[25]+b[26]-x[127]+x[128] == 0.0)
	@constraint(m, e10, -b[8]-b[17]+b[21]+b[24]-b[26]+b[27]-x[128]+x[129] == 0.0)
	@constraint(m, e11, b[28]-b[30]+b[31]+b[34]-b[39]-b[48]+x[130]-x[132] == 0.0)
	@constraint(m, e12, -b[28]+b[29]+b[32]+b[35]-b[37]-b[46]-x[130]+x[131] == 0.0)
	@constraint(m, e13, -b[29]+b[30]+b[33]+b[36]-b[38]-b[47]-x[131]+x[132] == 0.0)
	@constraint(m, e14, -b[33]+b[37]+b[40]-b[42]+b[43]-b[51]+x[133]-x[135] == 0.0)
	@constraint(m, e15, -b[31]+b[38]-b[40]+b[41]+b[44]-b[49]-x[133]+x[134] == 0.0)
	@constraint(m, e16, -b[32]+b[39]-b[41]+b[42]+b[45]-b[50]-x[134]+x[135] == 0.0)
	@constraint(m, e17, -b[36]-b[45]+b[46]+b[49]+b[52]-b[54]+x[136]-x[138] == 0.0)
	@constraint(m, e18, -b[34]-b[43]+b[47]+b[50]-b[52]+b[53]-x[136]+x[137] == 0.0)
	@constraint(m, e19, -b[35]-b[44]+b[48]+b[51]-b[53]+b[54]-x[137]+x[138] == 0.0)
	@constraint(m, e20, b[55]-b[57]+b[58]+b[61]-b[66]-b[75]+x[139]-x[141] == 0.0)
	@constraint(m, e21, -b[55]+b[56]+b[59]+b[62]-b[64]-b[73]-x[139]+x[140] == 0.0)
	@constraint(m, e22, -b[56]+b[57]+b[60]+b[63]-b[65]-b[74]-x[140]+x[141] == 0.0)
	@constraint(m, e23, -b[60]+b[64]+b[67]-b[69]+b[70]-b[78]+x[142]-x[144] == 0.0)
	@constraint(m, e24, -b[58]+b[65]-b[67]+b[68]+b[71]-b[76]-x[142]+x[143] == 0.0)
	@constraint(m, e25, -b[59]+b[66]-b[68]+b[69]+b[72]-b[77]-x[143]+x[144] == 0.0)
	@constraint(m, e26, -b[63]-b[72]+b[73]+b[76]+b[79]-b[81]+x[145]-x[147] == 0.0)
	@constraint(m, e27, -b[61]-b[70]+b[74]+b[77]-b[79]+b[80]-x[145]+x[146] == 0.0)
	@constraint(m, e28, -b[62]-b[71]+b[75]+b[78]-b[80]+b[81]-x[146]+x[147] == 0.0)
	@constraint(m, e29, b[1]+b[4]+b[7]+b[10]+b[13]+b[16]+b[19]+b[22]+b[25]+x[121]+x[124]+x[127] == 1.0)
	@constraint(m, e30, b[28]+b[31]+b[34]+b[37]+b[40]+b[43]+b[46]+b[49]+b[52]+x[130]+x[133]+x[136] == 1.0)
	@constraint(m, e31, b[55]+b[58]+b[61]+b[64]+b[67]+b[70]+b[73]+b[76]+b[79]+x[139]+x[142]+x[145] == 1.0)
	@constraint(m, e32, -5*b[4]-8*b[7]-10*b[10]-3*b[16]-4*b[19]-7*b[22]-0.00125*x[94]-0.000833333333333333*x[103]-0.001*x[112]-x[148]+x[151] >= 0.0)
	@constraint(m, e33, -5*b[5]-8*b[8]-10*b[11]-3*b[17]-4*b[20]-7*b[23]-0.00125*x[95]-0.000833333333333333*x[104]-0.001*x[113]-x[151]+x[154] >= 0.0)
	@constraint(m, e34, -5*b[6]-8*b[9]-10*b[12]-3*b[18]-4*b[21]-7*b[24]-0.00125*x[96]-0.000833333333333333*x[105]-0.001*x[114]+x[148]-x[154]+x[193] >= 0.0)
	@constraint(m, e35, -9*b[31]-11*b[34]-5*b[37]-7*b[43]-6*b[46]-4*b[49]-0.0025*x[97]-0.002*x[106]-0.00222222222222222*x[115]-x[149]+x[152] >= 0.0)
	@constraint(m, e36, -9*b[32]-11*b[35]-5*b[38]-7*b[44]-6*b[47]-4*b[50]-0.0025*x[98]-0.002*x[107]-0.00222222222222222*x[116]-x[152]+x[155] >= 0.0)
	@constraint(m, e37, -9*b[33]-11*b[36]-5*b[39]-7*b[45]-6*b[48]-4*b[51]-0.0025*x[99]-0.002*x[108]-0.00222222222222222*x[117]+x[149]-x[155]+x[193] >= 0.0)
	@constraint(m, e38, -11*b[58]-b[61]-2*b[64]-5*b[70]-6*b[73]-b[76]-0.00111111111111111*x[100]-0.00166666666666667*x[109]-0.000909090909090909*x[118]-x[150]+x[153] >= 0.0)
	@constraint(m, e39, -11*b[59]-b[62]-2*b[65]-5*b[71]-6*b[74]-b[77]-0.00111111111111111*x[101]-0.00166666666666667*x[110]-0.000909090909090909*x[119]-x[153]+x[156] >= 0.0)
	@constraint(m, e40, -11*b[60]-b[63]-2*b[66]-5*b[72]-6*b[75]-b[78]-0.00111111111111111*x[102]-0.00166666666666667*x[111]-0.000909090909090909*x[120]+x[150]-x[156]+x[193] >= 0.0)
	@constraint(m, e41, -5*b[4]-8*b[7]-10*b[10]-3*b[16]-4*b[19]-7*b[22]+x[151]-x[157] == 0.0)
	@constraint(m, e42, -5*b[5]-8*b[8]-10*b[11]-3*b[17]-4*b[20]-7*b[23]+x[154]-x[160] == 0.0)
	@constraint(m, e43, -5*b[6]-8*b[9]-10*b[12]-3*b[18]-4*b[21]-7*b[24]+x[148]-x[163]+x[193] == 0.0)
	@constraint(m, e44, -9*b[31]-11*b[34]-5*b[37]-7*b[43]-6*b[46]-4*b[49]+x[152]-x[158] == 0.0)
	@constraint(m, e45, -9*b[32]-11*b[35]-5*b[38]-7*b[44]-6*b[47]-4*b[50]+x[155]-x[161] == 0.0)
	@constraint(m, e46, -9*b[33]-11*b[36]-5*b[39]-7*b[45]-6*b[48]-4*b[51]+x[149]-x[164]+x[193] == 0.0)
	@constraint(m, e47, -11*b[58]-b[61]-2*b[64]-5*b[70]-6*b[73]-b[76]+x[153]-x[159] == 0.0)
	@constraint(m, e48, -11*b[59]-b[62]-2*b[65]-5*b[71]-6*b[74]-b[77]+x[156]-x[162] == 0.0)
	@constraint(m, e49, -11*b[60]-b[63]-2*b[66]-5*b[72]-6*b[75]-b[78]+x[150]-x[165]+x[193] == 0.0)
	@constraint(m, e50, x[154]-x[193] <= 0.0)
	@constraint(m, e51, x[155]-x[193] <= 0.0)
	@constraint(m, e52, x[156]-x[193] <= 0.0)
	@constraint(m, e53, -200000*b[1]-200000*b[4]-200000*b[7]+x[94] <= 0.0)
	@constraint(m, e54, -200000*b[2]-200000*b[5]-200000*b[8]+x[95] <= 0.0)
	@constraint(m, e55, -200000*b[3]-200000*b[6]-200000*b[9]+x[96] <= 0.0)
	@constraint(m, e56, -100000*b[28]-100000*b[31]-100000*b[34]+x[97] <= 0.0)
	@constraint(m, e57, -100000*b[29]-100000*b[32]-100000*b[35]+x[98] <= 0.0)
	@constraint(m, e58, -100000*b[30]-100000*b[33]-100000*b[36]+x[99] <= 0.0)
	@constraint(m, e59, -225000*b[55]-225000*b[58]-225000*b[61]+x[100] <= 0.0)
	@constraint(m, e60, -225000*b[56]-225000*b[59]-225000*b[62]+x[101] <= 0.0)
	@constraint(m, e61, -225000*b[57]-225000*b[60]-225000*b[63]+x[102] <= 0.0)
	@constraint(m, e62, -300000*b[10]-300000*b[13]-300000*b[16]+x[103] <= 0.0)
	@constraint(m, e63, -300000*b[11]-300000*b[14]-300000*b[17]+x[104] <= 0.0)
	@constraint(m, e64, -300000*b[12]-300000*b[15]-300000*b[18]+x[105] <= 0.0)
	@constraint(m, e65, -125000*b[37]-125000*b[40]-125000*b[43]+x[106] <= 0.0)
	@constraint(m, e66, -125000*b[38]-125000*b[41]-125000*b[44]+x[107] <= 0.0)
	@constraint(m, e67, -125000*b[39]-125000*b[42]-125000*b[45]+x[108] <= 0.0)
	@constraint(m, e68, -150000*b[64]-150000*b[67]-150000*b[70]+x[109] <= 0.0)
	@constraint(m, e69, -150000*b[65]-150000*b[68]-150000*b[71]+x[110] <= 0.0)
	@constraint(m, e70, -150000*b[66]-150000*b[69]-150000*b[72]+x[111] <= 0.0)
	@constraint(m, e71, -250000*b[19]-250000*b[22]-250000*b[25]+x[112] <= 0.0)
	@constraint(m, e72, -250000*b[20]-250000*b[23]-250000*b[26]+x[113] <= 0.0)
	@constraint(m, e73, -250000*b[21]-250000*b[24]-250000*b[27]+x[114] <= 0.0)
	@constraint(m, e74, -112500*b[46]-112500*b[49]-112500*b[52]+x[115] <= 0.0)
	@constraint(m, e75, -112500*b[47]-112500*b[50]-112500*b[53]+x[116] <= 0.0)
	@constraint(m, e76, -112500*b[48]-112500*b[51]-112500*b[54]+x[117] <= 0.0)
	@constraint(m, e77, -275000*b[73]-275000*b[76]-275000*b[79]+x[118] <= 0.0)
	@constraint(m, e78, -275000*b[74]-275000*b[77]-275000*b[80]+x[119] <= 0.0)
	@constraint(m, e79, -275000*b[75]-275000*b[78]-275000*b[81]+x[120] <= 0.0)
	@constraint(m, e80, b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8]+b[9]+b[28]+b[29]+b[30]+b[31]+b[32]+b[33]+b[34]+b[35]+b[36] == 1.0)
	@constraint(m, e81, b[55]+b[56]+b[57]+b[58]+b[59]+b[60]+b[61]+b[62]+b[63] == 1.0)
	@constraint(m, e82, b[10]+b[11]+b[12]+b[13]+b[14]+b[15]+b[16]+b[17]+b[18]+b[37]+b[38]+b[39]+b[40]+b[41]+b[42]+b[43]+b[44]+b[45] == 1.0)
	@constraint(m, e83, b[64]+b[65]+b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[72] == 1.0)
	@constraint(m, e84, b[19]+b[20]+b[21]+b[22]+b[23]+b[24]+b[25]+b[26]+b[27]+b[46]+b[47]+b[48]+b[49]+b[50]+b[51]+b[52]+b[53]+b[54] == 1.0)
	@constraint(m, e85, b[73]+b[74]+b[75]+b[76]+b[77]+b[78]+b[79]+b[80]+b[81] == 1.0)
	@constraint(m, e86, b[1]+b[4]+b[7]+b[28]+b[31]+b[34] == 1.0)
	@constraint(m, e87, x[181]*x[193]-x[100]-x[101]-x[102] == 0.0)
	@constraint(m, e88, x[182]*x[193]-x[109]-x[110]-x[111] == 0.0)
	@constraint(m, e89, x[183]*x[193]-x[118]-x[119]-x[120] == 0.0)
	@constraint(m, e90, x[94]+x[95]+x[96]+x[97]+x[98]+x[99]-x[100]-x[101]-x[102] == 0.0)
	@constraint(m, e91, x[103]+x[104]+x[105]+x[106]+x[107]+x[108]-x[109]-x[110]-x[111] == 0.0)
	@constraint(m, e92, x[112]+x[113]+x[114]+x[115]+x[116]+x[117]-x[118]-x[119]-x[120] == 0.0)
	@constraint(m, e93, 250*b[1]+250*b[4]+250*b[7]-x[148]+x[169] <= 250.0)
	@constraint(m, e94, 250*b[1]+250*b[2]+250*b[4]+250*b[5]+250*b[7]+250*b[8]-x[151]+x[169] <= 250.0)
	@constraint(m, e95, 250*b[1]+250*b[2]+250*b[3]+250*b[4]+250*b[5]+250*b[6]+250*b[7]+250*b[8]+250*b[9]-x[154]+x[169] <= 250.0)
	@constraint(m, e96, 250*b[28]+250*b[31]+250*b[34]-x[149]+x[169] <= 250.0)
	@constraint(m, e97, 250*b[28]+250*b[29]+250*b[31]+250*b[32]+250*b[34]+250*b[35]-x[152]+x[169] <= 250.0)
	@constraint(m, e98, 250*b[28]+250*b[29]+250*b[30]+250*b[31]+250*b[32]+250*b[33]+250*b[34]+250*b[35]+250*b[36]-x[155]+x[169] <= 250.0)
	@constraint(m, e99, 250*b[55]+250*b[58]+250*b[61]-x[150]+x[170] <= 250.0)
	@constraint(m, e100, 250*b[55]+250*b[56]+250*b[58]+250*b[59]+250*b[61]+250*b[62]-x[153]+x[170] <= 250.0)
	@constraint(m, e101, 250*b[55]+250*b[56]+250*b[57]+250*b[58]+250*b[59]+250*b[60]+250*b[61]+250*b[62]+250*b[63]-x[156]+x[170] <= 250.0)
	@constraint(m, e102, 250*b[10]+250*b[13]+250*b[16]-x[148]+x[171] <= 250.0)
	@constraint(m, e103, 250*b[10]+250*b[11]+250*b[13]+250*b[14]+250*b[16]+250*b[17]-x[151]+x[171] <= 250.0)
	@constraint(m, e104, 250*b[10]+250*b[11]+250*b[12]+250*b[13]+250*b[14]+250*b[15]+250*b[16]+250*b[17]+250*b[18]-x[154]+x[171] <= 250.0)
	@constraint(m, e105, 250*b[37]+250*b[40]+250*b[43]-x[149]+x[171] <= 250.0)
	@constraint(m, e106, 250*b[37]+250*b[38]+250*b[40]+250*b[41]+250*b[43]+250*b[44]-x[152]+x[171] <= 250.0)
	@constraint(m, e107, 250*b[37]+250*b[38]+250*b[39]+250*b[40]+250*b[41]+250*b[42]+250*b[43]+250*b[44]+250*b[45]-x[155]+x[171] <= 250.0)
	@constraint(m, e108, 250*b[64]+250*b[67]+250*b[70]-x[150]+x[172] <= 250.0)
	@constraint(m, e109, 250*b[64]+250*b[65]+250*b[67]+250*b[68]+250*b[70]+250*b[71]-x[153]+x[172] <= 250.0)
	@constraint(m, e110, 250*b[64]+250*b[65]+250*b[66]+250*b[67]+250*b[68]+250*b[69]+250*b[70]+250*b[71]+250*b[72]-x[156]+x[172] <= 250.0)
	@constraint(m, e111, 250*b[19]+250*b[22]+250*b[25]-x[148]+x[173] <= 250.0)
	@constraint(m, e112, 250*b[19]+250*b[20]+250*b[22]+250*b[23]+250*b[25]+250*b[26]-x[151]+x[173] <= 250.0)
	@constraint(m, e113, 250*b[19]+250*b[20]+250*b[21]+250*b[22]+250*b[23]+250*b[24]+250*b[25]+250*b[26]+250*b[27]-x[154]+x[173] <= 250.0)
	@constraint(m, e114, 250*b[46]+250*b[49]+250*b[52]-x[149]+x[173] <= 250.0)
	@constraint(m, e115, 250*b[46]+250*b[47]+250*b[49]+250*b[50]+250*b[52]+250*b[53]-x[152]+x[173] <= 250.0)
	@constraint(m, e116, 250*b[46]+250*b[47]+250*b[48]+250*b[49]+250*b[50]+250*b[51]+250*b[52]+250*b[53]+250*b[54]-x[155]+x[173] <= 250.0)
	@constraint(m, e117, 250*b[73]+250*b[76]+250*b[79]-x[150]+x[174] <= 250.0)
	@constraint(m, e118, 250*b[73]+250*b[74]+250*b[76]+250*b[77]+250*b[79]+250*b[80]-x[153]+x[174] <= 250.0)
	@constraint(m, e119, 250*b[73]+250*b[74]+250*b[75]+250*b[76]+250*b[77]+250*b[78]+250*b[79]+250*b[80]+250*b[81]-x[156]+x[174] <= 250.0)
	@constraint(m, e120, -250*b[1]-250*b[2]-250*b[3]-250*b[4]-250*b[5]-250*b[6]-250*b[7]-250*b[8]-250*b[9]-x[148]+x[169] >= -250.0)
	@constraint(m, e121, -250*b[2]-250*b[3]-250*b[5]-250*b[6]-250*b[8]-250*b[9]-x[151]+x[169] >= -250.0)
	@constraint(m, e122, -250*b[3]-250*b[6]-250*b[9]-x[154]+x[169] >= -250.0)
	@constraint(m, e123, -250*b[28]-250*b[29]-250*b[30]-250*b[31]-250*b[32]-250*b[33]-250*b[34]-250*b[35]-250*b[36]-x[149]+x[169] >= -250.0)
	@constraint(m, e124, -250*b[29]-250*b[30]-250*b[32]-250*b[33]-250*b[35]-250*b[36]-x[152]+x[169] >= -250.0)
	@constraint(m, e125, -250*b[30]-250*b[33]-250*b[36]-x[155]+x[169] >= -250.0)
	@constraint(m, e126, -250*b[55]-250*b[56]-250*b[57]-250*b[58]-250*b[59]-250*b[60]-250*b[61]-250*b[62]-250*b[63]-x[150]+x[170] >= -250.0)
	@constraint(m, e127, -250*b[56]-250*b[57]-250*b[59]-250*b[60]-250*b[62]-250*b[63]-x[153]+x[170] >= -250.0)
	@constraint(m, e128, -250*b[57]-250*b[60]-250*b[63]-x[156]+x[170] >= -250.0)
	@constraint(m, e129, -250*b[10]-250*b[11]-250*b[12]-250*b[13]-250*b[14]-250*b[15]-250*b[16]-250*b[17]-250*b[18]-x[148]+x[171] >= -250.0)
	@constraint(m, e130, -250*b[11]-250*b[12]-250*b[14]-250*b[15]-250*b[17]-250*b[18]-x[151]+x[171] >= -250.0)
	@constraint(m, e131, -250*b[12]-250*b[15]-250*b[18]-x[154]+x[171] >= -250.0)
	@constraint(m, e132, -250*b[37]-250*b[38]-250*b[39]-250*b[40]-250*b[41]-250*b[42]-250*b[43]-250*b[44]-250*b[45]-x[149]+x[171] >= -250.0)
	@constraint(m, e133, -250*b[38]-250*b[39]-250*b[41]-250*b[42]-250*b[44]-250*b[45]-x[152]+x[171] >= -250.0)
	@constraint(m, e134, -250*b[39]-250*b[42]-250*b[45]-x[155]+x[171] >= -250.0)
	@constraint(m, e135, -250*b[64]-250*b[65]-250*b[66]-250*b[67]-250*b[68]-250*b[69]-250*b[70]-250*b[71]-250*b[72]-x[150]+x[172] >= -250.0)
	@constraint(m, e136, -250*b[65]-250*b[66]-250*b[68]-250*b[69]-250*b[71]-250*b[72]-x[153]+x[172] >= -250.0)
	@constraint(m, e137, -250*b[66]-250*b[69]-250*b[72]-x[156]+x[172] >= -250.0)
	@constraint(m, e138, -250*b[19]-250*b[20]-250*b[21]-250*b[22]-250*b[23]-250*b[24]-250*b[25]-250*b[26]-250*b[27]-x[148]+x[173] >= -250.0)
	@constraint(m, e139, -250*b[20]-250*b[21]-250*b[23]-250*b[24]-250*b[26]-250*b[27]-x[151]+x[173] >= -250.0)
	@constraint(m, e140, -250*b[21]-250*b[24]-250*b[27]-x[154]+x[173] >= -250.0)
	@constraint(m, e141, -250*b[46]-250*b[47]-250*b[48]-250*b[49]-250*b[50]-250*b[51]-250*b[52]-250*b[53]-250*b[54]-x[149]+x[173] >= -250.0)
	@constraint(m, e142, -250*b[47]-250*b[48]-250*b[50]-250*b[51]-250*b[53]-250*b[54]-x[152]+x[173] >= -250.0)
	@constraint(m, e143, -250*b[48]-250*b[51]-250*b[54]-x[155]+x[173] >= -250.0)
	@constraint(m, e144, -250*b[73]-250*b[74]-250*b[75]-250*b[76]-250*b[77]-250*b[78]-250*b[79]-250*b[80]-250*b[81]-x[150]+x[174] >= -250.0)
	@constraint(m, e145, -250*b[74]-250*b[75]-250*b[77]-250*b[78]-250*b[80]-250*b[81]-x[153]+x[174] >= -250.0)
	@constraint(m, e146, -250*b[75]-250*b[78]-250*b[81]-x[156]+x[174] >= -250.0)
	@constraint(m, e147, 250*b[1]+250*b[4]+250*b[7]-x[157]+x[175] <= 250.0)
	@constraint(m, e148, 250*b[1]+250*b[2]+250*b[4]+250*b[5]+250*b[7]+250*b[8]-x[160]+x[175] <= 250.0)
	@constraint(m, e149, 250*b[1]+250*b[2]+250*b[3]+250*b[4]+250*b[5]+250*b[6]+250*b[7]+250*b[8]+250*b[9]-x[163]+x[175] <= 250.0)
	@constraint(m, e150, 250*b[28]+250*b[31]+250*b[34]-x[158]+x[175] <= 250.0)
	@constraint(m, e151, 250*b[28]+250*b[29]+250*b[31]+250*b[32]+250*b[34]+250*b[35]-x[161]+x[175] <= 250.0)
	@constraint(m, e152, 250*b[28]+250*b[29]+250*b[30]+250*b[31]+250*b[32]+250*b[33]+250*b[34]+250*b[35]+250*b[36]-x[164]+x[175] <= 250.0)
	@constraint(m, e153, 250*b[55]+250*b[58]+250*b[61]-x[159]+x[176] <= 250.0)
	@constraint(m, e154, 250*b[55]+250*b[56]+250*b[58]+250*b[59]+250*b[61]+250*b[62]-x[162]+x[176] <= 250.0)
	@constraint(m, e155, 250*b[55]+250*b[56]+250*b[57]+250*b[58]+250*b[59]+250*b[60]+250*b[61]+250*b[62]+250*b[63]-x[165]+x[176] <= 250.0)
	@constraint(m, e156, 250*b[10]+250*b[13]+250*b[16]-x[157]+x[177] <= 250.0)
	@constraint(m, e157, 250*b[10]+250*b[11]+250*b[13]+250*b[14]+250*b[16]+250*b[17]-x[160]+x[177] <= 250.0)
	@constraint(m, e158, 250*b[10]+250*b[11]+250*b[12]+250*b[13]+250*b[14]+250*b[15]+250*b[16]+250*b[17]+250*b[18]-x[163]+x[177] <= 250.0)
	@constraint(m, e159, 250*b[37]+250*b[40]+250*b[43]-x[158]+x[177] <= 250.0)
	@constraint(m, e160, 250*b[37]+250*b[38]+250*b[40]+250*b[41]+250*b[43]+250*b[44]-x[161]+x[177] <= 250.0)
	@constraint(m, e161, 250*b[37]+250*b[38]+250*b[39]+250*b[40]+250*b[41]+250*b[42]+250*b[43]+250*b[44]+250*b[45]-x[164]+x[177] <= 250.0)
	@constraint(m, e162, 250*b[64]+250*b[67]+250*b[70]-x[159]+x[178] <= 250.0)
	@constraint(m, e163, 250*b[64]+250*b[65]+250*b[67]+250*b[68]+250*b[70]+250*b[71]-x[162]+x[178] <= 250.0)
	@constraint(m, e164, 250*b[64]+250*b[65]+250*b[66]+250*b[67]+250*b[68]+250*b[69]+250*b[70]+250*b[71]+250*b[72]-x[165]+x[178] <= 250.0)
	@constraint(m, e165, 250*b[19]+250*b[22]+250*b[25]-x[157]+x[179] <= 250.0)
	@constraint(m, e166, 250*b[19]+250*b[20]+250*b[22]+250*b[23]+250*b[25]+250*b[26]-x[160]+x[179] <= 250.0)
	@constraint(m, e167, 250*b[19]+250*b[20]+250*b[21]+250*b[22]+250*b[23]+250*b[24]+250*b[25]+250*b[26]+250*b[27]-x[163]+x[179] <= 250.0)
	@constraint(m, e168, 250*b[46]+250*b[49]+250*b[52]-x[158]+x[179] <= 250.0)
	@constraint(m, e169, 250*b[46]+250*b[47]+250*b[49]+250*b[50]+250*b[52]+250*b[53]-x[161]+x[179] <= 250.0)
	@constraint(m, e170, 250*b[46]+250*b[47]+250*b[48]+250*b[49]+250*b[50]+250*b[51]+250*b[52]+250*b[53]+250*b[54]-x[164]+x[179] <= 250.0)
	@constraint(m, e171, 250*b[73]+250*b[76]+250*b[79]-x[159]+x[180] <= 250.0)
	@constraint(m, e172, 250*b[73]+250*b[74]+250*b[76]+250*b[77]+250*b[79]+250*b[80]-x[162]+x[180] <= 250.0)
	@constraint(m, e173, 250*b[73]+250*b[74]+250*b[75]+250*b[76]+250*b[77]+250*b[78]+250*b[79]+250*b[80]+250*b[81]-x[165]+x[180] <= 250.0)
	@constraint(m, e174, -250*b[1]-250*b[2]-250*b[3]-250*b[4]-250*b[5]-250*b[6]-250*b[7]-250*b[8]-250*b[9]-x[157]+x[175] >= -250.0)
	@constraint(m, e175, -250*b[2]-250*b[3]-250*b[5]-250*b[6]-250*b[8]-250*b[9]-x[160]+x[175] >= -250.0)
	@constraint(m, e176, -250*b[3]-250*b[6]-250*b[9]-x[163]+x[175] >= -250.0)
	@constraint(m, e177, -250*b[28]-250*b[29]-250*b[30]-250*b[31]-250*b[32]-250*b[33]-250*b[34]-250*b[35]-250*b[36]-x[158]+x[175] >= -250.0)
	@constraint(m, e178, -250*b[29]-250*b[30]-250*b[32]-250*b[33]-250*b[35]-250*b[36]-x[161]+x[175] >= -250.0)
	@constraint(m, e179, -250*b[30]-250*b[33]-250*b[36]-x[164]+x[175] >= -250.0)
	@constraint(m, e180, -250*b[55]-250*b[56]-250*b[57]-250*b[58]-250*b[59]-250*b[60]-250*b[61]-250*b[62]-250*b[63]-x[159]+x[176] >= -250.0)
	@constraint(m, e181, -250*b[56]-250*b[57]-250*b[59]-250*b[60]-250*b[62]-250*b[63]-x[162]+x[176] >= -250.0)
	@constraint(m, e182, -250*b[57]-250*b[60]-250*b[63]-x[165]+x[176] >= -250.0)
	@constraint(m, e183, -250*b[10]-250*b[11]-250*b[12]-250*b[13]-250*b[14]-250*b[15]-250*b[16]-250*b[17]-250*b[18]-x[157]+x[177] >= -250.0)
	@constraint(m, e184, -250*b[11]-250*b[12]-250*b[14]-250*b[15]-250*b[17]-250*b[18]-x[160]+x[177] >= -250.0)
	@constraint(m, e185, -250*b[12]-250*b[15]-250*b[18]-x[163]+x[177] >= -250.0)
	@constraint(m, e186, -250*b[37]-250*b[38]-250*b[39]-250*b[40]-250*b[41]-250*b[42]-250*b[43]-250*b[44]-250*b[45]-x[158]+x[177] >= -250.0)
	@constraint(m, e187, -250*b[38]-250*b[39]-250*b[41]-250*b[42]-250*b[44]-250*b[45]-x[161]+x[177] >= -250.0)
	@constraint(m, e188, -250*b[39]-250*b[42]-250*b[45]-x[164]+x[177] >= -250.0)
	@constraint(m, e189, -250*b[64]-250*b[65]-250*b[66]-250*b[67]-250*b[68]-250*b[69]-250*b[70]-250*b[71]-250*b[72]-x[159]+x[178] >= -250.0)
	@constraint(m, e190, -250*b[65]-250*b[66]-250*b[68]-250*b[69]-250*b[71]-250*b[72]-x[162]+x[178] >= -250.0)
	@constraint(m, e191, -250*b[66]-250*b[69]-250*b[72]-x[165]+x[178] >= -250.0)
	@constraint(m, e192, -250*b[19]-250*b[20]-250*b[21]-250*b[22]-250*b[23]-250*b[24]-250*b[25]-250*b[26]-250*b[27]-x[157]+x[179] >= -250.0)
	@constraint(m, e193, -250*b[20]-250*b[21]-250*b[23]-250*b[24]-250*b[26]-250*b[27]-x[160]+x[179] >= -250.0)
	@constraint(m, e194, -250*b[21]-250*b[24]-250*b[27]-x[163]+x[179] >= -250.0)
	@constraint(m, e195, -250*b[46]-250*b[47]-250*b[48]-250*b[49]-250*b[50]-250*b[51]-250*b[52]-250*b[53]-250*b[54]-x[158]+x[179] >= -250.0)
	@constraint(m, e196, -250*b[47]-250*b[48]-250*b[50]-250*b[51]-250*b[53]-250*b[54]-x[161]+x[179] >= -250.0)
	@constraint(m, e197, -250*b[48]-250*b[51]-250*b[54]-x[164]+x[179] >= -250.0)
	@constraint(m, e198, -250*b[73]-250*b[74]-250*b[75]-250*b[76]-250*b[77]-250*b[78]-250*b[79]-250*b[80]-250*b[81]-x[159]+x[180] >= -250.0)
	@constraint(m, e199, -250*b[74]-250*b[75]-250*b[77]-250*b[78]-250*b[80]-250*b[81]-x[162]+x[180] >= -250.0)
	@constraint(m, e200, -250*b[75]-250*b[78]-250*b[81]-x[165]+x[180] >= -250.0)
	@constraint(m, e201, -x[184]*(x[175]-x[169])+x[94]+x[95]+x[96]+x[97]+x[98]+x[99] == 0.0)
	@constraint(m, e202, -x[185]*(x[176]-x[170])+x[100]+x[101]+x[102] == 0.0)
	@constraint(m, e203, -x[186]*(x[177]-x[171])+x[103]+x[104]+x[105]+x[106]+x[107]+x[108] == 0.0)
	@constraint(m, e204, -x[187]*(x[178]-x[172])+x[109]+x[110]+x[111] == 0.0)
	@constraint(m, e205, -x[188]*(x[179]-x[173])+x[112]+x[113]+x[114]+x[115]+x[116]+x[117] == 0.0)
	@constraint(m, e206, -x[189]*(x[180]-x[174])+x[118]+x[119]+x[120] == 0.0)
	@constraint(m, e207, -800*b[1]-800*b[2]-800*b[3]-800*b[4]-800*b[5]-800*b[6]-800*b[7]-800*b[8]-800*b[9]-400*b[28]-400*b[29]-400*b[30]-400*b[31]-400*b[32]-400*b[33]-400*b[34]-400*b[35]-400*b[36]+x[184] <= 0.0)
	@constraint(m, e208, -900*b[55]-900*b[56]-900*b[57]-900*b[58]-900*b[59]-900*b[60]-900*b[61]-900*b[62]-900*b[63]+x[185] <= 0.0)
	@constraint(m, e209, -1200*b[10]-1200*b[11]-1200*b[12]-1200*b[13]-1200*b[14]-1200*b[15]-1200*b[16]-1200*b[17]-1200*b[18]-500*b[37]-500*b[38]-500*b[39]-500*b[40]-500*b[41]-500*b[42]-500*b[43]-500*b[44]-500*b[45]+x[186] <= 0.0)
	@constraint(m, e210, -600*b[64]-600*b[65]-600*b[66]-600*b[67]-600*b[68]-600*b[69]-600*b[70]-600*b[71]-600*b[72]+x[187] <= 0.0)
	@constraint(m, e211, -1000*b[19]-1000*b[20]-1000*b[21]-1000*b[22]-1000*b[23]-1000*b[24]-1000*b[25]-1000*b[26]-1000*b[27]-450*b[46]-450*b[47]-450*b[48]-450*b[49]-450*b[50]-450*b[51]-450*b[52]-450*b[53]-450*b[54]+x[188] <= 0.0)
	@constraint(m, e212, -1100*b[73]-1100*b[74]-1100*b[75]-1100*b[76]-1100*b[77]-1100*b[78]-1100*b[79]-1100*b[80]-1100*b[81]+x[189] <= 0.0)
	@constraint(m, e213, x[170]-x[176]+x[190] == 0.0)
	@constraint(m, e214, x[172]-x[178]+x[191] == 0.0)
	@constraint(m, e215, x[174]-x[180]+x[192] == 0.0)
	@constraint(m, e216, x[190]-x[193] <= 0.0)
	@constraint(m, e217, x[191]-x[193] <= 0.0)
	@constraint(m, e218, x[192]-x[193] <= 0.0)
	@constraint(m, e219, 250*b[82]+250*b[88]+x[169]-x[170] <= 250.0)
	@constraint(m, e220, 250*b[83]+250*b[89]+x[171]-x[172] <= 250.0)
	@constraint(m, e221, 250*b[84]+250*b[90]+x[173]-x[174] <= 250.0)
	@constraint(m, e222, -250*b[85]-250*b[91]+x[169]-x[170] >= -250.0)
	@constraint(m, e223, -250*b[86]-250*b[92]+x[171]-x[172] >= -250.0)
	@constraint(m, e224, -250*b[87]-250*b[93]+x[173]-x[174] >= -250.0)
	@constraint(m, e225, 500*b[82]+500*b[91]+x[175]-x[176] <= 500.0)
	@constraint(m, e226, 500*b[83]+500*b[92]+x[177]-x[178] <= 500.0)
	@constraint(m, e227, 500*b[84]+500*b[93]+x[179]-x[180] <= 500.0)
	@constraint(m, e228, -500*b[85]-500*b[88]+x[175]-x[176] >= -500.0)
	@constraint(m, e229, -500*b[86]-500*b[89]+x[177]-x[178] >= -500.0)
	@constraint(m, e230, -500*b[87]-500*b[90]+x[179]-x[180] >= -500.0)
	@constraint(m, e231, -250*b[82]-250*b[85]-250*b[88]-250*b[91]-x[170]+x[175] >= -250.0)
	@constraint(m, e232, -250*b[83]-250*b[86]-250*b[89]-250*b[92]-x[172]+x[177] >= -250.0)
	@constraint(m, e233, -250*b[84]-250*b[87]-250*b[90]-250*b[93]-x[174]+x[179] >= -250.0)
	@constraint(m, e234, -250*b[82]-250*b[85]-250*b[88]-250*b[91]-x[169]+x[176] >= -250.0)
	@constraint(m, e235, -250*b[83]-250*b[86]-250*b[89]-250*b[92]-x[171]+x[178] >= -250.0)
	@constraint(m, e236, -250*b[84]-250*b[87]-250*b[90]-250*b[93]-x[173]+x[180] >= -250.0)
	@constraint(m, e237, -(x[170]-x[169])*x[184]-200000*b[82]+x[166] >= -200000.0)
	@constraint(m, e238, -(x[172]-x[171])*x[186]-150000*b[83]+x[167] >= -150000.0)
	@constraint(m, e239, -(x[174]-x[173])*x[188]-250000*b[84]+x[168] >= -250000.0)
	@constraint(m, e240, -(x[176]-x[175])*x[185]-200000*b[82]+x[166] >= -200000.0)
	@constraint(m, e241, -(x[178]-x[177])*x[187]-150000*b[83]+x[167] >= -150000.0)
	@constraint(m, e242, -(x[180]-x[179])*x[189]-250000*b[84]+x[168] >= -250000.0)
	@constraint(m, e243, -(x[169]-x[170])*x[185]-200000*b[85]+x[166] >= -200000.0)
	@constraint(m, e244, -(x[171]-x[172])*x[187]-150000*b[86]+x[167] >= -150000.0)
	@constraint(m, e245, -(x[173]-x[174])*x[189]-250000*b[87]+x[168] >= -250000.0)
	@constraint(m, e246, -(x[175]-x[176])*x[184]-200000*b[85]+x[166] >= -200000.0)
	@constraint(m, e247, -(x[177]-x[178])*x[186]-150000*b[86]+x[167] >= -150000.0)
	@constraint(m, e248, -(x[179]-x[180])*x[188]-250000*b[87]+x[168] >= -250000.0)
	@constraint(m, e249, -(x[185]-x[184])*(x[176]-x[170])-200000*b[88]+x[166] >= -200000.0)
	@constraint(m, e250, -(x[187]-x[186])*(x[178]-x[172])-150000*b[89]+x[167] >= -150000.0)
	@constraint(m, e251, -(x[189]-x[188])*(x[180]-x[174])-250000*b[90]+x[168] >= -250000.0)
	@constraint(m, e252, -(x[184]-x[185])*(x[175]-x[169])-200000*b[91]+x[166] >= -200000.0)
	@constraint(m, e253, -(x[186]-x[187])*(x[177]-x[171])-150000*b[92]+x[167] >= -150000.0)
	@constraint(m, e254, -(x[188]-x[189])*(x[179]-x[173])-250000*b[93]+x[168] >= -250000.0)
	@constraint(m, e255, 200000*b[82]+200000*b[85]+200000*b[88]+200000*b[91]-x[94]-x[95]-x[96]-x[97]-x[98]-x[99]+x[166] >= 0.0)
	@constraint(m, e256, 150000*b[83]+150000*b[86]+150000*b[89]+150000*b[92]-x[103]-x[104]-x[105]-x[106]-x[107]-x[108]+x[167] >= 0.0)
	@constraint(m, e257, 250000*b[84]+250000*b[87]+250000*b[90]+250000*b[93]-x[112]-x[113]-x[114]-x[115]-x[116]-x[117]+x[168] >= 0.0)


	# ----- Objective ----- #
	@objective(m, Max, objvar)
	verbose && print(m)
	return m
end


# ----- END ----- #