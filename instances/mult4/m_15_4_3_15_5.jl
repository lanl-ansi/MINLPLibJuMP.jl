using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5433*x[1]*x[9]+0.9922*x[2]*x[10]-0.4262*x[3]*x[4]+0.8936*x[3]*x[13]-0.8038*x[4]*x[5]+0.3729*x[4]*x[9]+0.793*x[4]*x[12]+0.6466*x[5]*x[6]+0.5494*x[6]*x[7]-0.7744*x[6]*x[11]-0.5303*x[8]*x[11]-0.8628*x[10]*x[11]+0.7045*x[11]*x[12]-0.1449*x[11]*x[13]+0.8534*x[12]*x[13]-0.9786*x[1]-0.395*x[2]-0.4541*x[3]-0.1795*x[4]+0.6062*x[5]+0.9752*x[6]+0.6288*x[7]+0.718*x[8]-0.212*x[9]+0.6016*x[10]+0.4356*x[11]-0.9415*x[12]+0.2533*x[13]+(-0.4559*x[1]*x[2]*x[9])-0.2396*x[1]*x[2]*x[12]-0.4385*x[1]*x[2]*x[15]+0.1241*x[1]*x[3]*x[4]+0.5855*x[1]*x[3]*x[12]-0.3903*x[1]*x[4]*x[5]-0.4156*x[1]*x[4]*x[6]+0.9802*x[1]*x[4]*x[7]-0.2507*x[1]*x[4]*x[10]-0.8251*x[1]*x[4]*x[15]-0.2322*x[1]*x[5]*x[11]-0.0809*x[1]*x[6]*x[13]-0.6329*x[1]*x[6]*x[14]-0.5587*x[1]*x[7]*x[13]-0.3636*x[1]*x[8]*x[9]+0.2899*x[1]*x[8]*x[10]-0.0277*x[2]*x[3]*x[7]+0.2274*x[2]*x[3]*x[13]-0.1568*x[2]*x[3]*x[14]-0.7023*x[2]*x[4]*x[6]-0.7825*x[2]*x[4]*x[11]+0.7559*x[2]*x[4]*x[12]-0.8143*x[2]*x[4]*x[15]-0.091*x[2]*x[5]*x[7]-0.2639*x[2]*x[7]*x[8]+0.7878*x[2]*x[7]*x[9]+0.8965*x[2]*x[8]*x[12]-0.6924*x[2]*x[9]*x[10]+0.9966*x[3]*x[4]*x[8]-0.4953*x[3]*x[4]*x[13]-0.9747*x[3]*x[5]*x[6]+0.8906*x[3]*x[5]*x[9]-0.5693*x[3]*x[5]*x[14]-0.1509*x[3]*x[6]*x[7]-0.6943*x[3]*x[7]*x[10]-0.7056*x[3]*x[7]*x[13]-0.9696*x[3]*x[8]*x[9]+0.7955*x[3]*x[10]*x[11]-0.0746*x[3]*x[11]*x[13]+0.9124*x[3]*x[13]*x[15]-0.0889*x[4]*x[5]*x[8]+0.3031*x[4]*x[5]*x[9]+0.3179*x[4]*x[5]*x[10]-0.2285*x[4]*x[5]*x[12]+0.066*x[4]*x[5]*x[13]+0.0477*x[4]*x[6]*x[11]+0.0222*x[4]*x[9]*x[13]-0.3526*x[4]*x[10]*x[13]-0.1206*x[4]*x[11]*x[13]-0.3088*x[4]*x[11]*x[14]-0.3883*x[5]*x[6]*x[13]-0.7884*x[5]*x[6]*x[15]-0.2401*x[5]*x[8]*x[9]-0.2165*x[5]*x[8]*x[13]-0.5574*x[5]*x[10]*x[12]-0.6512*x[5]*x[10]*x[14]+0.7036*x[6]*x[7]*x[8]-0.0657*x[6]*x[8]*x[15]-0.1694*x[6]*x[9]*x[13]-0.5431*x[6]*x[12]*x[14]+0.4374*x[6]*x[13]*x[14]+0.1874*x[7]*x[8]*x[11]-0.0936*x[7]*x[9]*x[11]-0.1348*x[7]*x[11]*x[14]+0.0574*x[8]*x[9]*x[13]+0.2883*x[8]*x[9]*x[14]+0.2924*x[8]*x[11]*x[12]+0.2235*x[8]*x[11]*x[15]-0.1893*x[8]*x[12]*x[13]-0.9965*x[9]*x[10]*x[11]+0.5622*x[9]*x[10]*x[14]+0.0218*x[9]*x[12]*x[13]-0.0852*x[9]*x[12]*x[14]+0.1171*x[10]*x[12]*x[15]-0.7886*x[10]*x[13]*x[15]+0.8726*x[11]*x[12]*x[14]-0.1559*x[12]*x[13]*x[14]-0.8717*x[14]+0.5874*x[15]+0.927*x[1]*x[2]*x[3]*x[8]+0.7133*x[1]*x[2]*x[3]*x[10]+0.3341*x[1]*x[2]*x[3]*x[13]+0.9992*x[1]*x[2]*x[3]*x[14]-0.8157*x[1]*x[2]*x[4]*x[9]+0.8661*x[1]*x[2]*x[5]*x[7]-0.4216*x[1]*x[2]*x[5]*x[12]+0.8304*x[1]*x[2]*x[5]*x[14]-0.1204*x[1]*x[2]*x[7]*x[9]-0.985*x[1]*x[3]*x[4]*x[8]+0.0386*x[1]*x[3]*x[5]*x[8]-0.1561*x[1]*x[3]*x[5]*x[11]+0.2041*x[1]*x[3]*x[5]*x[14]+0.6373*x[1]*x[3]*x[10]*x[14]+0.121*x[1]*x[3]*x[12]*x[15]-0.7061*x[1]*x[3]*x[13]*x[15]+0.0316*x[1]*x[4]*x[5]*x[13]+0.8881*x[1]*x[4]*x[6]*x[7]-0.9275*x[1]*x[4]*x[7]*x[9]-0.425*x[1]*x[4]*x[10]*x[12]+0.8012*x[1]*x[4]*x[10]*x[13]-0.5734*x[1]*x[4]*x[10]*x[14]+0.6729*x[1]*x[5]*x[7]*x[14]+0.0766*x[1]*x[5]*x[8]*x[13]+0.0826*x[1]*x[5]*x[9]*x[11]-0.8078*x[1]*x[5]*x[13]*x[14]-0.1051*x[1]*x[6]*x[9]*x[10]-0.7893*x[1]*x[6]*x[10]*x[11]-0.007*x[1]*x[6]*x[11]*x[13]+0.7084*x[1]*x[7]*x[8]*x[9]+0.095*x[1]*x[7]*x[10]*x[13]+0.9656*x[1]*x[9]*x[11]*x[13]-0.0427*x[1]*x[9]*x[14]*x[15]+0.7187*x[1]*x[10]*x[11]*x[12]+0.0718*x[1]*x[10]*x[12]*x[13]+0.7785*x[1]*x[10]*x[12]*x[14]+0.1194*x[1]*x[11]*x[12]*x[14]+0.9782*x[2]*x[3]*x[5]*x[6]+0.3369*x[2]*x[3]*x[5]*x[8]+0.8059*x[2]*x[3]*x[5]*x[9]-0.6003*x[2]*x[3]*x[6]*x[7]-0.2404*x[2]*x[3]*x[9]*x[12]+0.2841*x[2]*x[3]*x[12]*x[13]-0.8142*x[2]*x[3]*x[14]*x[15]+0.5451*x[2]*x[4]*x[5]*x[10]-0.5853*x[2]*x[4]*x[5]*x[11]+0.7302*x[2]*x[4]*x[6]*x[10]-0.0366*x[2]*x[4]*x[7]*x[8]-0.1*x[2]*x[4]*x[7]*x[12]-0.58*x[2]*x[4]*x[7]*x[13]-0.3711*x[2]*x[4]*x[8]*x[13]-0.0031*x[2]*x[4]*x[9]*x[11]-0.6106*x[2]*x[4]*x[10]*x[12]-0.3049*x[2]*x[4]*x[10]*x[14]-0.5065*x[2]*x[4]*x[11]*x[12]-0.707*x[2]*x[4]*x[11]*x[14]-0.9271*x[2]*x[4]*x[12]*x[14]+0.1069*x[2]*x[5]*x[7]*x[9]+0.6994*x[2]*x[5]*x[7]*x[11]-0.0319*x[2]*x[5]*x[7]*x[14]-0.34*x[2]*x[5]*x[8]*x[14]-0.0091*x[2]*x[5]*x[9]*x[11]-0.7699*x[2]*x[5]*x[10]*x[11]-0.2626*x[2]*x[5]*x[10]*x[13]+0.8634*x[2]*x[5]*x[11]*x[13]+0.7541*x[2]*x[5]*x[12]*x[13]+0.7311*x[2]*x[6]*x[7]*x[9]+0.7482*x[2]*x[6]*x[7]*x[11]+0.4172*x[2]*x[6]*x[7]*x[13]-0.9354*x[2]*x[6]*x[8]*x[12]-0.7701*x[2]*x[6]*x[8]*x[15]-0.503*x[2]*x[6]*x[9]*x[13]+0.4142*x[2]*x[6]*x[13]*x[14]-0.0218*x[2]*x[7]*x[10]*x[14]-0.5986*x[2]*x[7]*x[11]*x[13]-0.5105*x[2]*x[7]*x[12]*x[14]+0.3535*x[2]*x[7]*x[13]*x[14]-0.5066*x[2]*x[8]*x[10]*x[12]+0.58*x[2]*x[8]*x[11]*x[13]-0.1777*x[2]*x[8]*x[11]*x[15]-0.7299*x[2]*x[9]*x[11]*x[15]-0.1132*x[2]*x[10]*x[11]*x[14]-0.808*x[2]*x[10]*x[12]*x[14]-0.1586*x[2]*x[11]*x[12]*x[13]-0.8148*x[3]*x[4]*x[5]*x[9]+0.0135*x[3]*x[4]*x[5]*x[13]-0.1273*x[3]*x[4]*x[6]*x[10]+0.5904*x[3]*x[4]*x[6]*x[11]-0.7099*x[3]*x[4]*x[6]*x[12]-0.8978*x[3]*x[4]*x[7]*x[10]+0.612*x[3]*x[4]*x[7]*x[15]-0.1169*x[3]*x[4]*x[9]*x[10]-0.4311*x[3]*x[4]*x[9]*x[11]+0.4125*x[3]*x[4]*x[9]*x[13]-0.8258*x[3]*x[4]*x[9]*x[14]-0.9437*x[3]*x[4]*x[10]*x[14]+0.1824*x[3]*x[4]*x[11]*x[14]-0.8657*x[3]*x[4]*x[11]*x[15]+0.4066*x[3]*x[5]*x[7]*x[8]+0.4406*x[3]*x[5]*x[7]*x[9]+0.8422*x[3]*x[5]*x[7]*x[10]+0.6331*x[3]*x[5]*x[7]*x[11]+0.1416*x[3]*x[5]*x[7]*x[14]+0.5963*x[3]*x[5]*x[8]*x[11]-0.8856*x[3]*x[5]*x[9]*x[13]-0.0161*x[3]*x[5]*x[12]*x[14]+0.7189*x[3]*x[5]*x[13]*x[15]+0.0855*x[3]*x[6]*x[7]*x[9]-0.6274*x[3]*x[6]*x[7]*x[12]-0.5164*x[3]*x[6]*x[8]*x[14]-0.0828*x[3]*x[6]*x[9]*x[15]+0.1363*x[3]*x[6]*x[12]*x[15]+0.6314*x[3]*x[7]*x[8]*x[9]+0.9474*x[3]*x[7]*x[9]*x[11]+0.7613*x[3]*x[7]*x[10]*x[12]+0.5094*x[3]*x[7]*x[11]*x[14]-0.745*x[3]*x[8]*x[9]*x[11]-0.0005*x[3]*x[8]*x[9]*x[12]-0.7214*x[3]*x[8]*x[9]*x[13]-0.0569*x[3]*x[8]*x[11]*x[13]-0.719*x[3]*x[8]*x[11]*x[15]+0.3905*x[3]*x[9]*x[10]*x[14]-0.9966*x[3]*x[9]*x[11]*x[13]-0.3492*x[3]*x[9]*x[12]*x[15]+0.7748*x[3]*x[11]*x[13]*x[14]-0.3786*x[4]*x[5]*x[6]*x[10]-0.1503*x[4]*x[5]*x[6]*x[14]+0.3022*x[4]*x[5]*x[6]*x[15]-0.1451*x[4]*x[5]*x[7]*x[9]+0.7582*x[4]*x[5]*x[8]*x[12]-0.7122*x[4]*x[5]*x[10]*x[12]-0.0813*x[4]*x[5]*x[10]*x[13]+0.659*x[4]*x[5]*x[10]*x[14]-0.1247*x[4]*x[5]*x[12]*x[15]+0.0309*x[4]*x[6]*x[8]*x[11]+0.1223*x[4]*x[6]*x[8]*x[13]+0.3429*x[4]*x[6]*x[10]*x[12]-0.6654*x[4]*x[6]*x[12]*x[13]-0.6415*x[4]*x[6]*x[12]*x[14]-0.259*x[4]*x[6]*x[13]*x[14]+0.3436*x[4]*x[7]*x[8]*x[13]-0.4306*x[4]*x[7]*x[8]*x[14]+0.7092*x[4]*x[7]*x[8]*x[15]+0.3153*x[4]*x[7]*x[10]*x[12]+0.3586*x[4]*x[8]*x[9]*x[12]-0.7243*x[4]*x[8]*x[9]*x[13]+0.397*x[4]*x[8]*x[10]*x[11]-0.0548*x[4]*x[8]*x[10]*x[13]-0.0329*x[4]*x[8]*x[11]*x[13]-0.3179*x[4]*x[9]*x[11]*x[12]-0.7031*x[4]*x[9]*x[12]*x[13]-0.1024*x[4]*x[10]*x[12]*x[13]-0.2469*x[4]*x[10]*x[12]*x[14]-0.3625*x[4]*x[11]*x[12]*x[13]-0.3802*x[4]*x[12]*x[13]*x[15]-0.9846*x[5]*x[6]*x[7]*x[15]+0.0659*x[5]*x[6]*x[9]*x[14]+0.1155*x[5]*x[6]*x[10]*x[14]+0.5364*x[5]*x[7]*x[8]*x[12]+0.7734*x[5]*x[7]*x[9]*x[11]-0.3399*x[5]*x[7]*x[11]*x[15]+0.1595*x[5]*x[7]*x[12]*x[13]-0.3577*x[5]*x[7]*x[14]*x[15]+0.7842*x[5]*x[8]*x[9]*x[13]+0.1305*x[5]*x[8]*x[9]*x[14]-0.694*x[5]*x[8]*x[10]*x[14]+0.2398*x[5]*x[8]*x[10]*x[15]-0.3284*x[5]*x[8]*x[11]*x[13]-0.1951*x[5]*x[8]*x[14]*x[15]-0.2447*x[5]*x[9]*x[10]*x[12]+0.9853*x[5]*x[9]*x[10]*x[14]-0.0013*x[5]*x[9]*x[11]*x[13]+0.2555*x[5]*x[9]*x[12]*x[13]-0.9756*x[5]*x[10]*x[12]*x[13]+0.8555*x[5]*x[11]*x[12]*x[14]+0.0153*x[6]*x[7]*x[9]*x[14]-0.8154*x[6]*x[7]*x[11]*x[15]+0.4488*x[6]*x[8]*x[9]*x[12]+0.4008*x[6]*x[8]*x[10]*x[12]+0.8341*x[6]*x[8]*x[10]*x[13]-0.1836*x[6]*x[8]*x[10]*x[15]-0.9575*x[6]*x[9]*x[10]*x[11]-0.5052*x[6]*x[11]*x[13]*x[15]-0.3552*x[6]*x[12]*x[13]*x[14]-0.158*x[6]*x[12]*x[13]*x[15]-0.2783*x[7]*x[8]*x[9]*x[11]-0.1216*x[7]*x[8]*x[9]*x[13]+0.4662*x[7]*x[8]*x[9]*x[15]+0.6884*x[7]*x[8]*x[10]*x[13]-0.7419*x[7]*x[8]*x[13]*x[15]+0.1293*x[7]*x[11]*x[12]*x[13]+0.3603*x[7]*x[11]*x[12]*x[14]-0.0466*x[8]*x[9]*x[10]*x[11]-0.392*x[8]*x[10]*x[13]*x[14]-0.7051*x[8]*x[12]*x[13]*x[15]+0.0868*x[9]*x[13]*x[14]*x[15])+obj == 0.0)
@NLconstraint(m, e2, 0.0797*x[2]*x[11]+0.8382*x[3]*x[6]+0.4013*x[4]*x[13]+0.6862*x[5]*x[14]-0.8572*x[6]*x[14]-0.7005*x[7]*x[12]-0.1287*x[7]*x[15]+0.7832*x[8]*x[10]-0.8618*x[9]*x[14]-0.4303*x[10]*x[13]+0.3912*x[11]*x[14]+0.2218*x[2]+0.3962*x[3]-0.2344*x[4]+0.1128*x[5]-0.795*x[6]-0.7154*x[7]+0.5834*x[8]-0.0633*x[9]-0.3239*x[10]-0.1284*x[11]-0.7272*x[12]+0.3568*x[13]-0.0943*x[14]+0.3504*x[15]+0.3408*x[1]*x[3]*x[6]-0.5896*x[1]*x[3]*x[12]-0.0051*x[1]*x[4]*x[14]+0.3084*x[1]*x[7]*x[9]-0.0414*x[1]*x[7]*x[11]+0.7544*x[1]*x[8]*x[9]-0.0273*x[1]*x[8]*x[11]-0.2243*x[1]*x[9]*x[13]+0.1172*x[1]*x[12]*x[13]+0.5247*x[2]*x[3]*x[14]-0.5648*x[2]*x[4]*x[5]-0.94*x[2]*x[4]*x[7]+0.0786*x[2]*x[4]*x[10]+0.1285*x[2]*x[4]*x[13]-0.6398*x[2]*x[5]*x[8]-0.04*x[2]*x[5]*x[12]+0.1604*x[2]*x[5]*x[14]-0.134*x[2]*x[7]*x[8]-0.6789*x[2]*x[7]*x[11]+0.6055*x[2]*x[7]*x[13]+0.6004*x[2]*x[8]*x[9]-0.3035*x[2]*x[8]*x[10]+0.5594*x[2]*x[8]*x[11]-0.6245*x[2]*x[8]*x[14]+0.3776*x[2]*x[9]*x[14]+0.2504*x[2]*x[10]*x[11]-0.3873*x[3]*x[4]*x[6]+0.5376*x[3]*x[4]*x[9]-0.2268*x[3]*x[4]*x[10]-0.004*x[3]*x[4]*x[11]-0.2517*x[3]*x[4]*x[12]+0.787*x[3]*x[5]*x[8]-0.9038*x[3]*x[5]*x[13]-0.6287*x[3]*x[5]*x[14]+0.6212*x[3]*x[6]*x[7]+0.957*x[3]*x[6]*x[10]+0.5385*x[3]*x[6]*x[11]+0.2602*x[3]*x[7]*x[12]-0.181*x[3]*x[8]*x[9]+0.5598*x[3]*x[8]*x[11]-0.2543*x[3]*x[9]*x[10]-0.1767*x[3]*x[9]*x[11]-0.3782*x[3]*x[9]*x[13]+0.2205*x[3]*x[10]*x[14]-0.6202*x[3]*x[10]*x[15]+0.029*x[3]*x[12]*x[13]+0.764*x[4]*x[5]*x[14]+0.1039*x[4]*x[6]*x[11]-0.5642*x[4]*x[6]*x[12]+0.7868*x[4]*x[7]*x[9]+0.2819*x[4]*x[8]*x[9]-0.3306*x[4]*x[8]*x[12]+0.5078*x[4]*x[9]*x[15]-0.9296*x[4]*x[12]*x[14]+0.8311*x[5]*x[6]*x[13]-0.357*x[5]*x[6]*x[14]-0.0837*x[5]*x[7]*x[10]-0.1789*x[5]*x[7]*x[12]+0.6143*x[5]*x[8]*x[12]+0.2093*x[5]*x[9]*x[12]-0.3255*x[5]*x[9]*x[14]-0.4793*x[5]*x[11]*x[14]-0.337*x[6]*x[7]*x[8]+0.9608*x[6]*x[7]*x[14]-0.9366*x[6]*x[8]*x[12]+0.9076*x[6]*x[9]*x[10]+0.8071*x[6]*x[9]*x[12]-0.4203*x[6]*x[9]*x[13]-0.5331*x[6]*x[9]*x[14]-0.0003*x[6]*x[9]*x[15]+0.8089*x[6]*x[10]*x[14]+0.0418*x[7]*x[8]*x[11]-0.252*x[7]*x[8]*x[12]+0.3855*x[7]*x[8]*x[13]-0.4559*x[7]*x[11]*x[12]+0.9246*x[8]*x[9]*x[10]+0.7277*x[8]*x[9]*x[14]+0.1374*x[8]*x[9]*x[15]-0.6176*x[8]*x[11]*x[12]-0.5552*x[8]*x[11]*x[14]+0.9135*x[8]*x[12]*x[13]-0.6272*x[8]*x[13]*x[14]-0.2211*x[9]*x[10]*x[11]+0.079*x[1]+0.127*x[1]*x[2]*x[6]*x[7]-0.0492*x[1]*x[2]*x[7]*x[14]+0.8348*x[1]*x[3]*x[4]*x[11]+0.9973*x[1]*x[3]*x[5]*x[8]+0.7891*x[1]*x[3]*x[7]*x[11]-0.9556*x[1]*x[3]*x[9]*x[12]+0.112*x[1]*x[4]*x[6]*x[12]-0.6349*x[1]*x[4]*x[7]*x[10]+0.7216*x[1]*x[4]*x[8]*x[9]+0.8728*x[1]*x[5]*x[6]*x[8]+0.4988*x[1]*x[5]*x[7]*x[12]+0.533*x[1]*x[5]*x[8]*x[9]-0.8747*x[1]*x[6]*x[7]*x[9]+0.2943*x[1]*x[6]*x[8]*x[11]+0.8649*x[1]*x[7]*x[9]*x[11]+0.5273*x[1]*x[7]*x[10]*x[13]+0.1712*x[1]*x[7]*x[10]*x[15]+0.3243*x[1]*x[8]*x[10]*x[13]-0.955*x[1]*x[8]*x[11]*x[12]-0.6761*x[1]*x[8]*x[11]*x[15]-0.4257*x[1]*x[10]*x[11]*x[12]+0.6869*x[1]*x[10]*x[11]*x[14]-0.6832*x[1]*x[12]*x[13]*x[14]-0.7695*x[2]*x[3]*x[4]*x[7]+0.7947*x[2]*x[3]*x[4]*x[10]+0.2617*x[2]*x[3]*x[5]*x[8]-0.8619*x[2]*x[3]*x[5]*x[9]-0.3917*x[2]*x[3]*x[7]*x[9]-0.1693*x[2]*x[3]*x[7]*x[10]+0.269*x[2]*x[3]*x[7]*x[11]+0.7233*x[2]*x[3]*x[7]*x[12]-0.6938*x[2]*x[3]*x[8]*x[10]-0.5337*x[2]*x[3]*x[8]*x[15]-0.3791*x[2]*x[3]*x[9]*x[13]-0.9849*x[2]*x[3]*x[11]*x[12]-0.6407*x[2]*x[4]*x[6]*x[8]+0.437*x[2]*x[4]*x[6]*x[10]+0.9991*x[2]*x[4]*x[6]*x[11]-0.8719*x[2]*x[4]*x[8]*x[14]-0.9835*x[2]*x[5]*x[6]*x[8]+0.0896*x[2]*x[5]*x[6]*x[11]+0.2031*x[2]*x[5]*x[6]*x[13]-0.2426*x[2]*x[5]*x[7]*x[9]+0.1899*x[2]*x[5]*x[7]*x[11]+0.9576*x[2]*x[5]*x[7]*x[12]+0.2742*x[2]*x[5]*x[7]*x[15]+0.5344*x[2]*x[5]*x[8]*x[11]+0.139*x[2]*x[5]*x[8]*x[13]+0.8227*x[2]*x[5]*x[9]*x[13]+0.7349*x[2]*x[5]*x[10]*x[14]-0.3266*x[2]*x[5]*x[11]*x[12]+0.8931*x[2]*x[5]*x[13]*x[14]-0.6886*x[2]*x[5]*x[14]*x[15]+0.6941*x[2]*x[6]*x[8]*x[15]-0.459*x[2]*x[6]*x[10]*x[13]+0.6997*x[2]*x[6]*x[10]*x[14]-0.6282*x[2]*x[6]*x[11]*x[13]+0.9975*x[2]*x[6]*x[13]*x[14]-0.4171*x[2]*x[7]*x[8]*x[9]+0.5306*x[2]*x[7]*x[8]*x[15]+0.3782*x[2]*x[7]*x[9]*x[14]+0.0272*x[2]*x[7]*x[9]*x[15]+0.7327*x[2]*x[7]*x[10]*x[12]-0.4859*x[2]*x[7]*x[10]*x[14]-0.4575*x[2]*x[7]*x[11]*x[12]+0.4617*x[2]*x[7]*x[12]*x[14]+0.7981*x[2]*x[7]*x[14]*x[15]+0.3171*x[2]*x[8]*x[9]*x[10]-0.4812*x[2]*x[8]*x[11]*x[14]-0.6176*x[2]*x[8]*x[13]*x[15]+0.9519*x[2]*x[9]*x[10]*x[14]-0.2245*x[2]*x[9]*x[12]*x[13]-0.2277*x[2]*x[9]*x[12]*x[14]-0.1451*x[2]*x[10]*x[12]*x[13]+0.1183*x[2]*x[11]*x[13]*x[15]-0.4535*x[3]*x[4]*x[5]*x[13]-0.7483*x[3]*x[4]*x[5]*x[14]+0.8596*x[3]*x[4]*x[6]*x[9]-0.0856*x[3]*x[4]*x[6]*x[12]+0.5263*x[3]*x[4]*x[7]*x[15]-0.8*x[3]*x[4]*x[8]*x[9]-0.3891*x[3]*x[4]*x[8]*x[12]+0.0036*x[3]*x[4]*x[8]*x[14]+0.1751*x[3]*x[4]*x[10]*x[11]+0.3262*x[3]*x[4]*x[12]*x[13]-0.5929*x[3]*x[5]*x[6]*x[9]+0.9199*x[3]*x[5]*x[8]*x[12]-0.6039*x[3]*x[5]*x[9]*x[10]-0.8818*x[3]*x[5]*x[10]*x[13]-0.5635*x[3]*x[5]*x[11]*x[13]-0.3318*x[3]*x[5]*x[14]*x[15]-0.4639*x[3]*x[6]*x[8]*x[14]-0.8807*x[3]*x[6]*x[12]*x[13]-0.856*x[3]*x[7]*x[8]*x[11]-0.5264*x[3]*x[7]*x[9]*x[12]+0.8515*x[3]*x[7]*x[10]*x[15]+0.9744*x[3]*x[7]*x[12]*x[14]-0.7188*x[3]*x[7]*x[13]*x[15]+0.3511*x[3]*x[8]*x[11]*x[15]+0.7354*x[3]*x[8]*x[13]*x[15]+0.4313*x[3]*x[9]*x[10]*x[14]+0.7677*x[3]*x[9]*x[11]*x[14]+0.7026*x[3]*x[9]*x[13]*x[14]-0.6868*x[4]*x[5]*x[7]*x[12]-0.0904*x[4]*x[5]*x[7]*x[14]+0.0964*x[4]*x[5]*x[8]*x[11]-0.9966*x[4]*x[5]*x[8]*x[12]-0.607*x[4]*x[5]*x[9]*x[10]-0.4332*x[4]*x[5]*x[10]*x[11]-0.3299*x[4]*x[5]*x[10]*x[12]-0.5169*x[4]*x[5]*x[11]*x[15]-0.317*x[4]*x[6]*x[7]*x[10]+0.4227*x[4]*x[6]*x[7]*x[11]-0.1195*x[4]*x[6]*x[8]*x[11]-0.6613*x[4]*x[6]*x[9]*x[10]-0.0708*x[4]*x[6]*x[9]*x[12]-0.9363*x[4]*x[6]*x[10]*x[13]+0.437*x[4]*x[6]*x[11]*x[12]-0.667*x[4]*x[7]*x[8]*x[9]-0.0464*x[4]*x[7]*x[8]*x[11]-0.327*x[4]*x[7]*x[10]*x[13]+0.6122*x[4]*x[7]*x[10]*x[15]-0.3223*x[4]*x[7]*x[11]*x[13]+0.5347*x[4]*x[7]*x[13]*x[14]-0.699*x[4]*x[8]*x[10]*x[12]-0.61*x[4]*x[9]*x[11]*x[12]-0.0024*x[4]*x[9]*x[12]*x[13]+0.3027*x[4]*x[9]*x[12]*x[14]-0.2936*x[4]*x[12]*x[13]*x[14]-0.724*x[4]*x[12]*x[14]*x[15]+0.0216*x[4]*x[13]*x[14]*x[15]+0.6753*x[5]*x[6]*x[7]*x[11]-0.5752*x[5]*x[6]*x[7]*x[14]+0.8433*x[5]*x[6]*x[8]*x[11]+0.8906*x[5]*x[6]*x[10]*x[11]+0.1261*x[5]*x[6]*x[11]*x[13]+0.2489*x[5]*x[7]*x[9]*x[10]+0.7468*x[5]*x[7]*x[9]*x[11]+0.9449*x[5]*x[7]*x[10]*x[14]-0.0872*x[5]*x[7]*x[11]*x[14]+0.8432*x[5]*x[8]*x[9]*x[12]-0.4632*x[5]*x[8]*x[10]*x[11]+0.1395*x[5]*x[8]*x[11]*x[14]-0.5084*x[5]*x[9]*x[13]*x[14]+0.6024*x[5]*x[10]*x[13]*x[15]+0.4231*x[5]*x[12]*x[13]*x[14]+0.0063*x[6]*x[7]*x[8]*x[10]-0.8213*x[6]*x[7]*x[10]*x[13]-0.5126*x[6]*x[7]*x[12]*x[13]+0.2231*x[6]*x[7]*x[12]*x[14]+0.8752*x[6]*x[7]*x[12]*x[15]-0.8128*x[6]*x[7]*x[13]*x[15]-0.8742*x[6]*x[8]*x[9]*x[13]+0.3412*x[6]*x[8]*x[9]*x[14]+0.327*x[6]*x[8]*x[10]*x[14]+0.8342*x[6]*x[8]*x[11]*x[13]-0.8487*x[6]*x[8]*x[11]*x[15]-0.8305*x[6]*x[9]*x[10]*x[11]-0.6766*x[6]*x[9]*x[10]*x[15]-0.6596*x[6]*x[9]*x[11]*x[14]+0.7158*x[6]*x[9]*x[12]*x[13]+0.2091*x[6]*x[9]*x[14]*x[15]+0.0061*x[6]*x[10]*x[12]*x[14]+0.1987*x[7]*x[8]*x[9]*x[10]-0.892*x[7]*x[8]*x[9]*x[12]+0.7709*x[7]*x[8]*x[9]*x[15]+0.7294*x[7]*x[8]*x[10]*x[12]-0.1659*x[7]*x[8]*x[11]*x[12]-0.1539*x[7]*x[8]*x[13]*x[14]-0.8587*x[7]*x[9]*x[10]*x[12]-0.6883*x[7]*x[9]*x[11]*x[15]-0.337*x[7]*x[9]*x[12]*x[15]+0.0281*x[7]*x[9]*x[13]*x[14]-0.9433*x[7]*x[10]*x[11]*x[15]-0.6405*x[7]*x[10]*x[12]*x[14]+0.6846*x[7]*x[10]*x[13]*x[14]+0.72*x[7]*x[11]*x[13]*x[14]-0.0895*x[7]*x[12]*x[13]*x[15]-0.3715*x[8]*x[9]*x[11]*x[12]+0.3206*x[8]*x[9]*x[12]*x[13]+0.0167*x[8]*x[9]*x[12]*x[14]+0.6066*x[8]*x[9]*x[14]*x[15]-0.4085*x[8]*x[10]*x[11]*x[13]+0.6558*x[8]*x[10]*x[12]*x[14]-0.7439*x[8]*x[11]*x[12]*x[15]+0.6246*x[8]*x[12]*x[13]*x[14]+0.4681*x[8]*x[13]*x[14]*x[15]-0.2472*x[9]*x[10]*x[12]*x[13]-0.3052*x[9]*x[10]*x[13]*x[14]+0.4233*x[9]*x[11]*x[12]*x[13]+0.0286*x[9]*x[11]*x[12]*x[15]+0.2946*x[9]*x[11]*x[13]*x[15]-0.6967*x[9]*x[12]*x[13]*x[14]+0.9482*x[12]*x[13]*x[14]*x[15] <= 77.731)
@NLconstraint(m, e3, 0.7404*x[1]*x[7]-0.0406*x[1]*x[4]-0.2414*x[1]*x[9]-0.5255*x[1]*x[13]+0.9657*x[2]*x[7]+0.9245*x[3]*x[7]+0.1419*x[3]*x[8]-0.2045*x[3]*x[11]+0.4961*x[3]*x[12]+0.0171*x[4]*x[14]-0.1419*x[6]*x[7]-0.0601*x[7]*x[8]-0.5455*x[7]*x[11]+0.8499*x[8]*x[13]-0.5872*x[10]*x[12]+0.5719*x[12]*x[13]-0.2416*x[1]+0.8435*x[2]+0.1577*x[3]-0.1896*x[4]-0.7826*x[6]-0.5849*x[7]+0.7764*x[8]-0.9803*x[9]-0.0472*x[10]+0.8583*x[11]-0.7217*x[12]+0.7368*x[13]+0.955*x[14]+0.6269*x[1]*x[2]*x[3]-0.5993*x[1]*x[2]*x[9]-0.8175*x[1]*x[5]*x[6]-0.2482*x[1]*x[6]*x[11]+0.76*x[1]*x[7]*x[8]+0.3743*x[1]*x[11]*x[14]+0.8974*x[1]*x[14]*x[15]-0.1416*x[2]*x[3]*x[6]-0.9403*x[2]*x[3]*x[10]+0.1225*x[2]*x[3]*x[13]-0.9407*x[2]*x[4]*x[7]-0.1361*x[2]*x[5]*x[11]+0.0528*x[2]*x[6]*x[11]-0.4117*x[2]*x[6]*x[14]+0.0313*x[2]*x[7]*x[8]+0.0596*x[2]*x[7]*x[10]+0.1622*x[2]*x[8]*x[14]+0.2142*x[2]*x[10]*x[11]-0.176*x[2]*x[10]*x[14]+0.024*x[2]*x[12]*x[13]-0.9115*x[2]*x[13]*x[14]-0.8721*x[3]*x[4]*x[7]+0.1805*x[3]*x[4]*x[12]-0.8433*x[3]*x[5]*x[6]-0.0112*x[3]*x[5]*x[11]-0.388*x[3]*x[5]*x[14]+0.8192*x[3]*x[5]*x[15]-0.2561*x[3]*x[6]*x[14]-0.3928*x[3]*x[7]*x[14]+0.2418*x[3]*x[8]*x[10]-0.4122*x[3]*x[8]*x[12]+0.8725*x[3]*x[8]*x[14]+0.1092*x[3]*x[9]*x[11]-0.2575*x[3]*x[10]*x[12]-0.1357*x[3]*x[11]*x[13]+0.8411*x[3]*x[13]*x[15]+0.5546*x[4]*x[6]*x[8]+0.7479*x[4]*x[6]*x[9]-0.0748*x[4]*x[6]*x[15]-0.7557*x[4]*x[7]*x[9]+0.7004*x[4]*x[9]*x[10]-0.6212*x[4]*x[9]*x[14]-0.9291*x[4]*x[10]*x[14]+0.3603*x[4]*x[12]*x[14]-0.6879*x[4]*x[13]*x[15]-0.1246*x[4]*x[14]*x[15]+0.6867*x[5]*x[6]*x[10]+0.0253*x[5]*x[6]*x[14]-0.0498*x[5]*x[7]*x[13]+0.1864*x[5]*x[8]*x[9]+0.1944*x[5]*x[9]*x[10]-0.9289*x[5]*x[9]*x[12]+0.869*x[5]*x[9]*x[14]-0.1632*x[5]*x[9]*x[15]-0.6061*x[6]*x[7]*x[12]+0.1371*x[6]*x[7]*x[13]+0.3945*x[6]*x[8]*x[9]+0.1649*x[6]*x[9]*x[10]+0.7117*x[6]*x[9]*x[11]+0.0599*x[6]*x[9]*x[13]-0.0204*x[6]*x[10]*x[11]+0.2302*x[6]*x[11]*x[12]-0.8694*x[6]*x[12]*x[13]-0.0137*x[6]*x[12]*x[15]-0.6667*x[7]*x[8]*x[9]+0.7408*x[7]*x[8]*x[11]-0.5336*x[7]*x[9]*x[11]+0.8911*x[7]*x[10]*x[13]+0.1365*x[7]*x[10]*x[14]-0.0653*x[7]*x[11]*x[13]+0.8185*x[7]*x[12]*x[13]+0.638*x[8]*x[11]*x[12]-0.7799*x[8]*x[11]*x[15]-0.6517*x[9]*x[10]*x[14]+0.8873*x[10]*x[11]*x[12]+0.7881*x[10]*x[12]*x[13]+0.0751*x[12]*x[13]*x[14]+0.3466*x[5]-0.7127*x[15]+0.0639*x[1]*x[2]*x[3]*x[6]+0.4236*x[1]*x[2]*x[3]*x[8]-0.6381*x[1]*x[2]*x[7]*x[8]-0.5266*x[1]*x[2]*x[12]*x[13]-0.2427*x[1]*x[2]*x[12]*x[14]+0.4664*x[1]*x[3]*x[4]*x[11]-0.3172*x[1]*x[3]*x[5]*x[7]+0.8903*x[1]*x[3]*x[6]*x[9]+0.1453*x[1]*x[3]*x[7]*x[12]-0.7617*x[1]*x[3]*x[9]*x[12]-0.2254*x[1]*x[4]*x[5]*x[8]+0.5658*x[1]*x[4]*x[5]*x[15]+0.4156*x[1]*x[4]*x[8]*x[12]+0.6054*x[1]*x[4]*x[10]*x[13]+0.7814*x[1]*x[4]*x[10]*x[15]+0.7338*x[1]*x[4]*x[11]*x[13]-0.8807*x[1]*x[5]*x[6]*x[13]+0.6211*x[1]*x[6]*x[7]*x[8]+0.6833*x[1]*x[6]*x[7]*x[10]-0.3929*x[1]*x[6]*x[9]*x[13]+0.3016*x[1]*x[7]*x[8]*x[9]+0.7591*x[1]*x[7]*x[11]*x[15]+0.2588*x[1]*x[8]*x[13]*x[15]+0.8657*x[1]*x[9]*x[10]*x[11]-0.377*x[1]*x[9]*x[11]*x[12]+0.936*x[1]*x[10]*x[11]*x[13]+0.5657*x[1]*x[10]*x[13]*x[14]+0.0372*x[2]*x[3]*x[4]*x[9]-0.1874*x[2]*x[3]*x[4]*x[10]-0.5048*x[2]*x[3]*x[5]*x[6]+0.7248*x[2]*x[3]*x[5]*x[10]-0.7522*x[2]*x[3]*x[6]*x[11]-0.118*x[2]*x[3]*x[6]*x[12]+0.3041*x[2]*x[3]*x[7]*x[8]-0.4719*x[2]*x[3]*x[7]*x[10]+0.8627*x[2]*x[3]*x[7]*x[13]+0.4836*x[2]*x[3]*x[9]*x[11]+0.5959*x[2]*x[3]*x[9]*x[12]-0.269*x[2]*x[3]*x[10]*x[13]+0.5652*x[2]*x[3]*x[11]*x[12]+0.5695*x[2]*x[3]*x[11]*x[13]-0.776*x[2]*x[4]*x[5]*x[7]-0.801*x[2]*x[4]*x[5]*x[9]+0.8397*x[2]*x[4]*x[5]*x[10]-0.7996*x[2]*x[4]*x[5]*x[11]-0.2677*x[2]*x[4]*x[6]*x[10]+0.1962*x[2]*x[4]*x[6]*x[13]+0.2906*x[2]*x[4]*x[7]*x[13]-0.2169*x[2]*x[4]*x[7]*x[15]-0.3637*x[2]*x[4]*x[8]*x[11]-0.5967*x[2]*x[4]*x[10]*x[14]-0.1102*x[2]*x[4]*x[11]*x[13]-0.2801*x[2]*x[5]*x[6]*x[12]-0.8805*x[2]*x[5]*x[7]*x[12]-0.7295*x[2]*x[5]*x[8]*x[9]-0.5995*x[2]*x[5]*x[8]*x[11]-0.8773*x[2]*x[5]*x[8]*x[13]-0.8884*x[2]*x[5]*x[10]*x[15]+0.7879*x[2]*x[5]*x[11]*x[13]+0.7627*x[2]*x[5]*x[13]*x[14]-0.31*x[2]*x[6]*x[7]*x[10]+0.2336*x[2]*x[6]*x[8]*x[10]+0.4207*x[2]*x[6]*x[9]*x[12]-0.6746*x[2]*x[6]*x[13]*x[15]-0.2792*x[2]*x[7]*x[8]*x[9]+0.658*x[2]*x[7]*x[8]*x[12]-0.0635*x[2]*x[7]*x[9]*x[11]+0.1804*x[2]*x[7]*x[10]*x[11]-0.7531*x[2]*x[7]*x[11]*x[14]+0.0647*x[2]*x[8]*x[11]*x[14]-0.1999*x[2]*x[8]*x[14]*x[15]+0.7356*x[2]*x[9]*x[10]*x[11]+0.9599*x[2]*x[9]*x[10]*x[13]+0.1506*x[2]*x[9]*x[12]*x[14]+0.0703*x[2]*x[9]*x[13]*x[15]+0.4001*x[2]*x[10]*x[11]*x[14]-0.7627*x[2]*x[10]*x[12]*x[13]+0.9323*x[2]*x[11]*x[12]*x[13]-0.4592*x[3]*x[4]*x[5]*x[7]+0.7137*x[3]*x[4]*x[6]*x[10]-0.244*x[3]*x[4]*x[7]*x[13]-0.9425*x[3]*x[4]*x[8]*x[11]+0.643*x[3]*x[4]*x[8]*x[12]+0.0418*x[3]*x[4]*x[8]*x[13]+0.7747*x[3]*x[4]*x[9]*x[10]-0.8169*x[3]*x[4]*x[10]*x[13]+0.6132*x[3]*x[4]*x[10]*x[14]-0.4807*x[3]*x[4]*x[11]*x[13]+0.6669*x[3]*x[4]*x[12]*x[14]-0.9327*x[3]*x[4]*x[13]*x[14]+0.7663*x[3]*x[5]*x[6]*x[12]+0.5196*x[3]*x[5]*x[6]*x[13]+0.3072*x[3]*x[5]*x[7]*x[8]+0.81*x[3]*x[5]*x[7]*x[12]+0.9479*x[3]*x[5]*x[8]*x[9]-0.9687*x[3]*x[5]*x[8]*x[12]+0.7752*x[3]*x[5]*x[8]*x[14]+0.673*x[3]*x[5]*x[9]*x[12]-0.3462*x[3]*x[5]*x[10]*x[15]-0.8065*x[3]*x[5]*x[12]*x[13]-0.4581*x[3]*x[5]*x[13]*x[14]-0.4188*x[3]*x[6]*x[7]*x[12]+0.3834*x[3]*x[6]*x[7]*x[14]+0.0803*x[3]*x[6]*x[10]*x[11]-0.7508*x[3]*x[6]*x[10]*x[13]+0.7498*x[3]*x[6]*x[11]*x[15]-0.0977*x[3]*x[7]*x[11]*x[12]-0.2246*x[3]*x[8]*x[10]*x[12]+0.0626*x[3]*x[8]*x[11]*x[13]+0.123*x[3]*x[9]*x[12]*x[15]-0.5552*x[3]*x[10]*x[11]*x[14]+0.594*x[3]*x[10]*x[12]*x[15]+0.2836*x[4]*x[5]*x[6]*x[7]+0.9294*x[4]*x[5]*x[6]*x[11]-0.942*x[4]*x[5]*x[8]*x[14]+0.0463*x[4]*x[5]*x[9]*x[10]+0.3251*x[4]*x[5]*x[9]*x[11]+0.2489*x[4]*x[5]*x[10]*x[12]+0.7029*x[4]*x[5]*x[12]*x[13]+0.6428*x[4]*x[5]*x[14]*x[15]-0.5113*x[4]*x[6]*x[9]*x[10]+0.8865*x[4]*x[6]*x[9]*x[12]-0.4186*x[4]*x[6]*x[11]*x[14]-0.5403*x[4]*x[6]*x[12]*x[13]+0.2212*x[4]*x[6]*x[13]*x[14]-0.6198*x[4]*x[7]*x[8]*x[12]-0.7316*x[4]*x[7]*x[8]*x[14]+0.3528*x[4]*x[7]*x[9]*x[10]-0.1802*x[4]*x[7]*x[10]*x[11]-0.5277*x[4]*x[7]*x[10]*x[12]-0.1882*x[4]*x[7]*x[10]*x[13]+0.5212*x[4]*x[7]*x[10]*x[15]-0.5845*x[4]*x[7]*x[12]*x[14]-0.0483*x[4]*x[7]*x[13]*x[15]-0.3005*x[4]*x[8]*x[10]*x[15]+0.3661*x[4]*x[8]*x[11]*x[13]-0.671*x[4]*x[8]*x[12]*x[13]+0.2969*x[4]*x[9]*x[10]*x[12]-0.1314*x[4]*x[9]*x[11]*x[14]+0.7649*x[4]*x[10]*x[13]*x[14]-0.3366*x[5]*x[6]*x[7]*x[11]-0.4338*x[5]*x[6]*x[8]*x[9]-0.955*x[5]*x[6]*x[8]*x[11]-0.2078*x[5]*x[6]*x[10]*x[11]-0.495*x[5]*x[6]*x[10]*x[14]-0.423*x[5]*x[6]*x[12]*x[13]-0.0923*x[5]*x[6]*x[12]*x[14]-0.0903*x[5]*x[7]*x[8]*x[11]+0.2476*x[5]*x[7]*x[8]*x[12]-0.9344*x[5]*x[7]*x[8]*x[15]+0.0953*x[5]*x[7]*x[9]*x[12]-0.9224*x[5]*x[8]*x[9]*x[10]+0.1192*x[5]*x[8]*x[9]*x[12]+0.0978*x[5]*x[8]*x[10]*x[11]+0.1811*x[5]*x[8]*x[14]*x[15]+0.1741*x[5]*x[9]*x[10]*x[13]-0.8017*x[5]*x[9]*x[11]*x[12]+0.6307*x[5]*x[10]*x[11]*x[12]-0.1205*x[5]*x[10]*x[12]*x[15]+0.5287*x[6]*x[7]*x[8]*x[10]+0.3577*x[6]*x[7]*x[10]*x[15]-0.3343*x[6]*x[8]*x[9]*x[13]-0.0557*x[6]*x[8]*x[9]*x[14]-0.1393*x[6]*x[8]*x[12]*x[13]+0.8439*x[6]*x[9]*x[10]*x[13]-0.6887*x[6]*x[9]*x[10]*x[14]-0.9453*x[6]*x[9]*x[10]*x[15]-0.1137*x[6]*x[9]*x[12]*x[13]+0.2999*x[6]*x[9]*x[12]*x[14]-0.995*x[6]*x[9]*x[14]*x[15]-0.3235*x[6]*x[10]*x[11]*x[12]-0.7462*x[6]*x[10]*x[11]*x[13]-0.2035*x[6]*x[10]*x[12]*x[14]+0.6441*x[6]*x[10]*x[14]*x[15]+0.964*x[7]*x[8]*x[9]*x[15]-0.3413*x[7]*x[8]*x[10]*x[12]+0.7861*x[7]*x[8]*x[10]*x[13]+0.9239*x[7]*x[8]*x[13]*x[14]+0.8002*x[7]*x[9]*x[10]*x[14]-0.8865*x[7]*x[9]*x[12]*x[14]-0.198*x[7]*x[10]*x[11]*x[12]+0.8023*x[7]*x[10]*x[11]*x[14]-0.9448*x[7]*x[11]*x[12]*x[14]-0.886*x[8]*x[9]*x[10]*x[12]-0.5952*x[8]*x[9]*x[12]*x[15]-0.3834*x[8]*x[10]*x[11]*x[14]+0.2752*x[8]*x[10]*x[13]*x[14]+0.9422*x[8]*x[10]*x[13]*x[15]-0.68*x[8]*x[11]*x[12]*x[13]-0.0672*x[8]*x[11]*x[12]*x[14]-0.5046*x[8]*x[11]*x[13]*x[14]+0.4484*x[9]*x[10]*x[11]*x[13]-0.9377*x[9]*x[12]*x[13]*x[14]-0.3319*x[9]*x[13]*x[14]*x[15]+0.735*x[10]*x[11]*x[13]*x[15] <= 72.697)
@NLconstraint(m, e4, 0.5722*x[1]*x[9]-0.394*x[2]*x[10]-0.3912*x[2]*x[14]+0.0834*x[3]*x[4]+0.9115*x[3]*x[12]-0.0129*x[3]*x[14]+0.6746*x[4]*x[10]-0.3091*x[4]*x[12]-0.5901*x[5]*x[13]+0.1808*x[5]*x[15]-0.0883*x[6]*x[12]-0.2605*x[9]*x[11]+0.5625*x[10]*x[13]-0.6556*x[1]+0.6665*x[2]-0.7375*x[3]+0.7358*x[4]+0.0011*x[5]-0.267*x[6]-0.3911*x[9]-0.8104*x[10]-0.2028*x[11]+0.4419*x[12]-0.2204*x[13]+0.2823*x[14]+0.2355*x[15]+0.5487*x[1]*x[3]*x[4]+0.4103*x[1]*x[3]*x[5]+0.3275*x[1]*x[4]*x[9]-0.7424*x[1]*x[5]*x[7]-0.0149*x[1]*x[5]*x[8]-0.7884*x[1]*x[7]*x[8]-0.1021*x[1]*x[7]*x[10]-0.753*x[1]*x[12]*x[14]+0.164*x[2]*x[3]*x[6]-0.7323*x[2]*x[3]*x[9]-0.3894*x[2]*x[3]*x[13]+0.0663*x[2]*x[3]*x[14]+0.3059*x[2]*x[4]*x[6]-0.0513*x[2]*x[4]*x[9]+0.0967*x[2]*x[5]*x[8]+0.6029*x[2]*x[5]*x[9]+0.7988*x[2]*x[5]*x[12]-0.1666*x[2]*x[6]*x[7]+0.0085*x[2]*x[7]*x[8]-0.1412*x[2]*x[7]*x[10]-0.8846*x[2]*x[7]*x[12]-0.6728*x[2]*x[8]*x[11]+0.9334*x[2]*x[8]*x[14]+0.6191*x[2]*x[9]*x[12]-0.9178*x[2]*x[10]*x[15]-0.6968*x[2]*x[12]*x[13]+0.5085*x[3]*x[4]*x[5]+0.8918*x[3]*x[4]*x[11]-0.1587*x[3]*x[5]*x[6]+0.4726*x[3]*x[5]*x[9]-0.3993*x[3]*x[6]*x[9]-0.3277*x[3]*x[6]*x[13]+0.8682*x[3]*x[7]*x[10]+0.4317*x[3]*x[8]*x[14]-0.1606*x[3]*x[9]*x[10]+0.3844*x[3]*x[10]*x[11]-0.9362*x[3]*x[10]*x[14]-0.9375*x[3]*x[13]*x[15]-0.472*x[4]*x[5]*x[6]+0.0559*x[4]*x[7]*x[11]-0.9999*x[4]*x[7]*x[12]+0.9677*x[4]*x[8]*x[9]+0.2792*x[4]*x[8]*x[10]+0.3267*x[4]*x[8]*x[11]-0.4948*x[4]*x[9]*x[12]+0.8352*x[5]*x[6]*x[7]-0.9345*x[5]*x[7]*x[11]+0.6881*x[5]*x[7]*x[13]+0.4356*x[5]*x[8]*x[11]-0.5972*x[5]*x[8]*x[13]+0.5731*x[5]*x[10]*x[12]-0.2802*x[6]*x[7]*x[10]+0.8154*x[6]*x[9]*x[11]-0.0987*x[6]*x[9]*x[13]-0.9024*x[6]*x[10]*x[11]-0.31*x[7]*x[8]*x[9]-0.6122*x[7]*x[9]*x[12]-0.7016*x[7]*x[9]*x[15]-0.1451*x[7]*x[10]*x[13]-0.6392*x[8]*x[9]*x[10]-0.7174*x[8]*x[9]*x[12]-0.8077*x[8]*x[9]*x[13]-0.2017*x[8]*x[13]*x[14]-0.2348*x[9]*x[10]*x[11]-0.9829*x[10]*x[13]*x[15]-0.7606*x[7]-0.4746*x[8]+0.5218*x[1]*x[2]*x[3]*x[15]-0.0271*x[1]*x[2]*x[4]*x[14]-0.5583*x[1]*x[2]*x[5]*x[6]-0.8905*x[1]*x[2]*x[5]*x[11]-0.951*x[1]*x[2]*x[7]*x[10]+0.6284*x[1]*x[2]*x[10]*x[11]-0.2879*x[1]*x[2]*x[12]*x[13]+0.786*x[1]*x[3]*x[4]*x[5]-0.3374*x[1]*x[3]*x[4]*x[8]-0.281*x[1]*x[3]*x[4]*x[13]-0.6695*x[1]*x[3]*x[5]*x[7]+0.2813*x[1]*x[3]*x[6]*x[12]+0.1691*x[1]*x[3]*x[13]*x[14]-0.1083*x[1]*x[4]*x[6]*x[9]-0.742*x[1]*x[4]*x[9]*x[10]+0.5525*x[1]*x[4]*x[11]*x[12]+0.9474*x[1]*x[5]*x[7]*x[10]-0.6277*x[1]*x[5]*x[9]*x[13]-0.1343*x[1]*x[5]*x[9]*x[15]+0.0107*x[1]*x[5]*x[12]*x[14]-0.0425*x[1]*x[6]*x[8]*x[12]-0.1048*x[1]*x[6]*x[8]*x[14]+0.4489*x[1]*x[6]*x[9]*x[13]-0.3661*x[1]*x[6]*x[9]*x[15]+0.265*x[1]*x[6]*x[11]*x[12]-0.8352*x[1]*x[7]*x[9]*x[12]-0.7374*x[1]*x[7]*x[13]*x[14]-0.4404*x[1]*x[8]*x[9]*x[12]+0.1152*x[1]*x[8]*x[10]*x[12]-0.3276*x[1]*x[9]*x[10]*x[12]-0.8743*x[1]*x[9]*x[12]*x[13]-0.791*x[1]*x[10]*x[14]*x[15]-0.4861*x[1]*x[11]*x[13]*x[14]+0.9375*x[1]*x[12]*x[13]*x[15]+0.4796*x[2]*x[3]*x[4]*x[5]-0.2823*x[2]*x[3]*x[5]*x[6]+0.1118*x[2]*x[3]*x[5]*x[9]+0.0769*x[2]*x[3]*x[5]*x[10]-0.6904*x[2]*x[3]*x[6]*x[14]-0.1186*x[2]*x[3]*x[8]*x[11]+0.4173*x[2]*x[3]*x[9]*x[10]-0.8418*x[2]*x[3]*x[9]*x[11]-0.6757*x[2]*x[3]*x[9]*x[14]+0.8086*x[2]*x[3]*x[10]*x[11]-0.9275*x[2]*x[3]*x[11]*x[13]-0.2345*x[2]*x[4]*x[5]*x[8]+0.1875*x[2]*x[4]*x[5]*x[12]+0.7069*x[2]*x[4]*x[5]*x[13]+0.3433*x[2]*x[4]*x[6]*x[7]-0.6475*x[2]*x[4]*x[6]*x[13]+0.6688*x[2]*x[4]*x[7]*x[8]-0.228*x[2]*x[4]*x[7]*x[9]-0.6*x[2]*x[4]*x[7]*x[12]-0.1004*x[2]*x[4]*x[8]*x[12]+0.4169*x[2]*x[4]*x[8]*x[13]+0.2552*x[2]*x[5]*x[6]*x[9]+0.0675*x[2]*x[5]*x[6]*x[13]-0.6516*x[2]*x[5]*x[6]*x[14]-0.7046*x[2]*x[5]*x[7]*x[8]+0.904*x[2]*x[5]*x[8]*x[10]-0.8269*x[2]*x[5]*x[8]*x[11]+0.8903*x[2]*x[5]*x[9]*x[13]+0.0117*x[2]*x[5]*x[9]*x[14]-0.1163*x[2]*x[5]*x[10]*x[13]+0.5329*x[2]*x[5]*x[12]*x[14]+0.9184*x[2]*x[6]*x[7]*x[10]+0.9325*x[2]*x[6]*x[7]*x[11]-0.6833*x[2]*x[6]*x[7]*x[13]+0.4798*x[2]*x[6]*x[8]*x[11]-0.5702*x[2]*x[6]*x[8]*x[13]-0.4051*x[2]*x[6]*x[8]*x[15]+0.0592*x[2]*x[6]*x[9]*x[15]+0.2783*x[2]*x[6]*x[10]*x[14]-0.6561*x[2]*x[6]*x[11]*x[13]+0.3329*x[2]*x[6]*x[12]*x[15]-0.7304*x[2]*x[7]*x[8]*x[12]+0.3517*x[2]*x[7]*x[8]*x[13]+0.4174*x[2]*x[7]*x[9]*x[11]-0.9952*x[2]*x[7]*x[9]*x[13]+0.1658*x[2]*x[7]*x[10]*x[14]-0.4832*x[2]*x[7]*x[11]*x[13]+0.3023*x[2]*x[7]*x[13]*x[14]-0.071*x[2]*x[7]*x[13]*x[15]+0.0221*x[2]*x[8]*x[9]*x[13]-0.1401*x[2]*x[8]*x[11]*x[12]-0.4579*x[2]*x[8]*x[11]*x[14]-0.8089*x[2]*x[8]*x[12]*x[15]-0.5569*x[2]*x[9]*x[10]*x[13]-0.7405*x[2]*x[10]*x[11]*x[12]-0.0612*x[2]*x[11]*x[12]*x[13]+0.4574*x[2]*x[11]*x[13]*x[14]+0.9759*x[3]*x[4]*x[5]*x[9]+0.1861*x[3]*x[4]*x[5]*x[11]-0.5472*x[3]*x[4]*x[6]*x[14]-0.0939*x[3]*x[4]*x[7]*x[14]-0.3212*x[3]*x[4]*x[8]*x[10]-0.2048*x[3]*x[4]*x[9]*x[12]+0.0186*x[3]*x[4]*x[10]*x[11]+0.0415*x[3]*x[4]*x[12]*x[13]+0.5287*x[3]*x[4]*x[12]*x[14]+0.8941*x[3]*x[4]*x[13]*x[15]-0.5022*x[3]*x[5]*x[7]*x[12]+0.6494*x[3]*x[5]*x[8]*x[13]-0.7535*x[3]*x[5]*x[10]*x[13]+0.7893*x[3]*x[5]*x[11]*x[12]+0.1878*x[3]*x[6]*x[7]*x[10]+0.7564*x[3]*x[6]*x[7]*x[11]-0.8287*x[3]*x[6]*x[10]*x[14]+0.2105*x[3]*x[6]*x[12]*x[13]+0.3438*x[3]*x[7]*x[8]*x[9]-0.0288*x[3]*x[7]*x[8]*x[14]+0.2038*x[3]*x[7]*x[9]*x[14]-0.8942*x[3]*x[7]*x[9]*x[15]-0.34*x[3]*x[7]*x[11]*x[14]-0.1877*x[3]*x[7]*x[12]*x[14]+0.4344*x[3]*x[8]*x[9]*x[10]+0.2895*x[3]*x[8]*x[9]*x[13]+0.0277*x[3]*x[9]*x[11]*x[14]-0.5934*x[3]*x[9]*x[11]*x[15]-0.714*x[3]*x[9]*x[14]*x[15]-0.4758*x[3]*x[10]*x[13]*x[14]+0.4636*x[4]*x[5]*x[6]*x[14]-0.1656*x[4]*x[5]*x[7]*x[8]-0.5847*x[4]*x[5]*x[7]*x[9]+0.7418*x[4]*x[5]*x[7]*x[11]-0.9405*x[4]*x[5]*x[7]*x[12]+0.0233*x[4]*x[5]*x[7]*x[13]+0.3557*x[4]*x[5]*x[8]*x[14]+0.6048*x[4]*x[5]*x[9]*x[12]-0.5512*x[4]*x[5]*x[10]*x[11]+0.3175*x[4]*x[5]*x[10]*x[14]+0.2466*x[4]*x[5]*x[11]*x[13]-0.0605*x[4]*x[5]*x[11]*x[14]-0.2988*x[4]*x[5]*x[13]*x[14]-0.6914*x[4]*x[6]*x[7]*x[10]+0.0209*x[4]*x[6]*x[9]*x[10]+0.9385*x[4]*x[6]*x[9]*x[11]-0.9509*x[4]*x[6]*x[11]*x[12]-0.573*x[4]*x[6]*x[11]*x[13]+0.8628*x[4]*x[6]*x[12]*x[14]-0.2991*x[4]*x[7]*x[8]*x[11]+0.0842*x[4]*x[7]*x[8]*x[13]+0.9959*x[4]*x[7]*x[8]*x[14]-0.4071*x[4]*x[7]*x[9]*x[10]+0.1647*x[4]*x[7]*x[9]*x[12]+0.6358*x[4]*x[7]*x[10]*x[15]+0.2215*x[4]*x[7]*x[12]*x[14]-0.4195*x[4]*x[7]*x[13]*x[14]+0.3321*x[4]*x[8]*x[9]*x[12]-0.9112*x[4]*x[8]*x[9]*x[13]-0.2976*x[4]*x[8]*x[9]*x[15]-0.6069*x[4]*x[9]*x[10]*x[12]-0.3212*x[4]*x[9]*x[12]*x[14]-0.9763*x[4]*x[9]*x[13]*x[15]-0.9116*x[4]*x[10]*x[11]*x[12]-0.4835*x[4]*x[10]*x[12]*x[13]+0.2055*x[4]*x[10]*x[12]*x[14]+0.2911*x[4]*x[10]*x[14]*x[15]-0.2598*x[5]*x[6]*x[7]*x[11]-0.8548*x[5]*x[6]*x[7]*x[13]-0.5141*x[5]*x[6]*x[7]*x[15]-0.8141*x[5]*x[6]*x[8]*x[12]-0.7334*x[5]*x[6]*x[8]*x[13]-0.7805*x[5]*x[6]*x[8]*x[15]-0.114*x[5]*x[6]*x[9]*x[13]-0.7607*x[5]*x[6]*x[11]*x[12]-0.052*x[5]*x[7]*x[9]*x[10]-0.4504*x[5]*x[7]*x[10]*x[12]-0.1195*x[5]*x[8]*x[9]*x[12]-0.5203*x[5]*x[8]*x[9]*x[13]+0.1734*x[5]*x[8]*x[10]*x[13]+0.6191*x[5]*x[8]*x[11]*x[13]+0.6939*x[5]*x[8]*x[12]*x[14]+0.2383*x[5]*x[8]*x[12]*x[15]+0.3614*x[5]*x[9]*x[10]*x[11]+0.1892*x[5]*x[10]*x[12]*x[13]+0.2262*x[5]*x[10]*x[12]*x[14]-0.7306*x[5]*x[11]*x[12]*x[14]+0.4264*x[6]*x[7]*x[8]*x[11]+0.7667*x[6]*x[7]*x[11]*x[13]-0.2506*x[6]*x[7]*x[11]*x[14]+0.181*x[6]*x[7]*x[13]*x[15]+0.191*x[6]*x[9]*x[10]*x[14]-0.8707*x[6]*x[9]*x[11]*x[14]-0.4914*x[6]*x[10]*x[11]*x[12]-0.5053*x[6]*x[10]*x[12]*x[15]+0.8427*x[6]*x[11]*x[13]*x[14]+0.5156*x[7]*x[8]*x[10]*x[12]-0.1371*x[7]*x[8]*x[10]*x[14]+0.0804*x[7]*x[8]*x[11]*x[14]-0.0628*x[7]*x[8]*x[12]*x[14]-0.7412*x[7]*x[8]*x[13]*x[15]+0.281*x[7]*x[9]*x[10]*x[11]-0.8376*x[7]*x[9]*x[10]*x[12]+0.9039*x[7]*x[9]*x[10]*x[14]-0.3121*x[7]*x[9]*x[11]*x[12]+0.8416*x[7]*x[9]*x[11]*x[13]+0.5184*x[7]*x[9]*x[12]*x[13]-0.7372*x[7]*x[10]*x[11]*x[15]-0.7587*x[7]*x[10]*x[12]*x[14]+0.2405*x[7]*x[12]*x[13]*x[15]+0.6372*x[8]*x[9]*x[10]*x[14]-0.1502*x[8]*x[9]*x[12]*x[13]-0.4862*x[8]*x[10]*x[11]*x[13]-0.4125*x[8]*x[10]*x[11]*x[14]-0.6072*x[8]*x[12]*x[13]*x[15]+0.2811*x[9]*x[10]*x[11]*x[14]+0.4727*x[9]*x[10]*x[12]*x[13]-0.1183*x[9]*x[12]*x[13]*x[14]-0.8596*x[9]*x[12]*x[14]*x[15] <= 97.03)

m = m 		 # model get returned when including this script. 
