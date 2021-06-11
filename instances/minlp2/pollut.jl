using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 17643.6)
set_upper_bound(x[1], 41168.4)
set_lower_bound(x[2], 12825.0)
set_upper_bound(x[2], 29925.0)
set_lower_bound(x[3], 5053.8)
set_upper_bound(x[3], 11792.2)
set_lower_bound(x[4], 8323.8)
set_upper_bound(x[4], 19422.2)
set_lower_bound(x[5], 5082.0)
set_upper_bound(x[5], 11858.0)
set_lower_bound(x[6], 21825.0)
set_upper_bound(x[6], 50925.0)
set_lower_bound(x[7], 39609.6)
set_upper_bound(x[7], 92422.4)
set_lower_bound(x[8], 48080.4)
set_upper_bound(x[8], 112187.6)
set_lower_bound(x[9], 796.2)
set_upper_bound(x[9], 1857.8)
set_lower_bound(x[10], 2648.4)
set_upper_bound(x[10], 6179.6)
set_lower_bound(x[11], 2225.4)
set_upper_bound(x[11], 5192.6)
set_lower_bound(x[12], 8697.6)
set_upper_bound(x[12], 20294.4)
set_lower_bound(x[13], 61439.4)
set_upper_bound(x[13], 143358.6)
set_lower_bound(x[14], 16804.8)
set_upper_bound(x[14], 39211.2)
set_lower_bound(x[15], 41588.4)
set_upper_bound(x[15], 97039.6)
set_lower_bound(x[16], 54008.4)
set_upper_bound(x[16], 126019.6)
set_lower_bound(x[17], 17616.0)
set_upper_bound(x[17], 41104.0)
set_lower_bound(x[18], 16612.2)
set_upper_bound(x[18], 38761.8)
set_lower_bound(x[19], 2405.4)
set_upper_bound(x[19], 5612.6)
set_lower_bound(x[20], 14593.8)
set_upper_bound(x[20], 34052.2)
set_lower_bound(x[21], 14825.4)
set_upper_bound(x[21], 34592.6)
set_lower_bound(x[22], 11350.8)
set_upper_bound(x[22], 26485.2)
set_lower_bound(x[23], 12381.6)
set_upper_bound(x[23], 28890.4)
set_lower_bound(x[24], 6274.2)
set_upper_bound(x[24], 14639.8)
set_lower_bound(x[25], 5843.4)
set_upper_bound(x[25], 13634.6)
set_lower_bound(x[26], 11328.0)
set_upper_bound(x[26], 26432.0)
set_lower_bound(x[27], 26688.0)
set_upper_bound(x[27], 62272.0)
set_lower_bound(x[28], 21915.6)
set_upper_bound(x[28], 51136.4)
set_lower_bound(x[29], 454.8)
set_upper_bound(x[29], 1061.2)
set_lower_bound(x[30], 2952.6)
set_upper_bound(x[30], 6889.4)
set_lower_bound(x[31], 4059.6)
set_upper_bound(x[31], 9472.4)
set_lower_bound(x[32], 5620.8)
set_upper_bound(x[32], 13115.2)
set_lower_bound(x[33], 18676.2)
set_upper_bound(x[33], 43577.8)
set_lower_bound(x[34], 699.6)
set_upper_bound(x[34], 1632.4)
set_lower_bound(x[35], 35715.0)
set_upper_bound(x[35], 83335.0)
set_lower_bound(x[36], 37828.8)
set_upper_bound(x[36], 88267.2)
set_lower_bound(x[37], 17903.4)
set_upper_bound(x[37], 41774.6)
set_lower_bound(x[38], 10167.0)
set_upper_bound(x[38], 23723.0)
set_lower_bound(x[39], 2896.8)
set_upper_bound(x[39], 6759.2)
set_lower_bound(x[40], 14741.4)
set_upper_bound(x[40], 34396.6)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(9.6*x[1]^0.879*x[21]^0.121+6.353*x[2]^0.806*x[22]^0.194+9.818*x[3]^0.796*x[23]^0.204+7.371*x[4]^0.819*x[24]^0.181+10.22*x[5]^0.829*x[25]^0.171+6.255*x[6]^0.855*x[26]^0.145+8.149*x[7]^0.696*x[27]^0.304+7.794*x[8]^0.854*x[28]^0.146+8.4*x[9]^0.827*x[29]^0.173+9.933*x[10]^0.826*x[30]^0.174+11.069*x[11]^0.833*x[31]^0.167+6.528*x[12]^0.808*x[32]^0.192+7.928*x[13]^0.884*x[33]^0.116+10.559*x[14]^0.909*x[34]^0.091+6.606*x[15]^0.773*x[35]^0.227+7.153*x[16]^0.792*x[36]^0.208+11.146*x[17]^0.849*x[37]^0.151+6.884*x[18]^0.801*x[38]^0.199+6.66*x[19]^0.747*x[39]^0.253+7.929*x[20]^0.818*x[40]^0.182)-objvar == 0.0)
@constraint(m, e2, 0.797744360902256*x[1]+0.208131595282433*x[2]+0.395400943396226*x[3]+0.00945378151260504*x[4]+0.016020942408377*x[5]+1.32848209209778*x[6]+0.347442922374429*x[7]+0.534329395413482*x[8]+0.284322678843227*x[9]+0.283080040526849*x[10]+0.341982864137087*x[11]+0.0127927927927928*x[12]+0.0437154696132597*x[13]+0.00886939571150097*x[14]+0.00797702616464582*x[15]+0.00590969455511288*x[16]+0.0137430167597765*x[17]+0.00493133583021223*x[18]+0.0273858921161826*x[19]+0.0741242038216561*x[20] <= 153000.0)
@constraint(m, e3, 0.0854323308270677*x[1]+0.153320918684047*x[2]+0.29127358490566*x[3]+0.00588235294117647*x[4]+0.00879581151832461*x[5]+0.424161455372371*x[6]+0.263333333333333*x[7]+0.400764419735928*x[8]+0.126560121765601*x[9]+0.0462006079027356*x[10]+0.0558139534883721*x[11]+0.528528528528528*x[12]+0.163052486187845*x[13]+0.329044834307992*x[14]+0.0548819400127632*x[15]+0.0249667994687915*x[16]+0.0412290502793296*x[17]+0.00792759051186017*x[18]+0.0174273858921162*x[19]+0.0200636942675159*x[20] <= 120000.0)
@constraint(m, e4, 0.281015037593985*x[1]+0.557417752948479*x[2]+0.327830188679245*x[3]+0.48249299719888*x[4]+0.366492146596859*x[5]+0.266628766344514*x[6]+0.0589041095890411*x[7]+0.373175816539263*x[8]+2.06088280060883*x[9]+0.611955420466059*x[10]+0.609547123623011*x[11]+0.691291291291291*x[12]+0.614640883977901*x[13]+0.260233918128655*x[14]+0.433312061263561*x[15]+0.412350597609562*x[16]+0.329608938547486*x[17]+0.491260923845194*x[18]+0.264868603042877*x[19]+0.337579617834395*x[20] <= 250000.0)
@constraint(m, e5, 0.676221804511278*x[1]+1.05723153320919*x[2]+0.158608490566038*x[3]+0.112464985994398*x[4]+0.149633507853403*x[5]+0.883001705514497*x[6]+0.0844748858447489*x[7]+0.6726893676164*x[8]+0.220700152207002*x[9]+0.932117527862209*x[10]+0.895960832313342*x[11]+0.571771771771772*x[12]+0.537292817679558*x[13]+0.362573099415205*x[14]+0.314613911933631*x[15]+0.164674634794157*x[16]+0.256983240223464*x[17]+0.268414481897628*x[18]+0.208160442600277*x[19]+0.278662420382166*x[20] <= 250000.0)
@constraint(m, e6, x[41]-0.9*x[42] >= 0.0)
@constraint(m, e7, x[41]-1.4*x[42] <= 0.0)
@constraint(m, e8, -x[1]-x[2]-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]+x[41] == 0.0)
@constraint(m, e9, -x[21]-x[22]-x[23]-x[24]-x[25]-x[26]-x[27]-x[28]-x[29]-x[30]-x[31]-x[32]-x[33]-x[34]-x[35]-x[36]-x[37]-x[38]-x[39]-x[40]+x[42] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
