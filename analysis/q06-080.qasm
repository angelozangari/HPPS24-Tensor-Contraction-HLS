OPENQASM 3.0;
include "stdgates.inc";
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
gate rzz_4540382240(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.379622967729196) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4540382528(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.8245661394307477) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.21252661904556) _gate_q_0;
  ry(-2.21252661904556) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.8245661394307477) _gate_q_1;
}
gate r_4540382480(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.105446256830472, -0.9710957361844555, 0.9710957361844555) _gate_q_0;
}
gate xx_plus_yy_4540382048(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.461237008401356) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.2542627247446148) _gate_q_1;
  ry(-1.2542627247446148) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.461237008401356) _gate_q_0;
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
gate ryy_4540382864(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.7480117440741842) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4540382096(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.7598988471467679) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate rxx_4540383200(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.7700837674575168) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4538090368(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.8879967471437107) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.3970660992131265) _gate_q_0;
  ry(-1.3970660992131265) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.8879967471437107) _gate_q_1;
}
gate cu3_4540874928(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.631815213910697) _gate_q_0;
  u1(1.442106605171348) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.3319801191066247, 0, -2.631815213910697) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.3319801191066247, 1.1897086087393494, 0) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate cu1_4540875408(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.9131976367764179) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.9131976367764179) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.9131976367764179) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate r_4540875744(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.6606582733738589, -1.2879079205265982, 1.2879079205265982) _gate_q_0;
}
gate cu1_4540875504(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.151506259808033) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.151506259808033) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.151506259808033) _gate_q_1;
}
gate xx_minus_yy_4540875936(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.9094469449102247) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.2977597790715842) _gate_q_0;
  ry(-1.2977597790715842) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.9094469449102247) _gate_q_1;
}
gate rzz_4540876176(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.6689447270460755) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate rzx_4540876320(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.8441781107011943) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4541067344(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.53553893819241) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4540876608(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.04125827099029096) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.8237128962163562) _gate_q_1;
  ry(-2.8237128962163562) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.04125827099029096) _gate_q_0;
}
gate rzx_4540877040(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.29055825570224) _gate_q_1;
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
gate xx_minus_yy_4540877232(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.771054868511858) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.8064832902308596) _gate_q_0;
  ry(-0.8064832902308596) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.771054868511858) _gate_q_1;
}
gate cu3_4540877328(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.1718204003346555) _gate_q_0;
  u1(-0.3424803120424451) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.5775158032851896, 0, -4.1718204003346555) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.5775158032851896, 4.514300712377101, 0) _gate_q_1;
}
gate xx_minus_yy_4540877280(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.992771819389805) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.2741052094907777) _gate_q_0;
  ry(-2.2741052094907777) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.992771819389805) _gate_q_1;
}
gate cu3_4540877616(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.7080046356198265) _gate_q_0;
  u1(0.2776340913728944) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.8035606440983827, 0, -0.7080046356198265) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.8035606440983827, 0.4303705442469321, 0) _gate_q_1;
}
gate xx_plus_yy_4540877808(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.606265462741418) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5749496138238266) _gate_q_1;
  ry(-2.5749496138238266) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.606265462741418) _gate_q_0;
}
gate rzz_4540878048(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.7790662529334) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4540878240(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.3795703196777325) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4540878192(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.944449805157308) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4540878480(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.7723356342030305) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.0522147381385025) _gate_q_0;
  ry(-2.0522147381385025) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.7723356342030305) _gate_q_1;
}
gate cu3_4540878576(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.2893031569443) _gate_q_0;
  u1(2.239992152808154) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.926991833551187, 0, -2.2893031569443) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.926991833551187, 0.04931100413614597, 0) _gate_q_1;
}
gate rzx_4540878672(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.08617409216631) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4540878624(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.744935067158615, 4.498669734907188, -4.498669734907188) _gate_q_0;
}
gate ryy_4540878960(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1135109925499056) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4540879200(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.033952285663095) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4540879296(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9449391177411894) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4540879488(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.383717522985121) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4540879920(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(3.094100381739988) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-3.094100381739988) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(3.094100381739988) _gate_q_1;
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
gate r_4540880208(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.5501137919187578, 3.5125146546591903, -3.5125146546591903) _gate_q_0;
}
gate rzx_4540880256(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.741274902173602) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4540880496(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.6679315011631289) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.7825864192916445) _gate_q_1;
  ry(-1.7825864192916445) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.6679315011631289) _gate_q_0;
}
gate ryy_4540880544(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.535972085666481) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4540880832(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.1740756890693973) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.5831915607586774) _gate_q_0;
  ry(-0.5831915607586774) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.1740756890693973) _gate_q_1;
}
gate cu1_4540881312(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.7716016067099335) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.7716016067099335) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.7716016067099335) _gate_q_1;
}
qubit[6] q;
u1(5.020230089895748) q[4];
sdg q[3];
rccx q[5], q[1], q[0];
id q[2];
u3(2.1129292591000883, 1.9175157789496693, 2.9910511687652215) q[4];
cx q[2], q[1];
h q[0];
z q[5];
z q[3];
t q[5];
rzz_4540382240(1.379622967729196) q[4], q[3];
cswap q[1], q[0], q[2];
p(5.979855365755434) q[0];
u2(4.601395252483306, 0.6955712034079008) q[5];
U(2.2503657470749374, 1.9304699551854432, 4.5977522972891025) q[3];
xx_minus_yy_4540382528(4.42505323809112, 3.8245661394307477) q[2], q[4];
r_4540382480(6.105446256830472, 0.599700590610441) q[1];
cy q[4], q[2];
xx_plus_yy_4540382048(2.5085254494892295, 5.461237008401356) q[3], q[1];
ch q[0], q[5];
c3sx q[0], q[4], q[1], q[2];
cp(1.7251113643109073) q[3], q[5];
p(1.3449519923608226) q[2];
ryy_4540382864(0.7480117440741842) q[5], q[3];
u3(0.7659148193976127, 5.002247885437027, 4.167882929815526) q[0];
rx(2.6979570554193084) q[1];
s q[4];
ch q[5], q[3];
p(0.858943571619431) q[0];
cry(2.549640619186752) q[1], q[2];
h q[4];
rxx_4540382096(0.7598988471467679) q[4], q[2];
swap q[5], q[1];
crx(2.353839117385299) q[0], q[3];
cs q[4], q[5];
ccz q[3], q[2], q[0];
p(1.3234590867127183) q[1];
cz q[2], q[1];
rxx_4540383200(0.7700837674575168) q[5], q[4];
s q[3];
y q[0];
u1(2.0145064185905794) q[3];
xx_minus_yy_4538090368(2.794132198426253, 2.8879967471437107) q[1], q[0];
tdg q[5];
ry(2.1346785241302455) q[4];
p(4.592732826352373) q[2];
sdg q[4];
rccx q[3], q[1], q[5];
ch q[0], q[2];
u3(0.12554958258507587, 4.554736609781423, 2.929938785547614) q[1];
cu3_4540874928(4.6639602382132495, 1.1897086087393494, 4.073921819082045) q[2], q[3];
rccx q[4], q[0], q[5];
u2(2.1726448818339956, 4.509624505516757) q[4];
crz(2.816607586911267) q[0], q[1];
rx(0.6711781100516366) q[2];
swap q[5], q[3];
s q[0];
rccx q[5], q[3], q[1];
p(0.4595314300744092) q[2];
sdg q[4];
y q[3];
ch q[0], q[2];
u2(3.695324191966489, 3.2389546963080726) q[1];
iswap q[5], q[4];
x q[5];
cz q[3], q[0];
p(4.692797377931519) q[4];
cu1_4540875408(1.8263952735528357) q[1], q[2];
h q[2];
dcx q[0], q[5];
cu(3.958336889335882, 2.051457289921409, 2.3510063006376627, 6.214765818782013) q[1], q[3];
s q[4];
cp(6.218021215682786) q[1], q[2];
cx q[4], q[0];
cx q[3], q[5];
csdg q[5], q[0];
y q[4];
cu(6.223814349805306, 3.7335366134873293, 1.7124738593223252, 1.6426989313591787) q[1], q[3];
x q[2];
cs q[1], q[3];
sdg q[0];
r_4540875744(1.6606582733738589, 0.28288840626829836) q[5];
ch q[4], q[2];
dcx q[5], q[1];
p(4.570144453129988) q[3];
cu1_4540875504(4.303012519616066) q[0], q[4];
sdg q[2];
xx_minus_yy_4540875936(2.5955195581431685, 1.9094469449102247) q[5], q[4];
crz(4.743617803951358) q[2], q[0];
ry(1.6702482400671532) q[3];
h q[1];
sxdg q[3];
sxdg q[1];
rzz_4540876176(2.6689447270460755) q[0], q[5];
sdg q[4];
s q[2];
t q[0];
cy q[4], q[1];
csx q[2], q[5];
u2(2.15458979567204, 3.5571530198345003) q[3];
u2(4.841008975866984, 2.9135185910635077) q[0];
c3sx q[1], q[2], q[4], q[3];
sx q[5];
rzx_4540876320(3.8441781107011943) q[2], q[3];
rzz_4541067344(4.53553893819241) q[5], q[0];
sx q[4];
sxdg q[1];
crz(4.0435090015373785) q[3], q[1];
ccz q[0], q[5], q[4];
ry(3.331310602723692) q[2];
csdg q[3], q[1];
sdg q[5];
z q[4];
p(4.757460089829697) q[2];
rz(2.0172752977932955) q[0];
xx_plus_yy_4540876608(5.6474257924327125, 0.04125827099029096) q[4], q[2];
csx q[0], q[1];
crx(4.8843176945313385) q[5], q[3];
t q[3];
u2(3.6160487755403063, 0.7221941941610533) q[2];
crz(0.5516038070261661) q[4], q[1];
cz q[5], q[0];
crx(3.2497623487359055) q[5], q[3];
ry(1.0393038325526691) q[4];
y q[2];
rzx_4540877040(5.29055825570224) q[0], q[1];
x q[0];
rz(1.668593395430119) q[1];
csx q[3], q[2];
u1(1.8948793484094393) q[4];
sx q[5];
dcx q[4], q[2];
rcccx q[5], q[1], q[3], q[0];
crx(5.035663487629026) q[5], q[3];
xx_minus_yy_4540877232(1.6129665804617193, 3.771054868511858) q[2], q[4];
cu3_4540877328(1.1550316065703792, 4.514300712377101, 3.8293400882922106) q[1], q[0];
xx_minus_yy_4540877280(4.548210418981555, 0.992771819389805) q[4], q[3];
rcccx q[0], q[1], q[5], q[2];
ccx q[2], q[5], q[1];
U(0.6413701635506007, 0.05503561068385069, 4.936491025248382) q[4];
cp(2.2494403187177308) q[0], q[3];
u2(1.2012017590504531, 5.148569675782249) q[3];
rcccx q[2], q[5], q[1], q[0];
s q[4];
t q[3];
tdg q[5];
id q[1];
rx(4.089667289919357) q[0];
id q[2];
h q[4];
z q[4];
cu3_4540877616(3.6071212881967654, 0.4303705442469321, 0.9856387269927209) q[1], q[2];
cp(1.9484730570180022) q[0], q[3];
u2(0.3453838831716175, 1.598372457543982) q[5];
u1(6.110196582740208) q[1];
sdg q[5];
xx_plus_yy_4540877808(5.149899227647653, 2.606265462741418) q[0], q[2];
rzz_4540878048(5.7790662529334) q[4], q[3];
csdg q[1], q[0];
c3sx q[5], q[2], q[3], q[4];
ccx q[3], q[4], q[1];
cy q[2], q[0];
t q[5];
cy q[3], q[0];
tdg q[2];
cu(3.9550362226725606, 4.81042660777151, 1.2428783312389593, 4.859348943015979) q[5], q[4];
t q[1];
rz(1.07064549758313) q[0];
ryy_4540878240(3.3795703196777325) q[4], q[1];
h q[5];
ryy_4540878192(5.944449805157308) q[2], q[3];
x q[5];
rz(3.4234606301247132) q[2];
csx q[4], q[1];
rz(0.5408199317137595) q[0];
rz(5.561980804864403) q[3];
xx_minus_yy_4540878480(4.104429476277005, 3.7723356342030305) q[0], q[1];
iswap q[2], q[5];
sxdg q[4];
t q[3];
cy q[3], q[0];
rcccx q[2], q[5], q[1], q[4];
rcccx q[5], q[2], q[4], q[3];
z q[0];
h q[1];
cry(3.1204725921533543) q[3], q[1];
cu3_4540878576(5.853983667102374, 0.04931100413614597, 4.529295309752454) q[5], q[2];
rzx_4540878672(5.08617409216631) q[4], q[0];
u2(5.751663443316631, 3.0223714242876922) q[4];
h q[3];
dcx q[2], q[0];
r_4540878624(5.744935067158615, 6.069466061702085) q[1];
t q[5];
p(4.298313105837885) q[4];
cz q[1], q[0];
ry(3.502910410303306) q[3];
x q[5];
sxdg q[2];
cswap q[3], q[2], q[4];
ryy_4540878960(2.1135109925499056) q[0], q[5];
u1(4.783103369139983) q[1];
cp(5.200205092109171) q[5], q[2];
c3sx q[0], q[3], q[4], q[1];
h q[2];
crz(2.784579472106898) q[4], q[5];
ryy_4540879200(3.033952285663095) q[1], q[0];
sxdg q[3];
rzx_4540879296(1.9449391177411894) q[3], q[5];
sdg q[0];
crz(5.5036533235230065) q[1], q[2];
z q[4];
ccz q[0], q[2], q[4];
u3(1.9608637954657167, 0.8842349347548514, 2.3456572823867194) q[5];
z q[3];
z q[1];
swap q[0], q[4];
cy q[3], q[1];
t q[2];
h q[5];
rzx_4540879488(5.383717522985121) q[5], q[0];
s q[4];
s q[1];
cy q[2], q[3];
ry(3.680886872378335) q[5];
u2(1.9520808161346839, 6.1198530997840415) q[4];
rx(4.018980315074682) q[2];
u3(1.2211206008799806, 5.7749820969744246, 5.952676858161028) q[1];
t q[0];
ry(2.2827650318308033) q[3];
ccz q[2], q[4], q[3];
rccx q[1], q[0], q[5];
id q[4];
rcccx q[2], q[1], q[3], q[0];
id q[5];
cx q[2], q[0];
cswap q[3], q[5], q[1];
rz(2.692923792192659) q[4];
sx q[1];
rx(5.026253335822698) q[3];
cz q[2], q[0];
x q[4];
h q[5];
u1(0.06321683774350036) q[4];
cu1_4540879920(6.188200763479976) q[3], q[0];
swap q[2], q[1];
sx q[5];
p(0.34820441253013507) q[3];
cswap q[5], q[4], q[0];
sxdg q[2];
sdg q[1];
h q[0];
ch q[4], q[1];
s q[5];
U(2.521358756535369, 3.398733591711526, 3.796130357984153) q[2];
ry(6.016728293859224) q[3];
ecr q[1], q[4];
rx(3.0097930152571424) q[3];
id q[0];
r_4540880208(1.5501137919187578, 5.083310981454087) q[5];
t q[2];
t q[0];
rccx q[4], q[1], q[3];
csx q[2], q[5];
sxdg q[0];
rzx_4540880256(4.741274902173602) q[3], q[1];
u2(0.932739271753353, 5.516737771790889) q[5];
p(1.8601558500353312) q[2];
sxdg q[4];
rx(0.6921234292413317) q[5];
u3(6.177545111008405, 1.3374281509057442, 1.4104365559801904) q[3];
xx_plus_yy_4540880496(3.565172838583289, 0.6679315011631289) q[2], q[4];
x q[1];
x q[0];
ch q[5], q[4];
ryy_4540880544(4.535972085666481) q[0], q[3];
t q[1];
s q[2];
cry(1.7434313111758009) q[4], q[3];
ccz q[2], q[5], q[0];
h q[1];
crx(3.239609790928477) q[5], q[1];
h q[4];
rx(6.162879442298753) q[3];
xx_minus_yy_4540880832(1.1663831215173548, 1.1740756890693973) q[0], q[2];
csx q[1], q[3];
sx q[2];
p(0.8323756163162056) q[5];
u1(0.9283682841868283) q[0];
x q[4];
rz(5.370721875374707) q[5];
cz q[2], q[3];
crz(0.9225135687814109) q[1], q[4];
u3(5.559751887048359, 5.544045026987397, 1.6992768732598027) q[0];
ry(1.1599058294441154) q[3];
sdg q[5];
p(0.970442060921723) q[4];
u3(5.7570137195666575, 4.343854833732429, 1.2724508340698037) q[1];
csx q[0], q[2];
z q[3];
c3sx q[2], q[5], q[0], q[1];
h q[4];
cu1_4540881312(1.543203213419867) q[5], q[1];
u3(3.4742715886263555, 5.296809952783611, 0.6134632993188717) q[2];
swap q[3], q[4];
u3(0.03431200793081307, 1.0293412065774818, 0.39430497438280665) q[0];
