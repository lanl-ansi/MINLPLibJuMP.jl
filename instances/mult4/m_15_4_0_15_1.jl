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
@NLconstraint(m, e1, -(0.5412*x[3]*x[12]-0.9915*x[3]*x[4]+0.7798*x[3]*x[13]+0.9348*x[4]*x[7]+0.8051*x[4]*x[8]-0.429*x[5]*x[11]-0.8641*x[5]*x[12]+0.4754*x[5]*x[13]-0.1588*x[6]*x[9]+0.0185*x[7]*x[9]+0.9495*x[7]*x[15]-0.322*x[8]*x[14]-0.4916*x[11]*x[12]+0.5083*x[13]*x[14]+0.2423*x[3]-0.357*x[4]-0.2066*x[5]-0.1247*x[6]-0.9086*x[7]-0.4053*x[8]-0.6526*x[9]+0.6139*x[11]+0.0606*x[12]-0.4917*x[13]+0.82*x[14]-0.8487*x[15]+0.2604*x[1]*x[2]*x[6]+0.6193*x[1]*x[4]*x[5]+0.6908*x[1]*x[5]*x[6]-0.5365*x[1]*x[6]*x[8]-0.2043*x[1]*x[7]*x[9]-0.4517*x[1]*x[8]*x[9]+0.9815*x[1]*x[8]*x[11]-0.2308*x[1]*x[8]*x[14]-0.7607*x[1]*x[10]*x[12]+0.0504*x[1]*x[11]*x[12]-0.1467*x[2]*x[3]*x[4]-0.6084*x[2]*x[4]*x[5]+0.3933*x[2]*x[6]*x[8]-0.8383*x[2]*x[6]*x[14]-0.9986*x[2]*x[7]*x[11]+0.823*x[2]*x[8]*x[14]-0.831*x[2]*x[9]*x[13]-0.3313*x[2]*x[10]*x[12]+0.3822*x[3]*x[4]*x[9]+0.9541*x[3]*x[4]*x[11]-0.2265*x[3]*x[4]*x[14]-0.5091*x[3]*x[5]*x[15]-0.7125*x[3]*x[7]*x[11]-0.1502*x[3]*x[7]*x[15]-0.3899*x[3]*x[8]*x[9]+0.9757*x[3]*x[8]*x[12]+0.8841*x[3]*x[11]*x[13]+0.1282*x[3]*x[12]*x[13]-0.717*x[4]*x[5]*x[8]-0.7699*x[4]*x[5]*x[11]-0.9939*x[4]*x[5]*x[13]-0.1374*x[4]*x[6]*x[8]-0.0945*x[4]*x[6]*x[14]+0.5619*x[4]*x[7]*x[10]+0.3054*x[4]*x[7]*x[13]+0.0864*x[4]*x[7]*x[15]+0.8851*x[4]*x[8]*x[9]+0.0755*x[4]*x[8]*x[10]-0.6313*x[4]*x[9]*x[10]+0.2487*x[4]*x[10]*x[14]-0.8449*x[4]*x[13]*x[14]-0.7532*x[4]*x[14]*x[15]-0.5895*x[5]*x[7]*x[11]+0.9132*x[5]*x[7]*x[12]-0.5276*x[5]*x[10]*x[13]+0.9844*x[5]*x[10]*x[14]-0.0061*x[5]*x[12]*x[15]-0.4356*x[6]*x[8]*x[13]+0.7539*x[6]*x[8]*x[15]+0.6511*x[6]*x[9]*x[11]-0.9521*x[6]*x[9]*x[12]+0.4542*x[6]*x[11]*x[12]-0.5022*x[6]*x[11]*x[14]-0.8803*x[6]*x[11]*x[15]+0.2943*x[6]*x[13]*x[15]-0.2451*x[7]*x[8]*x[9]-0.3485*x[7]*x[8]*x[14]+0.0402*x[7]*x[9]*x[12]-0.4824*x[7]*x[10]*x[13]+0.5946*x[7]*x[10]*x[15]+0.8177*x[7]*x[12]*x[14]+0.0735*x[8]*x[9]*x[12]-0.3924*x[8]*x[9]*x[13]+0.2972*x[8]*x[10]*x[13]-0.1156*x[8]*x[11]*x[14]-0.1674*x[8]*x[12]*x[15]-0.9742*x[9]*x[10]*x[14]-0.0862*x[9]*x[10]*x[15]+0.5147*x[9]*x[11]*x[14]-0.4022*x[9]*x[12]*x[13]-0.4037*x[9]*x[12]*x[14]+0.4623*x[10]*x[12]*x[14]+0.0579*x[11]*x[12]*x[13]-0.3816*x[11]*x[12]*x[15]+0.1089*x[11]*x[13]*x[14]-0.6343*x[1]+0.7847*x[2]-0.7753*x[10]+0.2284*x[1]*x[2]*x[3]*x[9]+0.6796*x[1]*x[2]*x[3]*x[11]-0.2382*x[1]*x[2]*x[6]*x[8]-0.2096*x[1]*x[2]*x[6]*x[10]-0.6075*x[1]*x[2]*x[6]*x[13]+0.9985*x[1]*x[2]*x[13]*x[14]-0.5041*x[1]*x[3]*x[8]*x[10]+0.0525*x[1]*x[3]*x[9]*x[11]+0.4301*x[1]*x[4]*x[5]*x[7]+0.8874*x[1]*x[4]*x[6]*x[15]-0.0148*x[1]*x[4]*x[7]*x[9]-0.0957*x[1]*x[4]*x[8]*x[14]-0.1718*x[1]*x[4]*x[11]*x[13]+0.1976*x[1]*x[4]*x[11]*x[14]-0.064*x[1]*x[4]*x[13]*x[14]+0.0488*x[1]*x[5]*x[6]*x[12]+0.8177*x[1]*x[5]*x[8]*x[13]+0.5027*x[1]*x[5]*x[8]*x[14]-0.5734*x[1]*x[5]*x[14]*x[15]-0.1571*x[1]*x[6]*x[9]*x[13]+0.5472*x[1]*x[6]*x[10]*x[12]-0.1974*x[1]*x[6]*x[10]*x[13]-0.9513*x[1]*x[6]*x[12]*x[15]+0.8783*x[1]*x[7]*x[10]*x[11]-0.9313*x[1]*x[7]*x[13]*x[14]+0.6369*x[1]*x[8]*x[9]*x[12]+0.8049*x[1]*x[8]*x[11]*x[14]+0.889*x[1]*x[8]*x[12]*x[14]-0.4285*x[1]*x[9]*x[11]*x[13]+0.064*x[1]*x[9]*x[13]*x[14]-0.0832*x[2]*x[3]*x[4]*x[9]+0.6138*x[2]*x[3]*x[4]*x[12]-0.7716*x[2]*x[3]*x[5]*x[9]-0.9546*x[2]*x[3]*x[5]*x[11]-0.1218*x[2]*x[3]*x[7]*x[10]-0.7618*x[2]*x[3]*x[7]*x[13]-0.3868*x[2]*x[3]*x[8]*x[11]+0.9221*x[2]*x[3]*x[9]*x[10]-0.6261*x[2]*x[3]*x[9]*x[15]-0.2571*x[2]*x[3]*x[10]*x[11]+0.8201*x[2]*x[3]*x[10]*x[12]+0.1313*x[2]*x[3]*x[12]*x[13]+0.8075*x[2]*x[4]*x[5]*x[6]-0.1518*x[2]*x[4]*x[5]*x[7]+0.4788*x[2]*x[4]*x[5]*x[11]-0.9794*x[2]*x[4]*x[6]*x[10]+0.3038*x[2]*x[4]*x[6]*x[14]-0.902*x[2]*x[4]*x[7]*x[8]-0.2623*x[2]*x[4]*x[7]*x[11]+0.0395*x[2]*x[4]*x[7]*x[14]-0.717*x[2]*x[4]*x[8]*x[12]+0.8038*x[2]*x[4]*x[9]*x[10]-0.1146*x[2]*x[5]*x[6]*x[9]-0.289*x[2]*x[5]*x[7]*x[10]-0.2567*x[2]*x[5]*x[7]*x[13]-0.7975*x[2]*x[5]*x[8]*x[10]-0.9687*x[2]*x[5]*x[8]*x[11]-0.5883*x[2]*x[5]*x[9]*x[11]-0.4612*x[2]*x[5]*x[11]*x[15]+0.0029*x[2]*x[6]*x[8]*x[13]-0.8197*x[2]*x[6]*x[8]*x[15]+0.6128*x[2]*x[6]*x[9]*x[11]+0.7355*x[2]*x[6]*x[9]*x[13]-0.7996*x[2]*x[6]*x[11]*x[13]+0.649*x[2]*x[6]*x[12]*x[15]+0.5442*x[2]*x[7]*x[9]*x[14]-0.3769*x[2]*x[7]*x[11]*x[12]+0.1954*x[2]*x[8]*x[9]*x[12]-0.4837*x[2]*x[8]*x[9]*x[15]-0.9638*x[2]*x[8]*x[10]*x[12]-0.3338*x[2]*x[8]*x[11]*x[14]-0.068*x[2]*x[8]*x[13]*x[15]-0.2402*x[2]*x[8]*x[14]*x[15]-0.5344*x[2]*x[9]*x[10]*x[11]-0.181*x[2]*x[9]*x[10]*x[13]+0.7947*x[2]*x[9]*x[11]*x[12]+0.0104*x[2]*x[9]*x[11]*x[14]-0.331*x[2]*x[9]*x[12]*x[13]-0.3179*x[2]*x[10]*x[11]*x[13]+0.8937*x[2]*x[11]*x[12]*x[14]-0.8504*x[2]*x[11]*x[12]*x[15]-0.799*x[3]*x[4]*x[6]*x[9]-0.6625*x[3]*x[4]*x[6]*x[12]+0.6045*x[3]*x[4]*x[7]*x[10]-0.0852*x[3]*x[4]*x[7]*x[14]-0.6521*x[3]*x[4]*x[8]*x[12]-0.0921*x[3]*x[4]*x[8]*x[13]+0.9353*x[3]*x[4]*x[9]*x[14]+0.6397*x[3]*x[4]*x[10]*x[11]+0.9679*x[3]*x[4]*x[12]*x[14]-0.4683*x[3]*x[5]*x[6]*x[13]-0.3471*x[3]*x[5]*x[7]*x[8]-0.0823*x[3]*x[5]*x[9]*x[12]+0.1017*x[3]*x[5]*x[10]*x[15]-0.9499*x[3]*x[5]*x[11]*x[13]+0.5786*x[3]*x[5]*x[14]*x[15]-0.6292*x[3]*x[6]*x[7]*x[10]-0.998*x[3]*x[6]*x[7]*x[11]+0.4467*x[3]*x[6]*x[8]*x[11]+0.6794*x[3]*x[6]*x[8]*x[14]+0.4414*x[3]*x[6]*x[9]*x[15]+0.9491*x[3]*x[6]*x[10]*x[14]+0.4594*x[3]*x[6]*x[11]*x[14]+0.4814*x[3]*x[7]*x[8]*x[11]+0.1529*x[3]*x[7]*x[8]*x[12]+0.6679*x[3]*x[7]*x[9]*x[11]+0.0953*x[3]*x[7]*x[9]*x[12]+0.9491*x[3]*x[7]*x[9]*x[14]-0.7244*x[3]*x[7]*x[10]*x[14]-0.4474*x[3]*x[7]*x[12]*x[15]+0.5489*x[3]*x[7]*x[13]*x[15]+0.3176*x[3]*x[8]*x[11]*x[13]+0.9229*x[3]*x[8]*x[13]*x[15]+0.67*x[3]*x[9]*x[11]*x[13]-0.3214*x[3]*x[10]*x[12]*x[14]-0.5144*x[3]*x[10]*x[13]*x[14]+0.9569*x[4]*x[5]*x[8]*x[15]-0.8726*x[4]*x[5]*x[9]*x[10]-0.25*x[4]*x[5]*x[10]*x[14]+0.3439*x[4]*x[5]*x[11]*x[13]-0.8418*x[4]*x[6]*x[7]*x[11]-0.5542*x[4]*x[6]*x[8]*x[12]-0.539*x[4]*x[6]*x[9]*x[13]-0.7262*x[4]*x[6]*x[10]*x[15]+0.8248*x[4]*x[6]*x[12]*x[13]+0.191*x[4]*x[7]*x[8]*x[10]-0.1329*x[4]*x[7]*x[8]*x[12]+0.7126*x[4]*x[7]*x[8]*x[14]+0.2594*x[4]*x[7]*x[10]*x[11]-0.722*x[4]*x[7]*x[10]*x[13]+0.8024*x[4]*x[7]*x[11]*x[12]-0.5978*x[4]*x[8]*x[9]*x[14]-0.722*x[4]*x[8]*x[10]*x[11]+0.2514*x[4]*x[8]*x[10]*x[14]+0.2348*x[4]*x[8]*x[11]*x[15]+0.8146*x[4]*x[8]*x[12]*x[15]-0.9745*x[4]*x[9]*x[10]*x[14]+0.7708*x[4]*x[9]*x[11]*x[12]+0.3632*x[4]*x[9]*x[12]*x[13]-0.218*x[4]*x[10]*x[11]*x[12]-0.6721*x[4]*x[10]*x[11]*x[13]-0.0323*x[4]*x[10]*x[12]*x[14]+0.159*x[4]*x[10]*x[13]*x[14]-0.5121*x[4]*x[10]*x[13]*x[15]-0.615*x[4]*x[11]*x[12]*x[13]-0.1693*x[4]*x[11]*x[12]*x[14]+0.4382*x[4]*x[12]*x[13]*x[14]-0.0781*x[5]*x[6]*x[7]*x[13]-0.9379*x[5]*x[6]*x[8]*x[9]-0.2523*x[5]*x[6]*x[10]*x[11]+0.1126*x[5]*x[6]*x[10]*x[13]+0.6574*x[5]*x[6]*x[12]*x[14]-0.4102*x[5]*x[7]*x[8]*x[9]+0.2248*x[5]*x[7]*x[8]*x[10]+0.73*x[5]*x[7]*x[12]*x[13]+0.8706*x[5]*x[7]*x[14]*x[15]+0.3537*x[5]*x[8]*x[10]*x[11]-0.959*x[5]*x[8]*x[12]*x[14]-0.9346*x[5]*x[8]*x[12]*x[15]-0.0184*x[5]*x[9]*x[10]*x[13]-0.6505*x[5]*x[9]*x[10]*x[14]-0.3792*x[5]*x[9]*x[11]*x[14]-0.5331*x[5]*x[9]*x[13]*x[14]+0.4916*x[5]*x[10]*x[11]*x[13]-0.8912*x[5]*x[10]*x[11]*x[15]+0.8676*x[5]*x[10]*x[13]*x[14]-0.2679*x[5]*x[11]*x[13]*x[15]-0.3328*x[6]*x[7]*x[9]*x[12]+0.9808*x[6]*x[7]*x[9]*x[15]+0.9767*x[6]*x[7]*x[10]*x[14]+0.4968*x[6]*x[7]*x[11]*x[14]-0.7084*x[6]*x[8]*x[10]*x[15]-0.4137*x[6]*x[8]*x[11]*x[12]-0.8164*x[6]*x[8]*x[12]*x[13]-0.0037*x[6]*x[9]*x[10]*x[12]+0.3016*x[6]*x[9]*x[11]*x[13]-0.0387*x[6]*x[9]*x[11]*x[15]-0.069*x[6]*x[9]*x[14]*x[15]-0.5261*x[6]*x[10]*x[11]*x[12]+0.5809*x[6]*x[11]*x[14]*x[15]+0.4049*x[7]*x[8]*x[11]*x[12]+0.0186*x[7]*x[8]*x[13]*x[14]-0.6592*x[7]*x[9]*x[10]*x[11]+0.5713*x[7]*x[9]*x[12]*x[15]+0.5617*x[7]*x[10]*x[11]*x[14]-0.5689*x[7]*x[10]*x[11]*x[15]-0.1788*x[8]*x[10]*x[11]*x[13]-0.5344*x[8]*x[10]*x[11]*x[14]+0.5897*x[8]*x[10]*x[12]*x[15]+0.3352*x[8]*x[11]*x[12]*x[13]-0.9474*x[9]*x[10]*x[11]*x[13]-0.877*x[9]*x[10]*x[12]*x[13]+0.4577*x[9]*x[10]*x[14]*x[15]+0.63*x[9]*x[11]*x[12]*x[13]-0.6187*x[9]*x[11]*x[14]*x[15]+0.3926*x[10]*x[11]*x[12]*x[13]+0.7712*x[10]*x[11]*x[14]*x[15]-0.1981*x[11]*x[12]*x[14]*x[15]-0.4834*x[11]*x[13]*x[14]*x[15])+x[16] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[16])

m = m 		 # model get returned when including this script. 