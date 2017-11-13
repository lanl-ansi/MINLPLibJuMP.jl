using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], -100.0)
setupperbound(x[1], 100.0)
setlowerbound(x[2], -100.0)
setupperbound(x[2], 100.0)
setlowerbound(x[3], -100.0)
setupperbound(x[3], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, -( (1-x[1]-x[2]-x[3])^2+ (1-x[1]-x[2]-x[3])^2+ (3-x[1]-2*x[2]-4*x[3])^2+ (4-x[1]-3*x[2]-9*x[3])^2+ (7-x[1]-4*x[2]-16*x[3])^2+ (11-x[1]-5*x[2]-25*x[3])^2+ (18-x[1]-6*x[2]-36*x[3])^2+ (29-x[1]-7*x[2]-49*x[3])^2+ (47-x[1]-8*x[2]-64*x[3])^2+ (76-x[1]-9*x[2]-81*x[3])^2+ (123-x[1]-10*x[2]-100*x[3])^2+ (199-x[1]-11*x[2]-121*x[3])^2+ (322-x[1]-12*x[2]-144*x[3])^2+ (521-x[1]-13*x[2]-169*x[3])^2+ (843-x[1]-14*x[2]-196*x[3])^2+ (1364-x[1]-15*x[2]-225*x[3])^2+ (2207-x[1]-16*x[2]-256*x[3])^2+ (3571-x[1]-17*x[2]-289*x[3])^2+ (5778-x[1]-18*x[2]-324*x[3])^2+ (9529-x[1]-19*x[2]-361*x[3])^2+ (15307-x[1]-20*x[2]-400*x[3])^2+ (24836-x[1]-21*x[2]-441*x[3])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])
m = m 		 # model get returned when including this script. 
