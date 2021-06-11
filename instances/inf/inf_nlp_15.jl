using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 10.0)
set_lower_bound(x[2], -1.0)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], -1.0)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], -1.0)
set_upper_bound(x[4], 1.0)
set_lower_bound(x[5], -1.0)
set_upper_bound(x[5], 1.0)
set_lower_bound(x[6], -1.0)
set_upper_bound(x[6], 1.0)
set_lower_bound(x[7], -1.0)
set_upper_bound(x[7], 1.0)
set_lower_bound(x[8], -1.0)
set_upper_bound(x[8], 1.0)
set_lower_bound(x[9], -1.0)
set_upper_bound(x[9], 1.0)
set_lower_bound(x[10], -1.0)
set_upper_bound(x[10], 1.0)
set_lower_bound(x[11], -1.0)
set_upper_bound(x[11], 1.0)
set_lower_bound(x[12], -1.0)
set_upper_bound(x[12], 1.0)
set_lower_bound(x[13], -1.0)
set_upper_bound(x[13], 1.0)
set_lower_bound(x[14], -1.0)
set_upper_bound(x[14], 1.0)
set_lower_bound(x[15], -1.0)
set_upper_bound(x[15], 1.0)
set_lower_bound(x[16], -1.0)
set_upper_bound(x[16], 1.0)
set_lower_bound(x[17], -1.0)
set_upper_bound(x[17], 1.0)
set_lower_bound(x[18], -1.0)
set_upper_bound(x[18], 1.0)
set_lower_bound(x[19], -1.0)
set_upper_bound(x[19], 1.0)
set_lower_bound(x[20], -1.0)
set_upper_bound(x[20], 1.0)
set_lower_bound(x[21], -1.0)
set_upper_bound(x[21], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[2]*x[2]-x[12]*x[12]+2*x[2]*x[4]+2*x[12]*x[14]+2*x[3]*x[5]+2*x[13]*x[15]+2*x[4]*x[6]+2*x[14]*x[16]+2*x[5]*x[7]+2*x[15]*x[17]+2*x[8]*x[6]+2*x[18]*x[16]+2*x[9]*x[7]+2*x[19]*x[17]+2*x[10]*x[8]+2*x[20]*x[18]+2*x[11]*x[9]+2*x[21]*x[19]+2*x[10]+x[11]*x[11]-x[21]*x[21]-2*x[1]*x[3] == 0.0)
@NLconstraint(m, e2, 2*x[2]*x[4]-2*x[12]*x[14]+x[3]*x[3]-x[13]*x[13]+2*x[2]*x[6]+2*x[12]*x[16]+2*x[3]*x[7]+2*x[13]*x[17]+2*x[4]*x[8]+2*x[14]*x[18]+2*x[9]*x[5]+2*x[19]*x[15]+2*x[10]*x[6]+2*x[20]*x[16]+2*x[11]*x[7]+2*x[21]*x[17]+2*x[8]+2*x[11]*x[9]-2*x[21]*x[19]+x[10]*x[10]-x[20]*x[20]-2*x[1]*x[5] == 0.0)
@NLconstraint(m, e3, 2*x[2]*x[6]-2*x[12]*x[16]+2*x[3]*x[5]-2*x[13]*x[15]+x[4]*x[4]-x[14]*x[14]+2*x[2]*x[8]+2*x[12]*x[18]+2*x[3]*x[9]+2*x[13]*x[19]+2*x[10]*x[4]+2*x[20]*x[14]+2*x[11]*x[5]+2*x[21]*x[15]+2*x[6]+2*x[11]*x[7]-2*x[21]*x[17]+2*x[10]*x[8]-2*x[20]*x[18]+x[9]*x[9]-x[19]*x[19]-2*x[1]*x[7] == 0.0)
@NLconstraint(m, e4, 2*x[2]*x[8]-2*x[12]*x[18]+2*x[3]*x[7]-2*x[13]*x[17]+2*x[4]*x[6]-2*x[14]*x[16]+x[5]*x[5]-x[15]*x[15]+2*x[2]*x[10]+2*x[12]*x[20]+2*x[11]*x[3]+2*x[21]*x[13]+2*x[4]+2*x[11]*x[5]-2*x[21]*x[15]+2*x[10]*x[6]-2*x[20]*x[16]+2*x[9]*x[7]-2*x[19]*x[17]+x[8]*x[8]-x[18]*x[18]-2*x[1]*x[9] == 0.0)
@NLconstraint(m, e5, 2*x[2]*x[10]-2*x[12]*x[20]+2*x[3]*x[9]-2*x[13]*x[19]+2*x[4]*x[8]-2*x[14]*x[18]+2*x[5]*x[7]-2*x[15]*x[17]+x[6]*x[6]-x[16]*x[16]+2*x[2]+2*x[11]*x[3]-2*x[21]*x[13]+2*x[10]*x[4]-2*x[20]*x[14]+2*x[9]*x[5]-2*x[19]*x[15]+2*x[8]*x[6]-2*x[18]*x[16]+x[7]*x[7]-x[17]*x[17]-2*x[1]*x[11] == 0.0)
@NLconstraint(m, e6, 2*x[2]*x[12]-2*x[12]*x[4]+2*x[2]*x[14]-2*x[13]*x[5]+2*x[3]*x[15]-2*x[14]*x[6]+2*x[4]*x[16]-2*x[15]*x[7]+2*x[5]*x[17]-2*x[8]*x[16]+2*x[18]*x[6]-2*x[9]*x[17]+2*x[19]*x[7]-2*x[10]*x[18]+2*x[20]*x[8]-2*x[11]*x[19]+2*x[21]*x[9]-2*x[20]-2*x[11]*x[21]-2*x[1]*x[13] == 0.0)
@NLconstraint(m, e7, 2*x[2]*x[14]+2*x[12]*x[4]+2*x[3]*x[13]-2*x[12]*x[6]+2*x[2]*x[16]-2*x[13]*x[7]+2*x[3]*x[17]-2*x[14]*x[8]+2*x[4]*x[18]-2*x[9]*x[15]+2*x[19]*x[5]-2*x[10]*x[16]+2*x[20]*x[6]-2*x[11]*x[17]+2*x[21]*x[7]-2*x[18]-2*x[11]*x[19]-2*x[21]*x[9]-2*x[10]*x[20]-2*x[1]*x[15] == 0.0)
@NLconstraint(m, e8, 2*x[2]*x[16]+2*x[12]*x[6]+2*x[3]*x[15]+2*x[13]*x[5]+2*x[4]*x[14]-2*x[12]*x[8]+2*x[2]*x[18]-2*x[13]*x[9]+2*x[3]*x[19]-2*x[10]*x[14]+2*x[20]*x[4]-2*x[11]*x[15]+2*x[21]*x[5]-2*x[16]-2*x[11]*x[17]-2*x[21]*x[7]-2*x[10]*x[18]-2*x[20]*x[8]-2*x[9]*x[19]-2*x[1]*x[17] == 0.0)
@NLconstraint(m, e9, 2*x[2]*x[18]+2*x[12]*x[8]+2*x[3]*x[17]+2*x[13]*x[7]+2*x[4]*x[16]+2*x[14]*x[6]+2*x[5]*x[15]-2*x[12]*x[10]+2*x[2]*x[20]-2*x[11]*x[13]+2*x[21]*x[3]-2*x[14]-2*x[11]*x[15]-2*x[21]*x[5]-2*x[10]*x[16]-2*x[20]*x[6]-2*x[9]*x[17]-2*x[19]*x[7]-2*x[8]*x[18]-2*x[1]*x[19] == 0.0)
@NLconstraint(m, e10, 2*x[2]*x[20]+2*x[12]*x[10]+2*x[3]*x[19]+2*x[13]*x[9]+2*x[4]*x[18]+2*x[14]*x[8]+2*x[5]*x[17]+2*x[15]*x[7]+2*x[6]*x[16]-2*x[12]-2*x[11]*x[13]-2*x[21]*x[3]-2*x[10]*x[14]-2*x[20]*x[4]-2*x[9]*x[15]-2*x[19]*x[5]-2*x[8]*x[16]-2*x[18]*x[6]-2*x[7]*x[17]-2*x[1]*x[21] == 0.0)
@NLconstraint(m, e11, x[2]*x[2]+x[12]*x[12] == 1.0)
@NLconstraint(m, e12, x[3]*x[3]+x[13]*x[13] == 1.0)
@NLconstraint(m, e13, x[4]*x[4]+x[14]*x[14] == 1.0)
@NLconstraint(m, e14, x[5]*x[5]+x[15]*x[15] == 1.0)
@NLconstraint(m, e15, x[6]*x[6]+x[16]*x[16] == 1.0)
@NLconstraint(m, e16, x[7]*x[7]+x[17]*x[17] == 1.0)
@NLconstraint(m, e17, x[8]*x[8]+x[18]*x[18] == 1.0)
@NLconstraint(m, e18, x[9]*x[9]+x[19]*x[19] == 1.0)
@NLconstraint(m, e19, x[10]*x[10]+x[20]*x[20] == 1.0)
@NLconstraint(m, e20, x[11]*x[11]+x[21]*x[21] == 1.0)
@NLconstraint(m, e21, x[2]*x[11]+x[12]*x[21]+0.145500033808614*x[3]+0.989358246623382*x[13] == 0.0)
@NLconstraint(m, e22, x[3]*x[10]+x[13]*x[20]+0.957659480323385*x[5]-0.287903316665065*x[15] == 0.0)
@NLconstraint(m, e23, x[4]*x[9]+x[14]*x[19]-0.424179007336997*x[7]-0.905578362006624*x[17] == 0.0)
@NLconstraint(m, e24, x[5]*x[8]+x[15]*x[18]-0.83422336050651*x[9]+0.551426681241691*x[19] == 0.0)
@NLconstraint(m, e25, x[6]*x[7]+x[16]*x[17]+0.666938061652262*x[11]+0.745113160479349*x[21] == 0.0)
@NLconstraint(m, e26, x[6]*x[7]+x[16]*x[17]+0.6401443394692*x[11]+0.768254661323667*x[21] == 0.0)
@NLconstraint(m, e27, x[5]*x[8]+x[15]*x[18]-0.853220107722584*x[9]+0.521551002086912*x[19] == 0.0)
@NLconstraint(m, e28, x[4]*x[9]+x[14]*x[19]-0.39185723042955*x[7]-0.920026038196791*x[17] == 0.0)
@NLconstraint(m, e29, x[3]*x[10]+x[13]*x[20]+0.967250588273882*x[5]-0.253823362762036*x[15] == 0.0)
@NLconstraint(m, e30, x[2]*x[11]+x[12]*x[21]+0.110387243839048*x[3]+0.993888653923375*x[13] == 0.0)
@NLconstraint(m, e31, x[11]*x[12]-x[2]*x[21]-0.989358246623382*x[3]+1.16400027046891*x[13] == 0.0)
@NLconstraint(m, e32, x[10]*x[13]-x[3]*x[20]+7.66127584258708*x[13]+0.287903316665065*x[5] == 0.0)
@NLconstraint(m, e33, x[9]*x[14]-x[4]*x[19]+0.905578362006624*x[7]-3.39343205869598*x[13] == 0.0)
@NLconstraint(m, e34, x[8]*x[15]-x[5]*x[18]-0.551426681241691*x[9]-6.67378688405208*x[13] == 0.0)
@NLconstraint(m, e35, x[7]*x[16]-x[6]*x[17]-0.745113160479349*x[11]+5.3355044932181*x[13] == 0.0)
@NLconstraint(m, e36, x[6]*x[17]-x[7]*x[16]+0.768254661323667*x[11]+5.1211547157536*x[13] == 0.0)
@NLconstraint(m, e37, x[5]*x[18]-x[8]*x[15]+0.521551002086912*x[9]-6.82576086178067*x[13] == 0.0)
@NLconstraint(m, e38, x[4]*x[19]-x[9]*x[14]-0.920026038196791*x[7]-3.1348578434364*x[13] == 0.0)
@NLconstraint(m, e39, x[3]*x[20]-x[10]*x[13]+7.73800470619106*x[13]-0.253823362762036*x[5] == 0.0)
@NLconstraint(m, e40, x[2]*x[21]-x[11]*x[12]+0.993888653923375*x[3]+0.883097950712381*x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
