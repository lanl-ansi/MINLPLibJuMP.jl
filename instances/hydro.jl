using JuMP

function hydro(;options=Dict())

	haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
	haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false

	m = Model(solver=fetch_solver(solver_options))

	# ----- Variables ----- #
	@variable(m, objvar)
	x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
	@variable(m, x[x_Idx])
	setlowerbound(x[16], 0.0)
	setlowerbound(x[14], 0.0)
	setlowerbound(x[17], 0.0)
	setlowerbound(x[23], 0.0)
	setlowerbound(x[11], 0.0)
	setlowerbound(x[22], 0.0)
	setlowerbound(x[12], 0.0)
	setlowerbound(x[19], 0.0)
	setlowerbound(x[20], 0.0)
	setlowerbound(x[24], 0.0)
	setlowerbound(x[18], 0.0)
	setlowerbound(x[9], 0.0)
	setlowerbound(x[15], 0.0)
	setlowerbound(x[8], 0.0)
	setlowerbound(x[7], 0.0)
	setlowerbound(x[13], 0.0)
	setlowerbound(x[21], 0.0)
	setlowerbound(x[10], 0.0)
	setlowerbound(x[1], 150.0)
	setupperbound(x[1], 1500.0)
	setlowerbound(x[2], 150.0)
	setupperbound(x[2], 1500.0)
	setlowerbound(x[3], 150.0)
	setupperbound(x[3], 1500.0)
	setlowerbound(x[4], 150.0)
	setupperbound(x[4], 1500.0)
	setlowerbound(x[5], 150.0)
	setupperbound(x[5], 1500.0)
	setlowerbound(x[6], 150.0)
	setupperbound(x[6], 1500.0)
	setupperbound(x[7], 1000.0)
	setupperbound(x[8], 1000.0)
	setupperbound(x[9], 1000.0)
	setupperbound(x[10], 1000.0)
	setupperbound(x[11], 1000.0)
	setupperbound(x[12], 1000.0)
	setlowerbound(x[25], 100000.0)
	setupperbound(x[25], 100000.0)
	setlowerbound(x[26], 60000.0)
	setupperbound(x[26], 120000.0)
	setlowerbound(x[27], 60000.0)
	setupperbound(x[27], 120000.0)
	setlowerbound(x[28], 60000.0)
	setupperbound(x[28], 120000.0)
	setlowerbound(x[29], 60000.0)
	setupperbound(x[29], 120000.0)
	setlowerbound(x[30], 60000.0)
	setupperbound(x[30], 120000.0)
	setlowerbound(x[31], 60000.0)
	setupperbound(x[31], 120000.0)


	# ----- Constraints ----- #
	@constraint(m, e1, -82.8*(0.0016* (x[1])^2+8*x[1]+0.0016* (x[2])^2+8*x[2]+0.0016* (x[3])^2+8*x[3]+0.0016* (x[4])^2+8*x[4]+0.0016* (x[5])^2+8*x[5]+0.0016* (x[6])^2+8*x[6])+objvar == 248400.0)
	@constraint(m, e2, x[1]+x[7]-x[13] >= 1200.0)
	@constraint(m, e3, x[2]+x[8]-x[14] >= 1500.0)
	@constraint(m, e4, x[3]+x[9]-x[15] >= 1100.0)
	@constraint(m, e5, x[4]+x[10]-x[16] >= 1800.0)
	@constraint(m, e6, x[5]+x[11]-x[17] >= 950.0)
	@constraint(m, e7, x[6]+x[12]-x[18] >= 1300.0)
	@constraint(m, e8, 12*x[19]-x[25]+x[26] == 24000.0)
	@constraint(m, e9, 12*x[20]-x[26]+x[27] == 24000.0)
	@constraint(m, e10, 12*x[21]-x[27]+x[28] == 24000.0)
	@constraint(m, e11, 12*x[22]-x[28]+x[29] == 24000.0)
	@constraint(m, e12, 12*x[23]-x[29]+x[30] == 24000.0)
	@constraint(m, e13, 12*x[24]-x[30]+x[31] == 24000.0)
	@constraint(m, e14, -8e-5* (x[7])^2+x[13] == 0.0)
	@constraint(m, e15, -8e-5* (x[8])^2+x[14] == 0.0)
	@constraint(m, e16, -8e-5* (x[9])^2+x[15] == 0.0)
	@constraint(m, e17, -8e-5* (x[10])^2+x[16] == 0.0)
	@constraint(m, e18, -8e-5* (x[11])^2+x[17] == 0.0)
	@constraint(m, e19, -8e-5* (x[12])^2+x[18] == 0.0)
	@constraint(m, e20, -4.97*x[7]+x[19] == 330.0)
	@constraint(m, e21, -4.97*x[8]+x[20] == 330.0)
	@constraint(m, e22, -4.97*x[9]+x[21] == 330.0)
	@constraint(m, e23, -4.97*x[10]+x[22] == 330.0)
	@constraint(m, e24, -4.97*x[11]+x[23] == 330.0)
	@constraint(m, e25, -4.97*x[12]+x[24] == 330.0)


	# ----- Objective ----- #
	@objective(m, Min, objvar)
	verbose && print(m)
	return m
end

m = hydro()


# ----- END ----- #
