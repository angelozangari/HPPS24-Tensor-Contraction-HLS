OPENQASM 3.0;
include "stdgates.inc";
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
gate rxx_4564523568(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.419091827546509) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4564520736(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-6.206657116341845) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.7618654053199456) _gate_q_0;
  ry(-0.7618654053199456) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(6.206657116341845) _gate_q_1;
}
gate xx_plus_yy_4564519680(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.018927911226624) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.791837090808841) _gate_q_1;
  ry(-2.791837090808841) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.018927911226624) _gate_q_0;
}
gate cu1_4564521744(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.1855079781195563) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.1855079781195563) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.1855079781195563) _gate_q_1;
}
gate xx_minus_yy_4564523472(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.6857017576437974) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.005905397253746) _gate_q_0;
  ry(-2.005905397253746) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.6857017576437974) _gate_q_1;
}
gate r_4564519152(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.250830396030386, 3.732952682010363, -3.732952682010363) _gate_q_0;
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
gate rzx_4564517616(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.620751185197298) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate r_4564519920(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.9527434710567593, 0.35479199887882507, -0.35479199887882507) _gate_q_0;
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
gate rzx_4564531776(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.5615454227770775) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4564525296(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.8128836773584633, 0.2958790163863618, -0.2958790163863618) _gate_q_0;
}
gate rzx_4564525680(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.2337249583193) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4564526592(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.3807324070255429) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4564523184(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.550399658065062) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4564518336(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7725409658796187) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate r_4564524432(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.8150008273307516, -1.3448373863891905, 1.3448373863891905) _gate_q_0;
}
gate rxx_4564524912(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1344488143252092) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate r_4564525248(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.038370118406584, -0.07800990893512072, 0.07800990893512072) _gate_q_0;
}
gate r_4564527360(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.122252934863984, 0.9311702466750855, -0.9311702466750855) _gate_q_0;
}
gate rxx_4564526496(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9472430286043452) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4564527120(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.7095631438777085) _gate_q_0;
  u1(-0.5708504604667307) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.7335331187638081, 0, -0.7095631438777085) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.7335331187638081, 1.2804136043444392, 0) _gate_q_1;
}
gate ryy_4564525968(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6146041508042345) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4564528176(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.665902136796807) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.9073076965179845) _gate_q_0;
  ry(-2.9073076965179845) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.665902136796807) _gate_q_1;
}
gate r_4564528320(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.203841672415827, 1.6450776876193296, -1.6450776876193296) _gate_q_0;
}
gate xx_minus_yy_4564521264(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.642684633392783) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.087449545991815) _gate_q_0;
  ry(-2.087449545991815) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.642684633392783) _gate_q_1;
}
gate cu3_4564527600(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.459280733074682) _gate_q_0;
  u1(2.418367836426562) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.3124458292576436, 0, -2.459280733074682) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.3124458292576436, 0.040912896648119534, 0) _gate_q_1;
}
gate ryy_4564529040(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.452477585308194) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4564527312(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.20560631535691135) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4564527504(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.426902200465873) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4564526784(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.4710466511533333) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4564527408(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.5991086788051962) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.1020209364707547) _gate_q_1;
  ry(-1.1020209364707547) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.5991086788051962) _gate_q_0;
}
gate rzz_4564528512(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.9681164689873596) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4564527792(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.9794456642054974) _gate_q_0;
  u1(0.0803290569288948) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.9553516998177219, 0, -2.9794456642054974) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.9553516998177219, 2.8991166072766026, 0) _gate_q_1;
}
gate rzz_4564524960(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.922130085669404) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate ryy_4564526016(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1245122602580504) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4564530096(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.970977769836917) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.41908488993001614) _gate_q_1;
  ry(-0.41908488993001614) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.970977769836917) _gate_q_0;
}
gate ryy_4564530144(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6950236788284444) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4564529856(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.6307892021521986) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.6307892021521986) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.6307892021521986) _gate_q_1;
}
gate rzz_4564529712(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.922370868137348) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4564530384(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.203632910578645) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4564529808(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.682744294214225) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.003310389399831) _gate_q_0;
  ry(-1.003310389399831) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.682744294214225) _gate_q_1;
}
gate rzx_4564530864(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.982596034535399) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4564528608(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.1345960850070433) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.6954268361646502) _gate_q_0;
  ry(-0.6954268361646502) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.1345960850070433) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate rzz_4564528128(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.756323944305695) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4564528224(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.4264673589409207) _gate_q_0;
  u1(2.1218222081503675) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1027378351160853, 0, -3.4264673589409207) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1027378351160853, 1.3046451507905532, 0) _gate_q_1;
}
gate xx_plus_yy_4564531248(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.8775862010880504) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.497690462237622) _gate_q_1;
  ry(-2.497690462237622) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.8775862010880504) _gate_q_0;
}
gate cu1_4564521312(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.1900567530932795) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.1900567530932795) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.1900567530932795) _gate_q_1;
}
gate cu3_4564527456(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.7518046355954225) _gate_q_0;
  u1(-0.3635044122476766) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.7772176424960424, 0, -0.7518046355954225) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.7772176424960424, 1.1153090478430991, 0) _gate_q_1;
}
gate cu1_4564532160(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.007486893429516) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.007486893429516) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.007486893429516) _gate_q_1;
}
gate cu3_4564532496(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.2035974769517055) _gate_q_0;
  u1(0.4053802617730224) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.25402246485985674, 0, -1.2035974769517055) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.25402246485985674, 0.7982172151786832, 0) _gate_q_1;
}
gate ryy_4564531728(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.8092853204389558) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4564532256(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.1304519487263436) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4564525104(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.918527283420125, 1.8480449919110766, -1.8480449919110766) _gate_q_0;
}
gate cu1_4564523664(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.576511456475082) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.576511456475082) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.576511456475082) _gate_q_1;
}
qubit[9] q;
t q[3];
cx q[5], q[7];
u1(3.365524299762824) q[1];
t q[4];
h q[2];
cp(5.202598523967619) q[0], q[8];
U(1.5745907948944027, 2.9005389072095933, 6.13856245498353) q[6];
cz q[3], q[6];
rcccx q[0], q[1], q[7], q[8];
swap q[5], q[2];
y q[4];
swap q[3], q[7];
rxx_4564523568(4.419091827546509) q[1], q[4];
xx_minus_yy_4564520736(1.5237308106398912, 6.206657116341845) q[2], q[8];
xx_plus_yy_4564519680(5.583674181617682, 4.018927911226624) q[6], q[0];
h q[5];
cz q[2], q[3];
cu1_4564521744(4.371015956239113) q[4], q[5];
cswap q[0], q[7], q[6];
U(2.8297640239010966, 3.4873088613015573, 1.0013993746410497) q[1];
p(4.878061906622855) q[8];
u3(0.8629917787635593, 0.2503494340739512, 5.736005150063663) q[1];
U(5.929496207470556, 1.240462310755091, 2.408542677797275) q[7];
id q[4];
xx_minus_yy_4564523472(4.011810794507492, 1.6857017576437974) q[8], q[5];
r_4564519152(6.250830396030386, 5.3037490088052595) q[2];
rccx q[0], q[6], q[3];
rzx_4564517616(4.620751185197298) q[6], q[7];
c3sx q[1], q[8], q[3], q[2];
rz(4.661222903452712) q[0];
sdg q[5];
sxdg q[4];
r_4564519920(2.9527434710567593, 1.9255883256737216) q[7];
swap q[2], q[6];
c3sx q[4], q[1], q[3], q[8];
ecr q[0], q[5];
x q[4];
rzx_4564531776(1.5615454227770775) q[3], q[6];
r_4564525296(2.8128836773584633, 1.8666753431812584) q[7];
x q[2];
cu(2.386418286079583, 4.878617165088257, 4.373276807555482, 4.635007413137111) q[1], q[5];
s q[8];
z q[0];
rcccx q[3], q[4], q[8], q[7];
rzx_4564525680(4.2337249583193) q[0], q[5];
rxx_4564526592(0.3807324070255429) q[2], q[6];
h q[1];
swap q[5], q[4];
ccx q[7], q[8], q[2];
ryy_4564523184(2.550399658065062) q[1], q[6];
crz(2.606453659635307) q[0], q[3];
p(1.2144905111559334) q[8];
cswap q[5], q[0], q[7];
s q[6];
rxx_4564518336(3.7725409658796187) q[3], q[1];
sx q[2];
t q[4];
csx q[0], q[4];
crz(2.194163272012464) q[5], q[3];
sx q[1];
sxdg q[7];
cswap q[2], q[6], q[8];
rcccx q[3], q[6], q[8], q[2];
cs q[4], q[5];
ry(1.8976974666562827) q[7];
r_4564524432(0.8150008273307516, 0.225958940405706) q[1];
x q[0];
rxx_4564524912(1.1344488143252092) q[6], q[0];
crz(0.5011455742200013) q[7], q[2];
ch q[8], q[1];
ch q[5], q[4];
rz(5.224439880927608) q[3];
s q[6];
cu(2.1963634886138634, 5.530325750239141, 5.946508415924417, 6.19782908896848) q[5], q[3];
cswap q[2], q[4], q[1];
u1(5.463482923839265) q[0];
sx q[7];
sx q[8];
c3sx q[6], q[5], q[3], q[8];
cs q[0], q[4];
s q[1];
s q[2];
sx q[7];
dcx q[3], q[0];
cry(2.5066982189344005) q[5], q[6];
cu(1.0219044768058096, 5.830439538212224, 1.1592274417623163, 0.21385449100864332) q[7], q[4];
ccz q[2], q[8], q[1];
r_4564525248(5.038370118406584, 1.4927864178597758) q[7];
r_4564527360(3.122252934863984, 2.501966573469982) q[1];
t q[4];
sdg q[3];
rxx_4564526496(1.9472430286043452) q[6], q[0];
cu3_4564527120(1.4670662375276162, 1.2804136043444392, 0.13871268341097773) q[8], q[5];
ry(0.4013883621829469) q[2];
ryy_4564525968(0.6146041508042345) q[0], q[4];
rccx q[7], q[3], q[1];
xx_minus_yy_4564528176(5.814615393035969, 1.665902136796807) q[8], q[5];
s q[6];
r_4564528320(5.203841672415827, 3.215874014414226) q[2];
xx_minus_yy_4564521264(4.17489909198363, 2.642684633392783) q[8], q[4];
id q[1];
cu3_4564527600(0.6248916585152872, 0.040912896648119534, 4.877648569501244) q[0], q[3];
sdg q[5];
rccx q[2], q[7], q[6];
ryy_4564529040(5.452477585308194) q[1], q[3];
z q[4];
rcccx q[7], q[6], q[2], q[0];
sxdg q[5];
tdg q[8];
rz(1.0977496490902405) q[2];
cs q[7], q[3];
cs q[4], q[1];
ryy_4564527312(0.20560631535691135) q[6], q[0];
rzx_4564527504(1.426902200465873) q[8], q[5];
ccz q[1], q[5], q[2];
ch q[7], q[0];
tdg q[4];
cswap q[8], q[3], q[6];
p(3.230473322972911) q[6];
u1(1.9671155309638864) q[8];
ryy_4564526784(3.4710466511533333) q[3], q[2];
tdg q[0];
ccx q[4], q[5], q[1];
sx q[7];
xx_plus_yy_4564527408(2.2040418729415094, 2.5991086788051962) q[0], q[8];
ecr q[2], q[1];
cu(4.019157239663339, 5.693912088501993, 3.779516952556106, 3.498707359950592) q[3], q[7];
sxdg q[6];
rzz_4564528512(0.9681164689873596) q[4], q[5];
cs q[7], q[4];
cu3_4564527792(1.9107033996354439, 2.8991166072766026, 3.059774721134392) q[5], q[0];
s q[1];
rzz_4564524960(2.922130085669404) q[3], q[8];
sdg q[2];
x q[6];
csdg q[6], q[2];
ryy_4564526016(2.1245122602580504) q[7], q[4];
U(2.928554763869161, 6.008220483778298, 5.376750016737944) q[3];
ch q[8], q[5];
p(5.053474273888216) q[1];
U(2.3195561708833856, 4.064027667519072, 0.37721620478969825) q[0];
crx(1.3515453805442097) q[0], q[8];
xx_plus_yy_4564530096(0.8381697798600323, 3.970977769836917) q[3], q[1];
ch q[5], q[7];
z q[4];
id q[6];
t q[2];
u1(0.5858858750422192) q[2];
ryy_4564530144(0.6950236788284444) q[1], q[8];
t q[3];
x q[5];
csdg q[4], q[6];
x q[7];
id q[0];
z q[4];
dcx q[2], q[5];
cu(5.795142336657153, 4.72775062201188, 4.407499162499604, 1.7918654262222486) q[3], q[7];
cu1_4564529856(3.261578404304397) q[0], q[1];
rx(0.789254201036289) q[8];
rx(0.3939722768751969) q[6];
rz(3.268722893603995) q[5];
rx(3.1035599644135554) q[0];
csx q[6], q[7];
p(5.558123273268175) q[3];
sx q[2];
rzz_4564529712(2.922370868137348) q[1], q[4];
U(4.070430185895946, 5.732259518053389, 0.8725850422256198) q[8];
cswap q[0], q[4], q[3];
sxdg q[6];
u2(5.415818790736811, 0.863548009801541) q[7];
t q[8];
rzx_4564530384(6.203632910578645) q[1], q[5];
sxdg q[2];
h q[4];
cs q[8], q[1];
z q[0];
cx q[6], q[5];
cx q[3], q[7];
t q[2];
ccx q[4], q[6], q[5];
xx_minus_yy_4564529808(2.006620778799662, 5.682744294214225) q[0], q[8];
crz(0.8397247875255534) q[3], q[1];
cu(4.724596204685491, 3.728517430305813, 1.1927890548677103, 4.759837252610217) q[2], q[7];
rzx_4564530864(4.982596034535399) q[4], q[1];
swap q[8], q[7];
dcx q[5], q[6];
xx_minus_yy_4564528608(1.3908536723293004, 2.1345960850070433) q[3], q[2];
rx(5.958155303326213) q[0];
iswap q[1], q[3];
cz q[4], q[0];
h q[2];
cs q[7], q[5];
u1(0.7480822889388112) q[6];
h q[8];
cy q[7], q[4];
u3(3.729411781088876, 4.339988000319605, 4.917178226455586) q[5];
rzz_4564528128(5.756323944305695) q[6], q[0];
id q[8];
cswap q[3], q[2], q[1];
u2(6.264259768451398, 1.5077637350283566) q[5];
cu(1.3903581339803894, 3.691792432113905, 4.060476351161014, 2.924134957304911) q[1], q[3];
u1(5.196517634316214) q[4];
csx q[2], q[7];
tdg q[8];
swap q[0], q[6];
rcccx q[0], q[8], q[7], q[3];
t q[5];
cu3_4564528224(2.2054756702321705, 1.3046451507905532, 5.548289567091288) q[1], q[2];
cz q[4], q[6];
xx_plus_yy_4564531248(4.995380924475244, 1.8775862010880504) q[2], q[3];
ccx q[0], q[5], q[8];
t q[7];
u1(0.6352775028175032) q[1];
h q[6];
sx q[4];
ccz q[8], q[0], q[1];
dcx q[3], q[5];
t q[6];
cu(3.9355199935545304, 5.9482840306835305, 6.255987993957672, 2.4267930865047784) q[2], q[7];
tdg q[4];
id q[8];
swap q[2], q[1];
u1(5.562747008864643) q[0];
csx q[5], q[6];
t q[3];
crx(3.940158575902584) q[4], q[7];
cu1_4564521312(2.380113506186559) q[2], q[4];
c3sx q[0], q[1], q[8], q[5];
cu3_4564527456(5.554435284992085, 1.1153090478430991, 0.388300223347746) q[7], q[3];
u1(2.9604338037276787) q[6];
csx q[7], q[6];
sxdg q[0];
t q[5];
id q[4];
cu1_4564532160(4.014973786859032) q[1], q[8];
cu3_4564532496(0.5080449297197135, 0.7982172151786832, 1.608977738724728) q[3], q[2];
ccz q[0], q[3], q[5];
swap q[7], q[2];
rccx q[4], q[6], q[8];
tdg q[1];
cp(4.839737381329751) q[7], q[1];
rcccx q[3], q[8], q[5], q[0];
sx q[2];
csdg q[4], q[6];
dcx q[2], q[3];
ryy_4564531728(1.8092853204389558) q[6], q[5];
cry(0.4395979426304231) q[8], q[0];
sxdg q[4];
rzz_4564532256(2.1304519487263436) q[7], q[1];
cp(1.588892213846194) q[0], q[5];
r_4564525104(4.918527283420125, 3.418841318705973) q[2];
tdg q[4];
cry(2.4517211265896086) q[1], q[3];
dcx q[8], q[6];
y q[7];
csx q[8], q[5];
t q[7];
cu(1.3642555441196464, 3.3621112485094193, 4.122011603243401, 6.24735819063485) q[2], q[1];
ecr q[3], q[0];
cu1_4564523664(5.153022912950164) q[6], q[4];
p(0.8171681050186306) q[5];
cy q[0], q[3];
h q[8];
p(4.061381712526827) q[6];
sx q[2];
rx(4.456870493566977) q[4];
csx q[1], q[7];
