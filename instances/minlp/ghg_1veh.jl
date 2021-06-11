using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
@variable(m, x[x_Idx])
set_lower_bound(x[27], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[13], 0.526315789473684)
set_upper_bound(x[13], 1.05263157894737)
set_lower_bound(x[14], 0.961538461538462)
set_upper_bound(x[14], 2.11538461538462)
set_lower_bound(x[15], 0.2)
set_upper_bound(x[15], 1.0)
set_lower_bound(x[16], 0.8)
set_upper_bound(x[16], 0.8)
set_lower_bound(x[17], 6.0)
set_upper_bound(x[17], 13.0)
set_lower_bound(x[18], 6.0)
set_upper_bound(x[18], 13.0)
set_lower_bound(x[19], 0.26)
set_upper_bound(x[19], 0.35)
set_lower_bound(x[20], 4.9)
set_upper_bound(x[20], 5.5)
set_lower_bound(x[21], 55.0)
set_upper_bound(x[21], 63.0)
set_lower_bound(x[22], 0.296392099803303)
set_upper_bound(x[22], 0.404171045186323)
set_lower_bound(x[23], 0.134723681728774)
set_upper_bound(x[23], 0.229030258938916)
set_upper_bound(x[24], 90.0)
set_upper_bound(x[25], 200.0)
set_upper_bound(x[26], 26.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 34.1)
set_upper_bound(x[29], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -21.6*x[15]*x[16]*x[20]+x[24] == 0.0)
@NLconstraint(m, e2, -(0.007852585706*x[13]^3+0.154288922601*x[14]^3+0.352933730854*x[15]^3-0.004816150342*x[13]^2*x[14]-0.00547943134*x[14]^2*x[13]-0.02533808214*x[13]^2*x[15]+0.00021201136*x[15]^2*x[13]-0.057118497613*x[14]^2*x[15]-0.042739509965*x[15]^2*x[14]-0.01583097252*x[13]*x[14]*x[15]-0.001028174658*x[13]^2-0.805369774847*x[14]^2-0.655580550098*x[15]^2+0.057270405947*x[13]*x[14]+0.07973036236*x[13]*x[15]+0.342091579946*x[14]*x[15]-0.191345333621*x[13]+1.188971392024*x[14]-0.346682012779*x[15])+x[20] == 4.960068215723)
@NLconstraint(m, e3, -(2.21406746341*x[13]^3+1.086659693552*x[14]^3+5.577874978662*x[15]^3-0.815241697738*x[13]^2*x[14]+0.509578110533*x[14]^2*x[13]+1.561758113326*x[13]^2*x[15]+2.212321055022*x[15]^2*x[13]-0.612567680918*x[14]^2*x[15]+0.254008083604*x[15]^2*x[14]-0.159429747244*x[13]*x[14]*x[15]-8.905599398536*x[13]^2-6.095001164559*x[14]^2-15.207539664993*x[15]^2+0.089172114876*x[13]*x[14]-3.273526677614*x[13]*x[15]+2.498376358946*x[14]*x[15]+2.621894664006*x[13]+9.284846067558*x[14]+5.837143728557*x[15])+x[21] == 57.679680208231)
@NLconstraint(m, e4, -(1.456640469666*x[13]^3-5.495718264905*x[14]^3-28.456261951645*x[15]^3+0.912917970314*x[13]^2*x[14]-0.88119920631*x[14]^2*x[13]-1.049763024383*x[13]^2*x[15]-0.308107344863*x[15]^2*x[13]+2.043536297441*x[14]^2*x[15]+15.609611231641*x[15]^2*x[14]+0.336486837518*x[13]*x[14]*x[15]-4.634160849469*x[13]^2+31.478262635483*x[14]^2+34.016843490037*x[15]^2+1.153148892739*x[13]*x[14]+1.168601192983*x[13]*x[15]-32.056936006397*x[14]*x[15]+3.405095041238*x[13]-54.472915571467*x[14]+9.56987912824*x[15])+x[17] == 44.230616625681)
@NLconstraint(m, e5, -(3.334445194766*x[13]^3-2.265666208775*x[14]^3-20.256566414583*x[15]^3+0.413782262402*x[13]^2*x[14]-3.523622273943*x[14]^2*x[13]-0.285910055687*x[13]^2*x[15]-10.110726634622*x[15]^2*x[13]+1.95072196814*x[14]^2*x[15]+10.308512463418*x[15]^2*x[14]+5.808426325827*x[13]*x[14]*x[15]-6.932398033967*x[13]^2+15.80019426934*x[14]^2+39.197963873266*x[15]^2+7.900706395772*x[13]*x[14]+6.58186092156*x[13]*x[15]-30.119438887106*x[14]*x[15]-6.733798415788*x[13]-26.385308892431*x[14]-4.098268423019*x[15])+x[18] == 32.102172356117)
@NLconstraint(m, e6, -(-0.194075741585*x[13]^2-0.004843420334*x[14]^2+0.04736686635*x[15]^2+9.4029979e-5*x[13]*x[14]+0.011329651793*x[13]*x[15]-0.001017352942*x[14]*x[15]+0.382275988592*x[13]+0.019484588535*x[14]-0.077357069039*x[15])+x[19] == 0.140278656706)
@constraint(m, e7, x[17] <= 11.0)
@constraint(m, e8, x[18] <= 11.0)
@constraint(m, e9, x[19] >= 0.32)
@NLconstraint(m, e10, exp(-0.029595*x[24])*(33.7894914681534+x[24])+x[26] == 33.7894914681534)
@NLconstraint(m, e11, exp(-0.029595*x[24])+x[27] == 1.0)
@NLconstraint(m, e12, -0.134723681728774*(0.010073140669*x[13]^2+0.011394190823*x[14]^2+0.052910213683*x[15]^2+0.000159410872*x[13]*x[14]+0.008036404292*x[13]*x[15]-0.003423392047*x[14]*x[15]+0.097124049148*x[13]+0.03829180344*x[14]+0.370440556286*x[15])+x[22] == 0.29587368369345)
@NLconstraint(m, e13, -0.134723681728774*(0.46598008632*x[13]^2-0.00797004615*x[14]^2-0.01779288613*x[15]^2-0.01429434551*x[13]*x[14]-0.03832188467*x[13]*x[15]+0.00970510229*x[14]*x[15]-0.88981702163*x[13]+0.07730602595*x[14]+0.39988032723*x[15])+x[23] == 0.194162178290626)
@NLconstraint(m, e14, -150000*(0.0181052631578947/x[20]+0.03458*x[22]-0.03458*x[23])*x[24]/(4320*x[15]-5187*x[23])+x[25] == 0.0)
@NLconstraint(m, e15, exp(-0.029595*x[25])*(33.7894914681534+x[25])+x[28] == 33.7894914681534)
@NLconstraint(m, e16, exp(-0.029595*x[25])+x[29] == 1.0)
@constraint(m, e17, b[1]+b[2]+b[3] == 1.0)
@NLconstraint(m, e18, b[1]*x[24] <= 0.0)
@NLconstraint(m, e19, b[2]*x[24] >= 0.0)
@NLconstraint(m, e20, b[2]*(-200+x[24]) <= 0.0)
@NLconstraint(m, e21, b[3]*(-200+x[24]) >= 0.0)
@constraint(m, e22, b[4]+b[5]+b[6] == 1.0)
@NLconstraint(m, e23, b[8]*b[4]*x[25] <= 0.0)
@NLconstraint(m, e24, b[8]*b[5]*x[25] >= 0.0)
@NLconstraint(m, e25, b[8]*b[5]*(-200+x[25]) <= 0.0)
@NLconstraint(m, e26, b[8]*b[6]*(-200+x[25]) >= 0.0)
@constraint(m, e27, b[7]+b[8]+b[9] == 1.0)
@NLconstraint(m, e28, (-150000+124927.703875072*x[15]/x[23])*b[7] <= 0.0)
@NLconstraint(m, e29, (-150000+124927.703875072*x[15]/x[23])*b[8] >= 0.0)
@NLconstraint(m, e30, (150000-4320*x[15]/(0.0172/x[20]+0.03458*x[22]))*b[8] >= 0.0)
@NLconstraint(m, e31, (150000-4320*x[15]/(0.0172/x[20]+0.03458*x[22]))*b[9] <= 0.0)
@NLconstraint(m, e32, b[7]*(-1+b[4]) >= 0.0)
@NLconstraint(m, e33, b[9]*(-1+b[4]) >= 0.0)
@constraint(m, e34, b[2]+b[4]+b[8] <= 2.0)
@constraint(m, e35, b[3]+b[4]+b[8] <= 2.0)
@constraint(m, e36, b[3]+b[5]+b[8] <= 2.0)
@NLconstraint(m, e37, -(1.87912853526074+(376.046780997472/x[21]+0.997312113279821*(0.854659090909091/x[20]-11.34/x[21])*x[24])*b[1]+(0.854659090909091*x[26]/x[20]+11.34*(33.1610917987189-x[26])/x[21]+(0.854659090909091/x[20]-11.34/x[21])*x[24]*(0.997312113279821-x[27]))*b[2]+28.341428570246*b[3]/x[20]+0.573023666281862*(b[4]*b[8]+b[9])*x[15]+b[1]*b[5]*b[8]*(0.6*(0.03458*x[23]*x[28]+(0.0181052631578947/x[20]+0.03458*x[22]-0.03458*x[23])*x[24]*x[29])+0.01728*x[15]*(33.1610917987189-x[28]))+b[2]*b[5]*b[8]*(0.6*((0.0181052631578947/x[20]+0.03458*x[22])*x[26]+0.03458*x[23]*(x[28]-x[26])+(0.0181052631578947/x[20]+0.03458*x[22]-0.03458*x[23])*x[24]*(x[29]-x[27]))+0.01728*x[15]*(33.1610917987189-x[28]))+0.6*(b[1]*b[6]*b[8]+b[1]*b[7])*(0.997312113279821*(0.0181052631578947/x[20]+0.03458*x[22]-0.03458*x[23])*x[24]+1.1467105543997*x[23])+0.6*(b[2]*b[6]*b[8]+b[2]*b[7])*((0.0181052631578947/x[20]+0.03458*x[22])*x[26]+0.03458*x[23]*(33.1610917987189-x[26])+(0.0181052631578947/x[20]+0.03458*x[22]-0.03458*x[23])*x[24]*(0.997312113279821-x[27]))+19.8966550792313*(b[3]*b[6]*b[8]+b[3]*b[7])*(0.0181052631578947/x[20]+0.03458*x[22]))*b[10]-8.20275610163388*b[11]-14.6264770436496*b[12]+objvar == 0.0)
@constraint(m, e38, b[10]+b[11]+b[12] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
