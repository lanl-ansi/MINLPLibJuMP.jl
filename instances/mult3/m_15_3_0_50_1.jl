using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

@variable(m, obj)
@variable(m, 0 <= x[x_Idx] <= 1)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.3753*x[1]*x[4]-0.3304*x[1]*x[6]-0.5047*x[1]*x[8]+0.4769*x[1]*x[12]+0.2869*x[2]*x[4]-0.8145*x[2]*x[6]-0.53*x[2]*x[7]-0.1352*x[2]*x[9]+0.0003*x[2]*x[10]+0.5203*x[2]*x[11]+0.0395*x[2]*x[14]-0.7989*x[3]*x[4]+0.0692*x[3]*x[6]-0.0219*x[3]*x[7]+0.0977*x[3]*x[8]+0.1642*x[3]*x[10]+0.9929*x[3]*x[11]-0.497*x[3]*x[12]+0.497*x[3]*x[13]-0.4858*x[4]*x[5]-0.5833*x[4]*x[7]-0.7251*x[4]*x[8]-0.6889*x[4]*x[11]-0.5569*x[4]*x[14]+0.0808*x[5]*x[6]+0.0219*x[5]*x[7]-0.8448*x[5]*x[8]-0.9499*x[5]*x[11]-0.9939*x[5]*x[13]-0.3612*x[6]*x[12]-0.0203*x[6]*x[13]-0.8604*x[6]*x[14]+0.5555*x[7]*x[9]+0.124*x[7]*x[10]+0.5249*x[7]*x[12]+0.8049*x[8]*x[14]+0.9229*x[8]*x[15]+0.5119*x[9]*x[10]+0.4381*x[9]*x[12]-0.831*x[9]*x[13]+0.9353*x[9]*x[14]+0.8942*x[10]*x[12]+0.1639*x[10]*x[13]+0.5277*x[10]*x[14]+0.5162*x[11]*x[15]+0.4181*x[12]*x[13]+0.4699*x[12]*x[14]-0.8293*x[12]*x[15]-0.8906*x[13]*x[14]-0.1182*x[13]*x[15]-0.2451*x[1]-0.1578*x[2]+0.2522*x[3]+0.562*x[4]+0.9868*x[5]+0.0232*x[6]+0.5897*x[7]+0.1998*x[8]-0.9026*x[9]+0.5954*x[10]-0.0184*x[11]-0.9132*x[12]-0.0269*x[13]+0.5776*x[14]+0.2437*x[15]+0.2284*x[1]*x[2]*x[3]-0.3155*x[1]*x[2]*x[6]+0.1448*x[1]*x[2]*x[7]+0.9985*x[1]*x[2]*x[14]+0.1948*x[1]*x[3]*x[5]-0.672*x[1]*x[3]*x[8]+0.1664*x[1]*x[3]*x[11]+0.4013*x[1]*x[3]*x[12]-0.0868*x[1]*x[3]*x[13]-0.0998*x[1]*x[4]*x[6]+0.2573*x[1]*x[4]*x[7]+0.9168*x[1]*x[4]*x[8]-0.4268*x[1]*x[4]*x[10]+0.8874*x[1]*x[4]*x[15]+0.6908*x[1]*x[5]*x[6]+0.947*x[1]*x[5]*x[7]-0.6056*x[1]*x[5]*x[9]-0.3442*x[1]*x[5]*x[12]-0.4609*x[1]*x[5]*x[13]-0.1736*x[1]*x[6]*x[7]+0.2418*x[1]*x[6]*x[12]-0.1571*x[1]*x[6]*x[13]-0.196*x[1]*x[6]*x[14]+0.9272*x[1]*x[7]*x[8]-0.0148*x[1]*x[7]*x[9]+0.3253*x[1]*x[7]*x[10]+0.0341*x[1]*x[7]*x[11]-0.3496*x[1]*x[8]*x[9]-0.3877*x[1]*x[8]*x[13]+0.8868*x[1]*x[9]*x[13]-0.8199*x[1]*x[10]*x[11]-0.7607*x[1]*x[10]*x[12]-0.5615*x[1]*x[11]*x[12]-0.7402*x[1]*x[11]*x[15]+0.496*x[1]*x[12]*x[14]+0.1818*x[2]*x[3]*x[6]+0.9687*x[2]*x[3]*x[7]+0.4833*x[2]*x[3]*x[9]+0.2373*x[2]*x[3]*x[10]+0.5412*x[2]*x[3]*x[12]+0.1313*x[2]*x[3]*x[13]-0.6084*x[2]*x[4]*x[5]+0.8262*x[2]*x[4]*x[6]+0.2835*x[2]*x[4]*x[7]-0.6921*x[2]*x[4]*x[9]-0.3803*x[2]*x[4]*x[11]-0.0462*x[2]*x[4]*x[12]-0.9641*x[2]*x[4]*x[14]+0.7201*x[2]*x[5]*x[6]-0.1518*x[2]*x[5]*x[7]-0.7975*x[2]*x[5]*x[8]-0.0592*x[2]*x[5]*x[9]+0.6446*x[2]*x[5]*x[11]+0.4713*x[2]*x[5]*x[14]+0.9703*x[2]*x[6]*x[7]-0.0407*x[2]*x[6]*x[8]+0.1814*x[2]*x[6]*x[11]+0.4389*x[2]*x[6]*x[12]+0.2902*x[2]*x[6]*x[13]+0.5014*x[2]*x[6]*x[15]-0.7895*x[2]*x[7]*x[9]-0.9986*x[2]*x[7]*x[11]-0.7249*x[2]*x[8]*x[9]-0.9687*x[2]*x[8]*x[11]-0.2402*x[2]*x[8]*x[14]-0.0968*x[2]*x[8]*x[15]-0.8223*x[2]*x[9]*x[12]-0.2455*x[2]*x[9]*x[13]+0.416*x[2]*x[10]*x[11]-0.8667*x[2]*x[10]*x[15]-0.222*x[2]*x[11]*x[14]-0.8504*x[2]*x[11]*x[15]+0.743*x[2]*x[13]*x[14]+0.6789*x[3]*x[4]*x[6]+0.436*x[3]*x[4]*x[10]+0.0713*x[3]*x[4]*x[12]-0.0846*x[3]*x[5]*x[7]+0.5968*x[3]*x[5]*x[9]+0.4704*x[3]*x[5]*x[11]+0.1936*x[3]*x[5]*x[14]-0.3417*x[3]*x[6]*x[7]+0.9569*x[3]*x[6]*x[9]+0.2371*x[3]*x[6]*x[10]-0.6625*x[3]*x[6]*x[12]-0.109*x[3]*x[6]*x[14]+0.1794*x[3]*x[7]*x[8]+0.3703*x[3]*x[7]*x[9]-0.6292*x[3]*x[7]*x[10]+0.7822*x[3]*x[7]*x[13]+0.4837*x[3]*x[7]*x[15]-0.2253*x[3]*x[8]*x[9]+0.5684*x[3]*x[8]*x[11]+0.3176*x[3]*x[8]*x[13]-0.0097*x[3]*x[9]*x[12]+0.0256*x[3]*x[9]*x[13]-0.3214*x[3]*x[10]*x[12]-0.5144*x[3]*x[10]*x[13]-0.4416*x[3]*x[11]*x[13]+0.2939*x[3]*x[11]*x[14]-0.8262*x[3]*x[14]*x[15]-0.3744*x[4]*x[5]*x[8]+0.8756*x[4]*x[5]*x[10]-0.6154*x[4]*x[5]*x[11]+0.6795*x[4]*x[5]*x[13]-0.0217*x[4]*x[5]*x[15]-0.067*x[4]*x[6]*x[8]-0.2341*x[4]*x[6]*x[9]+0.4314*x[4]*x[6]*x[10]-0.1419*x[4]*x[6]*x[11]+0.2275*x[4]*x[6]*x[15]+0.0573*x[4]*x[7]*x[9]+0.6602*x[4]*x[7]*x[10]-0.8418*x[4]*x[7]*x[11]+0.9405*x[4]*x[7]*x[12]+0.9317*x[4]*x[7]*x[13]-0.7085*x[4]*x[7]*x[14]+0.0864*x[4]*x[7]*x[15]+0.0448*x[4]*x[8]*x[11]-0.1097*x[4]*x[8]*x[12]+0.9847*x[4]*x[8]*x[15]+0.6454*x[4]*x[9]*x[10]+0.8057*x[4]*x[9]*x[11]-0.0283*x[4]*x[9]*x[12]+0.522*x[4]*x[9]*x[13]-0.5978*x[4]*x[9]*x[14]+0.6799*x[4]*x[9]*x[15]+0.5959*x[4]*x[10]*x[11]-0.0285*x[4]*x[10]*x[12]-0.6272*x[4]*x[10]*x[13]-0.0596*x[4]*x[10]*x[14]-0.3978*x[4]*x[11]*x[13]-0.7372*x[4]*x[11]*x[14]-0.6765*x[4]*x[12]*x[13]+0.7684*x[4]*x[12]*x[15]+0.4003*x[4]*x[13]*x[14]-0.1668*x[4]*x[14]*x[15]+0.4568*x[5]*x[6]*x[8]+0.4507*x[5]*x[6]*x[9]-0.9454*x[5]*x[6]*x[11]-0.0813*x[5]*x[6]*x[13]-0.0112*x[5]*x[6]*x[14]+0.3795*x[5]*x[7]*x[8]-0.4102*x[5]*x[7]*x[9]-0.0339*x[5]*x[7]*x[10]-0.8875*x[5]*x[7]*x[15]-0.5289*x[5]*x[8]*x[10]+0.3393*x[5]*x[8]*x[13]+0.5633*x[5]*x[8]*x[14]+0.108*x[5]*x[9]*x[10]-0.679*x[5]*x[9]*x[13]-0.6234*x[5]*x[9]*x[14]-0.6505*x[5]*x[10]*x[14]+0.8754*x[5]*x[11]*x[12]-0.4368*x[5]*x[11]*x[13]+0.1394*x[5]*x[11]*x[14]-0.9516*x[5]*x[11]*x[15]-0.0061*x[5]*x[12]*x[15]+0.5875*x[5]*x[13]*x[15]+0.8706*x[5]*x[14]*x[15]+0.1058*x[6]*x[7]*x[8]-0.0574*x[6]*x[7]*x[11]-0.3328*x[6]*x[7]*x[12]-0.5863*x[6]*x[7]*x[13]+0.8725*x[6]*x[7]*x[14]-0.7644*x[6]*x[8]*x[10]-0.8164*x[6]*x[8]*x[12]+0.7539*x[6]*x[8]*x[15]+0.6511*x[6]*x[9]*x[11]+0.3016*x[6]*x[9]*x[13]-0.0207*x[6]*x[9]*x[15]-0.3874*x[6]*x[10]*x[11]+0.3698*x[6]*x[10]*x[13]-0.6405*x[6]*x[10]*x[15]+0.0874*x[6]*x[11]*x[14]-0.4061*x[6]*x[12]*x[13]-0.933*x[6]*x[12]*x[14]+0.5286*x[6]*x[12]*x[15]-0.3832*x[6]*x[13]*x[14]-0.9505*x[7]*x[8]*x[11]+0.3913*x[7]*x[8]*x[12]-0.34*x[7]*x[9]*x[10]+0.2964*x[7]*x[9]*x[11]-0.5689*x[7]*x[10]*x[11]-0.5819*x[7]*x[10]*x[12]+0.2752*x[7]*x[10]*x[13]+0.5617*x[7]*x[10]*x[14]+0.5946*x[7]*x[10]*x[15]+0.2747*x[7]*x[11]*x[13]-0.5651*x[7]*x[11]*x[14]+0.7045*x[7]*x[12]*x[13]+0.5713*x[7]*x[12]*x[15]-0.9519*x[7]*x[13]*x[14]-0.6643*x[7]*x[14]*x[15]-0.6388*x[8]*x[9]*x[10]-0.6462*x[8]*x[9]*x[14]+0.1277*x[8]*x[9]*x[15]+0.3975*x[8]*x[10]*x[11]-0.6033*x[8]*x[10]*x[12]+0.7789*x[8]*x[10]*x[13]+0.331*x[8]*x[11]*x[13]-0.4249*x[8]*x[11]*x[14]-0.6047*x[8]*x[11]*x[15]-0.5614*x[8]*x[12]*x[15]-0.7728*x[8]*x[13]*x[14]-0.8073*x[9]*x[10]*x[11]+0.5506*x[9]*x[10]*x[12]+0.1189*x[9]*x[10]*x[13]+0.7868*x[9]*x[10]*x[14]-0.2582*x[9]*x[10]*x[15]-0.9713*x[9]*x[11]*x[13]-0.2652*x[9]*x[11]*x[15]-0.2337*x[9]*x[12]*x[13]-0.1905*x[9]*x[12]*x[14]-0.9228*x[9]*x[13]*x[14]-0.7224*x[9]*x[13]*x[15]+0.8041*x[10]*x[11]*x[13]-0.1951*x[10]*x[11]*x[14]-0.4061*x[10]*x[11]*x[15]+0.6614*x[10]*x[12]*x[13]-0.558*x[10]*x[12]*x[14]+0.1782*x[11]*x[12]*x[13]+0.6276*x[11]*x[12]*x[14]-0.5928*x[11]*x[12]*x[15]+0.5537*x[11]*x[13]*x[14]-0.4451*x[11]*x[13]*x[15]-0.8135*x[11]*x[14]*x[15]-0.1622*x[12]*x[13]*x[14])+obj == 0.0)

m = m 		 # model get returned when including this script. 
