using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.2972*x[1]*x[1]-0.682*x[1]*x[2]-0.2246*x[1]*x[3]+0.2078*x[1]*x[5]+0.0801*x[1]*x[7]+0.412*x[1]*x[8]-0.7653*x[1]*x[11]+0.7097*x[1]*x[12]+0.1609*x[1]*x[14]+0.0463*x[1]*x[15]-0.049*x[1]*x[16]-0.9321*x[1]*x[18]+0.5337*x[1]*x[21]+0.6369*x[1]*x[22]-0.8873*x[1]*x[23]-0.5746*x[1]*x[24]+0.4865*x[1]*x[26]-0.3803*x[1]*x[27]-0.7699*x[1]*x[29]+0.7363*x[1]*x[30]-0.2812*x[1]*x[31]+0.8172*x[1]*x[32]-0.5754*x[1]*x[35]-0.2821*x[1]*x[36]-0.8113*x[1]*x[37]+0.3038*x[1]*x[39]+0.8093*x[1]*x[40]+0.5277*x[2]*x[2]+0.7849*x[2]*x[4]+0.6706*x[2]*x[5]+0.0152*x[2]*x[6]-0.009*x[2]*x[10]+0.0082*x[2]*x[11]+0.5372*x[2]*x[15]-0.2333*x[2]*x[17]-0.8164*x[2]*x[18]+0.8521*x[2]*x[19]+0.4163*x[2]*x[21]+0.6625*x[2]*x[30]+0.6022*x[2]*x[31]+0.1782*x[2]*x[33]+0.63*x[2]*x[34]+0.4385*x[2]*x[35]+0.9963*x[2]*x[37]+0.8737*x[2]*x[38]+0.382*x[2]*x[39]+0.4417*x[3]*x[3]+0.2669*x[3]*x[7]+0.7712*x[3]*x[9]+0.5226*x[3]*x[10]+0.3681*x[3]*x[12]+0.7255*x[3]*x[13]-0.4059*x[3]*x[14]+0.9658*x[3]*x[15]-0.8057*x[3]*x[17]+0.2716*x[3]*x[19]-0.8667*x[3]*x[21]-0.6541*x[3]*x[24]-0.0723*x[3]*x[25]-0.1218*x[3]*x[26]+0.6082*x[3]*x[28]-0.1423*x[3]*x[29]+0.5249*x[3]*x[30]+0.4167*x[3]*x[32]-0.507*x[3]*x[33]+0.8024*x[3]*x[36]-0.8732*x[3]*x[37]-0.9641*x[3]*x[39]+0.8948*x[3]*x[40]-0.0228*x[4]*x[6]-0.2308*x[4]*x[8]-0.8365*x[4]*x[12]-0.0407*x[4]*x[13]-0.6009*x[4]*x[14]-0.2916*x[4]*x[15]-0.1374*x[4]*x[17]+0.8125*x[4]*x[18]+0.8725*x[4]*x[19]+0.4909*x[4]*x[21]+0.9356*x[4]*x[23]+0.7571*x[4]*x[24]-0.4834*x[4]*x[27]+0.5875*x[4]*x[28]-0.8418*x[4]*x[29]-0.9637*x[4]*x[30]-0.3318*x[4]*x[31]-0.3304*x[4]*x[32]+0.0086*x[4]*x[34]-0.2382*x[4]*x[36]+0.7865*x[4]*x[37]-0.4775*x[4]*x[38]-0.0112*x[4]*x[40]+0.4793*x[5]*x[5]+0.2361*x[5]*x[6]+0.3537*x[5]*x[8]+0.4693*x[5]*x[10]+0.7316*x[5]*x[11]+0.3182*x[5]*x[12]+0.8041*x[5]*x[13]-0.4561*x[5]*x[15]+0.8676*x[5]*x[16]-0.7196*x[5]*x[17]-0.3273*x[5]*x[19]-0.0517*x[5]*x[20]-0.9975*x[5]*x[21]-0.5365*x[5]*x[22]+0.9168*x[5]*x[32]+0.7715*x[5]*x[33]+0.1129*x[5]*x[34]-0.3254*x[5]*x[35]-0.6267*x[5]*x[36]-0.2341*x[5]*x[37]+0.332*x[5]*x[39]+0.8281*x[5]*x[40]-0.1747*x[6]*x[8]+0.9767*x[6]*x[9]-0.6643*x[6]*x[11]-0.7506*x[6]*x[14]+0.0168*x[6]*x[17]-0.0513*x[6]*x[20]-0.6878*x[6]*x[21]-0.0265*x[6]*x[27]+0.6138*x[6]*x[28]+0.9757*x[6]*x[32]-0.8293*x[6]*x[34]+0.9219*x[6]*x[35]+0.403*x[6]*x[36]-0.0383*x[6]*x[37]-0.1156*x[7]*x[7]-0.9505*x[7]*x[11]-0.5166*x[7]*x[13]-0.7652*x[7]*x[16]-0.9915*x[7]*x[20]-0.477*x[7]*x[21]+0.1948*x[7]*x[24]-0.9361*x[7]*x[26]-0.0442*x[7]*x[28]-0.4517*x[7]*x[33]-0.8448*x[7]*x[35]-0.8462*x[7]*x[36]+0.7179*x[7]*x[37]+0.1438*x[7]*x[40]-0.831*x[8]*x[8]+0.1377*x[8]*x[10]+0.2404*x[8]*x[11]+0.4776*x[8]*x[14]+0.9781*x[8]*x[17]-0.4061*x[8]*x[19]-0.8912*x[8]*x[20]+0.9125*x[8]*x[21]+0.706*x[8]*x[23]-0.8906*x[8]*x[26]+0.942*x[8]*x[30]-0.0261*x[8]*x[31]-0.068*x[8]*x[32]-0.847*x[8]*x[34]+0.5746*x[8]*x[36]-0.3526*x[8]*x[37]+0.4389*x[8]*x[38]+0.4542*x[8]*x[39]+0.0367*x[9]*x[13]-0.3709*x[9]*x[14]+0.8193*x[9]*x[15]+0.5633*x[9]*x[20]-0.0382*x[9]*x[22]-0.959*x[9]*x[24]-0.7036*x[9]*x[25]+0.7485*x[9]*x[28]-0.0868*x[9]*x[30]-0.6044*x[9]*x[37]+0.3054*x[9]*x[40]+0.6064*x[10]*x[10]-0.5288*x[10]*x[11]-0.0285*x[10]*x[15]-0.5481*x[10]*x[16]-0.7647*x[10]*x[17]+0.6671*x[10]*x[18]-0.0921*x[10]*x[20]+0.7822*x[10]*x[21]-0.688*x[10]*x[23]-0.623*x[10]*x[25]-0.6958*x[10]*x[30]+0.2072*x[10]*x[33]+0.8573*x[10]*x[35]+0.9353*x[10]*x[36]-0.7581*x[10]*x[40]-0.6678*x[11]*x[11]+0.7244*x[11]*x[12]+0.497*x[11]*x[15]+0.8841*x[11]*x[17]-0.419*x[11]*x[18]-0.5639*x[11]*x[20]+0.3384*x[11]*x[23]+0.8517*x[11]*x[24]+0.2487*x[11]*x[28]+0.352*x[11]*x[29]-0.9956*x[11]*x[30]+0.1963*x[11]*x[32]+0.6505*x[11]*x[37]+0.8868*x[11]*x[40]+0.064*x[12]*x[12]-0.2306*x[12]*x[13]+0.3456*x[12]*x[14]-0.0124*x[12]*x[15]-0.7644*x[12]*x[16]-0.9407*x[12]*x[17]-0.5041*x[12]*x[19]-0.4612*x[12]*x[24]+0.6372*x[12]*x[26]-0.9423*x[12]*x[27]+0.4769*x[12]*x[28]+0.6691*x[12]*x[33]-0.6518*x[12]*x[37]+0.5892*x[12]*x[40]+0.1282*x[13]*x[15]-0.0097*x[13]*x[16]-0.0037*x[13]*x[17]-0.4974*x[13]*x[18]-0.1368*x[13]*x[20]-0.663*x[13]*x[21]-0.3471*x[13]*x[23]-0.9665*x[13]*x[25]-0.6331*x[13]*x[26]-0.0998*x[13]*x[27]+0.9348*x[13]*x[29]-0.5585*x[13]*x[31]-0.1588*x[13]*x[32]+0.3535*x[13]*x[34]-0.5013*x[13]*x[37]+0.5619*x[13]*x[39]+0.6594*x[13]*x[40]-0.6765*x[14]*x[14]+0.8412*x[14]*x[16]-0.6171*x[14]*x[17]+0.5953*x[14]*x[18]+0.9679*x[14]*x[20]+0.7684*x[14]*x[22]+0.3959*x[14]*x[25]+0.61*x[14]*x[27]+0.6235*x[14]*x[30]-0.2316*x[14]*x[32]+0.2738*x[14]*x[33]-0.5261*x[14]*x[34]+0.6011*x[14]*x[36]+0.421*x[14]*x[40]-0.9893*x[15]*x[15]-0.5615*x[15]*x[16]+0.7985*x[15]*x[19]+0.1976*x[15]*x[24]-0.1837*x[15]*x[26]-0.7994*x[15]*x[27]-0.7895*x[15]*x[31]+0.146*x[15]*x[35]-0.5227*x[15]*x[37]+0.3006*x[15]*x[38]+0.8038*x[15]*x[39]-0.0596*x[16]*x[16]+0.152*x[16]*x[18]+0.5178*x[16]*x[20]-0.1747*x[16]*x[21]+0.9976*x[16]*x[23]+0.1196*x[16]*x[24]-0.5697*x[16]*x[25]-0.8498*x[16]*x[27]-0.6921*x[16]*x[28]-0.0832*x[16]*x[30]+0.7875*x[16]*x[31]+0.2374*x[16]*x[34]+0.2773*x[16]*x[35]+0.8304*x[16]*x[38]-0.2771*x[17]*x[19]+0.8288*x[17]*x[21]-0.6953*x[17]*x[22]+0.9491*x[17]*x[23]-0.1701*x[17]*x[27]+0.4837*x[17]*x[31]-0.9392*x[17]*x[32]-0.0295*x[18]*x[18]+0.8232*x[18]*x[19]+0.8049*x[18]*x[20]+0.8403*x[18]*x[21]+0.0402*x[18]*x[22]+0.4708*x[18]*x[26]+0.653*x[18]*x[31]+0.4072*x[18]*x[32]+0.3477*x[18]*x[33]-0.8469*x[18]*x[34]-0.0643*x[18]*x[35]+0.9855*x[18]*x[36]+0.169*x[18]*x[37]+0.1277*x[18]*x[40]+0.1701*x[19]*x[20]-0.2288*x[19]*x[21]+0.6269*x[19]*x[23]-0.165*x[19]*x[24]-0.3328*x[19]*x[25]+0.0711*x[19]*x[27]+0.8548*x[19]*x[30]+0.4886*x[19]*x[32]-0.4103*x[19]*x[34]+0.1394*x[19]*x[36]-0.3792*x[19]*x[39]-0.061*x[19]*x[40]-0.6923*x[20]*x[20]+0.194*x[20]*x[21]-0.2253*x[20]*x[22]-0.6197*x[20]*x[24]-0.799*x[20]*x[26]-0.9851*x[20]*x[27]-0.164*x[20]*x[32]+0.1448*x[20]*x[33]+0.0185*x[20]*x[35]+0.3829*x[20]*x[36]+0.2687*x[20]*x[37]+0.9428*x[21]*x[22]+0.9418*x[21]*x[23]+0.4694*x[21]*x[25]+0.8523*x[21]*x[26]-0.87*x[21]*x[27]-0.5796*x[21]*x[28]-0.486*x[21]*x[32]+0.3746*x[21]*x[33]+0.4788*x[21]*x[35]+0.0586*x[21]*x[38]+0.1473*x[21]*x[39]+0.2498*x[21]*x[40]-0.6388*x[22]*x[22]+0.2472*x[22]*x[24]-0.3687*x[22]*x[25]+0.3536*x[22]*x[26]+0.0072*x[22]*x[30]-0.5806*x[22]*x[35]-0.5058*x[22]*x[36]-0.116*x[22]*x[37]+0.191*x[23]*x[24]+0.3699*x[23]*x[28]+0.3731*x[23]*x[29]+0.0031*x[23]*x[31]+0.9294*x[23]*x[34]-0.6047*x[23]*x[36]+0.2348*x[23]*x[37]+0.8324*x[23]*x[38]+0.6608*x[23]*x[39]-0.1673*x[24]*x[24]-0.9519*x[24]*x[26]+0.8066*x[24]*x[28]-0.9313*x[24]*x[30]-0.0297*x[24]*x[32]-0.7382*x[24]*x[33]-0.672*x[24]*x[34]+0.3061*x[24]*x[35]-0.1984*x[24]*x[37]-0.8696*x[24]*x[38]-0.5035*x[24]*x[39]+0.2835*x[24]*x[40]+0.2576*x[25]*x[25]-0.5016*x[25]*x[30]-0.738*x[25]*x[32]-0.6402*x[25]*x[36]+0.2333*x[25]*x[37]-0.1863*x[25]*x[38]+0.6045*x[25]*x[39]-0.5819*x[25]*x[40]-0.809*x[26]*x[26]-0.3189*x[26]*x[28]+0.802*x[26]*x[30]-0.8383*x[26]*x[32]+0.3569*x[26]*x[33]+0.0003*x[26]*x[34]+0.8089*x[26]*x[40]-0.875*x[27]*x[28]+0.4462*x[27]*x[30]-0.3338*x[27]*x[31]+0.1814*x[27]*x[32]-0.8771*x[27]*x[34]-0.9101*x[27]*x[35]+0.1635*x[27]*x[37]-0.1352*x[27]*x[38]-0.8026*x[27]*x[39]+0.9155*x[27]*x[40]+0.5442*x[28]*x[28]-0.7053*x[28]*x[29]+0.4455*x[28]*x[32]+0.9929*x[28]*x[40]-0.3529*x[29]*x[37]-0.8803*x[29]*x[39]-0.9694*x[30]*x[31]+0.7938*x[30]*x[37]+0.664*x[31]*x[33]+0.5083*x[31]*x[34]-0.3124*x[31]*x[38]-0.4061*x[31]*x[39]+0.0858*x[32]*x[32]-0.2714*x[32]*x[33]-0.8232*x[32]*x[36]-0.1146*x[32]*x[37]+0.9703*x[32]*x[38]+0.9858*x[32]*x[39]+0.859*x[32]*x[40]+0.0264*x[33]*x[33]-0.8325*x[33]*x[35]-0.2402*x[33]*x[36]+0.9962*x[33]*x[37]-0.612*x[33]*x[39]-0.7468*x[33]*x[40]+0.5066*x[34]*x[35]+0.5209*x[34]*x[36]-0.8096*x[34]*x[38]+0.2097*x[34]*x[39]-0.8223*x[35]*x[35]+0.8219*x[35]*x[36]+0.8915*x[35]*x[37]+0.4384*x[35]*x[38]+0.0104*x[36]*x[36]-0.6145*x[36]*x[40]+0.3569*x[37]*x[37]-0.0835*x[37]*x[38]-0.1778*x[37]*x[40]+0.1688*x[38]*x[38]-0.6302*x[40]*x[40]+0.0573*x[1]+0.8851*x[2]+0.9515*x[3]-0.0604*x[4]-0.8915*x[5]-0.0968*x[6]-0.5954*x[7]-0.902*x[8]+0.9315*x[9]+0.4294*x[10]+0.7398*x[11]-0.6759*x[12]-0.0166*x[13]+0.3176*x[14]-0.434*x[15]-0.8219*x[16]-0.9323*x[17]-0.2384*x[18]+0.2604*x[19]+0.4567*x[20]+0.7508*x[21]+0.1384*x[22]-0.5557*x[23]-0.2385*x[24]+0.0199*x[25]+0.7632*x[26]-0.9947*x[27]-0.3877*x[28]+0.8177*x[29]-0.3725*x[30]-0.3487*x[31]-0.8521*x[32]+0.7201*x[33]-0.9411*x[34]-0.6075*x[35]+0.4446*x[36]-0.6889*x[37]+0.5368*x[38]+0.9675*x[39]-0.1386*x[40])+x[41] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[41])

m = m 		 # model get returned when including this script. 
