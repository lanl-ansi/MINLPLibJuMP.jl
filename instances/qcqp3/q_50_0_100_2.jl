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
@NLconstraint(m, e1, -(-0.0124*x[1]*x[1]-0.7644*x[1]*x[2]-0.9407*x[1]*x[3]-0.5041*x[1]*x[4]-0.4612*x[1]*x[5]+0.6372*x[1]*x[6]-0.9423*x[1]*x[7]+0.4769*x[1]*x[8]+0.6691*x[1]*x[9]-0.6518*x[1]*x[10]+0.5892*x[1]*x[11]+0.1282*x[1]*x[12]-0.0097*x[1]*x[13]-0.0037*x[1]*x[14]-0.4974*x[1]*x[15]-0.1368*x[1]*x[16]-0.663*x[1]*x[17]-0.3471*x[1]*x[18]-0.9665*x[1]*x[19]-0.6331*x[1]*x[20]-0.0998*x[1]*x[21]+0.9348*x[1]*x[22]-0.5585*x[1]*x[23]-0.1588*x[1]*x[24]+0.3535*x[1]*x[25]-0.5013*x[1]*x[26]+0.5619*x[1]*x[27]+0.6594*x[1]*x[28]-0.6765*x[1]*x[29]+0.8412*x[1]*x[30]-0.6171*x[1]*x[31]+0.5953*x[1]*x[32]+0.9679*x[1]*x[33]+0.7684*x[1]*x[34]+0.3959*x[1]*x[35]+0.61*x[1]*x[36]+0.6235*x[1]*x[37]-0.2316*x[1]*x[38]+0.2738*x[1]*x[39]-0.5261*x[1]*x[40]+0.6011*x[1]*x[41]+0.421*x[1]*x[42]-0.9893*x[1]*x[43]-0.5615*x[1]*x[44]+0.7985*x[1]*x[45]+0.1976*x[1]*x[46]-0.1837*x[1]*x[47]-0.7994*x[1]*x[48]-0.7895*x[1]*x[49]+0.146*x[1]*x[50]-0.5227*x[2]*x[2]+0.3006*x[2]*x[3]+0.8038*x[2]*x[4]-0.0596*x[2]*x[5]+0.152*x[2]*x[6]+0.5178*x[2]*x[7]-0.1747*x[2]*x[8]+0.9976*x[2]*x[9]+0.1196*x[2]*x[10]-0.5697*x[2]*x[11]-0.8498*x[2]*x[12]-0.6921*x[2]*x[13]-0.0832*x[2]*x[14]+0.7875*x[2]*x[15]+0.2374*x[2]*x[16]+0.2773*x[2]*x[17]+0.8304*x[2]*x[18]-0.2771*x[2]*x[19]+0.8288*x[2]*x[20]-0.6953*x[2]*x[21]+0.9491*x[2]*x[22]-0.1701*x[2]*x[23]+0.4837*x[2]*x[24]-0.9392*x[2]*x[25]-0.0295*x[2]*x[26]+0.8232*x[2]*x[27]+0.8049*x[2]*x[28]+0.8403*x[2]*x[29]+0.0402*x[2]*x[30]+0.4708*x[2]*x[31]+0.653*x[2]*x[32]+0.4072*x[2]*x[33]+0.3477*x[2]*x[34]-0.8469*x[2]*x[35]-0.0643*x[2]*x[36]+0.9855*x[2]*x[37]+0.169*x[2]*x[38]+0.1277*x[2]*x[39]+0.1701*x[2]*x[40]-0.2288*x[2]*x[41]+0.6269*x[2]*x[42]-0.165*x[2]*x[43]-0.3328*x[2]*x[44]+0.0711*x[2]*x[45]+0.8548*x[2]*x[46]+0.4886*x[2]*x[47]-0.4103*x[2]*x[48]+0.1394*x[2]*x[49]-0.3792*x[2]*x[50]-0.061*x[3]*x[3]-0.6923*x[3]*x[4]+0.194*x[3]*x[5]-0.2253*x[3]*x[6]-0.6197*x[3]*x[7]-0.799*x[3]*x[8]-0.9851*x[3]*x[9]-0.164*x[3]*x[10]+0.1448*x[3]*x[11]+0.0185*x[3]*x[12]+0.3829*x[3]*x[13]+0.2687*x[3]*x[14]+0.9428*x[3]*x[15]+0.9418*x[3]*x[16]+0.4694*x[3]*x[17]+0.8523*x[3]*x[18]-0.87*x[3]*x[19]-0.5796*x[3]*x[20]-0.486*x[3]*x[21]+0.3746*x[3]*x[22]+0.4788*x[3]*x[23]+0.0586*x[3]*x[24]+0.1473*x[3]*x[25]+0.2498*x[3]*x[26]-0.6388*x[3]*x[27]+0.2472*x[3]*x[28]-0.3687*x[3]*x[29]+0.3536*x[3]*x[30]+0.0072*x[3]*x[31]-0.5806*x[3]*x[32]-0.5058*x[3]*x[33]-0.116*x[3]*x[34]+0.191*x[3]*x[35]+0.3699*x[3]*x[36]+0.3731*x[3]*x[37]+0.0031*x[3]*x[38]+0.9294*x[3]*x[39]-0.6047*x[3]*x[40]+0.2348*x[3]*x[41]+0.8324*x[3]*x[42]+0.6608*x[3]*x[43]-0.1673*x[3]*x[44]-0.9519*x[3]*x[45]+0.8066*x[3]*x[46]-0.9313*x[3]*x[47]-0.0297*x[3]*x[48]-0.7382*x[3]*x[49]-0.672*x[3]*x[50]+0.3061*x[4]*x[4]-0.1984*x[4]*x[5]-0.8696*x[4]*x[6]-0.5035*x[4]*x[7]+0.2835*x[4]*x[8]+0.2576*x[4]*x[9]-0.5016*x[4]*x[10]-0.738*x[4]*x[11]-0.6402*x[4]*x[12]+0.2333*x[4]*x[13]-0.1863*x[4]*x[14]+0.6045*x[4]*x[15]-0.5819*x[4]*x[16]-0.809*x[4]*x[17]-0.3189*x[4]*x[18]+0.802*x[4]*x[19]-0.8383*x[4]*x[20]+0.3569*x[4]*x[21]+0.0003*x[4]*x[22]+0.8089*x[4]*x[23]-0.875*x[4]*x[24]+0.4462*x[4]*x[25]-0.3338*x[4]*x[26]+0.1814*x[4]*x[27]-0.8771*x[4]*x[28]-0.9101*x[4]*x[29]+0.1635*x[4]*x[30]-0.1352*x[4]*x[31]-0.8026*x[4]*x[32]+0.9155*x[4]*x[33]+0.5442*x[4]*x[34]-0.7053*x[4]*x[35]+0.4455*x[4]*x[36]+0.9929*x[4]*x[37]-0.3529*x[4]*x[38]-0.8803*x[4]*x[39]-0.9694*x[4]*x[40]+0.7938*x[4]*x[41]+0.664*x[4]*x[42]+0.5083*x[4]*x[43]-0.3124*x[4]*x[44]-0.4061*x[4]*x[45]+0.0858*x[4]*x[46]-0.2714*x[4]*x[47]-0.8232*x[4]*x[48]-0.1146*x[4]*x[49]+0.9703*x[4]*x[50]+0.9858*x[5]*x[5]+0.859*x[5]*x[6]+0.0264*x[5]*x[7]-0.8325*x[5]*x[8]-0.2402*x[5]*x[9]+0.9962*x[5]*x[10]-0.612*x[5]*x[11]-0.7468*x[5]*x[12]+0.5066*x[5]*x[13]+0.5209*x[5]*x[14]-0.8096*x[5]*x[15]+0.2097*x[5]*x[16]-0.8223*x[5]*x[17]+0.8219*x[5]*x[18]+0.8915*x[5]*x[19]+0.4384*x[5]*x[20]+0.0104*x[5]*x[21]-0.6145*x[5]*x[22]+0.3569*x[5]*x[23]-0.0835*x[5]*x[24]-0.1778*x[5]*x[25]+0.1688*x[5]*x[26]-0.6302*x[5]*x[27]+0.0573*x[5]*x[28]+0.8851*x[5]*x[29]+0.9515*x[5]*x[30]-0.0604*x[5]*x[31]-0.8915*x[5]*x[32]-0.0968*x[5]*x[33]-0.5954*x[5]*x[34]-0.902*x[5]*x[35]+0.9315*x[5]*x[36]+0.4294*x[5]*x[37]+0.7398*x[5]*x[38]-0.6759*x[5]*x[39]-0.0166*x[5]*x[40]+0.3176*x[5]*x[41]-0.434*x[5]*x[42]-0.8219*x[5]*x[43]-0.9323*x[5]*x[44]-0.2384*x[5]*x[45]+0.2604*x[5]*x[46]+0.4567*x[5]*x[47]+0.7508*x[5]*x[48]+0.1384*x[5]*x[49]-0.5557*x[5]*x[50]-0.2385*x[6]*x[6]+0.0199*x[6]*x[7]+0.7632*x[6]*x[8]-0.9947*x[6]*x[9]-0.3877*x[6]*x[10]+0.8177*x[6]*x[11]-0.3725*x[6]*x[12]-0.3487*x[6]*x[13]-0.8521*x[6]*x[14]+0.7201*x[6]*x[15]-0.9411*x[6]*x[16]-0.6075*x[6]*x[17]+0.4446*x[6]*x[18]-0.6889*x[6]*x[19]+0.5368*x[6]*x[20]+0.9675*x[6]*x[21]-0.1386*x[6]*x[22]-0.4474*x[6]*x[23]-0.8875*x[6]*x[24]-0.7171*x[6]*x[25]-0.2179*x[6]*x[26]-0.317*x[6]*x[27]-0.0332*x[6]*x[28]-0.625*x[6]*x[29]+0.2913*x[6]*x[30]+0.0755*x[6]*x[31]-0.0178*x[6]*x[32]-0.215*x[6]*x[33]-0.7588*x[6]*x[34]+0.2416*x[6]*x[35]-0.1383*x[6]*x[36]+0.2175*x[6]*x[37]-0.5311*x[6]*x[38]-0.6322*x[6]*x[39]-0.8211*x[6]*x[40]-0.2421*x[6]*x[41]-0.9794*x[6]*x[42]+0.6866*x[6]*x[43]+0.144*x[6]*x[44]+0.935*x[6]*x[45]-0.7224*x[6]*x[46]-0.79*x[6]*x[47]-0.6261*x[6]*x[48]-0.59*x[6]*x[49]+0.8708*x[6]*x[50]+0.5423*x[7]*x[7]+0.3356*x[7]*x[8]+0.142*x[7]*x[9]+0.5119*x[7]*x[10]+0.7599*x[7]*x[11]-0.4022*x[7]*x[12]+0.4446*x[7]*x[13]-0.8166*x[7]*x[14]+0.6446*x[7]*x[15]-0.1284*x[7]*x[16]-0.3651*x[7]*x[17]-0.2567*x[7]*x[18]+0.1421*x[7]*x[19]-0.8825*x[7]*x[20]-0.6058*x[7]*x[21]+0.503*x[7]*x[22]-0.0462*x[7]*x[23]-0.717*x[7]*x[24]+0.0253*x[7]*x[25]-0.9476*x[7]*x[26]-0.3171*x[7]*x[27]+0.5691*x[7]*x[28]-0.3612*x[7]*x[29]+0.0488*x[7]*x[30]+0.423*x[7]*x[31]+0.2762*x[7]*x[32]+0.0221*x[7]*x[33]+0.3975*x[7]*x[34]-0.5281*x[7]*x[35]-0.722*x[7]*x[36]-0.1433*x[7]*x[37]+0.1957*x[7]*x[38]+0.7882*x[7]*x[39]+0.9988*x[7]*x[40]+0.8552*x[7]*x[41]+0.3681*x[7]*x[42]-0.6187*x[7]*x[43]-0.2208*x[7]*x[44]-0.8222*x[7]*x[45]+0.3944*x[7]*x[46]+0.4808*x[7]*x[47]-0.8075*x[7]*x[48]-0.8579*x[7]*x[49]-0.5665*x[7]*x[50]-0.895*x[8]*x[8]-0.3975*x[8]*x[9]+0.4934*x[8]*x[10]+0.2624*x[8]*x[11]+0.2931*x[8]*x[12]-0.8108*x[8]*x[13]-0.6769*x[8]*x[14]-0.2571*x[8]*x[15]+0.1818*x[8]*x[16]-0.5706*x[8]*x[17]+0.6166*x[8]*x[18]-0.7727*x[8]*x[19]-0.2887*x[8]*x[20]-0.6625*x[8]*x[21]-0.4673*x[8]*x[22]+0.9985*x[8]*x[23]-0.0513*x[8]*x[24]-0.243*x[8]*x[25]+0.9283*x[8]*x[26]-0.9095*x[8]*x[27]+0.0583*x[8]*x[28]+0.823*x[8]*x[29]-0.5969*x[8]*x[30]+0.8222*x[8]*x[31]-0.0405*x[8]*x[32]-0.131*x[8]*x[33]-0.3485*x[8]*x[34]+0.8998*x[8]*x[35]-0.2805*x[8]*x[36]+0.5217*x[8]*x[37]-0.933*x[8]*x[38]+0.9836*x[8]*x[39]-0.9513*x[8]*x[40]-0.9415*x[8]*x[41]-0.4551*x[8]*x[42]+0.4972*x[8]*x[43]-0.429*x[8]*x[44]-0.5465*x[8]*x[45]-0.1411*x[8]*x[46]+0.5444*x[8]*x[47]+0.1779*x[8]*x[48]+0.0402*x[8]*x[49]-0.9732*x[8]*x[50]-0.3496*x[9]*x[9]-0.2575*x[9]*x[10]+0.6694*x[9]*x[11]-0.4773*x[9]*x[12]+0.4754*x[9]*x[13]-0.9142*x[9]*x[14]+0.6845*x[9]*x[15]-0.7219*x[9]*x[16]+0.7798*x[9]*x[17]+0.0733*x[9]*x[18]-0.7376*x[9]*x[19]+0.0256*x[9]*x[20]-0.2386*x[9]*x[21]+0.8016*x[9]*x[22]+0.6794*x[9]*x[23]+0.6011*x[9]*x[24]-0.1622*x[9]*x[25]-0.0369*x[9]*x[26]-0.5992*x[9]*x[27]+0.9241*x[9]*x[28]+0.9873*x[9]*x[29]+0.5992*x[9]*x[30]+0.8133*x[9]*x[31]+0.4239*x[9]*x[32]-0.1981*x[9]*x[33]+0.5006*x[9]*x[34]-0.5385*x[9]*x[35]+0.1593*x[9]*x[36]-0.0871*x[9]*x[37]-0.9382*x[9]*x[38]-0.0148*x[9]*x[39]-0.4904*x[9]*x[40]+0.5096*x[9]*x[41]-0.4809*x[9]*x[42]-0.4848*x[9]*x[43]+0.3062*x[9]*x[44]+0.9318*x[9]*x[45]-0.1853*x[9]*x[46]+0.5946*x[9]*x[47]-0.9998*x[9]*x[48]+0.054*x[9]*x[49]+0.9006*x[9]*x[50]-0.322*x[10]*x[10]-0.4127*x[10]*x[11]-0.6934*x[10]*x[12]+0.408*x[10]*x[13]-0.6923*x[10]*x[14]-0.0869*x[10]*x[15]-0.0219*x[10]*x[16]+0.4814*x[10]*x[17]-0.0782*x[10]*x[18]-0.3978*x[10]*x[19]-0.0586*x[10]*x[20]+0.8491*x[10]*x[21]-0.9975*x[10]*x[22]+0.5027*x[10]*x[23]+0.496*x[10]*x[24]-0.6663*x[10]*x[25]+0.2055*x[10]*x[26]-0.1878*x[10]*x[27]+0.5555*x[10]*x[28]+0.0953*x[10]*x[29]-0.3364*x[10]*x[30]-0.0269*x[10]*x[31]+0.958*x[10]*x[32]-0.871*x[10]*x[33]-0.3226*x[10]*x[34]-0.8197*x[10]*x[35]-0.1814*x[10]*x[36]-0.8487*x[10]*x[37]+0.2095*x[10]*x[38]-0.2767*x[10]*x[39]-0.3641*x[10]*x[40]-0.0245*x[10]*x[41]+0.4568*x[10]*x[42]+0.3128*x[10]*x[43]+0.4853*x[10]*x[44]+0.9152*x[10]*x[45]-0.5344*x[10]*x[46]+0.9609*x[10]*x[47]+0.1761*x[10]*x[48]+0.344*x[10]*x[49]-0.3941*x[10]*x[50]+0.8352*x[11]*x[11]-0.8145*x[11]*x[12]+0.4713*x[11]*x[13]-0.2967*x[11]*x[14]+0.1227*x[11]*x[15]+0.6128*x[11]*x[16]-0.5156*x[11]*x[17]-0.1357*x[11]*x[18]+0.4391*x[11]*x[19]-0.916*x[11]*x[20]-0.9986*x[11]*x[21]+0.3863*x[11]*x[22]-0.0975*x[11]*x[23]+0.8211*x[11]*x[24]+0.6467*x[11]*x[25]+0.054*x[11]*x[26]+0.0186*x[11]*x[27]+0.3056*x[11]*x[28]+0.6154*x[11]*x[29]+0.0074*x[11]*x[30]+0.4949*x[11]*x[31]+0.6723*x[11]*x[32]+0.3352*x[11]*x[33]+0.0008*x[11]*x[34]+0.5953*x[11]*x[35]-0.6033*x[11]*x[36]+0.5045*x[11]*x[37]-0.269*x[11]*x[38]+0.6495*x[11]*x[39]+0.8248*x[11]*x[40]-0.6363*x[11]*x[41]+0.6394*x[11]*x[42]+0.1078*x[11]*x[43]+0.8161*x[11]*x[44]-0.4037*x[11]*x[45]+0.2088*x[11]*x[46]-0.6234*x[11]*x[47]-0.5131*x[11]*x[48]-0.3159*x[11]*x[49]-0.3376*x[11]*x[50]-0.8348*x[12]*x[12]-0.4805*x[12]*x[13]+0.8075*x[12]*x[14]+0.1383*x[12]*x[15]-0.8913*x[12]*x[16]-0.4103*x[12]*x[17]+0.4252*x[12]*x[18]-0.7663*x[12]*x[19]-0.9546*x[12]*x[20]+0.1664*x[12]*x[21]-0.1357*x[12]*x[22]+0.843*x[12]*x[23]-0.4141*x[12]*x[24]+0.9824*x[12]*x[25]+0.8706*x[12]*x[26]+0.3098*x[12]*x[27]-0.8453*x[12]*x[28]+0.4691*x[12]*x[29]-0.4006*x[12]*x[30]+0.3848*x[12]*x[31]+0.9792*x[12]*x[32]-0.4612*x[12]*x[33]-0.9516*x[12]*x[34]-0.4543*x[12]*x[35]+0.5378*x[12]*x[36]-0.8641*x[12]*x[37]+0.6423*x[12]*x[38]-0.8484*x[12]*x[39]-0.3092*x[12]*x[40]+0.6513*x[12]*x[41]+0.0055*x[12]*x[42]+0.0029*x[12]*x[43]+0.9821*x[12]*x[44]+0.477*x[12]*x[45]+0.9873*x[12]*x[46]+0.2413*x[12]*x[47]+0.3671*x[12]*x[48]-0.2025*x[12]*x[49]-0.5689*x[12]*x[50]+0.6425*x[13]*x[13]+0.4043*x[13]*x[14]-0.2493*x[13]*x[15]-0.4849*x[13]*x[16]+0.3103*x[13]*x[17]-0.2523*x[13]*x[18]+0.7611*x[13]*x[19]+0.3698*x[13]*x[20]-0.8896*x[13]*x[21]+0.7634*x[13]*x[22]-0.3524*x[13]*x[23]-0.7996*x[13]*x[24]+0.4739*x[13]*x[25]+0.5203*x[13]*x[26]-0.1375*x[13]*x[27]-0.0134*x[13]*x[28]-0.7802*x[13]*x[29]+0.1529*x[13]*x[30]-0.7427*x[13]*x[31]+0.034*x[13]*x[32]-0.1986*x[13]*x[33]+0.1794*x[13]*x[34]-0.2451*x[13]*x[35]-0.1578*x[13]*x[36]+0.2522*x[13]*x[37]+0.562*x[13]*x[38]+0.9868*x[13]*x[39]+0.0232*x[13]*x[40]+0.5897*x[13]*x[41]+0.1998*x[13]*x[42]-0.9026*x[13]*x[43]+0.5954*x[13]*x[44]-0.0184*x[13]*x[45]-0.9132*x[13]*x[46]-0.0269*x[13]*x[47]+0.5776*x[13]*x[48]+0.2437*x[13]*x[49]-0.9638*x[13]*x[50]+0.4683*x[14]*x[14]-0.0524*x[14]*x[15]+0.865*x[14]*x[16]-0.0714*x[14]*x[17]-0.5196*x[14]*x[18]+0.2146*x[14]*x[19]+0.2514*x[14]*x[20]-0.9667*x[14]*x[21]-0.328*x[14]*x[22]+0.185*x[14]*x[23]-0.1588*x[14]*x[24]-0.6343*x[14]*x[25]+0.7847*x[14]*x[26]+0.2423*x[14]*x[27]-0.357*x[14]*x[28]-0.2066*x[14]*x[29]-0.1247*x[14]*x[30]-0.9086*x[14]*x[31]-0.4053*x[14]*x[32]-0.6526*x[14]*x[33]-0.7753*x[14]*x[34]+0.6139*x[14]*x[35]+0.0606*x[14]*x[36]-0.4917*x[14]*x[37]+0.82*x[14]*x[38]-0.8487*x[14]*x[39]-0.4958*x[14]*x[40]-0.4949*x[14]*x[41]+0.7862*x[14]*x[42]+0.7091*x[14]*x[43]-0.6288*x[14]*x[44]+0.7083*x[14]*x[45]+0.4814*x[14]*x[46]+0.1703*x[14]*x[47]+0.511*x[14]*x[48]+0.9122*x[14]*x[49]+0.1772*x[14]*x[50]+0.6143*x[15]*x[15]+0.0351*x[15]*x[16]-0.6117*x[15]*x[17]+0.6903*x[15]*x[18]+0.8105*x[15]*x[19]+0.3583*x[15]*x[20]+0.296*x[15]*x[21]+0.6876*x[15]*x[22]-0.393*x[15]*x[23]-0.3819*x[15]*x[24]-0.3434*x[15]*x[25]+0.498*x[15]*x[26]+0.3344*x[15]*x[27]-0.6604*x[15]*x[28]+0.1448*x[15]*x[29]-0.2679*x[15]*x[30]-0.9699*x[15]*x[31]+0.4874*x[15]*x[32]-0.2642*x[15]*x[33]+0.0611*x[15]*x[34]+0.1584*x[15]*x[35]-0.3937*x[15]*x[36]+0.9029*x[15]*x[37]-0.3443*x[15]*x[38]+0.1484*x[15]*x[39]+0.4433*x[15]*x[40]+0.3218*x[15]*x[41]-0.2226*x[15]*x[42]+0.3904*x[15]*x[43]+0.6146*x[15]*x[44]-0.8245*x[15]*x[45]+0.8728*x[15]*x[46]-0.3059*x[15]*x[47]+0.8877*x[15]*x[48]+0.1024*x[15]*x[49]+0.1653*x[15]*x[50]-0.3166*x[16]*x[16]+0.13*x[16]*x[17]-0.4146*x[16]*x[18]-0.0127*x[16]*x[19]+0.4993*x[16]*x[20]+0.6925*x[16]*x[21]-0.0677*x[16]*x[22]-0.2175*x[16]*x[23]+0.828*x[16]*x[24]-0.1967*x[16]*x[25]+0.4211*x[16]*x[26]-0.2497*x[16]*x[27]+0.462*x[16]*x[28]-0.7244*x[16]*x[29]+0.5054*x[16]*x[30]-0.6719*x[16]*x[31]+0.2062*x[16]*x[32]+0.4854*x[16]*x[33]-0.8001*x[16]*x[34]+0.4813*x[16]*x[35]-0.2475*x[16]*x[36]+0.659*x[16]*x[37]-0.8335*x[16]*x[38]+0.2203*x[16]*x[39]+0.8903*x[16]*x[40]-0.7647*x[16]*x[41]+0.5881*x[16]*x[42]-0.3864*x[16]*x[43]-0.5257*x[16]*x[44]-0.5672*x[16]*x[45]-0.0589*x[16]*x[46]-0.1993*x[16]*x[47]-0.4537*x[16]*x[48]+0.7725*x[16]*x[49]+0.1709*x[16]*x[50]-0.0676*x[17]*x[17]-0.6013*x[17]*x[18]+0.8428*x[17]*x[19]-0.6915*x[17]*x[20]+0.8838*x[17]*x[21]+0.9223*x[17]*x[22]+0.5193*x[17]*x[23]+0.3182*x[17]*x[24]-0.221*x[17]*x[25]+0.6815*x[17]*x[26]-0.0966*x[17]*x[27]-0.1797*x[17]*x[28]-0.7994*x[17]*x[29]+0.6868*x[17]*x[30]+0.4518*x[17]*x[31]+0.8514*x[17]*x[32]+0.6759*x[17]*x[33]-0.6871*x[17]*x[34]+0.6584*x[17]*x[35]-0.2458*x[17]*x[36]+0.6472*x[17]*x[37]-0.3359*x[17]*x[38]-0.863*x[17]*x[39]+0.1233*x[17]*x[40]+0.6612*x[17]*x[41]+0.2013*x[17]*x[42]+0.6938*x[17]*x[43]-0.7642*x[17]*x[44]+0.3951*x[17]*x[45]-0.3524*x[17]*x[46]-0.9741*x[17]*x[47]+0.6833*x[17]*x[48]-0.4752*x[17]*x[49]-0.3353*x[17]*x[50]+0.9698*x[18]*x[18]-0.9741*x[18]*x[19]-0.1607*x[18]*x[20]+0.7583*x[18]*x[21]+0.803*x[18]*x[22]-0.4884*x[18]*x[23]+0.459*x[18]*x[24]+0.7593*x[18]*x[25]+0.3966*x[18]*x[26]+0.2922*x[18]*x[27]-0.8999*x[18]*x[28]-0.3177*x[18]*x[29]+0.2054*x[18]*x[30]-0.0702*x[18]*x[31]-0.1661*x[18]*x[32]+0.949*x[18]*x[33]+0.8319*x[18]*x[34]-0.2402*x[18]*x[35]+0.3515*x[18]*x[36]-0.6997*x[18]*x[37]+0.7683*x[18]*x[38]-0.6599*x[18]*x[39]+0.1491*x[18]*x[40]+0.4292*x[18]*x[41]+0.5753*x[18]*x[42]-0.2752*x[18]*x[43]-0.7367*x[18]*x[44]+0.2302*x[18]*x[45]+0.9897*x[18]*x[46]-0.5626*x[18]*x[47]-0.3133*x[18]*x[48]-0.113*x[18]*x[49]+0.3194*x[18]*x[50]+0.4135*x[19]*x[19]-0.4578*x[19]*x[20]-0.4937*x[19]*x[21]+0.2359*x[19]*x[22]+0.2791*x[19]*x[23]-0.8753*x[19]*x[24]-0.8146*x[19]*x[25]+0.3627*x[19]*x[26]+0.6978*x[19]*x[27]-0.1502*x[19]*x[28]+0.8516*x[19]*x[29]-0.8482*x[19]*x[30]-0.7326*x[19]*x[31]+0.3347*x[19]*x[32]-0.3677*x[19]*x[33]+0.8576*x[19]*x[34]+0.8423*x[19]*x[35]+0.4222*x[19]*x[36]+0.3568*x[19]*x[37]+0.1597*x[19]*x[38]+0.2008*x[19]*x[39]+0.6678*x[19]*x[40]-0.7699*x[19]*x[41]+0.6536*x[19]*x[42]-0.4263*x[19]*x[43]+0.5469*x[19]*x[44]+0.6991*x[19]*x[45]+0.4764*x[19]*x[46]-0.6822*x[19]*x[47]-0.709*x[19]*x[48]-0.6123*x[19]*x[49]-0.6075*x[19]*x[50]-0.6624*x[20]*x[20]+0.3302*x[20]*x[21]+0.6541*x[20]*x[22]-0.6579*x[20]*x[23]-0.5587*x[20]*x[24]-0.1261*x[20]*x[25]+0.8603*x[20]*x[26]+0.1445*x[20]*x[27]-0.773*x[20]*x[28]+0.1692*x[20]*x[29]+0.8432*x[20]*x[30]+0.8133*x[20]*x[31]+0.1169*x[20]*x[32]-0.1312*x[20]*x[33]+0.9717*x[20]*x[34]+0.3126*x[20]*x[35]+0.4154*x[20]*x[36]-0.0105*x[20]*x[37]+0.4772*x[20]*x[38]+0.1875*x[20]*x[39]+0.9525*x[20]*x[40]-0.3099*x[20]*x[41]-0.239*x[20]*x[42]+0.5059*x[20]*x[43]+0.466*x[20]*x[44]-0.334*x[20]*x[45]+0.8077*x[20]*x[46]+0.3148*x[20]*x[47]-0.4982*x[20]*x[48]+0.2499*x[20]*x[49]-0.4484*x[20]*x[50]+0.0002*x[21]*x[21]+0.9242*x[21]*x[22]-0.3877*x[21]*x[23]-0.776*x[21]*x[24]-0.4047*x[21]*x[25]-0.8727*x[21]*x[26]-0.014*x[21]*x[27]-0.9627*x[21]*x[28]-0.15*x[21]*x[29]-0.7809*x[21]*x[30]-0.4473*x[21]*x[31]+0.4151*x[21]*x[32]+0.0728*x[21]*x[33]-0.2027*x[21]*x[34]-0.4616*x[21]*x[35]+0.1176*x[21]*x[36]+0.108*x[21]*x[37]+0.3765*x[21]*x[38]+0.305*x[21]*x[39]-0.5298*x[21]*x[40]-0.0275*x[21]*x[41]-0.8101*x[21]*x[42]-0.4449*x[21]*x[43]-0.8782*x[21]*x[44]-0.6795*x[21]*x[45]-0.8655*x[21]*x[46]-0.6457*x[21]*x[47]+0.8807*x[21]*x[48]-0.7634*x[21]*x[49]+0.217*x[21]*x[50]-0.0549*x[22]*x[22]-0.9422*x[22]*x[23]-0.9389*x[22]*x[24]-0.2805*x[22]*x[25]-0.3906*x[22]*x[26]+0.8925*x[22]*x[27]+0.359*x[22]*x[28]-0.3714*x[22]*x[29]-0.5488*x[22]*x[30]+0.1483*x[22]*x[31]+0.225*x[22]*x[32]+0.7272*x[22]*x[33]-0.8881*x[22]*x[34]-0.0211*x[22]*x[35]-0.4108*x[22]*x[36]-0.0434*x[22]*x[37]-0.7799*x[22]*x[38]-0.4614*x[22]*x[39]-0.0865*x[22]*x[40]+0.3207*x[22]*x[41]+0.0431*x[22]*x[42]+0.8559*x[22]*x[43]-0.2257*x[22]*x[44]-0.1022*x[22]*x[45]-0.5768*x[22]*x[46]-0.8797*x[22]*x[47]+0.3955*x[22]*x[48]+0.7964*x[22]*x[49]+0.2734*x[22]*x[50]+0.0895*x[23]*x[23]-0.4146*x[23]*x[24]+0.9077*x[23]*x[25]-0.1895*x[23]*x[26]+0.994*x[23]*x[27]-0.6899*x[23]*x[28]+0.9394*x[23]*x[29]-0.2503*x[23]*x[30]-0.2187*x[23]*x[31]-0.1793*x[23]*x[32]+0.9029*x[23]*x[33]+0.1218*x[23]*x[34]+0.2453*x[23]*x[35]+0.7306*x[23]*x[36]-0.2001*x[23]*x[37]+0.7936*x[23]*x[38]-0.7984*x[23]*x[39]-0.589*x[23]*x[40]+0.6958*x[23]*x[41]-0.0455*x[23]*x[42]-0.267*x[23]*x[43]+0.8622*x[23]*x[44]-0.5897*x[23]*x[45]+0.1178*x[23]*x[46]+0.8772*x[23]*x[47]-0.7239*x[23]*x[48]+0.8153*x[23]*x[49]+0.9875*x[23]*x[50]+0.0661*x[24]*x[24]+0.0747*x[24]*x[25]-0.9466*x[24]*x[26]+0.9993*x[24]*x[27]+0.4921*x[24]*x[28]+0.1736*x[24]*x[29]-0.5295*x[24]*x[30]-0.5874*x[24]*x[31]-0.9963*x[24]*x[32]-0.6875*x[24]*x[33]-0.6238*x[24]*x[34]+0.0738*x[24]*x[35]+0.3122*x[24]*x[36]+0.9116*x[24]*x[37]-0.7073*x[24]*x[38]+0.3956*x[24]*x[39]+0.6408*x[24]*x[40]+0.906*x[24]*x[41]+0.4384*x[24]*x[42]-0.0051*x[24]*x[43]+0.689*x[24]*x[44]+0.8015*x[24]*x[45]-0.1671*x[24]*x[46]+0.1501*x[24]*x[47]-0.6129*x[24]*x[48]-0.4673*x[24]*x[49]-0.2172*x[24]*x[50]+0.5448*x[25]*x[25]+0.5743*x[25]*x[26]-0.2467*x[25]*x[27]+0.8448*x[25]*x[28]-0.784*x[25]*x[29]-0.2975*x[25]*x[30]-0.9803*x[25]*x[31]+0.9786*x[25]*x[32]+0.1967*x[25]*x[33]-0.9423*x[25]*x[34]-0.4481*x[25]*x[35]-0.0269*x[25]*x[36]-0.1364*x[25]*x[37]-0.9192*x[25]*x[38]+0.5189*x[25]*x[39]+0.3404*x[25]*x[40]+0.1516*x[25]*x[41]+0.4074*x[25]*x[42]-0.3842*x[25]*x[43]+0.4361*x[25]*x[44]-0.6147*x[25]*x[45]-0.8*x[25]*x[46]+0.1892*x[25]*x[47]-0.8637*x[25]*x[48]+0.3065*x[25]*x[49]+0.2325*x[25]*x[50]+0.2648*x[26]*x[26]+0.3826*x[26]*x[27]+0.6438*x[26]*x[28]-0.5217*x[26]*x[29]+0.3787*x[26]*x[30]+0.7293*x[26]*x[31]-0.1202*x[26]*x[32]+0.5314*x[26]*x[33]+0.2886*x[26]*x[34]-0.4004*x[26]*x[35]-0.3376*x[26]*x[36]-0.9079*x[26]*x[37]-0.4125*x[26]*x[38]+0.8876*x[26]*x[39]+0.3379*x[26]*x[40]-0.2619*x[26]*x[41]-0.7405*x[26]*x[42]+0.1524*x[26]*x[43]+0.8941*x[26]*x[44]+0.2131*x[26]*x[45]-0.3442*x[26]*x[46]+0.5042*x[26]*x[47]-0.931*x[26]*x[48]+0.6521*x[26]*x[49]-0.3237*x[26]*x[50]+0.27*x[27]*x[27]+0.2362*x[27]*x[28]+0.5923*x[27]*x[29]+0.986*x[27]*x[30]-0.0644*x[27]*x[31]+0.6635*x[27]*x[32]-0.7397*x[27]*x[33]+0.942*x[27]*x[34]-0.6956*x[27]*x[35]+0.7189*x[27]*x[36]+0.2027*x[27]*x[37]+0.7485*x[27]*x[38]+0.4619*x[27]*x[39]+0.0043*x[27]*x[40]+0.8381*x[27]*x[41]-0.8394*x[27]*x[42]-0.7701*x[27]*x[43]-0.3017*x[27]*x[44]-0.2722*x[27]*x[45]+0.4795*x[27]*x[46]+0.3531*x[27]*x[47]+0.2825*x[27]*x[48]+0.3274*x[27]*x[49]-0.4461*x[27]*x[50]+0.2588*x[28]*x[28]+0.5324*x[28]*x[29]-0.6424*x[28]*x[30]-0.573*x[28]*x[31]+0.6427*x[28]*x[32]+0.1464*x[28]*x[33]+0.7913*x[28]*x[34]+0.0191*x[28]*x[35]+0.6857*x[28]*x[36]+0.3674*x[28]*x[37]-0.7488*x[28]*x[38]-0.9634*x[28]*x[39]-0.2154*x[28]*x[40]+0.9814*x[28]*x[41]+0.3058*x[28]*x[42]-0.5648*x[28]*x[43]+0.043*x[28]*x[44]+0.3748*x[28]*x[45]-0.1711*x[28]*x[46]+0.1803*x[28]*x[47]-0.3642*x[28]*x[48]+0.4124*x[28]*x[49]+0.2058*x[28]*x[50]+0.2026*x[29]*x[29]+0.3626*x[29]*x[30]+0.5458*x[29]*x[31]-0.0222*x[29]*x[32]-0.7975*x[29]*x[33]-0.5112*x[29]*x[34]+0.0613*x[29]*x[35]+0.769*x[29]*x[36]+0.701*x[29]*x[37]-0.7641*x[29]*x[38]+0.3574*x[29]*x[39]-0.0437*x[29]*x[40]+0.7193*x[29]*x[41]+0.4535*x[29]*x[42]+0.5978*x[29]*x[43]+0.0133*x[29]*x[44]+0.8512*x[29]*x[45]-0.6772*x[29]*x[46]+0.5878*x[29]*x[47]-0.3585*x[29]*x[48]+0.1872*x[29]*x[49]+0.0589*x[29]*x[50]-0.3317*x[30]*x[30]+0.7479*x[30]*x[31]-0.9671*x[30]*x[32]+0.9391*x[30]*x[33]+0.9018*x[30]*x[34]+0.32*x[30]*x[35]+0.6027*x[30]*x[36]-0.6141*x[30]*x[37]+0.531*x[30]*x[38]+0.2639*x[30]*x[39]+0.3663*x[30]*x[40]-0.233*x[30]*x[41]+0.4189*x[30]*x[42]+0.4041*x[30]*x[43]+0.304*x[30]*x[44]+0.3126*x[30]*x[45]+0.0481*x[30]*x[46]-0.5275*x[30]*x[47]-0.1305*x[30]*x[48]-0.6678*x[30]*x[49]-0.5155*x[30]*x[50]+0.5784*x[31]*x[31]+0.0016*x[31]*x[32]-0.1111*x[31]*x[33]-0.3946*x[31]*x[34]-0.98*x[31]*x[35]-0.1806*x[31]*x[36]+0.988*x[31]*x[37]-0.6747*x[31]*x[38]-0.3078*x[31]*x[39]+0.2953*x[31]*x[40]-0.8559*x[31]*x[41]+0.3771*x[31]*x[42]-0.6117*x[31]*x[43]+0.1766*x[31]*x[44]+0.472*x[31]*x[45]-0.1445*x[31]*x[46]-0.1965*x[31]*x[47]+0.5678*x[31]*x[48]+0.8256*x[31]*x[49]-0.0288*x[31]*x[50]-0.0473*x[32]*x[32]+0.1173*x[32]*x[33]+0.6063*x[32]*x[34]-0.8786*x[32]*x[35]+0.8495*x[32]*x[36]+0.1714*x[32]*x[37]+0.4934*x[32]*x[38]-0.7093*x[32]*x[39]-0.5405*x[32]*x[40]+0.7902*x[32]*x[41]-0.333*x[32]*x[42]+0.9342*x[32]*x[43]+0.6046*x[32]*x[44]-0.7882*x[32]*x[45]+0.4245*x[32]*x[46]-0.3577*x[32]*x[47]-0.6746*x[32]*x[48]-0.1915*x[32]*x[49]-0.0401*x[32]*x[50]-0.9931*x[33]*x[33]+0.0294*x[33]*x[34]+0.5066*x[33]*x[35]+0.9387*x[33]*x[36]+0.4504*x[33]*x[37]-0.8174*x[33]*x[38]-0.1996*x[33]*x[39]+0.3514*x[33]*x[40]+0.316*x[33]*x[41]+0.6336*x[33]*x[42]-0.5032*x[33]*x[43]-0.4267*x[33]*x[44]-0.9986*x[33]*x[45]-0.5176*x[33]*x[46]-0.9889*x[33]*x[47]-0.2244*x[33]*x[48]-0.1486*x[33]*x[49]+0.4237*x[33]*x[50]+0.7526*x[34]*x[34]+0.3702*x[34]*x[35]-0.0792*x[34]*x[36]+0.3093*x[34]*x[37]-0.3792*x[34]*x[38]+0.5826*x[34]*x[39]-0.027*x[34]*x[40]+0.2429*x[34]*x[41]+0.4158*x[34]*x[42]-0.5107*x[34]*x[43]-0.3875*x[34]*x[44]-0.8247*x[34]*x[45]-0.1237*x[34]*x[46]-0.9108*x[34]*x[47]+0.8865*x[34]*x[48]-0.2339*x[34]*x[49]-0.3238*x[34]*x[50]+0.3171*x[35]*x[35]-0.7991*x[35]*x[36]+0.8642*x[35]*x[37]-0.3354*x[35]*x[38]-0.9854*x[35]*x[39]+0.6736*x[35]*x[40]+0.9472*x[35]*x[41]-0.6774*x[35]*x[42]+0.2819*x[35]*x[43]-0.8312*x[35]*x[44]+0.9588*x[35]*x[45]+0.6607*x[35]*x[46]-0.7955*x[35]*x[47]-0.3957*x[35]*x[48]-0.7523*x[35]*x[49]-0.232*x[35]*x[50]+0.7743*x[36]*x[36]-0.4182*x[36]*x[37]-0.8409*x[36]*x[38]+0.2953*x[36]*x[39]-0.6522*x[36]*x[40]+0.2996*x[36]*x[41]-0.319*x[36]*x[42]+0.092*x[36]*x[43]-0.9485*x[36]*x[44]+0.7382*x[36]*x[45]-0.1359*x[36]*x[46]+0.3935*x[36]*x[47]+0.8373*x[36]*x[48]+0.8982*x[36]*x[49]-0.5906*x[36]*x[50]-0.1772*x[37]*x[37]+0.834*x[37]*x[38]-0.6971*x[37]*x[39]-0.5593*x[37]*x[40]+0.5782*x[37]*x[41]-0.0524*x[37]*x[42]+0.3458*x[37]*x[43]-0.5235*x[37]*x[44]-0.1639*x[37]*x[45]+0.8372*x[37]*x[46]+0.6061*x[37]*x[47]-0.0421*x[37]*x[48]+0.0078*x[37]*x[49]+0.992*x[37]*x[50]-0.9383*x[38]*x[38]+0.3232*x[38]*x[39]-0.1077*x[38]*x[40]-0.6034*x[38]*x[41]+0.5167*x[38]*x[42]+0.5893*x[38]*x[43]+0.3498*x[38]*x[44]+0.9897*x[38]*x[45]-0.4292*x[38]*x[46]+0.6811*x[38]*x[47]-0.9318*x[38]*x[48]-0.628*x[38]*x[49]-0.7347*x[38]*x[50]-0.6338*x[39]*x[39]-0.0089*x[39]*x[40]+0.435*x[39]*x[41]-0.9752*x[39]*x[42]+0.7921*x[39]*x[43]-0.6234*x[39]*x[44]-0.2596*x[39]*x[45]+0.038*x[39]*x[46]+0.7493*x[39]*x[47]+0.0256*x[39]*x[48]-0.457*x[39]*x[49]-0.3738*x[39]*x[50]+0.2854*x[40]*x[40]-0.4543*x[40]*x[41]-0.03*x[40]*x[42]-0.9105*x[40]*x[43]-0.7535*x[40]*x[44]-0.1891*x[40]*x[45]+0.6336*x[40]*x[46]+0.1559*x[40]*x[47]-0.3327*x[40]*x[48]-0.0413*x[40]*x[49]-0.3352*x[40]*x[50]-0.9197*x[41]*x[41]-0.3498*x[41]*x[42]-0.3321*x[41]*x[43]+0.3069*x[41]*x[44]-0.6815*x[41]*x[45]-0.9023*x[41]*x[46]-0.3243*x[41]*x[47]-0.7002*x[41]*x[48]+0.8733*x[41]*x[49]+0.7257*x[41]*x[50]+0.807*x[42]*x[42]-0.3247*x[42]*x[43]+0.751*x[42]*x[44]-0.1371*x[42]*x[45]+0.3378*x[42]*x[46]+0.4854*x[42]*x[47]+0.6818*x[42]*x[48]-0.2154*x[42]*x[49]+0.9713*x[42]*x[50]+0.0508*x[43]*x[43]-0.0821*x[43]*x[44]-0.2744*x[43]*x[45]+0.3301*x[43]*x[46]+0.0977*x[43]*x[47]+0.7447*x[43]*x[48]+0.152*x[43]*x[49]+0.6629*x[43]*x[50]-0.8393*x[44]*x[44]+0.1067*x[44]*x[45]-0.9084*x[44]*x[46]+0.761*x[44]*x[47]+0.5597*x[44]*x[48]-0.2003*x[44]*x[49]-0.9542*x[44]*x[50]-0.1824*x[45]*x[45]-0.8383*x[45]*x[46]-0.6698*x[45]*x[47]+0.0278*x[45]*x[48]-0.6996*x[45]*x[49]-0.3721*x[45]*x[50]-0.0097*x[46]*x[46]-0.1389*x[46]*x[47]-0.1557*x[46]*x[48]+0.3259*x[46]*x[49]+0.2066*x[46]*x[50]+0.4973*x[47]*x[47]-0.0794*x[47]*x[48]+0.9822*x[47]*x[49]+0.9661*x[47]*x[50]-0.7344*x[48]*x[48]+0.5813*x[48]*x[49]-0.0259*x[48]*x[50]-0.8178*x[49]*x[49]+0.1696*x[49]*x[50]+0.0474*x[50]*x[50]-0.6102*x[1]+0.3413*x[2]-0.0321*x[3]+0.3867*x[4]-0.9594*x[5]-0.0941*x[6]+0.2824*x[7]+0.2279*x[8]-0.2678*x[9]+0.8357*x[10]-0.1385*x[11]-0.0028*x[12]+0.6343*x[13]+0.6558*x[14]-0.3929*x[15]+0.5754*x[16]+0.5376*x[17]-0.9033*x[18]-0.3758*x[19]+0.0538*x[20]+0.5201*x[21]+0.0502*x[22]+0.6526*x[23]+0.3788*x[24]-0.2957*x[25]+0.2894*x[26]-0.7789*x[27]-0.7901*x[28]+0.4762*x[29]+0.4641*x[30]+0.4006*x[31]+0.9277*x[32]+0.1455*x[33]-0.2138*x[34]+0.5281*x[35]-0.3557*x[36]+0.9451*x[37]+0.3845*x[38]-0.931*x[39]-0.7231*x[40]-0.1203*x[41]+0.6813*x[42]-0.1748*x[43]-0.893*x[44]+0.3339*x[45]+0.1493*x[46]-0.0821*x[47]+0.497*x[48]-0.9345*x[49]+0.4136*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

m = m 		 # model get returned when including this script. 
