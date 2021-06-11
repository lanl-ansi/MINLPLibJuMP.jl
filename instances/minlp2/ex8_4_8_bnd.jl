using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.285)
set_upper_bound(x[1], 0.315)
set_lower_bound(x[2], 0.546)
set_upper_bound(x[2], 0.636)
set_lower_bound(x[3], 0.999071638557945)
set_upper_bound(x[3], 1.00092836144205)
set_lower_bound(x[4], 481.55)
set_upper_bound(x[4], 486.05)
set_lower_bound(x[5], 0.385)
set_upper_bound(x[5], 0.415)
set_lower_bound(x[6], 0.557)
set_upper_bound(x[6], 0.647)
set_lower_bound(x[7], 0.999071638557945)
set_upper_bound(x[7], 1.00092836144205)
set_lower_bound(x[8], 490.95)
set_upper_bound(x[8], 495.45)
set_lower_bound(x[9], 0.485)
set_upper_bound(x[9], 0.515)
set_lower_bound(x[10], 0.567)
set_upper_bound(x[10], 0.657)
set_lower_bound(x[11], 0.999071638557945)
set_upper_bound(x[11], 1.00092836144205)
set_lower_bound(x[12], 497.65)
set_upper_bound(x[12], 502.15)
set_lower_bound(x[13], 0.685)
set_upper_bound(x[13], 0.715)
set_lower_bound(x[14], 0.612)
set_upper_bound(x[14], 0.702)
set_lower_bound(x[15], 0.999071638557945)
set_upper_bound(x[15], 1.00092836144205)
set_lower_bound(x[16], 499.15)
set_upper_bound(x[16], 503.65)
set_lower_bound(x[17], 0.885)
set_upper_bound(x[17], 0.915)
set_lower_bound(x[18], 0.769)
set_upper_bound(x[18], 0.859)
set_lower_bound(x[19], 0.999071638557945)
set_upper_bound(x[19], 1.00092836144205)
set_lower_bound(x[20], 467.45)
set_upper_bound(x[20], 471.95)
set_lower_bound(x[21], 1.0)
set_upper_bound(x[21], 2.0)
set_lower_bound(x[22], 1.0)
set_upper_bound(x[22], 2.0)
set_lower_bound(x[23], 0.1)
set_lower_bound(x[24], 0.1)
set_lower_bound(x[25], 0.1)
set_lower_bound(x[26], 0.1)
set_lower_bound(x[27], 0.1)
set_lower_bound(x[28], 0.1)
set_lower_bound(x[29], 0.1)
set_lower_bound(x[30], 0.1)
set_lower_bound(x[31], 0.1)
set_lower_bound(x[32], 0.1)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-60)+200*x[1])^2+ ((-39.4)+66.6666666666667*x[2])^2+ ((-3231.5)+3231.5*x[3])^2+ ((-645.066666666667)+1.33333333333333*x[4])^2+ ((-80)+200*x[5])^2+ ((-40.1333333333333)+66.6666666666667*x[6])^2+ ((-3231.5)+3231.5*x[7])^2+ ((-657.6)+1.33333333333333*x[8])^2+ ((-100)+200*x[9])^2+ ((-40.8)+66.6666666666667*x[10])^2+ ((-3231.5)+3231.5*x[11])^2+ ((-666.533333333333)+1.33333333333333*x[12])^2+ ((-140)+200*x[13])^2+ ((-43.8)+66.6666666666667*x[14])^2+ ((-3231.5)+3231.5*x[15])^2+ ((-668.533333333333)+1.33333333333333*x[16])^2+ ((-180)+200*x[17])^2+ ((-54.2666666666667)+66.6666666666667*x[18])^2+ ((-3231.5)+3231.5*x[19])^2+ ((-626.266666666667)+1.33333333333333*x[20])^2)+objvar == 0.0)
@NLconstraint(m, e2, exp(18.5875-3626.55/(-34.29+323.15*x[3]))-x[33] == 0.0)
@NLconstraint(m, e3, exp(16.1764-2927.17/(-50.22+323.15*x[3]))-x[34] == 0.0)
@NLconstraint(m, e4, exp(18.5875-3626.55/(-34.29+323.15*x[7]))-x[35] == 0.0)
@NLconstraint(m, e5, exp(16.1764-2927.17/(-50.22+323.15*x[7]))-x[36] == 0.0)
@NLconstraint(m, e6, exp(18.5875-3626.55/(-34.29+323.15*x[11]))-x[37] == 0.0)
@NLconstraint(m, e7, exp(16.1764-2927.17/(-50.22+323.15*x[11]))-x[38] == 0.0)
@NLconstraint(m, e8, exp(18.5875-3626.55/(-34.29+323.15*x[15]))-x[39] == 0.0)
@NLconstraint(m, e9, exp(16.1764-2927.17/(-50.22+323.15*x[15]))-x[40] == 0.0)
@NLconstraint(m, e10, exp(18.5875-3626.55/(-34.29+323.15*x[19]))-x[41] == 0.0)
@NLconstraint(m, e11, exp(16.1764-2927.17/(-50.22+323.15*x[19]))-x[42] == 0.0)
@NLconstraint(m, e12, x[23]*x[1]*x[33]-x[2]*x[4] == 0.0)
@NLconstraint(m, e13, x[25]*x[5]*x[35]-x[6]*x[8] == 0.0)
@NLconstraint(m, e14, x[27]*x[9]*x[37]-x[10]*x[12] == 0.0)
@NLconstraint(m, e15, x[29]*x[13]*x[39]-x[14]*x[16] == 0.0)
@NLconstraint(m, e16, x[31]*x[17]*x[41]-x[18]*x[20] == 0.0)
@NLconstraint(m, e17, x[24]*(1-x[1])*x[34]-(1-x[2])*x[4] == 0.0)
@NLconstraint(m, e18, x[26]*(1-x[5])*x[36]-(1-x[6])*x[8] == 0.0)
@NLconstraint(m, e19, x[28]*(1-x[9])*x[38]-(1-x[10])*x[12] == 0.0)
@NLconstraint(m, e20, x[30]*(1-x[13])*x[40]-(1-x[14])*x[16] == 0.0)
@NLconstraint(m, e21, x[32]*(1-x[17])*x[42]-(1-x[18])*x[20] == 0.0)
@NLconstraint(m, e22, x[21]/x[3]/ (1+x[21]/x[22]*x[1]/(1-x[1]))^2-log(x[23]) == 0.0)
@NLconstraint(m, e23, x[21]/x[7]/ (1+x[21]/x[22]*x[5]/(1-x[5]))^2-log(x[25]) == 0.0)
@NLconstraint(m, e24, x[21]/x[11]/ (1+x[21]/x[22]*x[9]/(1-x[9]))^2-log(x[27]) == 0.0)
@NLconstraint(m, e25, x[21]/x[15]/ (1+x[21]/x[22]*x[13]/(1-x[13]))^2-log(x[29]) == 0.0)
@NLconstraint(m, e26, x[21]/x[19]/ (1+x[21]/x[22]*x[17]/(1-x[17]))^2-log(x[31]) == 0.0)
@NLconstraint(m, e27, x[22]/x[3]/ (1+x[22]/x[21]*(1-x[1])/x[1])^2-log(x[24]) == 0.0)
@NLconstraint(m, e28, x[22]/x[7]/ (1+x[22]/x[21]*(1-x[5])/x[5])^2-log(x[26]) == 0.0)
@NLconstraint(m, e29, x[22]/x[11]/ (1+x[22]/x[21]*(1-x[9])/x[9])^2-log(x[28]) == 0.0)
@NLconstraint(m, e30, x[22]/x[15]/ (1+x[22]/x[21]*(1-x[13])/x[13])^2-log(x[30]) == 0.0)
@NLconstraint(m, e31, x[22]/x[19]/ (1+x[22]/x[21]*(1-x[17])/x[17])^2-log(x[32]) == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
