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
@NLconstraint(m, e1, -(-1.4728*x[1]*x[5]-0.4877*x[1]*x[6]-1.8728*x[1]*x[9]+1.7595*x[1]*x[33]-1.3391*x[2]*x[5]+0.2897*x[2]*x[6]-0.633*x[2]*x[8]-1.7998*x[2]*x[10]+0.6372*x[2]*x[14]-1.5966*x[2]*x[17]+0.8412*x[2]*x[19]-1.3269*x[2]*x[20]-1.7693*x[2]*x[21]-1.0121*x[2]*x[23]+0.6401*x[2]*x[27]+0.7424*x[2]*x[30]-1.5659*x[2]*x[31]-1.7447*x[2]*x[32]+1.7187*x[2]*x[37]+1.1896*x[2]*x[45]+1.6917*x[2]*x[48]+0.6779*x[3]*x[16]-1.9678*x[3]*x[23]+0.9888*x[3]*x[24]-1.3431*x[3]*x[31]+1.9749*x[3]*x[33]+1.8404*x[3]*x[38]-0.4115*x[3]*x[43]-0.3527*x[3]*x[44]-1.8878*x[3]*x[49]-0.5071*x[4]*x[9]+0.3472*x[4]*x[14]+0.5239*x[4]*x[15]-0.0809*x[4]*x[16]+0.2041*x[4]*x[20]+1.4729*x[4]*x[44]+0.174*x[4]*x[47]+1.844*x[4]*x[49]+0.1209*x[4]*x[50]+1.312*x[5]*x[8]-1.0681*x[5]*x[9]-1.5801*x[5]*x[10]+0.0824*x[5]*x[22]-0.6584*x[5]*x[26]-1.8273*x[5]*x[28]+1.9656*x[5]*x[34]-0.7339*x[5]*x[36]+1.9937*x[5]*x[38]+0.744*x[5]*x[41]-0.0564*x[5]*x[44]+0.2327*x[5]*x[45]-1.2097*x[5]*x[50]-1.665*x[6]*x[7]-0.3089*x[6]*x[13]-0.4508*x[6]*x[21]+1.7183*x[6]*x[32]+1.6667*x[6]*x[35]-1.4549*x[6]*x[38]-1.1408*x[6]*x[39]+0.5341*x[6]*x[41]-0.99*x[6]*x[46]+1.0763*x[7]*x[8]-1.0097*x[7]*x[11]+0.6349*x[7]*x[17]+1.0746*x[7]*x[19]+1.8108*x[7]*x[26]+0.6107*x[7]*x[34]-0.9218*x[7]*x[35]+1.4332*x[7]*x[38]-0.5085*x[7]*x[46]-1.8844*x[8]*x[8]-0.5203*x[8]*x[10]-1.4706*x[8]*x[22]-0.1523*x[8]*x[24]-0.7575*x[8]*x[37]+0.3194*x[8]*x[44]+0.5533*x[8]*x[46]-0.0612*x[9]*x[9]+1.6291*x[9]*x[10]+1.2676*x[9]*x[13]+1.6663*x[9]*x[15]-0.0358*x[9]*x[23]+0.5424*x[9]*x[26]+1.1168*x[9]*x[28]-1.9446*x[9]*x[30]+0.1653*x[9]*x[34]-0.5165*x[9]*x[37]+1.0653*x[9]*x[38]-0.597*x[9]*x[40]-0.5101*x[9]*x[41]+0.3999*x[9]*x[42]-1.9579*x[9]*x[44]-0.9682*x[9]*x[48]+1.726*x[9]*x[49]+1.1228*x[10]*x[12]-1.8377*x[10]*x[32]+0.9313*x[10]*x[34]-1.9706*x[10]*x[35]+0.3702*x[10]*x[36]-0.0225*x[10]*x[39]+0.0529*x[10]*x[44]+1.4788*x[10]*x[45]-1.5155*x[10]*x[49]+1.4433*x[11]*x[13]+0.8067*x[11]*x[19]+1.914*x[11]*x[20]-1.2214*x[11]*x[23]+1.8848*x[11]*x[33]+1.5311*x[11]*x[34]-0.7381*x[11]*x[36]+0.7287*x[11]*x[37]-1.7187*x[11]*x[44]+0.9884*x[11]*x[45]+1.1036*x[12]*x[22]+1.0649*x[12]*x[28]-1.5837*x[12]*x[29]+0.2556*x[12]*x[32]-0.4002*x[12]*x[38]+0.1486*x[12]*x[42]+0.7453*x[12]*x[43]-0.576*x[12]*x[45]-1.0893*x[12]*x[46]-0.2603*x[13]*x[17]+1.8219*x[13]*x[19]+1.1355*x[13]*x[21]+1.1382*x[13]*x[22]-1.606*x[13]*x[23]-0.9734*x[13]*x[25]-1.4896*x[13]*x[34]-1.4471*x[13]*x[36]+1.0298*x[13]*x[37]+1.0862*x[13]*x[42]-0.7985*x[13]*x[46]+0.5275*x[13]*x[49]+1.1081*x[14]*x[15]+1.7269*x[14]*x[21]+0.1757*x[14]*x[25]-1.2962*x[14]*x[26]-1.8121*x[14]*x[27]-0.0485*x[14]*x[28]-0.8134*x[14]*x[30]+1.1133*x[14]*x[35]+1.1256*x[14]*x[47]-0.8736*x[15]*x[19]+1.016*x[15]*x[25]-1.6727*x[15]*x[34]-1.6062*x[15]*x[37]+0.3451*x[15]*x[38]+0.3139*x[15]*x[40]-0.5462*x[15]*x[42]+1.853*x[15]*x[44]+1.7576*x[15]*x[48]-0.7964*x[16]*x[16]+1.7859*x[16]*x[17]+1.2557*x[16]*x[25]+0.7948*x[16]*x[26]+1.3629*x[16]*x[29]+1.5631*x[16]*x[32]+0.4703*x[16]*x[36]-0.4271*x[16]*x[38]-0.8011*x[16]*x[41]+0.4086*x[16]*x[43]-0.5918*x[16]*x[47]-1.542*x[16]*x[49]+1.6492*x[17]*x[22]+0.7186*x[17]*x[24]+0.1993*x[17]*x[27]+1.7751*x[17]*x[32]+1.2144*x[17]*x[41]+1.9337*x[17]*x[42]-0.3557*x[17]*x[44]+0.1751*x[17]*x[48]+0.3834*x[18]*x[19]-0.9717*x[18]*x[30]-1.6468*x[18]*x[32]-0.5563*x[18]*x[33]+1.8588*x[18]*x[36]-1.9994*x[18]*x[37]+0.1776*x[18]*x[38]-0.8859*x[18]*x[46]-0.5742*x[18]*x[50]+1.5613*x[19]*x[19]-1.5391*x[19]*x[21]-0.9877*x[19]*x[27]-0.1625*x[19]*x[28]-0.2594*x[19]*x[34]+0.8543*x[19]*x[38]+0.0785*x[19]*x[39]-0.8744*x[19]*x[41]-1.4737*x[19]*x[42]-1.9685*x[19]*x[45]+0.0846*x[19]*x[47]+0.1286*x[19]*x[48]-1.6775*x[19]*x[49]-1.3662*x[20]*x[21]-0.9735*x[20]*x[23]-1.5006*x[20]*x[24]-1.8339*x[20]*x[29]+0.6541*x[20]*x[32]-1.8812*x[20]*x[43]+1.3251*x[20]*x[50]-1.6868*x[21]*x[26]+0.4337*x[21]*x[35]+1.1911*x[21]*x[41]-0.7984*x[21]*x[42]+0.5444*x[22]*x[22]+0.058*x[22]*x[26]+1.3256*x[22]*x[28]-0.4554*x[22]*x[32]-1.0331*x[22]*x[34]+1.8719*x[22]*x[38]+0.9876*x[22]*x[46]+0.2169*x[22]*x[48]-0.448*x[22]*x[50]-1.7428*x[23]*x[25]-0.6529*x[23]*x[31]-0.0487*x[23]*x[33]+0.2749*x[23]*x[34]-1.1306*x[23]*x[35]+0.8851*x[23]*x[43]-1.5362*x[23]*x[47]+1.8586*x[24]*x[26]+0.1901*x[24]*x[30]+0.8756*x[24]*x[31]-1.8048*x[24]*x[36]-0.0011*x[24]*x[39]+0.3646*x[24]*x[42]+1.4581*x[24]*x[46]-0.6427*x[25]*x[27]+0.5938*x[25]*x[32]+0.9974*x[25]*x[35]-0.1809*x[25]*x[37]-0.038*x[25]*x[39]+0.7447*x[25]*x[43]-0.0555*x[25]*x[48]-0.3289*x[25]*x[49]-0.5615*x[26]*x[28]-0.6619*x[26]*x[30]-1.3664*x[26]*x[32]-1.7732*x[26]*x[33]+0.0523*x[26]*x[36]+1.1237*x[26]*x[38]+1.3968*x[26]*x[39]+1.5452*x[26]*x[47]-1.7737*x[26]*x[49]+1.2644*x[27]*x[27]+1.151*x[27]*x[29]+0.935*x[27]*x[34]+0.6043*x[27]*x[36]-0.2746*x[27]*x[38]+1.7524*x[27]*x[39]-0.897*x[27]*x[40]-1.9232*x[27]*x[41]+1.0623*x[27]*x[47]-1.7558*x[27]*x[50]-1.8207*x[28]*x[39]-1.9318*x[28]*x[40]-1.2784*x[28]*x[46]-1.8423*x[28]*x[48]-0.7879*x[29]*x[30]-0.2398*x[29]*x[31]+1.3238*x[29]*x[32]+0.1557*x[29]*x[33]-0.5652*x[29]*x[37]+0.9415*x[29]*x[42]-0.0265*x[29]*x[46]+0.3222*x[29]*x[47]+1.5195*x[30]*x[32]-1.4413*x[30]*x[40]-1.4682*x[30]*x[41]+1.8944*x[30]*x[45]+0.1329*x[31]*x[33]+1.0482*x[31]*x[36]-0.9249*x[31]*x[39]-0.6819*x[31]*x[40]-1.1315*x[32]*x[33]-1.871*x[32]*x[35]-0.126*x[32]*x[40]+0.148*x[32]*x[49]-0.8108*x[33]*x[46]-0.8416*x[34]*x[40]+0.1699*x[34]*x[43]+1.9019*x[34]*x[45]-0.699*x[34]*x[47]+1.9173*x[34]*x[49]-0.5508*x[35]*x[35]-1.0131*x[35]*x[41]+1.2428*x[35]*x[44]-1.0154*x[35]*x[46]+1.8425*x[36]*x[38]+0.5693*x[36]*x[40]+1.298*x[36]*x[45]+0.5981*x[36]*x[48]+1.4939*x[37]*x[42]-1.7681*x[37]*x[50]-0.0405*x[38]*x[40]+1.9893*x[38]*x[41]-0.4918*x[38]*x[45]-0.4515*x[38]*x[48]-1.6622*x[39]*x[42]+0.1543*x[40]*x[42]-1.0866*x[40]*x[44]+1.4572*x[41]*x[41]-0.4475*x[41]*x[45]+1.8451*x[41]*x[48]+0.7696*x[42]*x[44]+1.5933*x[42]*x[48]+0.4808*x[43]*x[44]-0.834*x[43]*x[45]-1.3591*x[43]*x[46]-0.2652*x[43]*x[47]-0.9584*x[43]*x[49]-0.9832*x[44]*x[47]-1.0704*x[44]*x[50]-0.438*x[45]*x[46]-1.7108*x[45]*x[47]-0.2669*x[46]*x[47]-0.3918*x[46]*x[48]-0.3659*x[1]-0.9626*x[2]+0.3125*x[3]-0.9484*x[4]-0.0054*x[5]-0.6158*x[6]+0.9396*x[7]-0.1757*x[8]-0.7912*x[9]-0.95*x[10]+0.4887*x[11]+0.7019*x[12]+0.6019*x[13]-0.8171*x[14]+0.2866*x[15]+0.6855*x[16]-0.8868*x[17]+0.724*x[18]+0.4656*x[19]-0.9901*x[20]+0.4581*x[21]-0.999*x[22]+0.2168*x[23]-0.3081*x[24]-0.3446*x[25]-0.8796*x[26]-0.0782*x[27]+0.6861*x[28]-0.2288*x[29]+0.3206*x[30]-0.1097*x[31]-0.9174*x[32]+0.483*x[33]-0.9674*x[34]+0.201*x[35]+0.3907*x[36]+0.5618*x[37]+0.5785*x[38]+0.6697*x[39]+0.1999*x[40]+0.1005*x[41]-0.1216*x[42]+0.597*x[43]+0.8168*x[44]-0.6426*x[45]-0.517*x[46]+0.1262*x[47]+0.5641*x[48]+0.1047*x[49]+0.8031*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

m = m 		 # model get returned when including this script. 
