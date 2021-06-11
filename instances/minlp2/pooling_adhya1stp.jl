using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47]
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
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[2], 75.0)
set_upper_bound(x[3], 75.0)
set_upper_bound(x[4], 75.0)
set_upper_bound(x[5], 75.0)
set_upper_bound(x[6], 75.0)
set_upper_bound(x[7], 10.0)
set_upper_bound(x[8], 25.0)
set_upper_bound(x[9], 30.0)
set_upper_bound(x[10], 10.0)
set_upper_bound(x[11], 10.0)
set_upper_bound(x[12], 25.0)
set_upper_bound(x[13], 30.0)
set_upper_bound(x[14], 10.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 10.0)
set_upper_bound(x[29], 25.0)
set_upper_bound(x[30], 30.0)
set_upper_bound(x[31], 10.0)
set_upper_bound(x[32], 10.0)
set_upper_bound(x[33], 25.0)
set_upper_bound(x[34], 30.0)
set_upper_bound(x[35], 10.0)
set_upper_bound(x[36], 10.0)
set_upper_bound(x[37], 25.0)
set_upper_bound(x[38], 30.0)
set_upper_bound(x[39], 10.0)
set_upper_bound(x[40], 10.0)
set_upper_bound(x[41], 25.0)
set_upper_bound(x[42], 30.0)
set_upper_bound(x[43], 10.0)
set_upper_bound(x[44], 10.0)
set_upper_bound(x[45], 25.0)
set_upper_bound(x[46], 30.0)
set_upper_bound(x[47], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+9*x[28]+18*x[29]+8*x[30]+3*x[31]+13*x[32]+22*x[33]+12*x[34]+7*x[35]+14*x[36]+23*x[37]+13*x[38]+8*x[39]+6*x[40]+15*x[41]+5*x[42]+11*x[44]+20*x[45]+10*x[46]+5*x[47] == 0.0)
@constraint(m, e2, x[28]+x[29]+x[30]+x[31] <= 75.0)
@constraint(m, e3, x[32]+x[33]+x[34]+x[35] <= 75.0)
@constraint(m, e4, x[36]+x[37]+x[38]+x[39] <= 75.0)
@constraint(m, e5, x[40]+x[41]+x[42]+x[43] <= 75.0)
@constraint(m, e6, x[44]+x[45]+x[46]+x[47] <= 75.0)
@constraint(m, e7, x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35] <= 75.0)
@constraint(m, e8, x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46]+x[47] <= 75.0)
@constraint(m, e9, x[28]+x[32]+x[36]+x[40]+x[44] <= 10.0)
@constraint(m, e10, x[29]+x[33]+x[37]+x[41]+x[45] <= 25.0)
@constraint(m, e11, x[30]+x[34]+x[38]+x[42]+x[46] <= 30.0)
@constraint(m, e12, x[31]+x[35]+x[39]+x[43]+x[47] <= 10.0)
@constraint(m, e13, -2*x[28]+x[32]+x[36]-2*x[44] <= 0.0)
@constraint(m, e14, 3*x[28]-2*x[32]+2.5*x[36]-0.3*x[44] <= 0.0)
@constraint(m, e15, 0.75*x[28]-0.25*x[32]-0.25*x[36]-0.25*x[40]+0.75*x[44] <= 0.0)
@constraint(m, e16, -0.25*x[28]+1.25*x[32]+0.15*x[36]+0.25*x[40]+0.85*x[44] <= 0.0)
@constraint(m, e17, -3*x[29]-x[41]-3*x[45] <= 0.0)
@constraint(m, e18, 3.5*x[29]-1.5*x[33]+3*x[37]+0.5*x[41]+0.2*x[45] <= 0.0)
@constraint(m, e19, 0.5*x[29]-0.5*x[33]-0.5*x[37]-0.5*x[41]+0.5*x[45] <= 0.0)
@constraint(m, e20, -x[29]+0.5*x[33]-0.6*x[37]-0.5*x[41]+0.1*x[45] <= 0.0)
@constraint(m, e21, -0.5*x[30]+2.5*x[34]+2.5*x[38]+1.5*x[42]-0.5*x[46] <= 0.0)
@constraint(m, e22, 0.5*x[30]-4.5*x[34]-2.5*x[42]-2.8*x[46] <= 0.0)
@constraint(m, e23, 0.1*x[30]-0.9*x[34]-0.9*x[38]-0.9*x[42]+0.1*x[46] <= 0.0)
@constraint(m, e24, -0.3*x[30]+1.2*x[34]+0.1*x[38]+0.2*x[42]+0.8*x[46] <= 0.0)
@constraint(m, e25, -2*x[31]+x[35]+x[39]-2*x[47] <= 0.0)
@constraint(m, e26, 2*x[31]-3*x[35]+1.5*x[39]-x[43]-1.3*x[47] <= 0.0)
@constraint(m, e27, -x[35]-x[39]-x[43] <= 0.0)
@constraint(m, e28, -1.3*x[31]+0.2*x[35]-0.9*x[39]-0.8*x[43]-0.2*x[47] <= 0.0)
@constraint(m, e29, x[15]+x[16] == 1.0)
@constraint(m, e30, x[17]+x[18]+x[19] == 1.0)
@constraint(m, e31, x[20]+x[21]+x[22]+x[23] == 1.0)
@constraint(m, e32, x[24]+x[25]+x[26]+x[27] == 1.0)
@NLconstraint(m, e33, -x[15]*x[7]+x[28] == 0.0)
@NLconstraint(m, e34, -x[15]*x[8]+x[29] == 0.0)
@NLconstraint(m, e35, -x[15]*x[9]+x[30] == 0.0)
@NLconstraint(m, e36, -x[15]*x[10]+x[31] == 0.0)
@NLconstraint(m, e37, -x[16]*x[7]+x[32] == 0.0)
@NLconstraint(m, e38, -x[16]*x[8]+x[33] == 0.0)
@NLconstraint(m, e39, -x[16]*x[9]+x[34] == 0.0)
@NLconstraint(m, e40, -x[16]*x[10]+x[35] == 0.0)
@NLconstraint(m, e41, -x[17]*x[11]+x[36] == 0.0)
@NLconstraint(m, e42, -x[17]*x[12]+x[37] == 0.0)
@NLconstraint(m, e43, -x[17]*x[13]+x[38] == 0.0)
@NLconstraint(m, e44, -x[17]*x[14]+x[39] == 0.0)
@NLconstraint(m, e45, -x[18]*x[11]+x[40] == 0.0)
@NLconstraint(m, e46, -x[18]*x[12]+x[41] == 0.0)
@NLconstraint(m, e47, -x[18]*x[13]+x[42] == 0.0)
@NLconstraint(m, e48, -x[18]*x[14]+x[43] == 0.0)
@NLconstraint(m, e49, -x[19]*x[11]+x[44] == 0.0)
@NLconstraint(m, e50, -x[19]*x[12]+x[45] == 0.0)
@NLconstraint(m, e51, -x[19]*x[13]+x[46] == 0.0)
@NLconstraint(m, e52, -x[19]*x[14]+x[47] == 0.0)
@NLconstraint(m, e53, -x[20]*x[2]+x[28] == 0.0)
@NLconstraint(m, e54, -x[21]*x[2]+x[29] == 0.0)
@NLconstraint(m, e55, -x[22]*x[2]+x[30] == 0.0)
@NLconstraint(m, e56, -x[23]*x[2]+x[31] == 0.0)
@NLconstraint(m, e57, -x[20]*x[3]+x[32] == 0.0)
@NLconstraint(m, e58, -x[21]*x[3]+x[33] == 0.0)
@NLconstraint(m, e59, -x[22]*x[3]+x[34] == 0.0)
@NLconstraint(m, e60, -x[23]*x[3]+x[35] == 0.0)
@NLconstraint(m, e61, -x[24]*x[4]+x[36] == 0.0)
@NLconstraint(m, e62, -x[25]*x[4]+x[37] == 0.0)
@NLconstraint(m, e63, -x[26]*x[4]+x[38] == 0.0)
@NLconstraint(m, e64, -x[27]*x[4]+x[39] == 0.0)
@NLconstraint(m, e65, -x[24]*x[5]+x[40] == 0.0)
@NLconstraint(m, e66, -x[25]*x[5]+x[41] == 0.0)
@NLconstraint(m, e67, -x[26]*x[5]+x[42] == 0.0)
@NLconstraint(m, e68, -x[27]*x[5]+x[43] == 0.0)
@NLconstraint(m, e69, -x[24]*x[6]+x[44] == 0.0)
@NLconstraint(m, e70, -x[25]*x[6]+x[45] == 0.0)
@NLconstraint(m, e71, -x[26]*x[6]+x[46] == 0.0)
@NLconstraint(m, e72, -x[27]*x[6]+x[47] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
