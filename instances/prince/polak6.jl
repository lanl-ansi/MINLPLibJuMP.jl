using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1]- (1+x[4])^4)^2+ (x[2]- (x[1]- (1+x[4])^4)^4)^2+2* (x[3])^2+ (x[4])^2+5* (1+x[4])^4+5* (x[1]- (1+x[4])^4)^4-5*x[1]-5*x[2]-21*x[3]+7*x[4]-x[5] <= 0.0)
@NLconstraint(m, e2, 11* (x[1]- (1+x[4])^4)^2+11* (x[2]- (x[1]- (1+x[4])^4)^4)^2+12* (x[3])^2+11* (x[4])^2-5* (1+x[4])^4+15* (x[1]- (1+x[4])^4)^4+5*x[1]-15*x[2]-11*x[3]-3*x[4]-x[5] <= 80.0)
@NLconstraint(m, e3, 11* (x[1]- (1+x[4])^4)^2+21* (x[2]- (x[1]- (1+x[4])^4)^4)^2+12* (x[3])^2+21* (x[4])^2+15* (1+x[4])^4+5* (x[1]- (1+x[4])^4)^4-15*x[1]-5*x[2]-21*x[3]-3*x[4]-x[5] <= 100.0)
@NLconstraint(m, e4, 11* (x[1]- (1+x[4])^4)^2+11* (x[2]- (x[1]- (1+x[4])^4)^4)^2+12* (x[3])^2+ (x[4])^2-15* (1+x[4])^4+15* (x[1]- (1+x[4])^4)^4+15*x[1]-15*x[2]-21*x[3]-3*x[4]-x[5] <= 50.0)
@constraint(m, e5, -x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 