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
gate cu3_4564514192(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.1383160343142533) _gate_q_0;
  u1(-3.0498031416789155) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.772791196151622, 0, -3.1383160343142533) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.772791196151622, 6.188119175993169, 0) _gate_q_1;
}
gate rzz_4564516736(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.346912323071255) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4564501280(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.2296079754930185, 2.9114012359281665, -2.9114012359281665) _gate_q_0;
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
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate cu3_4564501904(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.5536148715864186) _gate_q_0;
  u1(1.9562483018803736) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.030344611590639413, 0, -3.5536148715864186) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.030344611590639413, 1.5973665697060453, 0) _gate_q_1;
}
gate rxx_4564501328(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.5594200007053516) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4564501664(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.4785616329618785) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4564502000(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.479660457832704, 3.0851821434126663, -3.0851821434126663) _gate_q_0;
}
gate cu1_4564501568(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.42440046968028977) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.42440046968028977) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.42440046968028977) _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4564502720(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.395435067740365) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.5237848291866966) _gate_q_0;
  ry(-0.5237848291866966) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.395435067740365) _gate_q_1;
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
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate r_4564502480(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.995951790567301, 2.1115303189039274, -2.1115303189039274) _gate_q_0;
}
gate ryy_4564504688(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.638639744962835) _gate_q_1;
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
gate rxx_4564510640(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.0994147925133748) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4564504352(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.8208676731139666) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4564503200(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.43495770339409096) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4564503440(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.5919213895035452) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4564504736(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.3153537635506236) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.0433147200661315) _gate_q_1;
  ry(-1.0433147200661315) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.3153537635506236) _gate_q_0;
}
gate r_4564502912(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.512847934301314, 1.6792172754845924, -1.6792172754845924) _gate_q_0;
}
gate xx_minus_yy_4564505456(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.7176197307931536) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.159690008474523) _gate_q_0;
  ry(-1.159690008474523) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.7176197307931536) _gate_q_1;
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
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate rxx_4564505264(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7558594336518327) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4564504112(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.140805360098982) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.041503538791778774) _gate_q_0;
  ry(-0.041503538791778774) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.140805360098982) _gate_q_1;
}
gate xx_plus_yy_4564505312(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.8876579930176054) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.3245851418614427) _gate_q_1;
  ry(-1.3245851418614427) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.8876579930176054) _gate_q_0;
}
gate r_4564505648(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.4020770995566862, 2.2378580623739457, -2.2378580623739457) _gate_q_0;
}
gate rzx_4564505792(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.337264670399189) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4564504160(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.5042310751137133) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.0273250453812988) _gate_q_0;
  ry(-1.0273250453812988) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.5042310751137133) _gate_q_1;
}
gate r_4564506512(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.8836278897444421, -0.3762195977504168, 0.3762195977504168) _gate_q_0;
}
gate xx_minus_yy_4564506368(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.0157537598009496) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.274735813289036) _gate_q_0;
  ry(-2.274735813289036) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.0157537598009496) _gate_q_1;
}
gate rzz_4564505888(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.6478124070642526) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4564504544(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.5772980973500046) _gate_q_0;
  u1(-0.6368872204338751) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1359317228097079, 0, -1.5772980973500046) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1359317228097079, 2.2141853177838797, 0) _gate_q_1;
}
gate rxx_4564505072(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.5817084997863207) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4564506416(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.581659778924757) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.6646578258039145) _gate_q_1;
  ry(-0.6646578258039145) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.581659778924757) _gate_q_0;
}
gate ryy_4564505696(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.737778367310501) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4564506656(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.19176684423842758) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.9798884424916477) _gate_q_1;
  ry(-0.9798884424916477) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.19176684423842758) _gate_q_0;
}
qubit[7] q;
rx(4.885111929479636) q[5];
rccx q[4], q[1], q[6];
U(0.223600445700753, 4.331732071242385, 2.3063473060374755) q[0];
x q[2];
x q[3];
cu3_4564514192(1.545582392303244, 6.188119175993169, 0.08851289263533754) q[2], q[5];
ccx q[4], q[3], q[6];
crz(6.060842577274503) q[0], q[1];
ch q[2], q[1];
cu(0.5052947432632956, 2.8882411452513, 0.4828004726677054, 6.182897516793042) q[3], q[5];
rzz_4564516736(4.346912323071255) q[4], q[0];
t q[6];
u3(4.196910271744544, 4.681769051205184, 5.6150610730606045) q[2];
rz(3.7441438099389375) q[6];
cx q[5], q[0];
cu(3.4627752290052367, 2.4967479066475193, 4.393181547734521, 5.994341995036475) q[4], q[3];
u3(3.5609069148228625, 2.3571227948692415, 1.185997151886508) q[1];
s q[4];
rz(6.1672314859766395) q[1];
r_4564501280(6.2296079754930185, 4.482197562723063) q[2];
y q[3];
id q[0];
rz(4.150576512851634) q[6];
U(1.1148747617856427, 5.385368745297296, 1.0801677358449713) q[5];
s q[2];
csx q[3], q[4];
cry(5.2878267415348015) q[6], q[0];
cx q[5], q[1];
swap q[6], q[4];
csdg q[5], q[1];
rz(0.3357760278056261) q[3];
cu3_4564501904(0.060689223181278826, 1.5973665697060453, 5.509863173466792) q[2], q[0];
csdg q[6], q[1];
cx q[4], q[5];
cry(1.5018799922204769) q[3], q[2];
sx q[0];
rxx_4564501328(2.5594200007053516) q[4], q[3];
rxx_4564501664(2.4785616329618785) q[5], q[6];
cx q[0], q[1];
r_4564502000(5.479660457832704, 4.655978470207563) q[2];
cu1_4564501568(0.8488009393605795) q[0], q[6];
z q[3];
ccx q[4], q[5], q[2];
rz(4.706508047801252) q[1];
u1(3.8720468038343534) q[5];
cp(5.175725394970471) q[4], q[1];
y q[2];
xx_minus_yy_4564502720(1.047569658373393, 1.395435067740365) q[3], q[6];
rz(0.42712624228553) q[0];
csx q[4], q[3];
U(0.3080030207483865, 3.22930449597567, 3.404548514402878) q[5];
crx(1.3615320302860319) q[0], q[2];
csx q[1], q[6];
u3(4.220605603691805, 1.0331991472982038, 6.169667168403283) q[3];
u3(3.286903013135148, 4.778420239270072, 2.112366321176066) q[0];
sdg q[6];
p(5.778294395877499) q[5];
rz(2.5236683827298756) q[1];
csdg q[2], q[4];
rccx q[6], q[4], q[0];
cswap q[2], q[3], q[5];
sdg q[1];
y q[3];
c3sx q[0], q[6], q[5], q[2];
U(2.201093853608001, 3.652606898614873, 0.9940444957115683) q[4];
U(0.4787170018562015, 2.8271930904339535, 0.5266928346900317) q[1];
iswap q[1], q[4];
cswap q[0], q[3], q[6];
h q[2];
y q[5];
rz(4.16825351709312) q[6];
r_4564502480(5.995951790567301, 3.682326645698824) q[2];
crz(1.216753805977117) q[0], q[4];
csx q[1], q[3];
t q[5];
ccx q[0], q[1], q[2];
iswap q[4], q[5];
rz(1.5746194123762605) q[3];
ry(4.533038168934196) q[6];
cswap q[4], q[6], q[2];
id q[1];
cu(1.0233243619884098, 0.16872735508789324, 1.848160406095022, 2.406367436296288) q[0], q[5];
ry(6.154893370989685) q[3];
z q[6];
swap q[0], q[3];
ryy_4564504688(2.638639744962835) q[5], q[4];
y q[2];
h q[1];
c3sx q[3], q[2], q[0], q[4];
cx q[5], q[6];
h q[1];
s q[4];
cs q[1], q[2];
rxx_4564510640(1.0994147925133748) q[5], q[3];
ryy_4564504352(3.8208676731139666) q[0], q[6];
ccx q[2], q[3], q[1];
cry(4.160152107012161) q[4], q[6];
rxx_4564503200(0.43495770339409096) q[0], q[5];
rzx_4564503440(0.5919213895035452) q[4], q[0];
y q[6];
xx_plus_yy_4564504736(2.086629440132263, 1.3153537635506236) q[1], q[3];
rx(0.5302567028404093) q[5];
p(2.9497924859944384) q[2];
swap q[2], q[5];
r_4564502912(2.512847934301314, 3.250013602279489) q[1];
cp(2.246414847516709) q[6], q[3];
xx_minus_yy_4564505456(2.319380016949046, 3.7176197307931536) q[0], q[4];
rcccx q[3], q[4], q[0], q[5];
rx(4.100760674051991) q[6];
rx(0.4829456633023043) q[2];
z q[1];
c3sx q[4], q[6], q[5], q[0];
rccx q[1], q[2], q[3];
y q[3];
h q[4];
crx(0.5765891988625186) q[1], q[2];
cy q[5], q[6];
s q[0];
ecr q[5], q[0];
sdg q[2];
sxdg q[1];
ecr q[6], q[4];
sdg q[3];
cu(4.545964736218771, 3.656251386021054, 0.973624475355582, 2.137873743489854) q[6], q[3];
cz q[2], q[5];
ccz q[0], q[1], q[4];
iswap q[0], q[5];
cy q[2], q[3];
cswap q[1], q[4], q[6];
cy q[6], q[3];
y q[0];
cp(3.3020444281802033) q[2], q[1];
rxx_4564505264(3.7558594336518327) q[4], q[5];
sxdg q[3];
rx(3.5773321216861507) q[6];
t q[5];
cswap q[0], q[1], q[2];
sdg q[4];
xx_minus_yy_4564504112(0.08300707758355755, 4.140805360098982) q[6], q[0];
cp(4.742421919486181) q[3], q[4];
xx_plus_yy_4564505312(2.6491702837228854, 2.8876579930176054) q[2], q[5];
sx q[1];
p(0.9920118161870484) q[6];
r_4564505648(3.4020770995566862, 3.8086543891688422) q[4];
csx q[2], q[5];
u3(2.971916566449293, 0.9557419096326046, 4.923484314519848) q[1];
rx(0.4083676102159956) q[3];
rz(2.0933148506192274) q[0];
crx(2.1928325956078805) q[3], q[4];
h q[5];
cy q[6], q[0];
sx q[1];
t q[2];
cz q[6], q[4];
cs q[0], q[1];
rzx_4564505792(3.337264670399189) q[2], q[3];
s q[5];
csx q[0], q[1];
id q[3];
xx_minus_yy_4564504160(2.0546500907625975, 3.5042310751137133) q[6], q[4];
t q[5];
r_4564506512(0.8836278897444421, 1.1945767290444798) q[2];
xx_minus_yy_4564506368(4.549471626578072, 1.0157537598009496) q[6], q[0];
cy q[3], q[1];
ch q[5], q[4];
tdg q[2];
ry(3.4748996919373862) q[3];
cs q[1], q[0];
u1(5.186138310668111) q[6];
rzz_4564505888(2.6478124070642526) q[5], q[2];
s q[4];
U(4.841202983893385, 1.2174897092974322, 1.220969388831489) q[5];
cu3_4564504544(2.2718634456194158, 2.2141853177838797, 0.9404108769161293) q[2], q[6];
cy q[3], q[0];
sxdg q[1];
U(4.807412135902659, 3.4879859660130967, 4.064958800702999) q[4];
rxx_4564505072(3.5817084997863207) q[5], q[3];
sx q[4];
u2(5.277739164234448, 5.8156147914092875) q[1];
rccx q[2], q[6], q[0];
y q[6];
ccx q[5], q[2], q[4];
id q[3];
u3(3.0376804460761035, 5.1464275252821245, 1.1915731873287478) q[1];
u2(0.8859808360731894, 1.7270653086138055) q[0];
xx_plus_yy_4564506416(1.329315651607829, 4.581659778924757) q[5], q[0];
ryy_4564505696(4.737778367310501) q[1], q[2];
cx q[4], q[6];
U(3.2750340224298813, 4.1525975318793185, 3.2543044510885553) q[3];
sx q[6];
rz(1.0859398412489192) q[2];
crx(4.205181010647442) q[0], q[3];
rx(0.9218142028653531) q[5];
U(4.036794284310063, 5.074862293547401, 1.9788563332826978) q[1];
rx(0.24758208408591806) q[4];
swap q[5], q[0];
sdg q[4];
xx_plus_yy_4564506656(1.9597768849832955, 0.19176684423842758) q[1], q[2];
z q[3];
u3(0.10831102665183397, 5.158927207089879, 5.352960964664951) q[6];
iswap q[4], q[1];
p(3.5172481216839606) q[2];
rx(5.382304324275973) q[6];
tdg q[5];
id q[3];
U(5.132961661092271, 5.709134867584482, 0.2851295720970337) q[0];
s q[4];
c3sx q[1], q[6], q[3], q[0];
crx(2.4654251437844272) q[5], q[2];
ry(0.42574154638613004) q[4];
rccx q[0], q[2], q[6];
z q[5];
csx q[3], q[1];
U(4.873442590687599, 0.8023272207680794, 0.14388908915052967) q[5];
c3sx q[0], q[3], q[6], q[1];
cry(3.376790829270911) q[2], q[4];
