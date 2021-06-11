using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423]
@variable(m, x[x_Idx])
set_lower_bound(x[346], 0.0)
set_lower_bound(x[287], 0.0)
set_lower_bound(x[328], 0.0)
set_lower_bound(x[363], 0.0)
set_lower_bound(x[308], 0.0)
set_lower_bound(x[299], 0.0)
set_lower_bound(x[376], 0.0)
set_lower_bound(x[241], 0.0)
set_lower_bound(x[303], 0.0)
set_lower_bound(x[251], 0.0)
set_lower_bound(x[265], 0.0)
set_lower_bound(x[312], 0.0)
set_lower_bound(x[243], 0.0)
set_lower_bound(x[327], 0.0)
set_lower_bound(x[391], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[374], 0.0)
set_lower_bound(x[250], 0.0)
set_lower_bound(x[248], 0.0)
set_lower_bound(x[319], 0.0)
set_lower_bound(x[405], 0.0)
set_lower_bound(x[289], 0.0)
set_lower_bound(x[384], 0.0)
set_lower_bound(x[273], 0.0)
set_lower_bound(x[365], 0.0)
set_lower_bound(x[332], 0.0)
set_lower_bound(x[421], 0.0)
set_lower_bound(x[260], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[307], 0.0)
set_lower_bound(x[321], 0.0)
set_lower_bound(x[383], 0.0)
set_lower_bound(x[298], 0.0)
set_lower_bound(x[238], 0.0)
set_lower_bound(x[375], 0.0)
set_lower_bound(x[402], 0.0)
set_lower_bound(x[292], 0.0)
set_lower_bound(x[380], 0.0)
set_lower_bound(x[278], 0.0)
set_lower_bound(x[277], 0.0)
set_lower_bound(x[244], 0.0)
set_lower_bound(x[349], 0.0)
set_lower_bound(x[253], 0.0)
set_lower_bound(x[387], 0.0)
set_lower_bound(x[351], 0.0)
set_lower_bound(x[414], 0.0)
set_lower_bound(x[291], 0.0)
set_lower_bound(x[361], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[264], 0.0)
set_lower_bound(x[318], 0.0)
set_lower_bound(x[386], 0.0)
set_lower_bound(x[407], 0.0)
set_lower_bound(x[362], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[259], 0.0)
set_lower_bound(x[261], 0.0)
set_lower_bound(x[347], 0.0)
set_lower_bound(x[420], 0.0)
set_lower_bound(x[392], 0.0)
set_lower_bound(x[232], 0.0)
set_lower_bound(x[285], 0.0)
set_lower_bound(x[306], 0.0)
set_lower_bound(x[290], 0.0)
set_lower_bound(x[397], 0.0)
set_lower_bound(x[360], 0.0)
set_lower_bound(x[234], 0.0)
set_lower_bound(x[329], 0.0)
set_lower_bound(x[406], 0.0)
set_lower_bound(x[311], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[400], 0.0)
set_lower_bound(x[326], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[324], 0.0)
set_lower_bound(x[330], 0.0)
set_lower_bound(x[394], 0.0)
set_lower_bound(x[313], 0.0)
set_lower_bound(x[258], 0.0)
set_lower_bound(x[282], 0.0)
set_lower_bound(x[295], 0.0)
set_lower_bound(x[281], 0.0)
set_lower_bound(x[344], 0.0)
set_lower_bound(x[288], 0.0)
set_lower_bound(x[366], 0.0)
set_lower_bound(x[412], 0.0)
set_lower_bound(x[263], 0.0)
set_lower_bound(x[309], 0.0)
set_lower_bound(x[371], 0.0)
set_lower_bound(x[353], 0.0)
set_lower_bound(x[331], 0.0)
set_lower_bound(x[399], 0.0)
set_lower_bound(x[390], 0.0)
set_lower_bound(x[252], 0.0)
set_lower_bound(x[240], 0.0)
set_lower_bound(x[345], 0.0)
set_lower_bound(x[284], 0.0)
set_lower_bound(x[378], 0.0)
set_lower_bound(x[317], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[413], 0.0)
set_lower_bound(x[279], 0.0)
set_lower_bound(x[409], 0.0)
set_lower_bound(x[325], 0.0)
set_lower_bound(x[280], 0.0)
set_lower_bound(x[316], 0.0)
set_lower_bound(x[314], 0.0)
set_lower_bound(x[305], 0.0)
set_lower_bound(x[358], 0.0)
set_lower_bound(x[338], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[350], 0.0)
set_lower_bound(x[382], 0.0)
set_lower_bound(x[404], 0.0)
set_lower_bound(x[343], 0.0)
set_lower_bound(x[372], 0.0)
set_lower_bound(x[385], 0.0)
set_lower_bound(x[410], 0.0)
set_lower_bound(x[416], 0.0)
set_lower_bound(x[257], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[348], 0.0)
set_lower_bound(x[335], 0.0)
set_lower_bound(x[359], 0.0)
set_lower_bound(x[393], 0.0)
set_lower_bound(x[272], 0.0)
set_lower_bound(x[334], 0.0)
set_lower_bound(x[270], 0.0)
set_lower_bound(x[274], 0.0)
set_lower_bound(x[296], 0.0)
set_lower_bound(x[267], 0.0)
set_lower_bound(x[302], 0.0)
set_lower_bound(x[297], 0.0)
set_lower_bound(x[422], 0.0)
set_lower_bound(x[249], 0.0)
set_lower_bound(x[310], 0.0)
set_lower_bound(x[396], 0.0)
set_lower_bound(x[356], 0.0)
set_lower_bound(x[268], 0.0)
set_lower_bound(x[276], 0.0)
set_lower_bound(x[275], 0.0)
set_lower_bound(x[233], 0.0)
set_lower_bound(x[336], 0.0)
set_lower_bound(x[357], 0.0)
set_lower_bound(x[419], 0.0)
set_lower_bound(x[401], 0.0)
set_lower_bound(x[236], 0.0)
set_lower_bound(x[403], 0.0)
set_lower_bound(x[370], 0.0)
set_lower_bound(x[254], 0.0)
set_lower_bound(x[381], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[339], 0.0)
set_lower_bound(x[388], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[271], 0.0)
set_lower_bound(x[323], 0.0)
set_lower_bound(x[369], 0.0)
set_lower_bound(x[239], 0.0)
set_lower_bound(x[294], 0.0)
set_lower_bound(x[368], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[352], 0.0)
set_lower_bound(x[373], 0.0)
set_lower_bound(x[367], 0.0)
set_lower_bound(x[389], 0.0)
set_lower_bound(x[364], 0.0)
set_lower_bound(x[415], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[395], 0.0)
set_lower_bound(x[340], 0.0)
set_lower_bound(x[256], 0.0)
set_lower_bound(x[355], 0.0)
set_lower_bound(x[266], 0.0)
set_lower_bound(x[269], 0.0)
set_lower_bound(x[245], 0.0)
set_lower_bound(x[320], 0.0)
set_lower_bound(x[333], 0.0)
set_lower_bound(x[293], 0.0)
set_lower_bound(x[283], 0.0)
set_lower_bound(x[337], 0.0)
set_lower_bound(x[377], 0.0)
set_lower_bound(x[322], 0.0)
set_lower_bound(x[418], 0.0)
set_lower_bound(x[417], 0.0)
set_lower_bound(x[237], 0.0)
set_lower_bound(x[304], 0.0)
set_lower_bound(x[247], 0.0)
set_lower_bound(x[408], 0.0)
set_lower_bound(x[341], 0.0)
set_lower_bound(x[286], 0.0)
set_lower_bound(x[300], 0.0)
set_lower_bound(x[235], 0.0)
set_lower_bound(x[398], 0.0)
set_lower_bound(x[246], 0.0)
set_lower_bound(x[354], 0.0)
set_lower_bound(x[315], 0.0)
set_lower_bound(x[242], 0.0)
set_lower_bound(x[411], 0.0)
set_lower_bound(x[255], 0.0)
set_lower_bound(x[262], 0.0)
set_lower_bound(x[342], 0.0)
set_lower_bound(x[301], 0.0)
set_lower_bound(x[379], 0.0)
set_lower_bound(x[229], 0.0)
set_upper_bound(x[217], 200000.0)
set_upper_bound(x[218], 200000.0)
set_upper_bound(x[219], 200000.0)
set_upper_bound(x[220], 200000.0)
set_upper_bound(x[221], 200000.0)
set_upper_bound(x[222], 200000.0)
set_upper_bound(x[223], 200000.0)
set_upper_bound(x[224], 200000.0)
set_upper_bound(x[225], 100000.0)
set_upper_bound(x[226], 100000.0)
set_upper_bound(x[227], 100000.0)
set_upper_bound(x[228], 100000.0)
set_upper_bound(x[229], 100000.0)
set_upper_bound(x[230], 100000.0)
set_upper_bound(x[231], 100000.0)
set_upper_bound(x[232], 100000.0)
set_upper_bound(x[233], 225000.0)
set_upper_bound(x[234], 225000.0)
set_upper_bound(x[235], 225000.0)
set_upper_bound(x[236], 225000.0)
set_upper_bound(x[237], 225000.0)
set_upper_bound(x[238], 225000.0)
set_upper_bound(x[239], 225000.0)
set_upper_bound(x[240], 225000.0)
set_upper_bound(x[241], 300000.0)
set_upper_bound(x[242], 300000.0)
set_upper_bound(x[243], 300000.0)
set_upper_bound(x[244], 300000.0)
set_upper_bound(x[245], 300000.0)
set_upper_bound(x[246], 300000.0)
set_upper_bound(x[247], 300000.0)
set_upper_bound(x[248], 300000.0)
set_upper_bound(x[249], 125000.0)
set_upper_bound(x[250], 125000.0)
set_upper_bound(x[251], 125000.0)
set_upper_bound(x[252], 125000.0)
set_upper_bound(x[253], 125000.0)
set_upper_bound(x[254], 125000.0)
set_upper_bound(x[255], 125000.0)
set_upper_bound(x[256], 125000.0)
set_upper_bound(x[257], 150000.0)
set_upper_bound(x[258], 150000.0)
set_upper_bound(x[259], 150000.0)
set_upper_bound(x[260], 150000.0)
set_upper_bound(x[261], 150000.0)
set_upper_bound(x[262], 150000.0)
set_upper_bound(x[263], 150000.0)
set_upper_bound(x[264], 150000.0)
set_upper_bound(x[265], 250000.0)
set_upper_bound(x[266], 250000.0)
set_upper_bound(x[267], 250000.0)
set_upper_bound(x[268], 250000.0)
set_upper_bound(x[269], 250000.0)
set_upper_bound(x[270], 250000.0)
set_upper_bound(x[271], 250000.0)
set_upper_bound(x[272], 250000.0)
set_upper_bound(x[273], 112500.0)
set_upper_bound(x[274], 112500.0)
set_upper_bound(x[275], 112500.0)
set_upper_bound(x[276], 112500.0)
set_upper_bound(x[277], 112500.0)
set_upper_bound(x[278], 112500.0)
set_upper_bound(x[279], 112500.0)
set_upper_bound(x[280], 112500.0)
set_upper_bound(x[281], 275000.0)
set_upper_bound(x[282], 275000.0)
set_upper_bound(x[283], 275000.0)
set_upper_bound(x[284], 275000.0)
set_upper_bound(x[285], 275000.0)
set_upper_bound(x[286], 275000.0)
set_upper_bound(x[287], 275000.0)
set_upper_bound(x[288], 275000.0)
set_lower_bound(x[289], 0.0)
set_upper_bound(x[289], 0.0)
set_lower_bound(x[290], 0.0)
set_upper_bound(x[290], 0.0)
set_lower_bound(x[291], 0.0)
set_upper_bound(x[291], 0.0)
set_lower_bound(x[292], 0.0)
set_upper_bound(x[292], 0.0)
set_lower_bound(x[293], 0.0)
set_upper_bound(x[293], 0.0)
set_lower_bound(x[294], 0.0)
set_upper_bound(x[294], 0.0)
set_lower_bound(x[295], 0.0)
set_upper_bound(x[295], 0.0)
set_lower_bound(x[296], 0.0)
set_upper_bound(x[296], 0.0)
set_lower_bound(x[297], 0.0)
set_upper_bound(x[297], 0.0)
set_lower_bound(x[298], 0.0)
set_upper_bound(x[298], 0.0)
set_lower_bound(x[299], 0.0)
set_upper_bound(x[299], 0.0)
set_lower_bound(x[300], 0.0)
set_upper_bound(x[300], 0.0)
set_lower_bound(x[301], 0.0)
set_upper_bound(x[301], 0.0)
set_lower_bound(x[302], 0.0)
set_upper_bound(x[302], 0.0)
set_lower_bound(x[303], 0.0)
set_upper_bound(x[303], 0.0)
set_lower_bound(x[304], 0.0)
set_upper_bound(x[304], 0.0)
set_lower_bound(x[305], 0.0)
set_upper_bound(x[305], 0.0)
set_lower_bound(x[306], 0.0)
set_upper_bound(x[306], 0.0)
set_lower_bound(x[307], 0.0)
set_upper_bound(x[307], 0.0)
set_lower_bound(x[308], 0.0)
set_upper_bound(x[308], 0.0)
set_lower_bound(x[309], 0.0)
set_upper_bound(x[309], 0.0)
set_lower_bound(x[310], 0.0)
set_upper_bound(x[310], 0.0)
set_lower_bound(x[311], 0.0)
set_upper_bound(x[311], 0.0)
set_lower_bound(x[312], 0.0)
set_upper_bound(x[312], 0.0)
set_lower_bound(x[313], 0.0)
set_upper_bound(x[313], 0.0)
set_lower_bound(x[314], 0.0)
set_upper_bound(x[314], 0.0)
set_lower_bound(x[315], 0.0)
set_upper_bound(x[315], 0.0)
set_lower_bound(x[316], 0.0)
set_upper_bound(x[316], 0.0)
set_lower_bound(x[317], 0.0)
set_upper_bound(x[317], 0.0)
set_lower_bound(x[318], 0.0)
set_upper_bound(x[318], 0.0)
set_lower_bound(x[319], 0.0)
set_upper_bound(x[319], 0.0)
set_lower_bound(x[320], 0.0)
set_upper_bound(x[320], 0.0)
set_lower_bound(x[321], 0.0)
set_upper_bound(x[321], 0.0)
set_lower_bound(x[322], 0.0)
set_upper_bound(x[322], 0.0)
set_lower_bound(x[323], 0.0)
set_upper_bound(x[323], 0.0)
set_lower_bound(x[324], 0.0)
set_upper_bound(x[324], 0.0)
set_lower_bound(x[325], 0.0)
set_upper_bound(x[325], 0.0)
set_lower_bound(x[326], 0.0)
set_upper_bound(x[326], 0.0)
set_lower_bound(x[327], 0.0)
set_upper_bound(x[327], 0.0)
set_lower_bound(x[328], 0.0)
set_upper_bound(x[328], 0.0)
set_lower_bound(x[329], 0.0)
set_upper_bound(x[329], 0.0)
set_lower_bound(x[330], 0.0)
set_upper_bound(x[330], 0.0)
set_lower_bound(x[331], 0.0)
set_upper_bound(x[331], 0.0)
set_lower_bound(x[332], 0.0)
set_upper_bound(x[332], 0.0)
set_lower_bound(x[333], 0.0)
set_upper_bound(x[333], 0.0)
set_lower_bound(x[334], 0.0)
set_upper_bound(x[334], 0.0)
set_lower_bound(x[335], 0.0)
set_upper_bound(x[335], 0.0)
set_lower_bound(x[336], 0.0)
set_upper_bound(x[336], 0.0)
set_lower_bound(x[337], 0.0)
set_upper_bound(x[337], 0.0)
set_lower_bound(x[338], 0.0)
set_upper_bound(x[338], 0.0)
set_lower_bound(x[339], 0.0)
set_upper_bound(x[339], 0.0)
set_lower_bound(x[340], 0.0)
set_upper_bound(x[340], 0.0)
set_lower_bound(x[341], 0.0)
set_upper_bound(x[341], 0.0)
set_lower_bound(x[342], 0.0)
set_upper_bound(x[342], 0.0)
set_lower_bound(x[343], 0.0)
set_upper_bound(x[343], 0.0)
set_lower_bound(x[344], 0.0)
set_upper_bound(x[344], 0.0)
set_lower_bound(x[345], 0.0)
set_upper_bound(x[345], 0.0)
set_lower_bound(x[346], 0.0)
set_upper_bound(x[346], 0.0)
set_lower_bound(x[347], 0.0)
set_upper_bound(x[347], 0.0)
set_lower_bound(x[348], 0.0)
set_upper_bound(x[348], 0.0)
set_lower_bound(x[349], 0.0)
set_upper_bound(x[349], 0.0)
set_lower_bound(x[350], 0.0)
set_upper_bound(x[350], 0.0)
set_lower_bound(x[351], 0.0)
set_upper_bound(x[351], 0.0)
set_lower_bound(x[352], 0.0)
set_upper_bound(x[352], 0.0)
set_lower_bound(x[353], 0.0)
set_upper_bound(x[353], 0.0)
set_lower_bound(x[354], 0.0)
set_upper_bound(x[354], 0.0)
set_lower_bound(x[355], 0.0)
set_upper_bound(x[355], 0.0)
set_lower_bound(x[356], 0.0)
set_upper_bound(x[356], 0.0)
set_lower_bound(x[357], 0.0)
set_upper_bound(x[357], 0.0)
set_lower_bound(x[358], 0.0)
set_upper_bound(x[358], 0.0)
set_lower_bound(x[359], 0.0)
set_upper_bound(x[359], 0.0)
set_lower_bound(x[360], 0.0)
set_upper_bound(x[360], 0.0)
set_upper_bound(x[361], 200000.0)
set_upper_bound(x[362], 200000.0)
set_upper_bound(x[363], 200000.0)
set_upper_bound(x[364], 200000.0)
set_upper_bound(x[365], 200000.0)
set_upper_bound(x[366], 200000.0)
set_upper_bound(x[367], 200000.0)
set_upper_bound(x[368], 200000.0)
set_upper_bound(x[369], 225000.0)
set_upper_bound(x[370], 225000.0)
set_upper_bound(x[371], 225000.0)
set_upper_bound(x[372], 225000.0)
set_upper_bound(x[373], 225000.0)
set_upper_bound(x[374], 225000.0)
set_upper_bound(x[375], 225000.0)
set_upper_bound(x[376], 225000.0)
set_upper_bound(x[377], 300000.0)
set_upper_bound(x[378], 300000.0)
set_upper_bound(x[379], 300000.0)
set_upper_bound(x[380], 300000.0)
set_upper_bound(x[381], 300000.0)
set_upper_bound(x[382], 300000.0)
set_upper_bound(x[383], 300000.0)
set_upper_bound(x[384], 300000.0)
set_upper_bound(x[385], 150000.0)
set_upper_bound(x[386], 150000.0)
set_upper_bound(x[387], 150000.0)
set_upper_bound(x[388], 150000.0)
set_upper_bound(x[389], 150000.0)
set_upper_bound(x[390], 150000.0)
set_upper_bound(x[391], 150000.0)
set_upper_bound(x[392], 150000.0)
set_upper_bound(x[393], 250000.0)
set_upper_bound(x[394], 250000.0)
set_upper_bound(x[395], 250000.0)
set_upper_bound(x[396], 250000.0)
set_upper_bound(x[397], 250000.0)
set_upper_bound(x[398], 250000.0)
set_upper_bound(x[399], 250000.0)
set_upper_bound(x[400], 250000.0)
set_upper_bound(x[401], 275000.0)
set_upper_bound(x[402], 275000.0)
set_upper_bound(x[403], 275000.0)
set_upper_bound(x[404], 275000.0)
set_upper_bound(x[405], 275000.0)
set_upper_bound(x[406], 275000.0)
set_upper_bound(x[407], 275000.0)
set_upper_bound(x[408], 275000.0)
set_upper_bound(x[409], 225000.0)
set_upper_bound(x[410], 300000.0)
set_upper_bound(x[411], 275000.0)
set_lower_bound(x[412], 0.0)
set_upper_bound(x[412], 0.0)
set_upper_bound(x[413], 250.0)
set_upper_bound(x[414], 250.0)
set_upper_bound(x[415], 250.0)
set_upper_bound(x[416], 250.0)
set_upper_bound(x[417], 250.0)
set_upper_bound(x[418], 250.0)
set_upper_bound(x[419], 250.0)
set_upper_bound(x[420], 200000.0)
set_upper_bound(x[421], 300000.0)
set_upper_bound(x[422], 250000.0)
set_lower_bound(x[423], 100.0)
set_upper_bound(x[423], 250.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, objvar*x[423]+(0.00203*x[369]+0.00203*x[370])*(x[413]-x[412])+(0.00203*x[370]+0.00203*x[371])*(x[414]-x[413])+(0.00203*x[371]+0.00203*x[372])*(x[415]-x[414])+(0.00203*x[372]+0.00203*x[373])*(x[416]-x[415])+(0.00203*x[373]+0.00203*x[374])*(x[417]-x[416])+(0.00203*x[374]+0.00203*x[375])*(x[418]-x[417])+(0.00203*x[375]+0.00203*x[376])*(x[419]-x[418])+(0.00203*x[369]+0.00203*x[376])*(x[423]-x[419])+(0.00203*x[385]+0.00203*x[386])*(x[413]-x[412])+(0.00203*x[386]+0.00203*x[387])*(x[414]-x[413])+(0.00203*x[387]+0.00203*x[388])*(x[415]-x[414])+(0.00203*x[388]+0.00203*x[389])*(x[416]-x[415])+(0.00203*x[389]+0.00203*x[390])*(x[417]-x[416])+(0.00203*x[390]+0.00203*x[391])*(x[418]-x[417])+(0.00203*x[391]+0.00203*x[392])*(x[419]-x[418])+(0.00203*x[385]+0.00203*x[392])*(x[423]-x[419])+(0.00203*x[401]+0.00203*x[402])*(x[413]-x[412])+(0.00203*x[402]+0.00203*x[403])*(x[414]-x[413])+(0.00203*x[403]+0.00203*x[404])*(x[415]-x[414])+(0.00203*x[404]+0.00203*x[405])*(x[416]-x[415])+(0.00203*x[405]+0.00203*x[406])*(x[417]-x[416])+(0.00203*x[406]+0.00203*x[407])*(x[418]-x[417])+(0.00203*x[407]+0.00203*x[408])*(x[419]-x[418])+(0.00203*x[401]+0.00203*x[408])*(x[423]-x[419])+3800*b[73]+3800*b[74]+3800*b[75]+3800*b[76]+3800*b[77]+3800*b[78]+3800*b[79]+3800*b[80]+6080*b[81]+6080*b[82]+6080*b[83]+6080*b[84]+6080*b[85]+6080*b[86]+6080*b[87]+6080*b[88]+7500*b[89]+7500*b[90]+7500*b[91]+7500*b[92]+7500*b[93]+7500*b[94]+7500*b[95]+7500*b[96]+2250*b[97]+2250*b[98]+2250*b[99]+2250*b[100]+2250*b[101]+2250*b[102]+2250*b[103]+2250*b[104]+3080*b[105]+3080*b[106]+3080*b[107]+3080*b[108]+3080*b[109]+3080*b[110]+3080*b[111]+3080*b[112]+5390*b[113]+5390*b[114]+5390*b[115]+5390*b[116]+5390*b[117]+5390*b[118]+5390*b[119]+5390*b[120]+6840*b[121]+6840*b[122]+6840*b[123]+6840*b[124]+6840*b[125]+6840*b[126]+6840*b[127]+6840*b[128]+8360*b[129]+8360*b[130]+8360*b[131]+8360*b[132]+8360*b[133]+8360*b[134]+8360*b[135]+8360*b[136]+3750*b[137]+3750*b[138]+3750*b[139]+3750*b[140]+3750*b[141]+3750*b[142]+3750*b[143]+3750*b[144]+5250*b[145]+5250*b[146]+5250*b[147]+5250*b[148]+5250*b[149]+5250*b[150]+5250*b[151]+5250*b[152]+4620*b[153]+4620*b[154]+4620*b[155]+4620*b[156]+4620*b[157]+4620*b[158]+4620*b[159]+4620*b[160]+3080*b[161]+3080*b[162]+3080*b[163]+3080*b[164]+3080*b[165]+3080*b[166]+3080*b[167]+3080*b[168]+8360*b[169]+8360*b[170]+8360*b[171]+8360*b[172]+8360*b[173]+8360*b[174]+8360*b[175]+8360*b[176]+760*b[177]+760*b[178]+760*b[179]+760*b[180]+760*b[181]+760*b[182]+760*b[183]+760*b[184]+1500*b[185]+1500*b[186]+1500*b[187]+1500*b[188]+1500*b[189]+1500*b[190]+1500*b[191]+1500*b[192]+3750*b[193]+3750*b[194]+3750*b[195]+3750*b[196]+3750*b[197]+3750*b[198]+3750*b[199]+3750*b[200]+4620*b[201]+4620*b[202]+4620*b[203]+4620*b[204]+4620*b[205]+4620*b[206]+4620*b[207]+4620*b[208]+770*b[209]+770*b[210]+770*b[211]+770*b[212]+770*b[213]+770*b[214]+770*b[215]+770*b[216]-0.15*x[409]-0.4*x[410]-0.65*x[411]+0.1406*x[420]+0.1406*x[421]+0.1406*x[422] == 0.0)
@constraint(m, e2, b[1]-b[8]+b[73]+b[81]-b[96]-b[112]+x[289]-x[296] == 0.0)
@constraint(m, e3, -b[1]+b[2]+b[74]+b[82]-b[89]-b[105]-x[289]+x[290] == 0.0)
@constraint(m, e4, -b[2]+b[3]+b[75]+b[83]-b[90]-b[106]-x[290]+x[291] == 0.0)
@constraint(m, e5, -b[3]+b[4]+b[76]+b[84]-b[91]-b[107]-x[291]+x[292] == 0.0)
@constraint(m, e6, -b[4]+b[5]+b[77]+b[85]-b[92]-b[108]-x[292]+x[293] == 0.0)
@constraint(m, e7, -b[5]+b[6]+b[78]+b[86]-b[93]-b[109]-x[293]+x[294] == 0.0)
@constraint(m, e8, -b[6]+b[7]+b[79]+b[87]-b[94]-b[110]-x[294]+x[295] == 0.0)
@constraint(m, e9, -b[7]+b[8]+b[80]+b[88]-b[95]-b[111]-x[295]+x[296] == 0.0)
@constraint(m, e10, b[25]-b[32]-b[80]+b[89]+b[97]-b[120]+x[297]-x[304] == 0.0)
@constraint(m, e11, -b[25]+b[26]-b[73]+b[90]+b[98]-b[113]-x[297]+x[298] == 0.0)
@constraint(m, e12, -b[26]+b[27]-b[74]+b[91]+b[99]-b[114]-x[298]+x[299] == 0.0)
@constraint(m, e13, -b[27]+b[28]-b[75]+b[92]+b[100]-b[115]-x[299]+x[300] == 0.0)
@constraint(m, e14, -b[28]+b[29]-b[76]+b[93]+b[101]-b[116]-x[300]+x[301] == 0.0)
@constraint(m, e15, -b[29]+b[30]-b[77]+b[94]+b[102]-b[117]-x[301]+x[302] == 0.0)
@constraint(m, e16, -b[30]+b[31]-b[78]+b[95]+b[103]-b[118]-x[302]+x[303] == 0.0)
@constraint(m, e17, -b[31]+b[32]-b[79]+b[96]+b[104]-b[119]-x[303]+x[304] == 0.0)
@constraint(m, e18, b[49]-b[56]-b[88]-b[104]+b[105]+b[113]+x[305]-x[312] == 0.0)
@constraint(m, e19, -b[49]+b[50]-b[81]-b[97]+b[106]+b[114]-x[305]+x[306] == 0.0)
@constraint(m, e20, -b[50]+b[51]-b[82]-b[98]+b[107]+b[115]-x[306]+x[307] == 0.0)
@constraint(m, e21, -b[51]+b[52]-b[83]-b[99]+b[108]+b[116]-x[307]+x[308] == 0.0)
@constraint(m, e22, -b[52]+b[53]-b[84]-b[100]+b[109]+b[117]-x[308]+x[309] == 0.0)
@constraint(m, e23, -b[53]+b[54]-b[85]-b[101]+b[110]+b[118]-x[309]+x[310] == 0.0)
@constraint(m, e24, -b[54]+b[55]-b[86]-b[102]+b[111]+b[119]-x[310]+x[311] == 0.0)
@constraint(m, e25, -b[55]+b[56]-b[87]-b[103]+b[112]+b[120]-x[311]+x[312] == 0.0)
@constraint(m, e26, b[9]-b[16]+b[121]+b[129]-b[144]-b[160]+x[313]-x[320] == 0.0)
@constraint(m, e27, -b[9]+b[10]+b[122]+b[130]-b[137]-b[153]-x[313]+x[314] == 0.0)
@constraint(m, e28, -b[10]+b[11]+b[123]+b[131]-b[138]-b[154]-x[314]+x[315] == 0.0)
@constraint(m, e29, -b[11]+b[12]+b[124]+b[132]-b[139]-b[155]-x[315]+x[316] == 0.0)
@constraint(m, e30, -b[12]+b[13]+b[125]+b[133]-b[140]-b[156]-x[316]+x[317] == 0.0)
@constraint(m, e31, -b[13]+b[14]+b[126]+b[134]-b[141]-b[157]-x[317]+x[318] == 0.0)
@constraint(m, e32, -b[14]+b[15]+b[127]+b[135]-b[142]-b[158]-x[318]+x[319] == 0.0)
@constraint(m, e33, -b[15]+b[16]+b[128]+b[136]-b[143]-b[159]-x[319]+x[320] == 0.0)
@constraint(m, e34, b[33]-b[40]-b[128]+b[137]+b[145]-b[168]+x[321]-x[328] == 0.0)
@constraint(m, e35, -b[33]+b[34]-b[121]+b[138]+b[146]-b[161]-x[321]+x[322] == 0.0)
@constraint(m, e36, -b[34]+b[35]-b[122]+b[139]+b[147]-b[162]-x[322]+x[323] == 0.0)
@constraint(m, e37, -b[35]+b[36]-b[123]+b[140]+b[148]-b[163]-x[323]+x[324] == 0.0)
@constraint(m, e38, -b[36]+b[37]-b[124]+b[141]+b[149]-b[164]-x[324]+x[325] == 0.0)
@constraint(m, e39, -b[37]+b[38]-b[125]+b[142]+b[150]-b[165]-x[325]+x[326] == 0.0)
@constraint(m, e40, -b[38]+b[39]-b[126]+b[143]+b[151]-b[166]-x[326]+x[327] == 0.0)
@constraint(m, e41, -b[39]+b[40]-b[127]+b[144]+b[152]-b[167]-x[327]+x[328] == 0.0)
@constraint(m, e42, b[57]-b[64]-b[136]-b[152]+b[153]+b[161]+x[329]-x[336] == 0.0)
@constraint(m, e43, -b[57]+b[58]-b[129]-b[145]+b[154]+b[162]-x[329]+x[330] == 0.0)
@constraint(m, e44, -b[58]+b[59]-b[130]-b[146]+b[155]+b[163]-x[330]+x[331] == 0.0)
@constraint(m, e45, -b[59]+b[60]-b[131]-b[147]+b[156]+b[164]-x[331]+x[332] == 0.0)
@constraint(m, e46, -b[60]+b[61]-b[132]-b[148]+b[157]+b[165]-x[332]+x[333] == 0.0)
@constraint(m, e47, -b[61]+b[62]-b[133]-b[149]+b[158]+b[166]-x[333]+x[334] == 0.0)
@constraint(m, e48, -b[62]+b[63]-b[134]-b[150]+b[159]+b[167]-x[334]+x[335] == 0.0)
@constraint(m, e49, -b[63]+b[64]-b[135]-b[151]+b[160]+b[168]-x[335]+x[336] == 0.0)
@constraint(m, e50, b[17]-b[24]+b[169]+b[177]-b[192]-b[208]+x[337]-x[344] == 0.0)
@constraint(m, e51, -b[17]+b[18]+b[170]+b[178]-b[185]-b[201]-x[337]+x[338] == 0.0)
@constraint(m, e52, -b[18]+b[19]+b[171]+b[179]-b[186]-b[202]-x[338]+x[339] == 0.0)
@constraint(m, e53, -b[19]+b[20]+b[172]+b[180]-b[187]-b[203]-x[339]+x[340] == 0.0)
@constraint(m, e54, -b[20]+b[21]+b[173]+b[181]-b[188]-b[204]-x[340]+x[341] == 0.0)
@constraint(m, e55, -b[21]+b[22]+b[174]+b[182]-b[189]-b[205]-x[341]+x[342] == 0.0)
@constraint(m, e56, -b[22]+b[23]+b[175]+b[183]-b[190]-b[206]-x[342]+x[343] == 0.0)
@constraint(m, e57, -b[23]+b[24]+b[176]+b[184]-b[191]-b[207]-x[343]+x[344] == 0.0)
@constraint(m, e58, b[41]-b[48]-b[176]+b[185]+b[193]-b[216]+x[345]-x[352] == 0.0)
@constraint(m, e59, -b[41]+b[42]-b[169]+b[186]+b[194]-b[209]-x[345]+x[346] == 0.0)
@constraint(m, e60, -b[42]+b[43]-b[170]+b[187]+b[195]-b[210]-x[346]+x[347] == 0.0)
@constraint(m, e61, -b[43]+b[44]-b[171]+b[188]+b[196]-b[211]-x[347]+x[348] == 0.0)
@constraint(m, e62, -b[44]+b[45]-b[172]+b[189]+b[197]-b[212]-x[348]+x[349] == 0.0)
@constraint(m, e63, -b[45]+b[46]-b[173]+b[190]+b[198]-b[213]-x[349]+x[350] == 0.0)
@constraint(m, e64, -b[46]+b[47]-b[174]+b[191]+b[199]-b[214]-x[350]+x[351] == 0.0)
@constraint(m, e65, -b[47]+b[48]-b[175]+b[192]+b[200]-b[215]-x[351]+x[352] == 0.0)
@constraint(m, e66, b[65]-b[72]-b[184]-b[200]+b[201]+b[209]+x[353]-x[360] == 0.0)
@constraint(m, e67, -b[65]+b[66]-b[177]-b[193]+b[202]+b[210]-x[353]+x[354] == 0.0)
@constraint(m, e68, -b[66]+b[67]-b[178]-b[194]+b[203]+b[211]-x[354]+x[355] == 0.0)
@constraint(m, e69, -b[67]+b[68]-b[179]-b[195]+b[204]+b[212]-x[355]+x[356] == 0.0)
@constraint(m, e70, -b[68]+b[69]-b[180]-b[196]+b[205]+b[213]-x[356]+x[357] == 0.0)
@constraint(m, e71, -b[69]+b[70]-b[181]-b[197]+b[206]+b[214]-x[357]+x[358] == 0.0)
@constraint(m, e72, -b[70]+b[71]-b[182]-b[198]+b[207]+b[215]-x[358]+x[359] == 0.0)
@constraint(m, e73, -b[71]+b[72]-b[183]-b[199]+b[208]+b[216]-x[359]+x[360] == 0.0)
@constraint(m, e74, -x[224]-x[232]+x[240]+x[361]-x[368] == 0.0)
@constraint(m, e75, -x[217]-x[225]+x[233]-x[361]+x[362] == 0.0)
@constraint(m, e76, -x[218]-x[226]+x[234]-x[362]+x[363] == 0.0)
@constraint(m, e77, -x[219]-x[227]+x[235]-x[363]+x[364] == 0.0)
@constraint(m, e78, -x[220]-x[228]+x[236]-x[364]+x[365] == 0.0)
@constraint(m, e79, -x[221]-x[229]+x[237]-x[365]+x[366] == 0.0)
@constraint(m, e80, -x[222]-x[230]+x[238]-x[366]+x[367] == 0.0)
@constraint(m, e81, -x[223]-x[231]+x[239]-x[367]+x[368] == 0.0)
@NLconstraint(m, e82, x[409]/x[423]*(x[423]-x[419])-x[240]+x[369]-x[376] == 0.0)
@NLconstraint(m, e83, x[409]/x[423]*(x[413]-x[412])-x[233]-x[369]+x[370] == 0.0)
@NLconstraint(m, e84, x[409]/x[423]*(x[414]-x[413])-x[234]-x[370]+x[371] == 0.0)
@NLconstraint(m, e85, x[409]/x[423]*(x[415]-x[414])-x[235]-x[371]+x[372] == 0.0)
@NLconstraint(m, e86, x[409]/x[423]*(x[416]-x[415])-x[236]-x[372]+x[373] == 0.0)
@NLconstraint(m, e87, x[409]/x[423]*(x[417]-x[416])-x[237]-x[373]+x[374] == 0.0)
@NLconstraint(m, e88, x[409]/x[423]*(x[418]-x[417])-x[238]-x[374]+x[375] == 0.0)
@NLconstraint(m, e89, x[409]/x[423]*(x[419]-x[418])-x[239]-x[375]+x[376] == 0.0)
@constraint(m, e90, -x[248]-x[256]+x[264]+x[377]-x[384] == 0.0)
@constraint(m, e91, -x[241]-x[249]+x[257]-x[377]+x[378] == 0.0)
@constraint(m, e92, -x[242]-x[250]+x[258]-x[378]+x[379] == 0.0)
@constraint(m, e93, -x[243]-x[251]+x[259]-x[379]+x[380] == 0.0)
@constraint(m, e94, -x[244]-x[252]+x[260]-x[380]+x[381] == 0.0)
@constraint(m, e95, -x[245]-x[253]+x[261]-x[381]+x[382] == 0.0)
@constraint(m, e96, -x[246]-x[254]+x[262]-x[382]+x[383] == 0.0)
@constraint(m, e97, -x[247]-x[255]+x[263]-x[383]+x[384] == 0.0)
@NLconstraint(m, e98, x[410]/x[423]*(x[423]-x[419])-x[264]+x[385]-x[392] == 0.0)
@NLconstraint(m, e99, x[410]/x[423]*(x[413]-x[412])-x[257]-x[385]+x[386] == 0.0)
@NLconstraint(m, e100, x[410]/x[423]*(x[414]-x[413])-x[258]-x[386]+x[387] == 0.0)
@NLconstraint(m, e101, x[410]/x[423]*(x[415]-x[414])-x[259]-x[387]+x[388] == 0.0)
@NLconstraint(m, e102, x[410]/x[423]*(x[416]-x[415])-x[260]-x[388]+x[389] == 0.0)
@NLconstraint(m, e103, x[410]/x[423]*(x[417]-x[416])-x[261]-x[389]+x[390] == 0.0)
@NLconstraint(m, e104, x[410]/x[423]*(x[418]-x[417])-x[262]-x[390]+x[391] == 0.0)
@NLconstraint(m, e105, x[410]/x[423]*(x[419]-x[418])-x[263]-x[391]+x[392] == 0.0)
@constraint(m, e106, -x[272]-x[280]+x[288]+x[393]-x[400] == 0.0)
@constraint(m, e107, -x[265]-x[273]+x[281]-x[393]+x[394] == 0.0)
@constraint(m, e108, -x[266]-x[274]+x[282]-x[394]+x[395] == 0.0)
@constraint(m, e109, -x[267]-x[275]+x[283]-x[395]+x[396] == 0.0)
@constraint(m, e110, -x[268]-x[276]+x[284]-x[396]+x[397] == 0.0)
@constraint(m, e111, -x[269]-x[277]+x[285]-x[397]+x[398] == 0.0)
@constraint(m, e112, -x[270]-x[278]+x[286]-x[398]+x[399] == 0.0)
@constraint(m, e113, -x[271]-x[279]+x[287]-x[399]+x[400] == 0.0)
@NLconstraint(m, e114, x[411]/x[423]*(x[423]-x[419])-x[288]+x[401]-x[408] == 0.0)
@NLconstraint(m, e115, x[411]/x[423]*(x[413]-x[412])-x[281]-x[401]+x[402] == 0.0)
@NLconstraint(m, e116, x[411]/x[423]*(x[414]-x[413])-x[282]-x[402]+x[403] == 0.0)
@NLconstraint(m, e117, x[411]/x[423]*(x[415]-x[414])-x[283]-x[403]+x[404] == 0.0)
@NLconstraint(m, e118, x[411]/x[423]*(x[416]-x[415])-x[284]-x[404]+x[405] == 0.0)
@NLconstraint(m, e119, x[411]/x[423]*(x[417]-x[416])-x[285]-x[405]+x[406] == 0.0)
@NLconstraint(m, e120, x[411]/x[423]*(x[418]-x[417])-x[286]-x[406]+x[407] == 0.0)
@NLconstraint(m, e121, x[411]/x[423]*(x[419]-x[418])-x[287]-x[407]+x[408] == 0.0)
@constraint(m, e122, b[1]+b[25]+b[49]+b[73]+b[81]+b[89]+b[97]+b[105]+b[113]+x[289]+x[297]+x[305] == 1.0)
@constraint(m, e123, b[9]+b[33]+b[57]+b[121]+b[129]+b[137]+b[145]+b[153]+b[161]+x[313]+x[321]+x[329] == 1.0)
@constraint(m, e124, b[17]+b[41]+b[65]+b[169]+b[177]+b[185]+b[193]+b[201]+b[209]+x[337]+x[345]+x[353] == 1.0)
@constraint(m, e125, -5*b[73]-8*b[81]-10*b[89]-3*b[97]-4*b[105]-7*b[113]-0.00125*x[217]-0.000833333333333333*x[241]-0.001*x[265]-x[412]+x[413] >= 0.0)
@constraint(m, e126, -5*b[74]-8*b[82]-10*b[90]-3*b[98]-4*b[106]-7*b[114]-0.00125*x[218]-0.000833333333333333*x[242]-0.001*x[266]-x[413]+x[414] >= 0.0)
@constraint(m, e127, -5*b[75]-8*b[83]-10*b[91]-3*b[99]-4*b[107]-7*b[115]-0.00125*x[219]-0.000833333333333333*x[243]-0.001*x[267]-x[414]+x[415] >= 0.0)
@constraint(m, e128, -5*b[76]-8*b[84]-10*b[92]-3*b[100]-4*b[108]-7*b[116]-0.00125*x[220]-0.000833333333333333*x[244]-0.001*x[268]-x[415]+x[416] >= 0.0)
@constraint(m, e129, -5*b[77]-8*b[85]-10*b[93]-3*b[101]-4*b[109]-7*b[117]-0.00125*x[221]-0.000833333333333333*x[245]-0.001*x[269]-x[416]+x[417] >= 0.0)
@constraint(m, e130, -5*b[78]-8*b[86]-10*b[94]-3*b[102]-4*b[110]-7*b[118]-0.00125*x[222]-0.000833333333333333*x[246]-0.001*x[270]-x[417]+x[418] >= 0.0)
@constraint(m, e131, -5*b[79]-8*b[87]-10*b[95]-3*b[103]-4*b[111]-7*b[119]-0.00125*x[223]-0.000833333333333333*x[247]-0.001*x[271]-x[418]+x[419] >= 0.0)
@constraint(m, e132, -5*b[80]-8*b[88]-10*b[96]-3*b[104]-4*b[112]-7*b[120]-0.00125*x[224]-0.000833333333333333*x[248]-0.001*x[272]-x[419]+x[423] >= 0.0)
@constraint(m, e133, -9*b[121]-11*b[129]-5*b[137]-7*b[145]-6*b[153]-4*b[161]-0.0025*x[225]-0.002*x[249]-0.00222222222222222*x[273]-x[412]+x[413] >= 0.0)
@constraint(m, e134, -9*b[122]-11*b[130]-5*b[138]-7*b[146]-6*b[154]-4*b[162]-0.0025*x[226]-0.002*x[250]-0.00222222222222222*x[274]-x[413]+x[414] >= 0.0)
@constraint(m, e135, -9*b[123]-11*b[131]-5*b[139]-7*b[147]-6*b[155]-4*b[163]-0.0025*x[227]-0.002*x[251]-0.00222222222222222*x[275]-x[414]+x[415] >= 0.0)
@constraint(m, e136, -9*b[124]-11*b[132]-5*b[140]-7*b[148]-6*b[156]-4*b[164]-0.0025*x[228]-0.002*x[252]-0.00222222222222222*x[276]-x[415]+x[416] >= 0.0)
@constraint(m, e137, -9*b[125]-11*b[133]-5*b[141]-7*b[149]-6*b[157]-4*b[165]-0.0025*x[229]-0.002*x[253]-0.00222222222222222*x[277]-x[416]+x[417] >= 0.0)
@constraint(m, e138, -9*b[126]-11*b[134]-5*b[142]-7*b[150]-6*b[158]-4*b[166]-0.0025*x[230]-0.002*x[254]-0.00222222222222222*x[278]-x[417]+x[418] >= 0.0)
@constraint(m, e139, -9*b[127]-11*b[135]-5*b[143]-7*b[151]-6*b[159]-4*b[167]-0.0025*x[231]-0.002*x[255]-0.00222222222222222*x[279]-x[418]+x[419] >= 0.0)
@constraint(m, e140, -9*b[128]-11*b[136]-5*b[144]-7*b[152]-6*b[160]-4*b[168]-0.0025*x[232]-0.002*x[256]-0.00222222222222222*x[280]-x[419]+x[423] >= 0.0)
@constraint(m, e141, -11*b[169]-b[177]-2*b[185]-5*b[193]-6*b[201]-b[209]-0.00111111111111111*x[233]-0.00166666666666667*x[257]-0.000909090909090909*x[281]-x[412]+x[413] >= 0.0)
@constraint(m, e142, -11*b[170]-b[178]-2*b[186]-5*b[194]-6*b[202]-b[210]-0.00111111111111111*x[234]-0.00166666666666667*x[258]-0.000909090909090909*x[282]-x[413]+x[414] >= 0.0)
@constraint(m, e143, -11*b[171]-b[179]-2*b[187]-5*b[195]-6*b[203]-b[211]-0.00111111111111111*x[235]-0.00166666666666667*x[259]-0.000909090909090909*x[283]-x[414]+x[415] >= 0.0)
@constraint(m, e144, -11*b[172]-b[180]-2*b[188]-5*b[196]-6*b[204]-b[212]-0.00111111111111111*x[236]-0.00166666666666667*x[260]-0.000909090909090909*x[284]-x[415]+x[416] >= 0.0)
@constraint(m, e145, -11*b[173]-b[181]-2*b[189]-5*b[197]-6*b[205]-b[213]-0.00111111111111111*x[237]-0.00166666666666667*x[261]-0.000909090909090909*x[285]-x[416]+x[417] >= 0.0)
@constraint(m, e146, -11*b[174]-b[182]-2*b[190]-5*b[198]-6*b[206]-b[214]-0.00111111111111111*x[238]-0.00166666666666667*x[262]-0.000909090909090909*x[286]-x[417]+x[418] >= 0.0)
@constraint(m, e147, -11*b[175]-b[183]-2*b[191]-5*b[199]-6*b[207]-b[215]-0.00111111111111111*x[239]-0.00166666666666667*x[263]-0.000909090909090909*x[287]-x[418]+x[419] >= 0.0)
@constraint(m, e148, -11*b[176]-b[184]-2*b[192]-5*b[200]-6*b[208]-b[216]-0.00111111111111111*x[240]-0.00166666666666667*x[264]-0.000909090909090909*x[288]-x[419]+x[423] >= 0.0)
@constraint(m, e149, -200000*b[1]+x[217] <= 0.0)
@constraint(m, e150, -200000*b[2]+x[218] <= 0.0)
@constraint(m, e151, -200000*b[3]+x[219] <= 0.0)
@constraint(m, e152, -200000*b[4]+x[220] <= 0.0)
@constraint(m, e153, -200000*b[5]+x[221] <= 0.0)
@constraint(m, e154, -200000*b[6]+x[222] <= 0.0)
@constraint(m, e155, -200000*b[7]+x[223] <= 0.0)
@constraint(m, e156, -200000*b[8]+x[224] <= 0.0)
@constraint(m, e157, -100000*b[9]+x[225] <= 0.0)
@constraint(m, e158, -100000*b[10]+x[226] <= 0.0)
@constraint(m, e159, -100000*b[11]+x[227] <= 0.0)
@constraint(m, e160, -100000*b[12]+x[228] <= 0.0)
@constraint(m, e161, -100000*b[13]+x[229] <= 0.0)
@constraint(m, e162, -100000*b[14]+x[230] <= 0.0)
@constraint(m, e163, -100000*b[15]+x[231] <= 0.0)
@constraint(m, e164, -100000*b[16]+x[232] <= 0.0)
@constraint(m, e165, -225000*b[17]+x[233] <= 0.0)
@constraint(m, e166, -225000*b[18]+x[234] <= 0.0)
@constraint(m, e167, -225000*b[19]+x[235] <= 0.0)
@constraint(m, e168, -225000*b[20]+x[236] <= 0.0)
@constraint(m, e169, -225000*b[21]+x[237] <= 0.0)
@constraint(m, e170, -225000*b[22]+x[238] <= 0.0)
@constraint(m, e171, -225000*b[23]+x[239] <= 0.0)
@constraint(m, e172, -225000*b[24]+x[240] <= 0.0)
@constraint(m, e173, -300000*b[25]+x[241] <= 0.0)
@constraint(m, e174, -300000*b[26]+x[242] <= 0.0)
@constraint(m, e175, -300000*b[27]+x[243] <= 0.0)
@constraint(m, e176, -300000*b[28]+x[244] <= 0.0)
@constraint(m, e177, -300000*b[29]+x[245] <= 0.0)
@constraint(m, e178, -300000*b[30]+x[246] <= 0.0)
@constraint(m, e179, -300000*b[31]+x[247] <= 0.0)
@constraint(m, e180, -300000*b[32]+x[248] <= 0.0)
@constraint(m, e181, -125000*b[33]+x[249] <= 0.0)
@constraint(m, e182, -125000*b[34]+x[250] <= 0.0)
@constraint(m, e183, -125000*b[35]+x[251] <= 0.0)
@constraint(m, e184, -125000*b[36]+x[252] <= 0.0)
@constraint(m, e185, -125000*b[37]+x[253] <= 0.0)
@constraint(m, e186, -125000*b[38]+x[254] <= 0.0)
@constraint(m, e187, -125000*b[39]+x[255] <= 0.0)
@constraint(m, e188, -125000*b[40]+x[256] <= 0.0)
@constraint(m, e189, -150000*b[41]+x[257] <= 0.0)
@constraint(m, e190, -150000*b[42]+x[258] <= 0.0)
@constraint(m, e191, -150000*b[43]+x[259] <= 0.0)
@constraint(m, e192, -150000*b[44]+x[260] <= 0.0)
@constraint(m, e193, -150000*b[45]+x[261] <= 0.0)
@constraint(m, e194, -150000*b[46]+x[262] <= 0.0)
@constraint(m, e195, -150000*b[47]+x[263] <= 0.0)
@constraint(m, e196, -150000*b[48]+x[264] <= 0.0)
@constraint(m, e197, -250000*b[49]+x[265] <= 0.0)
@constraint(m, e198, -250000*b[50]+x[266] <= 0.0)
@constraint(m, e199, -250000*b[51]+x[267] <= 0.0)
@constraint(m, e200, -250000*b[52]+x[268] <= 0.0)
@constraint(m, e201, -250000*b[53]+x[269] <= 0.0)
@constraint(m, e202, -250000*b[54]+x[270] <= 0.0)
@constraint(m, e203, -250000*b[55]+x[271] <= 0.0)
@constraint(m, e204, -250000*b[56]+x[272] <= 0.0)
@constraint(m, e205, -112500*b[57]+x[273] <= 0.0)
@constraint(m, e206, -112500*b[58]+x[274] <= 0.0)
@constraint(m, e207, -112500*b[59]+x[275] <= 0.0)
@constraint(m, e208, -112500*b[60]+x[276] <= 0.0)
@constraint(m, e209, -112500*b[61]+x[277] <= 0.0)
@constraint(m, e210, -112500*b[62]+x[278] <= 0.0)
@constraint(m, e211, -112500*b[63]+x[279] <= 0.0)
@constraint(m, e212, -112500*b[64]+x[280] <= 0.0)
@constraint(m, e213, -275000*b[65]+x[281] <= 0.0)
@constraint(m, e214, -275000*b[66]+x[282] <= 0.0)
@constraint(m, e215, -275000*b[67]+x[283] <= 0.0)
@constraint(m, e216, -275000*b[68]+x[284] <= 0.0)
@constraint(m, e217, -275000*b[69]+x[285] <= 0.0)
@constraint(m, e218, -275000*b[70]+x[286] <= 0.0)
@constraint(m, e219, -275000*b[71]+x[287] <= 0.0)
@constraint(m, e220, -275000*b[72]+x[288] <= 0.0)
@constraint(m, e221, x[409]-50*x[423] >= 0.0)
@constraint(m, e222, x[410]-100*x[423] >= 0.0)
@constraint(m, e223, x[411]-250*x[423] >= 0.0)
@constraint(m, e224, x[361]-x[420] <= 0.0)
@constraint(m, e225, x[362]-x[420] <= 0.0)
@constraint(m, e226, x[363]-x[420] <= 0.0)
@constraint(m, e227, x[364]-x[420] <= 0.0)
@constraint(m, e228, x[365]-x[420] <= 0.0)
@constraint(m, e229, x[366]-x[420] <= 0.0)
@constraint(m, e230, x[367]-x[420] <= 0.0)
@constraint(m, e231, x[368]-x[420] <= 0.0)
@constraint(m, e232, x[377]-x[421] <= 0.0)
@constraint(m, e233, x[378]-x[421] <= 0.0)
@constraint(m, e234, x[379]-x[421] <= 0.0)
@constraint(m, e235, x[380]-x[421] <= 0.0)
@constraint(m, e236, x[381]-x[421] <= 0.0)
@constraint(m, e237, x[382]-x[421] <= 0.0)
@constraint(m, e238, x[383]-x[421] <= 0.0)
@constraint(m, e239, x[384]-x[421] <= 0.0)
@constraint(m, e240, x[393]-x[422] <= 0.0)
@constraint(m, e241, x[394]-x[422] <= 0.0)
@constraint(m, e242, x[395]-x[422] <= 0.0)
@constraint(m, e243, x[396]-x[422] <= 0.0)
@constraint(m, e244, x[397]-x[422] <= 0.0)
@constraint(m, e245, x[398]-x[422] <= 0.0)
@constraint(m, e246, x[399]-x[422] <= 0.0)
@constraint(m, e247, x[400]-x[422] <= 0.0)
@constraint(m, e248, b[73]+b[74]+b[75]+b[76]+b[77]+b[78]+b[79]+b[80]+b[81]+b[82]+b[83]+b[84]+b[85]+b[86]+b[87]+b[88]+b[89]+b[90]+b[91]+b[92]+b[93]+b[94]+b[95]+b[96]+b[97]+b[98]+b[99]+b[100]+b[101]+b[102]+b[103]+b[104]+b[105]+b[106]+b[107]+b[108]+b[109]+b[110]+b[111]+b[112]+b[113]+b[114]+b[115]+b[116]+b[117]+b[118]+b[119]+b[120]+b[121]+b[122]+b[123]+b[124]+b[125]+b[126]+b[127]+b[128]+b[129]+b[130]+b[131]+b[132]+b[133]+b[134]+b[135]+b[136]+b[137]+b[138]+b[139]+b[140]+b[141]+b[142]+b[143]+b[144]+b[145]+b[146]+b[147]+b[148]+b[149]+b[150]+b[151]+b[152]+b[153]+b[154]+b[155]+b[156]+b[157]+b[158]+b[159]+b[160]+b[161]+b[162]+b[163]+b[164]+b[165]+b[166]+b[167]+b[168] <= 3.0)
@constraint(m, e249, b[169]+b[170]+b[171]+b[172]+b[173]+b[174]+b[175]+b[176]+b[177]+b[178]+b[179]+b[180]+b[181]+b[182]+b[183]+b[184]+b[185]+b[186]+b[187]+b[188]+b[189]+b[190]+b[191]+b[192]+b[193]+b[194]+b[195]+b[196]+b[197]+b[198]+b[199]+b[200]+b[201]+b[202]+b[203]+b[204]+b[205]+b[206]+b[207]+b[208]+b[209]+b[210]+b[211]+b[212]+b[213]+b[214]+b[215]+b[216] <= 3.0)
@constraint(m, e250, b[1]+b[9] == 1.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 
