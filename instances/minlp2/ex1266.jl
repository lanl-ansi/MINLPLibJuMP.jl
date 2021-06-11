using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 151, 152, 153, 154, 155, 156]
@variable(m, x[x_Idx])
b_Idx = Any[37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[17], 0.0)
set_upper_bound(x[1], 5.0)
set_upper_bound(x[2], 5.0)
set_upper_bound(x[3], 5.0)
set_upper_bound(x[4], 5.0)
set_upper_bound(x[5], 5.0)
set_upper_bound(x[6], 5.0)
set_upper_bound(x[7], 5.0)
set_upper_bound(x[8], 5.0)
set_upper_bound(x[9], 5.0)
set_upper_bound(x[10], 5.0)
set_upper_bound(x[11], 5.0)
set_upper_bound(x[12], 5.0)
set_upper_bound(x[13], 5.0)
set_upper_bound(x[14], 5.0)
set_upper_bound(x[15], 5.0)
set_upper_bound(x[16], 5.0)
set_upper_bound(x[17], 5.0)
set_upper_bound(x[18], 5.0)
set_upper_bound(x[19], 5.0)
set_upper_bound(x[20], 5.0)
set_upper_bound(x[21], 5.0)
set_upper_bound(x[22], 5.0)
set_upper_bound(x[23], 5.0)
set_upper_bound(x[24], 5.0)
set_upper_bound(x[25], 5.0)
set_upper_bound(x[26], 5.0)
set_upper_bound(x[27], 5.0)
set_upper_bound(x[28], 5.0)
set_upper_bound(x[29], 5.0)
set_upper_bound(x[30], 5.0)
set_upper_bound(x[31], 5.0)
set_upper_bound(x[32], 5.0)
set_upper_bound(x[33], 5.0)
set_upper_bound(x[34], 5.0)
set_upper_bound(x[35], 5.0)
set_upper_bound(x[36], 5.0)
set_upper_bound(x[151], 15.0)
set_upper_bound(x[152], 12.0)
set_upper_bound(x[153], 8.0)
set_upper_bound(x[154], 7.0)
set_upper_bound(x[155], 4.0)
set_upper_bound(x[156], 2.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[145]-0.2*b[146]-0.3*b[147]-0.4*b[148]-0.5*b[149]-x[151]-x[152]-x[153]-x[154]-x[155]-x[156]+objvar == 0.0)
@NLconstraint(m, e2, x[151]*x[1]+x[152]*x[2]+x[153]*x[3]+x[154]*x[4]+x[155]*x[5]+x[156]*x[6] >= 8.0)
@NLconstraint(m, e3, x[151]*x[7]+x[152]*x[8]+x[153]*x[9]+x[154]*x[10]+x[155]*x[11]+x[156]*x[12] >= 16.0)
@NLconstraint(m, e4, x[151]*x[13]+x[152]*x[14]+x[153]*x[15]+x[154]*x[16]+x[155]*x[17]+x[156]*x[18] >= 12.0)
@NLconstraint(m, e5, x[151]*x[19]+x[152]*x[20]+x[153]*x[21]+x[154]*x[22]+x[155]*x[23]+x[156]*x[24] >= 7.0)
@NLconstraint(m, e6, x[151]*x[25]+x[152]*x[26]+x[153]*x[27]+x[154]*x[28]+x[155]*x[29]+x[156]*x[30] >= 14.0)
@NLconstraint(m, e7, x[151]*x[31]+x[152]*x[32]+x[153]*x[33]+x[154]*x[34]+x[155]*x[35]+x[156]*x[36] >= 16.0)
@constraint(m, e8, -330*x[1]-360*x[7]-380*x[13]-430*x[19]-490*x[25]-530*x[31]+2100*b[145] <= 0.0)
@constraint(m, e9, -330*x[2]-360*x[8]-380*x[14]-430*x[20]-490*x[26]-530*x[32]+2100*b[146] <= 0.0)
@constraint(m, e10, -330*x[3]-360*x[9]-380*x[15]-430*x[21]-490*x[27]-530*x[33]+2100*b[147] <= 0.0)
@constraint(m, e11, -330*x[4]-360*x[10]-380*x[16]-430*x[22]-490*x[28]-530*x[34]+2100*b[148] <= 0.0)
@constraint(m, e12, -330*x[5]-360*x[11]-380*x[17]-430*x[23]-490*x[29]-530*x[35]+2100*b[149] <= 0.0)
@constraint(m, e13, -330*x[6]-360*x[12]-380*x[18]-430*x[24]-490*x[30]-530*x[36]+2100*b[150] <= 0.0)
@constraint(m, e14, 330*x[1]+360*x[7]+380*x[13]+430*x[19]+490*x[25]+530*x[31]-2200*b[145] <= 0.0)
@constraint(m, e15, 330*x[2]+360*x[8]+380*x[14]+430*x[20]+490*x[26]+530*x[32]-2200*b[146] <= 0.0)
@constraint(m, e16, 330*x[3]+360*x[9]+380*x[15]+430*x[21]+490*x[27]+530*x[33]-2200*b[147] <= 0.0)
@constraint(m, e17, 330*x[4]+360*x[10]+380*x[16]+430*x[22]+490*x[28]+530*x[34]-2200*b[148] <= 0.0)
@constraint(m, e18, 330*x[5]+360*x[11]+380*x[17]+430*x[23]+490*x[29]+530*x[35]-2200*b[149] <= 0.0)
@constraint(m, e19, 330*x[6]+360*x[12]+380*x[18]+430*x[24]+490*x[30]+530*x[36]-2200*b[150] <= 0.0)
@constraint(m, e20, -x[1]-x[7]-x[13]-x[19]-x[25]-x[31]+b[145] <= 0.0)
@constraint(m, e21, -x[2]-x[8]-x[14]-x[20]-x[26]-x[32]+b[146] <= 0.0)
@constraint(m, e22, -x[3]-x[9]-x[15]-x[21]-x[27]-x[33]+b[147] <= 0.0)
@constraint(m, e23, -x[4]-x[10]-x[16]-x[22]-x[28]-x[34]+b[148] <= 0.0)
@constraint(m, e24, -x[5]-x[11]-x[17]-x[23]-x[29]-x[35]+b[149] <= 0.0)
@constraint(m, e25, -x[6]-x[12]-x[18]-x[24]-x[30]-x[36]+b[150] <= 0.0)
@constraint(m, e26, x[1]+x[7]+x[13]+x[19]+x[25]+x[31]-5*b[145] <= 0.0)
@constraint(m, e27, x[2]+x[8]+x[14]+x[20]+x[26]+x[32]-5*b[146] <= 0.0)
@constraint(m, e28, x[3]+x[9]+x[15]+x[21]+x[27]+x[33]-5*b[147] <= 0.0)
@constraint(m, e29, x[4]+x[10]+x[16]+x[22]+x[28]+x[34]-5*b[148] <= 0.0)
@constraint(m, e30, x[5]+x[11]+x[17]+x[23]+x[29]+x[35]-5*b[149] <= 0.0)
@constraint(m, e31, x[6]+x[12]+x[18]+x[24]+x[30]+x[36]-5*b[150] <= 0.0)
@constraint(m, e32, b[145]-x[151] <= 0.0)
@constraint(m, e33, b[146]-x[152] <= 0.0)
@constraint(m, e34, b[147]-x[153] <= 0.0)
@constraint(m, e35, b[148]-x[154] <= 0.0)
@constraint(m, e36, b[149]-x[155] <= 0.0)
@constraint(m, e37, b[150]-x[156] <= 0.0)
@constraint(m, e38, -15*b[145]+x[151] <= 0.0)
@constraint(m, e39, -12*b[146]+x[152] <= 0.0)
@constraint(m, e40, -8*b[147]+x[153] <= 0.0)
@constraint(m, e41, -7*b[148]+x[154] <= 0.0)
@constraint(m, e42, -4*b[149]+x[155] <= 0.0)
@constraint(m, e43, -2*b[150]+x[156] <= 0.0)
@constraint(m, e44, x[151]+x[152]+x[153]+x[154]+x[155]+x[156] >= 16.0)
@constraint(m, e45, -b[145]+b[146] <= 0.0)
@constraint(m, e46, -b[146]+b[147] <= 0.0)
@constraint(m, e47, -b[147]+b[148] <= 0.0)
@constraint(m, e48, -b[148]+b[149] <= 0.0)
@constraint(m, e49, -b[149]+b[150] <= 0.0)
@constraint(m, e50, -x[151]+x[152] <= 0.0)
@constraint(m, e51, -x[152]+x[153] <= 0.0)
@constraint(m, e52, -x[153]+x[154] <= 0.0)
@constraint(m, e53, -x[154]+x[155] <= 0.0)
@constraint(m, e54, -x[155]+x[156] <= 0.0)
@constraint(m, e55, x[1]-b[37]-2*b[38]-4*b[39] == 0.0)
@constraint(m, e56, x[2]-b[40]-2*b[41]-4*b[42] == 0.0)
@constraint(m, e57, x[3]-b[43]-2*b[44]-4*b[45] == 0.0)
@constraint(m, e58, x[4]-b[46]-2*b[47]-4*b[48] == 0.0)
@constraint(m, e59, x[5]-b[49]-2*b[50]-4*b[51] == 0.0)
@constraint(m, e60, x[6]-b[52]-2*b[53]-4*b[54] == 0.0)
@constraint(m, e61, x[7]-b[55]-2*b[56]-4*b[57] == 0.0)
@constraint(m, e62, x[8]-b[58]-2*b[59]-4*b[60] == 0.0)
@constraint(m, e63, x[9]-b[61]-2*b[62]-4*b[63] == 0.0)
@constraint(m, e64, x[10]-b[64]-2*b[65]-4*b[66] == 0.0)
@constraint(m, e65, x[11]-b[67]-2*b[68]-4*b[69] == 0.0)
@constraint(m, e66, x[12]-b[70]-2*b[71]-4*b[72] == 0.0)
@constraint(m, e67, x[13]-b[73]-2*b[74]-4*b[75] == 0.0)
@constraint(m, e68, x[14]-b[76]-2*b[77]-4*b[78] == 0.0)
@constraint(m, e69, x[15]-b[79]-2*b[80]-4*b[81] == 0.0)
@constraint(m, e70, x[16]-b[82]-2*b[83]-4*b[84] == 0.0)
@constraint(m, e71, x[17]-b[85]-2*b[86]-4*b[87] == 0.0)
@constraint(m, e72, x[18]-b[88]-2*b[89]-4*b[90] == 0.0)
@constraint(m, e73, x[19]-b[91]-2*b[92]-4*b[93] == 0.0)
@constraint(m, e74, x[20]-b[94]-2*b[95]-4*b[96] == 0.0)
@constraint(m, e75, x[21]-b[97]-2*b[98]-4*b[99] == 0.0)
@constraint(m, e76, x[22]-b[100]-2*b[101]-4*b[102] == 0.0)
@constraint(m, e77, x[23]-b[103]-2*b[104]-4*b[105] == 0.0)
@constraint(m, e78, x[24]-b[106]-2*b[107]-4*b[108] == 0.0)
@constraint(m, e79, x[25]-b[109]-2*b[110]-4*b[111] == 0.0)
@constraint(m, e80, x[26]-b[112]-2*b[113]-4*b[114] == 0.0)
@constraint(m, e81, x[27]-b[115]-2*b[116]-4*b[117] == 0.0)
@constraint(m, e82, x[28]-b[118]-2*b[119]-4*b[120] == 0.0)
@constraint(m, e83, x[29]-b[121]-2*b[122]-4*b[123] == 0.0)
@constraint(m, e84, x[30]-b[124]-2*b[125]-4*b[126] == 0.0)
@constraint(m, e85, x[31]-b[127]-2*b[128]-4*b[129] == 0.0)
@constraint(m, e86, x[32]-b[130]-2*b[131]-4*b[132] == 0.0)
@constraint(m, e87, x[33]-b[133]-2*b[134]-4*b[135] == 0.0)
@constraint(m, e88, x[34]-b[136]-2*b[137]-4*b[138] == 0.0)
@constraint(m, e89, x[35]-b[139]-2*b[140]-4*b[141] == 0.0)
@constraint(m, e90, x[36]-b[142]-2*b[143]-4*b[144] == 0.0)
@constraint(m, e91, x[151]-b[157]-2*b[158]-4*b[159]-8*b[160] == 0.0)
@constraint(m, e92, x[152]-b[161]-2*b[162]-4*b[163]-8*b[164] == 0.0)
@constraint(m, e93, x[153]-b[165]-2*b[166]-4*b[167]-8*b[168] == 0.0)
@constraint(m, e94, x[154]-b[169]-2*b[170]-4*b[171]-8*b[172] == 0.0)
@constraint(m, e95, x[155]-b[173]-2*b[174]-4*b[175]-8*b[176] == 0.0)
@constraint(m, e96, x[156]-b[177]-2*b[178]-4*b[179]-8*b[180] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
