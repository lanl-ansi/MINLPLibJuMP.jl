using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 1 <= x[x_Idx] <= 10)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, 1 <= i[i_Idx] <= 10, Int)

# ----- Constraints ----- #
@NLconstraint(m, e1, 20000*i[1]^(-0.32)*i[2]^(-0.19)*i[3]^(-0.405)*i[4]^(-0.265)*i[5]^(-0.175)*i[6]^(-0.44)*i[7]^(-0.275)*i[8]^(-0.47)*i[9]^(-0.31)*i[10]^(-0.295)*x[11]^(-0.105)*x[12]^(-0.15)*x[13]^(-0.235)*x[14]^(-0.115)*x[15]^(-0.42)*x[16]^(-0.095)*x[17]^(-0.115)*x[18]^(-0.085)*x[19]^(-0.115)*x[20]^(-0.22)+i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
