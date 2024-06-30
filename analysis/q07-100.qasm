OPENQASM 3.0;
include "stdgates.inc";
gate rxx_4541058608(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.197061921383423) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate rzx_4510636064(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4510636112(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ecr _gate_q_0, _gate_q_1 {
  rzx_4510636064(pi/4) _gate_q_0, _gate_q_1;
  x _gate_q_0;
  rzx_4510636112(-pi/4) _gate_q_0, _gate_q_1;
}
gate cu1_4510419712(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/4) _gate_q_1;
}
gate csx _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cu1_4510419712(pi/2) _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4541063600(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.35687831248870766) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4541065568(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.4907934816490061) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate ryy_4541071232(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.26357322299850444) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4541064512(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.888161078687494) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4541059136(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.9254585654104016) _gate_q_0;
  u1(0.5157391454616717) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.0758314249221472, 0, -0.9254585654104016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.0758314249221472, 0.4097194199487299, 0) _gate_q_1;
}
gate rzx_4541064704(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.197993002026129) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4541067248(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.994282945068131) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rcccx _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  u2(0, pi) _gate_q_3;
  u1(pi/4) _gate_q_3;
  cx _gate_q_2, _gate_q_3;
  u1(-pi/4) _gate_q_3;
  u2(0, pi) _gate_q_3;
  cx _gate_q_0, _gate_q_3;
  u1(pi/4) _gate_q_3;
  cx _gate_q_1, _gate_q_3;
  u1(-pi/4) _gate_q_3;
  cx _gate_q_0, _gate_q_3;
  u1(pi/4) _gate_q_3;
  cx _gate_q_1, _gate_q_3;
  u1(-pi/4) _gate_q_3;
  u2(0, pi) _gate_q_3;
  u1(pi/4) _gate_q_3;
  cx _gate_q_2, _gate_q_3;
  u1(-pi/4) _gate_q_3;
  u2(0, pi) _gate_q_3;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate xx_plus_yy_4538410640(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.3467369501909636) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.353019374166441) _gate_q_1;
  ry(-1.353019374166441) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.3467369501909636) _gate_q_0;
}
gate xx_minus_yy_4538407952(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.172837732579641) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.7219580115580895) _gate_q_0;
  ry(-2.7219580115580895) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.172837732579641) _gate_q_1;
}
gate r_4538403200(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.011307554731395, -1.4995706811023288, 1.4995706811023288) _gate_q_0;
}
gate rzz_4538403296(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.7684220221888787) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4538403776(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8624372256453763) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4538407184(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.4745651789272598) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4538402288(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.116619993003134) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.526320947911065) _gate_q_1;
  ry(-2.526320947911065) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.116619993003134) _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate xx_minus_yy_4538401904(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.6884387675454124) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(3.103774395910811) _gate_q_0;
  ry(-3.103774395910811) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.6884387675454124) _gate_q_1;
}
gate r_4538404592(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.319730307874193, -0.609507617315648, 0.609507617315648) _gate_q_0;
}
gate xx_plus_yy_4538403440(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.903150705025661) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.3868912377285398) _gate_q_1;
  ry(-1.3868912377285398) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.903150705025661) _gate_q_0;
}
gate rxx_4538402336(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.316379773243663) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4538405408(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.655254637907457, 3.094052244802328, -3.094052244802328) _gate_q_0;
}
gate cu3_4538403344(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.0025062054145544) _gate_q_0;
  u1(0.4776694224963894) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1237122617860156, 0, -1.0025062054145544) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1237122617860156, 0.5248367829181649, 0) _gate_q_1;
}
gate cu3_4538401664(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.8580920059138113) _gate_q_0;
  u1(0.9132263601805666) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.3473942001963672, 0, -1.8580920059138113) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.3473942001963672, 0.9448656457332447, 0) _gate_q_1;
}
gate xx_minus_yy_4538400848(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.5001134139423185) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.2849511781406122) _gate_q_0;
  ry(-1.2849511781406122) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.5001134139423185) _gate_q_1;
}
gate r_4538404256(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.9760416457705695, -0.3383050238178167, 0.3383050238178167) _gate_q_0;
}
gate cu1_4538405744(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.8852281065693927) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.8852281065693927) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.8852281065693927) _gate_q_1;
}
gate rzx_4538401088(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.237615216282289) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4538403392(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.33471389876368) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.9835207338271639) _gate_q_0;
  ry(-1.9835207338271639) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.33471389876368) _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate xx_minus_yy_4538404496(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.1484641516072754) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.014027331866935992) _gate_q_0;
  ry(-0.014027331866935992) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.1484641516072754) _gate_q_1;
}
gate cu1_4538401040(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.9176132842762375) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.9176132842762375) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.9176132842762375) _gate_q_1;
}
gate rccx _gate_q_0, _gate_q_1, _gate_q_2 {
  u2(0, pi) _gate_q_2;
  u1(pi/4) _gate_q_2;
  cx _gate_q_1, _gate_q_2;
  u1(-pi/4) _gate_q_2;
  cx _gate_q_0, _gate_q_2;
  u1(pi/4) _gate_q_2;
  cx _gate_q_1, _gate_q_2;
  u1(-pi/4) _gate_q_2;
  u2(0, pi) _gate_q_2;
}
gate xx_minus_yy_4538411792(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.764935101833631) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.721375135772261) _gate_q_0;
  ry(-2.721375135772261) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.764935101833631) _gate_q_1;
}
gate rzx_4538405360(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8682893975232369) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4538402864(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.881081878152381) _gate_q_0;
  u1(-1.2534905584682294) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.791924383975308, 0, -3.881081878152381) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.791924383975308, 5.13457243662061, 0) _gate_q_1;
}
gate xx_plus_yy_4538413280(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.698030461859118) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-3.0224742385466783) _gate_q_1;
  ry(-3.0224742385466783) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.698030461859118) _gate_q_0;
}
gate xx_plus_yy_4538406848(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.591860748699165) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.9106581905546882) _gate_q_1;
  ry(-0.9106581905546882) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.591860748699165) _gate_q_0;
}
gate rzz_4538405072(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.09874716517220795) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4538407520(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.842721779899874) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4538407280(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.571589790025152) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4538403872(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.0942989455021905) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4538402432(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.626677440992156) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.6648158499570092) _gate_q_1;
  ry(-0.6648158499570092) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.626677440992156) _gate_q_0;
}
gate cu1_4538402384(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.03271691942923986) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.03271691942923986) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.03271691942923986) _gate_q_1;
}
gate r_4538407472(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.644842117268843, -0.06335305016665416, 0.06335305016665416) _gate_q_0;
}
gate rzz_4538403056(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.830686106118682) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4538402912(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.6439818869951766) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.7562864402567753) _gate_q_1;
  ry(-0.7562864402567753) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.6439818869951766) _gate_q_0;
}
gate xx_minus_yy_4538409392(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.361819204940429) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.0193988522859134) _gate_q_0;
  ry(-1.0193988522859134) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.361819204940429) _gate_q_1;
}
gate r_4538411216(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.657623640834316, 2.1482612045615563, -2.1482612045615563) _gate_q_0;
}
gate rxx_4538403824(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.9604060230399005) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4538413520(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.825219895551349) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4538403104(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.6428797990880355) _gate_q_0;
  u1(1.0295006932616346) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.3582628137928908, 0, -3.6428797990880355) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.3582628137928908, 2.6133791058264007, 0) _gate_q_1;
}
gate r_4538411168(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.399473336652684, 2.0922613272760877, -2.0922613272760877) _gate_q_0;
}
gate xx_minus_yy_4538408240(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.798551088074128) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.314125089037636) _gate_q_0;
  ry(-0.314125089037636) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.798551088074128) _gate_q_1;
}
gate rzz_4538412704(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.164511578232917) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4538416016(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.22111290219641092) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4538411552(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.602502519957295) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4538413088(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.3344884156644694) _gate_q_0;
  u1(-2.0119678212395034) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.1734448989938913, 0, -2.3344884156644694) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.1734448989938913, 4.346456236903973, 0) _gate_q_1;
}
gate cu3_4538414960(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.4843004569659877) _gate_q_0;
  u1(1.1715888844585212) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.47711152571995846, 0, -1.4843004569659877) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.47711152571995846, 0.3127115725074666, 0) _gate_q_1;
}
gate rzz_4538414000(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.261813404199625) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4538401232(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.078589141196638) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.929825120358613) _gate_q_1;
  ry(-0.929825120358613) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.078589141196638) _gate_q_0;
}
gate rzx_4538416832(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.630880055427803) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4538416304(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.9554735688071605) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.4889529231293952) _gate_q_1;
  ry(-0.4889529231293952) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.9554735688071605) _gate_q_0;
}
gate ryy_4538415008(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.23578646475146503) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4538416736(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.5282250319857766) _gate_q_0;
  u1(0.4312412704342474) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.4994698244148612, 0, -2.5282250319857766) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.4994698244148612, 2.096983761551529, 0) _gate_q_1;
}
gate rzz_4538414720(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.479302671573798) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4538414192(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.659244260462008) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4538413136(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.9153761370100773, 3.0007107221662936, -3.0007107221662936) _gate_q_0;
}
gate r_4538412752(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.8821957231628428, 0.5662208235326585, -0.5662208235326585) _gate_q_0;
}
gate cu1_4538415296(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.3811691600275764) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.3811691600275764) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.3811691600275764) _gate_q_1;
}
gate r_4538406944(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.9473845731964414, 0.4113210778233276, -0.4113210778233276) _gate_q_0;
}
gate xx_minus_yy_4538414432(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.175154747161884) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.640636346689013) _gate_q_0;
  ry(-1.640636346689013) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.175154747161884) _gate_q_1;
}
gate xx_plus_yy_4538416976(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(6.250942684985572) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.8111855978142841) _gate_q_1;
  ry(-1.8111855978142841) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-6.250942684985572) _gate_q_0;
}
gate ryy_4538409104(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1543646639175813) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4538414288(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.086271442458987) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4538415344(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.44319336569461465, -0.8466671412001869, 0.8466671412001869) _gate_q_0;
}
gate ryy_4538417120(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.5836777630110026) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538411696(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.088779700421266, 4.284505719209554, -4.284505719209554) _gate_q_0;
}
gate cu1_4538410832(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.8695472326236517) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.8695472326236517) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.8695472326236517) _gate_q_1;
}
gate xx_plus_yy_4538409152(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.2876838993517894) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.419053617865613) _gate_q_1;
  ry(-2.419053617865613) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.2876838993517894) _gate_q_0;
}
gate r_4538411360(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.3420483080967753, 2.7356204872542405, -2.7356204872542405) _gate_q_0;
}
gate rzx_4538417024(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.8207230795602878) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4538414240(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.5075233288549468, 1.6463769969770699, -1.6463769969770699) _gate_q_0;
}
gate rxx_4538410112(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.912606235805764) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4538408144(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9425878182267529) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4538409728(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.09740930343895503, -0.6013517510106846, 0.6013517510106846) _gate_q_0;
}
gate rzz_4538412224(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.327830556980648) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4538408432(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.2281433477602706) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4538413664(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.029063841301904) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.5858727895653755) _gate_q_0;
  ry(-2.5858727895653755) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.029063841301904) _gate_q_1;
}
qubit[7] q;
u2(2.7290018820398854, 5.823616543875598) q[2];
U(0.09511979404581304, 5.5088782122558975, 3.1560418889449786) q[4];
rxx_4541058608(4.197061921383423) q[5], q[0];
cp(0.72778364471644) q[3], q[6];
id q[1];
csdg q[2], q[3];
ccx q[4], q[1], q[5];
ecr q[0], q[6];
crz(1.0283557392686387) q[2], q[0];
t q[5];
csx q[1], q[6];
h q[4];
t q[3];
ccx q[1], q[4], q[5];
h q[3];
cry(4.591045116098689) q[2], q[0];
p(1.3651748819046643) q[6];
u1(2.7843883944993335) q[2];
crx(2.413844510945565) q[0], q[4];
cry(5.676321757328809) q[5], q[6];
t q[1];
x q[3];
crx(3.2371443802142) q[4], q[0];
ry(1.7981164161815275) q[3];
id q[1];
rzx_4541063600(0.35687831248870766) q[5], q[2];
u2(1.6354346812790703, 2.138314815346776) q[6];
rzz_4541065568(0.4907934816490061) q[6], q[0];
t q[3];
sxdg q[1];
t q[5];
csdg q[2], q[4];
cry(0.5571115809427095) q[2], q[1];
u3(3.0003641781252424, 1.5313216760533275, 0.1360355999144499) q[6];
ryy_4541071232(0.26357322299850444) q[0], q[5];
rzx_4541064512(5.888161078687494) q[3], q[4];
u2(3.783356510515396, 1.3609187236512112) q[0];
u1(3.97594623439878) q[5];
cu3_4541059136(4.1516628498442945, 0.4097194199487299, 1.4411977108720733) q[2], q[4];
cz q[6], q[1];
p(5.2486929394203905) q[3];
h q[5];
x q[6];
rzx_4541064704(2.197993002026129) q[1], q[0];
tdg q[3];
y q[4];
tdg q[2];
ryy_4541067248(5.994282945068131) q[5], q[4];
u1(2.915575164568886) q[1];
ecr q[2], q[6];
cx q[3], q[0];
rcccx q[6], q[5], q[4], q[3];
iswap q[1], q[0];
sdg q[2];
sx q[5];
xx_plus_yy_4538410640(2.706038748332882, 2.3467369501909636) q[1], q[6];
cy q[3], q[0];
crz(3.3556068470827163) q[2], q[4];
xx_minus_yy_4538407952(5.443916023116179, 4.172837732579641) q[5], q[2];
z q[3];
rx(4.753141135068116) q[6];
cswap q[0], q[4], q[1];
crz(5.712405658485964) q[1], q[5];
r_4538403200(6.011307554731395, 0.0712256456925678) q[4];
u2(5.817058191001535, 5.9589917030547745) q[3];
s q[2];
swap q[6], q[0];
ecr q[0], q[3];
ch q[4], q[2];
csx q[1], q[6];
sx q[5];
ch q[6], q[1];
ecr q[0], q[3];
sx q[5];
sxdg q[4];
sdg q[2];
U(0.2413076905166656, 3.509950641843866, 6.065692225649903) q[5];
rzz_4538403296(0.7684220221888787) q[3], q[0];
ryy_4538403776(0.8624372256453763) q[1], q[6];
cp(1.406118496966937) q[4], q[2];
swap q[6], q[1];
crz(3.4108439043532983) q[0], q[2];
ry(4.484573306977278) q[3];
rzz_4538407184(1.4745651789272598) q[5], q[4];
sx q[0];
cry(5.610454203682316) q[6], q[2];
id q[4];
xx_plus_yy_4538402288(5.05264189582213, 5.116619993003134) q[1], q[5];
id q[3];
h q[4];
ccz q[0], q[2], q[6];
z q[5];
cu(3.342285879430889, 5.2315722375476685, 2.3055402433059466, 5.35422754601305) q[1], q[3];
ccx q[3], q[6], q[5];
xx_minus_yy_4538401904(6.207548791821622, 1.6884387675454124) q[0], q[2];
rz(1.6255859274319686) q[4];
r_4538404592(3.319730307874193, 0.9612887094792486) q[1];
cp(3.52778881563882) q[5], q[0];
xx_plus_yy_4538403440(2.7737824754570797, 4.903150705025661) q[2], q[4];
cp(5.723436470503646) q[3], q[1];
rz(5.3739153145438765) q[6];
rxx_4538402336(5.316379773243663) q[5], q[3];
u1(1.1023298048054) q[6];
r_4538405408(2.655254637907457, 4.664848571597225) q[2];
u1(2.6311044579854137) q[1];
cu3_4538403344(2.247424523572031, 0.5248367829181649, 1.4801756279109437) q[0], q[4];
cx q[4], q[1];
cp(0.24228923586062973) q[6], q[0];
cp(3.903264374964159) q[3], q[5];
ry(6.116405256921917) q[2];
cp(5.443855830905156) q[3], q[2];
ccx q[1], q[0], q[6];
x q[5];
h q[4];
u2(0.9477531814438412, 1.7259759588576955) q[1];
sdg q[3];
ccz q[5], q[0], q[2];
y q[6];
rx(5.9575953785098354) q[4];
z q[6];
rz(1.8527434383602603) q[2];
cy q[5], q[4];
cswap q[1], q[3], q[0];
cu3_4538401664(2.6947884003927345, 0.9448656457332447, 2.771318366094378) q[0], q[4];
cz q[5], q[2];
crx(5.654446694450743) q[6], q[3];
sdg q[1];
xx_minus_yy_4538400848(2.5699023562812244, 5.5001134139423185) q[1], q[5];
r_4538404256(0.9760416457705695, 1.2324913029770799) q[3];
csdg q[2], q[4];
sdg q[6];
rz(1.0572451531320628) q[0];
ccz q[1], q[5], q[3];
cu1_4538405744(1.7704562131387853) q[0], q[2];
sx q[4];
z q[6];
iswap q[6], q[1];
rzx_4538401088(3.237615216282289) q[0], q[5];
x q[3];
cry(5.621514415589401) q[2], q[4];
xx_minus_yy_4538403392(3.9670414676543277, 5.33471389876368) q[5], q[1];
ccz q[4], q[0], q[6];
cs q[2], q[3];
cx q[4], q[6];
cp(0.6008762667806244) q[1], q[3];
rz(0.6043675673729538) q[0];
u3(5.849942259768491, 3.3831065709106327, 5.155798559156066) q[5];
p(5.5526370793481235) q[2];
p(3.5766492699574215) q[6];
y q[1];
p(5.027037850129625) q[5];
rz(5.698749399852691) q[4];
cswap q[2], q[0], q[3];
sxdg q[2];
p(1.864736040413193) q[0];
u1(5.241652514083945) q[1];
U(6.008312326409501, 5.427725665538431, 0.6874077697770228) q[6];
dcx q[4], q[3];
sdg q[5];
cry(1.3821674568536007) q[5], q[2];
t q[6];
ry(6.0591252632478465) q[0];
sx q[4];
h q[1];
ry(1.2388469429605717) q[3];
csdg q[1], q[4];
ry(3.6831916001255633) q[5];
xx_minus_yy_4538404496(0.028054663733871985, 0.1484641516072754) q[6], q[2];
cu1_4538401040(5.835226568552475) q[0], q[3];
rccx q[6], q[5], q[3];
csdg q[4], q[0];
xx_minus_yy_4538411792(5.442750271544522, 4.764935101833631) q[2], q[1];
cz q[5], q[0];
rzx_4538405360(0.8682893975232369) q[6], q[1];
y q[2];
rz(5.402552383818837) q[4];
rz(4.99661236053083) q[3];
cu3_4538402864(3.583848767950616, 5.13457243662061, 2.6275913196841514) q[2], q[0];
x q[3];
xx_plus_yy_4538413280(6.044948477093357, 5.698030461859118) q[1], q[4];
xx_plus_yy_4538406848(1.8213163811093764, 4.591860748699165) q[6], q[5];
rcccx q[4], q[1], q[2], q[0];
rzz_4538405072(0.09874716517220795) q[5], q[3];
id q[6];
s q[3];
y q[6];
rzx_4538407520(5.842721779899874) q[5], q[1];
id q[2];
rx(2.9276919989168597) q[4];
s q[0];
csx q[3], q[4];
y q[5];
rzz_4538407280(5.571589790025152) q[6], q[2];
ch q[1], q[0];
s q[0];
rz(0.1765326651536183) q[5];
ryy_4538403872(3.0942989455021905) q[3], q[1];
sdg q[6];
id q[4];
ry(1.6705710032662269) q[2];
xx_plus_yy_4538402432(1.3296316999140183, 4.626677440992156) q[5], q[6];
tdg q[3];
cu1_4538402384(0.06543383885847973) q[0], q[2];
y q[4];
tdg q[1];
ecr q[3], q[4];
cu(0.08835104857121034, 0.3530188554136196, 2.2081575171828267, 2.9339585085460285) q[6], q[5];
t q[2];
rx(2.931612129857629) q[0];
r_4538407472(5.644842117268843, 1.5074432766282424) q[1];
rzz_4538403056(2.830686106118682) q[6], q[2];
id q[3];
rcccx q[4], q[0], q[5], q[1];
u1(4.162779057822345) q[0];
xx_plus_yy_4538402912(1.5125728805135505, 2.6439818869951766) q[3], q[6];
iswap q[4], q[2];
xx_minus_yy_4538409392(2.038797704571827, 5.361819204940429) q[1], q[5];
h q[6];
tdg q[0];
sdg q[2];
ccx q[5], q[4], q[3];
p(1.6750383992702187) q[1];
sdg q[5];
r_4538411216(1.657623640834316, 3.719057531356453) q[0];
rxx_4538403824(5.9604060230399005) q[1], q[3];
t q[4];
rxx_4538413520(4.825219895551349) q[6], q[2];
sx q[4];
csdg q[2], q[1];
cs q[5], q[6];
x q[0];
U(4.432004617095127, 0.9646372957086135, 1.1287041856304905) q[3];
cs q[0], q[3];
sx q[2];
cu(1.991893334199038, 5.466508182706432, 2.5273990038991516, 3.5670656906913076) q[6], q[4];
y q[5];
u2(5.3763723060967195, 2.2791798374238463) q[1];
U(0.22380986529121932, 3.754280945678648, 4.218859171438681) q[5];
cs q[3], q[6];
p(2.1782453995288056) q[1];
cy q[2], q[0];
rz(6.034294180895958) q[4];
cry(2.2970978282511245) q[3], q[4];
z q[1];
cu3_4538403104(0.7165256275857816, 2.6133791058264007, 4.67238049234967) q[2], q[0];
sdg q[5];
sxdg q[6];
y q[4];
cy q[1], q[2];
x q[0];
h q[6];
tdg q[3];
sxdg q[5];
sx q[0];
r_4538411168(3.399473336652684, 3.6630576540709843) q[3];
id q[4];
z q[1];
tdg q[5];
xx_minus_yy_4538408240(0.628250178075272, 3.798551088074128) q[2], q[6];
cy q[5], q[6];
rzz_4538412704(5.164511578232917) q[2], q[3];
swap q[0], q[1];
tdg q[4];
crx(6.0231498512776716) q[6], q[1];
rxx_4538416016(0.22111290219641092) q[5], q[0];
U(3.84532172659973, 0.3806618999236356, 5.194929235570564) q[2];
rzz_4538411552(5.602502519957295) q[3], q[4];
cry(0.01070599361270308) q[0], q[4];
cu(3.347216315952928, 2.3029119021041136, 1.9111775929438344, 0.16038521031967756) q[1], q[5];
u2(6.276880711617633, 0.9740164711229414) q[6];
cu3_4538413088(4.3468897979877825, 4.346456236903973, 0.32252059442496595) q[3], q[2];
cp(4.060037477659257) q[6], q[3];
crx(4.61342264203466) q[4], q[0];
u1(3.8533573838129342) q[5];
y q[1];
sx q[2];
rx(3.5267910282012807) q[0];
cx q[3], q[2];
y q[6];
y q[1];
h q[4];
rx(3.5604120063816906) q[5];
cs q[5], q[4];
y q[0];
U(2.798830268343792, 1.473812620326457, 4.019343579460728) q[2];
cx q[6], q[3];
id q[1];
cu3_4538414960(0.9542230514399169, 0.3127115725074666, 2.655889341424509) q[4], q[3];
h q[2];
rcccx q[0], q[1], q[6], q[5];
ccz q[2], q[3], q[1];
u1(5.815731338807659) q[5];
sx q[4];
tdg q[6];
u3(1.1254496327885062, 3.0639843001539866, 1.5134915851522657) q[0];
sx q[6];
rzz_4538414000(5.261813404199625) q[1], q[4];
ry(0.23713211349741325) q[2];
ccz q[3], q[0], q[5];
dcx q[4], q[1];
xx_plus_yy_4538401232(1.859650240717226, 4.078589141196638) q[3], q[0];
rzx_4538416832(2.630880055427803) q[6], q[2];
z q[5];
xx_plus_yy_4538416304(0.9779058462587904, 2.9554735688071605) q[0], q[3];
U(1.1317303218516201, 5.4543052463190405, 4.922555313201925) q[4];
ccx q[5], q[1], q[2];
y q[6];
u2(5.492795701742394, 6.15115506079201) q[4];
ryy_4538415008(0.23578646475146503) q[1], q[3];
sx q[5];
t q[2];
ry(3.3796544125993884) q[0];
ry(2.4808514691608403) q[6];
ch q[2], q[1];
cp(3.3132120356816985) q[0], q[4];
sx q[5];
u1(0.05776374501998982) q[3];
h q[6];
cswap q[4], q[5], q[2];
sx q[1];
u2(3.9829159264513776, 0.1304918215504032) q[3];
dcx q[6], q[0];
cu(3.8314914063819887, 3.889327145609037, 2.1799758434173278, 0.7997073451170145) q[2], q[5];
tdg q[3];
cu3_4538416736(0.9989396488297224, 2.096983761551529, 2.959466302420024) q[0], q[1];
rz(1.3773235257753211) q[4];
tdg q[6];
cx q[6], q[5];
rzz_4538414720(2.479302671573798) q[3], q[4];
cp(1.5009458255957668) q[0], q[2];
u3(5.606786462645795, 5.75131443667411, 6.192355846555671) q[1];
cry(2.124189922909731) q[3], q[4];
rzz_4538414192(4.659244260462008) q[2], q[5];
u1(0.07595191489459477) q[0];
rx(0.5169956294975774) q[6];
p(5.601971599030032) q[1];
r_4538413136(2.9153761370100773, 4.57150704896119) q[1];
swap q[0], q[4];
cp(3.2445474082895953) q[6], q[2];
cp(2.5000261008639018) q[3], q[5];
r_4538412752(0.8821957231628428, 2.137017150327555) q[2];
cu1_4538415296(2.762338320055153) q[6], q[3];
cy q[4], q[0];
rz(1.6284288622795935) q[1];
t q[5];
cy q[5], q[4];
csx q[6], q[0];
ry(2.6977037367405834) q[3];
cry(4.044161443810745) q[2], q[1];
rx(5.22387569391973) q[0];
rccx q[5], q[1], q[2];
csdg q[3], q[6];
u2(2.932450172618441, 4.901648574374315) q[4];
ecr q[4], q[3];
u1(1.5465863204934365) q[6];
sdg q[0];
ccx q[5], q[1], q[2];
r_4538406944(3.9473845731964414, 1.9821174046182242) q[2];
U(2.247606146077589, 3.9644260234864643, 0.6423239642729609) q[1];
y q[0];
xx_minus_yy_4538414432(3.281272693378026, 4.175154747161884) q[6], q[4];
rz(4.93377807166968) q[3];
U(1.0534738695755732, 2.2398899511198658, 1.5370105114169905) q[5];
xx_plus_yy_4538416976(3.6223711956285682, 6.250942684985572) q[5], q[1];
ry(2.7792369247153377) q[0];
cp(0.6638548913180514) q[6], q[3];
sxdg q[2];
y q[4];
p(5.227679295565122) q[3];
u3(3.392190220086217, 3.5423779015617263, 3.0884311648072207) q[4];
x q[2];
ryy_4538409104(1.1543646639175813) q[5], q[1];
rz(0.7572311301368295) q[6];
t q[0];
cz q[6], q[2];
csx q[4], q[1];
cz q[5], q[3];
sx q[0];
rzz_4538414288(3.086271442458987) q[3], q[1];
r_4538415344(0.44319336569461465, 0.7241291855947096) q[4];
ryy_4538417120(3.5836777630110026) q[2], q[5];
r_4538411696(1.088779700421266, 5.855302046004451) q[0];
U(0.7015171163135332, 4.403357002480698, 2.976040185757245) q[6];
cu1_4538410832(5.7390944652473035) q[1], q[6];
xx_plus_yy_4538409152(4.838107235731226, 2.2876838993517894) q[3], q[2];
ccz q[4], q[0], q[5];
u2(2.4659749572912255, 1.969457113152908) q[3];
cz q[6], q[1];
rz(4.175088518822505) q[5];
z q[2];
sxdg q[0];
U(3.067210210733693, 1.447572125225295, 0.43359102793289483) q[4];
cy q[4], q[5];
iswap q[1], q[6];
crx(1.26937548804062) q[2], q[3];
r_4538411360(0.3420483080967753, 4.306416814049137) q[0];
cu(5.250532783619967, 1.994877106003681, 2.0595345831684475, 5.54421279345771) q[4], q[5];
rz(3.327326856333718) q[1];
dcx q[6], q[3];
cp(4.114024012097438) q[2], q[0];
rcccx q[4], q[3], q[5], q[6];
sx q[2];
tdg q[1];
u3(4.216945505046213, 1.3946924997081578, 5.436150058698175) q[0];
y q[1];
rzx_4538417024(1.8207230795602878) q[2], q[4];
t q[3];
cry(5.142352816293313) q[6], q[5];
z q[0];
sdg q[5];
id q[1];
u2(4.1092458644743, 4.545011673955652) q[4];
rcccx q[6], q[2], q[0], q[3];
rcccx q[4], q[2], q[3], q[6];
u1(4.457099347066501) q[0];
z q[1];
r_4538414240(1.5075233288549468, 3.2171733237719664) q[5];
u2(4.1376653963388375, 4.308684410960268) q[2];
cz q[1], q[0];
y q[6];
ccx q[4], q[3], q[5];
rcccx q[1], q[3], q[4], q[0];
tdg q[6];
sx q[5];
ry(1.0621591903906238) q[2];
ccx q[5], q[4], q[3];
sx q[2];
t q[6];
z q[0];
y q[1];
rxx_4538410112(3.912606235805764) q[3], q[1];
crx(1.1699283545448822) q[0], q[5];
rxx_4538408144(1.9425878182267529) q[2], q[6];
r_4538409728(0.09740930343895503, 0.969444575784212) q[4];
cz q[4], q[1];
U(2.297420192786984, 5.233272924339427, 1.7624733970550879) q[6];
s q[5];
rzz_4538412224(3.327830556980648) q[2], q[0];
h q[3];
csx q[5], q[0];
ryy_4538408432(3.2281433477602706) q[3], q[4];
xx_minus_yy_4538413664(5.171745579130751, 5.029063841301904) q[2], q[1];
t q[6];
cx q[4], q[6];
ry(3.3919447268747067) q[1];
csdg q[2], q[3];
p(1.5875546988082305) q[0];
sxdg q[5];
csx q[6], q[4];
rccx q[0], q[3], q[1];
cz q[5], q[2];
