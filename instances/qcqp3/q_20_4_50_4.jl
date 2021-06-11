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
@NLconstraint(m, e1, -(1.8529*x[1]*x[5]-0.7621*x[1]*x[2]+1.2546*x[1]*x[9]+0.7034*x[1]*x[11]-0.0876*x[1]*x[13]+1.0017*x[1]*x[16]+1.8253*x[1]*x[18]+1.2865*x[1]*x[20]-0.6492*x[2]*x[2]+0.3028*x[2]*x[3]+1.162*x[2]*x[5]+1.9468*x[2]*x[6]-0.4293*x[2]*x[10]-0.2262*x[2]*x[11]-0.449*x[2]*x[13]+0.168*x[2]*x[18]-1.6732*x[2]*x[19]+0.6469*x[3]*x[3]-1.6309*x[3]*x[5]-0.4101*x[3]*x[8]-0.7354*x[3]*x[11]-0.4415*x[3]*x[12]+0.4118*x[3]*x[13]-1.152*x[3]*x[14]-0.5508*x[3]*x[19]-0.86*x[3]*x[20]+1.7823*x[4]*x[6]+1.9354*x[4]*x[8]-1.6759*x[4]*x[9]+0.0757*x[4]*x[11]+0.8396*x[4]*x[12]-0.08*x[4]*x[13]+0.2843*x[4]*x[16]+0.6312*x[4]*x[17]+1.4852*x[4]*x[20]+0.2846*x[5]*x[8]-0.3446*x[5]*x[11]+1.2538*x[5]*x[12]-1.8582*x[5]*x[15]+0.0436*x[5]*x[16]-0.6736*x[5]*x[17]-0.6463*x[6]*x[7]+0.9052*x[6]*x[8]+0.4387*x[6]*x[10]-0.0569*x[6]*x[11]-0.3769*x[6]*x[12]+0.7989*x[6]*x[13]+1.7703*x[6]*x[14]-0.0243*x[6]*x[15]+0.2361*x[6]*x[16]-0.2269*x[6]*x[17]-0.5079*x[6]*x[18]+1.4207*x[6]*x[19]+1.9026*x[7]*x[7]+0.7592*x[7]*x[12]+1.0119*x[7]*x[13]+1.5911*x[7]*x[14]-0.4036*x[7]*x[18]-1.9604*x[8]*x[10]+1.5273*x[8]*x[13]+0.9238*x[8]*x[14]-1.0734*x[8]*x[15]-1.2688*x[8]*x[16]-1.3178*x[8]*x[17]-1.8022*x[8]*x[18]+0.3076*x[8]*x[20]-0.6368*x[9]*x[13]-1.7899*x[9]*x[15]+0.4629*x[9]*x[16]+0.9652*x[10]*x[10]+0.6855*x[10]*x[11]-0.1387*x[10]*x[12]+0.8177*x[10]*x[13]+0.4674*x[10]*x[14]-1.242*x[10]*x[16]+1.1188*x[10]*x[17]-1.6908*x[10]*x[19]+1.1539*x[11]*x[13]+0.6375*x[11]*x[14]-1.1138*x[11]*x[15]-1.2983*x[11]*x[16]-0.7516*x[11]*x[17]-0.2564*x[11]*x[18]-0.1048*x[11]*x[19]-0.342*x[12]*x[13]+1.1817*x[12]*x[15]+0.6134*x[12]*x[16]+0.2241*x[12]*x[18]-0.112*x[12]*x[19]+1.6168*x[12]*x[20]+0.2481*x[13]*x[16]-1.5013*x[13]*x[17]-0.2776*x[14]*x[16]-1.2281*x[14]*x[17]+0.5486*x[15]*x[17]-0.7013*x[15]*x[18]-1.8314*x[15]*x[19]-1.9506*x[16]*x[17]-0.0556*x[16]*x[18]-0.4847*x[16]*x[19]+0.3428*x[17]*x[17]+0.114*x[17]*x[18]-1.1041*x[17]*x[19]-1.3636*x[18]*x[18]+0.0011*x[19]*x[19]+0.1355*x[1]-0.0199*x[2]+0.5916*x[3]+0.7127*x[4]-0.4791*x[5]-0.4204*x[6]-0.7198*x[7]-0.6757*x[8]-0.9703*x[9]+0.2443*x[10]-0.4939*x[11]-0.0778*x[12]-0.2829*x[13]-0.407*x[14]-0.2477*x[15]+0.4317*x[16]+0.052*x[17]-0.0273*x[18]+0.0506*x[19]-0.6998*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 0.7984*x[1]*x[7]+1.9359*x[1]*x[9]-0.0578*x[1]*x[11]+1.0018*x[1]*x[13]-0.2979*x[1]*x[17]+0.3074*x[1]*x[18]+0.1468*x[1]*x[19]+1.7625*x[2]*x[3]-0.5929*x[2]*x[5]-1.4876*x[2]*x[6]-0.2089*x[2]*x[7]+1.4717*x[2]*x[10]-1.693*x[2]*x[14]+0.2288*x[2]*x[15]+1.0316*x[2]*x[16]-0.2124*x[2]*x[17]+1.2815*x[2]*x[18]-1.0297*x[2]*x[20]-1.5565*x[3]*x[4]+0.3836*x[3]*x[5]-1.5614*x[3]*x[6]-0.518*x[3]*x[7]+1.9113*x[3]*x[8]+1.1632*x[3]*x[9]-0.2408*x[3]*x[10]-1.0996*x[3]*x[19]-0.4277*x[4]*x[5]-1.6748*x[4]*x[8]+1.4565*x[4]*x[9]+0.6847*x[4]*x[10]-0.2866*x[4]*x[11]+1.7686*x[4]*x[14]-1.8919*x[4]*x[17]-1.1734*x[4]*x[18]-1.7934*x[4]*x[19]+1.2322*x[5]*x[5]+0.1071*x[5]*x[6]+1.3722*x[5]*x[9]-0.4708*x[5]*x[10]-1.6331*x[5]*x[11]+0.7303*x[5]*x[12]-1.2915*x[5]*x[15]+1.3882*x[6]*x[8]+0.6886*x[6]*x[9]+0.6931*x[6]*x[12]+1.8083*x[6]*x[15]+1.1441*x[6]*x[16]-1.7682*x[6]*x[18]-1.2974*x[7]*x[7]+0.3741*x[7]*x[10]+1.9409*x[7]*x[11]-1.1959*x[7]*x[13]-0.0769*x[7]*x[14]-0.8177*x[7]*x[15]+1.8148*x[7]*x[16]+1.5264*x[7]*x[18]-1.4488*x[8]*x[9]-0.7913*x[8]*x[10]+1.3946*x[8]*x[11]-1.5301*x[8]*x[12]-1.4907*x[8]*x[13]+0.6429*x[8]*x[15]+0.4492*x[8]*x[17]-1.788*x[8]*x[20]+0.9877*x[9]*x[9]-0.9991*x[9]*x[10]+0.2524*x[9]*x[12]+0.7079*x[9]*x[14]+0.6109*x[9]*x[17]-0.0499*x[9]*x[20]-1.1131*x[10]*x[12]+1.173*x[10]*x[14]-1.2396*x[10]*x[15]+1.8876*x[10]*x[16]+0.7418*x[10]*x[17]+0.6301*x[10]*x[18]+1.5477*x[10]*x[20]-0.4515*x[11]*x[12]-0.1925*x[11]*x[13]+1.3665*x[11]*x[16]-0.3382*x[11]*x[17]+1.3335*x[11]*x[19]-1.177*x[11]*x[20]+1.431*x[12]*x[13]+0.142*x[12]*x[15]-0.0741*x[12]*x[16]+0.1569*x[12]*x[19]+0.8477*x[12]*x[20]-0.7406*x[13]*x[17]+0.8187*x[13]*x[18]+1.3539*x[13]*x[19]-1.3642*x[13]*x[20]-1.704*x[14]*x[14]-1.6537*x[14]*x[15]-1.1822*x[14]*x[16]-1.9919*x[14]*x[18]+0.407*x[15]*x[17]+0.9186*x[16]*x[18]-1.7553*x[17]*x[17]-1.4024*x[17]*x[18]+0.2142*x[17]*x[19]+1.0527*x[18]*x[19]-1.3717*x[18]*x[20]+0.5723*x[19]*x[19]-1.2102*x[19]*x[20]+0.7982*x[1]+0.3731*x[2]-0.0017*x[3]-0.5921*x[4]+0.4842*x[5]+0.5069*x[6]-0.1334*x[7]+0.808*x[8]+0.4226*x[9]+0.3305*x[10]+0.6461*x[11]+0.3067*x[12]+0.4142*x[13]-0.2218*x[14]-0.1675*x[15]+0.222*x[16]-0.6784*x[17]+0.8519*x[18]-0.0665*x[19]+0.275*x[20] <= 22.433)
@NLconstraint(m, e3, 1.4755*x[1]*x[3]-1.1833*x[1]*x[5]+0.7319*x[1]*x[6]-1.8546*x[1]*x[9]-1.9647*x[1]*x[12]-0.9098*x[1]*x[15]+1.9862*x[1]*x[18]-1.9808*x[2]*x[5]-0.0236*x[2]*x[6]+0.6483*x[2]*x[7]+1.6704*x[2]*x[8]-1.345*x[2]*x[9]-1.5119*x[2]*x[10]-1.378*x[2]*x[11]+0.7245*x[2]*x[13]+0.5063*x[2]*x[17]+1.2997*x[2]*x[19]-1.1699*x[2]*x[20]+1.1962*x[3]*x[5]+1.8742*x[3]*x[6]-1.5398*x[3]*x[9]+1.4946*x[3]*x[10]-1.1477*x[3]*x[12]-0.7348*x[3]*x[17]-1.6449*x[3]*x[18]-0.9226*x[3]*x[20]+1.9801*x[4]*x[5]+0.9211*x[4]*x[7]-0.5806*x[4]*x[8]+0.3972*x[4]*x[9]+0.2706*x[4]*x[11]-1.2797*x[4]*x[14]-1.7443*x[4]*x[15]+0.3227*x[4]*x[17]-0.7661*x[5]*x[5]+1.0655*x[5]*x[6]+1.2356*x[5]*x[8]-0.3834*x[5]*x[9]+0.5595*x[5]*x[10]+0.7208*x[5]*x[12]-0.9243*x[5]*x[13]-0.774*x[5]*x[14]+1.5284*x[5]*x[15]+1.3991*x[5]*x[17]+0.7662*x[5]*x[18]+1.7641*x[5]*x[19]+1.6673*x[6]*x[7]-0.8695*x[6]*x[9]+0.2381*x[6]*x[11]+1.8667*x[6]*x[12]-0.973*x[6]*x[13]-0.7936*x[6]*x[14]-1.2046*x[6]*x[17]-0.1964*x[6]*x[18]+0.8342*x[6]*x[19]-0.5602*x[7]*x[8]-0.1629*x[7]*x[15]-0.0795*x[7]*x[16]+0.2865*x[7]*x[18]+1.6395*x[7]*x[19]+0.7779*x[8]*x[9]+0.377*x[8]*x[11]-1.3203*x[8]*x[13]+0.1234*x[8]*x[14]+1.2252*x[8]*x[15]+0.5704*x[8]*x[16]+1.7733*x[8]*x[19]+0.9525*x[9]*x[10]+0.5941*x[9]*x[12]-1.5108*x[9]*x[14]+1.3296*x[9]*x[15]+0.6045*x[9]*x[16]-0.8263*x[9]*x[19]+0.1647*x[10]*x[10]-0.4544*x[10]*x[11]-0.9362*x[10]*x[14]+1.1314*x[10]*x[15]+0.7577*x[11]*x[11]+0.8449*x[11]*x[13]-1.6782*x[11]*x[15]-0.4762*x[11]*x[17]+1.0851*x[12]*x[12]-1.7348*x[12]*x[14]-0.5171*x[12]*x[16]-1.2732*x[12]*x[17]+1.7511*x[12]*x[19]-0.1165*x[12]*x[20]+1.7834*x[13]*x[14]-1.5921*x[13]*x[15]-1.0721*x[13]*x[18]-1.8415*x[14]*x[15]-1.3622*x[14]*x[16]-0.8376*x[14]*x[17]-0.1676*x[14]*x[18]-1.4659*x[14]*x[19]+0.4844*x[15]*x[15]-1.5306*x[15]*x[17]-0.3768*x[15]*x[18]-1.6872*x[15]*x[19]-1.2645*x[16]*x[17]+1.3581*x[16]*x[20]+0.5225*x[17]*x[17]+0.4491*x[17]*x[18]+0.9649*x[17]*x[19]+1.3957*x[18]*x[20]-0.0356*x[1]-0.9549*x[2]+0.6866*x[3]+0.3086*x[4]-0.1925*x[5]-0.553*x[6]-0.6458*x[7]+0.4325*x[8]-0.2427*x[9]-0.5621*x[10]-0.2479*x[11]+0.7563*x[12]+0.4603*x[13]+0.2355*x[14]+0.7211*x[15]+0.4588*x[16]-0.7696*x[17]+0.0288*x[18]+0.7588*x[19]-0.442*x[20] <= 52.877)
@NLconstraint(m, e4, 1.4219*x[1]*x[5]-0.2227*x[1]*x[2]+0.3872*x[1]*x[7]-1.9469*x[1]*x[8]+0.9715*x[1]*x[11]+0.6205*x[1]*x[12]+1.4014*x[1]*x[13]-1.8181*x[1]*x[16]-1.9814*x[1]*x[19]+1.7063*x[2]*x[3]-0.0936*x[2]*x[5]+1.7832*x[2]*x[6]-0.4222*x[2]*x[7]+0.6754*x[2]*x[8]-1.9993*x[2]*x[10]+1.435*x[2]*x[13]+1.9409*x[2]*x[18]-1.5614*x[2]*x[19]-0.5789*x[2]*x[20]+0.9777*x[3]*x[3]-0.0238*x[3]*x[5]+0.6764*x[3]*x[8]-0.4543*x[3]*x[9]-1.2627*x[3]*x[10]+0.2038*x[3]*x[15]-0.0285*x[3]*x[18]+1.7799*x[3]*x[19]-1.8304*x[4]*x[6]+0.6025*x[4]*x[10]-1.6494*x[4]*x[14]-1.2678*x[4]*x[15]-1.3863*x[4]*x[16]+1.7264*x[4]*x[18]+0.5785*x[4]*x[20]+1.6727*x[5]*x[5]-1.8404*x[5]*x[6]-1.0707*x[5]*x[7]-0.6219*x[5]*x[8]+1.2434*x[5]*x[10]-0.4127*x[5]*x[11]+1.8853*x[5]*x[12]-1.2363*x[5]*x[13]-1.6162*x[5]*x[15]+0.3424*x[5]*x[17]-1.3277*x[5]*x[18]+0.1748*x[5]*x[19]-1.1598*x[6]*x[6]+0.9002*x[6]*x[7]-0.4681*x[6]*x[10]-0.9062*x[6]*x[11]-0.3754*x[6]*x[14]+1.5741*x[6]*x[15]-0.1372*x[6]*x[16]+1.118*x[6]*x[17]+0.532*x[6]*x[18]+1.2187*x[6]*x[19]-0.1312*x[6]*x[20]-0.9061*x[7]*x[9]-0.3241*x[7]*x[10]-1.2455*x[7]*x[12]+0.5216*x[7]*x[14]+1.8937*x[7]*x[15]-1.4864*x[7]*x[16]+0.3462*x[7]*x[19]+1.6063*x[8]*x[8]+1.6735*x[8]*x[10]+1.9716*x[8]*x[14]+1.8372*x[8]*x[15]-1.9794*x[8]*x[17]-0.9365*x[8]*x[18]-1.6941*x[8]*x[19]-1.3763*x[9]*x[10]-1.7202*x[9]*x[12]+1.4419*x[9]*x[17]+1.2783*x[9]*x[18]+1.1874*x[9]*x[19]-1.3141*x[10]*x[11]-1.2761*x[10]*x[13]+1.2274*x[10]*x[15]+0.3236*x[10]*x[16]-0.9056*x[10]*x[19]+0.1389*x[11]*x[13]+1.4475*x[11]*x[14]-0.4968*x[11]*x[17]+1.9695*x[11]*x[18]-1.642*x[12]*x[13]+0.2962*x[12]*x[14]+0.5656*x[12]*x[16]+1.9924*x[12]*x[18]+0.1175*x[13]*x[14]+0.9807*x[13]*x[16]+0.1138*x[13]*x[18]+0.8143*x[13]*x[19]-1.96*x[13]*x[20]-1.253*x[14]*x[15]+0.9369*x[15]*x[15]+1.0533*x[15]*x[16]-0.9922*x[15]*x[17]+0.0463*x[16]*x[17]-0.1988*x[16]*x[18]-1.8062*x[16]*x[20]-1.6574*x[17]*x[19]-0.0424*x[17]*x[20]-0.3562*x[18]*x[19]+1.6948*x[19]*x[19]+0.9931*x[1]+0.5255*x[2]+0.6954*x[3]-0.7097*x[4]+0.0745*x[5]+0.1756*x[6]-0.6472*x[7]+0.1752*x[8]-0.8324*x[9]-0.9902*x[10]-0.2037*x[11]-0.0466*x[12]+0.1012*x[13]-0.6664*x[14]+0.3679*x[15]+0.5635*x[16]+0.1984*x[17]+0.652*x[18]+0.2001*x[19]+0.038*x[20] <= 6.117)
@NLconstraint(m, e5, 1.4622*x[1]*x[3]-1.4057*x[1]*x[2]-0.5711*x[1]*x[5]+0.4495*x[1]*x[6]-1.7831*x[1]*x[7]+0.6068*x[1]*x[10]+1.6001*x[1]*x[15]-0.801*x[1]*x[16]+0.9968*x[1]*x[18]+1.7544*x[2]*x[2]-0.3298*x[2]*x[3]-1.9926*x[2]*x[7]+0.052*x[2]*x[9]+1.5572*x[2]*x[11]-0.7879*x[2]*x[12]+0.3272*x[2]*x[14]-0.1421*x[2]*x[15]-1.5257*x[2]*x[17]-0.3955*x[2]*x[18]+0.5536*x[3]*x[3]-0.9924*x[3]*x[5]-1.3678*x[3]*x[6]-0.756*x[3]*x[7]+1.8041*x[3]*x[8]-0.1699*x[3]*x[10]-0.7985*x[3]*x[11]+1.585*x[3]*x[14]-1.1001*x[3]*x[15]-1.2904*x[3]*x[19]-1.9052*x[4]*x[7]-0.5353*x[4]*x[8]-0.1969*x[4]*x[9]-1.2384*x[4]*x[10]+0.7213*x[4]*x[14]-0.2006*x[4]*x[16]+0.1566*x[4]*x[17]-1.7963*x[4]*x[18]+0.643*x[4]*x[19]+0.8984*x[5]*x[5]-0.7765*x[5]*x[6]-1.852*x[5]*x[11]+0.9302*x[5]*x[13]-0.9014*x[5]*x[14]-0.7995*x[5]*x[15]-1.4837*x[5]*x[17]-1.9235*x[5]*x[20]+0.9531*x[6]*x[8]+0.5991*x[6]*x[9]-1.9899*x[6]*x[10]+0.5446*x[6]*x[11]+0.9409*x[6]*x[13]-0.559*x[6]*x[15]-0.7007*x[6]*x[16]-1.1051*x[6]*x[17]-1.2848*x[6]*x[18]-0.0488*x[7]*x[8]-1.8268*x[7]*x[14]-1.8138*x[7]*x[15]-1.9428*x[7]*x[16]-1.1642*x[7]*x[18]+0.8254*x[8]*x[9]+0.555*x[8]*x[10]-1.6147*x[8]*x[14]-1.9679*x[8]*x[15]-0.1448*x[8]*x[16]-0.3811*x[8]*x[18]-1.2255*x[8]*x[19]-0.2869*x[9]*x[9]-0.5953*x[9]*x[14]+0.8588*x[9]*x[18]+0.1716*x[9]*x[19]-1.5798*x[9]*x[20]+1.5454*x[10]*x[11]+0.0336*x[10]*x[12]+0.6361*x[10]*x[15]+0.8402*x[10]*x[16]+0.774*x[10]*x[18]-1.3459*x[11]*x[12]-1.1462*x[11]*x[13]+1.7325*x[11]*x[16]+0.2727*x[11]*x[17]+0.0539*x[11]*x[18]-1.1831*x[11]*x[19]-0.3743*x[12]*x[14]-1.7061*x[12]*x[15]-1.679*x[12]*x[17]+0.4114*x[12]*x[19]-0.1077*x[13]*x[13]-0.8091*x[13]*x[15]+0.494*x[13]*x[16]+1.516*x[13]*x[17]+1.4244*x[13]*x[18]+1.3453*x[14]*x[14]+0.8479*x[14]*x[16]-0.6386*x[14]*x[19]-1.3163*x[14]*x[20]+1.8112*x[15]*x[16]+0.8366*x[15]*x[17]+1.4021*x[15]*x[18]-0.9998*x[15]*x[19]+0.3165*x[17]*x[17]+0.3467*x[17]*x[18]+1.2607*x[18]*x[19]+0.485*x[18]*x[20]+1.0226*x[20]*x[20]-0.6048*x[1]-0.0212*x[2]+0.6836*x[3]-0.6986*x[4]+0.2319*x[5]-0.9808*x[6]+0.3688*x[7]-0.4049*x[8]+0.4364*x[9]+0.5808*x[10]-0.8313*x[11]+0.7748*x[12]-0.051*x[13]-0.7671*x[14]+0.5745*x[15]+0.7671*x[16]+0.1903*x[17]+0.0523*x[18]+0.5563*x[19]-0.4994*x[20] <= 1.143)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 
