using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 1.0e-7)
set_upper_bound(x[2], 0.2)
set_lower_bound(x[3], 1.0e-7)
set_upper_bound(x[3], 0.2)
set_lower_bound(x[4], 1.0e-7)
set_upper_bound(x[4], 0.4)
set_lower_bound(x[5], 1.0e-7)
set_upper_bound(x[5], 0.4)
set_lower_bound(x[6], 1.0e-7)
set_upper_bound(x[6], 0.4)
set_lower_bound(x[7], 1.0e-7)
set_upper_bound(x[7], 0.4)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((15.3261663216011*x[2]+23.2043471859416*x[4]+6.69678129464404*x[6])*log(2.1055*x[2]+3.1878*x[4]+0.92*x[6])-2.46348749603266*x[2]-4.33155441248417*x[4]-0.626542690017204*x[6]+6.4661663216011*x[2]*log(x[2]/(2.1055*x[2]+3.1878*x[4]+0.92*x[6]))+12.2043471859416*x[4]*log(x[4]/(2.1055*x[2]+3.1878*x[4]+0.92*x[6]))+0.696781294644034*x[6]*log(x[6]/(2.1055*x[2]+3.1878*x[4]+0.92*x[6]))+9.86*x[2]*log(x[2]/(1.972*x[2]+2.4*x[4]+1.4*x[6]))+12*x[4]*log(x[4]/(1.972*x[2]+2.4*x[4]+1.4*x[6]))+7*x[6]*log(x[6]/(1.972*x[2]+2.4*x[4]+1.4*x[6]))+(1.972*x[2]+2.4*x[4]+1.4*x[6])*log(1.972*x[2]+2.4*x[4]+1.4*x[6])+1.972*x[2]*log(x[2]/(1.972*x[2]+0.283910843616504*x[4]+3.02002220174195*x[6]))+2.4*x[4]*log(x[4]/(1.45991339466884*x[2]+2.4*x[4]+0.415073537580851*x[6]))+1.4*x[6]*log(x[6]/(0.602183324335333*x[2]+0.115623371371275*x[4]+1.4*x[6]))+(15.3261663216011*x[3]+23.2043471859416*x[5]+6.69678129464404*x[7])*log(2.1055*x[3]+3.1878*x[5]+0.92*x[7])-2.46348749603266*x[3]-4.33155441248417*x[5]-0.626542690017204*x[7]+6.4661663216011*x[3]*log(x[3]/(2.1055*x[3]+3.1878*x[5]+0.92*x[7]))+12.2043471859416*x[5]*log(x[5]/(2.1055*x[3]+3.1878*x[5]+0.92*x[7]))+0.696781294644034*x[7]*log(x[7]/(2.1055*x[3]+3.1878*x[5]+0.92*x[7]))+9.86*x[3]*log(x[3]/(1.972*x[3]+2.4*x[5]+1.4*x[7]))+12*x[5]*log(x[5]/(1.972*x[3]+2.4*x[5]+1.4*x[7]))+7*x[7]*log(x[7]/(1.972*x[3]+2.4*x[5]+1.4*x[7]))+(1.972*x[3]+2.4*x[5]+1.4*x[7])*log(1.972*x[3]+2.4*x[5]+1.4*x[7])+1.972*x[3]*log(x[3]/(1.972*x[3]+0.283910843616504*x[5]+3.02002220174195*x[7]))+2.4*x[5]*log(x[5]/(1.45991339466884*x[3]+2.4*x[5]+0.415073537580851*x[7]))+1.4*x[7]*log(x[7]/(0.602183324335333*x[3]+0.115623371371275*x[5]+1.4*x[7]))-17.2981663216011*x[2]*log(x[2])-25.6043471859416*x[4]*log(x[4])-8.09678129464404*x[6]*log(x[6])-17.2981663216011*x[3]*log(x[3])-25.6043471859416*x[5]*log(x[5])-8.09678129464404*x[7]*log(x[7]))+objvar == 0.0)
@constraint(m, e2, x[2]+x[3] == 0.2)
@constraint(m, e3, x[4]+x[5] == 0.4)
@constraint(m, e4, x[6]+x[7] == 0.4)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
