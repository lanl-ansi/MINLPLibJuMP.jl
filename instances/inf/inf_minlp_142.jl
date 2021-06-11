using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[5]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4]
@variable(m, i[i_Idx], Int)
# settcategory(i[4], :Int)
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
# settcategory(i[3], :Int)
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
# settcategory(i[1], :Int)
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
# settcategory(i[2], :Int)
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[1], 100.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[3], 100.0)
set_upper_bound(i[4], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2)+x[5] == 754.0)
@NLconstraint(m, e2, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 <= -262.0)
@NLconstraint(m, e3, (-29.7*i[1]*i[2])-308*i[1]+1297*i[2]+32*i[1]*i[3]-37.5*i[3]-136*i[1]*i[4]-173*i[4]-235*i[2]*i[3]+310*i[2]*i[4]+3.61*i[3]*i[4]+21.4* (i[1])^2-139* (i[2])^2+113* (i[3])^2+138* (i[4])^2 <= -834.0)
@NLconstraint(m, e4, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 <= -1050.0)
@NLconstraint(m, e5, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 <= -3542.0)
@NLconstraint(m, e6, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 <= 12.76)
@NLconstraint(m, e7, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 <= 5148.0)
@NLconstraint(m, e8, (-2.35*i[1]*i[2])-10.7*i[1]-63.3*i[2]+10.9*i[1]*i[3]+93.5*i[3]+0.108*i[1]*i[4]-25.1*i[4]-76.8*i[2]*i[3]+37.9*i[2]*i[4]-9.31*i[3]*i[4]-0.295* (i[1])^2+25.1* (i[2])^2+30.4* (i[3])^2-28.1* (i[4])^2 >= -100181.0)
@NLconstraint(m, e9, (-29.7*i[1]*i[2])-308*i[1]+1297*i[2]+32*i[1]*i[3]-37.5*i[3]-136*i[1]*i[4]-173*i[4]-235*i[2]*i[3]+310*i[2]*i[4]+3.61*i[3]*i[4]+21.4* (i[1])^2-139* (i[2])^2+113* (i[3])^2+138* (i[4])^2 >= -100467.0)
@NLconstraint(m, e10, (-1.92*i[1]*i[2])-30.3*i[1]-269*i[2]+36.2*i[1]*i[3]+378*i[3]-5.18*i[1]*i[4]-145*i[4]-286*i[2]*i[3]+167*i[2]*i[4]-19.2*i[3]*i[4]-1.44* (i[1])^2+79.7* (i[2])^2+103* (i[3])^2-108* (i[4])^2 >= -100625.0)
@NLconstraint(m, e11, (-30.8*i[1]*i[2])-346*i[1]+659*i[2]+106*i[1]*i[3]+634*i[3]-260*i[1]*i[4]-629*i[4]-121*i[2]*i[3]+878*i[2]*i[4]+33.5*i[3]*i[4]+22.9* (i[1])^2-110* (i[2])^2-298* (i[3])^2+52.8* (i[4])^2 >= -101871.0)
@NLconstraint(m, e12, 0.145*i[1]*i[2]+0.257*i[1]-1.38*i[2]-0.019*i[1]*i[3]+2.9*i[3]-0.182*i[1]*i[4]-0.77*i[4]-1.87*i[2]*i[3]-1.79*i[2]*i[4]+1.24*i[3]*i[4]-0.01* (i[1])^2+1.32* (i[2])^2+0.062* (i[3])^2+1.04* (i[4])^2 >= -98.62)
@NLconstraint(m, e13, 27.3*i[1]*i[2]+54.9*i[1]-37.2*i[2]-0.55*i[1]*i[3]+441*i[3]-42.2*i[1]*i[4]-497*i[4]-169*i[2]*i[3]-148*i[2]*i[4]+147*i[3]*i[4]-2.05* (i[1])^2+89.4* (i[2])^2-56.6* (i[3])^2+193* (i[4])^2 >= -999926.0)
@NLconstraint(m, e14, (2.7144+0.0036*(458*i[1]-73.7*i[1]*i[2]-804*i[2]+3.92*i[1]*i[3]-21*i[3]+0.346*i[1]*i[4]-202*i[4]-112*i[2]*i[3]-89.3*i[2]*i[4]-15.1*i[3]*i[4]-4.86* (i[1])^2+212* (i[2])^2+96.2* (i[3])^2+105* (i[4])^2))*(0.1356+0.01332*i[2])+0.085*i[1] <= 4.0)
@constraint(m, e15, i[1] >= 3.0)
@constraint(m, e16, i[1] <= 16.0)
@constraint(m, e17, i[2] >= 1.0)
@constraint(m, e18, i[2] <= 5.0)
@constraint(m, e19, i[3] >= 1.0)
@constraint(m, e20, -i[2]+i[3] <= 0.0)
@constraint(m, e21, i[4] >= 1.0)
@constraint(m, e22, -i[2]+i[4] <= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[5])

m = m 		 # model get returned when including this script. 
