OPENQASM 3.0;
include "stdgates.inc";
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
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
gate rxx_4540829232(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.7256568464668542) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4540827696(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.375575115760271) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.6367448389843586) _gate_q_0;
  ry(-2.6367448389843586) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.375575115760271) _gate_q_1;
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
gate r_4540829616(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.4006142488661844, -1.3567720915055106, 1.3567720915055106) _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cu3_4540830528(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.053523611903341) _gate_q_0;
  u1(-0.3913535530745844) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.9925053279502285, 0, -5.053523611903341) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.9925053279502285, 5.444877164977925, 0) _gate_q_1;
}
gate rzx_4540830672(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.4105662455308265) _gate_q_1;
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
gate rzx_4540831056(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.9207489925202896) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4540831248(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.177120479842616) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.8359894455377602) _gate_q_1;
  ry(-0.8359894455377602) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.177120479842616) _gate_q_0;
}
gate cu3_4540831344(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.862266820441396) _gate_q_0;
  u1(0.41956613082529115) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.9039386884957158, 0, -2.862266820441396) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.9039386884957158, 2.442700689616105, 0) _gate_q_1;
}
gate r_4540830720(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.281064774409678, 1.7588059361917345, -1.7588059361917345) _gate_q_0;
}
gate r_4540831632(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.500067593575533, -0.11057489919151986, 0.11057489919151986) _gate_q_0;
}
gate cu1_4540831680(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.3283260824008067) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.3283260824008067) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.3283260824008067) _gate_q_1;
}
gate xx_minus_yy_4540831584(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.005818627701149) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.088432837456149) _gate_q_0;
  ry(-2.088432837456149) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.005818627701149) _gate_q_1;
}
gate ryy_4540831872(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.4316355572129187) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4540831920(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.3803149591333295) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4540831488(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.6517483752818964) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate xx_plus_yy_4540832736(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.173656702959859) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.8074108188974876) _gate_q_1;
  ry(-2.8074108188974876) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.173656702959859) _gate_q_0;
}
gate r_4540833072(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.2201815481307117, -0.611240230800726, 0.611240230800726) _gate_q_0;
}
gate rzz_4540833456(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.9768843970020886) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4540833408(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.159850173142519) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4540833744(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.006676765851418, -0.5167703799569467, 0.5167703799569467) _gate_q_0;
}
gate xx_plus_yy_4540834032(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.395914765363788) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.2745159722950511) _gate_q_1;
  ry(-0.2745159722950511) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.395914765363788) _gate_q_0;
}
gate r_4540834464(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.6713232949202754, 2.261692218685278, -2.261692218685278) _gate_q_0;
}
gate cu3_4540834704(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.619903371006647) _gate_q_0;
  u1(1.816900407042145) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.36861982861285814, 0, -2.619903371006647) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.36861982861285814, 0.8030029639645019, 0) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate cu3_4540834416(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.74990940446677) _gate_q_0;
  u1(0.21014917393942412) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.7760320761046826, 0, -4.74990940446677) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.7760320761046826, 4.539760230527346, 0) _gate_q_1;
}
gate xx_plus_yy_4540834752(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.620460885333275) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.0627494420045889) _gate_q_1;
  ry(-1.0627494420045889) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.620460885333275) _gate_q_0;
}
gate ryy_4540832352(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.9960695923619056) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4540832112(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.060510088090195695) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate rzx_4540835616(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.479277158330262) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4540836768(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.424385944524119) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.1441067819426032) _gate_q_1;
  ry(-1.1441067819426032) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.424385944524119) _gate_q_0;
}
gate rxx_4540836240(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.7997547310308173) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4540836624(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.587804270757459, -0.8351632535925997, 0.8351632535925997) _gate_q_0;
}
gate xx_plus_yy_4540836672(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.7398220442445547) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.395650446762522) _gate_q_1;
  ry(-2.395650446762522) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.7398220442445547) _gate_q_0;
}
gate xx_minus_yy_4540835424(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.5225858079999002) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.699879279422874) _gate_q_0;
  ry(-2.699879279422874) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.5225858079999002) _gate_q_1;
}
gate rxx_4540835136(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8019976718928945) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4540837440(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.8729226004564428) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5057451630733785) _gate_q_1;
  ry(-2.5057451630733785) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.8729226004564428) _gate_q_0;
}
gate rxx_4540837632(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.681748340217674) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4540837104(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.283106894957936) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.57022541029286) _gate_q_1;
  ry(-1.57022541029286) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.283106894957936) _gate_q_0;
}
gate r_4540836576(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.3351211744891724, -1.057539202994756, 1.057539202994756) _gate_q_0;
}
gate xx_minus_yy_4540837872(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.4652815399008111) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.1266841813947743) _gate_q_0;
  ry(-1.1266841813947743) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.4652815399008111) _gate_q_1;
}
gate cu3_4540838160(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.490058979111004) _gate_q_0;
  u1(0.3966128431831688) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.7516579494596298, 0, -5.490058979111004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.7516579494596298, 5.093446135927835, 0) _gate_q_1;
}
gate ryy_4540835232(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.767321768340069) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4540838832(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.446357461486417, -0.7327921820619951, 0.7327921820619951) _gate_q_0;
}
gate rzz_4540838688(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.39727098380429) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4540838592(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.275792366720157, 0.9185381635468572, -0.9185381635468572) _gate_q_0;
}
gate cu1_4540839024(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(3.121695105288784) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-3.121695105288784) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(3.121695105288784) _gate_q_1;
}
gate cu1_4540839360(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.6408646494759389) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.6408646494759389) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.6408646494759389) _gate_q_1;
}
gate r_4540835040(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.456942596077768, 1.91783390505111, -1.91783390505111) _gate_q_0;
}
gate rzz_4540839744(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.022625964988789) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4540836960(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.081474586116802) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4540840320(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.861347842790696, -0.718764793885635, 0.718764793885635) _gate_q_0;
}
gate r_4540840656(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.294997224781607, 3.7549627748213634, -3.7549627748213634) _gate_q_0;
}
gate rxx_4540840752(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.9609907597115286) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4540840128(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.9819142180758806) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4540840512(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.337936796574724) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.6552276169871578) _gate_q_0;
  ry(-1.6552276169871578) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.337936796574724) _gate_q_1;
}
gate xx_minus_yy_4540841280(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.1518741606128677) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.20637523052497683) _gate_q_0;
  ry(-0.20637523052497683) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.1518741606128677) _gate_q_1;
}
gate cu3_4540841568(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.612669506012505) _gate_q_0;
  u1(-0.5773651580594912) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.8562295690593157, 0, -5.612669506012505) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.8562295690593157, 6.190034664071996, 0) _gate_q_1;
}
gate r_4540840080(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.1623912181134415, -0.21919796820523452, 0.21919796820523452) _gate_q_0;
}
gate rzx_4540420592(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.0628150592659582) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4540833360(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.9296773042808372) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
qubit[6] q;
ch q[3], q[5];
s q[0];
cp(3.1107645773398813) q[2], q[1];
id q[4];
u2(3.6073446130703335, 0.41703843200724583) q[2];
ccz q[4], q[0], q[5];
s q[1];
y q[3];
cy q[5], q[2];
p(0.3821837243124254) q[3];
tdg q[4];
crx(5.084539147153604) q[0], q[1];
cy q[2], q[3];
swap q[4], q[0];
csdg q[5], q[1];
rx(4.62388747356692) q[5];
tdg q[0];
u1(3.905800051034057) q[3];
rx(5.257857308775615) q[1];
crz(0.28047558373738785) q[2], q[4];
csx q[5], q[4];
csdg q[0], q[2];
rxx_4540829232(2.7256568464668542) q[3], q[1];
s q[5];
c3sx q[4], q[1], q[0], q[2];
tdg q[3];
rz(4.660312756810249) q[3];
xx_minus_yy_4540827696(5.273489677968717, 2.375575115760271) q[1], q[2];
U(1.1861952568330716, 2.3480812441298444, 3.612971759659783) q[0];
s q[4];
rz(0.9996527832106126) q[5];
s q[0];
p(1.5304411890811067) q[1];
x q[5];
p(2.1011589808016558) q[3];
h q[4];
U(4.02981111275594, 4.260264334320562, 4.6477862739807305) q[2];
ecr q[3], q[1];
sdg q[5];
cy q[0], q[4];
sxdg q[2];
r_4540829616(1.4006142488661844, 0.214024235289386) q[4];
ry(4.065965965701018) q[1];
sx q[0];
ccx q[2], q[5], q[3];
dcx q[1], q[5];
p(4.3999327211152535) q[0];
dcx q[2], q[4];
s q[3];
z q[4];
rz(2.9032861346521073) q[3];
y q[1];
swap q[5], q[2];
ry(2.869499695895584) q[0];
cu3_4540830528(3.985010655900457, 5.444877164977925, 4.662170058828756) q[1], q[3];
rzx_4540830672(3.4105662455308265) q[5], q[0];
u3(4.629697199456582, 4.019216810755435, 0.04670121320758537) q[4];
id q[2];
cx q[0], q[3];
c3sx q[5], q[4], q[2], q[1];
U(3.035973084906207, 6.15409670479481, 2.798591611399342) q[3];
cry(0.7631255926898379) q[0], q[4];
cs q[2], q[1];
sxdg q[5];
sx q[3];
ccz q[4], q[0], q[1];
id q[2];
ry(5.972531920384736) q[5];
rzx_4540831056(3.9207489925202896) q[4], q[0];
cs q[5], q[1];
u3(5.316023931440401, 1.0144324980440798, 2.7694124152204935) q[2];
tdg q[3];
xx_plus_yy_4540831248(1.6719788910755204, 2.177120479842616) q[4], q[2];
tdg q[5];
cu3_4540831344(1.8078773769914316, 2.442700689616105, 3.2818329512666873) q[0], q[3];
u3(3.2549320213973885, 4.52142002593704, 1.7402957036729538) q[1];
h q[3];
h q[2];
u3(0.9231313051823814, 0.02429538398500357, 4.210322493360922) q[4];
tdg q[5];
h q[1];
id q[0];
sxdg q[3];
p(1.5196260588061026) q[2];
sxdg q[1];
id q[4];
id q[0];
r_4540830720(6.281064774409678, 3.329602262986631) q[5];
dcx q[2], q[4];
p(2.7458717297298727) q[3];
u1(5.6407981416353605) q[1];
u2(4.9537343534205736, 2.964194030687455) q[5];
r_4540831632(0.500067593575533, 1.4602214276033767) q[0];
cu1_4540831680(4.6566521648016135) q[3], q[4];
cs q[1], q[2];
z q[5];
rx(1.294656120965606) q[0];
c3sx q[0], q[2], q[5], q[3];
xx_minus_yy_4540831584(4.176865674912298, 5.005818627701149) q[4], q[1];
swap q[2], q[4];
ccz q[3], q[0], q[5];
p(1.4703576932744498) q[1];
ccx q[2], q[5], q[3];
ryy_4540831872(1.4316355572129187) q[1], q[0];
h q[4];
rx(2.3594122910387543) q[0];
sx q[5];
sx q[1];
sxdg q[3];
cs q[2], q[4];
ecr q[3], q[1];
rzz_4540831920(5.3803149591333295) q[2], q[4];
h q[5];
id q[0];
rzz_4540831488(0.6517483752818964) q[5], q[3];
crx(1.4707918848582249) q[4], q[1];
cp(3.715068943976214) q[2], q[0];
csx q[0], q[3];
cp(3.7081507213153766) q[4], q[5];
u1(5.940309605081203) q[2];
y q[1];
sx q[5];
cs q[0], q[3];
ccz q[4], q[2], q[1];
sxdg q[1];
p(4.744551031324231) q[3];
ry(2.2279209640806257) q[0];
ccz q[5], q[4], q[2];
rcccx q[5], q[3], q[1], q[0];
xx_plus_yy_4540832736(5.614821637794975, 5.173656702959859) q[2], q[4];
r_4540833072(3.2201815481307117, 0.9595560959941706) q[4];
cu(6.148632054853734, 4.561009093018566, 0.41413951769652146, 3.581683671139432) q[1], q[2];
sdg q[5];
crz(5.323915946422137) q[3], q[0];
ccx q[5], q[1], q[2];
ecr q[4], q[0];
ry(1.4172810783697436) q[3];
crz(1.914491737516993) q[0], q[3];
ch q[4], q[2];
cu(1.4001851768406965, 0.33646047987418376, 4.8013056280663795, 5.873285629141916) q[5], q[1];
rzz_4540833456(1.9768843970020886) q[0], q[4];
c3sx q[3], q[1], q[5], q[2];
cswap q[1], q[3], q[5];
h q[2];
rx(5.777414549745923) q[0];
rz(1.6855481377824582) q[4];
rz(3.079416671372503) q[1];
rxx_4540833408(4.159850173142519) q[2], q[5];
rx(3.622107532678299) q[3];
crz(1.7748055690333022) q[4], q[0];
ry(5.847047309331031) q[2];
sxdg q[4];
ccx q[5], q[1], q[3];
t q[0];
u3(3.5543351167418242, 5.25967988205247, 2.4691739147551166) q[5];
ecr q[2], q[1];
rz(2.0178568555923455) q[3];
cp(1.399701345412523) q[0], q[4];
r_4540833744(5.006676765851418, 1.0540259468379498) q[4];
sx q[3];
xx_plus_yy_4540834032(0.5490319445901022, 2.395914765363788) q[5], q[0];
sxdg q[2];
y q[1];
h q[4];
z q[5];
cswap q[1], q[3], q[2];
t q[0];
cs q[0], q[5];
sx q[4];
cx q[3], q[2];
u1(1.904271393688571) q[1];
r_4540834464(3.6713232949202754, 3.8324885454801745) q[5];
csx q[0], q[4];
cu(2.4218681846899996, 3.8599679919191967, 0.7512542377241705, 6.04690887532758) q[2], q[3];
u2(4.308949270883636, 0.6132781048285026) q[1];
sdg q[3];
cu(5.550403135635854, 3.9156176625955834, 0.3078204129856535, 0.8944347553693828) q[1], q[5];
csdg q[4], q[2];
rz(5.532949220214229) q[0];
cu3_4540834704(0.7372396572257163, 0.8030029639645019, 4.436803778048792) q[4], q[1];
iswap q[2], q[3];
cu3_4540834416(1.5520641522093652, 4.539760230527346, 4.960058578406194) q[0], q[5];
ccz q[1], q[5], q[4];
xx_plus_yy_4540834752(2.1254988840091777, 4.620460885333275) q[2], q[0];
h q[3];
swap q[4], q[3];
ryy_4540832352(2.9960695923619056) q[2], q[0];
p(5.607343466763452) q[1];
id q[5];
crz(3.5926570051311875) q[2], q[5];
c3sx q[3], q[0], q[1], q[4];
sx q[0];
rxx_4540832112(0.060510088090195695) q[1], q[3];
csx q[2], q[5];
ry(3.207622782073491) q[4];
cz q[3], q[1];
rccx q[0], q[4], q[2];
U(0.5197591630090357, 5.224164837038146, 0.3207645834638535) q[5];
ccz q[2], q[3], q[0];
cs q[1], q[4];
U(0.913801522148955, 3.779343366263318, 0.5683706729648079) q[5];
U(4.497446545014611, 0.41972034102633987, 1.8452832545758069) q[0];
x q[3];
h q[2];
sx q[1];
csx q[4], q[5];
cx q[2], q[0];
u3(4.2993949215713245, 1.7651734867990805, 1.9274412215804022) q[4];
t q[5];
crx(1.7001657462651718) q[3], q[1];
y q[1];
rzx_4540835616(5.479277158330262) q[0], q[5];
cz q[4], q[3];
sx q[2];
csdg q[0], q[1];
xx_plus_yy_4540836768(2.2882135638852064, 4.424385944524119) q[2], q[5];
sdg q[4];
h q[3];
U(4.7342324111779135, 0.27045935156089584, 4.702965262938436) q[4];
ecr q[2], q[1];
z q[0];
y q[3];
z q[5];
crz(2.8172540229467273) q[2], q[3];
rxx_4540836240(2.7997547310308173) q[0], q[4];
r_4540836624(4.587804270757459, 0.7356330732022969) q[1];
ry(1.9066334372060596) q[5];
cz q[5], q[1];
U(2.053689575185642, 2.1901163780327035, 2.2987947210374498) q[2];
y q[4];
csdg q[3], q[0];
ccz q[2], q[3], q[5];
ch q[4], q[1];
x q[0];
u3(3.179528848679422, 4.874912705366387, 1.8882375896027723) q[5];
xx_plus_yy_4540836672(4.791300893525044, 0.7398220442445547) q[0], q[3];
sx q[4];
id q[2];
id q[1];
rccx q[5], q[1], q[2];
id q[4];
swap q[3], q[0];
z q[5];
dcx q[1], q[4];
xx_minus_yy_4540835424(5.399758558845748, 1.5225858079999002) q[2], q[0];
rx(4.3000319168312595) q[3];
cu(1.3445371407888709, 4.0764041812129195, 4.952837711932603, 5.927425151523223) q[2], q[5];
s q[4];
rxx_4540835136(0.8019976718928945) q[3], q[0];
U(3.326530513807303, 2.936215737277898, 5.860062026760473) q[1];
rcccx q[2], q[1], q[4], q[0];
sx q[3];
sx q[5];
u3(5.065720449575578, 2.408805144244101, 4.198552048485276) q[4];
s q[1];
tdg q[2];
sxdg q[3];
xx_plus_yy_4540837440(5.011490326146757, 1.8729226004564428) q[0], q[5];
rxx_4540837632(5.681748340217674) q[5], q[0];
u1(1.029923664085181) q[1];
t q[4];
u1(1.6581313604230867) q[2];
z q[3];
xx_plus_yy_4540837104(3.14045082058572, 2.283106894957936) q[4], q[5];
sx q[2];
r_4540836576(4.3351211744891724, 0.5132571238001407) q[3];
ry(5.050489289035765) q[0];
u2(4.18310657872792, 1.1996878237335247) q[1];
cs q[2], q[3];
sxdg q[1];
y q[0];
u3(2.621192841184294, 0.4491169747143822, 3.6835908200287366) q[4];
id q[5];
p(5.4536607901390886) q[4];
tdg q[3];
xx_minus_yy_4540837872(2.2533683627895487, 0.4652815399008111) q[2], q[5];
sx q[1];
sxdg q[0];
swap q[4], q[2];
cp(5.799106652742463) q[3], q[0];
cu3_4540838160(3.5033158989192597, 5.093446135927835, 5.886671822294173) q[1], q[5];
x q[0];
cp(1.2478091751988771) q[3], q[5];
rx(5.738481929280493) q[2];
sdg q[1];
h q[4];
id q[4];
ryy_4540835232(4.767321768340069) q[5], q[0];
ccx q[1], q[3], q[2];
y q[2];
ch q[3], q[0];
y q[1];
t q[5];
u1(5.28724768477544) q[4];
u2(1.2011863720283102, 4.916538293632713) q[2];
r_4540838832(3.446357461486417, 0.8380041447329014) q[5];
rzz_4540838688(5.39727098380429) q[1], q[4];
tdg q[3];
r_4540838592(3.275792366720157, 2.489334490341754) q[0];
cp(4.334163235543579) q[3], q[1];
rcccx q[5], q[2], q[0], q[4];
cs q[5], q[4];
crz(2.677331739371431) q[0], q[2];
cu1_4540839024(6.243390210577568) q[3], q[1];
ccz q[5], q[0], q[1];
sx q[4];
u1(6.085361140624742) q[3];
u1(3.2102326189035066) q[2];
cu1_4540839360(1.2817292989518778) q[4], q[0];
cswap q[1], q[2], q[3];
u2(4.100410480296646, 2.7082503410732315) q[5];
x q[1];
h q[4];
cy q[2], q[5];
r_4540835040(1.456942596077768, 3.4886302318460065) q[3];
rz(2.5326514566379315) q[0];
h q[3];
cy q[0], q[2];
cu(5.8574716343619055, 5.397719605837999, 5.868465924419501, 3.843712453187192) q[1], q[5];
sxdg q[4];
rzz_4540839744(2.022625964988789) q[0], q[3];
cz q[2], q[1];
cs q[5], q[4];
cx q[4], q[5];
iswap q[3], q[0];
iswap q[2], q[1];
cz q[1], q[3];
h q[0];
U(3.11583703515549, 0.7856865290620749, 3.8531764602166914) q[5];
ry(1.675687641996453) q[4];
s q[2];
cx q[4], q[0];
cx q[1], q[2];
ryy_4540836960(3.081474586116802) q[5], q[3];
sxdg q[5];
p(2.087410693069261) q[3];
cz q[1], q[0];
csdg q[4], q[2];
cs q[0], q[4];
ry(4.509542558539425) q[5];
dcx q[3], q[2];
p(4.0691737082427135) q[1];
r_4540840320(3.861347842790696, 0.8520315329092616) q[5];
cz q[1], q[4];
r_4540840656(2.294997224781607, 5.32575910161626) q[0];
rxx_4540840752(3.9609907597115286) q[3], q[2];
rxx_4540840128(2.9819142180758806) q[0], q[2];
xx_minus_yy_4540840512(3.3104552339743156, 2.337936796574724) q[3], q[5];
u1(2.6588508114307072) q[1];
s q[4];
cu(5.055872654822392, 6.042115310388261, 1.5044358721670894, 0.24855647613999163) q[3], q[0];
cry(4.971067478673695) q[5], q[1];
z q[2];
s q[4];
p(3.7084693815797296) q[0];
U(0.2367788772768318, 4.43612349202677, 5.978504996849568) q[1];
t q[3];
dcx q[5], q[2];
sx q[4];
t q[0];
ry(2.9329435851662025) q[3];
rccx q[5], q[4], q[1];
U(1.7814300792168924, 3.337680125826799, 1.3651364665915484) q[2];
xx_minus_yy_4540841280(0.41275046104995367, 3.1518741606128677) q[0], q[1];
tdg q[5];
u1(5.3774500368088916) q[3];
crz(6.03949569511527) q[4], q[2];
sxdg q[0];
csdg q[5], q[3];
h q[2];
cu3_4540841568(1.7124591381186314, 6.190034664071996, 5.035304347953014) q[1], q[4];
u1(0.8845471846532703) q[5];
cswap q[0], q[4], q[1];
cp(3.5894350344198642) q[2], q[3];
y q[5];
t q[4];
p(1.3427333257180432) q[0];
u1(3.1420257012452177) q[3];
u1(0.8564354181452966) q[1];
u3(3.7553610007933846, 4.280090288737152, 2.7225777110595186) q[2];
cx q[1], q[0];
r_4540840080(4.1623912181134415, 1.351598358589662) q[2];
cry(3.2605162448162788) q[3], q[5];
t q[4];
u3(1.0853761801003248, 0.6546533514611765, 2.4550651241884847) q[1];
t q[2];
c3sx q[0], q[5], q[3], q[4];
rzx_4540420592(1.0628150592659582) q[0], q[2];
rzz_4540833360(0.9296773042808372) q[3], q[4];
t q[1];
rx(2.630989633306837) q[5];
