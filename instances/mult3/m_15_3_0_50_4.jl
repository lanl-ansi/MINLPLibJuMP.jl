using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

@variable(m, obj)
@variable(m, 0 <= x[x_Idx] <= 1)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.2757*x[1]*x[11]-0.6777*x[1]*x[5]-0.1112*x[1]*x[13]-0.8753*x[2]*x[3]+0.979*x[2]*x[5]-0.9895*x[2]*x[6]+0.324*x[2]*x[7]+0.3125*x[2]*x[12]-0.3202*x[3]*x[4]+0.0045*x[3]*x[5]+0.1586*x[3]*x[7]-0.5175*x[3]*x[9]-0.4193*x[3]*x[10]+0.4285*x[3]*x[13]-0.1023*x[4]*x[6]-0.4147*x[4]*x[7]-0.3229*x[4]*x[8]+0.9549*x[4]*x[9]-0.765*x[4]*x[11]-0.6854*x[4]*x[12]-0.3464*x[4]*x[13]+0.0623*x[4]*x[14]+0.0042*x[4]*x[15]-0.183*x[5]*x[7]-0.1208*x[5]*x[9]+0.3044*x[5]*x[10]+0.421*x[6]*x[10]+0.6458*x[6]*x[11]-0.0086*x[6]*x[12]+0.6182*x[6]*x[13]-0.7342*x[6]*x[14]-0.4365*x[7]*x[8]+0.4912*x[7]*x[9]+0.7722*x[8]*x[9]-0.4897*x[8]*x[10]+0.6645*x[8]*x[12]+0.0175*x[8]*x[15]-0.0558*x[9]*x[11]-0.2369*x[9]*x[12]-0.2928*x[9]*x[13]-0.1587*x[9]*x[14]-0.4526*x[10]*x[13]+0.3868*x[10]*x[14]-0.3118*x[11]*x[12]-0.4856*x[11]*x[13]-0.674*x[12]*x[13]+0.2175*x[14]*x[15]+0.9007*x[1]-0.6731*x[2]-0.3894*x[3]-0.2257*x[4]-0.7549*x[5]+0.1911*x[6]+0.9663*x[7]-0.5739*x[8]-0.6995*x[9]+0.0242*x[10]-0.4462*x[11]+0.3482*x[12]+0.3343*x[13]+0.0505*x[14]+0.4626*x[15]+0.3813*x[1]*x[2]*x[3]+0.8073*x[1]*x[2]*x[4]+0.3131*x[1]*x[2]*x[6]-0.7008*x[1]*x[2]*x[7]-0.2686*x[1]*x[2]*x[10]-0.14*x[1]*x[2]*x[13]+0.2896*x[1]*x[2]*x[14]+0.1862*x[1]*x[3]*x[6]-0.1562*x[1]*x[3]*x[8]+0.6355*x[1]*x[3]*x[11]-0.2498*x[1]*x[3]*x[14]-0.1694*x[1]*x[4]*x[6]+0.7802*x[1]*x[4]*x[8]+0.3342*x[1]*x[4]*x[9]-0.805*x[1]*x[4]*x[15]-0.2683*x[1]*x[5]*x[9]+0.9034*x[1]*x[5]*x[11]-0.0491*x[1]*x[5]*x[13]+0.2075*x[1]*x[6]*x[10]-0.3309*x[1]*x[6]*x[12]-0.8836*x[1]*x[6]*x[13]-0.0776*x[1]*x[6]*x[14]-0.9451*x[1]*x[6]*x[15]+0.2165*x[1]*x[8]*x[10]-0.9827*x[1]*x[8]*x[12]-0.4064*x[1]*x[8]*x[13]+0.0391*x[1]*x[8]*x[14]+0.6695*x[1]*x[9]*x[12]+0.8171*x[1]*x[9]*x[14]+0.361*x[1]*x[9]*x[15]+0.8108*x[1]*x[10]*x[13]-0.2015*x[1]*x[10]*x[14]+0.9459*x[1]*x[11]*x[12]+0.111*x[1]*x[12]*x[14]-0.6874*x[1]*x[13]*x[15]+0.6641*x[2]*x[3]*x[4]+0.4511*x[2]*x[3]*x[5]+0.3787*x[2]*x[3]*x[8]+0.3336*x[2]*x[3]*x[9]-0.5601*x[2]*x[3]*x[10]+0.0414*x[2]*x[3]*x[11]-0.324*x[2]*x[3]*x[12]+0.9835*x[2]*x[3]*x[13]-0.3339*x[2]*x[3]*x[14]+0.5673*x[2]*x[4]*x[9]-0.1988*x[2]*x[4]*x[10]-0.8619*x[2]*x[4]*x[12]+0.4729*x[2]*x[4]*x[15]-0.7063*x[2]*x[5]*x[9]+0.638*x[2]*x[5]*x[11]-0.2053*x[2]*x[5]*x[12]+0.5113*x[2]*x[5]*x[13]-0.9479*x[2]*x[6]*x[7]+0.6374*x[2]*x[6]*x[9]+0.2265*x[2]*x[6]*x[11]-0.9045*x[2]*x[6]*x[15]-0.7632*x[2]*x[7]*x[12]+0.5894*x[2]*x[8]*x[9]-0.9753*x[2]*x[8]*x[11]+0.5152*x[2]*x[8]*x[13]+0.7749*x[2]*x[8]*x[14]-0.6363*x[2]*x[9]*x[10]-0.0656*x[2]*x[9]*x[13]-0.3547*x[2]*x[10]*x[13]+0.731*x[2]*x[11]*x[12]-0.4698*x[2]*x[11]*x[14]+0.761*x[2]*x[12]*x[13]+0.0968*x[2]*x[12]*x[14]-0.1485*x[2]*x[12]*x[15]-0.7218*x[2]*x[13]*x[14]+0.589*x[3]*x[4]*x[5]+0.8645*x[3]*x[4]*x[6]+0.3749*x[3]*x[4]*x[7]-0.4567*x[3]*x[4]*x[9]-0.6347*x[3]*x[4]*x[11]-0.1843*x[3]*x[4]*x[12]-0.04*x[3]*x[4]*x[13]-0.0678*x[3]*x[4]*x[14]+0.5093*x[3]*x[5]*x[6]-0.5391*x[3]*x[5]*x[10]-0.2546*x[3]*x[5]*x[11]+0.1672*x[3]*x[5]*x[13]+0.678*x[3]*x[5]*x[14]-0.5006*x[3]*x[5]*x[15]+0.2502*x[3]*x[6]*x[7]-0.9586*x[3]*x[6]*x[8]-0.0244*x[3]*x[6]*x[10]+0.2866*x[3]*x[6]*x[14]-0.2831*x[3]*x[7]*x[9]-0.1668*x[3]*x[7]*x[12]+0.0112*x[3]*x[7]*x[13]+0.897*x[3]*x[8]*x[10]-0.1305*x[3]*x[8]*x[11]+0.844*x[3]*x[8]*x[12]+0.1478*x[3]*x[8]*x[13]-0.8072*x[3]*x[8]*x[15]+0.5012*x[3]*x[9]*x[10]+0.2268*x[3]*x[9]*x[11]+0.6634*x[3]*x[9]*x[13]-0.1185*x[3]*x[9]*x[14]-0.3579*x[3]*x[9]*x[15]-0.4852*x[3]*x[10]*x[11]+0.245*x[3]*x[10]*x[12]+0.4082*x[3]*x[10]*x[14]+0.56*x[3]*x[11]*x[12]-0.7579*x[3]*x[11]*x[13]-0.0062*x[3]*x[12]*x[14]+0.4363*x[3]*x[13]*x[14]-0.6254*x[3]*x[13]*x[15]-0.7342*x[4]*x[5]*x[7]-0.801*x[4]*x[5]*x[8]-0.2745*x[4]*x[5]*x[9]+0.8854*x[4]*x[5]*x[10]+0.2186*x[4]*x[5]*x[11]-0.451*x[4]*x[5]*x[12]+0.0671*x[4]*x[5]*x[14]+0.6875*x[4]*x[6]*x[8]+0.9127*x[4]*x[6]*x[10]-0.4838*x[4]*x[6]*x[11]-0.7673*x[4]*x[6]*x[12]+0.2166*x[4]*x[6]*x[13]+0.6008*x[4]*x[6]*x[14]-0.8306*x[4]*x[6]*x[15]-0.5146*x[4]*x[7]*x[8]+0.9706*x[4]*x[7]*x[10]+0.5735*x[4]*x[7]*x[12]+0.1171*x[4]*x[7]*x[14]-0.0459*x[4]*x[7]*x[15]+0.5788*x[4]*x[8]*x[9]+0.9995*x[4]*x[8]*x[10]-0.4035*x[4]*x[9]*x[10]+0.0461*x[4]*x[9]*x[11]-0.2314*x[4]*x[9]*x[14]+0.2886*x[4]*x[9]*x[15]-0.6465*x[4]*x[10]*x[12]-0.5374*x[4]*x[10]*x[13]+0.4694*x[4]*x[10]*x[14]+0.8766*x[4]*x[11]*x[12]+0.4409*x[4]*x[11]*x[13]-0.0141*x[4]*x[11]*x[14]+0.2132*x[4]*x[12]*x[13]-0.0753*x[4]*x[12]*x[14]-0.0932*x[4]*x[13]*x[14]+0.057*x[4]*x[14]*x[15]-0.5499*x[5]*x[6]*x[7]-0.1795*x[5]*x[6]*x[8]+0.2241*x[5]*x[6]*x[11]+0.4457*x[5]*x[6]*x[12]-0.9208*x[5]*x[6]*x[14]-0.3944*x[5]*x[7]*x[8]+0.3679*x[5]*x[7]*x[11]+0.641*x[5]*x[7]*x[13]+0.4227*x[5]*x[7]*x[14]-0.4715*x[5]*x[8]*x[10]-0.2366*x[5]*x[8]*x[12]+0.5983*x[5]*x[9]*x[10]+0.6044*x[5]*x[9]*x[11]+0.5223*x[5]*x[9]*x[13]+0.9517*x[5]*x[9]*x[14]-0.0368*x[5]*x[10]*x[11]+0.0605*x[5]*x[10]*x[12]-0.4839*x[5]*x[10]*x[13]+0.3019*x[5]*x[10]*x[14]-0.2552*x[5]*x[10]*x[15]-0.7583*x[5]*x[11]*x[12]-0.9883*x[5]*x[11]*x[13]+0.3196*x[5]*x[11]*x[14]+0.9803*x[5]*x[12]*x[14]-0.806*x[5]*x[12]*x[15]+0.4991*x[5]*x[13]*x[14]+0.2362*x[5]*x[13]*x[15]+0.3916*x[5]*x[14]*x[15]+0.7262*x[6]*x[7]*x[8]-0.7489*x[6]*x[7]*x[10]-0.5853*x[6]*x[7]*x[13]+0.2511*x[6]*x[7]*x[14]+0.2466*x[6]*x[8]*x[9]+0.1747*x[6]*x[8]*x[14]+0.8957*x[6]*x[9]*x[12]+0.8329*x[6]*x[9]*x[13]+0.0736*x[6]*x[9]*x[14]-0.476*x[6]*x[10]*x[11]-0.8164*x[6]*x[10]*x[12]-0.7281*x[6]*x[10]*x[13]+0.9495*x[6]*x[11]*x[13]-0.2334*x[6]*x[11]*x[14]-0.1355*x[6]*x[12]*x[13]-0.0768*x[6]*x[12]*x[14]+0.1114*x[6]*x[13]*x[14]-0.0695*x[6]*x[13]*x[15]-0.8505*x[6]*x[14]*x[15]+0.5947*x[7]*x[8]*x[9]-0.767*x[7]*x[8]*x[11]-0.8592*x[7]*x[8]*x[13]+0.9574*x[7]*x[8]*x[14]+0.8914*x[7]*x[8]*x[15]+0.6411*x[7]*x[9]*x[10]-0.1731*x[7]*x[9]*x[13]-0.5562*x[7]*x[9]*x[14]+0.2242*x[7]*x[10]*x[11]-0.6707*x[7]*x[12]*x[13]-0.8396*x[7]*x[12]*x[15]+0.1054*x[7]*x[13]*x[15]+0.1531*x[7]*x[14]*x[15]-0.5357*x[8]*x[9]*x[10]+0.1753*x[8]*x[9]*x[11]-0.4028*x[8]*x[9]*x[12]+0.1535*x[8]*x[9]*x[13]-0.2211*x[8]*x[10]*x[11]+0.7406*x[8]*x[10]*x[12]+0.2446*x[8]*x[10]*x[14]-0.9747*x[8]*x[10]*x[15]+0.8338*x[8]*x[11]*x[15]-0.5829*x[8]*x[12]*x[13]-0.148*x[8]*x[12]*x[14]+0.884*x[8]*x[13]*x[14]+0.9807*x[9]*x[10]*x[11]+0.1312*x[9]*x[10]*x[13]+0.0707*x[9]*x[10]*x[14]+0.1605*x[9]*x[11]*x[12]-0.5429*x[9]*x[11]*x[13]+0.5285*x[9]*x[11]*x[14]-0.2707*x[9]*x[13]*x[14]-0.8969*x[9]*x[14]*x[15]-0.9321*x[10]*x[11]*x[12]+0.8197*x[10]*x[11]*x[13]+0.966*x[10]*x[11]*x[15]+0.2594*x[10]*x[12]*x[13]-0.6553*x[10]*x[12]*x[14]-0.6111*x[10]*x[13]*x[14]+0.8914*x[11]*x[12]*x[13]+0.5022*x[11]*x[13]*x[14]+0.9609*x[11]*x[14]*x[15])+obj == 0.0)

m = m 		 # model get returned when including this script. 
