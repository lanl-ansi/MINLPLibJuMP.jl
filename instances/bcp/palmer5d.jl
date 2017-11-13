using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, -( (83.57418-x[1])^2+ (81.007654-x[1]-2.467400073616*x[2]-6.08806312328024*x[3]-15.0216873985605*x[4])^2+ (18.983286-x[1]-1.949550365169*x[2]-3.80074662633058*x[3]-7.40974697327763*x[4])^2+ (8.051067-x[1]-1.713473146009*x[2]-2.93599022209398*x[3]-5.03074040250303*x[4])^2+ (2.044762-x[1]-1.4926241929*x[2]-2.22792698123038*x[3]-3.32545771219912*x[4])^2+ ((-x[1])-1.267504447225*x[2]-1.60656752373515*x[3]-2.03633148110156*x[4])^2+ (1.170451-x[1]-1.096623651204*x[2]-1.20258343237999*x[3]-1.31878143449399*x[4])^2+ (10.479881-x[1]-0.761544202225*x[2]-0.579949571942512*x[3]-0.44165723409569*x[4])^2+ (25.785001-x[1]-0.487388289424*x[2]-0.237547344667653*x[3]-0.115777793974781*x[4])^2+ (44.126844-x[1]-0.274155912801*x[2]-0.0751614645237495*x[3]-0.0206059599139685*x[4])^2+ (62.822177-x[1]-0.121847072356*x[2]-0.0148467090417283*x[3]-0.00180902803085595*x[4])^2+ (77.719674-x[1]-0.030461768089*x[2]-0.000927919315108019*x[3]-2.82660629821242e-5*x[4])^2)+x[5] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[5])
m = m 		 # model get returned when including this script. 
