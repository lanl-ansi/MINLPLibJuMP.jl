using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230]
@variable(m, x[x_Idx])
b_Idx = Any[60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[146], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[202], 0.0)
set_lower_bound(x[210], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[209], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[213], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[216], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[207], 0.0)
set_lower_bound(x[195], 0.0)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[3], 0.0)
set_lower_bound(x[4], 0.0)
set_upper_bound(x[4], 0.0)
set_lower_bound(x[5], -0.5)
set_upper_bound(x[5], 2.0)
set_upper_bound(x[6], 0.5)
set_lower_bound(x[7], 0.0)
set_upper_bound(x[7], 0.0)
set_lower_bound(x[8], 1.0)
set_upper_bound(x[8], 1.0)
set_lower_bound(x[9], 0.9)
set_upper_bound(x[9], 1.1)
set_lower_bound(x[10], 0.9)
set_upper_bound(x[10], 1.1)
set_lower_bound(x[11], 0.9)
set_upper_bound(x[11], 1.1)
set_lower_bound(x[12], 0.0)
set_upper_bound(x[12], 0.0)
set_lower_bound(x[13], 0.0)
set_upper_bound(x[13], 0.0)
set_lower_bound(x[14], 0.0)
set_upper_bound(x[14], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[15], 0.0)
set_lower_bound(x[16], 0.0)
set_upper_bound(x[16], 0.0)
set_lower_bound(x[17], 0.0)
set_upper_bound(x[17], 0.0)
set_lower_bound(x[18], -0.523598776)
set_upper_bound(x[18], 0.523598776)
set_lower_bound(x[19], -0.523598776)
set_upper_bound(x[19], 0.523598776)
set_lower_bound(x[20], -0.523598776)
set_upper_bound(x[20], 0.523598776)
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
set_upper_bound(x[37], 5.0)
set_upper_bound(x[38], 5.0)
set_upper_bound(x[39], 5.0)
set_upper_bound(x[40], 5.0)
set_upper_bound(x[41], 5.0)
set_upper_bound(x[42], 5.0)
set_upper_bound(x[43], 5.0)
set_upper_bound(x[44], 5.0)
set_lower_bound(x[45], 0.78239991906)
set_upper_bound(x[45], 1.21)
set_lower_bound(x[46], 0.78239991906)
set_upper_bound(x[46], 1.21)
set_lower_bound(x[47], 0.78239991906)
set_upper_bound(x[47], 1.21)
set_lower_bound(x[48], -0.209643426690187)
set_upper_bound(x[48], 0.313171044808798)
set_lower_bound(x[49], -0.209643426690187)
set_upper_bound(x[49], 0.313171044808798)
set_lower_bound(x[50], -0.209643426690187)
set_upper_bound(x[50], 0.313171044808798)
set_lower_bound(x[51], 0.81)
set_upper_bound(x[51], 1.21)
set_lower_bound(x[52], 0.81)
set_upper_bound(x[52], 1.21)
set_lower_bound(x[53], 0.81)
set_upper_bound(x[53], 1.21)
set_lower_bound(x[54], 0.965925826)
set_upper_bound(x[54], 1.0)
set_lower_bound(x[55], 0.965925826)
set_upper_bound(x[55], 1.0)
set_lower_bound(x[56], 0.965925826)
set_upper_bound(x[56], 1.0)
set_lower_bound(x[57], -0.261799388)
set_upper_bound(x[57], 0.261799388)
set_lower_bound(x[58], -0.261799388)
set_upper_bound(x[58], 0.261799388)
set_lower_bound(x[59], -0.261799388)
set_upper_bound(x[59], 0.261799388)
set_lower_bound(x[75], -0.4)
set_upper_bound(x[75], 12.54)
set_lower_bound(x[76], -0.4)
set_upper_bound(x[76], 12.54)
set_lower_bound(x[77], -0.4)
set_upper_bound(x[77], 12.54)
set_lower_bound(x[78], -0.36)
set_upper_bound(x[78], 12.5)
set_lower_bound(x[79], -0.36)
set_upper_bound(x[79], 12.5)
set_lower_bound(x[80], -0.36)
set_upper_bound(x[80], 12.5)
set_lower_bound(x[81], -12.5)
set_upper_bound(x[81], 0.4)
set_lower_bound(x[82], -12.5)
set_upper_bound(x[82], 0.4)
set_lower_bound(x[83], -12.5)
set_upper_bound(x[83], 0.4)
set_lower_bound(x[84], -12.5)
set_upper_bound(x[84], 0.4)
set_lower_bound(x[85], -12.5)
set_upper_bound(x[85], 0.4)
set_lower_bound(x[86], -12.5)
set_upper_bound(x[86], 0.4)
set_lower_bound(x[87], -0.42760008094)
set_upper_bound(x[87], 12.5412297502531)
set_lower_bound(x[88], -0.265490819276142)
set_upper_bound(x[88], 12.8008109567133)
set_lower_bound(x[89], -0.42760008094)
set_upper_bound(x[89], 12.5412297502531)
set_lower_bound(x[90], -0.265490819276142)
set_upper_bound(x[90], 12.8008109567133)
set_lower_bound(x[91], -0.42760008094)
set_upper_bound(x[91], 12.5412297502531)
set_lower_bound(x[92], -0.265490819276142)
set_upper_bound(x[92], 12.8008109567133)
set_lower_bound(x[93], -0.413970411434834)
set_upper_bound(x[93], 12.527600080748)
set_lower_bound(x[94], -0.201923370146898)
set_upper_bound(x[94], 12.737243507584)
set_lower_bound(x[95], -0.413970411434834)
set_upper_bound(x[95], 12.527600080748)
set_lower_bound(x[96], -0.201923370146898)
set_upper_bound(x[96], 12.737243507584)
set_lower_bound(x[97], -0.413970411434834)
set_upper_bound(x[97], 12.527600080748)
set_lower_bound(x[98], -0.201923370146898)
set_upper_bound(x[98], 12.737243507584)
set_lower_bound(x[99], -0.427600080747962)
set_upper_bound(x[99], 12.52760008094)
set_lower_bound(x[100], -0.637243507584012)
set_upper_bound(x[100], 12.3654908192761)
set_lower_bound(x[101], -0.427600080747962)
set_upper_bound(x[101], 12.52760008094)
set_lower_bound(x[102], -0.637243507584012)
set_upper_bound(x[102], 12.3654908192761)
set_lower_bound(x[103], -0.427600080747962)
set_upper_bound(x[103], 12.52760008094)
set_lower_bound(x[104], -0.637243507584012)
set_upper_bound(x[104], 12.3654908192761)
set_lower_bound(x[105], -0.427600080747962)
set_upper_bound(x[105], 12.52760008094)
set_lower_bound(x[106], -0.637243507584012)
set_upper_bound(x[106], 12.3654908192761)
set_lower_bound(x[107], -0.427600080747962)
set_upper_bound(x[107], 12.52760008094)
set_lower_bound(x[108], -0.637243507584012)
set_upper_bound(x[108], 12.3654908192761)
set_lower_bound(x[109], -0.427600080747962)
set_upper_bound(x[109], 12.52760008094)
set_lower_bound(x[110], -0.637243507584012)
set_upper_bound(x[110], 12.3654908192761)
set_lower_bound(x[111], 0.107133832789813)
set_upper_bound(x[111], 3.4809436396088)
set_lower_bound(x[112], -1.15997520513019)
set_upper_bound(x[112], 3.1615483862488)
set_lower_bound(x[113], 0.107133832789813)
set_upper_bound(x[113], 3.4809436396088)
set_lower_bound(x[114], -1.15997520513019)
set_upper_bound(x[114], 3.1615483862488)
set_lower_bound(x[115], 0.107133832789813)
set_upper_bound(x[115], 3.4809436396088)
set_lower_bound(x[116], -1.15997520513019)
set_upper_bound(x[116], 3.1615483862488)
set_lower_bound(x[117], 0.00241407758981271)
set_upper_bound(x[117], 3.5856633948088)
set_lower_bound(x[118], -1.05525544993019)
set_upper_bound(x[118], 3.0568286310488)
set_lower_bound(x[119], 0.00241407758981271)
set_upper_bound(x[119], 3.5856633948088)
set_lower_bound(x[120], -1.05525544993019)
set_upper_bound(x[120], 3.0568286310488)
set_lower_bound(x[121], 0.00241407758981271)
set_upper_bound(x[121], 3.5856633948088)
set_lower_bound(x[122], -1.05525544993019)
set_upper_bound(x[122], 3.0568286310488)
set_lower_bound(x[123], -0.313171044808798)
set_upper_bound(x[123], 3.16535851721019)
set_lower_bound(x[124], 0.110943963751202)
set_upper_bound(x[124], 4.32774779993019)
set_lower_bound(x[125], -0.313171044808798)
set_upper_bound(x[125], 3.16535851721019)
set_lower_bound(x[126], 0.110943963751202)
set_upper_bound(x[126], 4.32774779993019)
set_lower_bound(x[127], -0.313171044808798)
set_upper_bound(x[127], 3.16535851721019)
set_lower_bound(x[128], 0.110943963751202)
set_upper_bound(x[128], 4.32774779993019)
set_lower_bound(x[129], -0.313171044808798)
set_upper_bound(x[129], 3.16535851721019)
set_lower_bound(x[130], 0.110943963751202)
set_upper_bound(x[130], 4.32774779993019)
set_lower_bound(x[131], -0.313171044808798)
set_upper_bound(x[131], 3.16535851721019)
set_lower_bound(x[132], 0.110943963751202)
set_upper_bound(x[132], 4.32774779993019)
set_lower_bound(x[133], -0.313171044808798)
set_upper_bound(x[133], 3.16535851721019)
set_lower_bound(x[134], 0.110943963751202)
set_upper_bound(x[134], 4.32774779993019)
set_upper_bound(x[135], 1.0)
set_upper_bound(x[136], 1.0)
set_upper_bound(x[137], 1.0)
set_upper_bound(x[138], 1.0)
set_upper_bound(x[139], 1.0)
set_upper_bound(x[140], 1.0)
set_upper_bound(x[141], 1.0)
set_upper_bound(x[142], 1.0)
set_upper_bound(x[143], 1.0)
set_upper_bound(x[144], 1.0)
set_upper_bound(x[145], 1.0)
set_upper_bound(x[146], 1.0)
set_upper_bound(x[147], 1.0)
set_upper_bound(x[148], 1.0)
set_upper_bound(x[149], 1.0)
set_upper_bound(x[150], 1.0)
set_upper_bound(x[151], 1.0)
set_upper_bound(x[152], 1.0)
set_upper_bound(x[153], 1.0)
set_upper_bound(x[154], 1.0)
set_upper_bound(x[155], 1.0)
set_upper_bound(x[156], 1.0)
set_upper_bound(x[157], 1.0)
set_upper_bound(x[158], 1.0)
set_upper_bound(x[159], 1.0)
set_upper_bound(x[160], 1.0)
set_upper_bound(x[161], 1.0)
set_upper_bound(x[162], 1.0)
set_upper_bound(x[163], 1.0)
set_upper_bound(x[164], 1.0)
set_upper_bound(x[165], 1.0)
set_upper_bound(x[166], 1.0)
set_upper_bound(x[167], 1.0)
set_upper_bound(x[168], 1.0)
set_upper_bound(x[169], 1.0)
set_upper_bound(x[170], 1.0)
set_upper_bound(x[171], 1.0)
set_upper_bound(x[172], 1.0)
set_upper_bound(x[173], 1.0)
set_upper_bound(x[174], 1.0)
set_upper_bound(x[175], 1.0)
set_upper_bound(x[176], 1.0)
set_upper_bound(x[177], 1.0)
set_upper_bound(x[178], 1.0)
set_upper_bound(x[179], 1.0)
set_upper_bound(x[180], 1.0)
set_upper_bound(x[181], 1.0)
set_upper_bound(x[182], 1.0)
set_upper_bound(x[183], 1.0)
set_upper_bound(x[184], 1.0)
set_upper_bound(x[185], 1.0)
set_upper_bound(x[186], 1.0)
set_upper_bound(x[187], 1.0)
set_upper_bound(x[188], 1.0)
set_upper_bound(x[189], 1.0)
set_upper_bound(x[190], 1.0)
set_upper_bound(x[191], 1.0)
set_upper_bound(x[192], 1.0)
set_upper_bound(x[193], 1.0)
set_upper_bound(x[194], 1.0)
set_upper_bound(x[195], 1.0)
set_upper_bound(x[196], 1.0)
set_upper_bound(x[197], 1.0)
set_upper_bound(x[198], 1.0)
set_upper_bound(x[199], 1.0)
set_upper_bound(x[200], 1.0)
set_upper_bound(x[201], 1.0)
set_upper_bound(x[202], 1.0)
set_upper_bound(x[203], 1.0)
set_upper_bound(x[204], 1.0)
set_upper_bound(x[205], 1.0)
set_upper_bound(x[206], 1.0)
set_upper_bound(x[207], 1.0)
set_upper_bound(x[208], 1.0)
set_upper_bound(x[209], 1.0)
set_upper_bound(x[210], 1.0)
set_upper_bound(x[211], 1.0)
set_upper_bound(x[212], 1.0)
set_upper_bound(x[213], 1.0)
set_upper_bound(x[214], 1.0)
set_upper_bound(x[215], 1.0)
set_upper_bound(x[216], 1.0)
set_upper_bound(x[217], 1.0)
set_upper_bound(x[218], 1.0)
set_upper_bound(x[219], 1.0)
set_upper_bound(x[220], 1.0)
set_upper_bound(x[221], 1.0)
set_upper_bound(x[222], 1.0)
set_upper_bound(x[223], 1.0)
set_upper_bound(x[224], 1.0)
set_upper_bound(x[225], 1.0)
set_upper_bound(x[226], 1.0)
set_upper_bound(x[227], 1.0)
set_upper_bound(x[228], 1.0)
set_upper_bound(x[229], 1.0)
set_upper_bound(x[230], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[2]-x[3]-x[4]+15*x[8]-x[13]-x[14]-x[16]-x[17] == 15.0)
@constraint(m, e2, x[2]-x[21]-x[22]+x[27]+x[28] == 0.0)
@constraint(m, e3, x[3]-x[23]-x[24]+x[29]+x[30] == 0.0)
@constraint(m, e4, x[4]-3*x[8]-x[25]-x[26]+x[31]+x[32] == 0.0)
@constraint(m, e5, x[5]+x[12]-x[15]-x[33]-x[34]+x[39]+x[40] == 0.0)
@constraint(m, e6, x[6]+x[13]-x[16]-x[35]-x[36]+x[41]+x[42] == 0.0)
@constraint(m, e7, x[7]+x[14]-x[17]-x[37]-x[38]+x[43]+x[44] == 0.0)
@constraint(m, e8, -1.98019801980198*x[9]+x[21]-x[27]+0.99009900990099*x[45]-9.9009900990099*x[48] == -0.99009900990099)
@constraint(m, e9, -1.98019801980198*x[9]+x[22]-x[28]+0.99009900990099*x[46]-9.9009900990099*x[49] == -0.99009900990099)
@constraint(m, e10, -1.98019801980198*x[10]+x[23]-x[29]+0.99009900990099*x[47]-9.9009900990099*x[50] == -0.99009900990099)
@constraint(m, e11, -1.98019801980198*x[10]+x[24]-x[30]+0.99009900990099*x[45]+9.9009900990099*x[48] == -0.99009900990099)
@constraint(m, e12, -1.98019801980198*x[11]+x[25]-x[31]+0.99009900990099*x[46]+9.9009900990099*x[49] == -0.99009900990099)
@constraint(m, e13, -1.98019801980198*x[11]+x[26]-x[32]+0.99009900990099*x[47]+9.9009900990099*x[50] == -0.99009900990099)
@constraint(m, e14, -1.1*x[9]-1.1*x[10]+x[51]-12.1*b[66]-x[75] == -13.31)
@constraint(m, e15, -1.1*x[9]-1.1*x[11]+x[52]-12.1*b[67]-x[76] == -13.31)
@constraint(m, e16, -1.1*x[10]-1.1*x[11]+x[53]-12.1*b[68]-x[77] == -13.31)
@constraint(m, e17, -0.9*x[9]-0.9*x[10]+x[51]-12.1*b[66]-x[78] == -12.91)
@constraint(m, e18, -0.9*x[9]-0.9*x[11]+x[52]-12.1*b[67]-x[79] == -12.91)
@constraint(m, e19, -0.9*x[10]-0.9*x[11]+x[53]-12.1*b[68]-x[80] == -12.91)
@constraint(m, e20, -1.1*x[9]-0.9*x[10]+x[51]-12.1*b[66]+x[81] == -13.09)
@constraint(m, e21, -1.1*x[9]-0.9*x[11]+x[52]-12.1*b[67]+x[82] == -13.09)
@constraint(m, e22, -1.1*x[10]-0.9*x[11]+x[53]-12.1*b[68]+x[83] == -13.09)
@constraint(m, e23, -0.9*x[9]-1.1*x[10]+x[51]-12.1*b[66]+x[84] == -13.09)
@constraint(m, e24, -0.9*x[9]-1.1*x[11]+x[52]-12.1*b[67]+x[85] == -13.09)
@constraint(m, e25, -0.9*x[10]-1.1*x[11]+x[53]-12.1*b[68]+x[86] == -13.09)
@constraint(m, e26, x[45]-x[51]-1.21*x[54]-12.1*b[60]-x[87] == -13.31)
@constraint(m, e27, x[45]-0.866025403583588*x[51]-1.21*x[54]-12.1*b[61]-x[88] == -13.1478907383361)
@constraint(m, e28, x[46]-x[52]-1.21*x[55]-12.1*b[62]-x[89] == -13.31)
@constraint(m, e29, x[46]-0.866025403583588*x[52]-1.21*x[55]-12.1*b[63]-x[90] == -13.1478907383361)
@constraint(m, e30, x[47]-x[53]-1.21*x[56]-12.1*b[64]-x[91] == -13.31)
@constraint(m, e31, x[47]-0.866025403583588*x[53]-1.21*x[56]-12.1*b[65]-x[92] == -13.1478907383361)
@constraint(m, e32, x[45]-0.965925826237084*x[51]-0.81*x[54]-12.1*b[60]-x[93] == -12.882399919252)
@constraint(m, e33, x[45]-0.707106780760479*x[51]-0.81*x[54]-12.1*b[61]-x[94] == -12.672756492416)
@constraint(m, e34, x[46]-0.965925826237084*x[52]-0.81*x[55]-12.1*b[62]-x[95] == -12.882399919252)
@constraint(m, e35, x[46]-0.707106780760479*x[52]-0.81*x[55]-12.1*b[63]-x[96] == -12.672756492416)
@constraint(m, e36, x[47]-0.965925826237084*x[53]-0.81*x[56]-12.1*b[64]-x[97] == -12.882399919252)
@constraint(m, e37, x[47]-0.707106780760479*x[53]-0.81*x[56]-12.1*b[65]-x[98] == -12.672756492416)
@constraint(m, e38, x[45]-x[51]-0.81*x[54]+12.1*b[60]+x[99] == 11.29)
@constraint(m, e39, x[45]-0.866025403583588*x[51]-0.81*x[54]+12.1*b[61]+x[100] == 11.3985194230973)
@constraint(m, e40, x[46]-x[52]-0.81*x[55]+12.1*b[62]+x[101] == 11.29)
@constraint(m, e41, x[46]-0.866025403583588*x[52]-0.81*x[55]+12.1*b[63]+x[102] == 11.3985194230973)
@constraint(m, e42, x[47]-x[53]-0.81*x[56]+12.1*b[64]+x[103] == 11.29)
@constraint(m, e43, x[47]-0.866025403583588*x[53]-0.81*x[56]+12.1*b[65]+x[104] == 11.3985194230973)
@constraint(m, e44, x[45]-0.965925826237084*x[51]-1.21*x[54]+12.1*b[60]+x[105] == 10.9312297502531)
@constraint(m, e45, x[45]-0.707106780760479*x[51]-1.21*x[54]+12.1*b[61]+x[106] == 11.2444007952798)
@constraint(m, e46, x[46]-0.965925826237084*x[52]-1.21*x[55]+12.1*b[62]+x[107] == 10.9312297502531)
@constraint(m, e47, x[46]-0.707106780760479*x[52]-1.21*x[55]+12.1*b[63]+x[108] == 11.2444007952798)
@constraint(m, e48, x[47]-0.965925826237084*x[53]-1.21*x[56]+12.1*b[64]+x[109] == 10.9312297502531)
@constraint(m, e49, x[47]-0.707106780760479*x[53]-1.21*x[56]+12.1*b[65]+x[110] == 11.2444007952798)
@constraint(m, e50, x[48]-1.21*x[57]-3.1677725948*b[60]-x[111] == -3.1677725948)
@constraint(m, e51, x[48]-0.785398164*x[51]-1.21*x[57]-3.1677725948*b[61]-x[112] == -4.11810437324)
@constraint(m, e52, x[49]-1.21*x[58]-3.1677725948*b[62]-x[113] == -3.1677725948)
@constraint(m, e53, x[49]-0.785398164*x[52]-1.21*x[58]-3.1677725948*b[63]-x[114] == -4.11810437324)
@constraint(m, e54, x[50]-1.21*x[59]-3.1677725948*b[64]-x[115] == -3.1677725948)
@constraint(m, e55, x[50]-0.785398164*x[53]-1.21*x[59]-3.1677725948*b[65]-x[116] == -4.11810437324)
@constraint(m, e56, x[48]+0.261799388*x[51]-0.81*x[57]-3.1677725948*b[60]-x[117] == -2.95571509052)
@constraint(m, e57, x[48]-0.523598776*x[51]-0.81*x[57]-3.1677725948*b[61]-x[118] == -3.59188760336)
@constraint(m, e58, x[49]+0.261799388*x[52]-0.81*x[58]-3.1677725948*b[62]-x[119] == -2.95571509052)
@constraint(m, e59, x[49]-0.523598776*x[52]-0.81*x[58]-3.1677725948*b[63]-x[120] == -3.59188760336)
@constraint(m, e60, x[50]+0.261799388*x[53]-0.81*x[59]-3.1677725948*b[64]-x[121] == -2.95571509052)
@constraint(m, e61, x[50]-0.523598776*x[53]-0.81*x[59]-3.1677725948*b[65]-x[122] == -3.59188760336)
@constraint(m, e62, x[48]-0.81*x[57]+3.1677725948*b[60]+x[123] == 3.1677725948)
@constraint(m, e63, x[48]-0.785398164*x[51]-0.81*x[57]+3.1677725948*b[61]+x[124] == 2.53160008196)
@constraint(m, e64, x[49]-0.81*x[58]+3.1677725948*b[62]+x[125] == 3.1677725948)
@constraint(m, e65, x[49]-0.785398164*x[52]-0.81*x[58]+3.1677725948*b[63]+x[126] == 2.53160008196)
@constraint(m, e66, x[50]-0.81*x[59]+3.1677725948*b[64]+x[127] == 3.1677725948)
@constraint(m, e67, x[50]-0.785398164*x[53]-0.81*x[59]+3.1677725948*b[65]+x[128] == 2.53160008196)
@constraint(m, e68, x[48]+0.261799388*x[51]-1.21*x[57]+3.1677725948*b[60]+x[129] == 3.48454985428)
@constraint(m, e69, x[48]-0.523598776*x[51]-1.21*x[57]+3.1677725948*b[61]+x[130] == 2.53421807584)
@constraint(m, e70, x[49]+0.261799388*x[52]-1.21*x[58]+3.1677725948*b[62]+x[131] == 3.48454985428)
@constraint(m, e71, x[49]-0.523598776*x[52]-1.21*x[58]+3.1677725948*b[63]+x[132] == 2.53421807584)
@constraint(m, e72, x[50]+0.261799388*x[53]-1.21*x[59]+3.1677725948*b[64]+x[133] == 3.48454985428)
@constraint(m, e73, x[50]-0.523598776*x[53]-1.21*x[59]+3.1677725948*b[65]+x[134] == 2.53421807584)
@constraint(m, e74, b[60]+b[61] == 1.0)
@constraint(m, e75, b[62]+b[63] == 1.0)
@constraint(m, e76, b[64]+b[65] == 1.0)
@constraint(m, e77, b[66] == 1.0)
@constraint(m, e78, b[67] == 1.0)
@constraint(m, e79, b[68] == 1.0)
@constraint(m, e80, -x[54]+0.25037682000755*x[57]-x[135] == -1.03147432424736)
@constraint(m, e81, -x[54]+0.233442435959931*x[57]-x[136] == -1.0273364736341)
@constraint(m, e82, -x[54]+0.216436863805585*x[57]-x[137] == -1.02347803170138)
@constraint(m, e83, -x[54]+0.199365369008894*x[57]-x[138] == -1.01990258619619)
@constraint(m, e84, -x[54]+0.182233232433562*x[57]-x[139] == -1.01661345208883)
@constraint(m, e85, -x[54]+0.16504553983283*x[57]-x[140] == -1.01361363382523)
@constraint(m, e86, -x[54]+0.147807522626243*x[57]-x[141] == -1.01090589240877)
@constraint(m, e87, -x[54]+0.130524545168899*x[57]-x[142] == -1.0084927335221)
@constraint(m, e88, -x[54]+0.113201732188879*x[57]-x[143] == -1.0063763526604)
@constraint(m, e89, -x[54]+0.0958445547120885*x[57]-x[144] == -1.00455871328753)
@constraint(m, e90, -x[54]+0.0784580881097905*x[57]-x[145] == -1.00304145784308)
@constraint(m, e91, -x[54]+0.0610477954531398*x[57]-x[146] == -1.00182599012209)
@constraint(m, e92, -x[54]+0.0436188173773327*x[57]-x[147] == -1.00091341095638)
@constraint(m, e93, -x[54]+0.0261766089743986*x[57]-x[148] == -1.00030456302618)
@constraint(m, e94, -x[54]+0.0137261476236033*x[57]-x[149] == -1.00008726147624)
@constraint(m, e95, -x[54]+0.00499999999999945*x[57]-x[150] == -1.0)
@constraint(m, e96, -x[54]-0.00499999999999945*x[57]-x[151] == -1.0)
@constraint(m, e97, -x[54]-0.0137261476236033*x[57]-x[152] == -1.00008726147624)
@constraint(m, e98, -x[54]-0.0261766089743986*x[57]-x[153] == -1.00030456302618)
@constraint(m, e99, -x[54]-0.0436188173773327*x[57]-x[154] == -1.00091341095638)
@constraint(m, e100, -x[54]-0.0610477954531398*x[57]-x[155] == -1.00182599012209)
@constraint(m, e101, -x[54]-0.0784580881097905*x[57]-x[156] == -1.00304145784308)
@constraint(m, e102, -x[54]-0.0958445547120885*x[57]-x[157] == -1.00455871328753)
@constraint(m, e103, -x[54]-0.113201732188879*x[57]-x[158] == -1.0063763526604)
@constraint(m, e104, -x[54]-0.130524545168899*x[57]-x[159] == -1.0084927335221)
@constraint(m, e105, -x[54]-0.147807522626243*x[57]-x[160] == -1.01090589240877)
@constraint(m, e106, -x[54]-0.16504553983283*x[57]-x[161] == -1.01361363382523)
@constraint(m, e107, -x[54]-0.182233232433562*x[57]-x[162] == -1.01661345208883)
@constraint(m, e108, -x[54]-0.199365369008894*x[57]-x[163] == -1.01990258619619)
@constraint(m, e109, -x[54]-0.216436863805585*x[57]-x[164] == -1.02347803170138)
@constraint(m, e110, -x[54]-0.233442435959931*x[57]-x[165] == -1.0273364736341)
@constraint(m, e111, -x[54]-0.25037682000755*x[57]-x[166] == -1.03147432424736)
@constraint(m, e112, -x[55]+0.25037682000755*x[58]-x[167] == -1.03147432424736)
@constraint(m, e113, -x[55]+0.233442435959931*x[58]-x[168] == -1.0273364736341)
@constraint(m, e114, -x[55]+0.216436863805585*x[58]-x[169] == -1.02347803170138)
@constraint(m, e115, -x[55]+0.199365369008894*x[58]-x[170] == -1.01990258619619)
@constraint(m, e116, -x[55]+0.182233232433562*x[58]-x[171] == -1.01661345208883)
@constraint(m, e117, -x[55]+0.16504553983283*x[58]-x[172] == -1.01361363382523)
@constraint(m, e118, -x[55]+0.147807522626243*x[58]-x[173] == -1.01090589240877)
@constraint(m, e119, -x[55]+0.130524545168899*x[58]-x[174] == -1.0084927335221)
@constraint(m, e120, -x[55]+0.113201732188879*x[58]-x[175] == -1.0063763526604)
@constraint(m, e121, -x[55]+0.0958445547120885*x[58]-x[176] == -1.00455871328753)
@constraint(m, e122, -x[55]+0.0784580881097905*x[58]-x[177] == -1.00304145784308)
@constraint(m, e123, -x[55]+0.0610477954531398*x[58]-x[178] == -1.00182599012209)
@constraint(m, e124, -x[55]+0.0436188173773327*x[58]-x[179] == -1.00091341095638)
@constraint(m, e125, -x[55]+0.0261766089743986*x[58]-x[180] == -1.00030456302618)
@constraint(m, e126, -x[55]+0.0137261476236033*x[58]-x[181] == -1.00008726147624)
@constraint(m, e127, -x[55]+0.00499999999999945*x[58]-x[182] == -1.0)
@constraint(m, e128, -x[55]-0.00499999999999945*x[58]-x[183] == -1.0)
@constraint(m, e129, -x[55]-0.0137261476236033*x[58]-x[184] == -1.00008726147624)
@constraint(m, e130, -x[55]-0.0261766089743986*x[58]-x[185] == -1.00030456302618)
@constraint(m, e131, -x[55]-0.0436188173773327*x[58]-x[186] == -1.00091341095638)
@constraint(m, e132, -x[55]-0.0610477954531398*x[58]-x[187] == -1.00182599012209)
@constraint(m, e133, -x[55]-0.0784580881097905*x[58]-x[188] == -1.00304145784308)
@constraint(m, e134, -x[55]-0.0958445547120885*x[58]-x[189] == -1.00455871328753)
@constraint(m, e135, -x[55]-0.113201732188879*x[58]-x[190] == -1.0063763526604)
@constraint(m, e136, -x[55]-0.130524545168899*x[58]-x[191] == -1.0084927335221)
@constraint(m, e137, -x[55]-0.147807522626243*x[58]-x[192] == -1.01090589240877)
@constraint(m, e138, -x[55]-0.16504553983283*x[58]-x[193] == -1.01361363382523)
@constraint(m, e139, -x[55]-0.182233232433562*x[58]-x[194] == -1.01661345208883)
@constraint(m, e140, -x[55]-0.199365369008894*x[58]-x[195] == -1.01990258619619)
@constraint(m, e141, -x[55]-0.216436863805585*x[58]-x[196] == -1.02347803170138)
@constraint(m, e142, -x[55]-0.233442435959931*x[58]-x[197] == -1.0273364736341)
@constraint(m, e143, -x[55]-0.25037682000755*x[58]-x[198] == -1.03147432424736)
@constraint(m, e144, -x[56]+0.25037682000755*x[59]-x[199] == -1.03147432424736)
@constraint(m, e145, -x[56]+0.233442435959931*x[59]-x[200] == -1.0273364736341)
@constraint(m, e146, -x[56]+0.216436863805585*x[59]-x[201] == -1.02347803170138)
@constraint(m, e147, -x[56]+0.199365369008894*x[59]-x[202] == -1.01990258619619)
@constraint(m, e148, -x[56]+0.182233232433562*x[59]-x[203] == -1.01661345208883)
@constraint(m, e149, -x[56]+0.16504553983283*x[59]-x[204] == -1.01361363382523)
@constraint(m, e150, -x[56]+0.147807522626243*x[59]-x[205] == -1.01090589240877)
@constraint(m, e151, -x[56]+0.130524545168899*x[59]-x[206] == -1.0084927335221)
@constraint(m, e152, -x[56]+0.113201732188879*x[59]-x[207] == -1.0063763526604)
@constraint(m, e153, -x[56]+0.0958445547120885*x[59]-x[208] == -1.00455871328753)
@constraint(m, e154, -x[56]+0.0784580881097905*x[59]-x[209] == -1.00304145784308)
@constraint(m, e155, -x[56]+0.0610477954531398*x[59]-x[210] == -1.00182599012209)
@constraint(m, e156, -x[56]+0.0436188173773327*x[59]-x[211] == -1.00091341095638)
@constraint(m, e157, -x[56]+0.0261766089743986*x[59]-x[212] == -1.00030456302618)
@constraint(m, e158, -x[56]+0.0137261476236033*x[59]-x[213] == -1.00008726147624)
@constraint(m, e159, -x[56]+0.00499999999999945*x[59]-x[214] == -1.0)
@constraint(m, e160, -x[56]-0.00499999999999945*x[59]-x[215] == -1.0)
@constraint(m, e161, -x[56]-0.0137261476236033*x[59]-x[216] == -1.00008726147624)
@constraint(m, e162, -x[56]-0.0261766089743986*x[59]-x[217] == -1.00030456302618)
@constraint(m, e163, -x[56]-0.0436188173773327*x[59]-x[218] == -1.00091341095638)
@constraint(m, e164, -x[56]-0.0610477954531398*x[59]-x[219] == -1.00182599012209)
@constraint(m, e165, -x[56]-0.0784580881097905*x[59]-x[220] == -1.00304145784308)
@constraint(m, e166, -x[56]-0.0958445547120885*x[59]-x[221] == -1.00455871328753)
@constraint(m, e167, -x[56]-0.113201732188879*x[59]-x[222] == -1.0063763526604)
@constraint(m, e168, -x[56]-0.130524545168899*x[59]-x[223] == -1.0084927335221)
@constraint(m, e169, -x[56]-0.147807522626243*x[59]-x[224] == -1.01090589240877)
@constraint(m, e170, -x[56]-0.16504553983283*x[59]-x[225] == -1.01361363382523)
@constraint(m, e171, -x[56]-0.182233232433562*x[59]-x[226] == -1.01661345208883)
@constraint(m, e172, -x[56]-0.199365369008894*x[59]-x[227] == -1.01990258619619)
@constraint(m, e173, -x[56]-0.216436863805585*x[59]-x[228] == -1.02347803170138)
@constraint(m, e174, -x[56]-0.233442435959931*x[59]-x[229] == -1.0273364736341)
@constraint(m, e175, -x[56]-0.25037682000755*x[59]-x[230] == -1.03147432424736)
@constraint(m, e176, -18.3919801980198*x[9]+x[33]-x[39]+9.9009900990099*x[45]+0.99009900990099*x[48] == -9.1959900990099)
@constraint(m, e177, -19.8019801980198*x[9]+x[34]-x[40]+9.9009900990099*x[46]+0.99009900990099*x[49] == -9.9009900990099)
@constraint(m, e178, -19.8019801980198*x[10]+x[35]-x[41]+9.9009900990099*x[47]+0.99009900990099*x[50] == -9.9009900990099)
@constraint(m, e179, -18.3919801980198*x[10]+x[36]-x[42]+9.9009900990099*x[45]-0.99009900990099*x[48] == -9.1959900990099)
@constraint(m, e180, -19.8019801980198*x[11]+x[37]-x[43]+9.9009900990099*x[46]-0.99009900990099*x[49] == -9.9009900990099)
@constraint(m, e181, -19.8019801980198*x[11]+x[38]-x[44]+9.9009900990099*x[47]-0.99009900990099*x[50] == -9.9009900990099)
@constraint(m, e182, x[21]+x[27] >= -5.0)
@constraint(m, e183, x[22]+x[28] >= -5.0)
@constraint(m, e184, x[23]+x[29] >= -5.0)
@constraint(m, e185, x[24]+x[30] >= -5.0)
@constraint(m, e186, x[25]+x[31] >= -5.0)
@constraint(m, e187, x[26]+x[32] >= -5.0)
@constraint(m, e188, x[21]+x[27] <= 5.0)
@constraint(m, e189, x[22]+x[28] <= 5.0)
@constraint(m, e190, x[23]+x[29] <= 5.0)
@constraint(m, e191, x[24]+x[30] <= 5.0)
@constraint(m, e192, x[25]+x[31] <= 5.0)
@constraint(m, e193, x[26]+x[32] <= 5.0)
@constraint(m, e194, -x[18]+x[19]+x[57] == 0.0)
@constraint(m, e195, -x[18]+x[20]+x[58] == 0.0)
@constraint(m, e196, -x[19]+x[20]+x[59] == 0.0)
@constraint(m, e197, x[18] == 0.0)
@constraint(m, e198, 0.9875*x[21]+x[24]-0.9875*x[27]-x[30] >= 0.0)
@constraint(m, e199, 0.975*x[21]+x[24]-0.975*x[27]-x[30] >= -0.015625)
@constraint(m, e200, 0.95*x[21]+x[24]-0.95*x[27]-x[30] >= -0.0625)
@constraint(m, e201, 0.925*x[21]+x[24]-0.925*x[27]-x[30] >= -0.140625)
@constraint(m, e202, 0.9*x[21]+x[24]-0.9*x[27]-x[30] >= -0.25)
@constraint(m, e203, 0.9875*x[22]+x[25]-0.9875*x[28]-x[31] >= 0.0)
@constraint(m, e204, 0.975*x[22]+x[25]-0.975*x[28]-x[31] >= -0.015625)
@constraint(m, e205, 0.95*x[22]+x[25]-0.95*x[28]-x[31] >= -0.0625)
@constraint(m, e206, 0.925*x[22]+x[25]-0.925*x[28]-x[31] >= -0.140625)
@constraint(m, e207, 0.9*x[22]+x[25]-0.9*x[28]-x[31] >= -0.25)
@constraint(m, e208, 0.9875*x[23]+x[26]-0.9875*x[29]-x[32] >= 0.0)
@constraint(m, e209, 0.975*x[23]+x[26]-0.975*x[29]-x[32] >= -0.015625)
@constraint(m, e210, 0.95*x[23]+x[26]-0.95*x[29]-x[32] >= -0.0625)
@constraint(m, e211, 0.925*x[23]+x[26]-0.925*x[29]-x[32] >= -0.140625)
@constraint(m, e212, 0.9*x[23]+x[26]-0.9*x[29]-x[32] >= -0.25)
@constraint(m, e213, x[21]+0.9875*x[24]-x[27]-0.9875*x[30] >= 0.0)
@constraint(m, e214, x[21]+0.975*x[24]-x[27]-0.975*x[30] >= -0.015625)
@constraint(m, e215, x[21]+0.95*x[24]-x[27]-0.95*x[30] >= -0.0625)
@constraint(m, e216, x[21]+0.925*x[24]-x[27]-0.925*x[30] >= -0.140625)
@constraint(m, e217, x[21]+0.9*x[24]-x[27]-0.9*x[30] >= -0.25)
@constraint(m, e218, x[22]+0.9875*x[25]-x[28]-0.9875*x[31] >= 0.0)
@constraint(m, e219, x[22]+0.975*x[25]-x[28]-0.975*x[31] >= -0.015625)
@constraint(m, e220, x[22]+0.95*x[25]-x[28]-0.95*x[31] >= -0.0625)
@constraint(m, e221, x[22]+0.925*x[25]-x[28]-0.925*x[31] >= -0.140625)
@constraint(m, e222, x[22]+0.9*x[25]-x[28]-0.9*x[31] >= -0.25)
@constraint(m, e223, x[23]+0.9875*x[26]-x[29]-0.9875*x[32] >= 0.0)
@constraint(m, e224, x[23]+0.975*x[26]-x[29]-0.975*x[32] >= -0.015625)
@constraint(m, e225, x[23]+0.95*x[26]-x[29]-0.95*x[32] >= -0.0625)
@constraint(m, e226, x[23]+0.925*x[26]-x[29]-0.925*x[32] >= -0.140625)
@constraint(m, e227, x[23]+0.9*x[26]-x[29]-0.9*x[32] >= -0.25)
@constraint(m, e228, x[9]-b[69]-1.1*b[70] <= 0.0)
@constraint(m, e229, x[10]-b[71]-1.1*b[72] <= 0.0)
@constraint(m, e230, x[11]-b[73]-1.1*b[74] <= 0.0)
@constraint(m, e231, x[9]-0.9*b[69]-b[70] >= 0.0)
@constraint(m, e232, x[10]-0.9*b[71]-b[72] >= 0.0)
@constraint(m, e233, x[11]-0.9*b[73]-b[74] >= 0.0)
@constraint(m, e234, b[69]+b[70] == 1.0)
@constraint(m, e235, b[71]+b[72] == 1.0)
@constraint(m, e236, b[73]+b[74] == 1.0)
@constraint(m, e237, -0.9*x[9]+x[51] >= 0.0)
@constraint(m, e238, -0.9*x[9]+x[52] >= 0.0)
@constraint(m, e239, -0.9*x[10]+x[53] >= 0.0)
@constraint(m, e240, -1.1*x[9]+x[51] <= 0.0)
@constraint(m, e241, -1.1*x[9]+x[52] <= 0.0)
@constraint(m, e242, -1.1*x[10]+x[53] <= 0.0)
@constraint(m, e243, -0.9*x[10]+x[51] >= 0.0)
@constraint(m, e244, -0.9*x[11]+x[52] >= 0.0)
@constraint(m, e245, -0.9*x[11]+x[53] >= 0.0)
@constraint(m, e246, -1.1*x[10]+x[51] <= 0.0)
@constraint(m, e247, -1.1*x[11]+x[52] <= 0.0)
@constraint(m, e248, -1.1*x[11]+x[53] <= 0.0)
@constraint(m, e249, x[45]-0.965925826*x[51] >= 0.0)
@constraint(m, e250, x[46]-0.965925826*x[52] >= 0.0)
@constraint(m, e251, x[47]-0.965925826*x[53] >= 0.0)
@constraint(m, e252, x[45]-x[51] <= 0.0)
@constraint(m, e253, x[46]-x[52] <= 0.0)
@constraint(m, e254, x[47]-x[53] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
