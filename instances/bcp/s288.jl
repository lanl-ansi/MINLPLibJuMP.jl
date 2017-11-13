using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1]+10*x[6])^2+5* (x[11]-x[16])^2+ (x[6]-2*x[11])^4+10* (x[1]-x[16])^4+ (x[2]+10*x[7])^2+5* (x[12]-x[17])^2+ (x[7]-2*x[12])^4+10* (x[2]-x[17])^4+ (x[3]+10*x[8])^2+5* (x[13]-x[18])^2+ (x[8]-2*x[13])^4+10* (x[3]-x[18])^4+ (x[4]+10*x[9])^2+5* (x[14]-x[19])^2+ (x[9]-2*x[14])^4+10* (x[4]-x[19])^4+ (x[5]+10*x[10])^2+5* (x[15]-x[20])^2+ (x[10]-2*x[15])^4+10* (x[5]-x[20])^4)+x[21] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[21])
m = m 		 # model get returned when including this script. 
