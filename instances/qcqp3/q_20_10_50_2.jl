using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5252*x[1]*x[4]-1.7241*x[1]*x[9]+0.765*x[1]*x[15]+1.294*x[1]*x[18]+1.5122*x[1]*x[20]+0.897*x[2]*x[2]+0.6477*x[2]*x[6]+0.0853*x[2]*x[10]-0.3214*x[2]*x[13]+0.1675*x[2]*x[14]+0.0183*x[2]*x[17]-0.6762*x[3]*x[4]-1.0556*x[3]*x[5]+1.4629*x[3]*x[6]-1.4069*x[3]*x[7]-1.5364*x[3]*x[9]-0.69*x[3]*x[13]+1.3169*x[3]*x[14]+1.357*x[3]*x[15]+0.2824*x[3]*x[18]+0.1265*x[4]*x[4]-0.6204*x[4]*x[5]-0.3869*x[4]*x[6]-0.9791*x[4]*x[9]-1.7607*x[4]*x[12]+1.3022*x[4]*x[13]+1.9118*x[4]*x[15]-0.5159*x[4]*x[16]-1.0685*x[4]*x[17]+0.1141*x[4]*x[18]-0.6067*x[4]*x[19]-0.6244*x[4]*x[20]+0.4038*x[5]*x[5]+0.7985*x[5]*x[6]+0.5016*x[5]*x[8]-0.2419*x[5]*x[9]-1.0303*x[5]*x[13]+1.8019*x[5]*x[14]-1.3674*x[5]*x[15]+1.6738*x[5]*x[16]-0.3696*x[5]*x[18]-0.2448*x[5]*x[19]-0.9025*x[5]*x[20]-0.5412*x[6]*x[6]-0.9589*x[6]*x[7]+0.5721*x[6]*x[12]+0.0336*x[6]*x[13]+1.571*x[6]*x[14]+1.2912*x[6]*x[15]+1.7366*x[6]*x[16]+0.1124*x[6]*x[18]-0.3991*x[6]*x[19]-0.8408*x[6]*x[20]+0.1453*x[7]*x[7]-0.8034*x[7]*x[8]-0.9803*x[7]*x[10]-1.7501*x[7]*x[11]+1.5057*x[7]*x[13]-1.7132*x[7]*x[15]+1.3132*x[7]*x[17]-0.2055*x[7]*x[19]+0.0582*x[8]*x[10]-1.6335*x[8]*x[13]+0.8595*x[8]*x[14]+1.5942*x[8]*x[15]-0.4688*x[8]*x[16]+1.3214*x[8]*x[18]+1.3783*x[9]*x[10]-1.35*x[9]*x[11]-0.9568*x[9]*x[12]+0.3604*x[9]*x[14]+0.0689*x[9]*x[17]+0.2226*x[9]*x[18]+1.3481*x[9]*x[20]+1.7817*x[10]*x[12]-0.5448*x[10]*x[14]+0.4397*x[10]*x[18]-0.8869*x[11]*x[16]+1.0908*x[11]*x[18]-1.5926*x[11]*x[19]-0.7073*x[12]*x[12]-1.9319*x[12]*x[13]-1.4005*x[12]*x[15]-0.5725*x[12]*x[16]-1.688*x[12]*x[17]-0.3408*x[12]*x[19]+1.689*x[13]*x[13]-1.985*x[13]*x[14]-0.349*x[13]*x[17]-0.3619*x[13]*x[18]+1.3938*x[13]*x[19]+1.0137*x[14]*x[17]+0.6721*x[14]*x[18]-0.8871*x[15]*x[16]-0.6149*x[15]*x[18]+1.8922*x[15]*x[19]-1.4384*x[16]*x[16]-0.1159*x[16]*x[17]+0.4323*x[16]*x[18]-1.0245*x[16]*x[19]+0.0881*x[17]*x[18]+1.5406*x[17]*x[19]-1.7123*x[18]*x[19]+1.8811*x[19]*x[19]-0.2928*x[19]*x[20]-0.156*x[1]+0.7871*x[2]+0.1436*x[3]-0.7501*x[4]+0.5937*x[5]+0.3838*x[6]+0.7126*x[7]+0.8886*x[8]+0.7474*x[9]+0.762*x[10]-0.8127*x[11]-0.438*x[12]-0.9758*x[13]-0.3572*x[14]-0.8688*x[15]-0.0218*x[16]+0.1012*x[17]+0.6616*x[18]-0.7035*x[19]-0.2671*x[20])+x[21] == 0.0)
@NLconstraint(m, e2, 1.0423*x[1]*x[3]-1.061*x[1]*x[4]-0.2842*x[1]*x[6]+1.405*x[1]*x[7]+0.7345*x[1]*x[18]-1.7488*x[1]*x[19]+0.771*x[1]*x[20]-0.046*x[2]*x[2]+1.5242*x[2]*x[5]+0.0709*x[2]*x[9]-0.2549*x[2]*x[11]-1.8135*x[2]*x[12]-0.4323*x[2]*x[13]+1.2434*x[2]*x[15]+0.9418*x[2]*x[16]-0.2726*x[2]*x[17]-0.2479*x[2]*x[18]-0.4579*x[2]*x[19]-0.1686*x[3]*x[3]-0.1442*x[3]*x[5]-0.0683*x[3]*x[6]+1.7562*x[3]*x[7]+0.0022*x[3]*x[8]+1.376*x[3]*x[9]-1.8335*x[3]*x[11]+0.9229*x[3]*x[12]+0.4593*x[3]*x[13]-1.565*x[3]*x[15]-0.8899*x[3]*x[16]-0.0144*x[3]*x[17]-0.5637*x[3]*x[18]-1.0957*x[3]*x[19]+1.6*x[4]*x[7]+1.6888*x[4]*x[8]+1.9933*x[4]*x[9]+1.6768*x[4]*x[11]-1.9996*x[4]*x[12]-0.1112*x[4]*x[13]+1.7646*x[4]*x[15]-1.5644*x[4]*x[19]+0.0405*x[5]*x[9]-1.188*x[5]*x[11]-0.5032*x[5]*x[12]-1.8117*x[5]*x[14]-0.0945*x[5]*x[15]-0.3773*x[5]*x[18]-1.3403*x[6]*x[7]+0.0079*x[6]*x[9]-1.689*x[6]*x[11]+1.2611*x[6]*x[17]-0.5158*x[6]*x[18]-1.6347*x[7]*x[8]+1.3742*x[7]*x[10]-0.7093*x[7]*x[13]-1.9533*x[7]*x[16]+0.1101*x[7]*x[17]-1.7272*x[7]*x[18]+0.7426*x[7]*x[19]+0.1385*x[8]*x[11]-1.1237*x[8]*x[12]-0.2425*x[8]*x[14]+1.3956*x[8]*x[19]-1.4688*x[9]*x[10]-1.8815*x[9]*x[11]+1.2159*x[9]*x[12]+1.6216*x[9]*x[14]-1.5548*x[9]*x[16]+0.523*x[9]*x[17]-0.626*x[9]*x[18]+0.0991*x[10]*x[10]-1.6992*x[10]*x[12]-1.0523*x[10]*x[15]+1.6139*x[10]*x[17]-1.4699*x[10]*x[18]+0.7729*x[10]*x[19]+0.0436*x[11]*x[15]+0.193*x[11]*x[16]+0.4023*x[11]*x[17]-0.7168*x[11]*x[18]+1.8295*x[11]*x[19]+1.0872*x[11]*x[20]+1.4292*x[12]*x[12]+1.6412*x[12]*x[13]-0.2424*x[12]*x[16]-0.4361*x[12]*x[17]-0.573*x[13]*x[16]-1.0845*x[13]*x[17]+1.9641*x[13]*x[18]-1.8688*x[13]*x[19]+0.017*x[14]*x[14]-1.5874*x[14]*x[15]+1.3483*x[14]*x[16]+1.4771*x[14]*x[17]+1.8356*x[14]*x[18]-1.174*x[14]*x[19]+1.5794*x[15]*x[19]-0.4452*x[16]*x[17]+1.9148*x[16]*x[18]-1.4692*x[16]*x[20]+1.0993*x[17]*x[17]+0.606*x[17]*x[18]+1.3959*x[17]*x[19]-1.217*x[18]*x[18]+0.4959*x[18]*x[19]+1.996*x[19]*x[20]+0.5297*x[1]+0.6868*x[2]-0.7853*x[3]-0.3931*x[4]+0.5069*x[5]+0.137*x[6]+0.084*x[7]+0.4783*x[8]-0.6437*x[9]+0.5554*x[10]-0.4897*x[11]-0.7904*x[12]+0.7031*x[13]+0.196*x[14]-0.5339*x[15]+0.1567*x[16]-0.1214*x[17]+0.5824*x[18]+0.7759*x[19]+0.0471*x[20] <= 74.727)
@NLconstraint(m, e3, (-0.9909*x[1]*x[2])-1.4538*x[1]*x[3]-0.5444*x[1]*x[4]-0.0968*x[1]*x[5]+0.8617*x[1]*x[8]+1.8592*x[1]*x[14]+1.551*x[1]*x[19]-0.6417*x[2]*x[2]+0.0164*x[2]*x[4]+1.019*x[2]*x[5]+1.2495*x[2]*x[7]+1.7259*x[2]*x[9]+1.924*x[2]*x[10]-0.1372*x[2]*x[13]+1.2329*x[2]*x[14]-0.1748*x[2]*x[18]+0.9699*x[2]*x[20]-1.5505*x[3]*x[6]-1.1696*x[3]*x[7]+0.647*x[3]*x[8]+1.3722*x[3]*x[9]+0.6038*x[3]*x[12]+1.392*x[3]*x[13]-0.1879*x[3]*x[18]+0.836*x[3]*x[19]-1.4414*x[4]*x[5]-0.6274*x[4]*x[8]+0.2912*x[4]*x[10]+1.7388*x[4]*x[11]-0.4411*x[4]*x[13]-1.9159*x[4]*x[14]-1.206*x[4]*x[17]+1.2381*x[4]*x[18]-0.0655*x[5]*x[6]+0.5541*x[5]*x[7]-1.8546*x[5]*x[9]-1.0273*x[5]*x[11]+1.6484*x[5]*x[13]+1.0695*x[5]*x[15]-1.2672*x[5]*x[18]-0.0252*x[5]*x[19]+1.6791*x[6]*x[8]+1.9874*x[6]*x[10]+0.9315*x[6]*x[12]-1.4149*x[6]*x[13]-1.1071*x[6]*x[15]-0.7383*x[6]*x[17]-0.4486*x[6]*x[18]+0.9927*x[6]*x[20]-1.9825*x[7]*x[7]+1.4541*x[7]*x[8]+0.3808*x[7]*x[10]+0.0296*x[7]*x[12]-1.2083*x[7]*x[14]+0.9209*x[7]*x[15]+0.9448*x[7]*x[16]+1.7974*x[7]*x[17]-1.696*x[7]*x[18]-1.2305*x[7]*x[19]+1.9151*x[8]*x[10]-0.7102*x[8]*x[11]+1.0249*x[8]*x[12]+1.7306*x[8]*x[13]+0.5537*x[8]*x[15]-0.2112*x[8]*x[18]-0.9332*x[8]*x[19]-0.2804*x[8]*x[20]-0.7257*x[9]*x[10]+0.4083*x[9]*x[12]-0.1062*x[9]*x[13]-0.2519*x[9]*x[15]+0.175*x[9]*x[16]+0.9212*x[9]*x[17]+1.9933*x[9]*x[18]-1.9172*x[9]*x[19]-1.7952*x[9]*x[20]+0.4245*x[10]*x[13]+1.573*x[10]*x[14]-0.2273*x[10]*x[19]-1.5032*x[10]*x[20]-0.7464*x[11]*x[11]+0.3661*x[11]*x[12]+1.1504*x[11]*x[14]+0.8658*x[11]*x[15]-1.8985*x[11]*x[16]+1.262*x[11]*x[19]-1.8533*x[12]*x[14]-1.5743*x[12]*x[15]+1.9252*x[12]*x[16]+0.0408*x[12]*x[17]+0.0678*x[12]*x[18]+1.0163*x[12]*x[19]-0.4679*x[12]*x[20]-0.1769*x[13]*x[14]+1.8773*x[13]*x[18]-0.3363*x[13]*x[19]+1.4078*x[14]*x[15]+1.239*x[14]*x[19]+1.9705*x[15]*x[18]+0.3666*x[15]*x[19]+0.1133*x[16]*x[18]+0.8706*x[16]*x[19]+0.1588*x[17]*x[19]-0.3057*x[17]*x[20]+1.3298*x[18]*x[19]-0.6349*x[1]-0.2098*x[2]+0.2029*x[3]+0.8379*x[4]-0.6423*x[5]-0.6965*x[6]-0.9387*x[7]+0.2211*x[8]+0.5848*x[9]-0.216*x[10]-0.9849*x[11]-0.2362*x[12]+0.4767*x[13]+0.5404*x[14]-0.1413*x[15]+0.6358*x[16]-0.8668*x[17]+0.7548*x[18]-0.3527*x[19]-0.8405*x[20] <= 19.596)
@NLconstraint(m, e4, 0.6204*x[1]*x[5]+0.6277*x[1]*x[10]-0.7989*x[1]*x[11]-1.8579*x[1]*x[14]-1.0811*x[1]*x[20]+0.2432*x[2]*x[5]-0.3799*x[2]*x[6]+0.0546*x[2]*x[9]-0.2228*x[2]*x[10]+0.1457*x[2]*x[11]-0.4343*x[2]*x[13]-0.8327*x[2]*x[14]+1.0216*x[2]*x[15]+0.8632*x[2]*x[18]+1.6618*x[3]*x[4]+0.0144*x[3]*x[5]+0.3721*x[3]*x[6]-0.5664*x[3]*x[9]+1.4443*x[3]*x[10]-0.1442*x[3]*x[13]-1.4508*x[3]*x[15]+1.6247*x[3]*x[17]-1.9704*x[3]*x[19]-0.8929*x[4]*x[5]-1.3975*x[4]*x[7]+1.0503*x[4]*x[10]+1.0892*x[4]*x[11]-0.2587*x[4]*x[13]-1.6406*x[4]*x[14]+1.1691*x[4]*x[15]-1.6814*x[4]*x[16]+0.8241*x[4]*x[18]-1.5984*x[4]*x[19]-0.0812*x[5]*x[5]-0.8641*x[5]*x[7]-1.8109*x[5]*x[8]+1.4117*x[5]*x[9]-0.2016*x[5]*x[10]-0.6421*x[5]*x[13]+1.098*x[5]*x[16]-1.2273*x[5]*x[18]+0.2162*x[5]*x[19]+1.6084*x[6]*x[7]-0.6893*x[6]*x[8]-1.9741*x[6]*x[9]+1.9081*x[6]*x[12]+1.4772*x[6]*x[13]+1.1359*x[6]*x[14]+0.7773*x[6]*x[16]+1.456*x[6]*x[17]-0.6645*x[6]*x[18]-1.7573*x[6]*x[19]+1.7427*x[6]*x[20]+0.2925*x[7]*x[8]-0.1864*x[7]*x[9]+1.2892*x[7]*x[10]+0.5682*x[7]*x[14]+1.9732*x[7]*x[15]+1.6088*x[7]*x[16]+0.3376*x[8]*x[9]-0.6032*x[8]*x[11]+0.32*x[8]*x[12]+0.7735*x[8]*x[14]+1.8978*x[8]*x[15]+0.3369*x[8]*x[16]+1.2329*x[8]*x[18]+0.8887*x[8]*x[19]+1.2368*x[9]*x[10]-1.1082*x[9]*x[12]-1.0991*x[9]*x[13]-1.1016*x[9]*x[15]+0.1345*x[9]*x[16]+1.1155*x[9]*x[17]+1.9748*x[9]*x[19]+1.8082*x[9]*x[20]-1.4271*x[10]*x[11]+0.9591*x[10]*x[13]-0.479*x[10]*x[15]-0.4271*x[10]*x[16]-0.8736*x[10]*x[18]-0.8609*x[10]*x[19]-0.0087*x[10]*x[20]-1.0167*x[11]*x[13]+0.1742*x[11]*x[15]-1.5069*x[11]*x[16]+0.4346*x[11]*x[17]+1.108*x[12]*x[12]+1.8984*x[12]*x[16]-0.052*x[12]*x[17]+0.9085*x[13]*x[14]-1.5299*x[13]*x[16]-1.5628*x[13]*x[18]+0.2918*x[13]*x[19]-1.6597*x[14]*x[15]-0.3127*x[14]*x[16]-1.544*x[14]*x[17]-1.9402*x[15]*x[16]-1.8031*x[15]*x[20]-1.3802*x[16]*x[17]-0.8819*x[16]*x[18]-1.2486*x[16]*x[19]+0.4374*x[16]*x[20]-1.2909*x[17]*x[18]+1.498*x[18]*x[19]+0.3478*x[19]*x[20]+0.6215*x[1]+0.7512*x[2]-0.475*x[3]+0.6618*x[4]-0.6919*x[5]+0.8249*x[6]+0.1949*x[7]+0.1662*x[8]+0.8588*x[9]-0.0056*x[10]-0.798*x[11]+0.0628*x[12]+0.5782*x[13]+0.0557*x[14]-0.3689*x[15]+0.9882*x[16]+0.5255*x[17]+0.8167*x[18]+0.2771*x[19]+0.4786*x[20] <= 64.727)
@NLconstraint(m, e5, 1.5494*x[1]*x[4]+1.8966*x[1]*x[10]-1.7394*x[1]*x[11]-0.5624*x[1]*x[12]-0.7803*x[1]*x[13]+0.5384*x[1]*x[14]+1.7073*x[1]*x[18]+1.6748*x[2]*x[3]-1.816*x[2]*x[5]-1.7679*x[2]*x[6]-1.1694*x[2]*x[8]+1.9285*x[2]*x[9]+0.1708*x[2]*x[10]+0.6191*x[2]*x[11]+1.8361*x[2]*x[12]-0.285*x[2]*x[13]-0.7825*x[2]*x[16]+0.382*x[2]*x[20]-0.3714*x[3]*x[3]-1.2398*x[3]*x[8]-1.1459*x[3]*x[9]-1.9444*x[3]*x[11]-0.6204*x[3]*x[12]-0.2429*x[3]*x[13]+1.1206*x[3]*x[15]+0.2757*x[3]*x[16]-0.2734*x[3]*x[18]-0.8007*x[4]*x[4]-1.8769*x[4]*x[6]-1.0993*x[4]*x[7]+1.577*x[4]*x[9]-1.3573*x[4]*x[10]+1.6114*x[4]*x[11]-0.3068*x[4]*x[13]-1.4376*x[4]*x[14]+0.6725*x[4]*x[15]+1.9704*x[4]*x[17]+0.1286*x[4]*x[19]+0.1441*x[5]*x[5]+0.26*x[5]*x[6]-1.3229*x[5]*x[7]+1.8201*x[5]*x[8]+0.0922*x[5]*x[10]-1.9639*x[5]*x[12]+0.788*x[5]*x[13]+1.3971*x[5]*x[15]+0.8336*x[5]*x[16]+0.9857*x[5]*x[17]+1.199*x[5]*x[18]+1.3769*x[5]*x[19]-1.8108*x[5]*x[20]+0.9876*x[6]*x[7]-1.9448*x[6]*x[9]+1.6561*x[6]*x[10]+1.2641*x[6]*x[11]+0.8901*x[6]*x[13]-1.9596*x[6]*x[14]-1.2205*x[6]*x[16]+1.097*x[6]*x[17]-0.6351*x[7]*x[8]-1.9528*x[7]*x[9]+1.1969*x[7]*x[11]-0.1257*x[7]*x[14]-0.135*x[7]*x[15]-1.3724*x[7]*x[18]+1.7796*x[7]*x[19]+0.3448*x[7]*x[20]+0.8537*x[8]*x[11]-1.7842*x[8]*x[13]+1.2016*x[8]*x[16]+1.1323*x[8]*x[17]-1.9497*x[8]*x[18]+0.7353*x[8]*x[19]-0.723*x[9]*x[9]+1.1049*x[9]*x[10]+1.3914*x[9]*x[11]-0.1012*x[9]*x[12]+0.9714*x[9]*x[15]+0.1408*x[9]*x[18]-0.0109*x[9]*x[19]-0.2171*x[9]*x[20]+0.305*x[10]*x[11]+0.3697*x[10]*x[13]+0.1108*x[10]*x[14]-0.5717*x[10]*x[15]-1.5289*x[10]*x[17]+0.0715*x[10]*x[19]+1.2162*x[10]*x[20]+1.7768*x[11]*x[11]+1.5247*x[11]*x[12]-0.3512*x[11]*x[15]-0.2927*x[11]*x[16]-1.3311*x[11]*x[18]+0.3615*x[12]*x[13]-1.4127*x[12]*x[16]+0.3688*x[12]*x[18]-0.1102*x[13]*x[17]+1.863*x[13]*x[18]-0.6076*x[14]*x[15]-1.6395*x[14]*x[18]+0.2461*x[15]*x[17]-1.6537*x[16]*x[17]+1.2764*x[16]*x[20]+1.1077*x[17]*x[17]-1.3415*x[17]*x[19]-0.2836*x[1]-0.1479*x[2]-0.8078*x[3]+0.1393*x[4]-0.882*x[5]+0.1291*x[6]-0.0924*x[7]+0.2236*x[8]-0.1197*x[9]+0.3347*x[10]+0.042*x[11]-0.794*x[12]-0.3281*x[13]-0.95*x[14]+0.2194*x[15]+0.15*x[16]-0.2657*x[17]-0.6609*x[18]-0.3424*x[19]+0.1578*x[20] <= 42.871)
@NLconstraint(m, e6, 1.55*x[1]*x[5]-1.1263*x[1]*x[4]-0.5142*x[1]*x[7]+1.6579*x[1]*x[10]-0.8387*x[1]*x[15]-1.6766*x[1]*x[17]+0.8849*x[1]*x[18]-0.9626*x[2]*x[5]+0.4983*x[2]*x[6]+1.5273*x[2]*x[7]+1.4419*x[2]*x[12]-1.8672*x[2]*x[14]-1.6428*x[2]*x[17]-1.0423*x[2]*x[19]-0.4571*x[3]*x[3]+0.6186*x[3]*x[4]-0.7882*x[3]*x[7]-1.316*x[3]*x[9]+0.4623*x[3]*x[10]-1.9709*x[3]*x[12]+0.6116*x[3]*x[14]-0.6333*x[3]*x[17]-0.8601*x[3]*x[18]+0.1252*x[3]*x[19]-1.7722*x[4]*x[5]-0.0132*x[4]*x[6]+1.0652*x[4]*x[7]-0.0532*x[4]*x[9]-0.1148*x[4]*x[10]-0.9485*x[4]*x[12]+1.8803*x[4]*x[15]+1.0239*x[4]*x[16]+0.4027*x[4]*x[18]+0.4908*x[4]*x[19]+0.6603*x[4]*x[20]-1.0314*x[5]*x[5]+0.3549*x[5]*x[6]-1.229*x[5]*x[10]-0.35*x[5]*x[11]-0.199*x[5]*x[18]+0.2906*x[5]*x[19]-1.9123*x[6]*x[6]+0.4275*x[6]*x[7]+0.1068*x[6]*x[8]+1.1392*x[6]*x[9]+1.9126*x[6]*x[10]-1.3056*x[6]*x[13]+1.0532*x[6]*x[15]-1.9255*x[6]*x[16]-0.0097*x[6]*x[17]+0.4231*x[6]*x[18]+0.3929*x[6]*x[20]+0.008*x[7]*x[7]+1.4747*x[7]*x[12]-0.0017*x[7]*x[13]+1.1973*x[7]*x[15]-0.7173*x[7]*x[17]+1.1725*x[8]*x[9]-1.4317*x[8]*x[11]+1.7048*x[8]*x[13]-0.6847*x[8]*x[14]-0.1714*x[8]*x[15]-0.2547*x[8]*x[16]+1.1816*x[8]*x[18]+0.8837*x[9]*x[11]+0.5525*x[9]*x[12]-1.4436*x[9]*x[13]+1.4127*x[9]*x[15]+0.5536*x[9]*x[18]+0.9498*x[9]*x[19]-1.6256*x[10]*x[10]+1.7545*x[10]*x[11]-1.8479*x[10]*x[12]-1.7746*x[10]*x[14]+0.0071*x[10]*x[16]+1.7329*x[10]*x[17]-1.5*x[10]*x[18]-0.7819*x[10]*x[20]-0.8661*x[11]*x[12]-0.7936*x[11]*x[15]+1.3245*x[11]*x[16]-1.8474*x[11]*x[18]-1.6007*x[11]*x[19]+1.0174*x[12]*x[13]-1.7689*x[12]*x[14]+0.2541*x[12]*x[18]-1.3271*x[12]*x[19]+0.0981*x[13]*x[13]-0.1948*x[13]*x[14]+1.5299*x[13]*x[15]+1.3071*x[13]*x[17]-0.6314*x[13]*x[18]+0.4976*x[13]*x[19]-1.2353*x[14]*x[15]-0.3077*x[14]*x[16]+0.8194*x[14]*x[18]+0.226*x[15]*x[17]-0.5793*x[15]*x[18]-0.0871*x[15]*x[19]+0.2397*x[15]*x[20]-0.3775*x[16]*x[18]-1.4757*x[16]*x[19]+0.6856*x[17]*x[20]-1.0667*x[18]*x[19]+1.417*x[18]*x[20]+0.8451*x[1]+0.6225*x[2]+0.1098*x[3]-0.4411*x[4]+0.6399*x[5]+0.967*x[6]-0.7956*x[7]+0.7489*x[8]+0.9719*x[9]-0.2975*x[10]-0.5535*x[11]-0.8583*x[12]-0.7741*x[13]-0.1389*x[14]+0.9208*x[15]+0.6252*x[16]-0.2669*x[17]-0.55*x[18]+0.1903*x[19]-0.7215*x[20] <= 56.224)
@NLconstraint(m, e7, 0.9616*x[1]*x[4]+0.3553*x[1]*x[6]+1.5769*x[1]*x[8]+0.0177*x[1]*x[20]+1.9139*x[2]*x[3]-1.2993*x[2]*x[5]+1.1812*x[2]*x[7]-0.6744*x[2]*x[8]+1.6673*x[2]*x[9]+0.5474*x[2]*x[12]+0.6737*x[2]*x[14]+0.7394*x[2]*x[15]+1.7586*x[2]*x[19]+1.8887*x[2]*x[20]+0.7884*x[3]*x[4]+1.968*x[3]*x[5]-0.2251*x[3]*x[6]-0.492*x[3]*x[8]-1.9253*x[3]*x[11]+1.6084*x[3]*x[12]-1.0273*x[3]*x[15]+1.9908*x[3]*x[17]-0.8002*x[3]*x[20]+0.5169*x[4]*x[6]+1.2406*x[4]*x[9]-0.586*x[4]*x[10]-1.4745*x[4]*x[11]+1.9099*x[4]*x[13]-1.8451*x[4]*x[14]+1.6446*x[4]*x[15]+0.2614*x[4]*x[17]+0.3774*x[4]*x[18]+0.9195*x[4]*x[19]-0.0789*x[5]*x[6]+1.3991*x[5]*x[7]-1.5542*x[5]*x[8]-0.6001*x[5]*x[9]-1.7753*x[5]*x[10]+1.7541*x[5]*x[12]-1.8764*x[5]*x[13]+0.7207*x[5]*x[17]+0.2197*x[5]*x[18]-1.7586*x[5]*x[19]-1.7561*x[6]*x[6]-1.5243*x[6]*x[9]+0.0074*x[6]*x[11]+0.1818*x[6]*x[12]-0.8998*x[6]*x[13]-1.3224*x[6]*x[16]-0.1614*x[6]*x[17]+0.8192*x[6]*x[19]-0.0296*x[7]*x[10]+1.2886*x[7]*x[12]+1.1487*x[7]*x[14]-1.1084*x[7]*x[15]-1.8187*x[7]*x[16]+0.7504*x[7]*x[19]-1.2448*x[8]*x[8]+1.4353*x[8]*x[9]-0.1026*x[8]*x[11]+1.199*x[8]*x[14]+1.7689*x[8]*x[16]-0.4624*x[8]*x[19]+1.9798*x[8]*x[20]+0.9783*x[9]*x[10]-1.0433*x[9]*x[11]+0.9879*x[9]*x[12]+0.6727*x[9]*x[14]-0.405*x[9]*x[17]+1.5014*x[9]*x[18]-1.3944*x[10]*x[11]+0.6607*x[10]*x[12]+0.0971*x[10]*x[15]-1.2763*x[10]*x[16]+1.0048*x[11]*x[11]+1.1043*x[11]*x[13]+0.9851*x[11]*x[14]+0.1265*x[11]*x[16]+0.2146*x[11]*x[17]-0.3288*x[11]*x[19]+0.5852*x[12]*x[12]+0.7311*x[12]*x[14]-1.9116*x[12]*x[17]-1.8272*x[12]*x[18]+1.5228*x[12]*x[19]-1.1097*x[12]*x[20]+1.9195*x[13]*x[16]+1.0122*x[13]*x[17]-0.7104*x[13]*x[19]-1.5136*x[14]*x[15]-0.7889*x[14]*x[16]+1.222*x[14]*x[17]+1.6225*x[14]*x[18]+0.2024*x[14]*x[19]-0.8789*x[15]*x[15]+0.6757*x[15]*x[16]-1.4518*x[15]*x[17]-1.4316*x[15]*x[19]-0.238*x[16]*x[16]-1.205*x[16]*x[17]+0.9221*x[16]*x[20]+1.9982*x[17]*x[17]-1.7579*x[17]*x[19]+0.5946*x[17]*x[20]-0.9827*x[18]*x[20]+0.2412*x[1]+0.66*x[2]-0.9535*x[3]+0.5316*x[4]+0.4792*x[5]-0.6606*x[6]+0.736*x[7]-0.7416*x[8]+0.6529*x[9]+0.1884*x[10]-0.94*x[11]+0.7465*x[12]-0.5491*x[13]-0.6516*x[14]-0.0627*x[15]+0.1181*x[16]-0.6917*x[17]+0.2228*x[18]-0.651*x[19]+0.9127*x[20] <= 40.636)
@NLconstraint(m, e8, 1.9038*x[1]*x[2]-0.8811*x[1]*x[4]-1.3744*x[1]*x[10]-1.2404*x[1]*x[11]+1.9763*x[1]*x[13]+0.1477*x[1]*x[17]-1.3529*x[2]*x[2]-0.9254*x[2]*x[3]-0.6552*x[2]*x[6]+1.0726*x[2]*x[8]+0.5729*x[2]*x[10]+0.5087*x[2]*x[12]-1.7676*x[2]*x[17]+0.0347*x[2]*x[19]-0.1022*x[3]*x[4]-1.3198*x[3]*x[5]+0.4482*x[3]*x[6]+0.3376*x[3]*x[7]+0.986*x[3]*x[8]+1.7647*x[3]*x[10]-1.3434*x[3]*x[11]-1.4179*x[3]*x[12]+1.1573*x[3]*x[13]-1.3779*x[3]*x[14]+1.3533*x[3]*x[16]+0.1123*x[3]*x[20]+0.6203*x[4]*x[4]+0.4444*x[4]*x[6]-0.2585*x[4]*x[7]+0.0565*x[4]*x[8]-1.9679*x[4]*x[10]-0.2076*x[4]*x[11]+0.652*x[4]*x[12]-1.8346*x[4]*x[14]+1.2871*x[4]*x[16]-1.5623*x[5]*x[6]-0.5193*x[5]*x[7]+1.2122*x[5]*x[8]+1.9309*x[5]*x[11]+1.8106*x[5]*x[12]-0.9271*x[5]*x[13]-1.2266*x[5]*x[14]+1.8371*x[5]*x[16]+1.2494*x[5]*x[18]-1.2671*x[6]*x[6]-0.4093*x[6]*x[8]+0.0246*x[6]*x[9]+0.7008*x[6]*x[10]+1.7965*x[6]*x[11]+1.8014*x[6]*x[13]-0.2421*x[6]*x[14]+0.8385*x[6]*x[16]+0.9477*x[6]*x[18]-1.8116*x[7]*x[7]+0.7866*x[7]*x[9]+0.1959*x[7]*x[11]-0.1117*x[7]*x[12]-0.4099*x[7]*x[13]+1.4346*x[7]*x[14]+1.6531*x[7]*x[15]+0.9224*x[7]*x[16]+0.3816*x[7]*x[17]-1.5656*x[7]*x[18]+1.0513*x[7]*x[19]-0.5369*x[8]*x[8]+0.3416*x[8]*x[9]-0.217*x[9]*x[10]-1.6155*x[9]*x[12]-0.5562*x[9]*x[13]-0.7056*x[9]*x[16]+1.9988*x[9]*x[17]+0.2146*x[9]*x[18]+0.5129*x[10]*x[11]+1.077*x[10]*x[12]-0.8148*x[10]*x[13]+1.0709*x[10]*x[17]-0.7488*x[10]*x[18]-0.4063*x[10]*x[19]+1.6254*x[11]*x[15]+1.5938*x[11]*x[18]-0.1434*x[11]*x[19]+0.0487*x[12]*x[16]+0.5969*x[12]*x[18]-0.9943*x[12]*x[19]+1.8192*x[12]*x[20]-0.4446*x[13]*x[13]-0.0717*x[13]*x[16]-1.2416*x[13]*x[17]+1.6046*x[13]*x[18]-1.774*x[14]*x[14]+0.6474*x[14]*x[15]-0.4751*x[14]*x[16]-1.2523*x[14]*x[17]-0.5391*x[14]*x[18]-0.8273*x[15]*x[15]+0.8127*x[15]*x[16]+0.2106*x[15]*x[17]+1.0402*x[15]*x[19]-1.5294*x[16]*x[16]-1.0098*x[16]*x[18]+1.2496*x[17]*x[18]+1.5344*x[17]*x[19]-0.5141*x[18]*x[18]-1.3769*x[18]*x[20]-0.8068*x[19]*x[19]-0.1188*x[1]+0.4635*x[2]+0.4727*x[3]-0.4101*x[4]-0.1165*x[5]+0.9758*x[6]+0.2118*x[7]-0.9983*x[8]-0.3021*x[9]+0.8273*x[10]+0.0148*x[11]+0.9509*x[12]-0.9799*x[13]+0.8134*x[14]-0.1851*x[15]+0.3281*x[16]-0.7839*x[17]-0.5304*x[18]+0.8342*x[19]-0.7093*x[20] <= 95.978)
@NLconstraint(m, e9, 1.5255*x[1]*x[2]-0.9113*x[1]*x[4]-0.9402*x[1]*x[5]+1.3426*x[1]*x[8]-0.4061*x[1]*x[9]-0.4828*x[1]*x[11]-0.3928*x[1]*x[13]+1.785*x[1]*x[16]-0.9923*x[1]*x[18]+0.9246*x[1]*x[19]+0.6329*x[2]*x[3]-0.6819*x[2]*x[5]-0.9415*x[2]*x[6]+0.5417*x[2]*x[9]+1.4306*x[2]*x[14]+0.7205*x[2]*x[16]-1.3609*x[2]*x[18]+1.7953*x[2]*x[19]+1.877*x[3]*x[5]-0.3615*x[3]*x[6]+0.7622*x[3]*x[7]+0.1179*x[3]*x[8]+0.2534*x[3]*x[9]-0.497*x[3]*x[10]-1.6259*x[3]*x[11]+1.7999*x[3]*x[12]+1.6238*x[3]*x[14]-1.5669*x[3]*x[16]-0.8389*x[3]*x[17]-1.9351*x[3]*x[18]+1.4522*x[3]*x[20]-1.7519*x[4]*x[9]+0.6117*x[4]*x[10]-1.6444*x[4]*x[18]+1.0598*x[5]*x[6]+0.7618*x[5]*x[7]-0.5373*x[5]*x[11]-1.1524*x[5]*x[13]-1.1921*x[5]*x[14]-1.8875*x[5]*x[15]+1.9406*x[5]*x[17]+0.1093*x[5]*x[19]-0.0404*x[5]*x[20]+0.5238*x[6]*x[6]-1.5441*x[6]*x[7]+0.1151*x[6]*x[8]+1.4716*x[6]*x[9]+1.7002*x[6]*x[10]+1.9696*x[6]*x[11]-1.5672*x[6]*x[13]-1.8855*x[6]*x[17]+1.0987*x[6]*x[18]+0.0034*x[6]*x[20]+1.5711*x[7]*x[8]+1.6368*x[7]*x[10]+0.077*x[7]*x[12]+0.0318*x[7]*x[13]-1.865*x[7]*x[14]+0.7463*x[7]*x[17]-0.6181*x[7]*x[18]+1.3115*x[7]*x[19]-0.1998*x[7]*x[20]+0.9418*x[8]*x[8]-1.2169*x[8]*x[9]-0.2509*x[8]*x[12]+1.7119*x[8]*x[13]-1.976*x[8]*x[14]-1.7946*x[8]*x[15]+0.3085*x[8]*x[18]-0.453*x[8]*x[19]-1.8591*x[9]*x[9]+0.295*x[9]*x[11]+1.3862*x[9]*x[12]+0.644*x[9]*x[17]-1.1287*x[9]*x[18]+0.9896*x[10]*x[10]+0.0401*x[10]*x[14]+1.5638*x[10]*x[15]+0.5426*x[10]*x[18]-1.1084*x[11]*x[11]+0.818*x[11]*x[13]+0.8693*x[11]*x[17]-1.649*x[11]*x[18]-1.4218*x[11]*x[20]+1.0579*x[12]*x[12]+1.8843*x[12]*x[14]+0.9942*x[12]*x[15]+1.3112*x[12]*x[16]+0.2136*x[12]*x[18]+0.2523*x[12]*x[19]-1.1627*x[13]*x[13]-1.3202*x[13]*x[14]+0.5489*x[13]*x[15]+1.5603*x[13]*x[17]-1.764*x[14]*x[15]+0.7323*x[14]*x[17]-1.6153*x[14]*x[18]+1.7255*x[15]*x[18]-1.6003*x[15]*x[19]-1.5635*x[16]*x[17]-0.5681*x[17]*x[17]+1.3152*x[17]*x[18]-0.8815*x[17]*x[20]+1.7701*x[19]*x[19]+0.614*x[19]*x[20]-0.0929*x[1]-0.8667*x[2]-0.2451*x[3]+0.9272*x[4]+0.8925*x[5]-0.3625*x[6]-0.6592*x[7]+0.0384*x[8]-0.1276*x[9]-0.377*x[10]-0.2482*x[11]+0.0199*x[12]-0.9734*x[13]+0.5145*x[14]-0.487*x[15]-0.9463*x[16]+0.5581*x[17]-0.4315*x[18]-0.358*x[19]-0.3327*x[20] <= 99.115)
@NLconstraint(m, e10, (-0.3284*x[1]*x[2])-0.9891*x[1]*x[3]-1.7041*x[1]*x[4]-0.5371*x[1]*x[6]-1.1845*x[1]*x[8]+1.9208*x[1]*x[10]-1.5929*x[1]*x[11]-0.7733*x[1]*x[18]+0.553*x[1]*x[19]-0.2118*x[2]*x[2]+1.6229*x[2]*x[5]-0.8036*x[2]*x[7]+0.1031*x[2]*x[9]-0.8411*x[2]*x[10]+0.5444*x[2]*x[12]-0.0871*x[2]*x[14]-0.4414*x[2]*x[15]-1.7531*x[2]*x[17]-1.1235*x[2]*x[18]-1.8352*x[3]*x[3]-0.2597*x[3]*x[4]+0.5318*x[3]*x[5]-0.3624*x[3]*x[6]+0.9304*x[3]*x[8]+0.7061*x[3]*x[9]+1.1111*x[3]*x[15]+0.7099*x[3]*x[17]-1.3705*x[3]*x[18]-0.8054*x[4]*x[5]-0.1669*x[4]*x[6]+0.0937*x[4]*x[7]+0.7241*x[4]*x[9]-1.5299*x[4]*x[10]+1.6055*x[4]*x[12]+1.3691*x[4]*x[13]+0.572*x[4]*x[14]+0.7437*x[4]*x[16]-1.6987*x[5]*x[8]+1.4154*x[5]*x[9]+0.5274*x[5]*x[11]+0.6299*x[5]*x[12]-0.1073*x[5]*x[14]-0.6303*x[5]*x[16]+0.3375*x[5]*x[17]-1.6896*x[5]*x[18]-0.3202*x[6]*x[7]-0.5093*x[6]*x[9]-0.6278*x[6]*x[10]+0.7481*x[6]*x[12]+1.5026*x[6]*x[13]-0.5302*x[6]*x[15]-0.9325*x[6]*x[16]-0.3681*x[6]*x[19]+1.5434*x[6]*x[20]-0.2487*x[7]*x[7]+1.2384*x[7]*x[9]+1.5034*x[7]*x[11]-1.1131*x[7]*x[12]+0.9271*x[7]*x[14]+1.6693*x[7]*x[16]+1.5201*x[7]*x[19]-1.9552*x[8]*x[9]-0.42*x[8]*x[13]+0.6168*x[8]*x[14]-1.7221*x[8]*x[15]+0.104*x[8]*x[17]-0.9335*x[8]*x[18]-0.7735*x[9]*x[11]+1.2083*x[9]*x[12]+0.7543*x[9]*x[13]-1.1134*x[9]*x[14]+0.9925*x[9]*x[16]+1.7768*x[9]*x[18]+0.2321*x[9]*x[20]-1.4047*x[10]*x[11]+1.5703*x[10]*x[12]+0.7454*x[10]*x[14]-1.1788*x[10]*x[17]-0.1128*x[10]*x[19]+1.9341*x[10]*x[20]-1.9807*x[11]*x[11]+1.0237*x[11]*x[13]-1.174*x[11]*x[14]-0.1094*x[11]*x[15]+0.4113*x[12]*x[13]-0.1765*x[12]*x[14]+1.7323*x[12]*x[16]-0.4532*x[12]*x[19]-1.6193*x[13]*x[14]-0.0054*x[13]*x[16]-1.5697*x[13]*x[17]-0.4435*x[13]*x[19]+0.7915*x[14]*x[14]+0.6386*x[14]*x[15]+0.2309*x[14]*x[16]-1.83*x[14]*x[17]+1.4874*x[14]*x[18]+0.7923*x[14]*x[19]-0.1474*x[15]*x[15]-1.8306*x[15]*x[16]+0.4516*x[15]*x[19]+1.1691*x[15]*x[20]+0.5762*x[16]*x[19]-1.8145*x[17]*x[18]-1.6023*x[18]*x[20]-0.3392*x[1]+0.1411*x[2]+0.8926*x[3]+0.5894*x[4]-0.3476*x[5]-0.2435*x[6]+0.6405*x[7]+0.8674*x[8]+0.8428*x[9]+0.5987*x[10]+0.7513*x[11]+0.9516*x[12]-0.5518*x[13]+0.7501*x[14]-0.8136*x[15]+0.9126*x[16]-0.7726*x[17]+0.7384*x[18]-0.6476*x[19]+0.8341*x[20] <= 25.394)
@NLconstraint(m, e11, 0.2858*x[1]*x[2]+0.2271*x[1]*x[4]+1.2835*x[1]*x[13]+1.7121*x[1]*x[14]-1.5323*x[1]*x[15]-1.6596*x[1]*x[18]+1.1077*x[2]*x[3]-1.6676*x[2]*x[4]-1.319*x[2]*x[7]+0.3867*x[2]*x[9]+0.9447*x[2]*x[10]+0.1837*x[2]*x[15]+1.8044*x[2]*x[18]-1.264*x[2]*x[20]-1.9797*x[3]*x[4]+0.87*x[3]*x[7]-1.8991*x[3]*x[9]-1.8383*x[3]*x[10]-0.5408*x[3]*x[13]+1.2241*x[3]*x[14]+1.1115*x[3]*x[15]-1.4204*x[3]*x[18]-0.9505*x[3]*x[19]-1.4008*x[4]*x[4]-0.0612*x[4]*x[5]-0.4644*x[4]*x[6]-1.8405*x[4]*x[7]+1.3719*x[4]*x[12]-0.905*x[4]*x[13]+1.1111*x[4]*x[14]+1.7099*x[4]*x[16]-1.6396*x[4]*x[17]-0.962*x[4]*x[18]+0.6243*x[4]*x[20]-0.2094*x[5]*x[5]+1.3742*x[5]*x[7]+0.1069*x[5]*x[9]-1.3784*x[5]*x[10]+0.148*x[5]*x[11]-0.4679*x[5]*x[12]-0.0754*x[5]*x[13]+0.4782*x[5]*x[14]-0.8032*x[5]*x[15]-1.8835*x[5]*x[16]-0.0271*x[5]*x[17]+0.4941*x[5]*x[18]-0.7991*x[6]*x[7]-0.7802*x[6]*x[8]-1.7467*x[6]*x[11]-1.8028*x[6]*x[13]+1.4183*x[6]*x[14]+0.4972*x[6]*x[15]+0.5451*x[6]*x[16]-1.9171*x[6]*x[17]-1.5518*x[6]*x[20]+1.9198*x[7]*x[10]-1.4579*x[7]*x[11]-0.6701*x[7]*x[12]+1.1178*x[7]*x[14]+0.5299*x[7]*x[15]+0.706*x[7]*x[17]+0.3345*x[7]*x[18]+0.4508*x[7]*x[19]-1.1879*x[8]*x[9]+1.8377*x[8]*x[10]+1.4955*x[8]*x[11]-1.3768*x[8]*x[13]-1.2246*x[8]*x[14]-0.9864*x[8]*x[15]-0.1441*x[8]*x[16]+1.3825*x[8]*x[17]-0.8594*x[9]*x[11]-1.7811*x[9]*x[12]+0.592*x[9]*x[13]+1.885*x[9]*x[14]-0.0933*x[9]*x[17]+0.5295*x[9]*x[18]+0.2751*x[10]*x[12]-0.8125*x[10]*x[13]+0.1475*x[10]*x[15]-1.9943*x[10]*x[16]+1.6039*x[10]*x[17]+1.2523*x[10]*x[19]-0.4948*x[11]*x[16]-0.0528*x[11]*x[17]-1.0022*x[11]*x[19]+1.3978*x[12]*x[12]-0.6839*x[12]*x[13]-1.6651*x[12]*x[17]-1.7*x[12]*x[19]+0.5355*x[13]*x[14]+0.1*x[13]*x[15]-1.5093*x[13]*x[18]-0.3323*x[14]*x[16]-1.7314*x[15]*x[16]-0.3304*x[15]*x[17]+0.3817*x[15]*x[18]-1.3147*x[16]*x[19]+0.054*x[16]*x[20]+0.3323*x[17]*x[17]-0.9435*x[17]*x[18]-0.7003*x[17]*x[20]-0.4236*x[18]*x[19]+0.2833*x[19]*x[19]+1.2122*x[19]*x[20]+0.6763*x[1]+0.3385*x[2]-0.8502*x[3]-0.1396*x[4]+0.1953*x[5]-0.2683*x[6]-0.8114*x[7]-0.8959*x[8]+0.7917*x[9]-0.7895*x[10]+0.4422*x[11]-0.7204*x[12]+0.9258*x[13]+0.8418*x[14]-0.553*x[15]-0.2478*x[16]-0.7706*x[17]+0.4843*x[18]+0.3327*x[19]+0.8396*x[20] <= 46.041)


# ----- Objective ----- #
@objective(m, Min, x[21])

m = m 		 # model get returned when including this script. 