OPENQASM 3.0;
include "stdgates.inc";
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4536120240(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.541924851765146) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.9283541641380622) _gate_q_0;
  ry(-0.9283541641380622) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.541924851765146) _gate_q_1;
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
gate ryy_4536108768(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.287233753287235) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4537342224(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(6.276927866746204) _gate_q_1;
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
gate rxx_4537339632(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.4193029816905183) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4537339392(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.2307389087928255) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate r_4537339440(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.4677924746259245, -0.6583622680247078, 0.6583622680247078) _gate_q_0;
}
gate ryy_4537344000(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8540435817477036) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4537343088(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.296604699911363) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4537343232(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.6175784684984242) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
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
gate r_4537343328(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.6670871774550466, -0.9542897712953126, 0.9542897712953126) _gate_q_0;
}
gate ryy_4537343040(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.616365704892881) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate ryy_4537343472(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.12575356649728) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4537343664(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.456538013940495) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.3442916039942796) _gate_q_0;
  ry(-1.3442916039942796) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.456538013940495) _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate rzx_4537342416(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.4647511771663379) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4537344144(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.0248284154401537) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate r_4537344048(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.8757747132847395, 1.7305751293791167, -1.7305751293791167) _gate_q_0;
}
gate ryy_4537345584(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.147517806666628) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4537345152(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.314955041014621) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.446726337053566) _gate_q_0;
  ry(-2.446726337053566) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.314955041014621) _gate_q_1;
}
gate xx_minus_yy_4537342608(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.0327825364750463) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.028739636863764) _gate_q_0;
  ry(-2.028739636863764) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.0327825364750463) _gate_q_1;
}
gate rxx_4537344960(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.6483188906694806) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4537343952(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.1877938833318886) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.9997788625833777) _gate_q_1;
  ry(-2.9997788625833777) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.1877938833318886) _gate_q_0;
}
gate rzz_4537344240(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.082135518319957) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4537346016(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.533341883862751) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4537345776(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-6.186844747079423) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.6457203736462565) _gate_q_0;
  ry(-1.6457203736462565) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(6.186844747079423) _gate_q_1;
}
gate ryy_4537345824(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.677022231763608) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4537345920(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.461058980322154) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4537345008(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.334189831152335) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.334189831152335) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.334189831152335) _gate_q_1;
}
gate rzz_4537346928(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.4863034766725325) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4537347168(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.550899445991813) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4537346448(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.09424543151206889) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.04261687874635868) _gate_q_1;
  ry(-0.04261687874635868) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.09424543151206889) _gate_q_0;
}
gate cu3_4537347360(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.89415777077056) _gate_q_0;
  u1(-2.05548969060667) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1446861854936357, 0, -3.89415777077056) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1446861854936357, 5.94964746137723, 0) _gate_q_1;
}
gate rxx_4537347888(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.5940548580997309) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4537347936(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.183919305990001) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.0008607803634364) _gate_q_1;
  ry(-2.0008607803634364) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.183919305990001) _gate_q_0;
}
gate rzx_4537346784(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.1199046502075936) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4537349184(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.3556767644281924) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
qubit[5] q;
ccx q[1], q[0], q[4];
cry(5.616014106057367) q[2], q[3];
cry(6.073807278584127) q[4], q[1];
x q[2];
z q[3];
rx(0.325267880229391) q[0];
u3(1.198493786516482, 4.3906585775150635, 0.5554782656096365) q[3];
t q[0];
rz(3.6196114908515447) q[2];
cx q[1], q[4];
xx_minus_yy_4536120240(1.8567083282761243, 5.541924851765146) q[2], q[3];
rccx q[0], q[4], q[1];
c3sx q[1], q[0], q[4], q[2];
sx q[3];
sdg q[4];
ryy_4536108768(4.287233753287235) q[1], q[0];
cz q[3], q[2];
cry(1.021482515881773) q[1], q[3];
rzz_4537342224(6.276927866746204) q[2], q[4];
u1(5.449201699408541) q[0];
s q[1];
rcccx q[4], q[3], q[0], q[2];
rxx_4537339632(0.4193029816905183) q[4], q[1];
sdg q[2];
sx q[3];
u2(5.8648172130220795, 2.7159673346435946) q[0];
rzx_4537339392(4.2307389087928255) q[0], q[3];
csdg q[1], q[2];
r_4537339440(5.4677924746259245, 0.9124340587701888) q[4];
u2(4.04508783772965, 2.8184547414338463) q[3];
z q[4];
ryy_4537344000(0.8540435817477036) q[0], q[2];
rx(4.717317806970856) q[1];
t q[3];
rxx_4537343088(5.296604699911363) q[4], q[0];
ryy_4537343232(1.6175784684984242) q[2], q[1];
tdg q[3];
tdg q[2];
ecr q[4], q[0];
t q[1];
sxdg q[4];
h q[1];
csx q[0], q[2];
rz(1.6385500083306148) q[3];
id q[2];
r_4537343328(3.6670871774550466, 0.616506555499584) q[0];
sdg q[1];
ryy_4537343040(3.616365704892881) q[4], q[3];
cu(5.864047560384643, 3.169497552900596, 1.2541537894561012, 0.08296999898107293) q[3], q[2];
ccz q[4], q[1], q[0];
cz q[0], q[1];
u2(5.317949302874881, 2.8572373263770148) q[3];
crz(2.842818789208848) q[4], q[2];
crx(5.550398981185415) q[1], q[0];
ch q[4], q[3];
sdg q[2];
ryy_4537343472(5.12575356649728) q[1], q[2];
t q[4];
cz q[0], q[3];
z q[4];
xx_minus_yy_4537343664(2.688583207988559, 4.456538013940495) q[3], q[0];
crx(3.279310485522423) q[2], q[1];
u1(2.7606117067880485) q[2];
sxdg q[3];
cs q[1], q[0];
id q[4];
rzx_4537342416(0.4647511771663379) q[3], q[2];
z q[0];
cz q[1], q[4];
cy q[3], q[1];
s q[2];
csx q[4], q[0];
U(0.36597567509014506, 0.4638462127647342, 4.003685584013286) q[0];
s q[2];
cz q[3], q[1];
p(1.8293104810877028) q[4];
sxdg q[3];
x q[0];
ryy_4537344144(2.0248284154401537) q[1], q[4];
sx q[2];
z q[2];
z q[1];
rccx q[3], q[0], q[4];
dcx q[1], q[2];
h q[0];
swap q[3], q[4];
iswap q[0], q[1];
cu(1.005024077851964, 0.07609117430508289, 4.970418661592906, 3.796356235985403) q[2], q[4];
u2(5.795921663115523, 2.778563825383583) q[3];
cswap q[2], q[3], q[4];
cx q[1], q[0];
rcccx q[1], q[2], q[0], q[4];
y q[3];
cu(2.2561732578503833, 4.041559586701648, 5.105307323138428, 6.008596362299347) q[3], q[2];
ccz q[1], q[0], q[4];
rcccx q[1], q[2], q[4], q[3];
u1(0.038821332761537534) q[0];
crx(1.720367799143238) q[1], q[3];
r_4537344048(5.8757747132847395, 3.3013714561740133) q[4];
swap q[2], q[0];
csx q[4], q[1];
sx q[3];
ryy_4537345584(4.147517806666628) q[0], q[2];
xx_minus_yy_4537345152(4.893452674107132, 2.314955041014621) q[4], q[3];
xx_minus_yy_4537342608(4.057479273727528, 3.0327825364750463) q[2], q[0];
rx(6.018142199695051) q[1];
u2(0.13465074278828404, 2.9680830141314267) q[3];
rx(2.739761252062025) q[0];
cry(6.184503798494743) q[4], q[1];
s q[2];
rxx_4537344960(3.6483188906694806) q[2], q[0];
u2(3.2792718656129125, 6.257699057042126) q[3];
t q[4];
sxdg q[1];
xx_plus_yy_4537343952(5.999557725166755, 1.1877938833318886) q[2], q[0];
rzz_4537344240(4.082135518319957) q[4], q[1];
ry(4.149147033237195) q[3];
u3(4.219157944045034, 0.4778302282587882, 0.5413165255253981) q[0];
csx q[2], q[4];
h q[1];
u3(0.3148152192878254, 3.626558912481345, 5.094788844498742) q[3];
rcccx q[0], q[1], q[2], q[4];
sxdg q[3];
ryy_4537346016(3.533341883862751) q[1], q[2];
crx(1.1921102680298623) q[3], q[4];
t q[0];
xx_minus_yy_4537345776(3.291440747292513, 6.186844747079423) q[3], q[0];
cx q[2], q[1];
u2(0.3629757554177607, 1.209678382018548) q[4];
tdg q[0];
ch q[4], q[2];
h q[1];
U(0.41116195093879504, 1.3980503444734478, 1.5581646677180896) q[3];
rz(3.7772181973360657) q[2];
y q[4];
swap q[3], q[0];
id q[1];
h q[2];
ryy_4537345824(5.677022231763608) q[3], q[4];
ryy_4537345920(5.461058980322154) q[0], q[1];
cu1_4537345008(2.66837966230467) q[4], q[0];
cry(1.3540343296419057) q[3], q[2];
sxdg q[1];
rcccx q[4], q[0], q[1], q[3];
p(1.8247807293890232) q[2];
rzz_4537346928(1.4863034766725325) q[0], q[4];
crx(2.64501571139422) q[2], q[3];
rz(5.711780758140259) q[1];
s q[3];
y q[0];
ecr q[1], q[4];
u1(1.6850557868640461) q[2];
rxx_4537347168(5.550899445991813) q[2], q[3];
u1(0.6214220060440172) q[0];
xx_plus_yy_4537346448(0.08523375749271736, 0.09424543151206889) q[1], q[4];
cs q[0], q[4];
sxdg q[1];
iswap q[3], q[2];
cu3_4537347360(2.2893723709872713, 5.94964746137723, 1.8386680801638902) q[3], q[1];
z q[2];
tdg q[4];
s q[0];
cs q[2], q[1];
cp(2.3651075065095277) q[3], q[4];
rz(5.792703949039888) q[0];
s q[2];
crx(2.52055200119607) q[1], q[3];
id q[0];
u3(5.7024642093169895, 4.449651686708066, 4.4281240916914735) q[4];
rz(2.632249226988865) q[4];
z q[2];
rxx_4537347888(0.5940548580997309) q[0], q[3];
sxdg q[1];
cry(5.324966779649391) q[2], q[3];
crz(6.145512888317571) q[4], q[1];
x q[0];
xx_plus_yy_4537347936(4.001721560726873, 1.183919305990001) q[2], q[1];
sxdg q[0];
rzx_4537346784(4.1199046502075936) q[3], q[4];
t q[1];
crz(4.135137637485758) q[0], q[3];
cs q[2], q[4];
c3sx q[4], q[3], q[1], q[2];
rx(5.554102447210413) q[0];
cs q[4], q[0];
rzx_4537349184(1.3556767644281924) q[2], q[1];
u2(4.2232341766865975, 2.858061805300111) q[3];
