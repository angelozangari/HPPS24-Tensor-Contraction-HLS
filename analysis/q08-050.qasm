OPENQASM 3.0;
include "stdgates.inc";
gate ryy_4564540384(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.4032831158912051) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate ryy_4564540864(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.9357055607014777) _gate_q_1;
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
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate r_4564542160(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.162226482108645, -0.8614793839282179, 0.8614793839282179) _gate_q_0;
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
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cu3_4564533568(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.222404823595928) _gate_q_0;
  u1(-0.48892855494585463) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.4062072313671252, 0, -5.222404823595928) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.4062072313671252, 5.711333378541783, 0) _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4564533520(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.027957159906551256) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.6629371922221474) _gate_q_1;
  ry(-1.6629371922221474) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.027957159906551256) _gate_q_0;
}
gate xx_plus_yy_4564533904(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.7396365084051575) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.3787243489436148) _gate_q_1;
  ry(-0.3787243489436148) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.7396365084051575) _gate_q_0;
}
gate rzz_4564534384(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.087478196411788) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate r_4564533328(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.721440408718174, 3.470540537437734, -3.470540537437734) _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate xx_plus_yy_4564533424(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.081103268720391) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.155988539862235) _gate_q_1;
  ry(-2.155988539862235) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.081103268720391) _gate_q_0;
}
gate xx_minus_yy_4564534288(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.8369339784937099) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.6649256074635397) _gate_q_0;
  ry(-1.6649256074635397) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.8369339784937099) _gate_q_1;
}
gate rxx_4564534672(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.4096125753819297) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4564536112(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.39221159192416105) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.19229424484239) _gate_q_1;
  ry(-1.19229424484239) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.39221159192416105) _gate_q_0;
}
gate ryy_4564533376(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.891203936171202) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4564534768(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.589569907652794) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4564537744(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.9311499007502375) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4564535488(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.401174961004665) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4564537072(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.181003300468942) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4564535920(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.4475862142754075) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.996807703362237) _gate_q_1;
  ry(-1.996807703362237) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.4475862142754075) _gate_q_0;
}
gate rxx_4564534048(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7163985806112345) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate xx_plus_yy_4564535536(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.496451202787963) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.6693182547953673) _gate_q_1;
  ry(-1.6693182547953673) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.496451202787963) _gate_q_0;
}
gate cu3_4564536544(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.3554944311848303) _gate_q_0;
  u1(1.1778581111968733) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.5877065365665699, 0, -3.3554944311848303) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.5877065365665699, 2.177636319987957, 0) _gate_q_1;
}
gate rzx_4564537264(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.919760368600888) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4564534864(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.348868620694134) _gate_q_0;
  u1(0.5777511749871904) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1395371303080826, 0, -4.348868620694134) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1395371303080826, 3.771117445706943, 0) _gate_q_1;
}
gate rzx_4564539904(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.684338190184055) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4564534960(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.705819315851949) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu1_4564538320(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.2438439689879255) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.2438439689879255) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.2438439689879255) _gate_q_1;
}
gate rzx_4564538224(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.43633321416255) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4564538464(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.335743560946786) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4564538512(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.566681635088548) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4564540480(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.018580534996297) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4564539520(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.682355756990254) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4564535728(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.0488690768091047) _gate_q_0;
  u1(1.0800987326862166) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.615237427033636, 0, -2.0488690768091047) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.615237427033636, 0.9687703441228882, 0) _gate_q_1;
}
gate cu1_4564535392(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.12920701245147742) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.12920701245147742) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.12920701245147742) _gate_q_1;
}
gate xx_minus_yy_4564539568(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.2828206444275498) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.8466217767728197) _gate_q_0;
  ry(-2.8466217767728197) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.2828206444275498) _gate_q_1;
}
gate cu1_4564536688(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.8470042985845234) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.8470042985845234) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.8470042985845234) _gate_q_1;
}
gate ryy_4564536736(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.240756288045609) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4564539136(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.718589276875752) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4564539712(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.716850112701126) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.069718883105299) _gate_q_1;
  ry(-1.069718883105299) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.716850112701126) _gate_q_0;
}
gate rxx_4564537456(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.597617741531336) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4564541344(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.5669873316687615) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5604406136952846) _gate_q_1;
  ry(-2.5604406136952846) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.5669873316687615) _gate_q_0;
}
gate rzx_4564541200(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.271942193912364) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
qubit[8] q;
ryy_4564540384(0.4032831158912051) q[3], q[4];
cs q[0], q[2];
z q[1];
x q[7];
ryy_4564540864(3.9357055607014777) q[5], q[6];
cp(5.382909386558746) q[0], q[3];
cry(3.5621854452811945) q[4], q[1];
rcccx q[2], q[6], q[5], q[7];
ccx q[4], q[6], q[2];
c3sx q[3], q[7], q[0], q[1];
u3(5.934152426628556, 4.231802647962739, 6.207025085819024) q[5];
ecr q[6], q[2];
y q[7];
iswap q[5], q[0];
sdg q[1];
s q[3];
r_4564542160(4.162226482108645, 0.7093169428666787) q[4];
id q[2];
cx q[1], q[0];
cy q[6], q[4];
u3(1.252865520737024, 3.215540495415539, 4.636411880195954) q[3];
z q[5];
sx q[7];
u2(4.094182418087497, 1.9015442615744218) q[4];
cswap q[6], q[1], q[3];
sdg q[2];
rccx q[7], q[5], q[0];
cs q[0], q[7];
cu(3.4657909282282473, 0.44404649273427216, 4.762317422090483, 5.040548641571415) q[5], q[6];
p(4.013124657442462) q[3];
h q[1];
dcx q[2], q[4];
cu3_4564533568(2.8124144627342504, 5.711333378541783, 4.733476268650073) q[0], q[2];
xx_plus_yy_4564533520(3.325874384444295, 0.027957159906551256) q[7], q[4];
t q[6];
ch q[5], q[3];
u2(3.5202740678977795, 1.4539225417625508) q[1];
xx_plus_yy_4564533904(0.7574486978872296, 3.7396365084051575) q[6], q[1];
rzz_4564534384(1.087478196411788) q[0], q[2];
sx q[7];
csx q[5], q[4];
r_4564533328(4.721440408718174, 5.041336864232631) q[3];
ry(1.7147208761384802) q[3];
t q[4];
csdg q[1], q[7];
iswap q[0], q[5];
xx_plus_yy_4564533424(4.31197707972447, 3.081103268720391) q[2], q[6];
x q[6];
swap q[7], q[1];
xx_minus_yy_4564534288(3.3298512149270794, 0.8369339784937099) q[3], q[2];
cs q[5], q[0];
rx(2.1985127420106743) q[4];
tdg q[5];
rccx q[1], q[7], q[2];
u1(6.194591887010104) q[0];
dcx q[6], q[3];
t q[4];
rz(4.617334739111889) q[5];
crx(3.504216840914055) q[2], q[3];
u2(1.8255935562884926, 0.11873241333074215) q[1];
cry(4.944939522832802) q[0], q[6];
rx(4.345732510995563) q[7];
u2(3.5631159092656914, 5.661177673736837) q[4];
rxx_4564534672(2.4096125753819297) q[6], q[0];
ccx q[5], q[3], q[2];
y q[1];
cry(2.615393402113264) q[7], q[4];
cswap q[0], q[3], q[1];
cy q[2], q[6];
cswap q[7], q[5], q[4];
csx q[1], q[2];
xx_plus_yy_4564536112(2.38458848968478, 0.39221159192416105) q[6], q[7];
y q[5];
cu(1.176149450231517, 4.72374992122168, 4.5201877940724815, 1.4059755785456922) q[3], q[4];
h q[0];
u1(1.486310282510396) q[4];
z q[2];
ryy_4564533376(5.891203936171202) q[5], q[7];
rcccx q[6], q[0], q[1], q[3];
rzx_4564534768(2.589569907652794) q[0], q[5];
c3sx q[1], q[4], q[3], q[6];
cx q[7], q[2];
csx q[2], q[3];
ryy_4564537744(5.9311499007502375) q[4], q[6];
dcx q[0], q[5];
dcx q[7], q[1];
iswap q[0], q[6];
ecr q[4], q[5];
h q[2];
swap q[7], q[1];
z q[3];
rxx_4564535488(2.401174961004665) q[3], q[2];
ryy_4564537072(6.181003300468942) q[6], q[4];
xx_plus_yy_4564535920(3.993615406724474, 2.4475862142754075) q[5], q[0];
z q[1];
rz(3.298406171701694) q[7];
rxx_4564534048(3.7163985806112345) q[7], q[5];
sxdg q[3];
rz(3.3024692602268897) q[6];
ccz q[1], q[4], q[0];
ry(2.8784018546681156) q[2];
sdg q[7];
rx(1.6074529632301695) q[4];
xx_plus_yy_4564535536(3.3386365095907347, 3.496451202787963) q[1], q[3];
csdg q[0], q[6];
sxdg q[5];
z q[2];
u3(5.117852501384948, 3.6787994018620074, 5.7730082584853815) q[1];
x q[5];
cs q[0], q[3];
tdg q[4];
cu3_4564536544(1.1754130731331398, 2.177636319987957, 4.533352542381704) q[7], q[6];
u2(0.7767039927537864, 0.5664680499650233) q[2];
rzx_4564537264(4.919760368600888) q[0], q[7];
sxdg q[6];
cu3_4564534864(2.279074260616165, 3.771117445706943, 4.926619795681324) q[2], q[3];
rzx_4564539904(5.684338190184055) q[1], q[5];
rx(4.564882009064661) q[4];
t q[0];
sdg q[5];
p(6.040291667459626) q[1];
cu(0.7894390211287887, 6.131007179790982, 1.8333355236768185, 2.665757105659369) q[7], q[2];
rzz_4564534960(5.705819315851949) q[4], q[6];
rx(3.1552338177969106) q[3];
ccx q[3], q[2], q[0];
u1(4.6464688267699925) q[4];
y q[6];
u1(0.19005235421102232) q[5];
rz(4.323031714375216) q[1];
x q[7];
ccx q[7], q[6], q[0];
csdg q[4], q[1];
cry(5.671128544406377) q[5], q[3];
u3(2.4849344818354835, 4.09898939298058, 2.461412346508977) q[2];
x q[5];
cu1_4564538320(4.487687937975851) q[7], q[3];
cu(3.2708117798647764, 0.4211933292985064, 2.519547236686921, 3.610680876779645) q[2], q[0];
u3(0.4592412245637595, 3.4572054427435153, 5.988784033310409) q[4];
sdg q[1];
ry(6.072263644683274) q[6];
crz(2.3926322244698786) q[7], q[1];
rzx_4564538224(2.43633321416255) q[5], q[2];
sxdg q[6];
rzx_4564538464(2.335743560946786) q[0], q[3];
U(1.2865158711400682, 3.492397835420388, 0.42916698256148156) q[4];
z q[1];
tdg q[4];
iswap q[3], q[7];
U(3.883713511726224, 1.4858938971458144, 5.375319097953949) q[0];
ryy_4564538512(4.566681635088548) q[6], q[2];
x q[5];
u2(1.203845694829666, 1.5570524379783608) q[7];
u1(3.4999151544761737) q[6];
rxx_4564540480(2.018580534996297) q[0], q[4];
id q[3];
sdg q[2];
y q[1];
x q[5];
sxdg q[4];
t q[2];
cu(6.245270086938377, 0.6797072369763861, 2.259134970263886, 1.4659474520993858) q[6], q[7];
ry(3.545976886679293) q[0];
csdg q[3], q[5];
id q[1];
s q[0];
tdg q[7];
ry(4.249562843835991) q[4];
h q[3];
h q[5];
csx q[1], q[2];
tdg q[6];
rzx_4564539520(2.682355756990254) q[3], q[0];
cu3_4564535728(1.230474854067272, 0.9687703441228882, 3.1289678094953213) q[6], q[1];
cp(6.134869417906316) q[5], q[2];
cu(0.40407156977565256, 0.0761170441457864, 3.8526185588038615, 5.406512386405849) q[4], q[7];
sx q[7];
ccz q[5], q[2], q[1];
cry(3.502860484306229) q[0], q[3];
rx(1.9958673752846663) q[6];
ry(5.986464198710771) q[4];
cz q[4], q[6];
iswap q[7], q[0];
cu1_4564535392(0.25841402490295484) q[2], q[5];
u2(5.0638798533108185, 5.674418376784111) q[3];
u3(0.34225404069705373, 1.4427585503882856, 4.462969737025106) q[1];
t q[5];
rx(3.1919404731767367) q[4];
xx_minus_yy_4564539568(5.693243553545639, 1.2828206444275498) q[6], q[0];
dcx q[1], q[7];
cx q[3], q[2];
x q[6];
cs q[1], q[4];
sxdg q[5];
dcx q[7], q[0];
u2(5.1326992145164825, 1.7735988302489698) q[3];
p(4.234267463699848) q[2];
s q[5];
cu1_4564536688(5.694008597169047) q[3], q[0];
csx q[7], q[2];
iswap q[1], q[4];
y q[6];
sdg q[7];
ryy_4564536736(4.240756288045609) q[4], q[0];
cy q[3], q[5];
sxdg q[6];
ry(5.467220299314423) q[2];
x q[1];
ry(0.6881806758582727) q[3];
ch q[6], q[4];
cu(2.145383801345162, 5.107746568987276, 1.4257176438022698, 1.0452460154647432) q[0], q[2];
ry(6.166061654430828) q[1];
z q[5];
h q[7];
cp(6.281475014899808) q[3], q[0];
rcccx q[2], q[7], q[1], q[5];
h q[4];
y q[6];
c3sx q[6], q[7], q[2], q[5];
sxdg q[1];
cry(2.83816678568389) q[3], q[0];
x q[4];
p(0.30093410510890606) q[6];
cx q[3], q[2];
rccx q[7], q[0], q[4];
id q[1];
t q[5];
rccx q[5], q[2], q[1];
rzx_4564539136(3.718589276875752) q[6], q[0];
id q[7];
ch q[4], q[3];
sdg q[7];
rcccx q[6], q[1], q[2], q[0];
xx_plus_yy_4564539712(2.139437766210598, 5.716850112701126) q[5], q[4];
tdg q[3];
u1(2.1197793742252857) q[4];
rxx_4564537456(2.597617741531336) q[1], q[5];
crz(0.8176858338657865) q[0], q[3];
ccz q[6], q[7], q[2];
xx_plus_yy_4564541344(5.120881227390569, 1.5669873316687615) q[2], q[1];
rzx_4564541200(3.271942193912364) q[7], q[5];
cz q[4], q[3];
ry(2.105099483997781) q[6];
rz(5.292857266430913) q[0];
y q[4];
crz(4.721874114189528) q[5], q[7];
id q[1];
y q[0];
tdg q[6];
t q[3];
id q[2];
