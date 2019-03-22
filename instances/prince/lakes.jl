using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]
@variable(m, x[x_Idx])
setlowerbound(x[12], 0.0001)
setlowerbound(x[14], 0.0001)
setlowerbound(x[15], 0.0001)
setlowerbound(x[27], 0.0001)
setlowerbound(x[29], 0.0001)
setlowerbound(x[30], 0.0001)
setlowerbound(x[42], 0.0001)
setlowerbound(x[44], 0.0001)
setlowerbound(x[45], 0.0001)
setlowerbound(x[57], 0.0001)
setlowerbound(x[59], 0.0001)
setlowerbound(x[60], 0.0001)
setlowerbound(x[72], 0.0001)
setlowerbound(x[74], 0.0001)
setlowerbound(x[75], 0.0001)
setlowerbound(x[87], 0.0001)
setlowerbound(x[89], 0.0001)
setlowerbound(x[90], 0.0001)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+x[2]+x[16] == -22.0)
@constraint(m, e2, -x[2]-x[3]+x[4]+x[18] == -1.0)
@constraint(m, e3, -x[4]-x[5]+x[6]+x[20] == 3.0)
@constraint(m, e4, -x[6]-x[7]+x[8]+x[22] == -27.2)
@constraint(m, e5, -x[8]-x[9]+x[10]+x[24] == 51.5)
@constraint(m, e6, -x[16]+x[17]+x[31] == 44.0)
@constraint(m, e7, -x[17]-x[18]+x[19]+x[33] == 162.0)
@constraint(m, e8, -x[19]-x[20]+x[21]+x[35] == 8.0)
@constraint(m, e9, -x[21]-x[22]+x[23]+x[37] == 12.5)
@constraint(m, e10, -x[23]-x[24]+x[25]+x[39] == 53.5)
@constraint(m, e11, -x[31]+x[32]+x[46] == -11.0)
@constraint(m, e12, -x[32]-x[33]+x[34]+x[48] == 60.0)
@constraint(m, e13, -x[34]-x[35]+x[36]+x[50] == 10.0)
@constraint(m, e14, -x[36]-x[37]+x[38]+x[52] == 18.0)
@constraint(m, e15, -x[38]-x[39]+x[40]+x[54] == 39.0)
@constraint(m, e16, -x[46]+x[47]+x[61] == 124.0)
@constraint(m, e17, -x[47]-x[48]+x[49]+x[63] == 246.0)
@constraint(m, e18, -x[49]-x[50]+x[51]+x[65] == 6.0)
@constraint(m, e19, -x[51]-x[52]+x[53]+x[67] == 9.7)
@constraint(m, e20, -x[53]-x[54]+x[55]+x[69] == 17.2)
@constraint(m, e21, -x[61]+x[62]+x[76] == 127.0)
@constraint(m, e22, -x[62]-x[63]+x[64]+x[78] == 175.0)
@constraint(m, e23, -x[64]-x[65]+x[66]+x[80] == 3.0)
@constraint(m, e24, -x[66]-x[67]+x[68]+x[82] == 10.0)
@constraint(m, e25, -x[68]-x[69]+x[70]+x[84] == 30.2)
@constraint(m, e26, x[1]-x[76]+x[77] == 78.0)
@constraint(m, e27, x[3]-x[77]-x[78]+x[79] == 156.0)
@constraint(m, e28, x[5]-x[79]-x[80]+x[81] == 3.0)
@constraint(m, e29, x[7]-x[81]-x[82]+x[83] == 14.0)
@constraint(m, e30, x[9]-x[83]-x[84]+x[85] == 23.2)
@NLconstraint(m, e31, 0.0841168* (x[11])^2*sqrt(x[12])-x[4] == 0.0)
@NLconstraint(m, e32, 0.1280849* (x[13])^2*sqrt(x[14])-x[6] == 0.0)
@NLconstraint(m, e33, 0.2605*exp(2.2*log(x[15]))-x[8] == 0.0)
@constraint(m, e34, 0.00103993344425957*x[3]+0.108695652173913*x[5]-x[11] == 543.4)
@constraint(m, e35, 0.00207986688851913*x[3]-0.217391304347826*x[5]-x[12] == 0.0)
@constraint(m, e36, 0.217391304347826*x[5]-x[13] == 543.4)
@constraint(m, e37, 0.217391304347826*x[5]-0.00951022349025202*x[7]-x[14] == 0.0)
@constraint(m, e38, 0.00951022349025202*x[7]-x[15] == 550.11)
@NLconstraint(m, e39, 0.0841168* (x[26])^2*sqrt(x[27])-x[19] == 0.0)
@NLconstraint(m, e40, 0.1280849* (x[28])^2*sqrt(x[29])-x[21] == 0.0)
@NLconstraint(m, e41, 0.2605*exp(2.2*log(x[30]))-x[23] == 0.0)
@constraint(m, e42, 0.00103993344425957*x[18]+0.108695652173913*x[20]-x[26] == 543.4)
@constraint(m, e43, 0.00207986688851913*x[18]-0.217391304347826*x[20]-x[27] == 0.0)
@constraint(m, e44, 0.217391304347826*x[20]-x[28] == 543.4)
@constraint(m, e45, 0.217391304347826*x[20]-0.00951022349025202*x[22]-x[29] == 0.0)
@constraint(m, e46, 0.00951022349025202*x[22]-x[30] == 550.11)
@NLconstraint(m, e47, 0.0841168* (x[41])^2*sqrt(x[42])-x[34] == 0.0)
@NLconstraint(m, e48, 0.1280849* (x[43])^2*sqrt(x[44])-x[36] == 0.0)
@NLconstraint(m, e49, 0.2605*exp(2.2*log(x[45]))-x[38] == 0.0)
@constraint(m, e50, 0.00103993344425957*x[33]+0.108695652173913*x[35]-x[41] == 543.4)
@constraint(m, e51, 0.00207986688851913*x[33]-0.217391304347826*x[35]-x[42] == 0.0)
@constraint(m, e52, 0.217391304347826*x[35]-x[43] == 543.4)
@constraint(m, e53, 0.217391304347826*x[35]-0.00951022349025202*x[37]-x[44] == 0.0)
@constraint(m, e54, 0.00951022349025202*x[37]-x[45] == 550.11)
@NLconstraint(m, e55, 0.0841168* (x[56])^2*sqrt(x[57])-x[49] == 0.0)
@NLconstraint(m, e56, 0.1280849* (x[58])^2*sqrt(x[59])-x[51] == 0.0)
@NLconstraint(m, e57, 0.2605*exp(2.2*log(x[60]))-x[53] == 0.0)
@constraint(m, e58, 0.00103993344425957*x[48]+0.108695652173913*x[50]-x[56] == 543.4)
@constraint(m, e59, 0.00207986688851913*x[48]-0.217391304347826*x[50]-x[57] == 0.0)
@constraint(m, e60, 0.217391304347826*x[50]-x[58] == 543.4)
@constraint(m, e61, 0.217391304347826*x[50]-0.00951022349025202*x[52]-x[59] == 0.0)
@constraint(m, e62, 0.00951022349025202*x[52]-x[60] == 550.11)
@NLconstraint(m, e63, 0.0841168* (x[71])^2*sqrt(x[72])-x[64] == 0.0)
@NLconstraint(m, e64, 0.1280849* (x[73])^2*sqrt(x[74])-x[66] == 0.0)
@NLconstraint(m, e65, 0.2605*exp(2.2*log(x[75]))-x[68] == 0.0)
@constraint(m, e66, 0.00103993344425957*x[63]+0.108695652173913*x[65]-x[71] == 543.4)
@constraint(m, e67, 0.00207986688851913*x[63]-0.217391304347826*x[65]-x[72] == 0.0)
@constraint(m, e68, 0.217391304347826*x[65]-x[73] == 543.4)
@constraint(m, e69, 0.217391304347826*x[65]-0.00951022349025202*x[67]-x[74] == 0.0)
@constraint(m, e70, 0.00951022349025202*x[67]-x[75] == 550.11)
@NLconstraint(m, e71, 0.0841168* (x[86])^2*sqrt(x[87])-x[79] == 0.0)
@NLconstraint(m, e72, 0.1280849* (x[88])^2*sqrt(x[89])-x[81] == 0.0)
@NLconstraint(m, e73, 0.2605*exp(2.2*log(x[90]))-x[83] == 0.0)
@constraint(m, e74, 0.00103993344425957*x[78]+0.108695652173913*x[80]-x[86] == 543.4)
@constraint(m, e75, 0.00207986688851913*x[78]-0.217391304347826*x[80]-x[87] == 0.0)
@constraint(m, e76, 0.217391304347826*x[80]-x[88] == 543.4)
@constraint(m, e77, 0.217391304347826*x[80]-0.00951022349025202*x[82]-x[89] == 0.0)
@constraint(m, e78, 0.00951022349025202*x[82]-x[90] == 550.11)
@NLconstraint(m, e79, -0.001*((-202761.072+x[1])*(-202761.072+x[1])+(-232.252+x[2])*(-232.252+x[2])+(-277791.816+x[3])*(-277791.816+x[3])+(-174.665+x[4])*(-174.665+x[4])+(-2636.996+x[5])*(-2636.996+x[5])+(-180.539+x[6])*(-180.539+x[6])+(-59987.0235+x[7])*(-59987.0235+x[7])+(-211.558+x[8])*(-211.558+x[8])+(-19490.4+x[9])*(-19490.4+x[9])+(-232.252+x[10])*(-232.252+x[10])+(-202703.646+x[16])*(-202703.646+x[16])+(-83.789+x[17])*(-83.789+x[17])+(-277849.512+x[18])*(-277849.512+x[18])+(-173.255+x[19])*(-173.255+x[19])+(-2638.1+x[20])*(-2638.1+x[20])+(-179.917+x[21])*(-179.917+x[21])+(-59998.59+x[22])*(-59998.59+x[22])+(-210.585+x[23])*(-210.585+x[23])+(-19555.2+x[24])*(-19555.2+x[24])+(-215.254+x[25])*(-215.254+x[25])+(-202720.536+x[31])*(-202720.536+x[31])+(-82.916+x[32])*(-82.916+x[32])+(-277955.288+x[33])*(-277955.288+x[33])+(-173.721+x[34])*(-173.721+x[34])+(-2639.894+x[35])*(-2639.894+x[35])+(-182.676+x[36])*(-182.676+x[36])+(-60046.959+x[37])*(-60046.959+x[37])+(-207.838+x[38])*(-207.838+x[38])+(-19597.6+x[39])*(-19597.6+x[39])+(-203.855+x[40])*(-203.855+x[40])+(-202808.364+x[46])*(-202808.364+x[46])+(-80.134+x[47])*(-80.134+x[47])+(-278104.336+x[48])*(-278104.336+x[48])+(-178.654+x[49])*(-178.654+x[49])+(-2640.906+x[50])*(-2640.906+x[50])+(-185.917+x[51])*(-185.917+x[51])+(-60074.298+x[52])*(-60074.298+x[52])+(-206.416+x[53])*(-206.416+x[53])+(-19652.8+x[54])*(-19652.8+x[54])+(-186.308+x[55])*(-186.308+x[55])+(-202916.46+x[61])*(-202916.46+x[61])+(-65.345+x[62])*(-65.345+x[62])+(-278224.536+x[63])*(-278224.536+x[63])+(-188.01+x[64])*(-188.01+x[64])+(-2641.458+x[65])*(-2641.458+x[65])+(-192.568+x[66])*(-192.568+x[66])+(-60091.122+x[67])*(-60091.122+x[67])+(-204.3+x[68])*(-204.3+x[68])+(-19708.8+x[69])*(-19708.8+x[69])+(-201.1+x[70])*(-201.1+x[70])+(-202953.618+x[76])*(-202953.618+x[76])+(-72.005+x[77])*(-72.005+x[77])+(-278277.424+x[78])*(-278277.424+x[78])+(-193.833+x[79])*(-193.833+x[79])+(-2641.458+x[80])*(-2641.458+x[80])+(-196.651+x[81])*(-196.651+x[81])+(-60082.71+x[82])*(-60082.71+x[82])+(-204.25+x[83])*(-204.25+x[83])+(-19706.4+x[84])*(-19706.4+x[84])+(-241.079+x[85])*(-241.079+x[85]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 