using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
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
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5006*x[1]*x[1]-0.5385*x[1]*x[2]+0.1593*x[1]*x[3]-0.0871*x[1]*x[4]-0.9382*x[1]*x[6]-0.0148*x[1]*x[8]-0.4904*x[1]*x[9]+0.5096*x[1]*x[10]-0.4809*x[1]*x[11]-0.4848*x[1]*x[13]+0.3062*x[1]*x[15]+0.9318*x[1]*x[17]-0.1853*x[1]*x[18]+0.5946*x[1]*x[19]-0.9998*x[1]*x[20]+0.054*x[1]*x[22]+0.9006*x[1]*x[23]-0.322*x[1]*x[24]-0.4127*x[1]*x[26]-0.6934*x[1]*x[27]+0.408*x[1]*x[28]-0.6923*x[1]*x[29]-0.0869*x[1]*x[31]-0.0219*x[1]*x[32]+0.4814*x[1]*x[33]-0.0782*x[1]*x[34]-0.3978*x[1]*x[37]-0.0586*x[1]*x[38]+0.8491*x[1]*x[39]-0.9975*x[1]*x[40]+0.5027*x[1]*x[42]+0.496*x[1]*x[44]-0.6663*x[1]*x[45]+0.2055*x[1]*x[46]-0.1878*x[1]*x[47]+0.5555*x[1]*x[48]+0.0953*x[1]*x[49]-0.3364*x[1]*x[50]-0.0269*x[2]*x[5]+0.958*x[2]*x[6]-0.871*x[2]*x[9]-0.3226*x[2]*x[12]-0.8197*x[2]*x[13]-0.1814*x[2]*x[14]-0.8487*x[2]*x[21]+0.2095*x[2]*x[22]-0.2767*x[2]*x[24]-0.3641*x[2]*x[27]-0.0245*x[2]*x[28]+0.4568*x[2]*x[32]+0.3128*x[2]*x[36]+0.4853*x[2]*x[38]+0.9152*x[2]*x[39]-0.5344*x[2]*x[42]+0.9609*x[2]*x[44]+0.1761*x[2]*x[46]+0.344*x[2]*x[48]-0.3941*x[2]*x[49]+0.8352*x[2]*x[50]-0.8145*x[3]*x[3]+0.4713*x[3]*x[5]-0.2967*x[3]*x[9]+0.1227*x[3]*x[10]+0.6128*x[3]*x[12]-0.5156*x[3]*x[13]-0.1357*x[3]*x[14]+0.4391*x[3]*x[15]-0.916*x[3]*x[16]-0.9986*x[3]*x[17]+0.3863*x[3]*x[18]-0.0975*x[3]*x[19]+0.8211*x[3]*x[21]+0.6467*x[3]*x[23]+0.054*x[3]*x[26]+0.0186*x[3]*x[28]+0.3056*x[3]*x[29]+0.6154*x[3]*x[31]+0.0074*x[3]*x[32]+0.4949*x[3]*x[34]+0.6723*x[3]*x[35]+0.3352*x[3]*x[37]+0.0008*x[3]*x[38]+0.5953*x[3]*x[40]-0.6033*x[3]*x[41]+0.5045*x[3]*x[45]-0.269*x[3]*x[46]+0.6495*x[3]*x[49]+0.8248*x[4]*x[4]-0.6363*x[4]*x[7]+0.6394*x[4]*x[14]+0.1078*x[4]*x[18]+0.8161*x[4]*x[20]-0.4037*x[4]*x[21]+0.2088*x[4]*x[24]-0.6234*x[4]*x[26]-0.5131*x[4]*x[27]-0.3159*x[4]*x[28]-0.3376*x[4]*x[30]-0.8348*x[4]*x[31]-0.4805*x[4]*x[32]+0.8075*x[4]*x[34]+0.1383*x[4]*x[35]-0.8913*x[4]*x[37]-0.4103*x[4]*x[38]+0.4252*x[4]*x[39]-0.7663*x[4]*x[40]-0.9546*x[4]*x[41]+0.1664*x[4]*x[42]-0.1357*x[4]*x[44]+0.843*x[4]*x[45]-0.4141*x[4]*x[46]+0.9824*x[4]*x[47]+0.8706*x[4]*x[49]+0.3098*x[4]*x[50]-0.8453*x[5]*x[7]+0.4691*x[5]*x[9]-0.4006*x[5]*x[16]+0.3848*x[5]*x[18]+0.9792*x[5]*x[19]-0.4612*x[5]*x[21]-0.9516*x[5]*x[22]-0.4543*x[5]*x[25]+0.5378*x[5]*x[26]-0.8641*x[5]*x[28]+0.6423*x[5]*x[30]-0.8484*x[5]*x[33]-0.3092*x[5]*x[37]+0.6513*x[5]*x[38]+0.0055*x[5]*x[39]+0.0029*x[5]*x[41]+0.9821*x[5]*x[43]+0.477*x[5]*x[44]+0.9873*x[5]*x[45]+0.2413*x[5]*x[46]+0.3671*x[5]*x[47]-0.2025*x[5]*x[50]-0.5689*x[6]*x[7]+0.6425*x[6]*x[8]+0.4043*x[6]*x[9]-0.2493*x[6]*x[13]-0.4849*x[6]*x[14]+0.3103*x[6]*x[15]-0.2523*x[6]*x[16]+0.7611*x[6]*x[18]+0.3698*x[6]*x[19]-0.8896*x[6]*x[20]+0.7634*x[6]*x[21]-0.3524*x[6]*x[23]-0.7996*x[6]*x[24]+0.4739*x[6]*x[25]+0.5203*x[6]*x[26]-0.1375*x[6]*x[27]-0.0134*x[6]*x[29]-0.7802*x[6]*x[34]+0.1529*x[6]*x[40]-0.7427*x[6]*x[41]+0.034*x[6]*x[42]-0.1986*x[6]*x[43]+0.1794*x[6]*x[44]-0.2451*x[6]*x[45]-0.1578*x[6]*x[46]+0.2522*x[6]*x[47]+0.562*x[6]*x[49]+0.9868*x[6]*x[50]+0.0232*x[7]*x[7]+0.5897*x[7]*x[10]+0.1998*x[7]*x[11]-0.9026*x[7]*x[14]+0.5954*x[7]*x[17]-0.0184*x[7]*x[18]-0.9132*x[7]*x[19]-0.0269*x[7]*x[21]+0.5776*x[7]*x[22]+0.2437*x[7]*x[23]-0.9638*x[7]*x[24]+0.4683*x[7]*x[25]-0.0524*x[7]*x[26]+0.865*x[7]*x[30]-0.0714*x[7]*x[34]-0.5196*x[7]*x[35]+0.2146*x[7]*x[39]+0.2514*x[7]*x[40]-0.9667*x[7]*x[42]-0.328*x[7]*x[45]+0.185*x[7]*x[46]-0.1588*x[8]*x[9]-0.6343*x[8]*x[11]+0.7847*x[8]*x[14]+0.2423*x[8]*x[15]-0.357*x[8]*x[16]-0.2066*x[8]*x[17]-0.1247*x[8]*x[21]-0.9086*x[8]*x[25]-0.4053*x[8]*x[26]-0.6526*x[8]*x[28]-0.7753*x[8]*x[29]+0.6139*x[8]*x[32]+0.0606*x[8]*x[33]-0.4917*x[8]*x[35]+0.82*x[8]*x[40]-0.8487*x[8]*x[42]-0.4958*x[8]*x[43]-0.4949*x[8]*x[46]+0.7862*x[8]*x[50]+0.7091*x[9]*x[9]-0.6288*x[9]*x[10]+0.7083*x[9]*x[12]+0.4814*x[9]*x[14]+0.1703*x[9]*x[16]+0.511*x[9]*x[20]+0.9122*x[9]*x[26]+0.1772*x[9]*x[28]+0.6143*x[9]*x[30]+0.0351*x[9]*x[32]-0.6117*x[9]*x[35]+0.6903*x[9]*x[36]+0.8105*x[9]*x[38]+0.3583*x[9]*x[40]+0.296*x[9]*x[41]+0.6876*x[9]*x[46]-0.393*x[9]*x[48]-0.3819*x[9]*x[50]-0.3434*x[10]*x[10]+0.498*x[10]*x[12]+0.3344*x[10]*x[13]-0.6604*x[10]*x[14]+0.1448*x[10]*x[16]-0.2679*x[10]*x[17]-0.9699*x[10]*x[19]+0.4874*x[10]*x[21]-0.2642*x[10]*x[22]+0.0611*x[10]*x[24]+0.1584*x[10]*x[25]-0.3937*x[10]*x[26]+0.9029*x[10]*x[27]-0.3443*x[10]*x[29]+0.1484*x[10]*x[37]+0.4433*x[10]*x[39]+0.3218*x[10]*x[42]-0.2226*x[10]*x[44]+0.3904*x[10]*x[45]+0.6146*x[10]*x[47]-0.8245*x[10]*x[48]+0.8728*x[10]*x[50]-0.3059*x[11]*x[11]+0.8877*x[11]*x[13]+0.1024*x[11]*x[16]+0.1653*x[11]*x[17]-0.3166*x[11]*x[18]+0.13*x[11]*x[22]-0.4146*x[11]*x[24]-0.0127*x[11]*x[27]+0.4993*x[11]*x[29]+0.6925*x[11]*x[30]-0.0677*x[11]*x[31]-0.2175*x[11]*x[33]+0.828*x[11]*x[35]-0.1967*x[11]*x[37]+0.4211*x[11]*x[39]-0.2497*x[11]*x[41]+0.462*x[11]*x[44]-0.7244*x[11]*x[49]+0.5054*x[12]*x[12]-0.6719*x[12]*x[13]+0.2062*x[12]*x[14]+0.4854*x[12]*x[18]-0.8001*x[12]*x[19]+0.4813*x[12]*x[21]-0.2475*x[12]*x[22]+0.659*x[12]*x[23]-0.8335*x[12]*x[25]+0.2203*x[12]*x[26]+0.8903*x[12]*x[28]-0.7647*x[12]*x[33]+0.5881*x[12]*x[34]-0.3864*x[12]*x[35]-0.5257*x[12]*x[36]-0.5672*x[12]*x[41]-0.0589*x[12]*x[42]-0.1993*x[12]*x[44]-0.4537*x[12]*x[46]+0.7725*x[12]*x[49]+0.1709*x[12]*x[50]-0.0676*x[13]*x[13]-0.6013*x[13]*x[17]+0.8428*x[13]*x[18]-0.6915*x[13]*x[19]+0.8838*x[13]*x[21]+0.9223*x[13]*x[22]+0.5193*x[13]*x[24]+0.3182*x[13]*x[26]-0.221*x[13]*x[27]+0.6815*x[13]*x[30]-0.0966*x[13]*x[32]-0.1797*x[13]*x[35]-0.7994*x[13]*x[37]+0.6868*x[13]*x[42]+0.4518*x[13]*x[43]+0.8514*x[13]*x[47]+0.6759*x[13]*x[50]-0.6871*x[14]*x[14]+0.6584*x[14]*x[15]-0.2458*x[14]*x[16]+0.6472*x[14]*x[18]-0.3359*x[14]*x[19]-0.863*x[14]*x[20]+0.1233*x[14]*x[21]+0.6612*x[14]*x[22]+0.2013*x[14]*x[29]+0.6938*x[14]*x[30]-0.7642*x[14]*x[33]+0.3951*x[14]*x[34]-0.3524*x[14]*x[36]-0.9741*x[14]*x[40]+0.6833*x[14]*x[41]-0.4752*x[14]*x[43]-0.3353*x[14]*x[46]+0.9698*x[14]*x[48]-0.9741*x[14]*x[49]-0.1607*x[15]*x[15]+0.7583*x[15]*x[17]+0.803*x[15]*x[18]-0.4884*x[15]*x[19]+0.459*x[15]*x[20]+0.7593*x[15]*x[21]+0.3966*x[15]*x[22]+0.2922*x[15]*x[23]-0.8999*x[15]*x[24]-0.3177*x[15]*x[30]+0.2054*x[15]*x[33]-0.0702*x[15]*x[34]-0.1661*x[15]*x[35]+0.949*x[15]*x[38]+0.8319*x[15]*x[39]-0.2402*x[15]*x[41]+0.3515*x[15]*x[43]-0.6997*x[15]*x[45]+0.7683*x[15]*x[46]-0.6599*x[15]*x[47]+0.1491*x[15]*x[50]+0.4292*x[16]*x[19]+0.5753*x[16]*x[20]-0.2752*x[16]*x[21]-0.7367*x[16]*x[22]+0.2302*x[16]*x[25]+0.9897*x[16]*x[27]-0.5626*x[16]*x[30]-0.3133*x[16]*x[31]-0.113*x[16]*x[32]+0.3194*x[16]*x[33]+0.4135*x[16]*x[36]-0.4578*x[16]*x[38]-0.4937*x[16]*x[39]+0.2359*x[16]*x[40]+0.2791*x[16]*x[42]-0.8753*x[16]*x[43]-0.8146*x[16]*x[45]+0.3627*x[16]*x[47]+0.6978*x[16]*x[50]-0.1502*x[17]*x[17]+0.8516*x[17]*x[20]-0.8482*x[17]*x[22]-0.7326*x[17]*x[25]+0.3347*x[17]*x[28]-0.3677*x[17]*x[31]+0.8576*x[17]*x[32]+0.8423*x[17]*x[34]+0.4222*x[17]*x[35]+0.3568*x[17]*x[38]+0.1597*x[17]*x[39]+0.2008*x[17]*x[41]+0.6678*x[17]*x[42]-0.7699*x[17]*x[43]+0.6536*x[17]*x[44]-0.4263*x[17]*x[45]+0.5469*x[17]*x[50]+0.6991*x[18]*x[20]+0.4764*x[18]*x[21]-0.6822*x[18]*x[23]-0.709*x[18]*x[24]-0.6123*x[18]*x[26]-0.6075*x[18]*x[27]-0.6624*x[18]*x[30]+0.3302*x[18]*x[31]+0.6541*x[18]*x[32]-0.6579*x[18]*x[33]-0.5587*x[18]*x[34]-0.1261*x[18]*x[38]+0.8603*x[18]*x[42]+0.1445*x[18]*x[43]-0.773*x[18]*x[49]+0.1692*x[18]*x[50]+0.8432*x[19]*x[19]+0.8133*x[19]*x[20]+0.1169*x[19]*x[23]-0.1312*x[19]*x[24]+0.9717*x[19]*x[30]+0.3126*x[19]*x[33]+0.4154*x[19]*x[35]-0.0105*x[19]*x[37]+0.4772*x[19]*x[39]+0.1875*x[19]*x[40]+0.9525*x[19]*x[43]-0.3099*x[19]*x[44]-0.239*x[19]*x[45]+0.5059*x[19]*x[47]+0.466*x[19]*x[49]-0.334*x[20]*x[20]+0.8077*x[20]*x[25]+0.3148*x[20]*x[28]-0.4982*x[20]*x[29]+0.2499*x[20]*x[34]-0.4484*x[20]*x[35]+0.0002*x[20]*x[37]+0.9242*x[20]*x[38]-0.3877*x[20]*x[39]-0.776*x[20]*x[43]-0.4047*x[20]*x[47]-0.8727*x[20]*x[49]-0.014*x[21]*x[21]-0.9627*x[21]*x[22]-0.15*x[21]*x[24]-0.7809*x[21]*x[26]-0.4473*x[21]*x[27]+0.4151*x[21]*x[28]+0.0728*x[21]*x[29]-0.2027*x[21]*x[35]-0.4616*x[21]*x[39]+0.1176*x[21]*x[44]+0.108*x[21]*x[46]+0.3765*x[22]*x[23]+0.305*x[22]*x[24]-0.5298*x[22]*x[26]-0.0275*x[22]*x[27]-0.8101*x[22]*x[28]-0.4449*x[22]*x[29]-0.8782*x[22]*x[33]-0.6795*x[22]*x[36]-0.8655*x[22]*x[42]-0.6457*x[22]*x[43]+0.8807*x[22]*x[44]-0.7634*x[22]*x[45]+0.217*x[22]*x[46]-0.0549*x[22]*x[47]-0.9422*x[22]*x[48]-0.9389*x[22]*x[50]-0.2805*x[23]*x[23]-0.3906*x[23]*x[25]+0.8925*x[23]*x[26]+0.359*x[23]*x[27]-0.3714*x[23]*x[29]-0.5488*x[23]*x[30]+0.1483*x[23]*x[31]+0.225*x[23]*x[32]+0.7272*x[23]*x[38]-0.8881*x[23]*x[40]-0.0211*x[23]*x[43]-0.4108*x[23]*x[44]-0.0434*x[23]*x[45]-0.7799*x[23]*x[48]-0.4614*x[23]*x[50]-0.0865*x[24]*x[25]+0.3207*x[24]*x[27]+0.0431*x[24]*x[30]+0.8559*x[24]*x[31]-0.2257*x[24]*x[32]-0.1022*x[24]*x[33]-0.5768*x[24]*x[34]-0.8797*x[24]*x[35]+0.3955*x[24]*x[36]+0.7964*x[24]*x[37]+0.2734*x[24]*x[38]+0.0895*x[24]*x[40]-0.4146*x[24]*x[45]+0.9077*x[24]*x[46]-0.1895*x[24]*x[48]+0.994*x[24]*x[50]-0.6899*x[25]*x[25]+0.9394*x[25]*x[30]-0.2503*x[25]*x[32]-0.2187*x[25]*x[38]-0.1793*x[25]*x[40]+0.9029*x[25]*x[41]+0.1218*x[25]*x[42]+0.2453*x[25]*x[43]+0.7306*x[25]*x[44]-0.2001*x[25]*x[45]+0.7936*x[25]*x[46]-0.7984*x[26]*x[28]-0.589*x[26]*x[31]+0.6958*x[26]*x[32]-0.0455*x[26]*x[33]-0.267*x[26]*x[34]+0.8622*x[26]*x[38]-0.5897*x[26]*x[40]+0.1178*x[26]*x[41]+0.8772*x[26]*x[42]-0.7239*x[26]*x[48]+0.8153*x[26]*x[49]+0.9875*x[26]*x[50]+0.0661*x[27]*x[27]+0.0747*x[27]*x[28]-0.9466*x[27]*x[30]+0.9993*x[27]*x[31]+0.4921*x[27]*x[32]+0.1736*x[27]*x[33]-0.5295*x[27]*x[40]-0.5874*x[27]*x[43]-0.9963*x[27]*x[44]-0.6875*x[27]*x[45]-0.6238*x[27]*x[48]+0.0738*x[28]*x[29]+0.3122*x[28]*x[30]+0.9116*x[28]*x[32]-0.7073*x[28]*x[34]+0.3956*x[28]*x[36]+0.6408*x[28]*x[37]+0.906*x[28]*x[39]+0.4384*x[28]*x[42]-0.0051*x[28]*x[43]+0.689*x[28]*x[45]+0.8015*x[28]*x[46]-0.1671*x[28]*x[47]+0.1501*x[29]*x[29]-0.6129*x[29]*x[31]-0.4673*x[29]*x[34]-0.2172*x[29]*x[35]+0.5448*x[29]*x[36]+0.5743*x[29]*x[37]-0.2467*x[29]*x[39]+0.8448*x[29]*x[40]-0.784*x[29]*x[45]-0.2975*x[29]*x[46]-0.9803*x[29]*x[47]+0.9786*x[29]*x[48]+0.1967*x[29]*x[49]-0.9423*x[30]*x[30]-0.4481*x[30]*x[32]-0.0269*x[30]*x[37]-0.1364*x[30]*x[38]-0.9192*x[30]*x[40]+0.5189*x[30]*x[42]+0.3404*x[30]*x[43]+0.1516*x[30]*x[44]+0.4074*x[30]*x[46]-0.3842*x[30]*x[47]+0.4361*x[30]*x[48]-0.6147*x[30]*x[49]-0.8*x[31]*x[31]+0.1892*x[31]*x[32]-0.8637*x[31]*x[38]+0.3065*x[31]*x[40]+0.2325*x[31]*x[43]+0.2648*x[31]*x[48]+0.3826*x[31]*x[49]+0.6438*x[31]*x[50]-0.5217*x[32]*x[33]+0.3787*x[32]*x[39]+0.7293*x[32]*x[40]-0.1202*x[32]*x[41]+0.5314*x[32]*x[42]+0.2886*x[32]*x[45]-0.4004*x[32]*x[48]-0.3376*x[32]*x[49]-0.9079*x[32]*x[50]-0.4125*x[33]*x[33]+0.8876*x[33]*x[35]+0.3379*x[33]*x[36]-0.2619*x[33]*x[38]-0.7405*x[33]*x[41]+0.1524*x[33]*x[42]+0.8941*x[33]*x[46]+0.2131*x[33]*x[47]-0.3442*x[33]*x[49]+0.5042*x[33]*x[50]-0.931*x[34]*x[36]+0.6521*x[34]*x[40]-0.3237*x[34]*x[41]+0.27*x[34]*x[43]+0.2362*x[34]*x[44]+0.5923*x[34]*x[47]+0.986*x[34]*x[48]-0.0644*x[34]*x[49]+0.6635*x[34]*x[50]-0.7397*x[35]*x[35]+0.942*x[35]*x[36]-0.6956*x[35]*x[39]+0.7189*x[35]*x[40]+0.2027*x[35]*x[41]+0.7485*x[35]*x[45]+0.4619*x[35]*x[50]+0.0043*x[36]*x[36]+0.8381*x[36]*x[39]-0.8394*x[36]*x[44]-0.7701*x[36]*x[49]-0.3017*x[37]*x[37]-0.2722*x[37]*x[39]+0.4795*x[37]*x[45]+0.3531*x[37]*x[47]+0.2825*x[37]*x[48]+0.3274*x[37]*x[49]-0.4461*x[38]*x[38]+0.2588*x[38]*x[39]+0.5324*x[38]*x[40]-0.6424*x[38]*x[41]-0.573*x[38]*x[43]+0.6427*x[38]*x[49]+0.1464*x[39]*x[42]+0.7913*x[39]*x[43]+0.0191*x[39]*x[45]+0.6857*x[39]*x[47]+0.3674*x[39]*x[48]-0.7488*x[39]*x[49]-0.9634*x[39]*x[50]-0.2154*x[40]*x[40]+0.9814*x[40]*x[43]+0.3058*x[40]*x[46]-0.5648*x[40]*x[47]+0.043*x[40]*x[48]+0.3748*x[40]*x[50]-0.1711*x[41]*x[41]+0.1803*x[41]*x[43]-0.3642*x[41]*x[44]+0.4124*x[41]*x[45]+0.2058*x[41]*x[46]+0.2026*x[41]*x[48]+0.3626*x[41]*x[50]+0.5458*x[42]*x[44]-0.0222*x[42]*x[46]-0.7975*x[42]*x[49]-0.5112*x[43]*x[43]+0.0613*x[43]*x[44]+0.769*x[43]*x[45]+0.701*x[43]*x[46]-0.7641*x[43]*x[47]+0.3574*x[43]*x[48]-0.0437*x[43]*x[49]+0.7193*x[43]*x[50]+0.4535*x[44]*x[44]+0.5978*x[44]*x[45]+0.0133*x[44]*x[46]+0.8512*x[44]*x[47]-0.6772*x[45]*x[45]+0.5878*x[46]*x[46]-0.3585*x[46]*x[48]+0.1872*x[46]*x[50]+0.0589*x[47]*x[47]-0.3317*x[47]*x[48]+0.7479*x[48]*x[48]-0.9671*x[50]*x[50]+0.9391*x[1]+0.9018*x[2]+0.32*x[3]+0.6027*x[4]-0.6141*x[5]+0.531*x[6]+0.2639*x[7]+0.3663*x[8]-0.233*x[9]+0.4189*x[10]+0.4041*x[11]+0.304*x[12]+0.3126*x[13]+0.0481*x[14]-0.5275*x[15]-0.1305*x[16]-0.6678*x[17]-0.5155*x[18]+0.5784*x[19]+0.0016*x[20]-0.1111*x[21]-0.3946*x[22]-0.98*x[23]-0.1806*x[24]+0.988*x[25]-0.6747*x[26]-0.3078*x[27]+0.2953*x[28]-0.8559*x[29]+0.3771*x[30]-0.6117*x[31]+0.1766*x[32]+0.472*x[33]-0.1445*x[34]-0.1965*x[35]+0.5678*x[36]+0.8256*x[37]-0.0288*x[38]-0.0473*x[39]+0.1173*x[40]+0.6063*x[41]-0.8786*x[42]+0.8495*x[43]+0.1714*x[44]+0.4934*x[45]-0.7093*x[46]-0.5405*x[47]+0.7902*x[48]-0.333*x[49]+0.9342*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

m = m 		 # model get returned when including this script. 
