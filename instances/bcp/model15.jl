using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 6.0)
setupperbound(x[5], 6.0)
setupperbound(x[6], 6.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (2.5134-x[1]-x[3]-x[5])^2+ (2.0443-(exp(-0.05*x[2])*x[1]+exp(-0.05*x[4])*x[3]+exp(-0.05*x[6])*x[5]))^2+ (1.6684-(exp(-0.1*x[2])*x[1]+exp(-0.1*x[4])*x[3]+exp(-0.1*x[6])*x[5]))^2+ (1.3664-(exp(-0.15*x[2])*x[1]+exp(-0.15*x[4])*x[3]+exp(-0.15*x[6])*x[5]))^2+ (1.1232-(exp(-0.2*x[2])*x[1]+exp(-0.2*x[4])*x[3]+exp(-0.2*x[6])*x[5]))^2+ (0.9269-(exp(-0.25*x[2])*x[1]+exp(-0.25*x[4])*x[3]+exp(-0.25*x[6])*x[5]))^2+ (0.7679-(exp(-0.3*x[2])*x[1]+exp(-0.3*x[4])*x[3]+exp(-0.3*x[6])*x[5]))^2+ (0.6389-(exp(-0.35*x[2])*x[1]+exp(-0.35*x[4])*x[3]+exp(-0.35*x[6])*x[5]))^2+ (0.5338-(exp(-0.4*x[2])*x[1]+exp(-0.4*x[4])*x[3]+exp(-0.4*x[6])*x[5]))^2+ (0.4479-(exp(-0.45*x[2])*x[1]+exp(-0.45*x[4])*x[3]+exp(-0.45*x[6])*x[5]))^2+ (0.3776-(exp(-0.5*x[2])*x[1]+exp(-0.5*x[4])*x[3]+exp(-0.5*x[6])*x[5]))^2+ (0.3197-(exp(-0.55*x[2])*x[1]+exp(-0.55*x[4])*x[3]+exp(-0.55*x[6])*x[5]))^2+ (0.272-(exp(-0.6*x[2])*x[1]+exp(-0.6*x[4])*x[3]+exp(-0.6*x[6])*x[5]))^2+ (0.2325-(exp(-0.65*x[2])*x[1]+exp(-0.65*x[4])*x[3]+exp(-0.65*x[6])*x[5]))^2+ (0.1997-(exp(-0.7*x[2])*x[1]+exp(-0.7*x[4])*x[3]+exp(-0.7*x[6])*x[5]))^2+ (0.1723-(exp(-0.75*x[2])*x[1]+exp(-0.75*x[4])*x[3]+exp(-0.75*x[6])*x[5]))^2+ (0.1493-(exp(-0.8*x[2])*x[1]+exp(-0.8*x[4])*x[3]+exp(-0.8*x[6])*x[5]))^2+ (0.1301-(exp(-0.85*x[2])*x[1]+exp(-0.85*x[4])*x[3]+exp(-0.85*x[6])*x[5]))^2+ (0.1138-(exp(-0.9*x[2])*x[1]+exp(-0.9*x[4])*x[3]+exp(-0.9*x[6])*x[5]))^2+ (0.1-(exp(-0.95*x[2])*x[1]+exp(-0.95*x[4])*x[3]+exp(-0.95*x[6])*x[5]))^2+ (0.0883-(exp(-x[2])*x[1]+exp(-x[4])*x[3]+exp(-x[6])*x[5]))^2+ (0.0783-(exp(-1.05*x[2])*x[1]+exp(-1.05*x[4])*x[3]+exp(-1.05*x[6])*x[5]))^2+ (0.0698-(exp(-1.1*x[2])*x[1]+exp(-1.1*x[4])*x[3]+exp(-1.1*x[6])*x[5]))^2+ (0.0624-(exp(-1.15*x[2])*x[1]+exp(-1.15*x[4])*x[3]+exp(-1.15*x[6])*x[5]))^2)+x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[7])
m = m 		 # model get returned when including this script. 
