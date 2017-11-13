using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1000.0)
setupperbound(x[2], 1000.0)
setupperbound(x[3], 1000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (40-2*x[3])^2+ (10-(exp(-0.6*x[1])*x[3]+exp(-0.4*x[2])*x[3]))^2+ (5-(exp(-0.6*x[1])*x[3]+exp(-x[2])*x[3]))^2+ (2.5-(exp(-1.4*x[1])*x[3]+exp(-1.4*x[2])*x[3]))^2+ (2.5-(exp(-2.6*x[1])*x[3]+exp(-1.4*x[2])*x[3]))^2+ (2-(exp(-3.2*x[1])*x[3]+exp(-1.6*x[2])*x[3]))^2+ (1-(exp(-0.8*x[1])*x[3]+exp(-2*x[2])*x[3]))^2+ (0.7-(exp(-1.6*x[1])*x[3]+exp(-2.2*x[2])*x[3]))^2+ (0.8-(exp(-2.6*x[1])*x[3]+exp(-2.2*x[2])*x[3]))^2+ (0.7-(exp(-4*x[1])*x[3]+exp(-2.2*x[2])*x[3]))^2+ (0.4-(exp(-1.2*x[1])*x[3]+exp(-2.6*x[2])*x[3]))^2+ (0.4-(exp(-2*x[1])*x[3]+exp(-2.6*x[2])*x[3]))^2+ (0.3-(exp(-4.6*x[1])*x[3]+exp(-2.8*x[2])*x[3]))^2+ (0.22-(exp(-3.2*x[1])*x[3]+exp(-3*x[2])*x[3]))^2+ (0.2-(exp(-1.6*x[1])*x[3]+exp(-3.2*x[2])*x[3]))^2+ (0.1-(exp(-4.2*x[1])*x[3]+exp(-3.4*x[2])*x[3]))^2+ (0.05-(exp(-2*x[1])*x[3]+exp(-3.8*x[2])*x[3]))^2+ (0.07-(exp(-3.2*x[1])*x[3]+exp(-3.8*x[2])*x[3]))^2+ (0.03-(exp(-2.8*x[1])*x[3]+exp(-4.2*x[2])*x[3]))^2+ (0.03-(exp(-4.2*x[1])*x[3]+exp(-4.2*x[2])*x[3]))^2+ (0.03-(exp(-5.4*x[1])*x[3]+exp(-4.4*x[2])*x[3]))^2+ (0.02-(exp(-5.6*x[1])*x[3]+exp(-4.8*x[2])*x[3]))^2+ (0.01-(exp(-3.2*x[1])*x[3]+exp(-5*x[2])*x[3]))^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])
m = m 		 # model get returned when including this script. 
