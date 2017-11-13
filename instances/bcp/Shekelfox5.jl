using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 10.0)
setupperbound(x[2], 10.0)
setupperbound(x[3], 10.0)
setupperbound(x[4], 10.0)
setupperbound(x[5], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 1/(0.806+ ((-9.681)+x[1])^2+ ((-0.667)+x[2])^2+ ((-4.783)+x[3])^2+ ((-9.095)+x[4])^2+ ((-3.517)+x[5])^2)+1/(0.517+ ((-9.4)+x[1])^2+ ((-2.041)+x[2])^2+ ((-3.788)+x[3])^2+ ((-7.931)+x[4])^2+ ((-2.882)+x[5])^2)+1/(0.1+ ((-8.025)+x[1])^2+ ((-9.152)+x[2])^2+ ((-5.114)+x[3])^2+ ((-7.621)+x[4])^2+ ((-4.564)+x[5])^2)+1/(0.908+ ((-2.196)+x[1])^2+ ((-0.415)+x[2])^2+ ((-5.649)+x[3])^2+ ((-6.979)+x[4])^2+ ((-9.51)+x[5])^2)+1/(0.965+ ((-8.074)+x[1])^2+ ((-8.777)+x[2])^2+ ((-3.467)+x[3])^2+ ((-1.863)+x[4])^2+ ((-6.708)+x[5])^2)+1/(0.669+ ((-7.65)+x[1])^2+ ((-5.658)+x[2])^2+ ((-0.72)+x[3])^2+ ((-2.764)+x[4])^2+ ((-3.278)+x[5])^2)+1/(0.524+ ((-1.256)+x[1])^2+ ((-3.605)+x[2])^2+ ((-8.623)+x[3])^2+ ((-6.905)+x[4])^2+ ((-4.584)+x[5])^2)+1/(0.902+ ((-8.314)+x[1])^2+ ((-2.261)+x[2])^2+ ((-4.224)+x[3])^2+ ((-1.781)+x[4])^2+ ((-4.124)+x[5])^2)+1/(0.531+ ((-0.226)+x[1])^2+ ((-8.858)+x[2])^2+ ((-1.42)+x[3])^2+ ((-0.945)+x[4])^2+ ((-1.622)+x[5])^2)+1/(0.876+ ((-7.305)+x[1])^2+ ((-2.228)+x[2])^2+ ((-1.242)+x[3])^2+ ((-5.928)+x[4])^2+ ((-9.133)+x[5])^2)+1/(0.462+ ((-0.652)+x[1])^2+ ((-7.027)+x[2])^2+ ((-0.508)+x[3])^2+ ((-4.876)+x[4])^2+ ((-8.807)+x[5])^2)+1/(0.491+ ((-2.699)+x[1])^2+ ((-3.516)+x[2])^2+ ((-5.874)+x[3])^2+ ((-4.119)+x[4])^2+ ((-4.461)+x[5])^2)+1/(0.463+ ((-8.327)+x[1])^2+ ((-3.897)+x[2])^2+ ((-2.017)+x[3])^2+ ((-9.57)+x[4])^2+ ((-9.825)+x[5])^2)+1/(0.714+ ((-2.132)+x[1])^2+ ((-7.006)+x[2])^2+ ((-7.136)+x[3])^2+ ((-2.641)+x[4])^2+ ((-1.882)+x[5])^2)+1/(0.352+ ((-4.707)+x[1])^2+ ((-5.579)+x[2])^2+ ((-4.08)+x[3])^2+ ((-0.581)+x[4])^2+ ((-9.698)+x[5])^2)+1/(0.869+ ((-8.304)+x[1])^2+ ((-7.559)+x[2])^2+ ((-8.567)+x[3])^2+ ((-0.322)+x[4])^2+ ((-7.128)+x[5])^2)+1/(0.813+ ((-8.632)+x[1])^2+ ((-4.409)+x[2])^2+ ((-4.832)+x[3])^2+ ((-5.768)+x[4])^2+ ((-7.05)+x[5])^2)+1/(0.811+ ((-4.887)+x[1])^2+ ((-9.112)+x[2])^2+ ((-0.17)+x[3])^2+ ((-8.967)+x[4])^2+ ((-9.693)+x[5])^2)+1/(0.828+ ((-2.44)+x[1])^2+ ((-6.686)+x[2])^2+ ((-4.299)+x[3])^2+ ((-1.007)+x[4])^2+ ((-7.008)+x[5])^2)+1/(0.964+ ((-6.306)+x[1])^2+ ((-8.583)+x[2])^2+ ((-6.084)+x[3])^2+ ((-1.138)+x[4])^2+ ((-4.35)+x[5])^2)+1/(0.789+ ((-0.652)+x[1])^2+ ((-2.343)+x[2])^2+ ((-1.37)+x[3])^2+ ((-0.821)+x[4])^2+ ((-1.31)+x[5])^2)+1/(0.36+ ((-5.558)+x[1])^2+ ((-1.272)+x[2])^2+ ((-5.756)+x[3])^2+ ((-9.857)+x[4])^2+ ((-2.279)+x[5])^2)+1/(0.369+ ((-3.352)+x[1])^2+ ((-7.549)+x[2])^2+ ((-9.817)+x[3])^2+ ((-9.437)+x[4])^2+ ((-8.687)+x[5])^2)+1/(0.992+ ((-8.798)+x[1])^2+ ((-0.88)+x[2])^2+ ((-2.37)+x[3])^2+ ((-0.168)+x[4])^2+ ((-1.701)+x[5])^2)+1/(0.332+ ((-1.46)+x[1])^2+ ((-8.057)+x[2])^2+ ((-1.336)+x[3])^2+ ((-7.217)+x[4])^2+ ((-7.914)+x[5])^2)+1/(0.817+ ((-0.432)+x[1])^2+ ((-8.645)+x[2])^2+ ((-8.774)+x[3])^2+ ((-0.249)+x[4])^2+ ((-8.081)+x[5])^2)+1/(0.632+ ((-0.679)+x[1])^2+ ((-2.8)+x[2])^2+ ((-5.523)+x[3])^2+ ((-3.049)+x[4])^2+ ((-2.968)+x[5])^2)+1/(0.883+ ((-4.263)+x[1])^2+ ((-1.074)+x[2])^2+ ((-7.286)+x[3])^2+ ((-5.599)+x[4])^2+ ((-8.291)+x[5])^2)+1/(0.608+ ((-9.496)+x[1])^2+ ((-4.83)+x[2])^2+ ((-3.15)+x[3])^2+ ((-8.27)+x[4])^2+ ((-5.079)+x[5])^2)+1/(0.326+ ((-4.138)+x[1])^2+ ((-2.562)+x[2])^2+ ((-2.532)+x[3])^2+ ((-9.661)+x[4])^2+ ((-5.611)+x[5])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
