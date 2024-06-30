OPENQASM 3.0;
include "stdgates.inc";
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate r_4537560496(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.86453495574519, -0.5866962566498386, 0.5866962566498386) _gate_q_0;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4537560640(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.606852977178754) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.353831014639326) _gate_q_1;
  ry(-1.353831014639326) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.606852977178754) _gate_q_0;
}
gate rzx_4537560784(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.408151312307377) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4537560976(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.7923588101871872, 3.191982215580155, -3.191982215580155) _gate_q_0;
}
gate xx_plus_yy_4537560544(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.8266594002520393) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.295937381860761) _gate_q_1;
  ry(-2.295937381860761) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.8266594002520393) _gate_q_0;
}
gate r_4537559728(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.038903958916498, -0.2735909320630159, 0.2735909320630159) _gate_q_0;
}
gate cu1_4537561264(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.1453627820903456) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.1453627820903456) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.1453627820903456) _gate_q_1;
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
gate ryy_4537561456(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6863839708810685) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4537561312(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.224970704750406, 3.36962983072495, -3.36962983072495) _gate_q_0;
}
gate rzx_4537561936(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.9118409560884846) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate xx_plus_yy_4537562032(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.007118866985289) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.83132730907269) _gate_q_1;
  ry(-0.83132730907269) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.007118866985289) _gate_q_0;
}
gate rxx_4537561024(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.340018380901197) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate rzx_4537559968(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.151533217509343) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4537562704(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.3128136530612697) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate xx_minus_yy_4537562896(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.990178423132243) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.9326041397308376) _gate_q_0;
  ry(-2.9326041397308376) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.990178423132243) _gate_q_1;
}
gate r_4537562512(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.4107417079886497, 0.7977551928216688, -0.7977551928216688) _gate_q_0;
}
gate cu3_4537562464(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.089156310829841) _gate_q_0;
  u1(-0.1840383110889685) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.3326235087295067, 0, -4.089156310829841) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.3326235087295067, 4.27319462191881, 0) _gate_q_1;
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
gate cu3_4537563088(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.484114067645804) _gate_q_0;
  u1(-0.9425948307184453) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.2698866936986395, 0, -1.484114067645804) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.2698866936986395, 2.4267088983642493, 0) _gate_q_1;
}
gate rzx_4537563136(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.201135922584709) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate xx_plus_yy_4537563904(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.513920794477436) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.34787423636147186) _gate_q_1;
  ry(-0.34787423636147186) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.513920794477436) _gate_q_0;
}
gate r_4537564144(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.1018281719719367, 3.3304078283130183, -3.3304078283130183) _gate_q_0;
}
gate cu3_4537564288(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.9692391390236295) _gate_q_0;
  u1(0.7273657541946394) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.5565822282136197, 0, -2.9692391390236295) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.5565822282136197, 2.24187338482899, 0) _gate_q_1;
}
gate xx_plus_yy_4537564480(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.242894827418329) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.5900953896338) _gate_q_1;
  ry(-1.5900953896338) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.242894827418329) _gate_q_0;
}
gate r_4537563808(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.882142058340606, 4.040394687715871, -4.040394687715871) _gate_q_0;
}
gate cu3_4537565104(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.443426374983816) _gate_q_0;
  u1(-0.9360342056224233) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.3470472694186297, 0, -1.443426374983816) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.3470472694186297, 2.3794605806062394, 0) _gate_q_1;
}
gate rzx_4537564768(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.4159324697699798) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4537564960(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.004378422950513) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.101069257114332) _gate_q_0;
  ry(-1.101069257114332) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.004378422950513) _gate_q_1;
}
gate rzx_4510814464(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.360849750471747) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4513792944(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.9541588330513837) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate cu3_4533908496(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.2442274594588865) _gate_q_0;
  u1(1.6735529822294757) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.3951245249993514, 0, -2.2442274594588865) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.3951245249993514, 0.5706744772294106, 0) _gate_q_1;
}
gate rzx_4533908400(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.989909544279267) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4536762096(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.3084898271582155) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.642530098764164) _gate_q_1;
  ry(-0.642530098764164) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.3084898271582155) _gate_q_0;
}
gate cu1_4510278928(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
}
gate cu1_4510279168(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(-pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
}
gate cu1_4489280976(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
}
gate cu1_4510419856(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(-pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
}
gate cu1_4510420000(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
}
gate cu1_4510420096(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(-pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
}
gate cu1_4510420192(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
}
gate c3sx _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  h _gate_q_3;
  cu1_4510278928(pi/8) _gate_q_0, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_3;
  cu1_4510279168(-pi/8) _gate_q_1, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_3;
  cu1_4489280976(pi/8) _gate_q_1, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_1, _gate_q_2;
  h _gate_q_3;
  cu1_4510419856(-pi/8) _gate_q_2, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_0, _gate_q_2;
  h _gate_q_3;
  cu1_4510420000(pi/8) _gate_q_2, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_1, _gate_q_2;
  h _gate_q_3;
  cu1_4510420096(-pi/8) _gate_q_2, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_0, _gate_q_2;
  h _gate_q_3;
  cu1_4510420192(pi/8) _gate_q_2, _gate_q_3;
  h _gate_q_3;
}
gate xx_plus_yy_4536748176(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.091029300021905) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.654929319873614) _gate_q_1;
  ry(-1.654929319873614) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.091029300021905) _gate_q_0;
}
gate xx_minus_yy_4536753984(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.406018778661383) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.5518453073574328) _gate_q_0;
  ry(-1.5518453073574328) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.406018778661383) _gate_q_1;
}
gate xx_minus_yy_4536748080(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.1595917561019564) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.657497605179062) _gate_q_0;
  ry(-0.657497605179062) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.1595917561019564) _gate_q_1;
}
gate cu3_4536758640(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.5078886104905322) _gate_q_0;
  u1(-1.1682824265267273) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.6076975767311263, 0, -2.5078886104905322) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.6076975767311263, 3.6761710370172596, 0) _gate_q_1;
}
gate xx_minus_yy_4536748944(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.13613105465845843) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.6634529696178624) _gate_q_0;
  ry(-2.6634529696178624) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.13613105465845843) _gate_q_1;
}
gate ryy_4536748752(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.121714933742065) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4536750864(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.2318517180878485) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.7471752576179524) _gate_q_0;
  ry(-0.7471752576179524) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.2318517180878485) _gate_q_1;
}
gate xx_plus_yy_4536747120(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.534263006112591) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.5364827103888612) _gate_q_1;
  ry(-0.5364827103888612) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.534263006112591) _gate_q_0;
}
gate xx_minus_yy_4536746928(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.6297334028374134) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.4106182077689333) _gate_q_0;
  ry(-1.4106182077689333) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.6297334028374134) _gate_q_1;
}
gate rzx_4536746880(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.3181934232864303) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4536754320(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.729600396705027, 2.3595697825509814, -2.3595697825509814) _gate_q_0;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate r_4536756288(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.605441645651992, -0.1797799568372267, 0.1797799568372267) _gate_q_0;
}
gate cu1_4536754848(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.4594555753970493) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.4594555753970493) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.4594555753970493) _gate_q_1;
}
gate rzx_4536759360(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.823583315149478) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4536756048(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.207619377037835) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
qubit[5] q;
csdg q[1], q[0];
y q[4];
z q[3];
r_4537560496(4.86453495574519, 0.984100070145058) q[2];
xx_plus_yy_4537560640(2.707662029278652, 2.606852977178754) q[0], q[1];
rzx_4537560784(4.408151312307377) q[4], q[3];
t q[2];
ccx q[3], q[2], q[0];
r_4537560976(3.7923588101871872, 4.7627785423750515) q[1];
t q[4];
id q[4];
xx_plus_yy_4537560544(4.591874763721522, 2.8266594002520393) q[2], q[0];
u1(2.293161441129603) q[1];
r_4537559728(3.038903958916498, 1.2972053947318807) q[3];
crz(4.57825615783717) q[0], q[2];
swap q[1], q[4];
h q[3];
crx(0.7951840391321834) q[4], q[3];
z q[2];
cu1_4537561264(2.290725564180691) q[1], q[0];
ecr q[3], q[2];
u3(1.1506006647116396, 0.6318262522664825, 5.969762633033799) q[1];
ryy_4537561456(0.6863839708810685) q[4], q[0];
u1(0.907198348867902) q[1];
r_4537561312(4.224970704750406, 4.9404261575198465) q[3];
sx q[4];
p(3.5134439346297617) q[2];
ry(1.9037226404350558) q[0];
rzx_4537561936(2.9118409560884846) q[3], q[1];
sx q[4];
p(2.4668953686002064) q[0];
x q[2];
U(1.6562203474619068, 6.177219969589447, 0.42325150377622467) q[1];
cs q[2], q[0];
id q[4];
ry(3.5452687666676947) q[3];
x q[1];
cs q[4], q[0];
t q[2];
p(1.829231728818373) q[3];
rz(3.904074539765621) q[0];
tdg q[3];
xx_plus_yy_4537562032(1.66265461814538, 5.007118866985289) q[4], q[1];
u2(5.363362212437824, 5.280959463388634) q[2];
tdg q[3];
t q[0];
u2(1.2168780972708273, 0.4380763963923488) q[2];
rxx_4537561024(2.340018380901197) q[4], q[1];
dcx q[4], q[3];
sx q[1];
sdg q[2];
sx q[0];
rzx_4537559968(2.151533217509343) q[1], q[0];
ry(4.387132462711479) q[3];
csdg q[4], q[2];
id q[3];
cz q[1], q[2];
rzx_4537562704(3.3128136530612697) q[0], q[4];
u1(1.9722172334256594) q[3];
sx q[1];
u2(0.3235815242287707, 1.9966796826660866) q[2];
csx q[4], q[0];
cx q[0], q[3];
xx_minus_yy_4537562896(5.865208279461675, 2.990178423132243) q[2], q[4];
rz(3.0788597604046726) q[1];
tdg q[0];
rx(0.7970801500507492) q[4];
ccx q[1], q[2], q[3];
sxdg q[1];
sx q[3];
z q[2];
u3(3.6104081024695702, 4.254074122170245, 5.5512874774926) q[0];
r_4537562512(0.4107417079886497, 2.3685515196165654) q[4];
sxdg q[2];
sx q[4];
u2(3.8115528484544, 5.513233382328313) q[3];
cu3_4537562464(0.6652470174590134, 4.27319462191881, 3.905117999740873) q[1], q[0];
tdg q[2];
swap q[3], q[4];
y q[0];
ry(5.740197002672914) q[1];
csdg q[2], q[4];
cy q[1], q[3];
tdg q[0];
ry(5.997019824243592) q[1];
rx(1.544389208127397) q[2];
cu(2.932142794508213, 4.990580430517618, 0.42028153278727187, 0.38987796386191204) q[0], q[4];
p(3.376101613897089) q[3];
sdg q[1];
crz(3.647749576065146) q[4], q[2];
ecr q[0], q[3];
rccx q[2], q[4], q[3];
sxdg q[0];
U(4.865122110500478, 4.597855723617875, 1.530829625131744) q[1];
tdg q[2];
h q[1];
cs q[3], q[0];
u2(5.173669777054059, 0.8145144897377739) q[4];
tdg q[2];
cu3_4537563088(2.539773387397279, 2.4267088983642493, 0.5415192369273587) q[0], q[4];
rzx_4537563136(6.201135922584709) q[1], q[3];
ch q[2], q[0];
cswap q[4], q[3], q[1];
sdg q[2];
dcx q[4], q[3];
x q[0];
p(0.13090650860136013) q[1];
ccx q[3], q[0], q[1];
csx q[2], q[4];
rcccx q[2], q[4], q[1], q[0];
rx(5.298840779789621) q[3];
xx_plus_yy_4537563904(0.6957484727229437, 3.513920794477436) q[3], q[1];
U(2.8367743059537704, 1.2595628525914824, 5.788757972770758) q[2];
csx q[0], q[4];
rcccx q[1], q[0], q[3], q[4];
u1(5.549733344794587) q[2];
crz(3.0439362019006233) q[0], q[4];
r_4537564144(1.1018281719719367, 4.901204155107915) q[2];
y q[3];
U(0.8853725481126818, 5.8421101263714394, 6.171570339398752) q[1];
rx(4.942734899620378) q[0];
cu(3.1854962473309385, 6.009625658481244, 1.8336669545269293, 3.994059526079271) q[1], q[3];
cu3_4537564288(5.113164456427239, 2.24187338482899, 3.696604893218269) q[4], q[2];
xx_plus_yy_4537564480(3.1801907792676, 5.242894827418329) q[1], q[2];
sxdg q[4];
cry(0.17728579533565245) q[3], q[0];
u2(6.202896605255862, 0.49853954972494324) q[0];
h q[3];
cx q[2], q[4];
ry(1.7357926230472147) q[1];
r_4537563808(3.882142058340606, 5.6111910145107675) q[2];
y q[1];
cp(3.961547540661183) q[4], q[3];
rx(3.7348219256139443) q[0];
ccx q[3], q[0], q[2];
cu3_4537565104(2.6940945388372595, 2.3794605806062394, 0.5073921693613928) q[1], q[4];
ecr q[0], q[4];
swap q[2], q[1];
U(4.122838678027358, 4.630818208961719, 3.88907437756778) q[3];
dcx q[2], q[4];
sdg q[0];
ecr q[3], q[1];
rx(1.0446776574497365) q[4];
cy q[1], q[3];
rzx_4537564768(1.4159324697699798) q[2], q[0];
t q[2];
ry(5.9352771161460325) q[4];
cswap q[1], q[0], q[3];
xx_minus_yy_4537564960(2.202138514228664, 1.004378422950513) q[0], q[1];
sx q[3];
sx q[2];
u1(0.20352592537504677) q[4];
p(6.22592677328002) q[2];
rzx_4510814464(4.360849750471747) q[1], q[3];
crz(5.750217545735206) q[0], q[4];
sx q[4];
rzz_4513792944(1.9541588330513837) q[0], q[3];
cry(1.4544103195913578) q[1], q[2];
ccz q[3], q[2], q[4];
x q[1];
u3(3.271386976057062, 0.4777925229056426, 5.921245822028702) q[0];
csx q[2], q[0];
s q[1];
cz q[4], q[3];
rcccx q[0], q[3], q[1], q[2];
u3(4.708474493492486, 3.2657227558131945, 2.369470975152773) q[4];
cu3_4533908496(2.7902490499987027, 0.5706744772294106, 3.917780441688362) q[4], q[1];
rzx_4533908400(5.989909544279267) q[0], q[2];
u1(0.623859319689216) q[3];
u3(2.7249523972336056, 0.0994463157488406, 2.43672046923033) q[1];
xx_plus_yy_4536762096(1.285060197528328, 2.3084898271582155) q[3], q[0];
cs q[4], q[2];
c3sx q[3], q[2], q[4], q[0];
U(3.2877246907090063, 5.005970154649313, 1.705180505338019) q[1];
xx_plus_yy_4536748176(3.309858639747228, 4.091029300021905) q[1], q[2];
cu(5.177487571297351, 3.30594849406278, 5.790073610430372, 4.455098619279075) q[0], q[4];
rz(4.268483195474141) q[3];
cry(4.536050179280861) q[2], q[0];
cswap q[4], q[1], q[3];
dcx q[2], q[0];
ch q[3], q[4];
t q[1];
xx_minus_yy_4536753984(3.1036906147148655, 4.406018778661383) q[2], q[3];
y q[0];
xx_minus_yy_4536748080(1.314995210358124, 2.1595917561019564) q[1], q[4];
h q[0];
cu3_4536758640(5.215395153462253, 3.6761710370172596, 1.3396061839638052) q[2], q[1];
dcx q[3], q[4];
xx_minus_yy_4536748944(5.326905939235725, 0.13613105465845843) q[3], q[4];
ryy_4536748752(4.121714933742065) q[1], q[0];
u1(4.671421074983059) q[2];
ecr q[0], q[1];
crz(1.1870810894556234) q[2], q[4];
id q[3];
cy q[3], q[1];
cp(1.8035665447329305) q[4], q[2];
rx(5.944873522545287) q[0];
cs q[3], q[0];
ry(1.6303021549816699) q[2];
swap q[1], q[4];
x q[1];
xx_minus_yy_4536750864(1.494350515235905, 3.2318517180878485) q[3], q[2];
u1(2.8973729285052583) q[4];
u3(6.090254465124191, 0.400145562196266, 0.6864942059975392) q[0];
cs q[4], q[2];
xx_plus_yy_4536747120(1.0729654207777224, 4.534263006112591) q[3], q[0];
U(4.20871515652006, 4.4192584696534185, 6.009272803011567) q[1];
cx q[1], q[3];
u1(1.388720008425038) q[0];
cp(1.5630516424230345) q[4], q[2];
U(5.466471952303132, 4.882409574787579, 2.960229534094984) q[0];
xx_minus_yy_4536746928(2.8212364155378666, 0.6297334028374134) q[1], q[2];
rzx_4536746880(2.3181934232864303) q[3], q[4];
r_4536754320(2.729600396705027, 3.930366109345878) q[3];
cs q[2], q[0];
ry(6.038533285149732) q[1];
rx(1.9554655322145236) q[4];
swap q[0], q[1];
cs q[4], q[3];
rz(2.3449006079955144) q[2];
csx q[3], q[4];
cp(2.8505335583830482) q[1], q[2];
u2(2.5463119156549654, 2.7459969873094496) q[0];
csdg q[2], q[1];
iswap q[3], q[0];
rz(5.716103890188435) q[4];
y q[2];
h q[4];
u1(2.0142815513976156) q[1];
r_4536756288(2.605441645651992, 1.3910163699576699) q[0];
rx(4.9010469737850215) q[3];
ecr q[1], q[3];
p(5.2866613898340375) q[4];
cu1_4536754848(4.918911150794099) q[0], q[2];
swap q[2], q[3];
rzx_4536759360(5.823583315149478) q[1], q[0];
u2(5.634790581251243, 1.5360815107132555) q[4];
h q[0];
crz(5.503240760239139) q[4], q[3];
csdg q[2], q[1];
p(2.3600537047282417) q[3];
ecr q[1], q[2];
crx(5.701305158192116) q[4], q[0];
rxx_4536756048(3.207619377037835) q[4], q[1];
u1(5.470818277492251) q[0];
dcx q[3], q[2];
cswap q[4], q[2], q[1];
rz(2.787584898043028) q[3];
t q[0];
cx q[3], q[0];
cy q[1], q[2];
u1(3.5854148866694016) q[4];
cp(4.941338322517007) q[1], q[4];
ccz q[0], q[3], q[2];
c3sx q[0], q[3], q[4], q[2];
rz(5.59965309144075) q[1];
