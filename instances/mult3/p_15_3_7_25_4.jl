using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.1218*x[3]^2-0.7715*x[3]+0.6465*x[12]^2+0.2966*x[12]+0.8118*x[1]*x[2]-0.672*x[1]*x[7]-0.0827*x[2]*x[3]-0.9337*x[2]*x[4]-0.6574*x[2]*x[5]+0.5662*x[2]*x[7]-0.1681*x[2]*x[8]-0.2254*x[2]*x[10]+0.2899*x[2]*x[12]+0.8854*x[2]*x[13]-0.4373*x[3]*x[8]+0.7477*x[3]*x[10]-0.0876*x[3]*x[11]+0.9826*x[3]*x[15]-0.2043*x[4]*x[6]-0.8219*x[4]*x[12]+0.745*x[4]*x[14]-0.9501*x[5]*x[6]+0.6608*x[5]*x[8]+0.0077*x[5]*x[10]-0.4482*x[5]*x[11]-0.6027*x[5]*x[12]-0.1034*x[6]*x[10]-0.4514*x[7]*x[8]+0.1797*x[7]*x[10]-0.2002*x[7]*x[14]-0.5457*x[7]*x[15]-0.3528*x[8]*x[9]-0.6894*x[8]*x[10]+0.9219*x[8]*x[11]-0.8247*x[8]*x[13]-0.0523*x[8]*x[14]+0.5043*x[11]*x[12]+0.3225*x[12]*x[13]+0.3572*x[1]-0.288*x[2]+0.1198*x[4]+0.1478*x[5]+0.9254*x[6]+0.1027*x[7]+0.8465*x[8]+0.0747*x[9]+0.4276*x[10]+0.0656*x[11]-0.4137*x[13]+0.911*x[14]-0.9838*x[15]+0.1292*x[1]^2*x[8]-0.8453*x[2]^2*x[8]-0.7519*x[3]^2*x[6]-0.6724*x[3]^2*x[10]-0.2108*x[4]^2*x[9]-0.7833*x[4]^2*x[12]-0.6425*x[5]^2*x[4]-0.4961*x[5]^2*x[13]-0.8022*x[6]^2*x[4]+0.6314*x[6]^2*x[14]-0.2176*x[6]^2*x[15]+0.7165*x[7]^2*x[3]-0.1749*x[7]^2*x[12]-0.5583*x[8]^2*x[2]+0.6161*x[8]^2*x[4]+0.7808*x[8]^2*x[5]-0.142*x[8]^2*x[15]+0.2254*x[10]^2*x[7]-0.1023*x[11]^2*x[3]-0.926*x[11]^2*x[13]+0.878*x[12]^2*x[2]-0.9781*x[12]^2*x[3]-0.394*x[12]^2*x[8]+0.3974*x[13]^2*x[2]+0.8991*x[13]^2*x[6]+0.2927*x[14]^2*x[1]+0.4659*x[14]^2*x[3]+0.6184*x[14]^2*x[5]+0.8324*x[14]^2*x[9]+0.1086*x[1]*x[3]*x[13]-0.1857*x[1]*x[2]*x[12]-0.0928*x[1]*x[4]*x[8]-0.9687*x[1]*x[4]*x[11]+0.7043*x[1]*x[5]*x[8]+0.8003*x[1]*x[5]*x[10]+0.1657*x[1]*x[6]*x[7]-0.5701*x[1]*x[7]*x[9]-0.4322*x[1]*x[8]*x[9]+0.5519*x[1]*x[8]*x[12]+0.1563*x[1]*x[9]*x[11]-0.3582*x[1]*x[10]*x[11]+0.6595*x[1]*x[12]*x[13]+0.1962*x[1]*x[13]*x[14]+0.5856*x[2]*x[3]*x[4]-0.5463*x[2]*x[3]*x[6]-0.3468*x[2]*x[3]*x[11]+0.7911*x[2]*x[3]*x[13]+0.5407*x[2]*x[4]*x[7]-0.9756*x[2]*x[4]*x[12]-0.6411*x[2]*x[4]*x[13]+0.9067*x[2]*x[5]*x[8]-0.9442*x[2]*x[5]*x[9]+0.1442*x[2]*x[5]*x[10]+0.0638*x[2]*x[6]*x[8]-0.1308*x[2]*x[6]*x[10]+0.6354*x[2]*x[7]*x[9]-0.4999*x[2]*x[7]*x[12]+0.49*x[2]*x[7]*x[13]+0.8638*x[2]*x[7]*x[14]+0.9889*x[2]*x[7]*x[15]+0.5825*x[2]*x[8]*x[11]+0.6851*x[2]*x[8]*x[12]-0.939*x[2]*x[8]*x[14]-0.9519*x[2]*x[9]*x[11]+0.6626*x[2]*x[10]*x[11]-0.5703*x[2]*x[10]*x[12]-0.3095*x[2]*x[11]*x[15]-0.929*x[2]*x[12]*x[13]+0.2809*x[2]*x[13]*x[14]+0.2515*x[2]*x[13]*x[15]+0.4514*x[3]*x[4]*x[6]-0.2007*x[3]*x[4]*x[7]-0.0775*x[3]*x[4]*x[9]-0.3945*x[3]*x[4]*x[10]-0.2355*x[3]*x[4]*x[12]+0.2973*x[3]*x[4]*x[14]+0.1363*x[3]*x[5]*x[6]-0.8382*x[3]*x[5]*x[10]+0.7832*x[3]*x[5]*x[13]-0.6333*x[3]*x[5]*x[15]-0.36*x[3]*x[6]*x[12]-0.7078*x[3]*x[6]*x[15]-0.0585*x[3]*x[7]*x[8]-0.9639*x[3]*x[7]*x[10]+0.1985*x[3]*x[7]*x[11]+0.2584*x[3]*x[7]*x[12]-0.9485*x[3]*x[8]*x[11]-0.2733*x[3]*x[8]*x[12]+0.9994*x[3]*x[8]*x[13]+0.9507*x[3]*x[9]*x[13]+0.5109*x[3]*x[10]*x[12]+0.6709*x[3]*x[11]*x[12]+0.5211*x[3]*x[12]*x[13]-0.1092*x[4]*x[5]*x[10]-0.6765*x[4]*x[5]*x[13]-0.0724*x[4]*x[6]*x[8]-0.7828*x[4]*x[6]*x[13]+0.032*x[4]*x[6]*x[15]+0.6647*x[4]*x[7]*x[8]+0.5116*x[4]*x[7]*x[9]-0.3351*x[4]*x[8]*x[12]+0.1667*x[4]*x[8]*x[14]-0.2017*x[4]*x[9]*x[11]-0.265*x[4]*x[9]*x[15]+0.428*x[4]*x[10]*x[13]+0.9996*x[4]*x[10]*x[15]+0.0063*x[4]*x[12]*x[13]+0.4589*x[4]*x[13]*x[14]-0.5529*x[5]*x[6]*x[8]-0.8019*x[5]*x[6]*x[9]+0.5967*x[5]*x[6]*x[10]-0.8641*x[5]*x[7]*x[8]+0.1672*x[5]*x[7]*x[10]-0.0957*x[5]*x[7]*x[13]+0.8836*x[5]*x[8]*x[9]+0.2083*x[5]*x[8]*x[11]-0.0139*x[5]*x[8]*x[12]+0.8203*x[5]*x[8]*x[14]-0.3216*x[5]*x[9]*x[11]+0.0943*x[5]*x[10]*x[11]-0.5248*x[5]*x[10]*x[12]-0.2214*x[5]*x[10]*x[14]+0.143*x[5]*x[11]*x[12]+0.1914*x[5]*x[11]*x[13]+0.0148*x[5]*x[11]*x[14]+0.2255*x[5]*x[12]*x[14]-0.9238*x[5]*x[13]*x[14]-0.0881*x[5]*x[14]*x[15]-0.3009*x[6]*x[8]*x[10]-0.3831*x[6]*x[8]*x[11]+0.3655*x[6]*x[8]*x[13]+0.9527*x[6]*x[9]*x[11]+0.0683*x[6]*x[9]*x[12]-0.8254*x[6]*x[10]*x[11]+0.8049*x[6]*x[10]*x[12]+0.0616*x[6]*x[11]*x[12]-0.8489*x[6]*x[11]*x[14]+0.2464*x[6]*x[11]*x[15]-0.7983*x[6]*x[12]*x[15]+0.6292*x[6]*x[13]*x[14]-0.7284*x[6]*x[13]*x[15]+0.6493*x[7]*x[9]*x[10]+0.2507*x[7]*x[10]*x[11]+0.5288*x[7]*x[10]*x[13]+0.9711*x[7]*x[11]*x[13]-0.9577*x[7]*x[12]*x[13]+0.5977*x[8]*x[9]*x[11]-0.4319*x[8]*x[9]*x[12]+0.1833*x[8]*x[9]*x[14]+0.3429*x[8]*x[10]*x[11]-0.769*x[8]*x[10]*x[13]-0.1394*x[8]*x[10]*x[14]+0.6016*x[8]*x[11]*x[13]+0.9717*x[8]*x[11]*x[14]-0.0896*x[8]*x[12]*x[13]-0.4074*x[8]*x[14]*x[15]-0.2018*x[9]*x[10]*x[13]-0.3764*x[9]*x[11]*x[15]+0.2553*x[9]*x[12]*x[14]+0.0968*x[10]*x[11]*x[13]+0.5875*x[10]*x[11]*x[14]+0.9573*x[10]*x[13]*x[14]+0.0662*x[11]*x[12]*x[13]+0.3283*x[11]*x[13]*x[14])+x[16] == 0.0)
@NLconstraint(m, e2, 0.9929*x[2]-0.4462*x[2]^3+(-0.2018*x[3]^2)-0.6788*x[3]+0.391*x[5]^2+0.4428*x[5]+0.2559*x[11]-0.9003*x[11]^3+0.109*x[13]-0.0363*x[13]^3+0.4822*x[1]*x[14]-0.5426*x[1]*x[4]-0.6848*x[2]*x[3]-0.0966*x[2]*x[5]+0.8247*x[3]*x[13]+0.6017*x[3]*x[14]-0.8204*x[3]*x[15]+0.5599*x[4]*x[5]-0.8218*x[4]*x[10]+0.8289*x[4]*x[11]+0.8152*x[5]*x[7]+0.5042*x[5]*x[10]-0.2901*x[6]*x[11]+0.0756*x[6]*x[12]+0.1627*x[7]*x[10]-0.3914*x[7]*x[13]-0.4914*x[7]*x[14]-0.775*x[9]*x[10]+0.8703*x[9]*x[14]-0.057*x[10]*x[12]-0.3514*x[11]*x[12]-0.3988*x[12]*x[13]+0.8035*x[1]-0.5884*x[4]-0.66*x[6]-0.002*x[7]-0.4721*x[9]-0.6583*x[10]+0.8771*x[12]-0.3969*x[14]-0.8754*x[15]+0.7086*x[2]^2*x[14]-0.1682*x[2]^2*x[15]-0.8155*x[4]^2*x[13]-0.6816*x[5]^2*x[1]-0.9802*x[5]^2*x[3]+0.5963*x[5]^2*x[9]-0.9376*x[5]^2*x[11]-0.1287*x[5]^2*x[14]+0.3262*x[6]^2*x[2]+0.7485*x[6]^2*x[4]+0.4373*x[6]^2*x[9]-0.3671*x[6]^2*x[13]+0.2818*x[6]^2*x[14]+0.2997*x[7]^2*x[11]-0.2311*x[7]^2*x[13]-0.7811*x[8]^2*x[4]-0.0604*x[8]^2*x[7]-0.3973*x[8]^2*x[15]+0.6395*x[9]^2*x[4]-0.0104*x[9]^2*x[7]-0.197*x[9]^2*x[8]-0.8575*x[10]^2*x[3]+0.9475*x[10]^2*x[13]+0.6209*x[10]^2*x[15]+0.9898*x[11]^2*x[10]+0.3972*x[11]^2*x[13]+0.181*x[11]^2*x[15]-0.6201*x[13]^2*x[1]+0.8517*x[13]^2*x[5]+0.3934*x[13]^2*x[14]+0.5563*x[14]^2*x[3]-0.1174*x[14]^2*x[5]-0.8291*x[14]^2*x[6]-0.7944*x[14]^2*x[8]+0.562*x[8]+0.5064*x[1]*x[2]*x[3]+0.3619*x[1]*x[2]*x[4]-0.537*x[1]*x[2]*x[7]+0.4237*x[1]*x[2]*x[10]+0.594*x[1]*x[2]*x[12]-0.2692*x[1]*x[3]*x[7]+0.7427*x[1]*x[3]*x[12]-0.3102*x[1]*x[3]*x[14]-0.6087*x[1]*x[4]*x[9]+0.2581*x[1]*x[4]*x[10]+0.5258*x[1]*x[5]*x[6]+0.1671*x[1]*x[6]*x[7]+0.4024*x[1]*x[6]*x[12]+0.2696*x[1]*x[7]*x[9]+0.2003*x[1]*x[7]*x[10]+0.7559*x[1]*x[7]*x[15]+0.0357*x[1]*x[8]*x[9]+0.6377*x[1]*x[9]*x[14]+0.422*x[1]*x[11]*x[14]-0.1756*x[1]*x[13]*x[14]+0.4199*x[2]*x[3]*x[5]+0.7244*x[2]*x[3]*x[7]-0.4658*x[2]*x[3]*x[12]-0.5221*x[2]*x[5]*x[6]-0.5345*x[2]*x[5]*x[14]+0.7861*x[2]*x[6]*x[7]+0.0388*x[2]*x[6]*x[8]+0.6738*x[2]*x[6]*x[9]+0.5022*x[2]*x[6]*x[10]+0.3926*x[2]*x[6]*x[11]-0.0401*x[2]*x[6]*x[13]+0.1099*x[2]*x[7]*x[8]+0.7386*x[2]*x[7]*x[9]-0.6553*x[2]*x[7]*x[12]-0.6665*x[2]*x[7]*x[13]+0.8895*x[2]*x[7]*x[15]-0.6304*x[2]*x[8]*x[11]-0.2895*x[2]*x[8]*x[13]-0.6801*x[2]*x[9]*x[11]+0.9435*x[2]*x[10]*x[11]+0.9285*x[2]*x[10]*x[12]-0.9756*x[2]*x[11]*x[14]-0.5782*x[3]*x[4]*x[5]-0.1236*x[3]*x[4]*x[6]+0.7713*x[3]*x[4]*x[9]-0.7241*x[3]*x[5]*x[12]-0.2849*x[3]*x[5]*x[13]+0.5632*x[3]*x[6]*x[11]+0.8672*x[3]*x[6]*x[15]-0.2097*x[3]*x[7]*x[8]-0.9044*x[3]*x[7]*x[11]+0.2156*x[3]*x[7]*x[12]+0.7311*x[3]*x[7]*x[14]-0.5221*x[3]*x[8]*x[11]+0.2813*x[3]*x[8]*x[12]-0.9335*x[3]*x[8]*x[15]+0.6403*x[3]*x[9]*x[13]-0.4469*x[3]*x[10]*x[13]-0.6953*x[3]*x[10]*x[14]+0.6231*x[3]*x[11]*x[13]-0.3496*x[3]*x[11]*x[14]+0.8914*x[3]*x[12]*x[14]-0.7735*x[4]*x[5]*x[8]-0.5203*x[4]*x[5]*x[9]+0.3491*x[4]*x[5]*x[10]+0.6493*x[4]*x[6]*x[7]-0.6031*x[4]*x[6]*x[8]-0.327*x[4]*x[6]*x[11]-0.1442*x[4]*x[6]*x[12]-0.1589*x[4]*x[7]*x[8]+0.9081*x[4]*x[7]*x[9]-0.9273*x[4]*x[7]*x[14]-0.4056*x[4]*x[7]*x[15]+0.1906*x[4]*x[8]*x[11]+0.2553*x[4]*x[8]*x[13]+0.5839*x[4]*x[10]*x[11]+0.1316*x[4]*x[10]*x[12]+0.202*x[4]*x[10]*x[14]+0.8542*x[4]*x[11]*x[13]-0.3178*x[4]*x[11]*x[15]+0.6211*x[5]*x[6]*x[7]+0.3991*x[5]*x[6]*x[11]+0.8094*x[5]*x[6]*x[12]-0.4546*x[5]*x[6]*x[13]+0.7121*x[5]*x[7]*x[10]-0.1075*x[5]*x[7]*x[11]+0.2827*x[5]*x[7]*x[15]-0.2037*x[5]*x[8]*x[9]+0.9243*x[5]*x[8]*x[10]-0.2971*x[5]*x[8]*x[11]-0.4284*x[5]*x[8]*x[14]+0.648*x[5]*x[8]*x[15]+0.7617*x[5]*x[9]*x[13]+0.1474*x[5]*x[9]*x[15]-0.2296*x[5]*x[10]*x[13]+0.9307*x[5]*x[10]*x[14]-0.9986*x[5]*x[11]*x[13]-0.6378*x[5]*x[11]*x[15]-0.3671*x[5]*x[14]*x[15]-0.8952*x[6]*x[7]*x[10]+0.8657*x[6]*x[7]*x[13]-0.2574*x[6]*x[8]*x[11]-0.9492*x[6]*x[8]*x[13]-0.8948*x[6]*x[9]*x[10]+0.0309*x[6]*x[9]*x[13]-0.1549*x[6]*x[9]*x[14]+0.8837*x[6]*x[10]*x[11]-0.317*x[6]*x[10]*x[12]+0.3224*x[6]*x[10]*x[14]+0.2054*x[6]*x[11]*x[13]-0.8131*x[6]*x[11]*x[14]-0.5729*x[6]*x[11]*x[15]-0.7923*x[6]*x[12]*x[14]-0.9266*x[6]*x[13]*x[14]+0.6417*x[7]*x[8]*x[9]+0.5583*x[7]*x[8]*x[12]+0.9943*x[7]*x[9]*x[11]+0.3605*x[7]*x[9]*x[12]-0.3718*x[7]*x[9]*x[13]-0.6754*x[7]*x[10]*x[13]+0.3217*x[7]*x[11]*x[13]-0.2488*x[7]*x[13]*x[14]-0.9364*x[8]*x[9]*x[12]-0.1391*x[8]*x[11]*x[12]-0.5465*x[8]*x[11]*x[13]+0.761*x[8]*x[11]*x[14]-0.964*x[8]*x[12]*x[14]+0.9027*x[9]*x[10]*x[13]+0.8181*x[9]*x[10]*x[14]-0.9764*x[9]*x[11]*x[12]-0.7304*x[9]*x[11]*x[13]+0.3096*x[9]*x[11]*x[14]+0.4483*x[9]*x[11]*x[15]+0.5068*x[9]*x[12]*x[14]-0.3987*x[10]*x[12]*x[13]-0.6575*x[10]*x[12]*x[14]-0.2367*x[11]*x[13]*x[15] <= 25.703)
@NLconstraint(m, e3, (-0.1907*x[2]^2)-0.545*x[2]+(-0.72*x[3]^2)-0.0503*x[3]+0.8135*x[12]^2-0.8678*x[12]+0.1695*x[14]-0.6726*x[14]^3+(-0.2066*x[1]*x[7])-0.5493*x[2]*x[3]+0.9289*x[2]*x[9]+0.4432*x[2]*x[10]+0.0172*x[2]*x[13]-0.27*x[3]*x[5]-0.5525*x[3]*x[7]+0.8381*x[3]*x[8]-0.4809*x[3]*x[11]-0.463*x[3]*x[14]-0.0133*x[4]*x[5]-0.3158*x[4]*x[6]+0.063*x[4]*x[9]-0.4228*x[4]*x[10]+0.7833*x[4]*x[12]-0.3985*x[5]*x[12]+0.9724*x[6]*x[14]-0.5252*x[7]*x[8]-0.8612*x[7]*x[12]+0.2975*x[8]*x[15]-0.2676*x[9]*x[15]-0.5328*x[12]*x[14]+0.0218*x[1]+0.205*x[4]+0.7782*x[5]+0.201*x[6]-0.8152*x[7]+0.6147*x[8]+0.4014*x[9]-0.8596*x[10]+0.3817*x[11]+0.1922*x[13]+0.8067*x[15]+0.3446*x[2]^2*x[5]-0.7835*x[1]^2*x[5]-0.5432*x[2]^2*x[12]-0.7234*x[3]^2*x[5]+0.7963*x[3]^2*x[8]+0.1988*x[4]^2*x[7]-0.9739*x[4]^2*x[10]+0.1916*x[4]^2*x[12]+0.1808*x[4]^2*x[15]+0.4156*x[5]^2*x[4]-0.6567*x[5]^2*x[6]+0.6037*x[5]^2*x[9]-0.6602*x[5]^2*x[13]+0.0157*x[6]^2*x[2]+0.9471*x[6]^2*x[7]-0.9008*x[6]^2*x[9]+0.7694*x[6]^2*x[10]-0.5511*x[7]^2*x[2]+0.3792*x[7]^2*x[4]-0.2253*x[7]^2*x[8]-0.7966*x[7]^2*x[9]-0.6589*x[8]^2*x[13]-0.8163*x[9]^2*x[6]-0.6978*x[9]^2*x[10]-0.5266*x[9]^2*x[11]+0.2382*x[10]^2*x[2]-0.9171*x[10]^2*x[6]-0.5348*x[10]^2*x[8]+0.1468*x[10]^2*x[9]+0.702*x[12]^2*x[1]-0.8091*x[12]^2*x[15]-0.7525*x[13]^2*x[3]-0.4127*x[13]^2*x[8]+0.1944*x[14]^2*x[3]+0.9321*x[14]^2*x[5]+(-0.7033*x[1]*x[2]*x[10])-0.515*x[1]*x[3]*x[6]+0.1984*x[1]*x[3]*x[9]-0.4987*x[1]*x[3]*x[12]+0.0126*x[1]*x[4]*x[10]-0.3157*x[1]*x[4]*x[13]-0.7776*x[1]*x[5]*x[8]-0.7182*x[1]*x[5]*x[11]+0.7158*x[1]*x[5]*x[15]+0.4906*x[1]*x[6]*x[8]+0.3563*x[1]*x[6]*x[13]-0.1154*x[1]*x[6]*x[14]-0.0215*x[1]*x[7]*x[8]+0.0188*x[1]*x[7]*x[9]+0.8741*x[1]*x[7]*x[11]+0.3955*x[1]*x[8]*x[10]+0.9342*x[1]*x[9]*x[14]+0.1617*x[1]*x[11]*x[14]-0.2049*x[2]*x[3]*x[7]-0.7283*x[2]*x[3]*x[10]-0.6983*x[2]*x[3]*x[13]-0.3278*x[2]*x[3]*x[14]-0.9826*x[2]*x[4]*x[5]-0.1354*x[2]*x[4]*x[7]-0.743*x[2]*x[4]*x[11]+0.4117*x[2]*x[4]*x[14]+0.565*x[2]*x[5]*x[8]-0.3594*x[2]*x[5]*x[11]+0.8774*x[2]*x[6]*x[9]-0.4755*x[2]*x[6]*x[10]-0.2258*x[2]*x[6]*x[11]-0.9204*x[2]*x[6]*x[12]-0.447*x[2]*x[7]*x[10]-0.4224*x[2]*x[7]*x[11]+0.191*x[2]*x[8]*x[9]-0.9975*x[2]*x[8]*x[13]+0.0698*x[2]*x[8]*x[14]+0.1666*x[2]*x[10]*x[11]+0.534*x[2]*x[10]*x[12]-0.0122*x[2]*x[10]*x[13]+0.6062*x[2]*x[13]*x[15]-0.3094*x[3]*x[4]*x[7]-0.2004*x[3]*x[4]*x[11]-0.8974*x[3]*x[4]*x[13]+0.4866*x[3]*x[4]*x[15]-0.0458*x[3]*x[5]*x[6]+0.1276*x[3]*x[5]*x[7]-0.7627*x[3]*x[5]*x[8]-0.1808*x[3]*x[5]*x[9]-0.4186*x[3]*x[5]*x[11]+0.4834*x[3]*x[6]*x[11]+0.9014*x[3]*x[6]*x[13]-0.3013*x[3]*x[6]*x[14]+0.9249*x[3]*x[7]*x[8]-0.1877*x[3]*x[7]*x[9]-0.0287*x[3]*x[7]*x[11]+0.4146*x[3]*x[7]*x[13]-0.7603*x[3]*x[8]*x[10]+0.6405*x[3]*x[8]*x[12]+0.696*x[3]*x[9]*x[10]-0.2922*x[3]*x[9]*x[11]+0.6702*x[3]*x[11]*x[14]+0.0281*x[3]*x[12]*x[13]-0.3773*x[4]*x[5]*x[9]+0.7872*x[4]*x[5]*x[10]+0.0686*x[4]*x[5]*x[12]+0.0448*x[4]*x[5]*x[14]+0.2969*x[4]*x[6]*x[8]+0.9097*x[4]*x[6]*x[10]-0.103*x[4]*x[6]*x[11]-0.4518*x[4]*x[6]*x[12]+0.5629*x[4]*x[6]*x[13]+0.6406*x[4]*x[6]*x[15]-0.1674*x[4]*x[7]*x[9]+0.9016*x[4]*x[8]*x[9]+0.581*x[4]*x[8]*x[11]-0.1457*x[4]*x[9]*x[12]-0.0777*x[4]*x[9]*x[13]+0.177*x[4]*x[9]*x[14]+0.9448*x[4]*x[9]*x[15]+0.1745*x[4]*x[11]*x[12]+0.0379*x[4]*x[12]*x[13]-0.4173*x[4]*x[13]*x[14]-0.6689*x[4]*x[13]*x[15]-0.7527*x[5]*x[6]*x[10]-0.6291*x[5]*x[6]*x[11]-0.3858*x[5]*x[6]*x[13]+0.0868*x[5]*x[7]*x[11]-0.3911*x[5]*x[7]*x[13]-0.6749*x[5]*x[8]*x[9]-0.7771*x[5]*x[8]*x[10]+0.7142*x[5]*x[8]*x[11]-0.5831*x[5]*x[8]*x[12]-0.1805*x[5]*x[8]*x[14]-0.9862*x[5]*x[9]*x[11]+0.3076*x[5]*x[9]*x[13]+0.601*x[5]*x[9]*x[14]+0.45*x[5]*x[10]*x[13]+0.637*x[5]*x[11]*x[12]-0.5895*x[5]*x[11]*x[13]-0.324*x[5]*x[12]*x[14]-0.1059*x[5]*x[13]*x[14]-0.3708*x[6]*x[7]*x[12]-0.0499*x[6]*x[7]*x[14]+0.312*x[6]*x[8]*x[10]+0.4246*x[6]*x[8]*x[12]+0.6471*x[6]*x[8]*x[14]-0.6016*x[6]*x[9]*x[13]-0.2095*x[6]*x[9]*x[14]-0.7864*x[6]*x[10]*x[11]+0.1642*x[6]*x[10]*x[14]+0.7884*x[6]*x[10]*x[15]-0.1414*x[6]*x[11]*x[13]+0.7174*x[6]*x[11]*x[14]-0.3722*x[6]*x[11]*x[15]+0.0011*x[7]*x[8]*x[9]+0.3227*x[7]*x[8]*x[12]+0.5347*x[7]*x[8]*x[14]-0.3114*x[7]*x[9]*x[12]-0.2088*x[7]*x[9]*x[13]+0.2418*x[7]*x[10]*x[11]+0.2994*x[7]*x[10]*x[12]+0.1655*x[7]*x[10]*x[14]+0.0882*x[7]*x[10]*x[15]+0.8016*x[7]*x[11]*x[13]+0.2506*x[7]*x[14]*x[15]-0.216*x[8]*x[9]*x[13]+0.1477*x[8]*x[9]*x[14]+0.7136*x[8]*x[12]*x[14]-0.2932*x[8]*x[12]*x[15]-0.9942*x[9]*x[11]*x[13]-0.4133*x[9]*x[11]*x[15]-0.295*x[9]*x[12]*x[15]+0.9109*x[10]*x[11]*x[12]+0.872*x[10]*x[12]*x[13]-0.7923*x[11]*x[13]*x[14]+0.1807*x[11]*x[14]*x[15]+0.6796*x[12]*x[13]*x[15]-0.3183*x[12]*x[14]*x[15] <= 54.71)
@NLconstraint(m, e4, 0.5974*x[2]^3-0.4597*x[2]+0.3949*x[3]^2+0.676*x[3]+0.0293*x[4]-0.164*x[4]^3+(-0.3186*x[15]^2)-0.0359*x[15]+0.1105*x[1]*x[2]+0.2522*x[1]*x[6]+0.2212*x[2]*x[6]-0.1491*x[2]*x[8]-0.4449*x[2]*x[9]+0.0372*x[2]*x[14]-0.4571*x[2]*x[15]+0.2675*x[3]*x[4]+0.734*x[3]*x[6]-0.2039*x[3]*x[8]+0.3155*x[3]*x[13]+0.2291*x[3]*x[14]-0.0662*x[4]*x[14]-0.7276*x[5]*x[6]+0.3247*x[5]*x[8]-0.0168*x[6]*x[8]+0.5119*x[6]*x[9]+0.694*x[6]*x[10]-0.3056*x[6]*x[12]-0.6177*x[6]*x[14]-0.0749*x[7]*x[9]+0.662*x[7]*x[12]-0.3358*x[8]*x[12]-0.115*x[9]*x[10]-0.7445*x[9]*x[14]+0.37*x[11]*x[14]+0.2624*x[13]*x[15]+0.2476*x[1]-0.7005*x[5]+0.9008*x[6]+0.7059*x[7]-0.1676*x[8]+0.8752*x[9]+0.8661*x[10]+0.7676*x[11]+0.5787*x[12]+0.5001*x[13]+0.0844*x[14]+0.8114*x[1]^2*x[6]-0.2793*x[1]^2*x[5]-0.0414*x[2]^2*x[1]-0.8583*x[2]^2*x[6]-0.7784*x[2]^2*x[8]+0.2627*x[2]^2*x[11]-0.2585*x[3]^2*x[13]-0.4039*x[4]^2*x[5]-0.4459*x[4]^2*x[6]-0.5624*x[4]^2*x[7]-0.7932*x[4]^2*x[9]+0.6061*x[5]^2*x[4]-0.3416*x[5]^2*x[9]-0.6773*x[6]^2*x[2]-0.7085*x[6]^2*x[5]-0.0708*x[6]^2*x[7]-0.0617*x[6]^2*x[12]+0.2405*x[6]^2*x[14]+0.4094*x[7]^2*x[4]-0.7488*x[7]^2*x[12]+0.6082*x[9]^2*x[12]+0.7616*x[10]^2*x[8]-0.5074*x[11]^2*x[5]+0.6372*x[11]^2*x[9]-0.5342*x[11]^2*x[14]+0.6878*x[12]^2*x[5]+0.6422*x[13]^2*x[5]-0.9888*x[13]^2*x[7]+0.2324*x[13]^2*x[10]+0.5051*x[14]^2*x[3]-0.0128*x[14]^2*x[15]-0.4685*x[15]^2*x[3]+0.0309*x[1]*x[2]*x[3]+0.2282*x[1]*x[2]*x[4]+0.9068*x[1]*x[2]*x[11]-0.3871*x[1]*x[2]*x[13]+0.9538*x[1]*x[2]*x[15]-0.7476*x[1]*x[3]*x[5]-0.0245*x[1]*x[3]*x[14]-0.44*x[1]*x[3]*x[15]+0.8334*x[1]*x[5]*x[6]-0.2901*x[1]*x[5]*x[7]+0.2079*x[1]*x[5]*x[13]+0.5164*x[1]*x[6]*x[7]-0.2627*x[1]*x[6]*x[8]-0.3499*x[1]*x[6]*x[11]-0.1031*x[1]*x[7]*x[9]+0.5916*x[1]*x[7]*x[11]+0.675*x[1]*x[7]*x[13]+0.2249*x[1]*x[8]*x[13]-0.3134*x[1]*x[9]*x[10]-0.1069*x[1]*x[9]*x[13]-0.4034*x[1]*x[10]*x[11]-0.7391*x[1]*x[10]*x[14]+0.9643*x[1]*x[11]*x[13]+0.2906*x[1]*x[12]*x[13]+0.1764*x[2]*x[3]*x[4]+0.9263*x[2]*x[3]*x[5]-0.2431*x[2]*x[3]*x[7]+0.017*x[2]*x[3]*x[8]-0.0174*x[2]*x[3]*x[11]+0.3262*x[2]*x[4]*x[10]-0.3433*x[2]*x[4]*x[12]-0.3116*x[2]*x[4]*x[14]-0.4216*x[2]*x[4]*x[15]-0.8334*x[2]*x[5]*x[11]+0.4189*x[2]*x[6]*x[10]+0.2784*x[2]*x[6]*x[11]-0.3992*x[2]*x[6]*x[15]+0.2139*x[2]*x[7]*x[8]+0.0734*x[2]*x[7]*x[11]-0.3195*x[2]*x[7]*x[13]+0.9417*x[2]*x[9]*x[12]+0.0306*x[2]*x[9]*x[14]+0.8136*x[2]*x[10]*x[11]-0.9694*x[2]*x[10]*x[12]+0.73*x[2]*x[12]*x[13]-0.5131*x[2]*x[13]*x[14]-0.3895*x[2]*x[13]*x[15]+0.2048*x[3]*x[4]*x[7]+0.6146*x[3]*x[4]*x[8]-0.933*x[3]*x[4]*x[10]-0.8975*x[3]*x[4]*x[13]+0.9705*x[3]*x[5]*x[6]+0.1293*x[3]*x[5]*x[7]+0.4007*x[3]*x[5]*x[12]+0.6177*x[3]*x[5]*x[14]-0.4931*x[3]*x[5]*x[15]+0.6131*x[3]*x[6]*x[8]+0.526*x[3]*x[6]*x[13]+0.8287*x[3]*x[7]*x[8]+0.0906*x[3]*x[7]*x[11]+0.1268*x[3]*x[7]*x[12]+0.5219*x[3]*x[7]*x[14]-0.7582*x[3]*x[8]*x[9]+0.7899*x[3]*x[8]*x[10]+0.4329*x[3]*x[8]*x[11]+0.828*x[3]*x[8]*x[12]+0.7763*x[3]*x[8]*x[13]-0.5857*x[3]*x[8]*x[14]+0.1548*x[3]*x[9]*x[10]-0.7798*x[3]*x[9]*x[11]-0.6658*x[3]*x[10]*x[11]-0.7588*x[3]*x[10]*x[12]+0.1466*x[3]*x[10]*x[13]+0.1872*x[3]*x[10]*x[14]-0.9709*x[3]*x[11]*x[15]-0.9284*x[3]*x[13]*x[14]+0.6012*x[3]*x[14]*x[15]-0.2658*x[4]*x[6]*x[14]+0.3042*x[4]*x[7]*x[9]-0.2496*x[4]*x[7]*x[12]-0.9319*x[4]*x[7]*x[13]-0.6549*x[4]*x[8]*x[9]+0.7522*x[4]*x[8]*x[12]-0.6523*x[4]*x[8]*x[13]+0.0624*x[4]*x[8]*x[14]+0.9476*x[4]*x[10]*x[12]-0.0119*x[4]*x[10]*x[14]-0.0463*x[4]*x[11]*x[12]-0.5477*x[4]*x[11]*x[13]-0.4786*x[4]*x[12]*x[13]+0.2672*x[4]*x[13]*x[14]+0.3939*x[5]*x[6]*x[7]+0.8863*x[5]*x[6]*x[10]-0.0526*x[5]*x[6]*x[14]+0.0333*x[5]*x[7]*x[8]+0.2968*x[5]*x[7]*x[9]-0.7772*x[5]*x[7]*x[10]-0.1616*x[5]*x[7]*x[12]+0.9034*x[5]*x[7]*x[14]-0.9691*x[5]*x[8]*x[9]+0.9993*x[5]*x[8]*x[14]-0.8788*x[5]*x[9]*x[10]+0.2602*x[5]*x[9]*x[15]-0.941*x[5]*x[10]*x[13]-0.6679*x[5]*x[11]*x[12]+0.4245*x[5]*x[11]*x[13]-0.8563*x[6]*x[7]*x[9]+0.3558*x[6]*x[8]*x[14]+0.5111*x[6]*x[8]*x[15]+0.6444*x[6]*x[9]*x[15]-0.9895*x[6]*x[13]*x[15]+0.0084*x[7]*x[8]*x[9]-0.6499*x[7]*x[8]*x[10]-0.9994*x[7]*x[8]*x[15]-0.4922*x[7]*x[9]*x[10]-0.5509*x[7]*x[9]*x[12]-0.1687*x[7]*x[11]*x[12]+0.1503*x[7]*x[11]*x[14]+0.4002*x[8]*x[9]*x[10]+0.2043*x[8]*x[9]*x[13]-0.7633*x[8]*x[9]*x[14]-0.492*x[8]*x[10]*x[12]-0.0037*x[8]*x[10]*x[13]-0.8949*x[8]*x[12]*x[14]-0.4724*x[9]*x[10]*x[11]-0.9386*x[9]*x[11]*x[12]-0.2622*x[9]*x[11]*x[13]-0.1732*x[9]*x[11]*x[14]-0.0128*x[9]*x[12]*x[13]+0.3641*x[9]*x[12]*x[15]+0.5286*x[9]*x[13]*x[14]+0.5346*x[10]*x[11]*x[13]+0.1848*x[10]*x[12]*x[14]+0.187*x[10]*x[13]*x[14]+0.8972*x[12]*x[13]*x[14]+0.6805*x[12]*x[13]*x[15] <= 20.305)
@NLconstraint(m, e5, 0.3774*x[6]^3-0.7884*x[6]+0.7784*x[11]-0.4833*x[11]^2+0.2831*x[12]^2-0.6232*x[12]+0.5591*x[13]^2-0.7954*x[13]+0.2041*x[1]*x[5]+0.2899*x[1]*x[8]-0.2316*x[1]*x[13]-0.3899*x[2]*x[4]-0.6863*x[2]*x[7]+0.1404*x[2]*x[10]-0.2396*x[2]*x[12]+0.3814*x[2]*x[13]-0.4262*x[3]*x[4]-0.8609*x[3]*x[6]-0.1127*x[3]*x[8]-0.627*x[3]*x[10]+0.7454*x[3]*x[15]-0.6242*x[4]*x[5]+0.4891*x[4]*x[9]+0.5936*x[4]*x[10]-0.0391*x[4]*x[11]-0.2023*x[4]*x[13]-0.3049*x[4]*x[14]-0.8143*x[4]*x[15]+0.6466*x[5]*x[6]+0.8019*x[5]*x[10]+0.1305*x[5]*x[11]-0.5626*x[5]*x[13]-0.7799*x[6]*x[11]-0.7196*x[6]*x[13]-0.0301*x[7]*x[14]-0.9609*x[8]*x[9]-0.4794*x[8]*x[10]-0.4554*x[8]*x[12]+0.419*x[8]*x[13]+0.2012*x[8]*x[14]-0.6686*x[11]*x[13]-0.3088*x[11]*x[14]+0.4513*x[12]*x[14]+0.1751*x[13]*x[14]+0.8555*x[1]-0.4716*x[2]-0.4021*x[3]+0.9376*x[4]-0.2263*x[5]-0.0505*x[7]+0.7509*x[8]-0.5964*x[9]-0.111*x[10]-0.58*x[14]+0.6844*x[15]+0.4937*x[2]^2*x[4]-0.9963*x[2]^2*x[7]-0.024*x[2]^2*x[8]-0.1805*x[2]^2*x[9]-0.7463*x[2]^2*x[14]-0.8848*x[2]^2*x[15]+0.639*x[3]^2*x[8]-0.5287*x[3]^2*x[14]+0.1039*x[4]^2*x[2]+0.7002*x[4]^2*x[7]-0.3345*x[5]^2*x[1]+0.1707*x[5]^2*x[8]+0.7821*x[5]^2*x[10]+0.0676*x[5]^2*x[13]-0.9529*x[6]^2*x[9]-0.0786*x[7]^2*x[6]-0.272*x[7]^2*x[14]-0.0104*x[8]^2*x[4]+0.7739*x[8]^2*x[12]+0.5101*x[8]^2*x[14]+0.6723*x[9]^2*x[5]+0.8407*x[9]^2*x[14]-0.0227*x[10]^2*x[4]+0.6001*x[12]^2*x[4]+0.2598*x[12]^2*x[5]+0.4853*x[12]^2*x[9]-0.9244*x[12]^2*x[13]+0.4392*x[12]^2*x[14]-0.4062*x[13]^2*x[1]+0.1737*x[13]^2*x[5]+0.5348*x[13]^2*x[9]+0.0406*x[14]^2*x[7]+0.8218*x[14]^2*x[10]-0.4092*x[15]^2*x[10]+0.9922*x[1]*x[2]*x[10]-0.7187*x[1]*x[2]*x[11]+0.9102*x[1]*x[3]*x[8]+0.8936*x[1]*x[3]*x[13]-0.3615*x[1]*x[3]*x[14]+0.793*x[1]*x[4]*x[12]+0.8012*x[1]*x[4]*x[13]-0.9629*x[1]*x[4]*x[15]-0.9191*x[1]*x[5]*x[12]-0.537*x[1]*x[5]*x[14]+0.1062*x[1]*x[6]*x[8]-0.6935*x[1]*x[7]*x[10]-0.5303*x[1]*x[8]*x[11]+0.1633*x[1]*x[8]*x[14]+0.3695*x[1]*x[9]*x[13]-0.0427*x[1]*x[9]*x[15]-0.2603*x[1]*x[10]*x[11]+0.5813*x[1]*x[11]*x[12]-0.8078*x[1]*x[13]*x[14]-0.5108*x[2]*x[3]*x[4]-0.269*x[2]*x[3]*x[6]-0.3786*x[2]*x[3]*x[7]+0.5882*x[2]*x[3]*x[9]-0.9373*x[2]*x[3]*x[15]+0.4307*x[2]*x[4]*x[5]-0.0272*x[2]*x[4]*x[6]-0.5133*x[2]*x[4]*x[8]-0.7939*x[2]*x[4]*x[11]-0.6008*x[2]*x[5]*x[7]-0.4699*x[2]*x[5]*x[10]+0.1665*x[2]*x[5]*x[11]-0.1538*x[2]*x[5]*x[12]-0.8891*x[2]*x[5]*x[13]+0.2388*x[2]*x[6]*x[9]-0.2021*x[2]*x[6]*x[11]-0.2593*x[2]*x[6]*x[13]+0.6627*x[2]*x[6]*x[14]-0.2307*x[2]*x[7]*x[9]-0.6711*x[2]*x[7]*x[11]-0.5105*x[2]*x[7]*x[12]-0.2316*x[2]*x[7]*x[13]+0.8946*x[2]*x[8]*x[9]-0.9597*x[2]*x[8]*x[11]+0.8019*x[2]*x[8]*x[13]-0.3326*x[2]*x[8]*x[15]-0.1943*x[2]*x[12]*x[14]+0.7397*x[3]*x[4]*x[5]-0.364*x[3]*x[4]*x[7]-0.8678*x[3]*x[4]*x[9]+0.6004*x[3]*x[4]*x[10]+0.289*x[3]*x[4]*x[13]-0.6927*x[3]*x[5]*x[6]+0.6632*x[3]*x[5]*x[7]-0.6355*x[3]*x[6]*x[12]-0.3544*x[3]*x[7]*x[9]-0.7421*x[3]*x[8]*x[9]+0.9375*x[3]*x[8]*x[10]-0.4543*x[3]*x[8]*x[11]-0.7709*x[3]*x[8]*x[14]-0.4311*x[3]*x[9]*x[11]-0.9966*x[3]*x[9]*x[13]+0.3905*x[3]*x[9]*x[14]+0.4761*x[3]*x[10]*x[12]+0.7066*x[3]*x[11]*x[12]-0.5997*x[3]*x[11]*x[14]+0.2671*x[3]*x[12]*x[13]+0.5878*x[3]*x[13]*x[14]-0.118*x[3]*x[13]*x[15]+0.2701*x[4]*x[5]*x[7]+0.7582*x[4]*x[5]*x[8]-0.1247*x[4]*x[5]*x[12]-0.2946*x[4]*x[5]*x[15]-0.9679*x[4]*x[6]*x[7]-0.7099*x[4]*x[6]*x[12]-0.3128*x[4]*x[6]*x[13]-0.6438*x[4]*x[6]*x[14]+0.3713*x[4]*x[7]*x[12]+0.9626*x[4]*x[7]*x[15]-0.6054*x[4]*x[8]*x[12]-0.6364*x[4]*x[8]*x[13]+0.5759*x[4]*x[9]*x[13]-0.6584*x[4]*x[9]*x[15]+0.6552*x[4]*x[10]*x[12]+0.662*x[4]*x[13]*x[14]+0.2833*x[5]*x[6]*x[8]-0.6039*x[5]*x[6]*x[13]+0.1561*x[5]*x[7]*x[11]+0.1595*x[5]*x[7]*x[12]+0.2285*x[5]*x[7]*x[13]-0.3399*x[5]*x[7]*x[15]-0.5052*x[5]*x[8]*x[9]+0.9133*x[5]*x[8]*x[10]-0.6163*x[5]*x[8]*x[11]+0.6023*x[5]*x[8]*x[14]+0.6486*x[5]*x[9]*x[13]+0.715*x[5]*x[10]*x[13]+0.4973*x[5]*x[10]*x[14]-0.1733*x[5]*x[11]*x[15]-0.4806*x[5]*x[12]*x[13]+0.2301*x[5]*x[12]*x[15]-0.1935*x[5]*x[13]*x[15]+0.3971*x[6]*x[7]*x[15]+0.2268*x[6]*x[8]*x[12]+0.6833*x[6]*x[8]*x[13]+0.8089*x[6]*x[9]*x[14]-0.7102*x[6]*x[11]*x[13]-0.1191*x[6]*x[11]*x[15]+0.8765*x[6]*x[13]*x[14]-0.0866*x[7]*x[8]*x[9]-0.6645*x[7]*x[8]*x[13]-0.4727*x[7]*x[9]*x[11]-0.1567*x[7]*x[11]*x[14]-0.3244*x[7]*x[12]*x[14]+0.4772*x[8]*x[9]*x[10]-0.7104*x[8]*x[9]*x[11]-0.3882*x[8]*x[9]*x[14]-0.7051*x[8]*x[12]*x[15]-0.6773*x[8]*x[14]*x[15]-0.6211*x[9]*x[10]*x[11]+0.8281*x[9]*x[11]*x[12]-0.9543*x[9]*x[11]*x[15]+0.5798*x[9]*x[12]*x[13]-0.6162*x[9]*x[12]*x[15]-0.8348*x[10]*x[13]*x[14] <= 11.714)
@NLconstraint(m, e6, 0.9752*x[2]-0.0739*x[2]^2+0.9331*x[4]^2+0.718*x[4]+0.9068*x[7]^2-0.4859*x[7]^3+0.4356*x[7]+(-0.5483*x[10]^3)-0.8717*x[10]+(-0.7305*x[1]*x[4])-0.6108*x[1]*x[7]-0.9905*x[2]*x[4]-0.0214*x[2]*x[5]-0.5851*x[2]*x[7]+0.6834*x[2]*x[8]+0.7541*x[2]*x[12]+0.8304*x[2]*x[14]-0.0163*x[3]*x[6]-0.5702*x[3]*x[8]+0.1451*x[3]*x[10]-0.8095*x[3]*x[14]+0.6814*x[4]*x[8]+0.7339*x[4]*x[12]-0.0154*x[4]*x[14]-0.8707*x[5]*x[9]+0.5046*x[5]*x[13]-0.2238*x[5]*x[15]+0.4172*x[6]*x[7]+0.3311*x[6]*x[14]-0.2639*x[7]*x[8]-0.6172*x[7]*x[9]+0.3535*x[7]*x[14]-0.445*x[7]*x[15]-0.3488*x[8]*x[11]-0.9354*x[8]*x[12]-0.7546*x[9]*x[11]+0.1707*x[9]*x[12]-0.3824*x[9]*x[13]+0.2678*x[9]*x[14]+0.6726*x[10]*x[14]+0.8667*x[10]*x[15]-0.0828*x[11]*x[15]+0.4404*x[12]*x[13]+0.6062*x[1]+0.6288*x[3]-0.212*x[5]+0.6016*x[6]-0.9415*x[8]+0.2533*x[9]+0.5874*x[11]-0.5702*x[12]+0.2549*x[13]-0.8263*x[14]-0.0118*x[15]+0.0901*x[2]^2*x[3]+0.3834*x[2]^2*x[4]+0.7262*x[2]^2*x[14]+0.2698*x[3]^2*x[4]-0.2404*x[3]^2*x[9]+0.2496*x[4]^2*x[5]+0.7333*x[4]^2*x[9]+0.8752*x[4]^2*x[12]-0.1795*x[5]^2*x[1]-0.7008*x[5]^2*x[6]+0.6969*x[5]^2*x[13]+0.0697*x[5]^2*x[14]+0.1382*x[6]^2*x[11]+0.7247*x[6]^2*x[12]+0.1839*x[7]^2*x[6]+0.9522*x[7]^2*x[11]+0.8514*x[8]^2*x[5]+0.7499*x[8]^2*x[6]+0.5434*x[9]^2*x[7]+0.3045*x[9]^2*x[12]-0.17*x[10]^2*x[4]+0.795*x[10]^2*x[5]-0.94*x[11]^2*x[6]+0.7111*x[12]^2*x[8]+0.79*x[12]^2*x[9]-0.6211*x[12]^2*x[13]+0.5183*x[13]^2*x[4]-0.4578*x[13]^2*x[5]-0.3625*x[13]^2*x[12]-0.2872*x[14]^2*x[9]-0.6934*x[15]^2*x[4]+0.0811*x[1]*x[2]*x[7]+0.5318*x[1]*x[2]*x[8]+0.2857*x[1]*x[2]*x[12]+0.0185*x[1]*x[2]*x[13]-0.7621*x[1]*x[3]*x[5]-0.5138*x[1]*x[3]*x[7]-0.9312*x[1]*x[3]*x[9]-0.9775*x[1]*x[3]*x[14]+0.1397*x[1]*x[4]*x[8]-0.9264*x[1]*x[4]*x[12]-0.5938*x[1]*x[4]*x[13]+0.3237*x[1]*x[4]*x[14]-0.8251*x[1]*x[4]*x[15]+0.3219*x[1]*x[5]*x[6]-0.2322*x[1]*x[5]*x[11]+0.4665*x[1]*x[7]*x[13]-0.3327*x[1]*x[8]*x[11]-0.3619*x[1]*x[9]*x[12]+0.7187*x[1]*x[10]*x[11]+0.0718*x[1]*x[10]*x[12]-0.1596*x[1]*x[10]*x[14]+0.7385*x[1]*x[11]*x[13]+0.5776*x[1]*x[11]*x[14]-0.2555*x[2]*x[3]*x[5]-0.9067*x[2]*x[3]*x[10]-0.8038*x[2]*x[4]*x[5]-0.9451*x[2]*x[4]*x[6]+0.3673*x[2]*x[4]*x[9]+0.105*x[2]*x[5]*x[6]+0.8749*x[2]*x[5]*x[8]-0.519*x[2]*x[5]*x[9]+0.4014*x[2]*x[6]*x[8]-0.8983*x[2]*x[8]*x[12]-0.34*x[2]*x[8]*x[14]+0.9917*x[2]*x[9]*x[11]-0.7699*x[2]*x[10]*x[11]-0.0369*x[2]*x[10]*x[13]+0.491*x[2]*x[10]*x[14]-0.5986*x[2]*x[11]*x[13]+0.3044*x[2]*x[12]*x[14]-0.7818*x[2]*x[13]*x[15]+0.0402*x[3]*x[4]*x[7]-0.1212*x[3]*x[4]*x[8]+0.9199*x[3]*x[4]*x[10]+0.6216*x[3]*x[4]*x[11]-0.8353*x[3]*x[4]*x[13]-0.2397*x[3]*x[4]*x[15]+0.4066*x[3]*x[5]*x[8]-0.129*x[3]*x[5]*x[9]-0.3185*x[3]*x[5]*x[10]-0.1838*x[3]*x[5]*x[11]+0.892*x[3]*x[5]*x[12]-0.1405*x[3]*x[5]*x[13]-0.5673*x[3]*x[6]*x[7]-0.4557*x[3]*x[6]*x[9]+0.0309*x[3]*x[6]*x[13]-0.0625*x[3]*x[6]*x[14]-0.0356*x[3]*x[7]*x[8]+0.4243*x[3]*x[7]*x[9]+0.5394*x[3]*x[7]*x[10]-0.4811*x[3]*x[7]*x[14]+0.7988*x[3]*x[9]*x[15]-0.719*x[3]*x[11]*x[15]-0.7946*x[4]*x[5]*x[6]-0.8007*x[4]*x[5]*x[10]+0.7543*x[4]*x[5]*x[12]-0.0778*x[4]*x[5]*x[13]-0.7428*x[4]*x[6]*x[9]+0.5904*x[4]*x[6]*x[11]-0.6415*x[4]*x[6]*x[12]+0.3153*x[4]*x[7]*x[12]+0.29*x[4]*x[7]*x[14]-0.7118*x[4]*x[7]*x[15]-0.7047*x[4]*x[8]*x[9]+0.3333*x[4]*x[8]*x[10]-0.7243*x[4]*x[9]*x[13]+0.5078*x[4]*x[10]*x[12]-0.4484*x[4]*x[10]*x[13]-0.8997*x[4]*x[11]*x[12]+0.0173*x[4]*x[14]*x[15]+0.5574*x[5]*x[6]*x[13]+0.5935*x[5]*x[7]*x[10]-0.9741*x[5]*x[7]*x[12]-0.1032*x[5]*x[7]*x[14]-0.2155*x[5]*x[7]*x[15]+0.2398*x[5]*x[8]*x[10]-0.8701*x[5]*x[8]*x[13]-0.5965*x[5]*x[9]*x[10]-0.4899*x[5]*x[9]*x[14]+0.3716*x[5]*x[10]*x[12]+0.0287*x[5]*x[11]*x[13]+0.2319*x[5]*x[11]*x[14]-0.1445*x[6]*x[7]*x[8]-0.5187*x[6]*x[7]*x[9]+0.0961*x[6]*x[7]*x[15]+0.7741*x[6]*x[8]*x[9]-0.274*x[6]*x[8]*x[11]-0.2936*x[6]*x[8]*x[13]+0.5404*x[6]*x[8]*x[14]+0.4967*x[6]*x[9]*x[10]+0.0378*x[6]*x[9]*x[12]-0.1905*x[6]*x[9]*x[14]-0.5431*x[6]*x[12]*x[14]+0.8407*x[7]*x[8]*x[12]-0.951*x[7]*x[8]*x[13]-0.1018*x[7]*x[9]*x[12]+0.0457*x[7]*x[9]*x[13]-0.8618*x[7]*x[9]*x[14]+0.4662*x[7]*x[9]*x[15]+0.9056*x[7]*x[10]*x[11]+0.2384*x[7]*x[10]*x[13]-0.4954*x[7]*x[11]*x[14]+0.3397*x[7]*x[13]*x[15]+0.0142*x[8]*x[9]*x[13]-0.004*x[8]*x[10]*x[12]-0.2647*x[8]*x[10]*x[13]-0.6225*x[8]*x[10]*x[14]+0.6696*x[8]*x[11]*x[14]-0.7377*x[8]*x[12]*x[14]+0.9685*x[8]*x[13]*x[14]-0.9575*x[9]*x[10]*x[11]-0.1432*x[9]*x[10]*x[13]-0.0706*x[9]*x[10]*x[15]-0.3129*x[9]*x[11]*x[13]+0.0218*x[9]*x[12]*x[13]-0.4257*x[9]*x[12]*x[14]+0.376*x[10]*x[11]*x[13]-0.7886*x[10]*x[13]*x[15]-0.7847*x[11]*x[13]*x[14]+0.6819*x[11]*x[13]*x[15] <= 34.827)
@NLconstraint(m, e7, (-0.3301*x[6]^3)-0.2543*x[6]+0.1863*x[8]^2+0.1424*x[8]+0.0243*x[13]^3+0.6652*x[13]+0.139*x[2]*x[5]+0.7909*x[2]*x[14]-0.9487*x[3]*x[6]+0.2887*x[3]*x[8]-0.4853*x[3]*x[14]+0.1192*x[4]*x[5]+0.7216*x[4]*x[8]+0.5376*x[4]*x[9]-0.7762*x[4]*x[10]-0.592*x[5]*x[11]-0.8747*x[6]*x[7]+0.2645*x[6]*x[10]-0.6282*x[6]*x[13]-0.1764*x[7]*x[8]-0.4159*x[7]*x[9]+0.7008*x[7]*x[14]-0.296*x[8]*x[15]-0.4713*x[10]*x[15]-0.7212*x[11]*x[13]-0.5027*x[2]+0.1702*x[3]-0.6593*x[4]+0.3187*x[5]-0.0176*x[7]+0.0896*x[9]+0.1056*x[10]+0.5344*x[11]-0.2472*x[14]-0.6378*x[15]+0.1712*x[1]^2*x[7]-0.2621*x[1]^2*x[5]-0.5561*x[2]^2*x[6]-0.9334*x[2]^2*x[7]-0.9317*x[3]^2*x[5]-0.1236*x[3]^2*x[14]+0.6097*x[4]^2*x[1]+0.7375*x[4]^2*x[3]+0.9637*x[4]^2*x[5]-0.5678*x[4]^2*x[9]+0.5498*x[4]^2*x[12]+0.2545*x[5]^2*x[7]+0.5965*x[5]^2*x[8]-0.5929*x[6]^2*x[5]-0.305*x[6]^2*x[8]-0.241*x[7]^2*x[6]+0.5367*x[7]^2*x[11]+0.152*x[7]^2*x[14]+0.9199*x[8]^2*x[3]-0.6418*x[8]^2*x[11]-0.7163*x[9]^2*x[3]+0.0896*x[9]^2*x[6]+0.0738*x[9]^2*x[7]-0.6301*x[9]^2*x[14]-0.0977*x[10]^2*x[13]+0.9828*x[11]^2*x[4]-0.2743*x[11]^2*x[14]-0.1188*x[12]^2*x[2]-0.1671*x[13]^2*x[8]+0.8367*x[13]^2*x[12]-0.8153*x[14]^2*x[4]+0.0882*x[14]^2*x[12]+0.7868*x[1]+0.3303*x[12]+(-0.6339*x[1]*x[2]*x[3])-0.4457*x[1]*x[2]*x[6]+0.8332*x[1]*x[2]*x[7]-0.7057*x[1]*x[2]*x[9]-0.7263*x[1]*x[3]*x[13]-0.6349*x[1]*x[4]*x[10]-0.4563*x[1]*x[4]*x[12]-0.2847*x[1]*x[5]*x[8]-0.3068*x[1]*x[5]*x[10]+0.3084*x[1]*x[7]*x[9]+0.5273*x[1]*x[7]*x[10]-0.3247*x[1]*x[8]*x[11]-0.2688*x[1]*x[8]*x[13]+0.9771*x[1]*x[8]*x[15]+0.4281*x[1]*x[9]*x[11]-0.2243*x[1]*x[9]*x[13]-0.5273*x[1]*x[10]*x[11]-0.6832*x[1]*x[13]*x[14]+0.0642*x[2]*x[3]*x[5]+0.5709*x[2]*x[3]*x[9]+0.0044*x[2]*x[3]*x[11]+0.6702*x[2]*x[3]*x[14]+0.088*x[2]*x[3]*x[15]+0.5299*x[2]*x[4]*x[5]+0.412*x[2]*x[4]*x[11]-0.0003*x[2]*x[4]*x[12]-0.1445*x[2]*x[4]*x[14]-0.5075*x[2]*x[5]*x[10]+0.6916*x[2]*x[5]*x[14]+0.4292*x[2]*x[6]*x[7]+0.3482*x[2]*x[6]*x[14]-0.134*x[2]*x[7]*x[8]+0.1899*x[2]*x[7]*x[11]-0.1742*x[2]*x[7]*x[12]+0.7993*x[2]*x[7]*x[15]+0.5306*x[2]*x[8]*x[15]+0.4543*x[2]*x[9]*x[10]+0.1477*x[2]*x[9]*x[11]-0.6242*x[2]*x[9]*x[14]+0.8402*x[2]*x[10]*x[14]+0.9102*x[2]*x[11]*x[14]-0.4008*x[2]*x[11]*x[15]+0.9264*x[2]*x[14]*x[15]+0.4003*x[3]*x[4]*x[10]-0.4616*x[3]*x[4]*x[11]-0.5807*x[3]*x[4]*x[12]+0.862*x[3]*x[5]*x[11]-0.9038*x[3]*x[5]*x[13]-0.1819*x[3]*x[6]*x[12]+0.7676*x[3]*x[6]*x[13]-0.0479*x[3]*x[6]*x[14]-0.5678*x[3]*x[7]*x[9]+0.1265*x[3]*x[7]*x[10]-0.7647*x[3]*x[7]*x[11]+0.9049*x[3]*x[7]*x[13]-0.181*x[3]*x[8]*x[9]+0.9152*x[3]*x[8]*x[11]+0.5613*x[3]*x[8]*x[12]+0.7761*x[3]*x[9]*x[13]+0.6791*x[3]*x[10]*x[13]+0.2205*x[3]*x[10]*x[14]-0.9515*x[3]*x[12]*x[13]+0.1157*x[3]*x[14]*x[15]-0.6466*x[4]*x[5]*x[6]-0.1387*x[4]*x[5]*x[10]+0.764*x[4]*x[5]*x[14]+0.2051*x[4]*x[6]*x[9]+0.2393*x[4]*x[6]*x[11]-0.773*x[4]*x[6]*x[12]+0.7086*x[4]*x[6]*x[15]+0.6111*x[4]*x[7]*x[8]+0.7132*x[4]*x[7]*x[9]-0.6868*x[4]*x[7]*x[12]-0.2174*x[4]*x[8]*x[11]-0.5991*x[4]*x[9]*x[12]+0.3642*x[4]*x[10]*x[13]-0.7254*x[4]*x[12]*x[13]+0.8108*x[4]*x[12]*x[15]+0.6631*x[4]*x[13]*x[14]+0.6304*x[5]*x[6]*x[7]-0.0511*x[5]*x[6]*x[8]-0.8548*x[5]*x[6]*x[10]+0.8433*x[5]*x[6]*x[11]-0.67*x[5]*x[6]*x[13]-0.252*x[5]*x[7]*x[10]+0.0519*x[5]*x[7]*x[11]-0.8141*x[5]*x[7]*x[12]-0.517*x[5]*x[7]*x[14]-0.6851*x[5]*x[7]*x[15]-0.9483*x[5]*x[8]*x[9]+0.1824*x[5]*x[8]*x[11]-0.5931*x[5]*x[8]*x[12]-0.8087*x[5]*x[8]*x[13]+0.0181*x[5]*x[8]*x[15]-0.8217*x[5]*x[9]*x[11]-0.4332*x[5]*x[10]*x[11]+0.9323*x[5]*x[10]*x[13]-0.7664*x[5]*x[11]*x[12]-0.2126*x[5]*x[11]*x[13]+0.6048*x[5]*x[11]*x[14]-0.4001*x[5]*x[12]*x[13]-0.337*x[6]*x[7]*x[8]-0.3436*x[6]*x[7]*x[9]-0.7284*x[6]*x[7]*x[10]-0.3547*x[6]*x[7]*x[13]+0.526*x[6]*x[7]*x[15]-0.6345*x[6]*x[8]*x[10]-0.8198*x[6]*x[8]*x[14]-0.8553*x[6]*x[9]*x[11]-0.032*x[6]*x[9]*x[14]+0.9259*x[6]*x[9]*x[15]-0.5848*x[6]*x[10]*x[11]-0.9363*x[6]*x[10]*x[13]+0.3567*x[6]*x[10]*x[14]-0.6766*x[6]*x[10]*x[15]+0.6498*x[6]*x[13]*x[14]+0.4676*x[7]*x[8]*x[11]-0.892*x[7]*x[8]*x[12]+0.8631*x[7]*x[8]*x[13]+0.0637*x[7]*x[8]*x[14]+0.0914*x[7]*x[9]*x[15]-0.327*x[7]*x[10]*x[13]-0.87*x[7]*x[11]*x[14]-0.2628*x[7]*x[13]*x[15]-0.195*x[7]*x[14]*x[15]-0.0756*x[8]*x[9]*x[10]+0.6253*x[8]*x[9]*x[14]-0.6088*x[8]*x[9]*x[15]-0.2063*x[8]*x[10]*x[11]-0.4247*x[8]*x[10]*x[13]-0.6176*x[8]*x[11]*x[12]-0.4895*x[8]*x[12]*x[13]-0.7439*x[8]*x[12]*x[15]+0.6733*x[8]*x[14]*x[15]-0.6057*x[9]*x[10]*x[11]+0.4233*x[9]*x[11]*x[13]+0.7677*x[9]*x[11]*x[14]-0.0024*x[9]*x[12]*x[13]+0.7567*x[9]*x[12]*x[14]+0.8573*x[9]*x[13]*x[14]-0.041*x[10]*x[11]*x[12]-0.1272*x[10]*x[11]*x[15]-0.464*x[10]*x[12]*x[13]+0.8569*x[11]*x[13]*x[14]+0.1183*x[11]*x[13]*x[15]+0.9482*x[13]*x[14]*x[15] <= 81.99)
@NLconstraint(m, e8, 0.1789*x[2]-0.4988*x[2]^2+0.2164*x[5]^2+0.0193*x[5]+(-0.5245*x[10]^2)-0.8618*x[10]+0.3283*x[13]^2-0.3365*x[13]+0.8348*x[1]*x[4]-0.2258*x[2]*x[4]+0.0205*x[2]*x[6]-0.8993*x[2]*x[7]+0.745*x[2]*x[8]+0.3171*x[2]*x[9]+0.7982*x[2]*x[13]-0.262*x[3]*x[4]+0.123*x[3]*x[6]+0.269*x[3]*x[11]-0.8901*x[4]*x[5]+0.4994*x[4]*x[6]+0.0036*x[4]*x[8]-0.8283*x[4]*x[13]-0.6436*x[4]*x[14]+0.8743*x[4]*x[15]+0.0885*x[5]*x[7]-0.2338*x[5]*x[8]-0.9917*x[5]*x[9]-0.8572*x[6]*x[14]+0.0808*x[6]*x[15]-0.064*x[7]*x[8]+0.4967*x[7]*x[9]-0.3456*x[7]*x[14]+0.3658*x[7]*x[15]-0.4768*x[8]*x[12]+0.3496*x[8]*x[13]+0.3404*x[9]*x[13]-0.4257*x[11]*x[12]+0.0244*x[13]*x[14]-0.2018*x[1]-0.9294*x[3]+0.1701*x[4]+0.3016*x[6]+0.6918*x[7]+0.6421*x[8]+0.7865*x[9]+0.1377*x[11]+0.1506*x[12]-0.4423*x[14]-0.4405*x[15]+0.4638*x[1]^2*x[2]+0.9117*x[2]^2*x[12]+0.03*x[2]^2*x[14]+0.1838*x[2]^2*x[15]-0.1266*x[3]^2*x[4]-0.1509*x[3]^2*x[15]+0.7013*x[4]^2*x[2]+0.6574*x[4]^2*x[8]+0.8528*x[4]^2*x[10]+0.5798*x[4]^2*x[11]-0.959*x[5]^2*x[2]-0.7525*x[5]^2*x[15]+0.3616*x[7]^2*x[1]-0.4859*x[7]^2*x[3]+0.6655*x[7]^2*x[13]+0.9733*x[8]^2*x[10]-0.0952*x[9]^2*x[2]+0.0403*x[9]^2*x[4]+0.0047*x[9]^2*x[8]-0.9944*x[9]^2*x[12]+0.6325*x[10]^2*x[5]+0.0108*x[10]^2*x[8]+0.3287*x[10]^2*x[14]+0.5868*x[11]^2*x[12]+0.0085*x[11]^2*x[14]-0.6955*x[12]^2*x[2]+0.8644*x[12]^2*x[15]+0.0745*x[13]^2*x[14]+0.2622*x[14]^2*x[8]+0.1574*x[15]^2*x[7]+0.1096*x[1]*x[3]*x[6]-0.1795*x[1]*x[3]*x[4]-0.055*x[1]*x[4]*x[10]-0.8731*x[1]*x[5]*x[6]+0.9438*x[1]*x[5]*x[7]+0.6689*x[1]*x[5]*x[12]+0.6862*x[1]*x[5]*x[14]-0.6182*x[1]*x[5]*x[15]+0.8699*x[1]*x[6]*x[12]-0.0414*x[1]*x[7]*x[11]+0.4268*x[1]*x[8]*x[12]-0.3213*x[1]*x[8]*x[13]-0.0317*x[1]*x[8]*x[14]-0.6337*x[1]*x[10]*x[13]-0.8315*x[1]*x[12]*x[13]+0.0893*x[1]*x[12]*x[14]+0.9063*x[2]*x[3]*x[4]+0.7275*x[2]*x[3]*x[8]+0.5834*x[2]*x[3]*x[9]+0.4162*x[2]*x[3]*x[14]-0.0376*x[2]*x[4]*x[6]-0.6806*x[2]*x[4]*x[8]-0.5469*x[2]*x[4]*x[10]+0.0343*x[2]*x[4]*x[12]+0.0896*x[2]*x[5]*x[6]+0.3409*x[2]*x[5]*x[9]+0.1936*x[2]*x[5]*x[11]-0.4265*x[2]*x[6]*x[8]-0.4062*x[2]*x[6]*x[9]-0.459*x[2]*x[6]*x[10]+0.6527*x[2]*x[6]*x[13]+0.0185*x[2]*x[6]*x[15]+0.9219*x[2]*x[7]*x[10]-0.8618*x[2]*x[9]*x[14]-0.5828*x[2]*x[9]*x[15]+0.2504*x[2]*x[10]*x[11]-0.4328*x[2]*x[10]*x[12]-0.4342*x[2]*x[11]*x[12]-0.1196*x[2]*x[11]*x[13]+0.6796*x[2]*x[11]*x[14]+0.1624*x[2]*x[12]*x[13]+0.3537*x[2]*x[12]*x[15]-0.3478*x[2]*x[13]*x[14]+0.0407*x[2]*x[14]*x[15]-0.4517*x[3]*x[4]*x[5]+0.1166*x[3]*x[4]*x[7]-0.7907*x[3]*x[4]*x[10]-0.4032*x[3]*x[4]*x[12]-0.6042*x[3]*x[5]*x[6]-0.0116*x[3]*x[5]*x[9]-0.2933*x[3]*x[5]*x[10]+0.9137*x[3]*x[5]*x[14]+0.3568*x[3]*x[6]*x[7]+0.8673*x[3]*x[6]*x[9]+0.0008*x[3]*x[7]*x[9]-0.8492*x[3]*x[7]*x[12]-0.9532*x[3]*x[7]*x[13]+0.6714*x[3]*x[7]*x[14]-0.0052*x[3]*x[9]*x[12]+0.0633*x[3]*x[10]*x[13]+0.704*x[3]*x[11]*x[14]-0.8823*x[3]*x[13]*x[15]+0.7918*x[4]*x[5]*x[10]-0.5433*x[4]*x[5]*x[12]+0.6552*x[4]*x[5]*x[14]-0.5318*x[4]*x[6]*x[11]-0.0856*x[4]*x[6]*x[12]+0.7774*x[4]*x[6]*x[13]-0.2475*x[4]*x[6]*x[14]+0.4292*x[4]*x[7]*x[11]+0.2819*x[4]*x[8]*x[9]-0.699*x[4]*x[8]*x[12]-0.7313*x[4]*x[10]*x[11]+0.6122*x[4]*x[10]*x[15]-0.3891*x[4]*x[12]*x[14]+0.452*x[4]*x[13]*x[14]-0.2028*x[5]*x[6]*x[7]-0.423*x[5]*x[6]*x[13]-0.0837*x[5]*x[7]*x[10]-0.0872*x[5]*x[7]*x[11]+0.563*x[5]*x[7]*x[12]+0.3904*x[5]*x[7]*x[13]+0.1978*x[5]*x[8]*x[10]+0.2489*x[5]*x[9]*x[10]+0.5503*x[5]*x[9]*x[13]-0.3255*x[5]*x[9]*x[14]+0.3121*x[5]*x[10]*x[14]+0.6418*x[5]*x[11]*x[12]+0.0793*x[5]*x[11]*x[13]-0.1694*x[5]*x[12]*x[14]+0.5267*x[5]*x[14]*x[15]-0.8849*x[6]*x[7]*x[8]-0.2522*x[6]*x[7]*x[12]+0.3303*x[6]*x[7]*x[15]+0.6501*x[6]*x[8]*x[9]+0.8433*x[6]*x[8]*x[10]+0.6877*x[6]*x[8]*x[11]+0.2798*x[6]*x[8]*x[13]+0.1959*x[6]*x[8]*x[14]+0.7364*x[6]*x[9]*x[10]+0.8668*x[6]*x[9]*x[11]-0.0561*x[6]*x[9]*x[13]-0.5331*x[6]*x[9]*x[14]-0.9004*x[6]*x[10]*x[11]+0.8714*x[6]*x[10]*x[12]-0.9965*x[6]*x[10]*x[13]-0.0436*x[6]*x[12]*x[14]-0.2763*x[6]*x[12]*x[15]-0.6667*x[7]*x[8]*x[9]+0.4072*x[7]*x[8]*x[11]+0.9252*x[7]*x[8]*x[13]+0.1945*x[7]*x[9]*x[13]-0.1248*x[7]*x[9]*x[15]+0.8911*x[7]*x[10]*x[13]+0.3746*x[7]*x[10]*x[14]+0.72*x[7]*x[11]*x[13]+0.7925*x[7]*x[12]*x[14]-0.5731*x[7]*x[13]*x[14]-0.1529*x[8]*x[9]*x[15]-0.3799*x[8]*x[11]*x[12]-0.0876*x[8]*x[11]*x[15]+0.3962*x[9]*x[10]*x[11]+0.1321*x[9]*x[10]*x[12]+0.3085*x[9]*x[10]*x[15]-0.61*x[9]*x[11]*x[12]+0.5383*x[9]*x[11]*x[15]+0.3413*x[9]*x[12]*x[13]+0.2089*x[9]*x[13]*x[15]-0.4085*x[10]*x[11]*x[13]-0.5172*x[10]*x[11]*x[14]-0.2335*x[10]*x[12]*x[14]-0.4303*x[10]*x[13]*x[14]-0.3527*x[11]*x[12]*x[13]-0.8633*x[11]*x[12]*x[14] <= 84.884)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script. 