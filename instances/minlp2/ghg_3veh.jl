using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96]
@variable(m, x[x_Idx])
setlowerbound(x[85], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[37], 0.526315789473684)
setupperbound(x[37], 1.05263157894737)
setlowerbound(x[38], 0.961538461538462)
setupperbound(x[38], 2.11538461538462)
setlowerbound(x[39], 0.2)
setupperbound(x[39], 1.0)
setupperbound(x[40], 0.8)
setlowerbound(x[41], 6.0)
setupperbound(x[41], 13.0)
setlowerbound(x[42], 6.0)
setupperbound(x[42], 13.0)
setlowerbound(x[43], 0.26)
setupperbound(x[43], 0.35)
setlowerbound(x[44], 4.9)
setupperbound(x[44], 5.5)
setlowerbound(x[45], 55.0)
setupperbound(x[45], 63.0)
setlowerbound(x[47], 0.296392099803303)
setupperbound(x[47], 0.404171045186323)
setlowerbound(x[48], 0.134723681728774)
setupperbound(x[48], 0.229030258938916)
setupperbound(x[49], 90.0)
setupperbound(x[50], 200.0)
setupperbound(x[51], 26.0)
setupperbound(x[52], 1.0)
setupperbound(x[53], 34.1)
setupperbound(x[54], 1.0)
setlowerbound(x[55], 0.526315789473684)
setupperbound(x[55], 1.05263157894737)
setlowerbound(x[56], 0.961538461538462)
setupperbound(x[56], 2.11538461538462)
setlowerbound(x[57], 0.2)
setupperbound(x[57], 1.0)
setupperbound(x[58], 0.8)
setlowerbound(x[59], 6.0)
setupperbound(x[59], 13.0)
setlowerbound(x[60], 6.0)
setupperbound(x[60], 13.0)
setlowerbound(x[61], 0.26)
setupperbound(x[61], 0.35)
setlowerbound(x[62], 4.9)
setupperbound(x[62], 5.5)
setlowerbound(x[63], 55.0)
setupperbound(x[63], 63.0)
setlowerbound(x[65], 0.296392099803303)
setupperbound(x[65], 0.404171045186323)
setlowerbound(x[66], 0.134723681728774)
setupperbound(x[66], 0.229030258938916)
setupperbound(x[67], 90.0)
setupperbound(x[68], 200.0)
setupperbound(x[69], 26.0)
setupperbound(x[70], 1.0)
setupperbound(x[71], 34.1)
setupperbound(x[72], 1.0)
setlowerbound(x[73], 0.526315789473684)
setupperbound(x[73], 1.05263157894737)
setlowerbound(x[74], 0.961538461538462)
setupperbound(x[74], 2.11538461538462)
setlowerbound(x[75], 0.2)
setupperbound(x[75], 1.0)
setupperbound(x[76], 0.8)
setlowerbound(x[77], 6.0)
setupperbound(x[77], 13.0)
setlowerbound(x[78], 6.0)
setupperbound(x[78], 13.0)
setlowerbound(x[79], 0.26)
setupperbound(x[79], 0.35)
setlowerbound(x[80], 4.9)
setupperbound(x[80], 5.5)
setlowerbound(x[81], 55.0)
setupperbound(x[81], 63.0)
setlowerbound(x[83], 0.296392099803303)
setupperbound(x[83], 0.404171045186323)
setlowerbound(x[84], 0.134723681728774)
setupperbound(x[84], 0.229030258938916)
setupperbound(x[85], 90.0)
setupperbound(x[86], 200.0)
setupperbound(x[87], 26.0)
setupperbound(x[88], 1.0)
setupperbound(x[89], 34.1)
setupperbound(x[90], 1.0)
setupperbound(x[91], 200.0)
setupperbound(x[92], 200.0)
setupperbound(x[93], 34.1)
setupperbound(x[94], 1.0)
setupperbound(x[95], 34.1)
setupperbound(x[96], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -21.6*x[39]*x[40]*x[44]+x[49] == 0.0)
@NLconstraint(m, e2, -(0.007852585706*x[37]^3+0.154288922601*x[38]^3+0.352933730854*x[39]^3-0.004816150342*x[37]^2*x[38]-0.00547943134*x[38]^2*x[37]-0.02533808214*x[37]^2*x[39]+0.00021201136*x[39]^2*x[37]-0.057118497613*x[38]^2*x[39]-0.042739509965*x[39]^2*x[38]-0.01583097252*x[37]*x[38]*x[39]-0.001028174658*x[37]^2-0.805369774847*x[38]^2-0.655580550098*x[39]^2+0.057270405947*x[37]*x[38]+0.07973036236*x[37]*x[39]+0.342091579946*x[38]*x[39]-0.191345333621*x[37]+1.188971392024*x[38]-0.346682012779*x[39])+x[44] == 4.960068215723)
@NLconstraint(m, e3, -(2.21406746341*x[37]^3+1.086659693552*x[38]^3+5.577874978662*x[39]^3-0.815241697738*x[37]^2*x[38]+0.509578110533*x[38]^2*x[37]+1.561758113326*x[37]^2*x[39]+2.212321055022*x[39]^2*x[37]-0.612567680918*x[38]^2*x[39]+0.254008083604*x[39]^2*x[38]-0.159429747244*x[37]*x[38]*x[39]-8.905599398536*x[37]^2-6.095001164559*x[38]^2-15.207539664993*x[39]^2+0.089172114876*x[37]*x[38]-3.273526677614*x[37]*x[39]+2.498376358946*x[38]*x[39]+2.621894664006*x[37]+9.284846067558*x[38]+5.837143728557*x[39])+x[45] == 57.679680208231)
@NLconstraint(m, e4, -(1.456640469666*x[37]^3-5.495718264905*x[38]^3-28.456261951645*x[39]^3+0.912917970314*x[37]^2*x[38]-0.88119920631*x[38]^2*x[37]-1.049763024383*x[37]^2*x[39]-0.308107344863*x[39]^2*x[37]+2.043536297441*x[38]^2*x[39]+15.609611231641*x[39]^2*x[38]+0.336486837518*x[37]*x[38]*x[39]-4.634160849469*x[37]^2+31.478262635483*x[38]^2+34.016843490037*x[39]^2+1.153148892739*x[37]*x[38]+1.168601192983*x[37]*x[39]-32.056936006397*x[38]*x[39]+3.405095041238*x[37]-54.472915571467*x[38]+9.56987912824*x[39])+x[41] == 44.230616625681)
@NLconstraint(m, e5, -(3.334445194766*x[37]^3-2.265666208775*x[38]^3-20.256566414583*x[39]^3+0.413782262402*x[37]^2*x[38]-3.523622273943*x[38]^2*x[37]-0.285910055687*x[37]^2*x[39]-10.110726634622*x[39]^2*x[37]+1.95072196814*x[38]^2*x[39]+10.308512463418*x[39]^2*x[38]+5.808426325827*x[37]*x[38]*x[39]-6.932398033967*x[37]^2+15.80019426934*x[38]^2+39.197963873266*x[39]^2+7.900706395772*x[37]*x[38]+6.58186092156*x[37]*x[39]-30.119438887106*x[38]*x[39]-6.733798415788*x[37]-26.385308892431*x[38]-4.098268423019*x[39])+x[42] == 32.102172356117)
@NLconstraint(m, e6, -(-0.194075741585*x[37]^2-0.004843420334*x[38]^2+0.04736686635*x[39]^2+9.4029979e-5*x[37]*x[38]+0.011329651793*x[37]*x[39]-0.001017352942*x[38]*x[39]+0.382275988592*x[37]+0.019484588535*x[38]-0.077357069039*x[39])+x[43] == 0.140278656706)
@constraint(m, e7, x[41] <= 11.0001)
@constraint(m, e8, x[42] <= 11.0001)
@constraint(m, e9, x[43] >= 0.3199)
@NLconstraint(m, e10, -21.6*x[57]*x[58]*x[62]+x[67] == 0.0)
@NLconstraint(m, e11, -(0.007852585706*x[55]^3+0.154288922601*x[56]^3+0.352933730854*x[57]^3-0.004816150342*x[55]^2*x[56]-0.00547943134*x[56]^2*x[55]-0.02533808214*x[55]^2*x[57]+0.00021201136*x[57]^2*x[55]-0.057118497613*x[56]^2*x[57]-0.042739509965*x[57]^2*x[56]-0.01583097252*x[55]*x[56]*x[57]-0.001028174658*x[55]^2-0.805369774847*x[56]^2-0.655580550098*x[57]^2+0.057270405947*x[55]*x[56]+0.07973036236*x[55]*x[57]+0.342091579946*x[56]*x[57]-0.191345333621*x[55]+1.188971392024*x[56]-0.346682012779*x[57])+x[62] == 4.960068215723)
@NLconstraint(m, e12, -(2.21406746341*x[55]^3+1.086659693552*x[56]^3+5.577874978662*x[57]^3-0.815241697738*x[55]^2*x[56]+0.509578110533*x[56]^2*x[55]+1.561758113326*x[55]^2*x[57]+2.212321055022*x[57]^2*x[55]-0.612567680918*x[56]^2*x[57]+0.254008083604*x[57]^2*x[56]-0.159429747244*x[55]*x[56]*x[57]-8.905599398536*x[55]^2-6.095001164559*x[56]^2-15.207539664993*x[57]^2+0.089172114876*x[55]*x[56]-3.273526677614*x[55]*x[57]+2.498376358946*x[56]*x[57]+2.621894664006*x[55]+9.284846067558*x[56]+5.837143728557*x[57])+x[63] == 57.679680208231)
@NLconstraint(m, e13, -(1.456640469666*x[55]^3-5.495718264905*x[56]^3-28.456261951645*x[57]^3+0.912917970314*x[55]^2*x[56]-0.88119920631*x[56]^2*x[55]-1.049763024383*x[55]^2*x[57]-0.308107344863*x[57]^2*x[55]+2.043536297441*x[56]^2*x[57]+15.609611231641*x[57]^2*x[56]+0.336486837518*x[55]*x[56]*x[57]-4.634160849469*x[55]^2+31.478262635483*x[56]^2+34.016843490037*x[57]^2+1.153148892739*x[55]*x[56]+1.168601192983*x[55]*x[57]-32.056936006397*x[56]*x[57]+3.405095041238*x[55]-54.472915571467*x[56]+9.56987912824*x[57])+x[59] == 44.230616625681)
@NLconstraint(m, e14, -(3.334445194766*x[55]^3-2.265666208775*x[56]^3-20.256566414583*x[57]^3+0.413782262402*x[55]^2*x[56]-3.523622273943*x[56]^2*x[55]-0.285910055687*x[55]^2*x[57]-10.110726634622*x[57]^2*x[55]+1.95072196814*x[56]^2*x[57]+10.308512463418*x[57]^2*x[56]+5.808426325827*x[55]*x[56]*x[57]-6.932398033967*x[55]^2+15.80019426934*x[56]^2+39.197963873266*x[57]^2+7.900706395772*x[55]*x[56]+6.58186092156*x[55]*x[57]-30.119438887106*x[56]*x[57]-6.733798415788*x[55]-26.385308892431*x[56]-4.098268423019*x[57])+x[60] == 32.102172356117)
@NLconstraint(m, e15, -(-0.194075741585*x[55]^2-0.004843420334*x[56]^2+0.04736686635*x[57]^2+9.4029979e-5*x[55]*x[56]+0.011329651793*x[55]*x[57]-0.001017352942*x[56]*x[57]+0.382275988592*x[55]+0.019484588535*x[56]-0.077357069039*x[57])+x[61] == 0.140278656706)
@constraint(m, e16, x[59] <= 11.0001)
@constraint(m, e17, x[60] <= 11.0001)
@constraint(m, e18, x[61] >= 0.3199)
@NLconstraint(m, e19, -21.6*x[75]*x[76]*x[80]+x[85] == 0.0)
@NLconstraint(m, e20, -(0.007852585706*x[73]^3+0.154288922601*x[74]^3+0.352933730854*x[75]^3-0.004816150342*x[73]^2*x[74]-0.00547943134*x[74]^2*x[73]-0.02533808214*x[73]^2*x[75]+0.00021201136*x[75]^2*x[73]-0.057118497613*x[74]^2*x[75]-0.042739509965*x[75]^2*x[74]-0.01583097252*x[73]*x[74]*x[75]-0.001028174658*x[73]^2-0.805369774847*x[74]^2-0.655580550098*x[75]^2+0.057270405947*x[73]*x[74]+0.07973036236*x[73]*x[75]+0.342091579946*x[74]*x[75]-0.191345333621*x[73]+1.188971392024*x[74]-0.346682012779*x[75])+x[80] == 4.960068215723)
@NLconstraint(m, e21, -(2.21406746341*x[73]^3+1.086659693552*x[74]^3+5.577874978662*x[75]^3-0.815241697738*x[73]^2*x[74]+0.509578110533*x[74]^2*x[73]+1.561758113326*x[73]^2*x[75]+2.212321055022*x[75]^2*x[73]-0.612567680918*x[74]^2*x[75]+0.254008083604*x[75]^2*x[74]-0.159429747244*x[73]*x[74]*x[75]-8.905599398536*x[73]^2-6.095001164559*x[74]^2-15.207539664993*x[75]^2+0.089172114876*x[73]*x[74]-3.273526677614*x[73]*x[75]+2.498376358946*x[74]*x[75]+2.621894664006*x[73]+9.284846067558*x[74]+5.837143728557*x[75])+x[81] == 57.679680208231)
@NLconstraint(m, e22, -(1.456640469666*x[73]^3-5.495718264905*x[74]^3-28.456261951645*x[75]^3+0.912917970314*x[73]^2*x[74]-0.88119920631*x[74]^2*x[73]-1.049763024383*x[73]^2*x[75]-0.308107344863*x[75]^2*x[73]+2.043536297441*x[74]^2*x[75]+15.609611231641*x[75]^2*x[74]+0.336486837518*x[73]*x[74]*x[75]-4.634160849469*x[73]^2+31.478262635483*x[74]^2+34.016843490037*x[75]^2+1.153148892739*x[73]*x[74]+1.168601192983*x[73]*x[75]-32.056936006397*x[74]*x[75]+3.405095041238*x[73]-54.472915571467*x[74]+9.56987912824*x[75])+x[77] == 44.230616625681)
@NLconstraint(m, e23, -(3.334445194766*x[73]^3-2.265666208775*x[74]^3-20.256566414583*x[75]^3+0.413782262402*x[73]^2*x[74]-3.523622273943*x[74]^2*x[73]-0.285910055687*x[73]^2*x[75]-10.110726634622*x[75]^2*x[73]+1.95072196814*x[74]^2*x[75]+10.308512463418*x[75]^2*x[74]+5.808426325827*x[73]*x[74]*x[75]-6.932398033967*x[73]^2+15.80019426934*x[74]^2+39.197963873266*x[75]^2+7.900706395772*x[73]*x[74]+6.58186092156*x[73]*x[75]-30.119438887106*x[74]*x[75]-6.733798415788*x[73]-26.385308892431*x[74]-4.098268423019*x[75])+x[78] == 32.102172356117)
@NLconstraint(m, e24, -(-0.194075741585*x[73]^2-0.004843420334*x[74]^2+0.04736686635*x[75]^2+9.4029979e-5*x[73]*x[74]+0.011329651793*x[73]*x[75]-0.001017352942*x[74]*x[75]+0.382275988592*x[73]+0.019484588535*x[74]-0.077357069039*x[75])+x[79] == 0.140278656706)
@constraint(m, e25, x[77] <= 11.0001)
@constraint(m, e26, x[78] <= 11.0001)
@constraint(m, e27, x[79] >= 0.3199)
@NLconstraint(m, e28, exp(-0.029595*x[49])*(33.7894914681534+x[49])+x[51] == 33.7894914681534)
@NLconstraint(m, e29, exp(-0.029595*x[49])+x[52] == 1.0)
@NLconstraint(m, e30, -0.134723681728774*(0.010073140669*x[37]^2+0.011394190823*x[38]^2+0.052910213683*x[39]^2+0.000159410872*x[37]*x[38]+0.008036404292*x[37]*x[39]-0.003423392047*x[38]*x[39]+0.097124049148*x[37]+0.03829180344*x[38]+0.370440556286*x[39])+x[47] == 0.29587368369345)
@NLconstraint(m, e31, -0.134723681728774*(0.46598008632*x[37]^2-0.00797004615*x[38]^2-0.01779288613*x[39]^2-0.01429434551*x[37]*x[38]-0.03832188467*x[37]*x[39]+0.00970510229*x[38]*x[39]-0.88981702163*x[37]+0.07730602595*x[38]+0.39988032723*x[39])+x[48] == 0.194162178290626)
@NLconstraint(m, e32, -150000*(0.0181052631578947/x[44]+0.03458*x[47]-0.03458*x[48])*x[49]/(4320*x[39]-5187*x[48])+x[50] == 0.0)
@NLconstraint(m, e33, exp(-0.029595*x[50])*(33.7894914681534+x[50])+x[53] == 33.7894914681534)
@NLconstraint(m, e34, exp(-0.029595*x[50])+x[54] == 1.0)
@NLconstraint(m, e35, exp(-0.029595*x[67])*(33.7894914681534+x[67])+x[69] == 33.7894914681534)
@NLconstraint(m, e36, exp(-0.029595*x[67])+x[70] == 1.0)
@NLconstraint(m, e37, -0.134723681728774*(0.010073140669*x[55]^2+0.011394190823*x[56]^2+0.052910213683*x[57]^2+0.000159410872*x[55]*x[56]+0.008036404292*x[55]*x[57]-0.003423392047*x[56]*x[57]+0.097124049148*x[55]+0.03829180344*x[56]+0.370440556286*x[57])+x[65] == 0.29587368369345)
@NLconstraint(m, e38, -0.134723681728774*(0.46598008632*x[55]^2-0.00797004615*x[56]^2-0.01779288613*x[57]^2-0.01429434551*x[55]*x[56]-0.03832188467*x[55]*x[57]+0.00970510229*x[56]*x[57]-0.88981702163*x[55]+0.07730602595*x[56]+0.39988032723*x[57])+x[66] == 0.194162178290626)
@NLconstraint(m, e39, -150000*(0.0181052631578947/x[62]+0.03458*x[65]-0.03458*x[66])*x[67]/(4320*x[57]-5187*x[66])+x[68] == 0.0)
@NLconstraint(m, e40, exp(-0.029595*x[68])*(33.7894914681534+x[68])+x[71] == 33.7894914681534)
@NLconstraint(m, e41, exp(-0.029595*x[68])+x[72] == 1.0)
@NLconstraint(m, e42, exp(-0.029595*x[85])*(33.7894914681534+x[85])+x[87] == 33.7894914681534)
@NLconstraint(m, e43, exp(-0.029595*x[85])+x[88] == 1.0)
@NLconstraint(m, e44, -0.134723681728774*(0.010073140669*x[73]^2+0.011394190823*x[74]^2+0.052910213683*x[75]^2+0.000159410872*x[73]*x[74]+0.008036404292*x[73]*x[75]-0.003423392047*x[74]*x[75]+0.097124049148*x[73]+0.03829180344*x[74]+0.370440556286*x[75])+x[83] == 0.29587368369345)
@NLconstraint(m, e45, -0.134723681728774*(0.46598008632*x[73]^2-0.00797004615*x[74]^2-0.01779288613*x[75]^2-0.01429434551*x[73]*x[74]-0.03832188467*x[73]*x[75]+0.00970510229*x[74]*x[75]-0.88981702163*x[73]+0.07730602595*x[74]+0.39988032723*x[75])+x[84] == 0.194162178290626)
@NLconstraint(m, e46, -150000*(0.0181052631578947/x[80]+0.03458*x[83]-0.03458*x[84])*x[85]/(4320*x[75]-5187*x[84])+x[86] == 0.0)
@NLconstraint(m, e47, exp(-0.029595*x[86])*(33.7894914681534+x[86])+x[89] == 33.7894914681534)
@NLconstraint(m, e48, exp(-0.029595*x[86])+x[90] == 1.0)
@constraint(m, e49, b[1]+b[2]+b[3] == 1.0)
@NLconstraint(m, e50, b[1]*x[49] <= 0.0)
@NLconstraint(m, e51, b[2]*x[49] >= 0.0)
@NLconstraint(m, e52, b[2]*(x[49]-x[91]) <= 0.0)
@NLconstraint(m, e53, b[3]*(x[49]-x[91]) >= 0.0)
@constraint(m, e54, b[4]+b[5]+b[6] == 1.0)
@NLconstraint(m, e55, b[8]*b[4]*x[50] <= 0.0)
@NLconstraint(m, e56, b[8]*b[5]*x[50] >= 0.0)
@NLconstraint(m, e57, b[8]*b[5]*(x[50]-x[91]) <= 0.0)
@NLconstraint(m, e58, b[8]*b[6]*(x[50]-x[91]) >= 0.0)
@constraint(m, e59, b[7]+b[8]+b[9] == 1.0)
@NLconstraint(m, e60, (-150000+124927.703875072*x[39]/x[48])*b[7] <= 0.0)
@NLconstraint(m, e61, (-150000+124927.703875072*x[39]/x[48])*b[8] >= 0.0)
@NLconstraint(m, e62, (150000-4320*x[39]/(0.0181052631578947/x[44]+0.03458*x[47]))*b[8] >= 0.0)
@NLconstraint(m, e63, (150000-4320*x[39]/(0.0181052631578947/x[44]+0.03458*x[47]))*b[9] <= 0.0)
@constraint(m, e64, b[10]+b[11]+b[12] == 1.0)
@NLconstraint(m, e65, b[10]*(x[67]-x[91]) <= 0.0)
@NLconstraint(m, e66, b[11]*(x[67]-x[91]) >= 0.0)
@NLconstraint(m, e67, b[11]*(x[67]-x[92]) <= 0.0)
@NLconstraint(m, e68, b[12]*(x[67]-x[92]) >= 0.0)
@constraint(m, e69, b[13]+b[14]+b[15] == 1.0)
@NLconstraint(m, e70, b[17]*b[13]*(x[68]-x[91]) <= 0.0)
@NLconstraint(m, e71, b[17]*b[14]*(x[68]-x[91]) >= 0.0)
@NLconstraint(m, e72, b[17]*b[14]*(x[68]-x[92]) <= 0.0)
@NLconstraint(m, e73, b[17]*b[15]*(x[68]-x[92]) >= 0.0)
@constraint(m, e74, b[16]+b[17]+b[18] == 1.0)
@NLconstraint(m, e75, (-150000+124927.703875072*x[57]/x[66])*b[16] <= 0.0)
@NLconstraint(m, e76, (-150000+124927.703875072*x[57]/x[66])*b[17] >= 0.0)
@NLconstraint(m, e77, (150000-4320*x[57]/(0.0181052631578947/x[62]+0.03458*x[65]))*b[17] >= 0.0)
@NLconstraint(m, e78, (150000-4320*x[57]/(0.0181052631578947/x[62]+0.03458*x[65]))*b[18] <= 0.0)
@constraint(m, e79, b[19]+b[20]+b[21] == 1.0)
@NLconstraint(m, e80, b[19]*(x[85]-x[92]) <= 0.0)
@NLconstraint(m, e81, b[20]*(x[85]-x[92]) >= 0.0)
@NLconstraint(m, e82, b[20]*(-200+x[85]) <= 0.0)
@NLconstraint(m, e83, b[21]*(-200+x[85]) >= 0.0)
@constraint(m, e84, b[22]+b[23]+b[24] == 1.0)
@NLconstraint(m, e85, b[26]*b[22]*(x[86]-x[92]) <= 0.0)
@NLconstraint(m, e86, b[26]*b[23]*(x[86]-x[92]) >= 0.0)
@NLconstraint(m, e87, b[26]*b[23]*(-200+x[86]) <= 0.0)
@NLconstraint(m, e88, b[26]*b[24]*(-200+x[86]) >= 0.0)
@constraint(m, e89, b[25]+b[26]+b[27] == 1.0)
@NLconstraint(m, e90, (-150000+124927.703875072*x[75]/x[84])*b[25] <= 0.0)
@NLconstraint(m, e91, (-150000+124927.703875072*x[75]/x[84])*b[26] >= 0.0)
@NLconstraint(m, e92, (150000-4320*x[75]/(0.0181052631578947/x[80]+0.03458*x[83]))*b[26] >= 0.0)
@NLconstraint(m, e93, (150000-4320*x[75]/(0.0181052631578947/x[80]+0.03458*x[83]))*b[27] <= 0.0)
@NLconstraint(m, e94, b[7]*(-1+b[4]) >= 0.0)
@NLconstraint(m, e95, b[9]*(-1+b[4]) >= 0.0)
@constraint(m, e96, b[2]+b[4]+b[8] <= 2.0)
@constraint(m, e97, b[3]+b[4]+b[8] <= 2.0)
@constraint(m, e98, b[3]+b[5]+b[8] <= 2.0)
@NLconstraint(m, e99, b[16]*(-1+b[13]) >= 0.0)
@NLconstraint(m, e100, b[18]*(-1+b[13]) >= 0.0)
@constraint(m, e101, b[10]+b[13]+b[17] <= 2.0)
@constraint(m, e102, b[12]+b[13]+b[17] <= 2.0)
@constraint(m, e103, b[12]+b[14]+b[17] <= 2.0)
@NLconstraint(m, e104, b[25]*(-1+b[22]) >= 0.0)
@NLconstraint(m, e105, b[27]*(-1+b[22]) >= 0.0)
@constraint(m, e106, b[19]+b[22]+b[26] <= 2.0)
@constraint(m, e107, b[21]+b[22]+b[26] <= 2.0)
@constraint(m, e108, b[21]+b[23]+b[26] <= 2.0)
@NLconstraint(m, e109, -(0.441073446327684*b[30]*x[93]+0.247360857459789*b[29]*x[93]+((11.34*x[93]/x[45]+(0.854659090909091/x[44]-11.34/x[45])*x[49]*x[94])*b[1]+0.0566666666666667*x[93]+(0.854659090909091*x[51]/x[44]+11.34*(x[93]-x[51])/x[45]+(0.854659090909091/x[44]-11.34/x[45])*x[49]*(x[94]-x[52]))*b[2]+0.854659090909091*x[93]/x[44]*b[3]+0.01728*(b[4]*b[8]+b[9])*x[39]*x[93]+b[1]*b[5]*b[8]*(0.6*(0.03458*x[48]*x[53]+(0.0181052631578947/x[44]+0.03458*x[47]-0.03458*x[48])*x[49]*x[54])+0.01728*x[39]*(x[93]-x[53]))+b[2]*b[5]*b[8]*(0.6*((0.0181052631578947/x[44]+0.03458*x[47])*x[51]+0.03458*x[48]*(x[53]-x[51])+(0.0181052631578947/x[44]+0.03458*x[47]-0.03458*x[48])*x[49]*(x[54]-x[52]))+0.01728*x[39]*(x[93]-x[53]))+0.6*(b[1]*b[6]*b[8]+b[1]*b[7])*(0.03458*x[48]*x[93]+(0.0181052631578947/x[44]+0.03458*x[47]-0.03458*x[48])*x[49]*x[94])+0.6*(b[2]*b[6]*b[8]+b[2]*b[7])*((0.0181052631578947/x[44]+0.03458*x[47])*x[51]+0.03458*x[48]*(x[93]-x[51])+(0.0181052631578947/x[44]+0.03458*x[47]-0.03458*x[48])*x[49]*(x[94]-x[52]))+0.6*(b[3]*b[6]*b[8]+b[3]*b[7])*(0.0181052631578947/x[44]+0.03458*x[47])*x[93])*b[28])+x[46] == 0.0)
@constraint(m, e110, b[28]+b[29]+b[30] == 1.0)
@NLconstraint(m, e111, -(b[33]*(0.441073446327684*x[95]-0.441073446327684*x[93])+b[32]*(0.247360857459789*x[95]-0.247360857459789*x[93])+((11.34*(x[95]-x[93])/x[63]+(0.854659090909091/x[62]-11.34/x[63])*x[67]*(x[96]-x[94]))*b[10]-0.0566666666666667*x[93]+0.0566666666666667*x[95]+(0.854659090909091*(x[69]-x[93])/x[62]+11.34*(x[95]-x[69])/x[63]+(0.854659090909091/x[62]-11.34/x[63])*x[67]*(x[96]-x[70]))*b[11]+0.854659090909091*(x[95]-x[93])/x[62]*b[12]+0.01728*(b[13]*b[17]+b[18])*x[57]*(x[95]-x[93])+b[10]*b[14]*b[17]*(0.6*(0.03458*x[66]*(x[71]-x[93])+(0.0181052631578947/x[62]+0.03458*x[65]-0.03458*x[66])*x[67]*(x[72]-x[94]))+0.01728*x[57]*(x[95]-x[71]))+b[11]*b[14]*b[17]*(0.6*((0.0181052631578947/x[62]+0.03458*x[65])*(x[69]-x[93])+0.03458*x[66]*(x[71]-x[69])+(0.0181052631578947/x[62]+0.03458*x[65]-0.03458*x[66])*x[67]*(x[72]-x[70]))+0.01728*x[57]*(x[95]-x[71]))+0.6*(b[10]*b[15]*b[17]+b[10]*b[16])*(0.03458*x[66]*(x[95]-x[93])+(0.0181052631578947/x[62]+0.03458*x[65]-0.03458*x[66])*x[67]*(x[96]-x[94]))+0.6*(b[11]*b[15]*b[17]+b[11]*b[16])*((0.0181052631578947/x[62]+0.03458*x[65])*(x[69]-x[93])+0.03458*x[66]*(x[95]-x[69])+(0.0181052631578947/x[62]+0.03458*x[65]-0.03458*x[66])*x[67]*(x[96]-x[70]))+0.6*(b[12]*b[15]*b[17]+b[12]*b[16])*(0.0181052631578947/x[62]+0.03458*x[65])*(x[95]-x[93]))*b[31])+x[64] == 0.0)
@constraint(m, e112, b[31]+b[32]+b[33] == 1.0)
@NLconstraint(m, e113, -(b[36]*(14.6264770436496-0.441073446327684*x[95])+b[35]*(8.20275610163388-0.247360857459789*x[95])+(1.87912853526074+(11.34*(33.1610917987189-x[95])/x[81]+(0.854659090909091/x[80]-11.34/x[81])*x[85]*(0.997312113279821-x[96]))*b[19]-0.0566666666666667*x[95]+(0.854659090909091*(x[87]-x[95])/x[80]+11.34*(33.1610917987189-x[87])/x[81]+(0.854659090909091/x[80]-11.34/x[81])*x[85]*(0.997312113279821-x[88]))*b[20]+0.854659090909091*(33.1610917987189-x[95])/x[80]*b[21]+0.01728*(b[22]*b[26]+b[27])*x[75]*(33.1610917987189-x[95])+b[19]*b[23]*b[26]*(0.6*(0.03458*x[84]*(x[89]-x[95])+(0.0181052631578947/x[80]+0.03458*x[83]-0.03458*x[84])*x[85]*(x[90]-x[96]))+0.01728*x[75]*(33.1610917987189-x[89]))+b[20]*b[23]*b[26]*(0.6*((0.0181052631578947/x[80]+0.03458*x[83])*(x[87]-x[95])+0.03458*x[84]*(x[89]-x[87])+(0.0181052631578947/x[80]+0.03458*x[83]-0.03458*x[84])*x[85]*(x[90]-x[88]))+0.01728*x[75]*(33.1610917987189-x[89]))+0.6*(b[19]*b[24]*b[26]+b[19]*b[25])*(0.03458*x[84]*(33.1610917987189-x[95])+(0.0181052631578947/x[80]+0.03458*x[83]-0.03458*x[84])*x[85]*(0.997312113279821-x[96]))+0.6*(b[20]*b[24]*b[26]+b[20]*b[25])*((0.0181052631578947/x[80]+0.03458*x[83])*(x[87]-x[95])+0.03458*x[84]*(33.1610917987189-x[87])+(0.0181052631578947/x[80]+0.03458*x[83]-0.03458*x[84])*x[85]*(0.997312113279821-x[88]))+0.6*(b[21]*b[24]*b[26]+b[21]*b[25])*(0.0181052631578947/x[80]+0.03458*x[83])*(33.1610917987189-x[95]))*b[34])+x[82] == 0.0)
@constraint(m, e114, b[34]+b[35]+b[36] == 1.0)
@NLconstraint(m, e115, exp(-0.029595*x[91])*(33.7894914681534+x[91])+x[93] == 33.7894914681534)
@NLconstraint(m, e116, exp(-0.029595*x[91])+x[94] == 1.0)
@NLconstraint(m, e117, exp(-0.029595*x[92])*(33.7894914681534+x[92])+x[95] == 33.7894914681534)
@NLconstraint(m, e118, exp(-0.029595*x[92])+x[96] == 1.0)
@constraint(m, e119, x[91]-x[92] <= 0.0)
@constraint(m, e120, -x[46]-x[64]-x[82]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
