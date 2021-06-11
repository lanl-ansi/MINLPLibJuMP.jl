using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.6117*x[1]*x[2]-1.8129*x[1]*x[3]-0.3188*x[1]*x[12]+0.6034*x[1]*x[14]-1.595*x[2]*x[6]-0.0785*x[2]*x[12]-1.5977*x[3]*x[5]+1.0218*x[3]*x[7]+1.007*x[3]*x[15]-0.7261*x[3]*x[19]-1.2991*x[4]*x[8]+0.3496*x[4]*x[12]+0.4493*x[4]*x[14]-1.4674*x[5]*x[8]+1.8742*x[5]*x[9]+1.4198*x[5]*x[14]+1.7508*x[6]*x[14]-0.9245*x[7]*x[10]+1.4228*x[7]*x[13]+0.6879*x[7]*x[15]-1.5367*x[7]*x[16]-0.6437*x[7]*x[18]-1.9394*x[8]*x[11]+0.4742*x[8]*x[14]-0.0775*x[8]*x[15]-0.2181*x[8]*x[18]+1.9917*x[9]*x[12]+1.7145*x[9]*x[15]+0.7704*x[9]*x[20]+1.0388*x[10]*x[10]-0.5008*x[10]*x[15]+1.6354*x[10]*x[16]+0.216*x[11]*x[14]+0.6619*x[11]*x[17]-0.7848*x[11]*x[18]-0.1379*x[11]*x[19]-1.4819*x[11]*x[20]-0.1725*x[12]*x[14]+1.8637*x[12]*x[20]+1.5893*x[13]*x[15]+1.0944*x[13]*x[16]+1.7884*x[13]*x[17]+1.961*x[13]*x[19]+0.0147*x[14]*x[14]+0.3278*x[14]*x[17]+1.2552*x[14]*x[19]+1.815*x[15]*x[20]+0.8361*x[16]*x[17]+0.9861*x[17]*x[17]-1.5423*x[18]*x[19]+0.6317*x[18]*x[20]-0.9728*x[20]*x[20]+0.7333*x[1]+0.2647*x[2]-0.5144*x[3]-0.6792*x[4]-0.9575*x[5]-0.6195*x[6]-0.3753*x[7]+0.6193*x[8]+0.1474*x[9]+0.6525*x[10]-0.4271*x[11]-0.679*x[12]-0.3382*x[13]-0.4683*x[14]+0.0896*x[15]+0.107*x[16]-0.9568*x[17]-0.7025*x[18]-0.7902*x[19]+0.2284*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 1.667*x[1]*x[7]+1.1174*x[2]*x[3]-1.4507*x[2]*x[9]-1.762*x[2]*x[10]+0.8026*x[2]*x[15]+1.4557*x[2]*x[17]+0.4529*x[3]*x[7]-0.9965*x[3]*x[20]-0.237*x[4]*x[6]+1.3703*x[4]*x[7]-0.7735*x[4]*x[14]+0.8382*x[4]*x[17]-1.4581*x[4]*x[19]+1.8905*x[5]*x[5]+1.963*x[5]*x[12]-0.0647*x[5]*x[13]-0.9675*x[5]*x[17]+1.3911*x[5]*x[19]-0.9725*x[6]*x[7]-1.0578*x[6]*x[10]-1.4171*x[6]*x[18]-1.7049*x[7]*x[7]+0.8599*x[7]*x[8]+0.0911*x[7]*x[14]+0.319*x[7]*x[19]-1.5141*x[8]*x[12]+1.3157*x[8]*x[15]-1.5602*x[8]*x[16]+0.1747*x[8]*x[18]+0.8828*x[8]*x[20]-0.7625*x[9]*x[10]+0.3506*x[9]*x[11]-1.4378*x[9]*x[14]+1.7714*x[9]*x[18]+0.7344*x[10]*x[13]+1.2432*x[10]*x[14]+0.5907*x[11]*x[15]+0.4863*x[11]*x[17]-0.2337*x[12]*x[14]-1.4289*x[12]*x[15]+1.1012*x[12]*x[16]-0.4074*x[13]*x[13]-1.0302*x[13]*x[14]-0.9647*x[13]*x[17]+1.9687*x[13]*x[19]+0.2368*x[13]*x[20]+1.7309*x[14]*x[15]+1.0147*x[14]*x[18]-0.4171*x[15]*x[15]+1.0324*x[15]*x[20]+1.8287*x[17]*x[18]+0.5333*x[19]*x[19]+0.5307*x[1]+0.753*x[2]-0.8016*x[3]-0.331*x[4]+0.2902*x[5]-0.7368*x[6]+0.6151*x[7]+0.0837*x[8]-0.4685*x[9]-0.0823*x[10]+0.0219*x[11]+0.0097*x[12]+0.9235*x[13]+0.1005*x[14]-0.6207*x[15]-0.5978*x[16]-0.5025*x[17]+0.9402*x[18]+0.5528*x[19]-0.4546*x[20] <= 49.695)
@NLconstraint(m, e3, 1.8543*x[1]*x[10]-0.392*x[1]*x[8]-0.8289*x[1]*x[12]+1.6524*x[2]*x[7]-0.3037*x[2]*x[9]+1.0706*x[2]*x[11]+1.5883*x[2]*x[19]+1.3266*x[3]*x[11]+1.298*x[3]*x[15]-1.3859*x[4]*x[8]+1.0739*x[4]*x[13]+1.6232*x[5]*x[5]+0.7204*x[5]*x[7]+0.9177*x[5]*x[9]+0.9087*x[5]*x[10]-0.7489*x[5]*x[11]+1.6292*x[5]*x[15]-0.9745*x[5]*x[16]+0.1274*x[5]*x[19]-0.7397*x[6]*x[8]-1.5344*x[6]*x[18]+0.7055*x[7]*x[7]+1.1618*x[7]*x[14]-1.367*x[7]*x[15]+1.8372*x[7]*x[20]+0.4882*x[8]*x[15]+0.4986*x[8]*x[17]+0.9937*x[8]*x[19]+1.7104*x[9]*x[10]-1.6589*x[9]*x[13]+1.1234*x[9]*x[14]-1.0402*x[9]*x[16]+1.458*x[10]*x[16]-0.0286*x[11]*x[16]+1.9522*x[11]*x[17]-1.0689*x[12]*x[14]+1.5417*x[12]*x[16]+0.2378*x[12]*x[17]-1.8456*x[12]*x[18]-1.658*x[13]*x[14]+0.8962*x[13]*x[15]-0.4439*x[14]*x[18]-1.2811*x[14]*x[20]-0.2185*x[15]*x[15]-0.3386*x[15]*x[16]-0.6359*x[15]*x[17]-0.7681*x[15]*x[18]-0.0355*x[16]*x[20]-0.3728*x[17]*x[17]-0.2363*x[17]*x[19]-0.8408*x[18]*x[19]+1.8811*x[20]*x[20]-0.9605*x[1]+0.9985*x[2]+0.9604*x[3]+0.2233*x[4]+0.1751*x[5]+0.9245*x[6]+0.7868*x[7]-0.5956*x[8]-0.9745*x[9]-0.49*x[10]+0.7809*x[11]-0.4609*x[12]+0.778*x[13]+0.0383*x[14]-0.2656*x[15]+0.9676*x[16]+0.7539*x[17]+0.3629*x[18]-0.2751*x[19]-0.6036*x[20] <= 18.723)
@NLconstraint(m, e4, (-0.0859*x[1]*x[2])-0.6436*x[1]*x[10]+0.6287*x[1]*x[17]+0.6069*x[2]*x[3]+0.4746*x[2]*x[4]+0.777*x[2]*x[12]+0.8266*x[2]*x[15]+0.2288*x[2]*x[18]-1.9306*x[3]*x[5]+1.6939*x[3]*x[6]-1.0294*x[3]*x[8]+1.9747*x[3]*x[11]-1.445*x[3]*x[13]-0.1552*x[3]*x[14]-0.4753*x[4]*x[4]+1.2309*x[4]*x[6]+0.0397*x[4]*x[15]-1.9527*x[4]*x[20]+0.5574*x[5]*x[15]-1.7424*x[5]*x[16]-1.6474*x[5]*x[17]+1.3817*x[6]*x[7]+0.8926*x[6]*x[8]+0.82*x[6]*x[9]+1.4272*x[6]*x[15]+0.4992*x[6]*x[17]+1.3194*x[6]*x[18]-0.3335*x[6]*x[19]+1.9137*x[6]*x[20]+1.3148*x[7]*x[7]+0.9445*x[7]*x[10]+0.455*x[7]*x[20]-0.1562*x[8]*x[9]+0.1295*x[8]*x[13]-1.1985*x[8]*x[14]+1.2874*x[8]*x[15]+1.3009*x[9]*x[13]+1.0801*x[9]*x[20]+0.147*x[10]*x[11]-0.9814*x[10]*x[14]+1.9221*x[10]*x[19]-0.3003*x[10]*x[20]-1.2497*x[11]*x[13]+1.3023*x[11]*x[14]-1.0213*x[13]*x[16]-1.9427*x[14]*x[18]-1.1855*x[15]*x[15]+0.2409*x[15]*x[16]+0.856*x[15]*x[18]-1.3619*x[16]*x[16]+1.6608*x[16]*x[18]-0.6083*x[16]*x[20]-0.0621*x[1]-0.674*x[2]+0.0977*x[3]-0.3899*x[4]-0.6912*x[5]+0.15*x[6]-0.7118*x[7]-0.6134*x[8]+0.3822*x[9]+0.9004*x[10]-0.7372*x[11]+0.42*x[12]-0.2405*x[13]-0.204*x[14]-0.998*x[15]-0.1736*x[16]+0.6076*x[17]+0.7557*x[18]-0.7184*x[19]-0.9139*x[20] <= 56.565)
@NLconstraint(m, e5, 1.894*x[1]*x[7]-1.0094*x[1]*x[10]-0.2223*x[1]*x[13]-1.1005*x[1]*x[17]+0.7866*x[2]*x[10]-0.2435*x[2]*x[12]-0.6227*x[2]*x[18]-0.5351*x[3]*x[5]-1.4488*x[3]*x[9]+0.1968*x[3]*x[12]-0.6627*x[3]*x[13]+0.1659*x[3]*x[15]+1.9599*x[3]*x[17]+1.1009*x[3]*x[18]-0.6578*x[3]*x[19]-1.3956*x[3]*x[20]+1.24*x[4]*x[4]-0.2933*x[4]*x[5]+1.9082*x[4]*x[14]+1.172*x[4]*x[15]+1.727*x[4]*x[20]-1.7517*x[5]*x[5]+1.3723*x[5]*x[7]+1.3204*x[5]*x[9]-1.4502*x[5]*x[11]-1.1138*x[5]*x[18]+0.6959*x[5]*x[19]+1.8264*x[6]*x[9]-1.0457*x[6]*x[10]+0.7079*x[6]*x[18]-0.5358*x[6]*x[19]-1.9877*x[7]*x[17]-1.9945*x[8]*x[11]-1.805*x[9]*x[13]+0.3789*x[9]*x[14]+0.9914*x[9]*x[17]-1.3346*x[9]*x[19]+1.3358*x[10]*x[14]+0.538*x[10]*x[15]+1.8422*x[10]*x[19]+0.7765*x[11]*x[13]-1.2622*x[11]*x[14]+1.6113*x[11]*x[15]-0.8559*x[12]*x[19]+0.6595*x[13]*x[15]+1.5161*x[13]*x[16]+0.4398*x[13]*x[19]+1.7565*x[14]*x[14]+1.3107*x[14]*x[20]+1.1073*x[15]*x[17]+0.7851*x[15]*x[18]-1.0249*x[18]*x[20]+0.8643*x[1]+0.533*x[2]+0.1871*x[3]-0.1905*x[4]+0.9994*x[5]-0.7306*x[6]-0.2797*x[7]-0.7742*x[8]+0.2634*x[9]-0.6882*x[10]-0.1916*x[11]-0.6292*x[12]+0.3706*x[13]+0.2252*x[14]-0.5111*x[15]-0.7106*x[16]+0.436*x[17]+0.6397*x[18]-0.7626*x[19]-0.7465*x[20] <= 28.634)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
