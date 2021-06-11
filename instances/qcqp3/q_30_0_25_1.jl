using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.6117*x[1]*x[3]-1.8129*x[1]*x[5]+0.6034*x[1]*x[20]+1.1174*x[2]*x[4]-1.5804*x[2]*x[5]-0.7506*x[2]*x[7]-0.3188*x[2]*x[17]-1.5432*x[2]*x[18]+0.1008*x[2]*x[21]-1.7315*x[2]*x[26]-1.595*x[3]*x[9]-1.3125*x[3]*x[15]-0.0785*x[3]*x[17]+0.9127*x[3]*x[29]-0.9965*x[3]*x[30]-1.7066*x[4]*x[7]+1.0218*x[4]*x[11]+1.0148*x[4]*x[12]+1.007*x[4]*x[22]+1.4667*x[4]*x[28]-0.7261*x[4]*x[29]-0.714*x[5]*x[12]-1.5237*x[5]*x[13]+0.3496*x[5]*x[18]+0.4493*x[5]*x[20]+1.0785*x[5]*x[21]-0.6658*x[5]*x[22]+0.1675*x[5]*x[24]-0.2616*x[5]*x[27]-0.4672*x[5]*x[29]-0.6763*x[6]*x[9]-1.2991*x[6]*x[12]+0.8933*x[6]*x[17]-0.9077*x[6]*x[21]+0.4744*x[6]*x[25]+1.7478*x[6]*x[28]+1.4011*x[7]*x[7]+1.8905*x[7]*x[8]-1.4674*x[7]*x[11]+1.8742*x[7]*x[13]+0.4601*x[7]*x[15]+1.963*x[7]*x[18]+0.9776*x[7]*x[26]-1.1665*x[8]*x[14]+1.3776*x[8]*x[18]-1.3584*x[8]*x[19]+0.4287*x[8]*x[20]+1.1918*x[8]*x[21]+0.1506*x[8]*x[25]-0.1756*x[8]*x[28]+0.2473*x[9]*x[11]+0.0437*x[9]*x[14]+0.2141*x[9]*x[17]+0.3039*x[10]*x[12]-0.0763*x[10]*x[14]-0.9245*x[10]*x[15]-0.8204*x[10]*x[18]+0.6547*x[10]*x[19]+1.4228*x[10]*x[20]+0.9408*x[10]*x[21]-1.8998*x[10]*x[22]-1.014*x[10]*x[23]+0.9817*x[11]*x[12]+0.4742*x[11]*x[20]-0.1147*x[11]*x[22]-0.6437*x[11]*x[28]-1.9394*x[12]*x[17]-0.0775*x[12]*x[23]-0.2181*x[12]*x[27]+1.9917*x[13]*x[17]+1.6061*x[13]*x[19]-1.4378*x[13]*x[21]+1.7145*x[13]*x[22]+0.5505*x[13]*x[26]+0.7704*x[13]*x[29]-0.419*x[14]*x[14]-1.0033*x[14]*x[17]+0.5928*x[14]*x[18]+0.8098*x[14]*x[23]-0.8606*x[15]*x[19]-0.5008*x[15]*x[22]-0.2459*x[16]*x[16]+1.603*x[16]*x[20]+0.6619*x[16]*x[25]-0.7848*x[16]*x[27]+0.2009*x[16]*x[29]+0.216*x[17]*x[20]+1.8387*x[17]*x[27]-0.1379*x[17]*x[28]-1.4819*x[17]*x[29]+1.8637*x[17]*x[30]-0.1725*x[18]*x[21]+1.1012*x[18]*x[23]+1.305*x[18]*x[24]+1.5893*x[19]*x[22]+1.0944*x[19]*x[24]+1.7884*x[19]*x[25]-0.8176*x[19]*x[28]+1.961*x[19]*x[29]+0.0147*x[20]*x[20]+1.4843*x[20]*x[23]+0.3278*x[21]*x[25]+1.2552*x[21]*x[28]-0.4856*x[22]*x[22]-1.6031*x[23]*x[26]+0.5195*x[23]*x[27]-1.78*x[23]*x[28]+1.815*x[23]*x[30]+0.8361*x[24]*x[26]+0.7795*x[24]*x[27]+0.9861*x[25]*x[25]-0.7663*x[25]*x[29]+0.8005*x[26]*x[28]+0.6317*x[27]*x[29]-1.1007*x[28]*x[30]-0.9728*x[29]*x[30]-0.6207*x[1]-0.5978*x[2]-0.5025*x[3]+0.9402*x[4]+0.5528*x[5]-0.4546*x[6]-0.0061*x[7]-0.2025*x[8]+0.2266*x[9]-0.8295*x[10]+0.474*x[11]+0.7257*x[12]-0.3179*x[13]+0.3889*x[14]+0.2838*x[15]-0.829*x[16]+0.416*x[17]+0.1849*x[18]-0.5344*x[19]-0.8496*x[20]-0.3513*x[21]+0.8262*x[22]-0.5914*x[23]-0.0945*x[24]+0.4543*x[25]-0.9433*x[26]+0.0341*x[27]+0.5353*x[28]+0.7887*x[29]+0.889*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 
