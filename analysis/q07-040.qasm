OPENQASM 3.0;
include "stdgates.inc";
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4540418192(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.590900332331984) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.7027409917734491) _gate_q_0;
  ry(-0.7027409917734491) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.590900332331984) _gate_q_1;
}
gate cu3_4540422320(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.1539219724859247) _gate_q_0;
  u1(2.3637387900438145) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.7302692352132283, 0, -3.1539219724859247) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.7302692352132283, 0.79018318244211, 0) _gate_q_1;
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
gate rzx_4540418672(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.3249724345642513) _gate_q_1;
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
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate rxx_4540420160(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.0934064792071) _gate_q_1;
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
gate cu3_4540419296(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.5318937201330223) _gate_q_0;
  u1(0.21594078620597257) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.3022407078495906, 0, -1.5318937201330223) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.3022407078495906, 1.3159529339270497, 0) _gate_q_1;
}
gate rzz_4540416320(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.8616026304900535) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4540417328(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.281115532321254) _gate_q_0;
  u1(-1.8128953912667332) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1375179839715515, 0, -4.281115532321254) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1375179839715515, 6.094010923587987, 0) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate ryy_4536757008(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.0834611828764433) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4536756336(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.1364716414334173) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.6529992288032105) _gate_q_0;
  ry(-2.6529992288032105) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.1364716414334173) _gate_q_1;
}
gate xx_minus_yy_4536757248(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.568152714277313) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.6630816187584656) _gate_q_0;
  ry(-0.6630816187584656) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.568152714277313) _gate_q_1;
}
gate cu3_4536754944(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.8875523254992181) _gate_q_0;
  u1(-0.20403271276265444) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.01627131074461, 0, -1.8875523254992181) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.01627131074461, 2.0915850382618726, 0) _gate_q_1;
}
gate r_4536758544(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.8387999716972825, 4.010749796129096, -4.010749796129096) _gate_q_0;
}
gate r_4536754608(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.79590327844667, 0.9191080366273727, -0.9191080366273727) _gate_q_0;
}
gate rzx_4536752496(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.12061929762500088) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4536753408(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.391558916440727) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.6328440611768062) _gate_q_1;
  ry(-2.6328440611768062) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.391558916440727) _gate_q_0;
}
gate xx_minus_yy_4536759600(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.017472605931348) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.778886530297979) _gate_q_0;
  ry(-1.778886530297979) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.017472605931348) _gate_q_1;
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
gate xx_minus_yy_4536754224(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.439619603245782) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.5883038083752946) _gate_q_0;
  ry(-0.5883038083752946) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.439619603245782) _gate_q_1;
}
gate cu3_4536757584(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.0416526978900507) _gate_q_0;
  u1(-0.3723000646489243) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.07679030034014465, 0, -3.0416526978900507) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.07679030034014465, 3.413952762538975, 0) _gate_q_1;
}
gate rxx_4540416800(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.2125149614725044) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4536756816(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.58327697697526) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate ryy_4536757056(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.5117861341188865) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4536756288(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.920842575785393) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4536747696(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.819504655365154) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4536747552(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.6472147815276552) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate r_4536749472(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.2353699264943727, -1.4293602010806883, 1.4293602010806883) _gate_q_0;
}
gate ryy_4536758160(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.2407844108779953) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4536748272(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.226724092734967) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4536746928(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.408787588249521) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.675635192406547) _gate_q_1;
  ry(-2.675635192406547) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.408787588249521) _gate_q_0;
}
gate rxx_4536760800(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.704937143790433) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate ryy_4536750000(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7727553492594903) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4536750096(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.6682474827753302) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
qubit[7] q;
sxdg q[1];
xx_minus_yy_4540418192(1.4054819835468981, 2.590900332331984) q[4], q[6];
h q[2];
cu3_4540422320(3.4605384704264566, 0.79018318244211, 5.517660762529739) q[0], q[3];
u2(3.546275271087866, 1.7487708567607159) q[5];
rz(0.6278084454647498) q[0];
crx(2.438562275357117) q[1], q[3];
rcccx q[6], q[4], q[5], q[2];
rzx_4540418672(0.3249724345642513) q[5], q[1];
ry(2.0223447359215907) q[0];
swap q[3], q[2];
csx q[4], q[6];
iswap q[2], q[1];
sx q[3];
iswap q[5], q[6];
s q[0];
p(4.087381598196164) q[4];
rxx_4540420160(2.0934064792071) q[5], q[3];
ccx q[4], q[6], q[1];
cz q[0], q[2];
crz(6.128869017607523) q[2], q[3];
sx q[1];
cz q[0], q[5];
cs q[4], q[6];
csx q[3], q[6];
cy q[4], q[1];
id q[5];
cu3_4540419296(2.604481415699181, 1.3159529339270497, 1.7478345063389948) q[0], q[2];
rzz_4540416320(4.8616026304900535) q[6], q[1];
cs q[2], q[5];
cu3_4540417328(2.275035967943103, 6.094010923587987, 2.468220141054521) q[0], q[4];
u3(2.856115887196843, 5.6256857415583355, 3.7476492682694547) q[3];
ccz q[2], q[5], q[0];
u2(3.8719827587476776, 4.806380235812748) q[4];
sdg q[3];
z q[1];
u3(5.62108685779239, 4.24764805953373, 5.121908648660403) q[6];
ryy_4536757008(1.0834611828764433) q[4], q[0];
x q[2];
xx_minus_yy_4536756336(5.305998457606421, 2.1364716414334173) q[5], q[1];
tdg q[6];
ry(2.2583392411328993) q[3];
id q[1];
h q[2];
cp(3.4384621409854628) q[3], q[6];
ccx q[4], q[5], q[0];
xx_minus_yy_4536757248(1.3261632375169312, 4.568152714277313) q[2], q[0];
ry(2.4277308535124136) q[5];
t q[1];
cu3_4536754944(2.03254262148922, 2.0915850382618726, 1.6835196127365637) q[3], q[6];
z q[4];
iswap q[0], q[2];
sx q[4];
u3(0.17260926986441338, 0.41536968369727884, 2.7222043192282324) q[6];
r_4536758544(2.8387999716972825, 5.581546122923992) q[1];
swap q[5], q[3];
id q[1];
U(1.5500803785390087, 4.896483793512853, 1.8140697693190302) q[2];
rcccx q[5], q[6], q[3], q[4];
rx(3.037161749699382) q[0];
sxdg q[6];
crx(2.618876422060859) q[1], q[2];
sxdg q[5];
cx q[4], q[3];
h q[0];
iswap q[1], q[4];
r_4536754608(2.79590327844667, 2.4899043634222693) q[6];
rzx_4536752496(0.12061929762500088) q[0], q[2];
xx_plus_yy_4536753408(5.2656881223536125, 4.391558916440727) q[3], q[5];
cy q[2], q[4];
sx q[1];
xx_minus_yy_4536759600(3.557773060595958, 3.017472605931348) q[5], q[0];
id q[3];
p(4.310511625761381) q[6];
ch q[2], q[5];
rccx q[4], q[6], q[0];
cy q[3], q[1];
xx_minus_yy_4536754224(1.1766076167505892, 4.439619603245782) q[0], q[5];
rcccx q[6], q[2], q[4], q[3];
p(3.2397153697651575) q[1];
sdg q[2];
u3(0.1373036532936791, 0.4323050180117499, 5.520978318946591) q[0];
t q[5];
rccx q[3], q[6], q[4];
rz(3.93586945827931) q[1];
t q[3];
s q[1];
cu3_4536757584(0.1535806006802893, 3.413952762538975, 2.6693526332411266) q[5], q[0];
rxx_4540416800(3.2125149614725044) q[4], q[2];
y q[6];
rzx_4536756816(4.58327697697526) q[0], q[6];
swap q[2], q[3];
cp(0.06285439458031124) q[1], q[4];
sxdg q[5];
u2(1.585913949650075, 0.23897149782374452) q[3];
x q[0];
cry(4.794909567029361) q[4], q[1];
iswap q[2], q[5];
ry(2.076526830746823) q[6];
c3sx q[6], q[5], q[3], q[4];
ccx q[1], q[2], q[0];
iswap q[0], q[1];
cswap q[5], q[4], q[2];
rx(2.536515529118634) q[3];
U(2.446842737639887, 0.1488506862910406, 5.287122605246021) q[6];
iswap q[5], q[6];
z q[4];
ryy_4536757056(4.5117861341188865) q[3], q[0];
rzz_4536756288(1.920842575785393) q[1], q[2];
swap q[6], q[0];
ryy_4536747696(2.819504655365154) q[3], q[1];
sdg q[2];
ch q[5], q[4];
z q[5];
csx q[3], q[1];
cz q[0], q[4];
rz(3.3301946007242615) q[2];
p(0.4189215010749232) q[6];
rzz_4536747552(0.6472147815276552) q[3], q[5];
cs q[1], q[4];
rccx q[6], q[2], q[0];
u2(5.866209677699073, 1.6603099308129377) q[3];
swap q[2], q[1];
dcx q[4], q[0];
u2(2.102799735550174, 4.386754409656243) q[5];
tdg q[6];
sdg q[3];
tdg q[1];
t q[6];
cz q[5], q[0];
r_4536749472(1.2353699264943727, 0.14143612571420833) q[4];
U(1.4792123034527216, 3.608545361749272, 6.155225153461711) q[2];
rx(5.35601200249843) q[5];
s q[3];
p(0.9269793243250515) q[6];
sdg q[0];
cry(6.103017838882238) q[2], q[1];
sxdg q[4];
rcccx q[2], q[4], q[3], q[1];
iswap q[6], q[5];
u1(1.9608636443269127) q[0];
ryy_4536758160(3.2407844108779953) q[3], q[2];
ch q[1], q[4];
crx(1.8964926848068977) q[6], q[5];
rx(1.2478534810447304) q[0];
z q[4];
x q[3];
rzz_4536748272(4.226724092734967) q[6], q[1];
xx_plus_yy_4536746928(5.351270384813094, 3.408787588249521) q[2], q[0];
rz(1.6491645912440178) q[5];
ccx q[2], q[6], q[4];
cu(5.677632158406803, 1.7772503476800916, 0.14423947524514444, 0.3749311979401411) q[1], q[3];
rx(4.196492060757561) q[5];
sdg q[0];
rxx_4536760800(5.704937143790433) q[5], q[1];
id q[4];
id q[0];
crz(0.6545087306184773) q[2], q[6];
id q[3];
ecr q[5], q[4];
crz(3.5841563774806042) q[3], q[6];
z q[0];
ryy_4536750000(3.7727553492594903) q[1], q[2];
cry(3.134044916278218) q[3], q[4];
ch q[0], q[2];
rx(2.023958661647777) q[5];
ecr q[6], q[1];
cu(0.7760134601584502, 2.387283984943685, 6.142114327982024, 1.2458376583381465) q[1], q[6];
csx q[0], q[5];
rzz_4536750096(1.6682474827753302) q[2], q[3];
sdg q[4];
