OPENQASM 3.0;
include "stdgates.inc";
gate r_4564435072(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.767514349899634, 3.475356764231833, -3.475356764231833) _gate_q_0;
}
gate r_4564435984(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.8153746216035986, 4.637214355247739, -4.637214355247739) _gate_q_0;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4564440160(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.0266041832803205) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.2510203251792618) _gate_q_0;
  ry(-2.2510203251792618) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.0266041832803205) _gate_q_1;
}
gate rxx_4564437904(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6087763634707104) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4564436320(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.3858524710290327) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4564438096(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.2387807009638947) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.659673463373981) _gate_q_0;
  ry(-1.659673463373981) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.2387807009638947) _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
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
gate rxx_4564451200(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.097339819234334) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4564439920(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.978254225757513) _gate_q_1;
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
gate rzz_4564437328(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.636509410752573) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu1_4564439056(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.7088378837717324) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.7088378837717324) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.7088378837717324) _gate_q_1;
}
gate xx_plus_yy_4564438576(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.214648231395157) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.318869903737329) _gate_q_1;
  ry(-2.318869903737329) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.214648231395157) _gate_q_0;
}
gate xx_plus_yy_4564437712(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.6678863720787267) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.05714196144439199) _gate_q_1;
  ry(-0.05714196144439199) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.6678863720787267) _gate_q_0;
}
gate rxx_4564447792(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.2047115062065368) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4564435408(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.6362101788302437, 3.5227220261200642, -3.5227220261200642) _gate_q_0;
}
gate r_4564436416(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.382708358141715, -0.2613338419306426, 0.2613338419306426) _gate_q_0;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate r_4564438816(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.431909953570579, -0.5114703920667278, 0.5114703920667278) _gate_q_0;
}
gate rzz_4564437472(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.088899440064115) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4564435504(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.218540723378746) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4564448608(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.180259690383991) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4564446832(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.7351282202658163) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.7351282202658163) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.7351282202658163) _gate_q_1;
}
gate r_4564435840(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.7188786602299786, -0.935282052381541, 0.935282052381541) _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
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
gate cu1_4564436944(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.4539307877584816) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.4539307877584816) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.4539307877584816) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate ryy_4564440496(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.062358124908291214) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4564441312(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.810084996170512) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.18057070634535) _gate_q_0;
  ry(-1.18057070634535) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.810084996170512) _gate_q_1;
}
gate xx_minus_yy_4564435936(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.924297903954569) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.11239372413346833) _gate_q_0;
  ry(-0.11239372413346833) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.924297903954569) _gate_q_1;
}
gate cu1_4564450192(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(3.102470507035536) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-3.102470507035536) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(3.102470507035536) _gate_q_1;
}
gate ryy_4564448080(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.863708962092885) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4564450048(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.478171807488732) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.304356976040309) _gate_q_1;
  ry(-2.304356976040309) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.478171807488732) _gate_q_0;
}
gate r_4564445968(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.8970805662032849, 2.6657162590498134, -2.6657162590498134) _gate_q_0;
}
gate rzz_4564448800(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.8547799692336366) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4564448224(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.537786233858566) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4564449664(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.147511693018403) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.147511693018403) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.147511693018403) _gate_q_1;
}
gate cu3_4564447696(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.5617914395724957) _gate_q_0;
  u1(0.5804958081094828) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.9188836595431886, 0, -2.5617914395724957) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.9188836595431886, 1.981295631463013, 0) _gate_q_1;
}
gate ryy_4564441264(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.877024457720905) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4564443760(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.022982419635422, 2.213403671288803, -2.213403671288803) _gate_q_0;
}
gate rxx_4564440304(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.742335789195597) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4564442080(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.4627162342652673) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.005657981155798175) _gate_q_1;
  ry(-0.005657981155798175) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.4627162342652673) _gate_q_0;
}
gate xx_minus_yy_4564443184(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.769573408938503) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.1494599520625934) _gate_q_0;
  ry(-1.1494599520625934) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.769573408938503) _gate_q_1;
}
gate xx_plus_yy_4564443520(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.696236666561466) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.4870340023383506) _gate_q_1;
  ry(-1.4870340023383506) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.696236666561466) _gate_q_0;
}
gate cu1_4564440928(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.9717203970243313) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.9717203970243313) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.9717203970243313) _gate_q_1;
}
gate cu1_4564437424(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.2633772396179058) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.2633772396179058) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.2633772396179058) _gate_q_1;
}
gate xx_minus_yy_4564433664(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.833211593869964) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.3697429270197712) _gate_q_0;
  ry(-1.3697429270197712) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.833211593869964) _gate_q_1;
}
gate cu1_4564428720(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.1314064876370931) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.1314064876370931) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.1314064876370931) _gate_q_1;
}
gate rxx_4564442848(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.25965323383889) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4564426992(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.563107709316281) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4564432704(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.033631591944734) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.47844246358669457) _gate_q_1;
  ry(-0.47844246358669457) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.033631591944734) _gate_q_0;
}
gate rxx_4564432368(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.936401484239799) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4564447840(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.0254646460164194) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4534002480(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
}
gate cu1_4534002720(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(-pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
}
gate cu1_4515584416(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
}
gate cu1_4522242080(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(-pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
}
gate cu1_4534176464(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
}
gate cu1_4534176608(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(-pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
}
gate cu1_4534176704(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(pi/16) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-pi/16) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(pi/16) _gate_q_1;
}
gate c3sx _gate_q_0, _gate_q_1, _gate_q_2, _gate_q_3 {
  h _gate_q_3;
  cu1_4534002480(pi/8) _gate_q_0, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_3;
  cu1_4534002720(-pi/8) _gate_q_1, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_3;
  cu1_4515584416(pi/8) _gate_q_1, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_1, _gate_q_2;
  h _gate_q_3;
  cu1_4522242080(-pi/8) _gate_q_2, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_0, _gate_q_2;
  h _gate_q_3;
  cu1_4534176464(pi/8) _gate_q_2, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_1, _gate_q_2;
  h _gate_q_3;
  cu1_4534176608(-pi/8) _gate_q_2, _gate_q_3;
  h _gate_q_3;
  cx _gate_q_0, _gate_q_2;
  h _gate_q_3;
  cu1_4534176704(pi/8) _gate_q_2, _gate_q_3;
  h _gate_q_3;
}
gate ryy_4564434336(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.577458707164203) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4564434720(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.872422813925887) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.331876830321559) _gate_q_0;
  ry(-2.331876830321559) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.872422813925887) _gate_q_1;
}
gate rzx_4564434096(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.2418966889914986) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4564432656(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.448084445927969) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu1_4564429392(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.7220271136816194) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.7220271136816194) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.7220271136816194) _gate_q_1;
}
gate ryy_4564433904(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.106398581422871) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4564434864(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.2722724624682713) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.656830802432429) _gate_q_1;
  ry(-2.656830802432429) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.2722724624682713) _gate_q_0;
}
qubit[10] q;
r_4564435072(2.767514349899634, 5.04615309102673) q[8];
r_4564435984(3.8153746216035986, 6.2080106820426355) q[6];
rccx q[9], q[3], q[1];
ch q[7], q[0];
rccx q[4], q[2], q[5];
rcccx q[1], q[5], q[7], q[2];
rz(2.0450384595836115) q[4];
ccx q[6], q[0], q[8];
xx_minus_yy_4564440160(4.5020406503585235, 5.0266041832803205) q[9], q[3];
tdg q[4];
id q[0];
rccx q[3], q[8], q[7];
ch q[9], q[5];
rxx_4564437904(0.6087763634707104) q[2], q[1];
h q[6];
rxx_4564436320(0.3858524710290327) q[9], q[8];
xx_minus_yy_4564438096(3.319346926747962, 3.2387807009638947) q[3], q[1];
csdg q[6], q[2];
rccx q[0], q[5], q[7];
t q[4];
swap q[2], q[8];
U(5.015944539816054, 3.3874438896377397, 0.24864297332520802) q[6];
s q[7];
sdg q[4];
u2(0.7096773100340192, 3.516234145200588) q[5];
crx(3.8945439852776977) q[1], q[9];
t q[3];
rx(1.479548423089052) q[0];
csx q[0], q[4];
ch q[7], q[5];
swap q[9], q[6];
rxx_4564451200(3.097339819234334) q[2], q[8];
ch q[1], q[3];
cswap q[4], q[9], q[5];
rxx_4564439920(5.978254225757513) q[1], q[3];
cswap q[2], q[6], q[7];
ry(3.208671510817732) q[8];
u2(5.288325499941271, 5.561029826597761) q[0];
iswap q[1], q[2];
rzz_4564437328(4.636509410752573) q[0], q[8];
ch q[4], q[6];
u2(1.6430763796447017, 1.3956045458159483) q[7];
cx q[3], q[5];
tdg q[9];
x q[4];
x q[7];
tdg q[2];
t q[3];
cp(4.611497757753628) q[5], q[9];
tdg q[1];
t q[8];
sx q[6];
U(0.9255094743063604, 1.2388821880405003, 4.7475012770401035) q[0];
cu1_4564439056(1.4176757675434648) q[7], q[1];
rccx q[0], q[8], q[6];
xx_plus_yy_4564438576(4.637739807474658, 4.214648231395157) q[5], q[3];
ccx q[2], q[9], q[4];
cp(2.0195479254865205) q[7], q[1];
cry(2.4974507445979643) q[8], q[6];
z q[4];
xx_plus_yy_4564437712(0.11428392288878397, 3.6678863720787267) q[3], q[5];
rxx_4564447792(2.2047115062065368) q[2], q[9];
id q[0];
r_4564435408(1.6362101788302437, 5.093518352914961) q[6];
r_4564436416(2.382708358141715, 1.309462484864254) q[3];
cx q[7], q[1];
cp(1.293256761152365) q[9], q[8];
cry(2.583516565400307) q[4], q[0];
cry(5.32243191827233) q[5], q[2];
ccx q[4], q[7], q[0];
s q[8];
cswap q[6], q[5], q[9];
cy q[3], q[1];
sdg q[2];
id q[3];
swap q[5], q[7];
cs q[9], q[2];
cs q[4], q[0];
r_4564438816(1.431909953570579, 1.0593259347281687) q[8];
p(1.8005275158429175) q[1];
h q[6];
U(6.140014783986696, 0.7608783589577369, 2.7489166971333083) q[9];
crz(5.013851419092282) q[8], q[7];
rccx q[2], q[6], q[1];
crx(5.555256452469552) q[0], q[4];
crz(5.497791599886002) q[5], q[3];
rzz_4564437472(2.088899440064115) q[8], q[5];
crx(4.2323742216633145) q[2], q[7];
swap q[9], q[6];
rxx_4564435504(2.218540723378746) q[3], q[1];
swap q[0], q[4];
rxx_4564448608(4.180259690383991) q[0], q[1];
z q[8];
iswap q[3], q[4];
cswap q[7], q[9], q[5];
u3(4.647814100054547, 3.08648562233345, 5.326259143841005) q[6];
ry(4.369160653705583) q[2];
cu1_4564446832(3.4702564405316325) q[9], q[8];
tdg q[1];
p(2.7831886564662573) q[4];
cswap q[7], q[0], q[6];
u3(4.935712410123742, 4.3900766777733295, 4.793136964200609) q[3];
r_4564435840(1.7188786602299786, 0.6355142744133555) q[5];
s q[2];
crx(4.947994668420953) q[1], q[0];
ccz q[6], q[8], q[4];
cry(4.51637457771434) q[2], q[9];
ecr q[3], q[5];
id q[7];
rx(1.2980603522864673) q[4];
csdg q[6], q[8];
cu1_4564436944(0.9078615755169632) q[3], q[5];
dcx q[7], q[2];
sdg q[1];
s q[0];
x q[9];
ccz q[2], q[6], q[0];
cswap q[1], q[7], q[3];
swap q[5], q[4];
ryy_4564440496(0.062358124908291214) q[9], q[8];
xx_minus_yy_4564441312(2.3611414126907, 4.810084996170512) q[9], q[4];
xx_minus_yy_4564435936(0.22478744826693667, 4.924297903954569) q[3], q[6];
cu1_4564450192(6.204941014071072) q[5], q[0];
cx q[2], q[1];
ryy_4564448080(4.863708962092885) q[7], q[8];
ccx q[8], q[9], q[6];
x q[5];
tdg q[3];
xx_plus_yy_4564450048(4.608713952080618, 2.478171807488732) q[7], q[2];
z q[0];
u2(2.7965030672830764, 0.31627883008941543) q[1];
r_4564445968(0.8970805662032849, 4.23651258584471) q[4];
u2(3.6928820890505665, 4.654640986007055) q[9];
ccx q[1], q[4], q[7];
U(2.9869158914065266, 3.4665734746868075, 1.3984398551845336) q[0];
t q[6];
t q[8];
s q[2];
tdg q[5];
rz(4.420887241832479) q[3];
id q[3];
rcccx q[1], q[4], q[9], q[6];
id q[7];
crx(3.0409167697789243) q[2], q[5];
ry(0.9971287106548006) q[0];
sdg q[8];
u1(1.863447169266186) q[7];
cs q[4], q[5];
rzz_4564448800(3.8547799692336366) q[8], q[6];
sxdg q[2];
ccx q[0], q[9], q[1];
rz(0.09339929623379212) q[3];
ch q[8], q[9];
cswap q[1], q[7], q[0];
csx q[5], q[6];
h q[2];
p(1.0636230228881405) q[4];
tdg q[3];
p(5.4917310116502245) q[1];
y q[9];
U(2.4585500708986423, 0.7364406847013374, 0.16348977066009193) q[7];
cry(4.430674569861842) q[3], q[4];
h q[6];
rxx_4564448224(2.537786233858566) q[8], q[5];
s q[0];
x q[2];
cswap q[7], q[2], q[6];
csdg q[4], q[8];
dcx q[3], q[0];
cu1_4564449664(4.295023386036806) q[1], q[9];
y q[5];
crz(1.4472237397247825) q[2], q[1];
cz q[6], q[3];
sx q[4];
cu(2.3986291575717136, 3.475934895681029, 4.426902463332475, 0.4914704098447328) q[9], q[8];
u1(3.112454592598972) q[7];
p(4.557739732142236) q[0];
id q[5];
cu3_4564447696(1.8377673190863772, 1.981295631463013, 3.1422872476819785) q[8], q[2];
cs q[4], q[9];
U(0.7397613661314036, 1.5104570783199762, 2.3147612406111238) q[0];
rccx q[3], q[5], q[1];
cry(0.314342004129625) q[7], q[6];
ch q[4], q[9];
cu(0.3116045648865827, 0.4364583482369163, 1.987817017644049, 2.7310050821942236) q[8], q[3];
sdg q[7];
dcx q[0], q[1];
ryy_4564441264(4.877024457720905) q[6], q[2];
t q[5];
u2(2.253008220778013, 5.020298687883431) q[5];
u2(1.526150384083414, 4.216874506827837) q[6];
r_4564443760(4.022982419635422, 3.7841999980837) q[4];
rxx_4564440304(5.742335789195597) q[2], q[9];
xx_plus_yy_4564442080(0.01131596231159635, 0.4627162342652673) q[0], q[8];
ccx q[1], q[7], q[3];
xx_minus_yy_4564443184(2.298919904125187, 2.769573408938503) q[7], q[6];
U(6.109978431484196, 5.3817563694434485, 5.955629333342471) q[4];
s q[1];
p(1.8024959522615889) q[2];
iswap q[0], q[9];
crz(5.324748239896242) q[5], q[8];
h q[3];
xx_plus_yy_4564443520(2.974068004676701, 5.696236666561466) q[7], q[1];
tdg q[3];
cy q[4], q[5];
u1(2.442536399328139) q[2];
rccx q[8], q[6], q[0];
s q[9];
dcx q[3], q[0];
cu1_4564440928(1.9434407940486627) q[2], q[5];
ecr q[4], q[1];
cu1_4564437424(0.5267544792358116) q[6], q[9];
id q[8];
h q[7];
xx_minus_yy_4564433664(2.7394858540395424, 4.833211593869964) q[3], q[7];
cu1_4564428720(0.2628129752741862) q[8], q[0];
id q[5];
p(0.4999563444720475) q[1];
sdg q[4];
cs q[9], q[6];
y q[2];
crx(0.9107955862528835) q[9], q[6];
rxx_4564442848(2.25965323383889) q[1], q[4];
csdg q[2], q[7];
crz(5.765576459222907) q[0], q[5];
sxdg q[3];
ry(0.6970923543689821) q[8];
sdg q[4];
crx(5.9369931057222685) q[0], q[5];
y q[1];
rcccx q[7], q[9], q[3], q[2];
y q[6];
ry(5.8631880120914515) q[8];
rxx_4564426992(4.563107709316281) q[1], q[7];
dcx q[3], q[6];
xx_plus_yy_4564432704(0.9568849271733891, 5.033631591944734) q[4], q[2];
u3(4.400603433985703, 0.3923039611332091, 0.16332404061465466) q[8];
ecr q[9], q[0];
s q[5];
sdg q[4];
dcx q[3], q[7];
rx(2.992969771655971) q[8];
sx q[5];
swap q[6], q[1];
rxx_4564432368(4.936401484239799) q[9], q[2];
h q[0];
csx q[8], q[1];
u1(5.433752469708298) q[7];
cswap q[2], q[6], q[4];
sxdg q[0];
crz(3.4768778737235717) q[9], q[3];
sdg q[5];
rxx_4564447840(1.0254646460164194) q[4], q[9];
rz(2.0215954345306275) q[7];
tdg q[6];
u2(6.205525155753031, 0.5040989415851227) q[3];
rcccx q[0], q[5], q[2], q[1];
sxdg q[8];
rccx q[3], q[2], q[6];
cry(0.40843623211942565) q[7], q[4];
cz q[1], q[0];
u1(2.7831996518629354) q[8];
U(3.1481893869941007, 4.389225867756502, 0.12888302175199737) q[5];
x q[9];
c3sx q[1], q[0], q[7], q[3];
rz(0.14725806126432886) q[9];
ryy_4564434336(4.577458707164203) q[6], q[2];
csdg q[5], q[4];
u3(0.2503739369988563, 3.6118086199868014, 0.5391192895810584) q[8];
xx_minus_yy_4564434720(4.663753660643118, 1.872422813925887) q[1], q[8];
cu(3.538815701914508, 2.51553735644713, 6.056359354619279, 4.544262021832475) q[3], q[5];
rzx_4564434096(1.2418966889914986) q[6], q[2];
sx q[9];
u3(3.211192204173042, 0.8368176716653883, 3.5241106353552225) q[4];
iswap q[0], q[7];
rzz_4564432656(5.448084445927969) q[9], q[3];
cu1_4564429392(3.444054227363239) q[2], q[8];
ecr q[4], q[7];
dcx q[5], q[0];
sxdg q[6];
rz(5.050439506682038) q[1];
p(1.8218779669596807) q[2];
ryy_4564433904(1.106398581422871) q[4], q[0];
ccx q[1], q[9], q[7];
rcccx q[5], q[8], q[3], q[6];
cz q[3], q[9];
csx q[6], q[4];
ch q[0], q[1];
tdg q[2];
h q[7];
y q[8];
ry(4.579065520505395) q[5];
xx_plus_yy_4564434864(5.313661604864858, 1.2722724624682713) q[9], q[4];
c3sx q[7], q[6], q[5], q[3];
tdg q[1];
cp(5.995398037322438) q[8], q[0];
y q[2];
