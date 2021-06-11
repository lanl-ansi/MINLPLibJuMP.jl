using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 28]
@variable(m, x[x_Idx])
b_Idx = Any[25, 26, 27]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
# settcategory(b[27], :Bin)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
# settcategory(b[25], :Bin)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
# settcategory(b[26], :Bin)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 28.2665880502051)
set_upper_bound(x[20], 28.2665880502051)
set_upper_bound(x[21], 28.2665880502051)
set_upper_bound(x[22], 349.499642346026)
set_upper_bound(x[23], 349.499642346026)
set_upper_bound(x[24], 349.499642346026)


# ----- Constraints ----- #
@constraint(m, e1, -66.5*x[1]-522.5*x[2]-750.5*x[3]-125.6*x[4]-612.3*x[5]-628*x[6]-69*x[7]-32.2*x[8]-151.8*x[9]-655.2*x[10]-175.5*x[11]-468*x[12]-330*x[13]-375*x[14]-75*x[15]-1728*x[16]-1190.4*x[17]-172.8*x[18]-24.5108139399735*x[19]-24.5071418162135*x[20]-24.5120378589786*x[21]-0.2352*x[22]-0.2352*x[23]-0.2352*x[24]-100*b[25]-100*b[26]-100*b[27]+x[28] == 0.0)
@constraint(m, e2, x[1]+x[2]+x[3] == 1.0)
@constraint(m, e3, x[4]+x[5]+x[6] == 1.0)
@constraint(m, e4, x[7]+x[8]+x[9] == 1.0)
@constraint(m, e5, x[10]+x[11]+x[12] == 1.0)
@constraint(m, e6, x[13]+x[14]+x[15] == 1.0)
@constraint(m, e7, x[16]+x[17]+x[18] == 1.0)
@constraint(m, e8, x[1]-b[25] <= 0.0)
@constraint(m, e9, x[2]-b[26] <= 0.0)
@constraint(m, e10, x[3]-b[27] <= 0.0)
@constraint(m, e11, x[4]-b[25] <= 0.0)
@constraint(m, e12, x[5]-b[26] <= 0.0)
@constraint(m, e13, x[6]-b[27] <= 0.0)
@constraint(m, e14, x[7]-b[25] <= 0.0)
@constraint(m, e15, x[8]-b[26] <= 0.0)
@constraint(m, e16, x[9]-b[27] <= 0.0)
@constraint(m, e17, x[10]-b[25] <= 0.0)
@constraint(m, e18, x[11]-b[26] <= 0.0)
@constraint(m, e19, x[12]-b[27] <= 0.0)
@constraint(m, e20, x[13]-b[25] <= 0.0)
@constraint(m, e21, x[14]-b[26] <= 0.0)
@constraint(m, e22, x[15]-b[27] <= 0.0)
@constraint(m, e23, x[16]-b[25] <= 0.0)
@constraint(m, e24, x[17]-b[26] <= 0.0)
@constraint(m, e25, x[18]-b[27] <= 0.0)
@NLconstraint(m, e26, - (x[19])^2+95*x[1]+157*x[4]+46*x[7]+234*x[10]+75*x[13]+192*x[16] <= 0.0)
@NLconstraint(m, e27, - (x[20])^2+95*x[2]+157*x[5]+46*x[8]+234*x[11]+75*x[14]+192*x[17] <= 0.0)
@NLconstraint(m, e28, - (x[21])^2+95*x[3]+157*x[6]+46*x[9]+234*x[12]+75*x[15]+192*x[18] <= 0.0)
@NLconstraint(m, e29, - (x[22])^2+6300*x[1]+17500*x[4]+4375*x[7]+44800*x[10]+4375*x[13]+44800*x[16] <= 0.0)
@NLconstraint(m, e30, - (x[23])^2+6300*x[2]+17500*x[5]+4375*x[8]+44800*x[11]+4375*x[14]+44800*x[17] <= 0.0)
@NLconstraint(m, e31, - (x[24])^2+6300*x[3]+17500*x[6]+4375*x[9]+44800*x[12]+4375*x[15]+44800*x[18] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[28])

m = m 		 # model get returned when including this script. 
