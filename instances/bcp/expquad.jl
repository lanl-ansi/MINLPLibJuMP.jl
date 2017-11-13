using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 10.0)
setupperbound(x[2], 10.0)
setupperbound(x[3], 10.0)
setupperbound(x[4], 10.0)
setupperbound(x[5], 10.0)
setupperbound(x[6], 10.0)
setupperbound(x[7], 10.0)
setupperbound(x[8], 10.0)
setupperbound(x[9], 10.0)
setupperbound(x[10], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(exp(x[1]*x[2])+exp(2*x[2]*x[3])+exp(3*x[3]*x[4])+exp(4*x[4]*x[5])+exp(5*x[5]*x[6])+exp(6*x[6]*x[7])+exp(7*x[7]*x[8])+exp(8*x[8]*x[9])+exp(9*x[9]*x[10])+exp(10*x[10]*x[11])+4*x[11]*x[11]+2*x[120]*x[120]+x[11]*x[120]+4*x[12]*x[12]+2*x[120]*x[120]+x[12]*x[120]+4*x[13]*x[13]+2*x[120]*x[120]+x[13]*x[120]+4*x[14]*x[14]+2*x[120]*x[120]+x[14]*x[120]+4*x[15]*x[15]+2*x[120]*x[120]+x[15]*x[120]+4*x[16]*x[16]+2*x[120]*x[120]+x[16]*x[120]+4*x[17]*x[17]+2*x[120]*x[120]+x[17]*x[120]+4*x[18]*x[18]+2*x[120]*x[120]+x[18]*x[120]+4*x[19]*x[19]+2*x[120]*x[120]+x[19]*x[120]+4*x[20]*x[20]+2*x[120]*x[120]+x[20]*x[120]+4*x[21]*x[21]+2*x[120]*x[120]+x[21]*x[120]+4*x[22]*x[22]+2*x[120]*x[120]+x[22]*x[120]+4*x[23]*x[23]+2*x[120]*x[120]+x[23]*x[120]+4*x[24]*x[24]+2*x[120]*x[120]+x[24]*x[120]+4*x[25]*x[25]+2*x[120]*x[120]+x[25]*x[120]+4*x[26]*x[26]+2*x[120]*x[120]+x[26]*x[120]+4*x[27]*x[27]+2*x[120]*x[120]+x[27]*x[120]+4*x[28]*x[28]+2*x[120]*x[120]+x[28]*x[120]+4*x[29]*x[29]+2*x[120]*x[120]+x[29]*x[120]+4*x[30]*x[30]+2*x[120]*x[120]+x[30]*x[120]+4*x[31]*x[31]+2*x[120]*x[120]+x[31]*x[120]+4*x[32]*x[32]+2*x[120]*x[120]+x[32]*x[120]+4*x[33]*x[33]+2*x[120]*x[120]+x[33]*x[120]+4*x[34]*x[34]+2*x[120]*x[120]+x[34]*x[120]+4*x[35]*x[35]+2*x[120]*x[120]+x[35]*x[120]+4*x[36]*x[36]+2*x[120]*x[120]+x[36]*x[120]+4*x[37]*x[37]+2*x[120]*x[120]+x[37]*x[120]+4*x[38]*x[38]+2*x[120]*x[120]+x[38]*x[120]+4*x[39]*x[39]+2*x[120]*x[120]+x[39]*x[120]+4*x[40]*x[40]+2*x[120]*x[120]+x[40]*x[120]+4*x[41]*x[41]+2*x[120]*x[120]+x[41]*x[120]+4*x[42]*x[42]+2*x[120]*x[120]+x[42]*x[120]+4*x[43]*x[43]+2*x[120]*x[120]+x[43]*x[120]+4*x[44]*x[44]+2*x[120]*x[120]+x[44]*x[120]+4*x[45]*x[45]+2*x[120]*x[120]+x[45]*x[120]+4*x[46]*x[46]+2*x[120]*x[120]+x[46]*x[120]+4*x[47]*x[47]+2*x[120]*x[120]+x[47]*x[120]+4*x[48]*x[48]+2*x[120]*x[120]+x[48]*x[120]+4*x[49]*x[49]+2*x[120]*x[120]+x[49]*x[120]+4*x[50]*x[50]+2*x[120]*x[120]+x[50]*x[120]+4*x[51]*x[51]+2*x[120]*x[120]+x[51]*x[120]+4*x[52]*x[52]+2*x[120]*x[120]+x[52]*x[120]+4*x[53]*x[53]+2*x[120]*x[120]+x[53]*x[120]+4*x[54]*x[54]+2*x[120]*x[120]+x[54]*x[120]+4*x[55]*x[55]+2*x[120]*x[120]+x[55]*x[120]+4*x[56]*x[56]+2*x[120]*x[120]+x[56]*x[120]+4*x[57]*x[57]+2*x[120]*x[120]+x[57]*x[120]+4*x[58]*x[58]+2*x[120]*x[120]+x[58]*x[120]+4*x[59]*x[59]+2*x[120]*x[120]+x[59]*x[120]+4*x[60]*x[60]+2*x[120]*x[120]+x[60]*x[120]+4*x[61]*x[61]+2*x[120]*x[120]+x[61]*x[120]+4*x[62]*x[62]+2*x[120]*x[120]+x[62]*x[120]+4*x[63]*x[63]+2*x[120]*x[120]+x[63]*x[120]+4*x[64]*x[64]+2*x[120]*x[120]+x[64]*x[120]+4*x[65]*x[65]+2*x[120]*x[120]+x[65]*x[120]+4*x[66]*x[66]+2*x[120]*x[120]+x[66]*x[120]+4*x[67]*x[67]+2*x[120]*x[120]+x[67]*x[120]+4*x[68]*x[68]+2*x[120]*x[120]+x[68]*x[120]+4*x[69]*x[69]+2*x[120]*x[120]+x[69]*x[120]+4*x[70]*x[70]+2*x[120]*x[120]+x[70]*x[120]+4*x[71]*x[71]+2*x[120]*x[120]+x[71]*x[120]+4*x[72]*x[72]+2*x[120]*x[120]+x[72]*x[120]+4*x[73]*x[73]+2*x[120]*x[120]+x[73]*x[120]+4*x[74]*x[74]+2*x[120]*x[120]+x[74]*x[120]+4*x[75]*x[75]+2*x[120]*x[120]+x[75]*x[120]+4*x[76]*x[76]+2*x[120]*x[120]+x[76]*x[120]+4*x[77]*x[77]+2*x[120]*x[120]+x[77]*x[120]+4*x[78]*x[78]+2*x[120]*x[120]+x[78]*x[120]+4*x[79]*x[79]+2*x[120]*x[120]+x[79]*x[120]+4*x[80]*x[80]+2*x[120]*x[120]+x[80]*x[120]+4*x[81]*x[81]+2*x[120]*x[120]+x[81]*x[120]+4*x[82]*x[82]+2*x[120]*x[120]+x[82]*x[120]+4*x[83]*x[83]+2*x[120]*x[120]+x[83]*x[120]+4*x[84]*x[84]+2*x[120]*x[120]+x[84]*x[120]+4*x[85]*x[85]+2*x[120]*x[120]+x[85]*x[120]+4*x[86]*x[86]+2*x[120]*x[120]+x[86]*x[120]+4*x[87]*x[87]+2*x[120]*x[120]+x[87]*x[120]+4*x[88]*x[88]+2*x[120]*x[120]+x[88]*x[120]+4*x[89]*x[89]+2*x[120]*x[120]+x[89]*x[120]+4*x[90]*x[90]+2*x[120]*x[120]+x[90]*x[120]+4*x[91]*x[91]+2*x[120]*x[120]+x[91]*x[120]+4*x[92]*x[92]+2*x[120]*x[120]+x[92]*x[120]+4*x[93]*x[93]+2*x[120]*x[120]+x[93]*x[120]+4*x[94]*x[94]+2*x[120]*x[120]+x[94]*x[120]+4*x[95]*x[95]+2*x[120]*x[120]+x[95]*x[120]+4*x[96]*x[96]+2*x[120]*x[120]+x[96]*x[120]+4*x[97]*x[97]+2*x[120]*x[120]+x[97]*x[120]+4*x[98]*x[98]+2*x[120]*x[120]+x[98]*x[120]+4*x[99]*x[99]+2*x[120]*x[120]+x[99]*x[120]+4*x[100]*x[100]+2*x[120]*x[120]+x[100]*x[120]+4*x[101]*x[101]+2*x[120]*x[120]+x[101]*x[120]+4*x[102]*x[102]+2*x[120]*x[120]+x[102]*x[120]+4*x[103]*x[103]+2*x[120]*x[120]+x[103]*x[120]+4*x[104]*x[104]+2*x[120]*x[120]+x[104]*x[120]+4*x[105]*x[105]+2*x[120]*x[120]+x[105]*x[120]+4*x[106]*x[106]+2*x[120]*x[120]+x[106]*x[120]+4*x[107]*x[107]+2*x[120]*x[120]+x[107]*x[120]+4*x[108]*x[108]+2*x[120]*x[120]+x[108]*x[120]+4*x[109]*x[109]+2*x[120]*x[120]+x[109]*x[120]+4*x[110]*x[110]+2*x[120]*x[120]+x[110]*x[120]+4*x[111]*x[111]+2*x[120]*x[120]+x[111]*x[120]+4*x[112]*x[112]+2*x[120]*x[120]+x[112]*x[120]+4*x[113]*x[113]+2*x[120]*x[120]+x[113]*x[120]+4*x[114]*x[114]+2*x[120]*x[120]+x[114]*x[120]+4*x[115]*x[115]+2*x[120]*x[120]+x[115]*x[120]+4*x[116]*x[116]+2*x[120]*x[120]+x[116]*x[120]+4*x[117]*x[117]+2*x[120]*x[120]+x[117]*x[120]+4*x[118]*x[118]+2*x[120]*x[120]+x[118]*x[120]+4*x[119]*x[119]+2*x[120]*x[120]+x[119]*x[120]-10*x[1]-20*x[2]-30*x[3]-40*x[4]-50*x[5]-60*x[6]-70*x[7]-80*x[8]-90*x[9]-100*x[10]-110*x[11]-120*x[12]-130*x[13]-140*x[14]-150*x[15]-160*x[16]-170*x[17]-180*x[18]-190*x[19]-200*x[20]-210*x[21]-220*x[22]-230*x[23]-240*x[24]-250*x[25]-260*x[26]-270*x[27]-280*x[28]-290*x[29]-300*x[30]-310*x[31]-320*x[32]-330*x[33]-340*x[34]-350*x[35]-360*x[36]-370*x[37]-380*x[38]-390*x[39]-400*x[40]-410*x[41]-420*x[42]-430*x[43]-440*x[44]-450*x[45]-460*x[46]-470*x[47]-480*x[48]-490*x[49]-500*x[50]-510*x[51]-520*x[52]-530*x[53]-540*x[54]-550*x[55]-560*x[56]-570*x[57]-580*x[58]-590*x[59]-600*x[60]-610*x[61]-620*x[62]-630*x[63]-640*x[64]-650*x[65]-660*x[66]-670*x[67]-680*x[68]-690*x[69]-700*x[70]-710*x[71]-720*x[72]-730*x[73]-740*x[74]-750*x[75]-760*x[76]-770*x[77]-780*x[78]-790*x[79]-800*x[80]-810*x[81]-820*x[82]-830*x[83]-840*x[84]-850*x[85]-860*x[86]-870*x[87]-880*x[88]-890*x[89]-900*x[90]-910*x[91]-920*x[92]-930*x[93]-940*x[94]-950*x[95]-960*x[96]-970*x[97]-980*x[98]-990*x[99]-1000*x[100]-1010*x[101]-1020*x[102]-1030*x[103]-1040*x[104]-1050*x[105]-1060*x[106]-1070*x[107]-1080*x[108]-1090*x[109]-1100*x[110]-1110*x[111]-1120*x[112]-1130*x[113]-1140*x[114]-1150*x[115]-1160*x[116]-1170*x[117]-1180*x[118]-1190*x[119]-1200*x[120])+x[121] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[121])
m = m 		 # model get returned when including this script. 
