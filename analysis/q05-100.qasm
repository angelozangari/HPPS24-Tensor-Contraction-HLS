OPENQASM 3.0;
include "stdgates.inc";
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4561949936(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.01198470798641) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.2708834943486513) _gate_q_0;
  ry(-2.2708834943486513) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.01198470798641) _gate_q_1;
}
gate r_4561948544(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.9473498749941727, -0.42115180488793635, 0.42115180488793635) _gate_q_0;
}
gate xx_minus_yy_4561948880(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.5177998015570116) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.9146227044817771) _gate_q_0;
  ry(-0.9146227044817771) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.5177998015570116) _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate rzx_4534359616(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4534359664(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ecr _gate_q_0, _gate_q_1 {
  rzx_4534359616(pi/4) _gate_q_0, _gate_q_1;
  x _gate_q_0;
  rzx_4534359664(-pi/4) _gate_q_0, _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cu1_4534176272(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/4) _gate_q_1;
}
gate csx _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cu1_4534176272(pi/2) _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4561948688(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.842191998853472, -0.7226773792133234, 0.7226773792133234) _gate_q_0;
}
gate rzz_4561950272(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.049117604913913725) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4561950944(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.1649893095416375) _gate_q_0;
  u1(2.1436612844472855) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.9673012513424657, 0, -3.1649893095416375) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.9673012513424657, 1.0213280250943517, 0) _gate_q_1;
}
gate r_4561950464(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.1083993034690391, 0.2424028482315992, -0.2424028482315992) _gate_q_0;
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
gate rzz_4561950848(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.436358504809388) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate xx_plus_yy_4561950704(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.40047295833358604) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.6217812126993889) _gate_q_1;
  ry(-0.6217812126993889) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.40047295833358604) _gate_q_0;
}
gate cu1_4561951232(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.7094064695759141) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.7094064695759141) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.7094064695759141) _gate_q_1;
}
gate r_4560920960(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.869038487854102, 3.5196016440436484, -3.5196016440436484) _gate_q_0;
}
gate xx_plus_yy_4561950800(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.0159783185032825) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.4285342485628518) _gate_q_1;
  ry(-1.4285342485628518) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.0159783185032825) _gate_q_0;
}
gate r_4561951616(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.326631690566088, 1.9758659329919093, -1.9758659329919093) _gate_q_0;
}
gate cu3_4561951856(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.718117405631634) _gate_q_0;
  u1(1.053383606436892) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.9962621212252822, 0, -4.718117405631634) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.9962621212252822, 3.6647337991947424, 0) _gate_q_1;
}
gate rxx_4561952192(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.580845764553131) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4561955504(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.5098457380570345) _gate_q_0;
  u1(0.46043431538962043) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.836947465598083, 0, -5.5098457380570345) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.836947465598083, 5.049411422667414, 0) _gate_q_1;
}
gate ryy_4561951040(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.5447456054323305) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4561952480(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.747265648926949) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.2907088294120679) _gate_q_0;
  ry(-1.2907088294120679) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.747265648926949) _gate_q_1;
}
gate xx_plus_yy_4561955312(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.273536946720375) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.1001700514806168) _gate_q_1;
  ry(-1.1001700514806168) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.273536946720375) _gate_q_0;
}
gate rxx_4561952768(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.775145354096919) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4561950608(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.9335186990659008, -0.7434764860336441, 0.7434764860336441) _gate_q_0;
}
gate ryy_4561951952(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.686113300791076) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4561950032(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.9833565847711263) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.9833565847711263) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.9833565847711263) _gate_q_1;
}
gate xx_plus_yy_4561957184(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.5862244971873722) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.2341942203945714) _gate_q_1;
  ry(-0.2341942203945714) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.5862244971873722) _gate_q_0;
}
gate rxx_4561956128(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.37446439410397) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4561955936(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.0513449774584127) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4561957568(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.3915206541943546) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4561957616(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.0563491198998087) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4561957232(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.7417032909633996) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.7417032909633996) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.7417032909633996) _gate_q_1;
}
gate rxx_4561955888(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.9494528801697415) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate rzz_4561626528(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.6022158364761214) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4561958240(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.535848205938803) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4561958480(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.7299860512848777, -0.8825268787076187, 0.8825268787076187) _gate_q_0;
}
gate rxx_4561956848(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.018843945262684434) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate xx_plus_yy_4561957904(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.5999362488572124) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.0060858434493523) _gate_q_1;
  ry(-1.0060858434493523) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.5999362488572124) _gate_q_0;
}
gate rxx_4561959200(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.401879983132871) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4561958768(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.4490527142115863, 1.6193087331392428, -1.6193087331392428) _gate_q_0;
}
gate xx_plus_yy_4561956224(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.7732887308310659) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.7931179550407056) _gate_q_1;
  ry(-0.7931179550407056) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.7732887308310659) _gate_q_0;
}
gate xx_minus_yy_4561959536(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.6946473845674856) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.2276080460181675) _gate_q_0;
  ry(-2.2276080460181675) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.6946473845674856) _gate_q_1;
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
gate xx_minus_yy_4561958528(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.744087758151906) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.9280904094641852) _gate_q_0;
  ry(-0.9280904094641852) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.744087758151906) _gate_q_1;
}
gate cu3_4561958576(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.604075327528266) _gate_q_0;
  u1(-0.8652199327613805) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.1657047190308787, 0, -4.604075327528266) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.1657047190308787, 5.4692952602896465, 0) _gate_q_1;
}
gate rxx_4561945472(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.0534375579526833) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4561959776(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.415079465091261, 4.001758728197458, -4.001758728197458) _gate_q_0;
}
gate rzx_4561960256(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.160189664255619) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4561959968(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.9536232073560216) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4561960208(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.569240426840338) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.7061843123598487) _gate_q_0;
  ry(-0.7061843123598487) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.569240426840338) _gate_q_1;
}
gate rzx_4561958816(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.122031721519604) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4561959152(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.936333150761347) _gate_q_0;
  u1(-1.148184280051226) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1753898388965172, 0, -1.936333150761347) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1753898388965172, 3.084517430812573, 0) _gate_q_1;
}
gate cu3_4561959920(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.8141287646100774) _gate_q_0;
  u1(1.6354521226387908) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.127471072372118, 0, -1.8141287646100774) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.127471072372118, 0.1786766419712866, 0) _gate_q_1;
}
gate cu3_4562272384(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.8448556484523553) _gate_q_0;
  u1(1.062472482337394) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.097869823879925, 0, -2.8448556484523553) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.097869823879925, 1.7823831661149612, 0) _gate_q_1;
}
gate rzz_4562273344(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.504097709820885) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4562272480(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1593119829900143) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4562272672(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.746129115040544) _gate_q_0;
  u1(-1.5980838174702319) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.562482230396954, 0, -2.746129115040544) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.562482230396954, 4.344212932510776, 0) _gate_q_1;
}
gate rzz_4562273248(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.1319479667800885) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4562272864(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.5809997175018218, 2.808956723219379, -2.808956723219379) _gate_q_0;
}
qubit[5] q;
sxdg q[2];
sdg q[3];
ccx q[4], q[0], q[1];
cu(2.997811451739081, 0.4654596843082078, 3.9407311804187874, 2.7681084996459804) q[0], q[4];
u1(5.897027385866926) q[3];
s q[1];
sdg q[2];
id q[4];
xx_minus_yy_4561949936(4.541766988697303, 5.01198470798641) q[1], q[3];
y q[0];
r_4561948544(3.9473498749941727, 1.1496445219069602) q[2];
xx_minus_yy_4561948880(1.8292454089635541, 0.5177998015570116) q[1], q[3];
s q[4];
u1(4.772050115009037) q[2];
sdg q[0];
csdg q[3], q[0];
id q[4];
crz(6.137499279531251) q[1], q[2];
ecr q[0], q[4];
ccx q[2], q[3], q[1];
u3(0.9945091303389951, 2.7036353425520874, 4.629615520308836) q[2];
dcx q[4], q[1];
ecr q[0], q[3];
z q[0];
csx q[2], q[3];
y q[1];
r_4561948688(2.842191998853472, 0.8481189475815731) q[4];
z q[3];
x q[1];
u1(4.6468242565298326) q[4];
cu(4.290621258107838, 1.9898342696173306, 2.4998072255693566, 2.152530686191737) q[0], q[2];
csdg q[0], q[3];
rzz_4561950272(0.049117604913913725) q[4], q[2];
u3(5.028964347941174, 4.259763057016123, 3.489278191490451) q[1];
cx q[2], q[3];
ccx q[0], q[4], q[1];
cswap q[4], q[1], q[3];
u1(4.179561192660444) q[0];
tdg q[2];
u3(1.0303791795264574, 1.8140974008066444, 1.0526271364868505) q[3];
id q[0];
cu3_4561950944(3.9346025026849314, 1.0213280250943517, 5.308650593988923) q[1], q[4];
u2(2.2028917921854854, 2.0238602417000333) q[2];
ch q[4], q[3];
p(1.799408114085185) q[0];
sdg q[2];
sxdg q[1];
r_4561950464(0.1083993034690391, 1.8131991750264957) q[2];
cswap q[4], q[0], q[3];
h q[1];
rccx q[2], q[4], q[3];
u3(3.2098566809557108, 2.8359280364697925, 3.6798648156678286) q[0];
sx q[1];
x q[3];
cz q[1], q[2];
rzz_4561950848(5.436358504809388) q[4], q[0];
dcx q[4], q[1];
cs q[3], q[2];
u2(3.607172488413043, 1.3684437015823625) q[0];
dcx q[4], q[1];
xx_plus_yy_4561950704(1.2435624253987778, 0.40047295833358604) q[2], q[3];
rz(0.04160388346079169) q[0];
z q[3];
u1(1.1055279562371942) q[1];
cu1_4561951232(1.4188129391518283) q[0], q[2];
r_4560920960(3.869038487854102, 5.090397970838545) q[4];
xx_plus_yy_4561950800(2.8570684971257037, 1.0159783185032825) q[4], q[2];
csx q[3], q[0];
r_4561951616(4.326631690566088, 3.546662259786806) q[1];
x q[1];
u3(1.5655620960969938, 1.294900108307948, 3.0576790684102755) q[3];
cu3_4561951856(3.9925242424505645, 3.6647337991947424, 5.771501012068526) q[0], q[2];
sdg q[4];
cu(3.1064287281867276, 2.568996260575416, 5.006519650232118, 4.520067667046371) q[0], q[1];
sxdg q[3];
id q[2];
U(2.637847084253948, 0.39772719978111565, 2.5926411515240972) q[4];
sx q[1];
z q[2];
ch q[3], q[0];
id q[4];
x q[0];
rxx_4561952192(3.580845764553131) q[2], q[1];
u2(4.615116290468998, 5.561658070444304) q[3];
ry(1.5857417645653344) q[4];
crx(0.6077356579956165) q[2], q[3];
u1(4.761985135060539) q[1];
t q[0];
u1(3.7537068606998285) q[4];
u3(4.006387971346458, 2.7511177891278034, 5.847780822535483) q[4];
cu3_4561955504(3.673894931196166, 5.049411422667414, 5.970280053446655) q[0], q[1];
rz(1.466468653005143) q[2];
sx q[3];
dcx q[2], q[4];
ccx q[0], q[1], q[3];
cswap q[4], q[3], q[1];
ryy_4561951040(1.5447456054323305) q[2], q[0];
xx_minus_yy_4561952480(2.5814176588241358, 5.747265648926949) q[4], q[0];
xx_plus_yy_4561955312(2.2003401029612335, 1.273536946720375) q[2], q[1];
U(0.43167279556055743, 0.8033477682726626, 4.65345953177137) q[3];
cu(0.8511164733663449, 4.106296926134336, 1.8787359840125168, 2.9485420238904956) q[2], q[1];
ccx q[3], q[4], q[0];
cs q[4], q[0];
sdg q[1];
s q[3];
y q[2];
cswap q[2], q[3], q[1];
tdg q[4];
ry(3.745045839633368) q[0];
rxx_4561952768(1.775145354096919) q[3], q[0];
cy q[2], q[1];
U(3.4648231969957206, 3.748240996561721, 3.6200425799294425) q[4];
sxdg q[1];
r_4561950608(0.9335186990659008, 0.8273198407612524) q[2];
ryy_4561951952(5.686113300791076) q[0], q[3];
sxdg q[4];
sx q[3];
cp(2.9306623741927993) q[1], q[2];
csdg q[0], q[4];
sxdg q[0];
cu(6.072846312200642, 0.9401035703706033, 5.476569804824906, 1.8448377301158467) q[2], q[3];
csx q[4], q[1];
crx(2.574703215785754) q[4], q[2];
cu1_4561950032(3.9667131695422526) q[0], q[3];
sdg q[1];
xx_plus_yy_4561957184(0.4683884407891428, 1.5862244971873722) q[3], q[1];
csx q[0], q[2];
x q[4];
cswap q[2], q[0], q[4];
cy q[3], q[1];
u1(1.8333180337050126) q[3];
csdg q[0], q[2];
ry(3.488370111927326) q[4];
s q[1];
swap q[4], q[0];
ch q[2], q[3];
u1(3.1505881587743203) q[1];
ry(1.430609114542147) q[0];
s q[2];
tdg q[3];
rx(5.061956809216025) q[4];
h q[1];
swap q[0], q[3];
rxx_4561956128(2.37446439410397) q[1], q[2];
h q[4];
rzz_4561955936(2.0513449774584127) q[1], q[3];
ecr q[4], q[2];
u2(3.7981098415769683, 5.789357472663181) q[0];
u2(3.109809424847529, 5.157288803642478) q[3];
cz q[4], q[2];
rxx_4561957568(1.3915206541943546) q[0], q[1];
y q[0];
rx(3.003892050050075) q[3];
cry(4.2883623448691495) q[2], q[4];
sdg q[1];
U(0.10966626012257341, 5.752310115200865, 0.8880229162287505) q[1];
ryy_4561957616(1.0563491198998087) q[3], q[4];
cu1_4561957232(3.483406581926799) q[2], q[0];
swap q[0], q[2];
sdg q[1];
cz q[3], q[4];
ry(2.6109900039479785) q[4];
rxx_4561955888(4.9494528801697415) q[2], q[1];
sxdg q[0];
z q[3];
crx(0.5008553525688005) q[1], q[3];
ccz q[2], q[4], q[0];
x q[0];
swap q[4], q[2];
p(6.241789480520429) q[1];
p(1.362265454160896) q[3];
rz(1.92873680230802) q[0];
z q[3];
rzz_4561626528(2.6022158364761214) q[1], q[4];
s q[2];
s q[2];
cu(6.189709717358735, 5.8406487913562195, 4.14944425421128, 5.781711459259883) q[0], q[3];
cx q[1], q[4];
rzz_4561958240(1.535848205938803) q[0], q[1];
cu(5.565565281261518, 1.5043227305978666, 6.077225329646059, 1.6724809269105738) q[4], q[2];
x q[3];
cy q[2], q[4];
p(2.7613058801328902) q[0];
sdg q[1];
r_4561958480(1.7299860512848777, 0.6882694480872779) q[3];
x q[3];
x q[4];
crz(4.281543406570363) q[0], q[1];
z q[2];
cy q[4], q[2];
cu(4.978950448643953, 1.4118629203039752, 3.1107281365832318, 3.714769469435626) q[0], q[1];
rz(2.7371327594393766) q[3];
h q[3];
ch q[2], q[0];
u3(2.3162986225021878, 3.6932858796496197, 5.431903415723014) q[4];
tdg q[1];
rxx_4561956848(0.018843945262684434) q[0], q[3];
iswap q[1], q[4];
U(5.893147348835918, 4.786566518076426, 4.48162188208455) q[2];
sxdg q[2];
xx_plus_yy_4561957904(2.0121716868987045, 1.5999362488572124) q[1], q[3];
cp(5.678066834854571) q[0], q[4];
rxx_4561959200(3.401879983132871) q[0], q[1];
tdg q[2];
u1(3.7103441918267284) q[4];
r_4561958768(1.4490527142115863, 3.1901050599341394) q[3];
ecr q[1], q[3];
ccx q[4], q[0], q[2];
ry(5.725293740981359) q[2];
u2(2.3616562920618236, 1.302803203448638) q[1];
z q[0];
x q[3];
ry(5.900599905603836) q[4];
xx_plus_yy_4561956224(1.5862359100814112, 1.7732887308310659) q[3], q[0];
ry(0.4330918168446672) q[1];
xx_minus_yy_4561959536(4.455216092036335, 2.6946473845674856) q[4], q[2];
rcccx q[0], q[1], q[2], q[4];
U(5.039894662261723, 1.9913374928243612, 1.5428315202519338) q[3];
crx(3.537289970254883) q[0], q[4];
sdg q[2];
cu(1.1288530063736144, 0.48385904796417417, 2.197111545852257, 3.076315035454533) q[3], q[1];
cu(0.617310976722316, 0.834344492600757, 6.040239868175599, 3.405193380156033) q[1], q[3];
sdg q[2];
xx_minus_yy_4561958528(1.8561808189283704, 5.744087758151906) q[4], q[0];
swap q[4], q[1];
u2(0.5239690092179946, 6.096221628472428) q[3];
cz q[2], q[0];
cu3_4561958576(0.3314094380617574, 5.4692952602896465, 3.7388553947668854) q[4], q[2];
t q[1];
p(4.049984950078733) q[0];
rx(5.93798031546962) q[3];
rxx_4561945472(3.0534375579526833) q[0], q[4];
u3(1.369361801660137, 2.766427713012846, 2.805374694075461) q[2];
cp(1.6068780245211811) q[3], q[1];
cswap q[4], q[3], q[0];
U(1.356469949382999, 2.1415549311985624, 4.980317331341379) q[2];
ry(0.7446464708820297) q[1];
iswap q[1], q[2];
sx q[4];
h q[0];
sxdg q[3];
ch q[1], q[4];
csx q[3], q[2];
r_4561959776(4.415079465091261, 5.572555054992354) q[0];
rx(4.8925190793317785) q[3];
rcccx q[0], q[1], q[4], q[2];
t q[2];
u1(3.776823168716777) q[0];
rzx_4561960256(4.160189664255619) q[4], q[1];
tdg q[3];
ryy_4561959968(2.9536232073560216) q[3], q[4];
csx q[1], q[0];
t q[2];
xx_minus_yy_4561960208(1.4123686247196974, 4.569240426840338) q[4], q[3];
ccz q[0], q[2], q[1];
ccx q[0], q[1], q[2];
crx(1.6054279236529305) q[3], q[4];
csx q[0], q[4];
h q[2];
csx q[3], q[1];
z q[3];
cry(4.644326922006656) q[0], q[4];
tdg q[1];
u3(4.5671830398019155, 5.111436432607028, 1.1564726628676274) q[2];
rccx q[1], q[3], q[2];
sdg q[4];
rx(0.6240378761790504) q[0];
U(4.748220308982311, 3.218253460883191, 0.7410389460317615) q[4];
rzx_4561958816(5.122031721519604) q[0], q[1];
cu3_4561959152(2.3507796777930343, 3.084517430812573, 0.7881488707101211) q[2], q[3];
ecr q[0], q[1];
u2(4.346201065515067, 2.8161149405506753) q[3];
iswap q[2], q[4];
ch q[0], q[2];
id q[1];
sx q[4];
tdg q[3];
swap q[0], q[4];
cx q[1], q[2];
ry(3.8980296945980997) q[3];
crz(3.0836977041320806) q[4], q[2];
cswap q[0], q[1], q[3];
cu(0.8375694952790548, 2.0122204734105136, 1.3996455617201797, 5.994172643273592) q[2], q[1];
s q[3];
ch q[4], q[0];
ccz q[0], q[4], q[3];
u3(1.182993072379546, 2.0552392357015012, 3.843888235610231) q[1];
u1(4.383801725756367) q[2];
t q[2];
cz q[1], q[4];
cu3_4561959920(4.254942144744236, 0.1786766419712866, 3.4495808872488682) q[0], q[3];
sx q[4];
swap q[0], q[3];
u2(5.763411236860914, 2.6270913108442477) q[2];
z q[1];
p(3.050435800764834) q[3];
rx(5.60930646003002) q[0];
ccz q[1], q[2], q[4];
u2(6.1135834291120785, 4.172278487879847) q[1];
cu3_4562272384(4.19573964775985, 1.7823831661149612, 3.9073281307897494) q[0], q[2];
crx(1.0940989544678028) q[3], q[4];
s q[0];
rz(4.898601310171102) q[4];
s q[2];
cp(5.375220889354659) q[3], q[1];
iswap q[3], q[1];
u3(2.373534441367822, 5.1948618862286695, 3.532365151964843) q[0];
rzz_4562273344(4.504097709820885) q[4], q[2];
sx q[2];
ryy_4562272480(1.1593119829900143) q[3], q[0];
cu3_4562272672(5.124964460793908, 4.344212932510776, 1.148045297570312) q[4], q[1];
csdg q[0], q[4];
rzz_4562273248(1.1319479667800885) q[1], q[2];
z q[3];
csx q[2], q[1];
csx q[4], q[0];
s q[3];
ccx q[2], q[4], q[0];
r_4562272864(2.5809997175018218, 4.379753050014275) q[3];
t q[1];
id q[2];
cs q[1], q[4];
csx q[0], q[3];
