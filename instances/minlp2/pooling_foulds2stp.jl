using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[2], 600.0)
set_upper_bound(x[3], 600.0)
set_upper_bound(x[4], 100.0)
set_upper_bound(x[5], 200.0)
set_upper_bound(x[6], 100.0)
set_upper_bound(x[7], 200.0)
set_upper_bound(x[8], 600.0)
set_upper_bound(x[9], 600.0)
set_upper_bound(x[10], 100.0)
set_upper_bound(x[11], 200.0)
set_upper_bound(x[12], 100.0)
set_upper_bound(x[13], 200.0)
set_upper_bound(x[14], 100.0)
set_upper_bound(x[15], 200.0)
set_upper_bound(x[16], 100.0)
set_upper_bound(x[17], 200.0)
set_upper_bound(x[18], 100.0)
set_upper_bound(x[19], 200.0)
set_upper_bound(x[20], 100.0)
set_upper_bound(x[21], 200.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 100.0)
set_upper_bound(x[35], 200.0)
set_upper_bound(x[36], 100.0)
set_upper_bound(x[37], 200.0)
set_upper_bound(x[38], 100.0)
set_upper_bound(x[39], 200.0)
set_upper_bound(x[40], 100.0)
set_upper_bound(x[41], 200.0)
set_upper_bound(x[42], 100.0)
set_upper_bound(x[43], 200.0)
set_upper_bound(x[44], 100.0)
set_upper_bound(x[45], 200.0)
set_upper_bound(x[46], 100.0)
set_upper_bound(x[47], 200.0)
set_upper_bound(x[48], 100.0)
set_upper_bound(x[49], 200.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[4]+5*x[5]-4*x[6]+2*x[7]+2*x[10]+8*x[11]-x[12]+5*x[13]+3*x[34]+9*x[35]+6*x[37]-7*x[38]-x[39]-10*x[40]-4*x[41]+6*x[42]+12*x[43]+3*x[44]+9*x[45]-4*x[46]+2*x[47]-7*x[48]-x[49] == 0.0)
@constraint(m, e2, x[34]+x[35]+x[36]+x[37] <= 600.0)
@constraint(m, e3, x[38]+x[39]+x[40]+x[41] <= 600.0)
@constraint(m, e4, x[4]+x[5]+x[6]+x[7] <= 600.0)
@constraint(m, e5, x[42]+x[43]+x[44]+x[45] <= 600.0)
@constraint(m, e6, x[46]+x[47]+x[48]+x[49] <= 600.0)
@constraint(m, e7, x[10]+x[11]+x[12]+x[13] <= 600.0)
@constraint(m, e8, x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41] <= 600.0)
@constraint(m, e9, x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49] <= 600.0)
@constraint(m, e10, x[4]+x[10]+x[34]+x[38]+x[42]+x[46] <= 100.0)
@constraint(m, e11, x[5]+x[11]+x[35]+x[39]+x[43]+x[47] <= 200.0)
@constraint(m, e12, x[6]+x[12]+x[36]+x[40]+x[44]+x[48] <= 100.0)
@constraint(m, e13, x[7]+x[13]+x[37]+x[41]+x[45]+x[49] <= 200.0)
@constraint(m, e14, -0.5*x[4]+0.5*x[34]-1.5*x[38]+x[42]-x[46] <= 0.0)
@constraint(m, e15, 0.5*x[5]+x[11]+1.5*x[35]-0.5*x[39]+2*x[43] <= 0.0)
@constraint(m, e16, -x[6]-0.5*x[12]-2*x[40]+0.5*x[44]-1.5*x[48] <= 0.0)
@constraint(m, e17, 0.5*x[13]+x[37]-x[41]+1.5*x[45]-0.5*x[49] <= 0.0)
@constraint(m, e18, x[22]+x[23] == 1.0)
@constraint(m, e19, x[24]+x[25] == 1.0)
@constraint(m, e20, x[26]+x[27]+x[28]+x[29] == 1.0)
@constraint(m, e21, x[30]+x[31]+x[32]+x[33] == 1.0)
@NLconstraint(m, e22, -x[22]*x[14]+x[34] == 0.0)
@NLconstraint(m, e23, -x[22]*x[15]+x[35] == 0.0)
@NLconstraint(m, e24, -x[22]*x[16]+x[36] == 0.0)
@NLconstraint(m, e25, -x[22]*x[17]+x[37] == 0.0)
@NLconstraint(m, e26, -x[23]*x[14]+x[38] == 0.0)
@NLconstraint(m, e27, -x[23]*x[15]+x[39] == 0.0)
@NLconstraint(m, e28, -x[23]*x[16]+x[40] == 0.0)
@NLconstraint(m, e29, -x[23]*x[17]+x[41] == 0.0)
@NLconstraint(m, e30, -x[24]*x[18]+x[42] == 0.0)
@NLconstraint(m, e31, -x[24]*x[19]+x[43] == 0.0)
@NLconstraint(m, e32, -x[24]*x[20]+x[44] == 0.0)
@NLconstraint(m, e33, -x[24]*x[21]+x[45] == 0.0)
@NLconstraint(m, e34, -x[25]*x[18]+x[46] == 0.0)
@NLconstraint(m, e35, -x[25]*x[19]+x[47] == 0.0)
@NLconstraint(m, e36, -x[25]*x[20]+x[48] == 0.0)
@NLconstraint(m, e37, -x[25]*x[21]+x[49] == 0.0)
@NLconstraint(m, e38, -x[26]*x[2]+x[34] == 0.0)
@NLconstraint(m, e39, -x[27]*x[2]+x[35] == 0.0)
@NLconstraint(m, e40, -x[28]*x[2]+x[36] == 0.0)
@NLconstraint(m, e41, -x[29]*x[2]+x[37] == 0.0)
@NLconstraint(m, e42, -x[26]*x[3]+x[38] == 0.0)
@NLconstraint(m, e43, -x[27]*x[3]+x[39] == 0.0)
@NLconstraint(m, e44, -x[28]*x[3]+x[40] == 0.0)
@NLconstraint(m, e45, -x[29]*x[3]+x[41] == 0.0)
@NLconstraint(m, e46, -x[30]*x[8]+x[42] == 0.0)
@NLconstraint(m, e47, -x[31]*x[8]+x[43] == 0.0)
@NLconstraint(m, e48, -x[32]*x[8]+x[44] == 0.0)
@NLconstraint(m, e49, -x[33]*x[8]+x[45] == 0.0)
@NLconstraint(m, e50, -x[30]*x[9]+x[46] == 0.0)
@NLconstraint(m, e51, -x[31]*x[9]+x[47] == 0.0)
@NLconstraint(m, e52, -x[32]*x[9]+x[48] == 0.0)
@NLconstraint(m, e53, -x[33]*x[9]+x[49] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
