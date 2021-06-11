using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 50, 51, 52, 53]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
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
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
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
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[1], 45.0)
set_upper_bound(x[2], 45.0)
set_upper_bound(x[3], 45.0)
set_upper_bound(x[4], 45.0)
set_upper_bound(x[5], 65.0)
set_upper_bound(x[6], 65.0)
set_upper_bound(x[7], 65.0)
set_upper_bound(x[8], 65.0)
set_upper_bound(x[9], 105.0)
set_upper_bound(x[10], 105.0)
set_upper_bound(x[11], 105.0)
set_upper_bound(x[12], 105.0)
set_upper_bound(x[13], 85.0)
set_upper_bound(x[14], 85.0)
set_upper_bound(x[15], 85.0)
set_upper_bound(x[16], 85.0)
set_lower_bound(x[17], 350.0)
set_upper_bound(x[17], 350.0)
set_upper_bound(x[18], 354.0)
set_upper_bound(x[19], 354.0)
set_upper_bound(x[20], 354.0)
set_lower_bound(x[21], 350.0)
set_upper_bound(x[21], 350.0)
set_lower_bound(x[22], 158.0)
set_upper_bound(x[22], 158.0)
set_upper_bound(x[23], 160.0)
set_upper_bound(x[24], 160.0)
set_upper_bound(x[25], 160.0)
set_lower_bound(x[26], 158.0)
set_upper_bound(x[26], 158.0)
set_upper_bound(x[35], 5.184)
set_upper_bound(x[36], 5.184)
set_upper_bound(x[37], 5.184)
set_upper_bound(x[38], 5.184)
set_upper_bound(x[39], 3.456)
set_upper_bound(x[40], 3.456)
set_upper_bound(x[41], 3.456)
set_upper_bound(x[42], 3.456)
set_lower_bound(x[43], 0.0)
set_upper_bound(x[43], 0.0)
set_upper_bound(x[44], 75.0)
set_upper_bound(x[45], 75.0)
set_upper_bound(x[46], 75.0)
set_upper_bound(x[47], 75.0)
set_lower_bound(x[50], 100.0)
set_upper_bound(x[50], 250.0)
set_lower_bound(x[51], 100.0)
set_upper_bound(x[51], 250.0)
set_lower_bound(x[52], 100.0)
set_upper_bound(x[52], 250.0)
set_lower_bound(x[53], 100.0)
set_upper_bound(x[53], 250.0)


# ----- Constraints ----- #
@constraint(m, e1, x[17]-x[18]-x[35] == -1.296)
@constraint(m, e2, x[18]-x[19]-x[36] == -1.296)
@constraint(m, e3, x[19]-x[20]-x[37] == -1.296)
@constraint(m, e4, x[20]-x[21]-x[38] == -1.296)
@constraint(m, e5, x[22]-x[23]+x[35]-x[39] == -0.0864)
@constraint(m, e6, x[23]-x[24]+x[36]-x[40] == -0.0864)
@constraint(m, e7, x[24]-x[25]+x[37]-x[41] == -0.0864)
@constraint(m, e8, x[25]-x[26]+x[38]-x[42] == -0.0864)
@NLconstraint(m, e9, -(7.7167+0.2*(0.0957033*x[17]-0.000143410266666667* (x[18]-x[17])^2+0.0957033*x[18]-0.0004302308*x[17]*x[18]+1.212651e-7*( (x[17])^2+ (x[18])^2)*(x[17]+x[18])))*x[35]+x[27] == 0.0)
@NLconstraint(m, e10, -(7.7167+0.2*(0.0957033*x[18]-0.000143410266666667* (x[19]-x[18])^2+0.0957033*x[19]-0.0004302308*x[18]*x[19]+1.212651e-7*( (x[18])^2+ (x[19])^2)*(x[18]+x[19])))*x[36]+x[28] == 0.0)
@NLconstraint(m, e11, -(7.7167+0.2*(0.0957033*x[19]-0.000143410266666667* (x[20]-x[19])^2+0.0957033*x[20]-0.0004302308*x[19]*x[20]+1.212651e-7*( (x[19])^2+ (x[20])^2)*(x[19]+x[20])))*x[37]+x[29] == 0.0)
@NLconstraint(m, e12, -(7.7167+0.2*(0.0957033*x[20]-0.000143410266666667* (x[21]-x[20])^2+0.0957033*x[21]-0.0004302308*x[20]*x[21]+1.212651e-7*( (x[20])^2+ (x[21])^2)*(x[20]+x[21])))*x[38]+x[30] == 0.0)
@NLconstraint(m, e13, -(2.28+0.2*(0.0584999*x[22]-6.46057666666667e-5* (x[23]-x[22])^2+0.0584999*x[23]-0.0001938173*x[22]*x[23]+7.739465e-8*( (x[22])^2+ (x[23])^2)*(x[22]+x[23])))*x[39]+x[31] == 0.0)
@NLconstraint(m, e14, -(2.28+0.2*(0.0584999*x[23]-6.46057666666667e-5* (x[24]-x[23])^2+0.0584999*x[24]-0.0001938173*x[23]*x[24]+7.739465e-8*( (x[23])^2+ (x[24])^2)*(x[23]+x[24])))*x[40]+x[32] == 0.0)
@NLconstraint(m, e15, -(2.28+0.2*(0.0584999*x[24]-6.46057666666667e-5* (x[25]-x[24])^2+0.0584999*x[25]-0.0001938173*x[24]*x[25]+7.739465e-8*( (x[24])^2+ (x[25])^2)*(x[24]+x[25])))*x[41]+x[33] == 0.0)
@NLconstraint(m, e16, -(2.28+0.2*(0.0584999*x[25]-6.46057666666667e-5* (x[26]-x[25])^2+0.0584999*x[26]-0.0001938173*x[25]*x[26]+7.739465e-8*( (x[25])^2+ (x[26])^2)*(x[25]+x[26])))*x[42]+x[34] == 0.0)
@constraint(m, e17, -x[27]-x[31]+x[44] == 0.0)
@constraint(m, e18, -x[28]-x[32]+x[45] == 0.0)
@constraint(m, e19, -x[29]-x[33]+x[46] == 0.0)
@constraint(m, e20, -x[30]-x[34]+x[47] == 0.0)
@constraint(m, e21, x[43]+x[49] == 0.0)
@constraint(m, e22, x[44]+x[50] == 280.0)
@constraint(m, e23, x[45]+x[51] == 250.0)
@constraint(m, e24, x[46]+x[52] == 275.0)
@constraint(m, e25, x[47]+x[53] == 250.0)
@constraint(m, e26, -x[1]-x[9]-x[50] == -250.0)
@constraint(m, e27, -x[2]-x[10]-x[51] == -250.0)
@constraint(m, e28, -x[3]-x[11]-x[52] == -250.0)
@constraint(m, e29, -x[4]-x[12]-x[53] == -250.0)
@constraint(m, e30, -x[5]-x[13]+x[50] == 100.0)
@constraint(m, e31, -x[6]-x[14]+x[51] == 100.0)
@constraint(m, e32, -x[7]-x[15]+x[52] == 100.0)
@constraint(m, e33, -x[8]-x[16]+x[53] == 100.0)
@constraint(m, e34, x[1]-x[44] >= -45.0)
@constraint(m, e35, x[2]-x[45] >= -45.0)
@constraint(m, e36, x[3]-x[46] >= -45.0)
@constraint(m, e37, x[4]-x[47] >= -45.0)
@constraint(m, e38, x[5]+x[44] >= 35.0)
@constraint(m, e39, x[6]+x[45] >= 35.0)
@constraint(m, e40, x[7]+x[46] >= 35.0)
@constraint(m, e41, x[8]+x[47] >= 35.0)
@NLconstraint(m, e42, -( (x[50])^2+10*x[50]+ (x[51])^2+10*x[51]+ (x[52])^2+10*x[52]+ (x[53])^2+10*x[53])+objvar == -44000.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.
