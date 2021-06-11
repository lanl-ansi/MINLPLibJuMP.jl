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
@NLconstraint(m, e1, -(0.9951*x[1]*x[1]+0.1336*x[1]*x[2]+0.9318*x[1]*x[3]+0.4959*x[1]*x[4]-0.2652*x[1]*x[5]-0.0387*x[1]*x[6]-0.8525*x[1]*x[7]-0.9893*x[1]*x[8]-0.3058*x[1]*x[9]-0.3155*x[1]*x[10]-0.5641*x[1]*x[11]-0.7337*x[1]*x[12]+0.801*x[1]*x[13]-0.2265*x[1]*x[14]-0.109*x[1]*x[15]+0.3239*x[1]*x[16]-0.9678*x[1]*x[17]+0.3017*x[1]*x[18]+0.2928*x[1]*x[19]-0.354*x[1]*x[20]+0.7114*x[1]*x[21]-0.1974*x[1]*x[22]-0.5863*x[1]*x[23]+0.9371*x[1]*x[24]+0.1968*x[1]*x[25]+0.346*x[1]*x[26]-0.0862*x[1]*x[27]-0.34*x[1]*x[28]-0.7992*x[1]*x[29]+0.5109*x[1]*x[30]+0.2114*x[1]*x[31]+0.4381*x[1]*x[32]+0.7947*x[1]*x[33]+0.3165*x[1]*x[34]-0.6986*x[1]*x[35]+0.2246*x[1]*x[36]+0.9573*x[1]*x[37]+0.9983*x[1]*x[38]-0.4864*x[1]*x[39]+0.1017*x[1]*x[40]+0.3181*x[1]*x[41]+0.108*x[1]*x[42]+0.9555*x[1]*x[43]+0.8038*x[1]*x[44]+0.3158*x[1]*x[45]+0.4577*x[1]*x[46]-0.1951*x[1]*x[47]+0.8573*x[1]*x[48]-0.7043*x[1]*x[49]+0.3491*x[1]*x[50]+0.5392*x[2]*x[2]-0.3214*x[2]*x[3]-0.7684*x[2]*x[4]+0.2287*x[2]*x[5]+0.6412*x[2]*x[6]+0.8942*x[2]*x[7]+0.4623*x[2]*x[8]-0.0048*x[2]*x[9]-0.2504*x[2]*x[10]-0.157*x[2]*x[11]+0.1058*x[2]*x[12]+0.9958*x[2]*x[13]+0.9808*x[2]*x[14]+0.4926*x[2]*x[15]+0.9075*x[2]*x[16]-0.8135*x[2]*x[17]+0.468*x[2]*x[18]+0.5035*x[2]*x[19]+0.8937*x[2]*x[20]+0.4124*x[2]*x[21]+0.6276*x[2]*x[22]+0.1172*x[2]*x[23]-0.8766*x[2]*x[24]-0.0392*x[2]*x[25]+0.1954*x[2]*x[26]-0.7249*x[2]*x[27]+0.1748*x[2]*x[28]+0.0399*x[2]*x[29]+0.7718*x[2]*x[30]-0.3924*x[2]*x[31]+0.3393*x[2]*x[32]+0.3299*x[2]*x[33]+0.0074*x[2]*x[34]-0.4768*x[2]*x[35]-0.8469*x[2]*x[36]-0.7975*x[2]*x[37]+0.0985*x[2]*x[38]-0.2488*x[2]*x[39]-0.9697*x[2]*x[40]+0.5858*x[2]*x[41]+0.2418*x[2]*x[42]+0.5472*x[2]*x[43]+0.9072*x[2]*x[44]-0.7715*x[2]*x[45]-0.3631*x[2]*x[46]+0.1936*x[2]*x[47]-0.9037*x[2]*x[48]-0.7716*x[2]*x[49]-0.5681*x[2]*x[50]-0.7989*x[3]*x[3]-0.8533*x[3]*x[4]-0.5063*x[3]*x[5]-0.1132*x[3]*x[6]-0.5833*x[3]*x[7]+0.134*x[3]*x[8]-0.9514*x[3]*x[9]-0.1594*x[3]*x[10]-0.2043*x[3]*x[11]+0.9532*x[3]*x[12]+0.3852*x[3]*x[13]-0.9901*x[3]*x[14]-0.7402*x[3]*x[15]-0.9064*x[3]*x[16]+0.6796*x[3]*x[17]+0.357*x[3]*x[18]+0.1639*x[3]*x[19]+0.4671*x[3]*x[20]-0.7679*x[3]*x[21]+0.6806*x[3]*x[22]+0.67*x[3]*x[23]+0.4931*x[3]*x[24]+0.6864*x[3]*x[25]+0.0577*x[3]*x[26]+0.331*x[3]*x[27]+0.4615*x[3]*x[28]-0.1788*x[3]*x[29]-0.2886*x[3]*x[30]+0.4708*x[3]*x[31]-0.0574*x[3]*x[32]-0.0747*x[3]*x[33]+0.5194*x[3]*x[34]+0.4049*x[3]*x[35]-0.4841*x[3]*x[36]+0.8754*x[3]*x[37]-0.0878*x[3]*x[38]+0.617*x[3]*x[39]+0.8177*x[3]*x[40]+0.3898*x[3]*x[41]-0.561*x[3]*x[42]+0.7099*x[3]*x[43]+0.4888*x[3]*x[44]-0.3978*x[3]*x[45]+0.3439*x[3]*x[46]+0.2374*x[3]*x[47]+0.9351*x[3]*x[48]+0.9805*x[3]*x[49]-0.324*x[3]*x[50]+0.8415*x[4]*x[4]-0.3219*x[4]*x[5]+0.8619*x[4]*x[6]+0.0931*x[4]*x[7]-0.069*x[4]*x[8]-0.6462*x[4]*x[9]-0.244*x[4]*x[10]-0.6496*x[4]*x[11]-0.2863*x[4]*x[12]+0.3314*x[4]*x[13]+0.2371*x[4]*x[14]-0.0621*x[4]*x[15]-0.3675*x[4]*x[16]-0.4622*x[4]*x[17]-0.6002*x[4]*x[18]-0.1691*x[4]*x[19]+0.9586*x[4]*x[20]+0.0864*x[4]*x[21]-0.741*x[4]*x[22]+0.6095*x[4]*x[23]+0.6916*x[4]*x[24]+0.4181*x[4]*x[25]+0.0579*x[4]*x[26]+0.3277*x[4]*x[27]+0.8015*x[4]*x[28]+0.8823*x[4]*x[29]-0.7712*x[4]*x[30]+0.7333*x[4]*x[31]+0.2647*x[4]*x[32]-0.5144*x[4]*x[33]-0.6792*x[4]*x[34]-0.9575*x[4]*x[35]-0.6195*x[4]*x[36]-0.3753*x[4]*x[37]+0.6193*x[4]*x[38]+0.1474*x[4]*x[39]+0.6525*x[4]*x[40]-0.4271*x[4]*x[41]-0.679*x[4]*x[42]-0.3382*x[4]*x[43]-0.4683*x[4]*x[44]+0.0896*x[4]*x[45]+0.107*x[4]*x[46]-0.9568*x[4]*x[47]-0.7025*x[4]*x[48]-0.7902*x[4]*x[49]+0.2284*x[4]*x[50]-0.1874*x[5]*x[5]+0.8031*x[5]*x[6]+0.8857*x[5]*x[7]-0.6868*x[5]*x[8]+0.8739*x[5]*x[9]-0.7291*x[5]*x[10]-0.2574*x[5]*x[11]-0.357*x[5]*x[12]+0.4299*x[5]*x[13]+0.4594*x[5]*x[14]-0.2428*x[5]*x[15]+0.6579*x[5]*x[16]+0.9073*x[5]*x[17]-0.3832*x[5]*x[18]+0.1595*x[5]*x[19]-0.5331*x[5]*x[20]+0.6888*x[5]*x[21]-0.4837*x[5]*x[22]+0.6795*x[5]*x[23]+0.0753*x[5]*x[24]+0.2431*x[5]*x[25]-0.0184*x[5]*x[26]-0.4303*x[5]*x[27]-0.5289*x[5]*x[28]+0.3028*x[5]*x[29]+0.2143*x[5]*x[30]-0.2037*x[5]*x[31]+0.6976*x[5]*x[32]+0.2752*x[5]*x[33]-0.4824*x[5]*x[34]-0.2823*x[5]*x[35]+0.1237*x[5]*x[36]-0.7571*x[5]*x[37]+0.9569*x[5]*x[38]-0.2336*x[5]*x[39]+0.4414*x[5]*x[40]-0.2835*x[5]*x[41]+0.8198*x[5]*x[42]+0.0874*x[5]*x[43]+0.9194*x[5]*x[44]+0.8589*x[5]*x[45]+0.2666*x[5]*x[46]-0.4088*x[5]*x[47]-0.6505*x[5]*x[48]+0.6852*x[5]*x[49]+0.2372*x[5]*x[50]+0.4118*x[6]*x[6]-0.5151*x[6]*x[7]+0.5959*x[6]*x[8]-0.218*x[6]*x[9]-0.7801*x[6]*x[10]+0.5074*x[6]*x[11]-0.9404*x[6]*x[12]+0.4013*x[6]*x[13]+0.0504*x[6]*x[14]+0.5051*x[6]*x[15]+0.2954*x[6]*x[16]+0.7422*x[6]*x[17]+0.6614*x[6]*x[18]+0.9144*x[6]*x[19]-0.5555*x[6]*x[20]+0.159*x[6]*x[21]+0.9815*x[6]*x[22]+0.6799*x[6]*x[23]-0.6504*x[6]*x[24]+0.4191*x[6]*x[25]-0.3969*x[6]*x[26]-0.9499*x[6]*x[27]+0.8335*x[6]*x[28]+0.3776*x[6]*x[29]+0.5135*x[6]*x[30]+0.8655*x[6]*x[31]-0.89*x[6]*x[32]-0.0021*x[6]*x[33]-0.881*x[6]*x[34]-0.6563*x[6]*x[35]+0.3767*x[6]*x[36]-0.3868*x[6]*x[37]+0.4704*x[6]*x[38]+0.5043*x[6]*x[39]-0.2086*x[6]*x[40]-0.8244*x[6]*x[41]-0.9021*x[6]*x[42]+0.5587*x[6]*x[43]+0.3616*x[6]*x[44]-0.3769*x[6]*x[45]+0.0455*x[6]*x[46]+0.0116*x[6]*x[47]-0.1229*x[6]*x[48]+0.1753*x[6]*x[49]-0.4053*x[6]*x[50]-0.4102*x[7]*x[7]-0.8524*x[7]*x[8]+0.9499*x[7]*x[9]+0.4563*x[7]*x[10]+0.5162*x[7]*x[11]-0.3816*x[7]*x[12]-0.507*x[7]*x[13]-0.4862*x[7]*x[14]+0.2361*x[7]*x[15]+0.8756*x[7]*x[16]+0.9844*x[7]*x[17]-0.5504*x[7]*x[18]+0.8946*x[7]*x[19]+0.6956*x[7]*x[20]+0.4003*x[7]*x[21]+0.1089*x[7]*x[22]-0.1168*x[7]*x[23]-0.5016*x[7]*x[24]+0.7953*x[7]*x[25]-0.7085*x[7]*x[26]-0.1308*x[7]*x[27]-0.0852*x[7]*x[28]-0.3812*x[7]*x[29]-0.0382*x[7]*x[30]+0.3795*x[7]*x[31]+0.6216*x[7]*x[32]-0.2157*x[7]*x[33]-0.4137*x[7]*x[34]+0.152*x[7]*x[35]+0.4507*x[7]*x[36]-0.7145*x[7]*x[37]-0.3329*x[7]*x[38]-0.6792*x[7]*x[39]+0.0692*x[7]*x[40]+0.4467*x[7]*x[41]-0.5436*x[7]*x[42]-0.602*x[7]*x[43]+0.9452*x[7]*x[44]+0.9871*x[7]*x[45]-0.8361*x[7]*x[46]-0.4982*x[7]*x[47]-0.5683*x[7]*x[48]-0.6084*x[7]*x[49]+0.7005*x[7]*x[50]-0.9106*x[8]*x[8]+0.7278*x[8]*x[9]-0.8657*x[8]*x[10]-0.1454*x[8]*x[11]-0.7254*x[8]*x[12]-0.7618*x[8]*x[13]-0.3881*x[8]*x[14]+0.2265*x[8]*x[15]+0.3273*x[8]*x[16]+0.7918*x[8]*x[17]+0.5074*x[8]*x[18]+0.2597*x[8]*x[19]-0.558*x[8]*x[20]-0.0323*x[8]*x[21]+0.23*x[8]*x[22]+0.9753*x[8]*x[23]+0.1184*x[8]*x[24]-0.2582*x[8]*x[25]-0.3248*x[8]*x[26]+0.4909*x[8]*x[27]+0.1395*x[8]*x[28]-0.0877*x[8]*x[29]+0.2964*x[8]*x[30]+0.3672*x[8]*x[31]-0.6592*x[8]*x[32]-0.4539*x[8]*x[33]-0.1185*x[8]*x[34]-0.0846*x[8]*x[35]-0.2095*x[8]*x[36]+0.3767*x[8]*x[37]-0.4022*x[8]*x[38]-0.5895*x[8]*x[39]-0.6154*x[8]*x[40]-0.162*x[8]*x[41]+0.3813*x[8]*x[42]-0.7189*x[8]*x[43]-0.7125*x[8]*x[44]+0.3249*x[8]*x[45]+0.1514*x[8]*x[46]+0.5499*x[8]*x[47]+0.5506*x[8]*x[48]+0.5307*x[8]*x[49]+0.753*x[8]*x[50]-0.8016*x[9]*x[9]-0.331*x[9]*x[10]+0.2902*x[9]*x[11]-0.7368*x[9]*x[12]+0.6151*x[9]*x[13]+0.0837*x[9]*x[14]-0.4685*x[9]*x[15]-0.0823*x[9]*x[16]+0.0219*x[9]*x[17]+0.0097*x[9]*x[18]+0.9235*x[9]*x[19]+0.1005*x[9]*x[20]-0.6207*x[9]*x[21]-0.5978*x[9]*x[22]-0.5025*x[9]*x[23]+0.9402*x[9]*x[24]+0.5528*x[9]*x[25]-0.4546*x[9]*x[26]-0.0061*x[9]*x[27]-0.2025*x[9]*x[28]+0.2266*x[9]*x[29]-0.8295*x[9]*x[30]+0.474*x[9]*x[31]+0.7257*x[9]*x[32]-0.3179*x[9]*x[33]+0.3889*x[9]*x[34]+0.2838*x[9]*x[35]-0.829*x[9]*x[36]+0.416*x[9]*x[37]+0.1849*x[9]*x[38]-0.5344*x[9]*x[39]-0.8496*x[9]*x[40]-0.3513*x[9]*x[41]+0.8262*x[9]*x[42]-0.5914*x[9]*x[43]-0.0945*x[9]*x[44]+0.4543*x[9]*x[45]-0.9433*x[9]*x[46]+0.0341*x[9]*x[47]+0.5353*x[9]*x[48]+0.7887*x[9]*x[49]+0.889*x[9]*x[50]-0.4204*x[10]*x[10]+0.0629*x[10]*x[11]-0.5343*x[10]*x[12]-0.3744*x[10]*x[13]-0.717*x[10]*x[14]-0.3148*x[10]*x[15]-0.6929*x[10]*x[16]+0.6984*x[10]*x[17]+0.9441*x[10]*x[18]-0.1182*x[10]*x[19]+0.5489*x[10]*x[20]-0.0876*x[10]*x[21]+0.729*x[10]*x[22]+0.456*x[10]*x[23]+0.2747*x[10]*x[24]+0.4481*x[10]*x[25]+0.2084*x[10]*x[26]-0.9474*x[10]*x[27]-0.4145*x[10]*x[28]-0.6056*x[10]*x[29]+0.8973*x[10]*x[30]+0.0637*x[10]*x[31]-0.9793*x[10]*x[32]-0.0957*x[10]*x[33]+0.9272*x[10]*x[34]+0.9722*x[10]*x[35]-0.3182*x[10]*x[36]+0.9186*x[10]*x[37]-0.3466*x[10]*x[38]+0.4085*x[10]*x[39]+0.5809*x[10]*x[40]+0.4471*x[10]*x[41]+0.4579*x[10]*x[42]-0.1092*x[10]*x[43]-0.2364*x[10]*x[44]+0.8444*x[10]*x[45]+0.4968*x[10]*x[46]-0.1465*x[10]*x[47]-0.5651*x[10]*x[48]+0.4588*x[10]*x[49]+0.5938*x[10]*x[50]+0.1168*x[11]*x[11]+0.7708*x[11]*x[12]-0.2337*x[11]*x[13]-0.5184*x[11]*x[14]-0.3698*x[11]*x[15]-0.1342*x[11]*x[16]-0.904*x[11]*x[17]-0.1518*x[11]*x[18]+0.4747*x[11]*x[19]+0.7456*x[11]*x[20]-0.384*x[11]*x[21]+0.6866*x[11]*x[22]+0.6322*x[11]*x[23]-0.1864*x[11]*x[24]+0.73*x[11]*x[25]+0.7045*x[11]*x[26]+0.0242*x[11]*x[27]+0.5528*x[11]*x[28]-0.0143*x[11]*x[29]-0.5903*x[11]*x[30]-0.1097*x[11]*x[31]-0.1329*x[11]*x[32]-0.8906*x[11]*x[33]+0.401*x[11]*x[34]+0.8385*x[11]*x[35]-0.222*x[11]*x[36]-0.5022*x[11]*x[37]-0.2673*x[11]*x[38]+0.9973*x[11]*x[39]+0.3242*x[11]*x[40]-0.6405*x[11]*x[41]+0.7448*x[11]*x[42]-0.5121*x[11]*x[43]-0.7672*x[11]*x[44]+0.6364*x[11]*x[45]+0.0713*x[11]*x[46]+0.9761*x[11]*x[47]-0.1674*x[11]*x[48]+0.6164*x[11]*x[49]-0.5201*x[11]*x[50]+0.9405*x[12]*x[12]-0.2474*x[12]*x[13]+0.2668*x[12]*x[14]-0.7262*x[12]*x[15]+0.5369*x[12]*x[16]-0.7976*x[12]*x[17]+0.1039*x[12]*x[18]+0.6633*x[12]*x[19]-0.2455*x[12]*x[20]+0.7355*x[12]*x[21]+0.2493*x[12]*x[22]+0.1046*x[12]*x[23]-0.5768*x[12]*x[24]+0.6454*x[12]*x[25]-0.2728*x[12]*x[26]-0.539*x[12]*x[27]-0.3418*x[12]*x[28]+0.3602*x[12]*x[29]-0.1419*x[12]*x[30]-0.0954*x[12]*x[31]+0.8552*x[12]*x[32]-0.1075*x[12]*x[33]+0.3345*x[12]*x[34]+0.5617*x[12]*x[35]+0.5817*x[12]*x[36]-0.6045*x[12]*x[37]-0.4872*x[12]*x[38]+0.3536*x[12]*x[39]+0.7971*x[12]*x[40]-0.25*x[12]*x[41]-0.9599*x[12]*x[42]-0.196*x[12]*x[43]+0.9819*x[12]*x[44]+0.9495*x[12]*x[45]+0.9406*x[12]*x[46]+0.9377*x[12]*x[47]-0.2505*x[12]*x[48]-0.8054*x[12]*x[49]+0.5014*x[12]*x[50]+0.649*x[13]*x[13]+0.4489*x[13]*x[14]-0.2659*x[13]*x[15]+0.2441*x[13]*x[16]-0.3874*x[13]*x[17]-0.3974*x[13]*x[18]+0.3528*x[13]*x[19]+0.6601*x[13]*x[20]+0.1126*x[13]*x[21]+0.1189*x[13]*x[22]-0.3444*x[13]*x[23]+0.4614*x[13]*x[24]-0.6835*x[13]*x[25]+0.0658*x[13]*x[26]+0.5684*x[13]*x[27]-0.5684*x[13]*x[28]-0.3494*x[13]*x[29]+0.0029*x[13]*x[30]-0.5542*x[13]*x[31]-0.067*x[13]*x[32]-0.6264*x[13]*x[33]-0.6098*x[13]*x[34]-0.5862*x[13]*x[35]+0.8116*x[13]*x[36]+0.5998*x[13]*x[37]+0.4699*x[13]*x[38]-0.1693*x[13]*x[39]+0.622*x[13]*x[40]+0.9767*x[13]*x[41]-0.0178*x[13]*x[42]-0.5614*x[13]*x[43]+0.5238*x[13]*x[44]+0.8146*x[13]*x[45]+0.1793*x[13]*x[46]+0.7412*x[13]*x[47]-0.9228*x[13]*x[48]+0.8761*x[13]*x[49]-0.9062*x[13]*x[50]+0.7942*x[14]*x[14]-0.9605*x[14]*x[15]+0.9985*x[14]*x[16]+0.9604*x[14]*x[17]+0.2233*x[14]*x[18]+0.1751*x[14]*x[19]+0.9245*x[14]*x[20]+0.7868*x[14]*x[21]-0.5956*x[14]*x[22]-0.9745*x[14]*x[23]-0.49*x[14]*x[24]+0.7809*x[14]*x[25]-0.4609*x[14]*x[26]+0.778*x[14]*x[27]+0.0383*x[14]*x[28]-0.2656*x[14]*x[29]+0.9676*x[14]*x[30]+0.7539*x[14]*x[31]+0.3629*x[14]*x[32]-0.2751*x[14]*x[33]-0.6036*x[14]*x[34]-0.6255*x[14]*x[35]+0.9753*x[14]*x[36]-0.6347*x[14]*x[37]-0.9763*x[14]*x[38]+0.8874*x[14]*x[39]-0.0161*x[14]*x[40]+0.9611*x[14]*x[41]+0.2266*x[14]*x[42]-0.2746*x[14]*x[43]+0.0648*x[14]*x[44]-0.7084*x[14]*x[45]-0.7343*x[14]*x[46]-0.2376*x[14]*x[47]+0.4007*x[14]*x[48]+0.0995*x[14]*x[49]+0.6511*x[14]*x[50]+0.0747*x[15]*x[15]+0.3247*x[15]*x[16]-0.8937*x[15]*x[17]-0.6571*x[15]*x[18]+0.2373*x[15]*x[19]+0.5175*x[15]*x[20]+0.8201*x[15]*x[21]+0.428*x[15]*x[22]+0.48*x[15]*x[23]-0.2866*x[15]*x[24]+0.6437*x[15]*x[25]+0.1041*x[15]*x[26]+0.3016*x[15]*x[27]-0.6249*x[15]*x[28]+0.6366*x[15]*x[29]-0.9552*x[15]*x[30]+0.3144*x[15]*x[31]-0.7607*x[15]*x[32]-0.2293*x[15]*x[33]-0.5147*x[15]*x[34]+0.9307*x[15]*x[35]-0.0294*x[15]*x[36]+0.9847*x[15]*x[37]-0.4374*x[15]*x[38]+0.9569*x[15]*x[39]+0.9057*x[15]*x[40]-0.5138*x[15]*x[41]-0.1668*x[15]*x[42]+0.4716*x[15]*x[43]-0.6094*x[15]*x[44]+0.2787*x[15]*x[45]+0.2594*x[15]*x[46]-0.7943*x[15]*x[47]-0.7225*x[15]*x[48]-0.0902*x[15]*x[49]+0.9687*x[15]*x[50]-0.1502*x[16]*x[16]+0.4096*x[16]*x[17]-0.2692*x[16]*x[18]-0.5992*x[16]*x[19]-0.1808*x[16]*x[20]-0.5216*x[16]*x[21]+0.41*x[16]*x[22]-0.8418*x[16]*x[23]-0.5924*x[16]*x[24]-0.9653*x[16]*x[25]-0.3314*x[16]*x[26]-0.4303*x[16]*x[27]+0.6908*x[16]*x[28]-0.0111*x[16]*x[29]+0.4202*x[16]*x[30]-0.4907*x[16]*x[31]+0.6454*x[16]*x[32]-0.4368*x[16]*x[33]+0.2496*x[16]*x[34]+0.4916*x[16]*x[35]+0.7479*x[16]*x[36]-0.7442*x[16]*x[37]-0.4416*x[16]*x[38]+0.847*x[16]*x[39]+0.9726*x[16]*x[40]+0.5786*x[16]*x[41]-0.3041*x[16]*x[42]+0.5286*x[16]*x[43]-0.6138*x[16]*x[44]-0.8712*x[16]*x[45]-0.9096*x[16]*x[46]-0.707*x[16]*x[47]+0.6138*x[16]*x[48]+0.312*x[16]*x[49]-0.5107*x[16]*x[50]-0.3513*x[17]*x[17]+0.9673*x[17]*x[18]+0.2275*x[17]*x[19]-0.415*x[17]*x[20]-0.0089*x[17]*x[21]+0.4723*x[17]*x[22]-0.9209*x[17]*x[23]-0.9687*x[17]*x[24]-0.043*x[17]*x[25]+0.5532*x[17]*x[26]+0.8139*x[17]*x[27]+0.8304*x[17]*x[28]-0.3323*x[17]*x[29]-0.4014*x[17]*x[30]+0.6574*x[17]*x[31]-0.0813*x[17]*x[32]-0.9703*x[17]*x[33]-0.3218*x[17]*x[34]-0.8836*x[17]*x[35]-0.8145*x[17]*x[36]+0.3035*x[17]*x[37]-0.2096*x[17]*x[38]+0.2399*x[17]*x[39]+0.6504*x[17]*x[40]-0.3218*x[17]*x[41]-0.3831*x[17]*x[42]-0.2782*x[17]*x[43]-0.1766*x[17]*x[44]-0.0781*x[17]*x[45]-0.2352*x[17]*x[46]+0.2862*x[17]*x[47]-0.5167*x[17]*x[48]+0.4314*x[17]*x[49]+0.7136*x[17]*x[50]-0.6721*x[18]*x[18]+0.4626*x[18]*x[19]+0.0198*x[18]*x[20]-0.4397*x[18]*x[21]+0.9861*x[18]*x[22]+0.5225*x[18]*x[23]-0.9346*x[18]*x[24]+0.4133*x[18]*x[25]+0.3442*x[18]*x[26]-0.8199*x[18]*x[27]-0.0776*x[18]*x[28]-0.4723*x[18]*x[29]-0.289*x[18]*x[30]+0.4463*x[18]*x[31]-0.9454*x[18]*x[32]+0.1697*x[18]*x[33]+0.3885*x[18]*x[34]-0.7786*x[18]*x[35]+0.0525*x[18]*x[36]+0.9874*x[18]*x[37]+0.4525*x[18]*x[38]+0.521*x[18]*x[39]-0.5928*x[18]*x[40]+0.7265*x[18]*x[41]-0.615*x[18]*x[42]-0.8237*x[18]*x[43]-0.5174*x[18]*x[44]+0.821*x[18]*x[45]+0.6597*x[18]*x[46]-0.8449*x[18]*x[47]+0.743*x[18]*x[48]+0.1144*x[18]*x[49]-0.2056*x[18]*x[50]+0.9986*x[19]*x[19]+0.54*x[19]*x[20]+0.5713*x[19]*x[21]+0.5068*x[19]*x[22]+0.1204*x[19]*x[23]+0.3888*x[19]*x[24]+0.7512*x[19]*x[25]-0.9713*x[19]*x[26]-0.4285*x[19]*x[27]-0.6373*x[19]*x[28]+0.6154*x[19]*x[29]+0.1051*x[19]*x[30]-0.0283*x[19]*x[31]+0.0735*x[19]*x[32]-0.9093*x[19]*x[33]-0.7123*x[19]*x[34]+0.5603*x[19]*x[35]+0.5412*x[19]*x[36]-0.6809*x[19]*x[37]-0.0621*x[19]*x[38]-0.674*x[19]*x[39]+0.0977*x[19]*x[40]-0.3899*x[19]*x[41]-0.6912*x[19]*x[42]+0.15*x[19]*x[43]-0.7118*x[19]*x[44]-0.6134*x[19]*x[45]+0.3822*x[19]*x[46]+0.9004*x[19]*x[47]-0.7372*x[19]*x[48]+0.42*x[19]*x[49]-0.2405*x[19]*x[50]-0.204*x[20]*x[20]-0.998*x[20]*x[21]-0.1736*x[20]*x[22]+0.6076*x[20]*x[23]+0.7557*x[20]*x[24]-0.7184*x[20]*x[25]-0.9139*x[20]*x[26]+0.1313*x[20]*x[27]-0.8836*x[20]*x[28]+0.7427*x[20]*x[29]-0.3114*x[20]*x[30]-0.0203*x[20]*x[31]-0.4356*x[20]*x[32]-0.5229*x[20]*x[33]+0.0993*x[20]*x[34]+0.4277*x[20]*x[35]+0.8057*x[20]*x[36]+0.5147*x[20]*x[37]+0.0785*x[20]*x[38]+0.2918*x[20]*x[39]+0.5539*x[20]*x[40]+0.758*x[20]*x[41]+0.2055*x[20]*x[42]-0.877*x[20]*x[43]-0.1218*x[20]*x[44]-0.9826*x[20]*x[45]-0.4008*x[20]*x[46]+0.947*x[20]*x[47]+0.9103*x[20]*x[48]-0.5734*x[20]*x[49]+0.3479*x[20]*x[50]+0.0723*x[21]*x[21]-0.2806*x[21]*x[22]-0.9973*x[21]*x[23]+0.6989*x[21]*x[24]-0.1571*x[21]*x[25]+0.4957*x[21]*x[26]-0.9767*x[21]*x[27]+0.2287*x[21]*x[28]-0.1111*x[21]*x[29]+0.3253*x[21]*x[30]+0.3775*x[21]*x[31]+0.8783*x[21]*x[32]+0.4335*x[21]*x[33]-0.0967*x[21]*x[34]+0.269*x[21]*x[35]-0.5516*x[21]*x[36]-0.2037*x[21]*x[37]+0.6602*x[21]*x[38]-0.722*x[21]*x[39]+0.5119*x[21]*x[40]+0.586*x[21]*x[41]-0.5442*x[21]*x[42]+0.0562*x[21]*x[43]-0.7251*x[21]*x[44]-0.6521*x[21]*x[45]-0.7049*x[21]*x[46]+0.62*x[21]*x[47]-0.497*x[21]*x[48]-0.1799*x[21]*x[49]+0.9132*x[21]*x[50]+0.4395*x[22]*x[22]+0.6708*x[22]*x[23]+0.5537*x[22]*x[24]+0.0758*x[22]*x[25]+0.2226*x[22]*x[26]+0.3882*x[22]*x[27]+0.2014*x[22]*x[28]-0.8073*x[22]*x[29]+0.0984*x[22]*x[30]-0.4142*x[22]*x[31]-0.5883*x[22]*x[32]+0.6861*x[22]*x[33]+0.303*x[22]*x[34]+0.9262*x[22]*x[35]+0.2199*x[22]*x[36]-0.1922*x[22]*x[37]-0.7428*x[22]*x[38]-0.7244*x[22]*x[39]-0.5698*x[22]*x[40]+0.046*x[22]*x[41]+0.4195*x[22]*x[42]+0.0448*x[22]*x[43]-0.6311*x[22]*x[44]+0.7262*x[22]*x[45]-0.3714*x[22]*x[46]-0.9939*x[22]*x[47]+0.9992*x[22]*x[48]+0.7608*x[22]*x[49]-0.5125*x[22]*x[50]+0.0878*x[23]*x[23]+0.522*x[23]*x[24]+0.3632*x[23]*x[25]-0.1574*x[23]*x[26]+0.1895*x[23]*x[27]-0.1071*x[23]*x[28]+0.889*x[23]*x[29]-0.6673*x[23]*x[30]+0.9491*x[23]*x[31]-0.8262*x[23]*x[32]-0.6978*x[23]*x[33]+0.8198*x[23]*x[34]-0.5889*x[23]*x[35]-0.5569*x[23]*x[36]-0.7317*x[23]*x[37]+0.3949*x[23]*x[38]+0.9541*x[23]*x[39]-0.9943*x[23]*x[40]-0.0116*x[23]*x[41]-0.5047*x[23]*x[42]+0.8051*x[23]*x[43]-0.7914*x[23]*x[44]+0.5505*x[23]*x[45]-0.7908*x[23]*x[46]+0.2414*x[23]*x[47]-0.3313*x[23]*x[48]+0.9555*x[23]*x[49]+0.3839*x[23]*x[50]+0.6554*x[24]*x[24]+0.9363*x[24]*x[25]-0.4451*x[24]*x[26]-0.2679*x[24]*x[27]-0.6916*x[24]*x[28]+0.9618*x[24]*x[29]+0.8635*x[24]*x[30]-0.5314*x[24]*x[31]-0.7532*x[24]*x[32]-0.2676*x[24]*x[33]+0.6789*x[24]*x[34]-0.7484*x[24]*x[35]+0.9799*x[24]*x[36]-0.04*x[24]*x[37]+0.9229*x[24]*x[38]+0.9211*x[24]*x[39]+0.5065*x[24]*x[40]+0.2912*x[24]*x[41]+0.3298*x[24]*x[42]+0.7586*x[24]*x[43]+0.4593*x[24]*x[44]+0.3926*x[24]*x[45]+0.0687*x[24]*x[46]+0.4976*x[24]*x[47]+0.6535*x[24]*x[48]-0.9917*x[24]*x[49]-0.5502*x[24]*x[50]-0.1718*x[25]*x[25]+0.2573*x[25]*x[26]-0.9025*x[25]*x[27]+0.3264*x[25]*x[28]-0.6443*x[25]*x[29]+0.1642*x[25]*x[30]+0.9221*x[25]*x[31]-0.428*x[25]*x[32]-0.4399*x[25]*x[33]+0.7566*x[25]*x[34]+0.354*x[25]*x[35]-0.5276*x[25]*x[36]-0.6272*x[25]*x[37]-0.8758*x[25]*x[38]-0.6662*x[25]*x[39]-0.5727*x[25]*x[40]-0.1467*x[25]*x[41]-0.8066*x[25]*x[42]-0.53*x[25]*x[43]-0.7406*x[25]*x[44]+0.8858*x[25]*x[45]-0.3289*x[25]*x[46]-0.8604*x[25]*x[47]-0.0148*x[25]*x[48]+0.3933*x[25]*x[49]+0.4846*x[25]*x[50]-0.7567*x[26]*x[26]+0.083*x[26]*x[27]-0.0985*x[26]*x[28]+0.3703*x[26]*x[29]+0.6679*x[26]*x[30]+0.8643*x[26]*x[31]+0.533*x[26]*x[32]+0.1871*x[26]*x[33]-0.1905*x[26]*x[34]+0.9994*x[26]*x[35]-0.7306*x[26]*x[36]-0.2797*x[26]*x[37]-0.7742*x[26]*x[38]+0.2634*x[26]*x[39]-0.6882*x[26]*x[40]-0.1916*x[26]*x[41]-0.6292*x[26]*x[42]+0.3706*x[26]*x[43]+0.2252*x[26]*x[44]-0.5111*x[26]*x[45]-0.7106*x[26]*x[46]+0.436*x[26]*x[47]+0.6397*x[26]*x[48]-0.7626*x[26]*x[49]-0.7465*x[26]*x[50]-0.4273*x[27]*x[27]+0.9735*x[27]*x[28]-0.5091*x[27]*x[29]-0.0217*x[27]*x[30]-0.9406*x[27]*x[31]-0.5301*x[27]*x[32]-0.0925*x[27]*x[33]-0.4232*x[27]*x[34]+0.4301*x[27]*x[35]-0.1282*x[27]*x[36]+0.2232*x[27]*x[37]+0.124*x[27]*x[38]-0.3137*x[27]*x[39]+0.5432*x[27]*x[40]-0.0037*x[27]*x[41]-0.0924*x[27]*x[42]+0.3913*x[27]*x[43]-0.6371*x[27]*x[44]-0.1172*x[27]*x[45]-0.1265*x[27]*x[46]-0.8825*x[27]*x[47]-0.2623*x[27]*x[48]-0.1383*x[27]*x[49]-0.6027*x[27]*x[50]-0.21*x[28]*x[28]-0.5062*x[28]*x[29]-0.8757*x[28]*x[30]+0.8153*x[28]*x[31]+0.0395*x[28]*x[32]-0.8308*x[28]*x[33]-0.2081*x[28]*x[34]-0.797*x[28]*x[35]-0.9042*x[28]*x[36]-0.5208*x[28]*x[37]+0.2869*x[28]*x[38]+0.0977*x[28]*x[39]-0.6313*x[28]*x[40]-0.1462*x[28]*x[41]+0.2552*x[28]*x[42]-0.8255*x[28]*x[43]+0.0742*x[28]*x[44]+0.6895*x[28]*x[45]-0.181*x[28]*x[46]-0.5937*x[28]*x[47]+0.6543*x[28]*x[48]+0.9317*x[28]*x[49]-0.2445*x[28]*x[50]+0.2943*x[29]*x[29]+0.3555*x[29]*x[30]-0.1086*x[29]*x[31]-0.6558*x[29]*x[32]-0.296*x[29]*x[33]-0.3417*x[29]*x[34]+0.4937*x[29]*x[35]-0.457*x[29]*x[36]+0.1226*x[29]*x[37]-0.7351*x[29]*x[38]+0.5968*x[29]*x[39]-0.5881*x[29]*x[40]-0.9469*x[29]*x[41]-0.6075*x[29]*x[42]-0.9843*x[29]*x[43]+0.6435*x[29]*x[44]+0.8889*x[29]*x[45]-0.064*x[29]*x[46]-0.7728*x[29]*x[47]-0.679*x[29]*x[48]+0.6905*x[29]*x[49]+0.7074*x[29]*x[50]-0.3972*x[30]*x[30]-0.4977*x[30]*x[31]-0.5983*x[30]*x[32]-0.4784*x[30]*x[33]-0.4858*x[30]*x[34]+0.2572*x[30]*x[35]-0.0521*x[30]*x[36]+0.7398*x[30]*x[37]+0.2972*x[30]*x[38]+0.7789*x[30]*x[39]+0.5905*x[30]*x[40]+0.7603*x[30]*x[41]-0.5705*x[30]*x[42]+0.9037*x[30]*x[43]+0.4382*x[30]*x[44]-0.7787*x[30]*x[45]+0.9149*x[30]*x[46]+0.2939*x[30]*x[47]+0.1637*x[30]*x[48]-0.9742*x[30]*x[49]-0.4477*x[30]*x[50]+0.6009*x[31]*x[31]-0.3442*x[31]*x[32]+0.1588*x[31]*x[33]-0.9521*x[31]*x[34]+0.3398*x[31]*x[35]-0.6371*x[31]*x[36]-0.4268*x[31]*x[37]+0.3169*x[31]*x[38]+0.1779*x[31]*x[39]-0.8726*x[31]*x[40]-0.7344*x[31]*x[41]+0.4833*x[31]*x[42]+0.0007*x[31]*x[43]-0.9371*x[31]*x[44]+0.9815*x[31]*x[45]-0.9932*x[31]*x[46]+0.3986*x[31]*x[47]+0.5181*x[31]*x[48]-0.4916*x[31]*x[49]-0.3371*x[31]*x[50]+0.1457*x[32]*x[32]+0.9832*x[32]*x[33]-0.0207*x[32]*x[34]+0.1223*x[32]*x[35]+0.2128*x[32]*x[36]-0.8286*x[32]*x[37]-0.4837*x[32]*x[38]-0.0592*x[32]*x[39]+0.6266*x[32]*x[40]+0.4492*x[32]*x[41]+0.9861*x[32]*x[42]-0.8687*x[32]*x[43]-0.8504*x[32]*x[44]+0.6624*x[32]*x[45]-0.1745*x[32]*x[46]+0.3241*x[32]*x[47]-0.4919*x[32]*x[48]-0.0339*x[32]*x[49]+0.2248*x[32]*x[50]+0.366*x[33]*x[33]-0.1987*x[33]*x[34]-0.5784*x[33]*x[35]+0.8198*x[33]*x[36]-0.0486*x[33]*x[37]+0.7126*x[33]*x[38]+0.8337*x[33]*x[39]+0.0308*x[33]*x[40]+0.4378*x[33]*x[41]-0.4249*x[33]*x[42]-0.876*x[33]*x[43]-0.247*x[33]*x[44]-0.482*x[33]*x[45]+0.0808*x[33]*x[46]+0.0687*x[33]*x[47]-0.9379*x[33]*x[48]-0.1556*x[33]*x[49]-0.1534*x[33]*x[50]+0.2972*x[34]*x[34]-0.682*x[34]*x[35]-0.2246*x[34]*x[36]+0.2078*x[34]*x[37]+0.0801*x[34]*x[38]+0.412*x[34]*x[39]-0.7653*x[34]*x[40]+0.7097*x[34]*x[41]+0.1609*x[34]*x[42]+0.0463*x[34]*x[43]-0.049*x[34]*x[44]-0.9321*x[34]*x[45]+0.5337*x[34]*x[46]+0.6369*x[34]*x[47]-0.8873*x[34]*x[48]-0.5746*x[34]*x[49]+0.4865*x[34]*x[50]-0.3803*x[35]*x[35]-0.7699*x[35]*x[36]+0.7363*x[35]*x[37]-0.2812*x[35]*x[38]+0.8172*x[35]*x[39]-0.5754*x[35]*x[40]-0.2821*x[35]*x[41]-0.8113*x[35]*x[42]+0.3038*x[35]*x[43]+0.8093*x[35]*x[44]+0.5277*x[35]*x[45]+0.7849*x[35]*x[46]+0.6706*x[35]*x[47]+0.0152*x[35]*x[48]-0.009*x[35]*x[49]+0.0082*x[35]*x[50]+0.5372*x[36]*x[36]-0.2333*x[36]*x[37]-0.8164*x[36]*x[38]+0.8521*x[36]*x[39]+0.4163*x[36]*x[40]+0.6625*x[36]*x[41]+0.6022*x[36]*x[42]+0.1782*x[36]*x[43]+0.63*x[36]*x[44]+0.4385*x[36]*x[45]+0.9963*x[36]*x[46]+0.8737*x[36]*x[47]+0.382*x[36]*x[48]+0.4417*x[36]*x[49]+0.2669*x[36]*x[50]+0.7712*x[37]*x[37]+0.5226*x[37]*x[38]+0.3681*x[37]*x[39]+0.7255*x[37]*x[40]-0.4059*x[37]*x[41]+0.9658*x[37]*x[42]-0.8057*x[37]*x[43]+0.2716*x[37]*x[44]-0.8667*x[37]*x[45]-0.6541*x[37]*x[46]-0.0723*x[37]*x[47]-0.1218*x[37]*x[48]+0.6082*x[37]*x[49]-0.1423*x[37]*x[50]+0.5249*x[38]*x[38]+0.4167*x[38]*x[39]-0.507*x[38]*x[40]+0.8024*x[38]*x[41]-0.8732*x[38]*x[42]-0.9641*x[38]*x[43]+0.8948*x[38]*x[44]-0.0228*x[38]*x[45]-0.2308*x[38]*x[46]-0.8365*x[38]*x[47]-0.0407*x[38]*x[48]-0.6009*x[38]*x[49]-0.2916*x[38]*x[50]-0.1374*x[39]*x[39]+0.8125*x[39]*x[40]+0.8725*x[39]*x[41]+0.4909*x[39]*x[42]+0.9356*x[39]*x[43]+0.7571*x[39]*x[44]-0.4834*x[39]*x[45]+0.5875*x[39]*x[46]-0.8418*x[39]*x[47]-0.9637*x[39]*x[48]-0.3318*x[39]*x[49]-0.3304*x[39]*x[50]+0.0086*x[40]*x[40]-0.2382*x[40]*x[41]+0.7865*x[40]*x[42]-0.4775*x[40]*x[43]-0.0112*x[40]*x[44]+0.4793*x[40]*x[45]+0.2361*x[40]*x[46]+0.3537*x[40]*x[47]+0.4693*x[40]*x[48]+0.7316*x[40]*x[49]+0.3182*x[40]*x[50]+0.8041*x[41]*x[41]-0.4561*x[41]*x[42]+0.8676*x[41]*x[43]-0.7196*x[41]*x[44]-0.3273*x[41]*x[45]-0.0517*x[41]*x[46]-0.9975*x[41]*x[47]-0.5365*x[41]*x[48]+0.9168*x[41]*x[49]+0.7715*x[41]*x[50]+0.1129*x[42]*x[42]-0.3254*x[42]*x[43]-0.6267*x[42]*x[44]-0.2341*x[42]*x[45]+0.332*x[42]*x[46]+0.8281*x[42]*x[47]-0.1747*x[42]*x[48]+0.9767*x[42]*x[49]-0.6643*x[42]*x[50]-0.7506*x[43]*x[43]+0.0168*x[43]*x[44]-0.0513*x[43]*x[45]-0.6878*x[43]*x[46]-0.0265*x[43]*x[47]+0.6138*x[43]*x[48]+0.9757*x[43]*x[49]-0.8293*x[43]*x[50]+0.9219*x[44]*x[44]+0.403*x[44]*x[45]-0.0383*x[44]*x[46]-0.1156*x[44]*x[47]-0.9505*x[44]*x[48]-0.5166*x[44]*x[49]-0.7652*x[44]*x[50]-0.9915*x[45]*x[45]-0.477*x[45]*x[46]+0.1948*x[45]*x[47]-0.9361*x[45]*x[48]-0.0442*x[45]*x[49]-0.4517*x[45]*x[50]-0.8448*x[46]*x[46]-0.8462*x[46]*x[47]+0.7179*x[46]*x[48]+0.1438*x[46]*x[49]-0.831*x[46]*x[50]+0.1377*x[47]*x[47]+0.2404*x[47]*x[48]+0.4776*x[47]*x[49]+0.9781*x[47]*x[50]-0.4061*x[48]*x[48]-0.8912*x[48]*x[49]+0.9125*x[48]*x[50]+0.706*x[49]*x[49]-0.8906*x[49]*x[50]+0.942*x[50]*x[50]-0.0261*x[1]-0.068*x[2]-0.847*x[3]+0.5746*x[4]-0.3526*x[5]+0.4389*x[6]+0.4542*x[7]+0.0367*x[8]-0.3709*x[9]+0.8193*x[10]+0.5633*x[11]-0.0382*x[12]-0.959*x[13]-0.7036*x[14]+0.7485*x[15]-0.0868*x[16]-0.6044*x[17]+0.3054*x[18]+0.6064*x[19]-0.5288*x[20]-0.0285*x[21]-0.5481*x[22]-0.7647*x[23]+0.6671*x[24]-0.0921*x[25]+0.7822*x[26]-0.688*x[27]-0.623*x[28]-0.6958*x[29]+0.2072*x[30]+0.8573*x[31]+0.9353*x[32]-0.7581*x[33]-0.6678*x[34]+0.7244*x[35]+0.497*x[36]+0.8841*x[37]-0.419*x[38]-0.5639*x[39]+0.3384*x[40]+0.8517*x[41]+0.2487*x[42]+0.352*x[43]-0.9956*x[44]+0.1963*x[45]+0.6505*x[46]+0.8868*x[47]+0.064*x[48]-0.2306*x[49]+0.3456*x[50])+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[51])

m = m 		 # model get returned when including this script. 
