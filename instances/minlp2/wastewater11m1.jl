using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118]
@variable(m, x[x_Idx])
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[1], 1.0e6)
set_upper_bound(x[2], 1.0e6)
set_upper_bound(x[3], 1.0e6)
set_upper_bound(x[4], 1.0e6)
set_upper_bound(x[5], 1.0e6)
set_upper_bound(x[6], 1.0e6)
set_upper_bound(x[7], 1.0e6)
set_upper_bound(x[8], 1.0e6)
set_upper_bound(x[9], 1.0e6)
set_upper_bound(x[10], 1.0e6)
set_upper_bound(x[11], 1.0e6)
set_upper_bound(x[12], 1.0e6)
set_upper_bound(x[13], 1.0e6)
set_upper_bound(x[14], 1.0e6)
set_upper_bound(x[15], 1.0e6)
set_upper_bound(x[16], 1.0e6)
set_upper_bound(x[17], 1.0e6)
set_upper_bound(x[18], 1.0e6)
set_upper_bound(x[19], 1.0e6)
set_upper_bound(x[20], 1.0e6)
set_upper_bound(x[21], 1.0e6)
set_upper_bound(x[22], 1.0e6)
set_upper_bound(x[23], 1.0e6)
set_upper_bound(x[24], 1.0e6)
set_upper_bound(x[25], 1.0e6)
set_upper_bound(x[26], 1.0e6)
set_upper_bound(x[27], 1.0e6)
set_upper_bound(x[28], 1.0e6)
set_upper_bound(x[29], 1.0e6)
set_upper_bound(x[30], 1.0e6)
set_upper_bound(x[31], 1.0e6)
set_upper_bound(x[32], 1.0e6)
set_upper_bound(x[33], 1.0e6)
set_upper_bound(x[34], 1.0e6)
set_upper_bound(x[35], 1.0e6)
set_upper_bound(x[36], 1.0e6)
set_upper_bound(x[37], 1.0e6)
set_upper_bound(x[38], 1.0e6)
set_upper_bound(x[39], 1.0e6)
set_upper_bound(x[40], 1.0e6)
set_upper_bound(x[41], 1.0e6)
set_upper_bound(x[42], 1.0e6)
set_upper_bound(x[43], 1.0e6)
set_upper_bound(x[44], 1.0e6)
set_upper_bound(x[45], 1.0e6)
set_upper_bound(x[46], 1.0e6)
set_upper_bound(x[47], 1.0e6)
set_upper_bound(x[48], 1.0e6)
set_upper_bound(x[49], 1.0e6)
set_upper_bound(x[50], 1.0e6)
set_upper_bound(x[51], 1.0e6)
set_upper_bound(x[52], 1.0e6)
set_upper_bound(x[53], 1.0e6)
set_upper_bound(x[54], 1.0e6)
set_upper_bound(x[55], 1.0e6)
set_upper_bound(x[56], 1.0e6)
set_upper_bound(x[57], 1.0e6)
set_upper_bound(x[58], 1.0e6)
set_upper_bound(x[59], 1.0e6)
set_upper_bound(x[60], 1.0e6)
set_upper_bound(x[61], 1.0e6)
set_upper_bound(x[62], 1.0e6)
set_upper_bound(x[63], 1.0e6)
set_upper_bound(x[64], 1.0e6)
set_upper_bound(x[65], 1.0e6)
set_upper_bound(x[66], 1.0e6)
set_upper_bound(x[67], 1.0e6)
set_upper_bound(x[68], 1.0e6)
set_upper_bound(x[69], 1.0e6)
set_upper_bound(x[70], 1.0e6)
set_upper_bound(x[71], 1.0e6)
set_upper_bound(x[72], 1.0e6)
set_upper_bound(x[73], 1.0e6)
set_upper_bound(x[74], 1.0e6)
set_upper_bound(x[75], 1.0e6)
set_upper_bound(x[76], 1.0e6)
set_upper_bound(x[77], 1.0e6)
set_upper_bound(x[78], 1.0e6)
set_upper_bound(x[79], 1.0e6)
set_upper_bound(x[80], 1.0e6)
set_upper_bound(x[81], 1.0e6)
set_upper_bound(x[82], 1.0e6)
set_upper_bound(x[83], 1.0e6)
set_upper_bound(x[84], 1.0e6)
set_upper_bound(x[85], 1.0e6)
set_upper_bound(x[86], 1.0e6)
set_upper_bound(x[87], 1.0e6)
set_upper_bound(x[88], 1.0e6)
set_upper_bound(x[89], 1.0e6)
set_upper_bound(x[90], 1.0e6)
set_upper_bound(x[91], 1.0e6)
set_upper_bound(x[92], 1.0e6)
set_upper_bound(x[93], 1.0e6)
set_upper_bound(x[94], 1.0e6)
set_upper_bound(x[95], 1.0e6)
set_upper_bound(x[96], 1.0e6)
set_upper_bound(x[97], 1.0e6)
set_upper_bound(x[98], 1.0e6)
set_upper_bound(x[99], 1.0e6)
set_upper_bound(x[100], 1.0e6)
set_upper_bound(x[101], 1.0e6)
set_upper_bound(x[102], 1.0e6)
set_upper_bound(x[103], 1.0e6)
set_upper_bound(x[104], 1.0e6)
set_upper_bound(x[105], 1.0e6)
set_upper_bound(x[106], 1.0e6)
set_upper_bound(x[107], 1.0e6)
set_upper_bound(x[108], 1.0e6)
set_upper_bound(x[109], 1.0e6)
set_upper_bound(x[110], 1.0e6)
set_upper_bound(x[111], 1.0e6)
set_upper_bound(x[112], 1.0e6)
set_upper_bound(x[113], 1.0e6)
set_upper_bound(x[114], 1.0e6)
set_upper_bound(x[115], 1.0e6)
set_upper_bound(x[116], 1.0e6)
set_upper_bound(x[117], 1.0e6)
set_upper_bound(x[118], 1.0e6)


# ----- Constraints ----- #
@constraint(m, e1, -x[112]-x[113]-x[114]-x[115]-x[116]-x[117]-x[118]+objvar == 0.0)
@constraint(m, e2, -x[64]-x[76]-x[77]-x[78]-x[79]-x[80]-x[81]-x[82] == -80.0)
@constraint(m, e3, -x[65]-x[83]-x[84]-x[85]-x[86]-x[87]-x[88]-x[89] == -450.0)
@constraint(m, e4, -x[66]-x[90]-x[91]-x[92]-x[93]-x[94]-x[95]-x[96] == -230.0)
@constraint(m, e5, -x[67]-x[97]-x[98]-x[99]-x[100]-x[101]-x[102]-x[103] == -90.0)
@constraint(m, e6, -x[68]-x[104]-x[105]-x[106]-x[107]-x[108]-x[109]-x[110] == -330.0)
@constraint(m, e7, -x[15]-x[22]-x[29]-x[36]-x[43]-x[50]-x[57]-x[76]-x[83]-x[90]-x[97]-x[104]+x[112] == 0.0)
@constraint(m, e8, -x[16]-x[23]-x[30]-x[37]-x[44]-x[51]-x[58]-x[77]-x[84]-x[91]-x[98]-x[105]+x[113] == 0.0)
@constraint(m, e9, -x[17]-x[24]-x[31]-x[38]-x[45]-x[52]-x[59]-x[78]-x[85]-x[92]-x[99]-x[106]+x[114] == 0.0)
@constraint(m, e10, -x[18]-x[25]-x[32]-x[39]-x[46]-x[53]-x[60]-x[79]-x[86]-x[93]-x[100]-x[107]+x[115] == 0.0)
@constraint(m, e11, -x[19]-x[26]-x[33]-x[40]-x[47]-x[54]-x[61]-x[80]-x[87]-x[94]-x[101]-x[108]+x[116] == 0.0)
@constraint(m, e12, -x[20]-x[27]-x[34]-x[41]-x[48]-x[55]-x[62]-x[81]-x[88]-x[95]-x[102]-x[109]+x[117] == 0.0)
@constraint(m, e13, -x[21]-x[28]-x[35]-x[42]-x[49]-x[56]-x[63]-x[82]-x[89]-x[96]-x[103]-x[110]+x[118] == 0.0)
@constraint(m, e14, -x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[69]+x[112] == 0.0)
@constraint(m, e15, -x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[70]+x[113] == 0.0)
@constraint(m, e16, -x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[71]+x[114] == 0.0)
@constraint(m, e17, -x[36]-x[37]-x[38]-x[39]-x[40]-x[41]-x[42]-x[72]+x[115] == 0.0)
@constraint(m, e18, -x[43]-x[44]-x[45]-x[46]-x[47]-x[48]-x[49]-x[73]+x[116] == 0.0)
@constraint(m, e19, -x[50]-x[51]-x[52]-x[53]-x[54]-x[55]-x[56]-x[74]+x[117] == 0.0)
@constraint(m, e20, -x[57]-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[75]+x[118] == 0.0)
@constraint(m, e21, -x[64]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70]-x[71]-x[72]-x[73]-x[74]-x[75]+x[111] == 0.0)
@NLconstraint(m, e22, x[15]*x[8]+x[22]*x[9]+x[29]*x[10]+x[36]*x[11]+x[43]*x[12]+x[50]*x[13]+x[57]*x[14]-x[112]*x[1]+12*x[76]+50*x[83]+500*x[90]+400*x[97]+120*x[104] == 0.0)
@NLconstraint(m, e23, x[16]*x[8]+x[23]*x[9]+x[30]*x[10]+x[37]*x[11]+x[44]*x[12]+x[51]*x[13]+x[58]*x[14]-x[113]*x[2]+12*x[77]+50*x[84]+500*x[91]+400*x[98]+120*x[105] == 0.0)
@NLconstraint(m, e24, x[17]*x[8]+x[24]*x[9]+x[31]*x[10]+x[38]*x[11]+x[45]*x[12]+x[52]*x[13]+x[59]*x[14]-x[114]*x[3]+12*x[78]+50*x[85]+500*x[92]+400*x[99]+120*x[106] == 0.0)
@NLconstraint(m, e25, x[18]*x[8]+x[25]*x[9]+x[32]*x[10]+x[39]*x[11]+x[46]*x[12]+x[53]*x[13]+x[60]*x[14]-x[115]*x[4]+12*x[79]+50*x[86]+500*x[93]+400*x[100]+120*x[107] == 0.0)
@NLconstraint(m, e26, x[19]*x[8]+x[26]*x[9]+x[33]*x[10]+x[40]*x[11]+x[47]*x[12]+x[54]*x[13]+x[61]*x[14]-x[116]*x[5]+12*x[80]+50*x[87]+500*x[94]+400*x[101]+120*x[108] == 0.0)
@NLconstraint(m, e27, x[20]*x[8]+x[27]*x[9]+x[34]*x[10]+x[41]*x[11]+x[48]*x[12]+x[55]*x[13]+x[62]*x[14]-x[117]*x[6]+12*x[81]+50*x[88]+500*x[95]+400*x[102]+120*x[109] == 0.0)
@NLconstraint(m, e28, x[21]*x[8]+x[28]*x[9]+x[35]*x[10]+x[42]*x[11]+x[49]*x[12]+x[56]*x[13]+x[63]*x[14]-x[118]*x[7]+12*x[82]+50*x[89]+500*x[96]+400*x[103]+120*x[110] == 0.0)
@constraint(m, e29, x[1] <= 400.0)
@constraint(m, e30, x[2] <= 100.0)
@constraint(m, e31, x[3] <= 50.0)
@constraint(m, e32, x[4] <= 570.0)
@constraint(m, e33, x[5] <= 100.0)
@constraint(m, e34, x[6] <= 30.0)
@constraint(m, e35, x[7] <= 640.0)
@constraint(m, e36, -0.9*x[1]+x[8] == 0.0)
@constraint(m, e37, -0.6*x[2]+x[9] == 0.0)
@constraint(m, e38, -0.15*x[3]+x[10] == 0.0)
@constraint(m, e39, -0.26*x[4]+x[11] == 0.0)
@constraint(m, e40, -0.1*x[5]+x[12] == 0.0)
@constraint(m, e41, -0.4*x[6]+x[13] == 0.0)
@constraint(m, e42, -0.3*x[7]+x[14] == 0.0)
@NLconstraint(m, e43, x[69]*x[8]+x[70]*x[9]+x[71]*x[10]+x[72]*x[11]+x[73]*x[12]+x[74]*x[13]+x[75]*x[14]+12*x[64]+50*x[65]+500*x[66]+400*x[67]+120*x[68]-4*x[111] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
