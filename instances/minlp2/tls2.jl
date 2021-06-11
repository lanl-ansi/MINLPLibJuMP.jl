using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]
@variable(m, b[b_Idx],  Bin)
x_Idx = Any[5, 6, 7, 8]
@variable(m, x[x_Idx])
i_Idx = Any[3, 4]
@variable(m, i[i_Idx], Int)
# settcategory(b[22], :Bin)
# settcategory(b[35], :Bin)
# settcategory(b[37], :Bin)
# settcategory(b[27], :Bin)
# settcategory(b[18], :Bin)
# settcategory(b[12], :Bin)
# settcategory(b[2], :Bin)
# settcategory(b[14], :Bin)
# settcategory(b[20], :Bin)
# settcategory(b[15], :Bin)
# settcategory(b[33], :Bin)
# settcategory(i[3], :Int)
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
# settcategory(b[30], :Bin)
# settcategory(b[31], :Bin)
# settcategory(b[11], :Bin)
# settcategory(b[19], :Bin)
# settcategory(b[29], :Bin)
# settcategory(b[25], :Bin)
# settcategory(b[9], :Bin)
# settcategory(i[4], :Int)
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
# settcategory(b[32], :Bin)
# settcategory(b[34], :Bin)
# settcategory(b[24], :Bin)
# settcategory(b[23], :Bin)
# settcategory(b[16], :Bin)
# settcategory(b[10], :Bin)
# settcategory(b[17], :Bin)
# settcategory(b[26], :Bin)
# settcategory(b[21], :Bin)
# settcategory(b[28], :Bin)
# settcategory(b[36], :Bin)
# settcategory(b[13], :Bin)
# settcategory(b[1], :Bin)
set_lower_bound(i[3], 1.0)
set_upper_bound(i[3], 100.0)
set_lower_bound(i[4], 1.0)
set_upper_bound(i[4], 100.0)
set_lower_bound(x[5], 1.0)
set_lower_bound(x[6], 1.0)
set_lower_bound(x[7], 1.0)
set_lower_bound(x[8], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[1]-0.2*b[2]-b[9]-2*b[10]-3*b[11]-4*b[12]-5*b[13]-6*b[14]-7*b[15]-8*b[16]-b[17]-2*b[18]-3*b[19]-4*b[20]-5*b[21]-6*b[22]-7*b[23]+objvar == 0.0)
@constraint(m, e2, 460*b[24]+920*b[25]+1380*b[26]+1840*b[27]+570*b[32]+1140*b[33]+1710*b[34] <= 1900.0)
@constraint(m, e3, 460*b[28]+920*b[29]+1380*b[30]+1840*b[31]+570*b[35]+1140*b[36]+1710*b[37] <= 1900.0)
@constraint(m, e4, -460*b[24]-920*b[25]-1380*b[26]-1840*b[27]-570*b[32]-1140*b[33]-1710*b[34] <= -1700.0)
@constraint(m, e5, -460*b[28]-920*b[29]-1380*b[30]-1840*b[31]-570*b[35]-1140*b[36]-1710*b[37] <= -1700.0)
@constraint(m, e6, b[24]+2*b[25]+3*b[26]+4*b[27]+b[32]+2*b[33]+3*b[34] <= 5.0)
@constraint(m, e7, b[28]+2*b[29]+3*b[30]+4*b[31]+b[35]+2*b[36]+3*b[37] <= 5.0)
@constraint(m, e8, b[1]-b[9]-2*b[10]-3*b[11]-4*b[12]-5*b[13]-6*b[14]-7*b[15]-8*b[16] <= 0.0)
@constraint(m, e9, b[2]-b[17]-2*b[18]-3*b[19]-4*b[20]-5*b[21]-6*b[22]-7*b[23] <= 0.0)
@constraint(m, e10, -8*b[1]+b[9]+2*b[10]+3*b[11]+4*b[12]+5*b[13]+6*b[14]+7*b[15]+8*b[16] <= 0.0)
@constraint(m, e11, -7*b[2]+b[17]+2*b[18]+3*b[19]+4*b[20]+5*b[21]+6*b[22]+7*b[23] <= 0.0)
@constraint(m, e12, i[3]-3*b[9]-8*b[10]-15*b[11]-24*b[12]-35*b[13]-48*b[14]-63*b[15]-80*b[16] == 1.0)
@constraint(m, e13, i[4]-3*b[17]-8*b[18]-15*b[19]-24*b[20]-35*b[21]-48*b[22]-63*b[23] == 1.0)
@constraint(m, e14, b[9]+b[10]+b[11]+b[12]+b[13]+b[14]+b[15]+b[16] <= 1.0)
@constraint(m, e15, b[17]+b[18]+b[19]+b[20]+b[21]+b[22]+b[23] <= 1.0)
@constraint(m, e16, x[5]-3*b[24]-8*b[25]-15*b[26]-24*b[27] == 1.0)
@constraint(m, e17, x[6]-3*b[28]-8*b[29]-15*b[30]-24*b[31] == 1.0)
@constraint(m, e18, x[7]-3*b[32]-8*b[33]-15*b[34] == 1.0)
@constraint(m, e19, x[8]-3*b[35]-8*b[36]-15*b[37] == 1.0)
@constraint(m, e20, b[24]+b[25]+b[26]+b[27] <= 1.0)
@constraint(m, e21, b[28]+b[29]+b[30]+b[31] <= 1.0)
@constraint(m, e22, b[32]+b[33]+b[34] <= 1.0)
@constraint(m, e23, b[35]+b[36]+b[37] <= 1.0)
@NLconstraint(m, e24, -(sqrt(i[3]*x[5])+sqrt(i[4]*x[6]))+b[9]+2*b[10]+3*b[11]+4*b[12]+5*b[13]+6*b[14]+7*b[15]+8*b[16]+b[17]+2*b[18]+3*b[19]+4*b[20]+5*b[21]+6*b[22]+7*b[23]+b[24]+2*b[25]+3*b[26]+4*b[27]+b[28]+2*b[29]+3*b[30]+4*b[31] <= -10.0)
@NLconstraint(m, e25, -(sqrt(i[3]*x[7])+sqrt(i[4]*x[8]))+b[9]+2*b[10]+3*b[11]+4*b[12]+5*b[13]+6*b[14]+7*b[15]+8*b[16]+b[17]+2*b[18]+3*b[19]+4*b[20]+5*b[21]+6*b[22]+7*b[23]+b[32]+2*b[33]+3*b[34]+b[35]+2*b[36]+3*b[37] <= -9.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
