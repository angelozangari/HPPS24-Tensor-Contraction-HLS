OPENQASM 3.0;
include "stdgates.inc";
gate cu1_4538105440(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.980704967467206) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.980704967467206) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.980704967467206) _gate_q_1;
}
gate rzx_4538103376(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.3886897865972557) _gate_q_1;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4538102608(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.347819797747334) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.698102339758443) _gate_q_1;
  ry(-1.698102339758443) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.347819797747334) _gate_q_0;
}
gate cu3_4538095456(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.59037760707231) _gate_q_0;
  u1(-1.7662394272816693) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.2124473718418742, 0, -3.59037760707231) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.2124473718418742, 5.356617034353979, 0) _gate_q_1;
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
gate rzz_4538104720(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.8605790627499149) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4538101072(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.034107578949102) _gate_q_0;
  u1(2.189022154019472) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.390096450603378, 0, -3.034107578949102) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.390096450603378, 0.84508542492963, 0) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate r_4538104480(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.0068389599416983, 4.548948559895794, -4.548948559895794) _gate_q_0;
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
gate ryy_4538104192(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9499709019229259) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4538104576(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.9643497805724638) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.346351649284418) _gate_q_1;
  ry(-1.346351649284418) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.9643497805724638) _gate_q_0;
}
gate r_4538100592(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.6936034877056825, 0.16911226951149017, -0.16911226951149017) _gate_q_0;
}
gate xx_plus_yy_4538097856(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.89197507055491) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.8800005379502276) _gate_q_1;
  ry(-0.8800005379502276) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.89197507055491) _gate_q_0;
}
gate cu1_4538093296(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.63769865605611) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.63769865605611) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.63769865605611) _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate r_4538101360(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.71598397349929, 4.260016982008637, -4.260016982008637) _gate_q_0;
}
gate r_4538101216(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.9463151891145802, 3.2314792251687106, -3.2314792251687106) _gate_q_0;
}
gate r_4538092336(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.060008838490941, 3.8296945822659403, -3.8296945822659403) _gate_q_0;
}
gate rxx_4538091616(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.3199906110747173) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4538104864(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.9885370890609716) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4538103136(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.8775759037275104) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4538105392(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.2773914544845706) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate ryy_4538091808(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.4178283544223738) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538093920(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.474817781816004, 0.5128030493073492, -0.5128030493073492) _gate_q_0;
}
gate rxx_4538100928(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7568163458443933) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4538091184(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.8068054045606202) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.12441408448584132) _gate_q_0;
  ry(-0.12441408448584132) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.8068054045606202) _gate_q_1;
}
gate xx_plus_yy_4538103280(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(6.188715602187303) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.2505379055810746) _gate_q_1;
  ry(-1.2505379055810746) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-6.188715602187303) _gate_q_0;
}
gate ryy_4538091520(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.111059087809245) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4538102224(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.14354923967386288) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4538102944(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.340520039743172) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4538093008(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.708567879030144) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4538093104(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.08514204006541058) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
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
gate xx_plus_yy_4538092384(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.9395237238364018) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.1472327270567853) _gate_q_1;
  ry(-2.1472327270567853) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.9395237238364018) _gate_q_0;
}
gate ryy_4538097328(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.356242114456734) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4538091856(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.530497560919335) _gate_q_0;
  u1(-0.5146249359425437) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.846612796398565, 0, -0.530497560919335) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.846612796398565, 1.0451224968618786, 0) _gate_q_1;
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
gate r_4538101504(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.0758831347417064, 0.053437637628567014, -0.053437637628567014) _gate_q_0;
}
gate xx_plus_yy_4540878912(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.1596073219295575) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.27816784787483134) _gate_q_1;
  ry(-0.27816784787483134) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.1596073219295575) _gate_q_0;
}
gate cu1_4540877568(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.648014782613408) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.648014782613408) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.648014782613408) _gate_q_1;
}
gate rzx_4540881312(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.165317437213035) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4540885536(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.390762207918568) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.390762207918568) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.390762207918568) _gate_q_1;
}
gate r_4540881840(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.5711312921430025, 1.8321866750233347, -1.8321866750233347) _gate_q_0;
}
gate xx_plus_yy_4540884672(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.3798248712014296) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.200862897089862) _gate_q_1;
  ry(-2.200862897089862) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.3798248712014296) _gate_q_0;
}
gate rzz_4540879488(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.5222739065306758) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4540876224(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.05111241621101771) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4540882800(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.635519161209482) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4540879104(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.202374849131807, -1.4744740805624226, 1.4744740805624226) _gate_q_0;
}
gate rzz_4540880112(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.737562204896682) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4540876176(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.4852522910668777, -1.456006071251013, 1.456006071251013) _gate_q_0;
}
gate xx_plus_yy_4540874880(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.947445315599537) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5585638638308708) _gate_q_1;
  ry(-2.5585638638308708) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.947445315599537) _gate_q_0;
}
gate ryy_4540874976(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.9310186937771516) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4540877664(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.6205739158527903) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4535680800(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.1046828087501184) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4539342368(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.233540223158649) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
qubit[7] q;
u3(4.056046331346295, 1.7095227757400362, 2.489784900458392) q[6];
cu1_4538105440(5.961409934934412) q[4], q[1];
ccx q[2], q[5], q[3];
id q[0];
rzx_4538103376(0.3886897865972557) q[4], q[1];
csx q[0], q[3];
ccx q[2], q[5], q[6];
xx_plus_yy_4538102608(3.396204679516886, 2.347819797747334) q[5], q[4];
x q[0];
rx(1.9726322347729106) q[6];
cu3_4538095456(4.4248947436837485, 5.356617034353979, 1.8241381797906409) q[2], q[3];
s q[1];
ch q[3], q[5];
h q[1];
ecr q[0], q[2];
u2(4.075911868751635, 0.6211353214468316) q[6];
rx(4.803708608630592) q[4];
rzz_4538104720(0.8605790627499149) q[2], q[3];
ch q[4], q[0];
cu3_4538101072(2.780192901206756, 0.84508542492963, 5.223129732968574) q[6], q[5];
rz(1.3645473142042448) q[1];
U(1.833505568345968, 2.135844467692614, 1.8202151073011779) q[1];
ccz q[3], q[4], q[0];
ry(6.1468913295148475) q[6];
t q[5];
r_4538104480(3.0068389599416983, 6.1197448866906905) q[2];
rz(5.970185346298739) q[1];
rz(1.3128558218370558) q[3];
ch q[2], q[5];
rccx q[6], q[0], q[4];
cz q[2], q[5];
rz(5.696394153931407) q[6];
ryy_4538104192(1.9499709019229259) q[0], q[1];
xx_plus_yy_4538104576(2.692703298568836, 0.9643497805724638) q[4], q[3];
r_4538100592(2.6936034877056825, 1.7399085963063867) q[1];
cy q[0], q[3];
xx_plus_yy_4538097856(1.7600010759004552, 5.89197507055491) q[6], q[2];
p(2.237389904658947) q[4];
u2(3.983892076607922, 5.473320807767339) q[5];
csx q[3], q[0];
rx(0.3543640686545865) q[5];
y q[4];
ry(0.8170328564134396) q[6];
cu1_4538093296(5.27539731211222) q[1], q[2];
rx(4.809674053887773) q[6];
ccz q[1], q[4], q[3];
cs q[5], q[0];
z q[2];
p(0.564182475855162) q[3];
rccx q[4], q[5], q[2];
z q[1];
y q[0];
x q[6];
ccz q[4], q[3], q[1];
r_4538101360(3.71598397349929, 5.830813308803534) q[5];
r_4538101216(3.9463151891145802, 4.802275551963607) q[6];
sxdg q[0];
id q[2];
cy q[4], q[5];
h q[0];
u2(2.130843839767515, 0.7599731436329239) q[1];
ccz q[2], q[6], q[3];
rz(5.858217189004156) q[2];
cs q[0], q[5];
sx q[6];
s q[4];
cu(0.356181505586547, 2.724900913041116, 5.819888848298097, 1.3278873149765382) q[1], q[3];
r_4538092336(3.060008838490941, 5.400490909060837) q[4];
u1(5.450395615477734) q[5];
ccx q[2], q[3], q[0];
sdg q[1];
y q[6];
rxx_4538091616(2.3199906110747173) q[0], q[6];
p(1.7454404584335288) q[5];
cx q[1], q[2];
h q[4];
z q[3];
rccx q[6], q[0], q[3];
ccz q[1], q[5], q[4];
x q[2];
rccx q[5], q[3], q[1];
rzx_4538104864(0.9885370890609716) q[4], q[0];
rz(2.365963753012329) q[2];
sxdg q[6];
rzx_4538103136(2.8775759037275104) q[6], q[5];
y q[0];
cz q[3], q[4];
t q[1];
z q[2];
h q[2];
sx q[3];
cu(4.309356813304669, 5.169906758531358, 5.953342141435289, 0.7849515282303495) q[1], q[6];
crx(5.474112080669375) q[5], q[0];
id q[4];
rzz_4538105392(3.2773914544845706) q[4], q[1];
iswap q[0], q[3];
rx(3.168140426087253) q[2];
tdg q[5];
u3(5.6340047792503505, 4.632160463098697, 0.5844783034059093) q[6];
dcx q[1], q[5];
cz q[0], q[4];
sx q[6];
iswap q[3], q[2];
ryy_4538091808(0.4178283544223738) q[3], q[6];
cy q[4], q[1];
rx(1.2739852811419488) q[0];
u2(0.8342475257138747, 2.9503539300528057) q[5];
sxdg q[2];
cswap q[3], q[1], q[6];
r_4538093920(5.474817781816004, 2.0835993761022458) q[4];
rxx_4538100928(3.7568163458443933) q[0], q[5];
rx(2.8101628208783285) q[2];
z q[4];
csx q[5], q[3];
xx_minus_yy_4538091184(0.24882816897168264, 0.8068054045606202) q[1], q[0];
xx_plus_yy_4538103280(2.501075811162149, 6.188715602187303) q[6], q[2];
sdg q[2];
cswap q[6], q[0], q[3];
x q[1];
tdg q[4];
u1(2.8071027722283795) q[5];
rccx q[2], q[4], q[6];
cry(5.809689582851176) q[5], q[1];
ryy_4538091520(5.111059087809245) q[3], q[0];
dcx q[1], q[0];
rzz_4538102224(0.14354923967386288) q[2], q[5];
dcx q[6], q[4];
x q[3];
u2(2.095924491758062, 6.095873820037143) q[3];
ccz q[6], q[5], q[0];
u1(4.965938357893502) q[4];
rzz_4538102944(5.340520039743172) q[2], q[1];
cry(4.232704773597085) q[0], q[2];
rzx_4538093008(4.708567879030144) q[1], q[5];
sdg q[3];
tdg q[4];
rx(5.898253317773651) q[6];
rzz_4538093104(0.08514204006541058) q[5], q[6];
crx(3.0424465267396266) q[3], q[1];
csdg q[4], q[0];
sxdg q[2];
crz(6.12130893915827) q[4], q[6];
u3(3.0505013192311607, 2.8596074996308336, 2.6626951039596274) q[5];
cry(3.4372588702363784) q[1], q[2];
csx q[0], q[3];
ccx q[4], q[6], q[3];
crx(1.0476194509796901) q[2], q[5];
crz(1.4887509771903487) q[1], q[0];
ch q[5], q[1];
c3sx q[2], q[3], q[6], q[0];
x q[4];
ecr q[2], q[6];
c3sx q[1], q[5], q[4], q[3];
z q[0];
xx_plus_yy_4538092384(4.2944654541135705, 1.9395237238364018) q[2], q[4];
cswap q[6], q[1], q[3];
id q[5];
t q[0];
cry(1.9353318773572201) q[5], q[3];
u3(3.577928816281049, 4.239918057583061, 2.497561721436441) q[1];
sx q[0];
p(1.8390067611822585) q[2];
x q[4];
y q[6];
ryy_4538097328(5.356242114456734) q[3], q[4];
cu3_4538091856(5.69322559279713, 1.0451224968618786, 0.015872624976791365) q[6], q[5];
cu(6.125243323224924, 6.164419085520206, 3.1728730352615218, 1.8266394883600823) q[0], q[1];
s q[2];
cz q[4], q[0];
rcccx q[6], q[5], q[2], q[3];
z q[1];
cz q[1], q[6];
r_4538101504(1.0758831347417064, 1.6242339644234636) q[0];
crx(2.842124354130756) q[4], q[5];
sx q[2];
u1(5.508617113028278) q[3];
xx_plus_yy_4540878912(0.5563356957496627, 1.1596073219295575) q[3], q[5];
cu1_4540877568(5.296029565226816) q[1], q[2];
u2(3.916565653869384, 2.7368351063506657) q[0];
rzx_4540881312(5.165317437213035) q[4], q[6];
cswap q[5], q[3], q[1];
cu1_4540885536(4.781524415837136) q[2], q[4];
ry(0.1167868200224201) q[0];
u2(1.0376100598586222, 1.5557541267275485) q[6];
r_4540881840(4.5711312921430025, 3.402983001818231) q[2];
tdg q[5];
xx_plus_yy_4540884672(4.401725794179724, 1.3798248712014296) q[4], q[1];
ccz q[0], q[6], q[3];
t q[2];
crz(0.9454170290932304) q[4], q[5];
rcccx q[1], q[0], q[3], q[6];
rzz_4540879488(1.5222739065306758) q[4], q[1];
c3sx q[0], q[6], q[5], q[2];
rz(5.463107038361774) q[3];
u1(5.041975100160925) q[5];
rzz_4540876224(0.05111241621101771) q[4], q[1];
cp(3.6365291133906035) q[3], q[6];
iswap q[2], q[0];
id q[0];
rz(0.2338848241131794) q[2];
ryy_4540882800(4.635519161209482) q[3], q[5];
tdg q[1];
cry(5.95015093728619) q[4], q[6];
csx q[4], q[1];
sx q[0];
u1(4.937431919621885) q[3];
h q[2];
y q[6];
r_4540879104(6.202374849131807, 0.0963222462324739) q[5];
rzz_4540880112(5.737562204896682) q[4], q[6];
r_4540876176(1.4852522910668777, 0.11479025554388365) q[5];
xx_plus_yy_4540874880(5.1171277276617415, 3.947445315599537) q[2], q[0];
ryy_4540874976(3.9310186937771516) q[1], q[3];
ecr q[1], q[4];
y q[3];
s q[5];
u2(4.117490540651388, 4.911595664508391) q[2];
cz q[6], q[0];
cu(4.4255950186871855, 4.608624141320026, 0.7665859153569575, 4.7913922786954934) q[6], q[1];
crx(1.6660256626442462) q[3], q[2];
y q[4];
s q[5];
y q[0];
sdg q[4];
y q[5];
ccx q[6], q[0], q[2];
s q[1];
U(3.4171344835026796, 4.594248623053349, 6.0454649800879485) q[3];
rxx_4540877664(3.6205739158527903) q[3], q[5];
sdg q[1];
ecr q[0], q[4];
cry(3.905078470422698) q[2], q[6];
cy q[3], q[5];
cz q[6], q[4];
swap q[0], q[1];
t q[2];
s q[4];
rx(2.0803415196773525) q[5];
cswap q[2], q[1], q[0];
cy q[3], q[6];
ccz q[4], q[5], q[1];
sxdg q[3];
csdg q[6], q[0];
sx q[2];
sx q[6];
u1(5.443691473462708) q[0];
u2(4.452347463279075, 4.343032927643574) q[4];
tdg q[3];
rzz_4535680800(3.1046828087501184) q[1], q[2];
U(5.370042726140856, 1.904487539346271, 4.64761997640449) q[5];
cs q[4], q[5];
ecr q[1], q[3];
cs q[0], q[6];
ry(0.3566826243846074) q[2];
cu(6.171246281756474, 6.222624920654165, 2.250311465243748, 5.990396810858928) q[2], q[6];
rccx q[1], q[3], q[0];
ryy_4539342368(4.233540223158649) q[4], q[5];
