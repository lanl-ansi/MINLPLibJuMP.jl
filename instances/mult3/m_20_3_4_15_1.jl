using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.2634*x[3]*x[8]-0.7989*x[3]*x[5]-0.2096*x[3]*x[13]-0.1467*x[4]*x[5]+0.6154*x[4]*x[6]-0.3868*x[4]*x[14]+0.312*x[4]*x[16]+0.7074*x[4]*x[17]+0.2573*x[5]*x[9]-0.9469*x[5]*x[16]+0.9307*x[6]*x[8]-0.5833*x[6]*x[9]-0.289*x[6]*x[10]-0.4609*x[6]*x[18]-0.5091*x[6]*x[20]+0.4299*x[7]*x[8]-0.8604*x[7]*x[19]+0.3253*x[9]*x[13]+0.9229*x[10]*x[20]-0.2455*x[11]*x[17]-0.428*x[12]*x[19]+0.4381*x[13]*x[15]+0.8942*x[13]*x[17]+0.1639*x[14]*x[17]-0.5125*x[18]*x[20]-0.1745*x[3]+0.3241*x[4]-0.4919*x[5]-0.0339*x[6]+0.2248*x[7]+0.366*x[8]-0.1987*x[9]-0.5784*x[10]+0.8198*x[11]-0.0486*x[12]+0.7126*x[13]+0.8337*x[14]+0.0308*x[15]+0.4378*x[16]-0.4249*x[17]-0.876*x[18]-0.247*x[19]-0.482*x[20]+(-0.3155*x[1]*x[2]*x[8])-0.4008*x[1]*x[2]*x[9]-0.043*x[1]*x[2]*x[15]+0.3986*x[1]*x[2]*x[20]+0.2284*x[1]*x[3]*x[4]+0.8874*x[1]*x[4]*x[20]+0.3144*x[1]*x[5]*x[17]+0.6009*x[1]*x[6]*x[12]-0.6056*x[1]*x[7]*x[12]+0.8335*x[1]*x[7]*x[14]+0.2418*x[1]*x[8]*x[16]+0.4957*x[1]*x[9]*x[17]+0.9495*x[1]*x[9]*x[20]+0.9272*x[1]*x[10]*x[11]-0.3218*x[1]*x[10]*x[17]-0.6371*x[1]*x[12]*x[14]-0.7402*x[1]*x[14]*x[20]-0.064*x[1]*x[17]*x[19]+0.9604*x[1]*x[18]*x[20]+0.4013*x[2]*x[3]*x[15]-0.7618*x[2]*x[4]*x[9]+0.8262*x[2]*x[5]*x[7]-0.4232*x[2]*x[5]*x[10]+0.8153*x[2]*x[6]*x[9]-0.7975*x[2]*x[6]*x[11]+0.0977*x[2]*x[6]*x[13]-0.1383*x[2]*x[8]*x[9]-0.0203*x[2]*x[8]*x[18]+0.8385*x[2]*x[9]*x[14]-0.7123*x[2]*x[10]*x[11]-0.7249*x[2]*x[10]*x[12]+0.0341*x[2]*x[10]*x[15]-0.6571*x[2]*x[11]*x[14]-0.7786*x[2]*x[12]*x[14]+0.3442*x[2]*x[14]*x[15]-0.0021*x[2]*x[15]*x[19]+0.5162*x[2]*x[15]*x[20]+0.1144*x[2]*x[17]*x[18]+0.046*x[3]*x[4]*x[5]+0.9687*x[3]*x[4]*x[10]+0.6789*x[3]*x[5]*x[8]-0.9653*x[3]*x[5]*x[14]+0.6364*x[3]*x[6]*x[18]+0.9726*x[3]*x[6]*x[19]-0.5683*x[3]*x[6]*x[20]+0.1936*x[3]*x[7]*x[19]+0.9569*x[3]*x[8]*x[12]+0.5014*x[3]*x[8]*x[19]+0.0742*x[3]*x[9]*x[13]-0.9021*x[3]*x[9]*x[15]-0.4142*x[3]*x[11]*x[12]-0.4837*x[3]*x[12]*x[13]+0.416*x[3]*x[13]*x[14]+0.7257*x[3]*x[13]*x[15]-0.3313*x[3]*x[13]*x[16]+0.083*x[3]*x[14]*x[15]+0.42*x[3]*x[14]*x[19]+0.9149*x[3]*x[15]*x[19]+0.4181*x[3]*x[16]*x[17]-0.331*x[3]*x[16]*x[18]-0.6521*x[4]*x[5]*x[11]+0.0896*x[4]*x[6]*x[7]-0.9575*x[4]*x[6]*x[13]-0.6929*x[4]*x[7]*x[8]-0.7118*x[4]*x[7]*x[12]+0.5369*x[4]*x[8]*x[13]+0.0995*x[4]*x[8]*x[14]-0.109*x[4]*x[8]*x[18]-0.7125*x[4]*x[9]*x[14]+0.5119*x[4]*x[9]*x[17]-0.0852*x[4]*x[9]*x[18]-0.244*x[4]*x[10]*x[11]-0.674*x[4]*x[10]*x[16]-0.4397*x[4]*x[11]*x[15]-0.4685*x[4]*x[11]*x[16]-0.3329*x[4]*x[12]*x[15]+0.9573*x[4]*x[13]*x[14]-0.3214*x[4]*x[14]*x[16]-0.9943*x[4]*x[14]*x[20]-0.7626*x[4]*x[15]*x[17]-0.9139*x[4]*x[16]*x[18]+0.8739*x[4]*x[18]*x[19]-0.8262*x[4]*x[19]*x[20]+0.9586*x[5]*x[6]*x[9]+0.7971*x[5]*x[6]*x[14]+0.6795*x[5]*x[6]*x[17]-0.1419*x[5]*x[7]*x[14]+0.0029*x[5]*x[7]*x[16]-0.1808*x[5]*x[8]*x[14]-0.8712*x[5]*x[8]*x[16]+0.2252*x[5]*x[9]*x[14]+0.9317*x[5]*x[9]*x[17]+0.9753*x[5]*x[10]*x[13]+0.6454*x[5]*x[11]*x[13]-0.602*x[5]*x[11]*x[15]-0.3714*x[5]*x[11]*x[17]-0.5978*x[5]*x[11]*x[19]+0.6799*x[5]*x[12]*x[20]-0.6272*x[5]*x[14]*x[18]+0.0723*x[5]*x[14]*x[19]+0.4699*x[5]*x[16]*x[18]-0.904*x[6]*x[7]*x[9]+0.9832*x[6]*x[7]*x[12]+0.1226*x[6]*x[7]*x[15]+0.4314*x[6]*x[8]*x[13]+0.3242*x[6]*x[8]*x[20]-0.2095*x[6]*x[9]*x[10]+0.9132*x[6]*x[9]*x[16]+0.4716*x[6]*x[9]*x[19]-0.5289*x[6]*x[10]*x[13]+0.4202*x[6]*x[10]*x[17]+0.108*x[6]*x[11]*x[14]+0.8057*x[6]*x[11]*x[15]+0.5959*x[6]*x[13]*x[14]+0.4916*x[6]*x[13]*x[17]+0.8754*x[6]*x[14]*x[15]-0.0061*x[6]*x[16]*x[19]+0.1395*x[7]*x[8]*x[15]-0.5863*x[7]*x[9]*x[17]+0.0116*x[7]*x[11]*x[14]+0.3393*x[7]*x[11]*x[18]-0.6835*x[7]*x[12]*x[15]+0.6525*x[7]*x[12]*x[16]-0.6505*x[7]*x[13]*x[19]-0.415*x[7]*x[13]*x[20]+0.2374*x[7]*x[14]*x[15]+0.6866*x[7]*x[15]*x[18]+0.0629*x[7]*x[18]*x[19]-0.3219*x[7]*x[18]*x[20]+0.1058*x[8]*x[9]*x[10]-0.0574*x[8]*x[9]*x[15]+0.7539*x[8]*x[11]*x[20]-0.0621*x[8]*x[13]*x[14]-0.3874*x[8]*x[13]*x[15]+0.0648*x[8]*x[13]*x[20]+0.1041*x[8]*x[15]*x[17]+0.0874*x[8]*x[15]*x[18]-0.1465*x[8]*x[15]*x[19]-0.3832*x[8]*x[17]*x[19]-0.3137*x[9]*x[12]*x[13]+0.9994*x[9]*x[12]*x[16]-0.6558*x[9]*x[13]*x[14]+0.2752*x[9]*x[13]*x[17]+0.1895*x[9]*x[14]*x[15]+0.5617*x[9]*x[14]*x[19]-0.0876*x[9]*x[16]*x[19]-0.5201*x[9]*x[16]*x[20]-0.5903*x[10]*x[11]*x[16]-0.34*x[10]*x[12]*x[14]-0.2157*x[10]*x[14]*x[16]+0.269*x[10]*x[15]*x[19]-0.5614*x[10]*x[16]*x[20]+0.758*x[11]*x[13]*x[16]+0.6535*x[11]*x[14]*x[15]+0.331*x[11]*x[15]*x[17]+0.2226*x[11]*x[16]*x[17]+0.7512*x[12]*x[14]*x[15]-0.1168*x[12]*x[14]*x[17]+0.7708*x[12]*x[15]*x[16]-0.2652*x[12]*x[15]*x[19]-0.5956*x[12]*x[18]*x[19]+0.7586*x[13]*x[14]*x[15]+0.5074*x[13]*x[14]*x[18]+0.6614*x[13]*x[15]*x[18]+0.2199*x[13]*x[17]*x[19]-0.5504*x[13]*x[19]*x[20]+0.4579*x[14]*x[15]*x[16]-0.1951*x[14]*x[15]*x[18]+0.6276*x[14]*x[15]*x[19]-0.561*x[14]*x[16]*x[18]-0.4451*x[14]*x[17]*x[19]-0.7712*x[14]*x[18]*x[19]-0.8687*x[15]*x[16]*x[20]-0.8135*x[15]*x[19]*x[20]-0.8504*x[1]+0.6624*x[2])+obj == 0.0)
@NLconstraint(m, e2, 0.1664*x[1]*x[3]-0.6457*x[2]*x[4]-0.895*x[2]*x[5]-0.4612*x[2]*x[6]-0.1352*x[2]*x[12]+0.8219*x[3]*x[12]-0.1218*x[4]*x[10]-0.79*x[4]*x[19]-0.1588*x[5]*x[19]-0.8448*x[6]*x[10]+0.0728*x[6]*x[14]-0.429*x[6]*x[15]+0.6694*x[7]*x[8]+0.1814*x[7]*x[15]-0.5257*x[7]*x[16]+0.1227*x[8]*x[15]+0.1794*x[9]*x[11]+0.0185*x[9]*x[12]-0.3651*x[9]*x[17]+0.8211*x[10]*x[14]+0.865*x[10]*x[15]+0.8049*x[10]*x[18]-0.5969*x[11]*x[18]-0.322*x[11]*x[19]-0.831*x[12]*x[17]-0.3714*x[14]*x[19]-0.7053*x[16]*x[19]-0.8906*x[17]*x[19]+0.3122*x[1]+0.9116*x[2]-0.7073*x[3]+0.3956*x[4]+0.6408*x[5]+0.906*x[6]+0.4384*x[7]-0.0051*x[8]+0.689*x[9]+0.8015*x[10]-0.1671*x[11]+0.1501*x[12]-0.4673*x[14]-0.2172*x[15]+0.5448*x[16]+0.5743*x[17]-0.2467*x[18]+0.8448*x[19]+(-0.15*x[1]*x[2]*x[10])-0.0228*x[1]*x[2]*x[19]+0.1948*x[1]*x[3]*x[6]+0.0738*x[1]*x[4]*x[5]-0.3171*x[1]*x[4]*x[11]-0.0868*x[1]*x[4]*x[18]+0.1976*x[1]*x[5]*x[18]-0.1588*x[1]*x[7]*x[12]+0.8177*x[1]*x[7]*x[18]+0.0611*x[1]*x[8]*x[15]+0.6505*x[1]*x[12]*x[14]+0.2604*x[2]*x[3]*x[8]+0.2095*x[2]*x[3]*x[9]-0.672*x[2]*x[3]*x[10]+0.6978*x[2]*x[3]*x[14]-0.0832*x[2]*x[4]*x[5]-0.2179*x[2]*x[4]*x[6]-0.7753*x[2]*x[4]*x[7]+0.3347*x[2]*x[4]*x[19]+0.9315*x[2]*x[5]*x[10]+0.503*x[2]*x[5]*x[12]+0.2835*x[2]*x[6]*x[9]-0.0702*x[2]*x[7]*x[12]+0.3848*x[2]*x[7]*x[15]+0.4389*x[2]*x[7]*x[16]-0.9411*x[2]*x[7]*x[17]-0.9694*x[2]*x[7]*x[20]+0.0055*x[2]*x[8]*x[17]-0.1534*x[2]*x[9]*x[11]-0.0148*x[2]*x[10]*x[12]+0.2437*x[2]*x[10]*x[16]+0.169*x[2]*x[10]*x[20]+0.4921*x[2]*x[11]*x[20]+0.5954*x[2]*x[12]*x[16]+0.7634*x[2]*x[14]*x[18]-0.6518*x[2]*x[15]*x[17]-0.5796*x[2]*x[15]*x[19]-0.9513*x[2]*x[15]*x[20]-0.8873*x[2]*x[16]*x[17]-0.2421*x[3]*x[4]*x[5]+0.2333*x[3]*x[4]*x[6]+0.1818*x[3]*x[4]*x[8]-0.0513*x[3]*x[4]*x[11]+0.497*x[3]*x[4]*x[17]-0.2916*x[3]*x[5]*x[10]+0.5209*x[3]*x[5]*x[15]-0.3189*x[3]*x[5]*x[16]-0.9637*x[3]*x[6]*x[16]+0.1383*x[3]*x[6]*x[18]-0.4614*x[3]*x[7]*x[10]-0.9741*x[3]*x[7]*x[14]+0.7363*x[3]*x[7]*x[15]+0.2716*x[3]*x[7]*x[20]+0.9703*x[3]*x[8]*x[9]-0.1383*x[3]*x[8]*x[13]+0.4808*x[3]*x[8]*x[14]-0.6625*x[3]*x[8]*x[16]+0.4163*x[3]*x[8]*x[19]+0.1529*x[3]*x[9]*x[10]+0.4518*x[3]*x[9]*x[17]-0.589*x[3]*x[9]*x[18]-0.9422*x[3]*x[10]*x[13]+0.7822*x[3]*x[10]*x[17]+0.8089*x[3]*x[11]*x[14]-0.2402*x[3]*x[11]*x[19]+0.4813*x[3]*x[12]*x[15]+0.0463*x[3]*x[12]*x[17]+0.8903*x[3]*x[13]*x[17]-0.3059*x[3]*x[16]*x[19]+0.8573*x[4]*x[5]*x[12]-0.1433*x[4]*x[5]*x[14]-0.1261*x[4]*x[5]*x[17]-0.3471*x[4]*x[6]*x[9]-0.9975*x[4]*x[7]*x[10]+0.3536*x[4]*x[7]*x[13]+0.0801*x[4]*x[8]*x[12]+0.9897*x[4]*x[8]*x[13]+0.5054*x[4]*x[8]*x[15]+0.5555*x[4]*x[9]*x[12]+0.4837*x[4]*x[9]*x[20]+0.3176*x[4]*x[10]*x[18]-0.7376*x[4]*x[11]*x[18]+0.8161*x[4]*x[12]*x[17]+0.4292*x[4]*x[12]*x[18]+0.1448*x[4]*x[14]*x[15]+0.9675*x[4]*x[15]*x[16]-0.709*x[4]*x[15]*x[17]+0.9875*x[4]*x[18]*x[19]+0.191*x[5]*x[6]*x[9]-0.3159*x[5]*x[6]*x[12]+0.8517*x[5]*x[7]*x[14]-0.8797*x[5]*x[8]*x[10]-0.799*x[5]*x[8]*x[12]-0.8113*x[5]*x[8]*x[18]+0.0573*x[5]*x[9]*x[12]+0.0755*x[5]*x[10]*x[13]+0.9873*x[5]*x[10]*x[19]+0.3569*x[5]*x[11]*x[15]-0.2385*x[5]*x[12]*x[18]-0.0275*x[5]*x[13]*x[14]-0.0285*x[5]*x[13]*x[16]+0.3356*x[5]*x[16]*x[19]+0.7684*x[5]*x[16]*x[20]-0.9741*x[6]*x[7]*x[20]+0.6011*x[6]*x[8]*x[13]+0.3103*x[6]*x[8]*x[14]+0.7725*x[6]*x[9]*x[10]-0.916*x[6]*x[9]*x[15]-0.8487*x[6]*x[11]*x[18]+0.8038*x[6]*x[12]*x[13]+0.3966*x[6]*x[15]*x[18]-0.6765*x[6]*x[16]*x[17]-0.6288*x[6]*x[17]*x[18]+0.7865*x[7]*x[8]*x[11]-0.863*x[7]*x[8]*x[17]+0.8998*x[7]*x[9]*x[10]-0.0586*x[7]*x[10]*x[15]-0.871*x[7]*x[10]*x[20]+0.13*x[7]*x[11]*x[12]+0.2762*x[7]*x[11]*x[15]+0.5633*x[7]*x[11]*x[18]-0.776*x[7]*x[11]*x[19]+0.8352*x[7]*x[12]*x[14]-0.3819*x[7]*x[13]*x[17]-0.2066*x[7]*x[13]*x[18]+0.4446*x[7]*x[15]*x[18]+0.8706*x[7]*x[19]*x[20]+0.4135*x[8]*x[9]*x[14]-0.5897*x[8]*x[10]*x[19]+0.9283*x[8]*x[10]*x[20]-0.0124*x[8]*x[11]*x[14]-0.165*x[8]*x[12]*x[16]+0.6815*x[8]*x[14]*x[15]-0.1747*x[8]*x[14]*x[18]-0.4061*x[8]*x[15]*x[17]+0.6011*x[8]*x[17]*x[18]+0.3515*x[8]*x[18]*x[20]-0.9505*x[9]*x[10]*x[14]+0.9976*x[9]*x[12]*x[15]+0.0402*x[9]*x[12]*x[16]+0.2453*x[9]*x[12]*x[19]-0.5689*x[9]*x[13]*x[14]+0.9868*x[9]*x[13]*x[16]+0.5946*x[9]*x[13]*x[19]+0.4154*x[9]*x[13]*x[20]-0.507*x[9]*x[14]*x[15]+0.5006*x[9]*x[15]*x[18]-0.9519*x[9]*x[17]*x[18]+0.0082*x[10]*x[11]*x[17]+0.3537*x[10]*x[13]*x[15]-0.0677*x[10]*x[15]*x[17]-0.8293*x[10]*x[16]*x[20]+0.4949*x[11]*x[13]*x[16]-0.4146*x[11]*x[13]*x[18]+0.1473*x[11]*x[14]*x[15]-0.6033*x[11]*x[14]*x[16]-0.6047*x[11]*x[14]*x[19]+0.4072*x[11]*x[15]*x[17]-0.4103*x[11]*x[15]*x[19]-0.8881*x[12]*x[13]*x[17]-0.2226*x[12]*x[14]*x[15]-0.3099*x[12]*x[15]*x[20]+0.0351*x[12]*x[16]*x[19]-0.3254*x[12]*x[18]*x[19]+0.3681*x[13]*x[15]*x[18]-0.5344*x[13]*x[15]*x[19]-0.4061*x[13]*x[15]*x[20]-0.4561*x[14]*x[17]*x[18]+0.9356*x[15]*x[18]*x[19]+0.382*x[15]*x[19]*x[20]+0.3681*x[18]*x[19]*x[20]-0.6129*x[13]-0.784*x[20] <= 35.124)
@NLconstraint(m, e3, (-0.2244*x[1]*x[6])-0.6942*x[2]*x[5]+0.4041*x[2]*x[11]+0.761*x[2]*x[12]+0.7216*x[2]*x[17]+0.3423*x[2]*x[19]-0.2722*x[3]*x[8]+0.4641*x[3]*x[15]+0.2956*x[4]*x[9]-0.9433*x[4]*x[13]+0.7189*x[4]*x[19]-0.2725*x[5]*x[18]-0.5567*x[6]*x[11]+0.27*x[7]*x[17]+0.5581*x[8]*x[9]-0.3238*x[8]*x[19]-0.6034*x[9]*x[14]-0.6747*x[9]*x[20]-0.6102*x[11]*x[12]-0.5872*x[11]*x[16]-0.87*x[11]*x[18]-0.2227*x[12]*x[15]-0.9423*x[12]*x[20]+0.519*x[13]*x[18]-0.1619*x[14]*x[17]+0.9238*x[15]*x[19]+0.3368*x[16]*x[17]+0.7638*x[1]+0.0518*x[2]-0.7951*x[3]-0.0508*x[4]-0.2861*x[5]+0.0163*x[6]+0.3989*x[7]-0.3631*x[8]-0.1875*x[9]+0.5373*x[11]+0.7748*x[12]+0.0892*x[13]+0.093*x[14]-0.4689*x[15]+0.4298*x[16]-0.4441*x[17]-0.9731*x[18]-0.0911*x[19]-0.8933*x[20]+0.0856*x[1]*x[3]*x[19]-0.2154*x[1]*x[3]*x[14]-0.0055*x[1]*x[4]*x[8]+0.1984*x[1]*x[4]*x[16]+0.9925*x[1]*x[6]*x[18]-0.7787*x[1]*x[7]*x[14]+0.0294*x[1]*x[9]*x[10]-0.0483*x[1]*x[9]*x[13]-0.0941*x[1]*x[10]*x[14]-0.6234*x[1]*x[15]*x[18]-0.4268*x[1]*x[17]*x[19]+0.6336*x[2]*x[3]*x[9]+0.5092*x[2]*x[3]*x[10]+0.3065*x[2]*x[3]*x[12]+0.0077*x[2]*x[3]*x[13]+0.3068*x[2]*x[3]*x[16]+0.8536*x[2]*x[3]*x[17]-0.886*x[2]*x[3]*x[19]-0.6338*x[2]*x[4]*x[5]-0.3243*x[2]*x[4]*x[13]+0.2624*x[2]*x[6]*x[16]+0.0457*x[2]*x[7]*x[10]+0.5201*x[2]*x[7]*x[11]+0.54*x[2]*x[7]*x[15]-0.9557*x[2]*x[8]*x[17]+0.5189*x[2]*x[9]*x[10]-0.4492*x[2]*x[9]*x[11]-0.9097*x[2]*x[9]*x[13]+0.3339*x[2]*x[9]*x[17]+0.9707*x[2]*x[9]*x[18]-0.8299*x[2]*x[10]*x[12]+0.4136*x[2]*x[10]*x[15]-0.7454*x[2]*x[12]*x[14]-0.4814*x[2]*x[12]*x[15]-0.6117*x[2]*x[13]*x[14]-0.8024*x[2]*x[13]*x[17]-0.1614*x[2]*x[13]*x[18]-0.7231*x[2]*x[14]*x[19]+0.1714*x[2]*x[16]*x[19]-0.6065*x[3]*x[4]*x[8]-0.6996*x[3]*x[4]*x[11]+0.2443*x[3]*x[4]*x[14]+0.1935*x[3]*x[4]*x[18]+0.901*x[3]*x[4]*x[19]-0.8556*x[3]*x[5]*x[8]+0.0926*x[3]*x[5]*x[9]+0.5007*x[3]*x[5]*x[16]-0.1237*x[3]*x[6]*x[7]-0.7993*x[3]*x[6]*x[17]+0.8449*x[3]*x[7]*x[9]+0.825*x[3]*x[7]*x[10]-0.874*x[3]*x[7]*x[14]-0.7523*x[3]*x[7]*x[17]+0.2953*x[3]*x[7]*x[18]-0.9854*x[3]*x[7]*x[19]+0.2995*x[3]*x[8]*x[19]+0.342*x[3]*x[10]*x[13]+0.3108*x[3]*x[10]*x[17]+0.9452*x[3]*x[10]*x[18]-0.0071*x[3]*x[11]*x[12]+0.8496*x[3]*x[12]*x[16]-0.5391*x[3]*x[12]*x[17]-0.2481*x[3]*x[13]*x[16]-0.3577*x[3]*x[15]*x[16]+0.3945*x[3]*x[15]*x[18]-0.1996*x[3]*x[15]*x[19]-0.333*x[4]*x[5]*x[18]-0.5562*x[4]*x[6]*x[14]-0.5755*x[4]*x[8]*x[15]-0.6494*x[4]*x[9]*x[13]-0.5593*x[4]*x[9]*x[18]+0.9204*x[4]*x[10]*x[13]-0.3842*x[4]*x[12]*x[16]-0.2396*x[4]*x[13]*x[16]-0.8312*x[4]*x[13]*x[19]+0.2469*x[4]*x[14]*x[15]+0.7864*x[4]*x[14]*x[19]+0.0119*x[4]*x[15]*x[16]+0.6639*x[4]*x[16]*x[17]-0.3585*x[4]*x[16]*x[19]-0.0259*x[4]*x[16]*x[20]-0.2604*x[4]*x[17]*x[20]-0.1296*x[5]*x[6]*x[12]+0.774*x[5]*x[6]*x[14]-0.4795*x[5]*x[7]*x[12]-0.3756*x[5]*x[7]*x[13]-0.2952*x[5]*x[7]*x[14]-0.0693*x[5]*x[7]*x[15]-0.6678*x[5]*x[9]*x[11]+0.8643*x[5]*x[9]*x[16]+0.0649*x[5]*x[11]*x[12]+0.3748*x[5]*x[11]*x[13]+0.4677*x[5]*x[12]*x[13]+0.9322*x[5]*x[12]*x[15]+0.2583*x[5]*x[12]*x[17]+0.1527*x[5]*x[12]*x[18]+0.4188*x[5]*x[15]*x[16]-0.4543*x[6]*x[7]*x[13]+0.6319*x[6]*x[7]*x[18]+0.4467*x[6]*x[8]*x[16]+0.6841*x[6]*x[8]*x[20]+0.1311*x[6]*x[9]*x[11]-0.3684*x[6]*x[9]*x[13]-0.1639*x[6]*x[10]*x[14]-0.8466*x[6]*x[11]*x[13]-0.6424*x[6]*x[13]*x[16]-0.4267*x[6]*x[14]*x[17]+0.5984*x[6]*x[14]*x[18]+0.7614*x[7]*x[8]*x[10]-0.1659*x[7]*x[8]*x[18]+0.0795*x[7]*x[9]*x[11]-0.8681*x[7]*x[10]*x[14]+0.2429*x[7]*x[10]*x[16]-0.9485*x[7]*x[11]*x[13]-0.6424*x[7]*x[11]*x[17]-0.9671*x[7]*x[11]*x[18]-0.4274*x[7]*x[12]*x[13]+0.4361*x[7]*x[12]*x[14]-0.2114*x[7]*x[13]*x[18]+0.5042*x[7]*x[13]*x[19]+0.9553*x[7]*x[15]*x[17]-0.7604*x[7]*x[18]*x[19]+0.076*x[8]*x[9]*x[18]+0.3488*x[8]*x[10]*x[13]-0.6013*x[8]*x[10]*x[18]+0.6789*x[8]*x[11]*x[12]-0.639*x[8]*x[11]*x[13]+0.9351*x[8]*x[11]*x[15]+0.5281*x[8]*x[12]*x[19]+0.4189*x[8]*x[13]*x[14]-0.1385*x[8]*x[13]*x[18]+0.2894*x[8]*x[14]*x[17]-0.7405*x[8]*x[14]*x[19]-0.9333*x[8]*x[15]*x[17]+0.1122*x[8]*x[17]*x[18]+0.0886*x[8]*x[17]*x[19]-0.3946*x[9]*x[11]*x[16]+0.4864*x[9]*x[12]*x[18]+0.6818*x[9]*x[14]*x[15]+0.8982*x[9]*x[14]*x[18]+0.2886*x[9]*x[16]*x[17]-0.0444*x[9]*x[16]*x[18]+0.992*x[10]*x[11]*x[16]-0.2744*x[10]*x[11]*x[20]-0.7975*x[10]*x[14]*x[16]+0.5978*x[10]*x[15]*x[17]+0.9879*x[10]*x[15]*x[20]-0.0473*x[10]*x[16]*x[18]+0.6635*x[10]*x[16]*x[20]+0.6629*x[11]*x[12]*x[18]-0.2826*x[11]*x[14]*x[17]+0.9443*x[11]*x[15]*x[16]+0.8381*x[11]*x[15]*x[18]-0.0236*x[11]*x[15]*x[19]-0.7641*x[11]*x[17]*x[18]+0.7113*x[12]*x[13]*x[14]-0.1952*x[12]*x[13]*x[15]-0.0794*x[12]*x[14]*x[15]-0.4876*x[12]*x[14]*x[18]+0.7152*x[12]*x[15]*x[20]-0.4082*x[12]*x[16]*x[17]+0.0191*x[12]*x[17]*x[18]-0.8064*x[13]*x[14]*x[15]-0.5217*x[13]*x[14]*x[17]-0.0792*x[14]*x[15]*x[18]+0.2792*x[14]*x[16]*x[17]+0.7828*x[14]*x[16]*x[18]-0.6141*x[14]*x[16]*x[19]-0.4292*x[14]*x[16]*x[20]+0.3835*x[14]*x[17]*x[18]-0.3458*x[14]*x[17]*x[19]-0.3247*x[17]*x[18]*x[19]+0.6995*x[10] <= 32.236)
@NLconstraint(m, e4, 0.7245*x[1]*x[15]-0.6703*x[1]*x[18]-0.4892*x[2]*x[6]+0.9054*x[3]*x[11]-0.3755*x[3]*x[12]-0.8125*x[3]*x[15]+0.3948*x[3]*x[19]+0.6824*x[3]*x[20]-0.1976*x[4]*x[7]-0.4938*x[4]*x[11]-0.2194*x[4]*x[14]-0.815*x[5]*x[6]-0.9398*x[5]*x[7]+0.6188*x[5]*x[8]+0.0946*x[5]*x[14]+0.8432*x[5]*x[16]+0.4506*x[6]*x[14]+0.5307*x[7]*x[10]+0.6701*x[8]*x[9]-0.0515*x[9]*x[15]-0.6154*x[9]*x[18]+0.0318*x[9]*x[19]-0.92*x[10]*x[14]+0.8712*x[10]*x[16]+0.022*x[11]*x[19]+0.7705*x[13]*x[17]+0.6871*x[14]*x[18]-0.4571*x[15]*x[16]+0.4415*x[15]*x[17]+0.7158*x[16]*x[17]+0.1474*x[16]*x[18]+0.3781*x[16]*x[19]+0.0107*x[1]-0.3292*x[2]-0.1952*x[3]+0.0335*x[4]-0.8434*x[5]-0.2529*x[6]+0.9093*x[7]+0.0643*x[8]+0.2242*x[9]+0.6056*x[10]-0.3409*x[11]+0.1815*x[12]+0.6494*x[13]-0.7341*x[14]+0.8969*x[15]-0.098*x[16]-0.7681*x[17]+0.4581*x[18]-0.7326*x[19]-0.3787*x[20]+(-0.2048*x[1]*x[2]*x[3])-0.6054*x[1]*x[2]*x[14]-0.0849*x[1]*x[2]*x[19]-0.7744*x[1]*x[3]*x[4]+0.8332*x[1]*x[4]*x[6]+0.422*x[1]*x[4]*x[20]+0.744*x[1]*x[5]*x[10]-0.1918*x[1]*x[5]*x[12]+0.4162*x[1]*x[5]*x[19]-0.3681*x[1]*x[6]*x[14]+0.8508*x[1]*x[7]*x[17]+0.9344*x[1]*x[11]*x[16]+0.6806*x[2]*x[3]*x[7]+0.5528*x[2]*x[3]*x[9]-0.7938*x[2]*x[3]*x[17]+0.703*x[2]*x[3]*x[18]+0.289*x[2]*x[4]*x[11]-0.7567*x[2]*x[5]*x[6]+0.7655*x[2]*x[5]*x[14]-0.8556*x[2]*x[7]*x[12]-0.4754*x[2]*x[8]*x[12]-0.674*x[2]*x[8]*x[14]-0.1178*x[2]*x[8]*x[19]-0.0494*x[2]*x[10]*x[14]-0.0897*x[2]*x[11]*x[12]+0.1124*x[2]*x[11]*x[14]-0.528*x[2]*x[13]*x[19]-0.3052*x[2]*x[15]*x[17]-0.0242*x[2]*x[15]*x[18]-0.056*x[2]*x[15]*x[19]+0.5405*x[2]*x[17]*x[18]-0.5763*x[2]*x[17]*x[19]+0.9966*x[3]*x[4]*x[5]+0.3236*x[3]*x[4]*x[10]+0.3019*x[3]*x[4]*x[14]-0.4406*x[3]*x[4]*x[17]-0.5445*x[3]*x[5]*x[6]-0.5048*x[3]*x[5]*x[9]+0.1693*x[3]*x[5]*x[12]-0.8182*x[3]*x[5]*x[14]+0.834*x[3]*x[5]*x[18]-0.4245*x[3]*x[5]*x[19]+0.8894*x[3]*x[6]*x[20]-0.2418*x[3]*x[7]*x[8]-0.7046*x[3]*x[7]*x[18]-0.3223*x[3]*x[9]*x[11]-0.5165*x[3]*x[9]*x[14]-0.9464*x[3]*x[9]*x[18]-0.7162*x[3]*x[11]*x[13]+0.4038*x[3]*x[12]*x[17]-0.3003*x[3]*x[12]*x[18]-0.9806*x[3]*x[12]*x[20]+0.8112*x[3]*x[13]*x[16]-0.4419*x[3]*x[13]*x[17]-0.7632*x[3]*x[13]*x[18]+0.1937*x[3]*x[14]*x[16]+0.2669*x[3]*x[14]*x[17]+0.7318*x[3]*x[15]*x[16]+0.1866*x[4]*x[5]*x[14]+0.5227*x[4]*x[6]*x[8]+0.15*x[4]*x[6]*x[11]-0.1606*x[4]*x[6]*x[15]+0.1565*x[4]*x[6]*x[17]-0.117*x[4]*x[6]*x[18]+0.6963*x[4]*x[7]*x[13]+0.8979*x[4]*x[8]*x[11]-0.5713*x[4]*x[8]*x[15]-0.7873*x[4]*x[8]*x[19]+0.9593*x[4]*x[9]*x[13]+0.7626*x[4]*x[10]*x[14]-0.8217*x[4]*x[10]*x[18]+0.9716*x[4]*x[11]*x[17]-0.2495*x[4]*x[11]*x[20]+0.2517*x[4]*x[12]*x[16]-0.9677*x[4]*x[13]*x[15]-0.7184*x[4]*x[13]*x[17]+0.2058*x[4]*x[14]*x[17]-0.3342*x[4]*x[16]*x[17]-0.816*x[4]*x[18]*x[19]+0.8152*x[5]*x[6]*x[14]-0.8522*x[5]*x[6]*x[17]+0.9809*x[5]*x[6]*x[18]+0.008*x[5]*x[8]*x[9]+0.6829*x[5]*x[8]*x[14]+0.9193*x[5]*x[8]*x[19]-0.0113*x[5]*x[9]*x[11]-0.3156*x[5]*x[10]*x[16]-0.9741*x[5]*x[11]*x[16]+0.5991*x[5]*x[13]*x[15]-0.3337*x[5]*x[13]*x[19]-0.9126*x[5]*x[14]*x[19]-0.5666*x[5]*x[15]*x[19]+0.0963*x[5]*x[16]*x[18]-0.5678*x[5]*x[16]*x[19]-0.3061*x[5]*x[18]*x[19]-0.5059*x[5]*x[19]*x[20]-0.836*x[6]*x[7]*x[11]-0.2484*x[6]*x[7]*x[14]-0.4223*x[6]*x[7]*x[17]-0.6548*x[6]*x[8]*x[15]+0.5071*x[6]*x[9]*x[14]-0.5974*x[6]*x[9]*x[17]+0.9802*x[6]*x[10]*x[11]+0.3375*x[6]*x[10]*x[17]+0.7931*x[6]*x[10]*x[18]-0.9679*x[6]*x[11]*x[14]-0.1694*x[6]*x[11]*x[16]+0.4111*x[6]*x[11]*x[19]+0.9858*x[6]*x[11]*x[20]-0.8509*x[6]*x[12]*x[17]-0.5187*x[6]*x[12]*x[18]-0.9413*x[6]*x[14]*x[17]-0.723*x[7]*x[8]*x[11]-0.1564*x[7]*x[8]*x[14]+0.0423*x[7]*x[8]*x[19]-0.6331*x[7]*x[10]*x[13]-0.7104*x[7]*x[11]*x[13]+0.5367*x[7]*x[11]*x[17]-0.1539*x[7]*x[11]*x[19]+0.6279*x[7]*x[12]*x[14]-0.3756*x[7]*x[12]*x[18]-0.3179*x[7]*x[13]*x[18]-0.919*x[7]*x[14]*x[18]-0.8971*x[7]*x[16]*x[19]+0.4524*x[7]*x[17]*x[19]+0.8052*x[8]*x[9]*x[17]-0.9865*x[8]*x[10]*x[14]-0.9991*x[8]*x[10]*x[17]-0.6003*x[8]*x[10]*x[20]+0.5697*x[8]*x[11]*x[12]+0.2*x[8]*x[12]*x[13]-0.4367*x[8]*x[13]*x[18]-0.9793*x[8]*x[13]*x[19]-0.6106*x[8]*x[14]*x[20]+0.4527*x[9]*x[10]*x[12]-0.5326*x[9]*x[10]*x[13]+0.3646*x[9]*x[10]*x[15]-0.5199*x[9]*x[11]*x[12]-0.6545*x[9]*x[13]*x[18]-0.7709*x[9]*x[13]*x[19]+0.9283*x[9]*x[14]*x[17]-0.0403*x[9]*x[16]*x[20]-0.7156*x[9]*x[17]*x[18]-0.2321*x[9]*x[17]*x[19]-0.3498*x[10]*x[11]*x[20]-0.2906*x[10]*x[12]*x[17]+0.9891*x[10]*x[12]*x[19]-0.0005*x[10]*x[16]*x[17]+0.6555*x[10]*x[17]*x[18]-0.3018*x[11]*x[12]*x[13]+0.6049*x[11]*x[12]*x[18]-0.1751*x[11]*x[13]*x[17]+0.0691*x[11]*x[15]*x[19]-0.1219*x[11]*x[17]*x[19]-0.5469*x[11]*x[18]*x[19]+0.0687*x[12]*x[16]*x[18]-0.3306*x[12]*x[19]*x[20]-0.6906*x[13]*x[14]*x[19]+0.4613*x[13]*x[15]*x[16]-0.6408*x[13]*x[15]*x[19]-0.0142*x[13]*x[17]*x[19]+0.2925*x[14]*x[15]*x[18]+0.288*x[14]*x[17]*x[18]-0.9151*x[14]*x[19]*x[20]-0.3619*x[15]*x[18]*x[20]+0.0598*x[16]*x[18]*x[19]-0.8157*x[16]*x[18]*x[20] <= 89.514)
@NLconstraint(m, e5, 0.0573*x[1]*x[5]+0.4182*x[2]*x[4]-0.6715*x[2]*x[13]-0.5774*x[3]*x[20]-0.3747*x[4]*x[10]+0.9396*x[5]*x[10]-0.8841*x[6]*x[7]-0.1074*x[6]*x[15]+0.8817*x[7]*x[19]+0.5883*x[8]*x[12]-0.9406*x[8]*x[17]-0.3651*x[9]*x[18]-0.0905*x[10]*x[15]-0.019*x[10]*x[16]-0.2288*x[10]*x[17]+0.4112*x[11]*x[14]-0.2619*x[11]*x[17]+0.1883*x[13]*x[15]-0.0005*x[13]*x[17]-0.6767*x[14]*x[17]+0.4214*x[15]*x[16]+0.9086*x[1]+0.5866*x[2]-0.8777*x[3]+0.0181*x[4]+0.2463*x[5]+0.1697*x[6]-0.9148*x[7]+0.4976*x[8]-0.7257*x[9]-0.5447*x[10]-0.3333*x[11]+0.7602*x[12]-0.6432*x[13]+0.4335*x[14]+0.6657*x[15]-0.3522*x[16]-0.3207*x[17]-0.9375*x[18]-0.2883*x[19]-0.313*x[20]+(-0.6711*x[1]*x[2]*x[9])-0.9054*x[1]*x[2]*x[12]-0.8062*x[1]*x[2]*x[14]+0.3125*x[1]*x[3]*x[7]+0.7019*x[1]*x[3]*x[15]+0.9682*x[1]*x[3]*x[17]+0.3193*x[1]*x[4]*x[12]+0.8763*x[1]*x[4]*x[13]-0.42*x[1]*x[4]*x[19]+0.5184*x[1]*x[5]*x[9]-0.1921*x[1]*x[6]*x[14]-0.3446*x[1]*x[8]*x[13]+0.2846*x[1]*x[8]*x[18]+0.1679*x[1]*x[8]*x[20]-0.5631*x[1]*x[9]*x[14]-0.8938*x[1]*x[11]*x[16]-0.8723*x[1]*x[13]*x[14]+0.3441*x[1]*x[13]*x[19]-0.6119*x[1]*x[16]*x[18]-0.1023*x[1]*x[17]*x[19]+0.4592*x[2]*x[3]*x[12]+0.1163*x[2]*x[3]*x[18]-0.1366*x[2]*x[3]*x[19]-0.7171*x[2]*x[4]*x[5]-0.9268*x[2]*x[4]*x[13]-0.2583*x[2]*x[4]*x[15]+0.4184*x[2]*x[4]*x[18]-0.1461*x[2]*x[4]*x[19]-0.1253*x[2]*x[5]*x[15]-0.1613*x[2]*x[5]*x[17]-0.4655*x[2]*x[5]*x[18]-0.1144*x[2]*x[5]*x[20]-0.6234*x[2]*x[6]*x[9]-0.8978*x[2]*x[7]*x[8]-0.1537*x[2]*x[7]*x[10]-0.8234*x[2]*x[7]*x[13]+0.8788*x[2]*x[7]*x[19]+0.9483*x[2]*x[8]*x[11]-0.2311*x[2]*x[8]*x[13]-0.1764*x[2]*x[8]*x[18]-0.6635*x[2]*x[8]*x[19]-0.9674*x[2]*x[9]*x[15]+0.6766*x[2]*x[10]*x[15]+0.9844*x[2]*x[11]*x[17]-0.7421*x[2]*x[11]*x[20]+0.1117*x[2]*x[15]*x[19]+0.7955*x[2]*x[15]*x[20]-0.2058*x[2]*x[17]*x[20]+0.0744*x[3]*x[4]*x[16]-0.1378*x[3]*x[4]*x[19]-0.3397*x[3]*x[5]*x[6]-0.9126*x[3]*x[5]*x[7]+0.4983*x[3]*x[5]*x[10]+0.4341*x[3]*x[5]*x[16]+0.3325*x[3]*x[5]*x[19]-0.3402*x[3]*x[6]*x[13]-0.5239*x[3]*x[6]*x[14]-0.8889*x[3]*x[7]*x[14]+0.3766*x[3]*x[7]*x[17]+0.9909*x[3]*x[8]*x[9]-0.2559*x[3]*x[8]*x[14]+0.7918*x[3]*x[8]*x[16]+0.366*x[3]*x[8]*x[19]-0.7038*x[3]*x[9]*x[14]+0.3104*x[3]*x[10]*x[16]+0.0836*x[3]*x[10]*x[18]+0.9998*x[3]*x[11]*x[16]-0.0485*x[3]*x[12]*x[20]-0.8868*x[3]*x[13]*x[17]+0.9828*x[3]*x[14]*x[20]-0.7174*x[3]*x[15]*x[18]-0.2601*x[4]*x[5]*x[11]-0.5048*x[4]*x[5]*x[15]-0.7788*x[4]*x[5]*x[16]-0.8313*x[4]*x[6]*x[16]-0.6546*x[4]*x[6]*x[17]+0.1262*x[4]*x[6]*x[18]-0.0179*x[4]*x[7]*x[9]-0.6671*x[4]*x[7]*x[16]-0.7577*x[4]*x[7]*x[20]-0.1297*x[4]*x[8]*x[14]+0.2767*x[4]*x[8]*x[19]-0.0767*x[4]*x[9]*x[13]-0.1107*x[4]*x[10]*x[12]+0.7715*x[4]*x[10]*x[13]+0.2712*x[4]*x[11]*x[12]-0.6364*x[4]*x[11]*x[14]+0.0991*x[4]*x[11]*x[16]-0.26*x[4]*x[11]*x[17]+0.2697*x[4]*x[13]*x[14]-0.1592*x[4]*x[13]*x[16]-0.9853*x[4]*x[14]*x[15]+0.863*x[4]*x[14]*x[20]+0.9047*x[4]*x[15]*x[16]-0.6787*x[5]*x[7]*x[16]+0.0526*x[5]*x[8]*x[9]-0.969*x[5]*x[8]*x[14]-0.4372*x[5]*x[8]*x[16]+0.8329*x[5]*x[11]*x[12]+0.3643*x[5]*x[11]*x[15]+0.5194*x[5]*x[12]*x[13]+0.5158*x[5]*x[12]*x[15]+0.4657*x[5]*x[13]*x[14]+0.0279*x[5]*x[13]*x[16]-0.2001*x[5]*x[15]*x[18]+0.6808*x[6]*x[7]*x[9]+0.1618*x[6]*x[7]*x[13]+0.9853*x[6]*x[8]*x[9]-0.7863*x[6]*x[8]*x[17]-0.3264*x[6]*x[9]*x[13]+0.7738*x[6]*x[9]*x[18]-0.4067*x[6]*x[11]*x[12]-0.5544*x[6]*x[12]*x[13]-0.1331*x[6]*x[12]*x[15]+0.2023*x[6]*x[12]*x[16]-0.2165*x[6]*x[13]*x[19]+0.4763*x[6]*x[14]*x[16]+0.789*x[6]*x[16]*x[19]-0.7424*x[6]*x[18]*x[19]-0.4558*x[7]*x[8]*x[11]+0.9668*x[7]*x[8]*x[17]-0.8296*x[7]*x[9]*x[10]+0.8012*x[7]*x[10]*x[19]+0.6278*x[7]*x[10]*x[20]-0.6838*x[7]*x[11]*x[19]+0.4707*x[7]*x[12]*x[17]+0.5152*x[7]*x[13]*x[18]-0.1074*x[7]*x[13]*x[19]+0.7849*x[7]*x[14]*x[15]-0.4665*x[7]*x[17]*x[18]+0.4425*x[8]*x[9]*x[17]-0.7503*x[8]*x[10]*x[11]-0.4868*x[8]*x[10]*x[12]+0.9294*x[8]*x[10]*x[14]-0.2336*x[8]*x[11]*x[15]+0.5312*x[8]*x[11]*x[19]-0.9628*x[8]*x[12]*x[15]-0.188*x[8]*x[12]*x[20]-0.5194*x[8]*x[13]*x[17]+0.0393*x[8]*x[15]*x[16]+0.7966*x[8]*x[17]*x[19]+0.3246*x[9]*x[10]*x[14]-0.4354*x[9]*x[10]*x[20]-0.6012*x[9]*x[11]*x[12]+0.2168*x[9]*x[11]*x[14]-0.7814*x[9]*x[11]*x[19]+0.006*x[9]*x[12]*x[15]+0.6628*x[9]*x[12]*x[20]-0.107*x[9]*x[13]*x[17]-0.4443*x[9]*x[13]*x[19]+0.138*x[9]*x[14]*x[17]+0.7247*x[9]*x[14]*x[18]-0.3572*x[9]*x[16]*x[17]-0.0083*x[10]*x[11]*x[13]+0.9293*x[10]*x[11]*x[17]-0.2673*x[10]*x[11]*x[18]+0.095*x[10]*x[12]*x[13]+0.8518*x[10]*x[15]*x[16]+0.6601*x[10]*x[16]*x[17]-0.1216*x[11]*x[12]*x[17]-0.7834*x[11]*x[14]*x[16]-0.176*x[11]*x[14]*x[17]-0.4309*x[11]*x[14]*x[18]+0.8905*x[11]*x[14]*x[19]+0.988*x[11]*x[15]*x[16]+0.6144*x[11]*x[15]*x[18]-0.2362*x[11]*x[17]*x[20]-0.3305*x[11]*x[18]*x[19]-0.5352*x[11]*x[18]*x[20]+0.8318*x[12]*x[13]*x[14]+0.3263*x[12]*x[14]*x[17]+0.9647*x[12]*x[14]*x[19]-0.6953*x[12]*x[15]*x[17]-0.9104*x[12]*x[16]*x[17]-0.1959*x[12]*x[18]*x[19]+0.9849*x[13]*x[15]*x[16]+0.0134*x[14]*x[15]*x[19]+0.3848*x[17]*x[18]*x[19] <= 5.623)

m = m 		 # model get returned when including this script. 
