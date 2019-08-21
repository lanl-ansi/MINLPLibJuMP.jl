using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, x[6] == 3)
@NLconstraint(m, e1, -( ((-1.07640035028567)+exp(-0.1*x[1])*x[3]-exp(-0.1*x[2])*x[4]+exp(-0.1*x[5])*x[6])^2+ ((-1.49004122924658)+exp(-0.2*x[1])*x[3]-exp(-0.2*x[2])*x[4]+exp(-0.2*x[5])*x[6])^2+ ((-1.395465514579)+exp(-0.3*x[1])*x[3]-exp(-0.3*x[2])*x[4]+exp(-0.3*x[5])*x[6])^2+ ((-1.18443140557593)+exp(-0.4*x[1])*x[3]-exp(-0.4*x[2])*x[4]+exp(-0.4*x[5])*x[6])^2+ ((-0.978846774427044)+exp(-0.5*x[1])*x[3]-exp(-0.5*x[2])*x[4]+exp(-0.5*x[5])*x[6])^2+ ((-0.808571735078932)+exp(-0.6*x[1])*x[3]-exp(-0.6*x[2])*x[4]+exp(-0.6*x[5])*x[6])^2+ ((-0.674456081839291)+exp(-0.7*x[1])*x[3]-exp(-0.7*x[2])*x[4]+exp(-0.7*x[5])*x[6])^2+ ((-0.569938262912808)+exp(-0.8*x[1])*x[3]-exp(-0.8*x[2])*x[4]+exp(-0.8*x[5])*x[6])^2+ ((-0.487923778062043)+exp(-0.9*x[1])*x[3]-exp(-0.9*x[2])*x[4]+exp(-0.9*x[5])*x[6])^2+ ((-0.422599358188832)+exp(-x[1])*x[3]-exp(-x[2])*x[4]+exp(-x[5])*x[6])^2+ ((-0.369619594903334)+exp(-1.1*x[1])*x[3]-exp(-1.1*x[2])*x[4]+exp(-1.1*x[5])*x[6])^2+ ((-0.325852731997495)+exp(-1.2*x[1])*x[3]-exp(-1.2*x[2])*x[4]+exp(-1.2*x[5])*x[6])^2+ ((-0.28907018464926)+exp(-1.3*x[1])*x[3]-exp(-1.3*x[2])*x[4]+exp(-1.3*x[5])*x[6])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
