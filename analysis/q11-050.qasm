OPENQASM 3.0;
include "stdgates.inc";
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4562325424(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.117997968301464) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.8584316400044445) _gate_q_0;
  ry(-2.8584316400044445) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.117997968301464) _gate_q_1;
}
gate cu3_4562326096(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.141336236414298) _gate_q_0;
  u1(-1.9397926010770552) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-3.140687276986425, 0, -3.141336236414298) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(3.140687276986425, 5.081128837491353, 0) _gate_q_1;
}
gate xx_plus_yy_4562325952(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.8708828247245095) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.4178676067300982) _gate_q_1;
  ry(-0.4178676067300982) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.8708828247245095) _gate_q_0;
}
gate xx_minus_yy_4562327728(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.9530323640589052) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.8813093506314268) _gate_q_0;
  ry(-0.8813093506314268) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.9530323640589052) _gate_q_1;
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
gate ryy_4562328640(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.5889254730493444) _gate_q_1;
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
gate ryy_4562328544(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.10154749346248282) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4562328784(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8141891410380077) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4562330272(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.5479470941426264) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.5152786923583754) _gate_q_0;
  ry(-0.5152786923583754) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.5479470941426264) _gate_q_1;
}
gate xx_minus_yy_4562337184(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.4222203952093319) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.4555270891224117) _gate_q_0;
  ry(-0.4555270891224117) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.4222203952093319) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate xx_minus_yy_4562330224(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.600295473082645) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.6316297298362856) _gate_q_0;
  ry(-0.6316297298362856) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.600295473082645) _gate_q_1;
}
gate ryy_4562330512(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.5868702081958013) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4562337328(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1936303299211817) _gate_q_1;
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
gate rzz_4562331376(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.6323895594166975) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate rzx_4562331472(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.099366378256627) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4562337232(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.8550962994725027) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4562324224(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.443903823406794) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.1181898987851568) _gate_q_0;
  ry(-1.1181898987851568) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.443903823406794) _gate_q_1;
}
gate cu1_4562325808(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.6943265059793643) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.6943265059793643) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.6943265059793643) _gate_q_1;
}
gate cu3_4562337664(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.207428668724176) _gate_q_0;
  u1(1.0280599590733344) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.542797127817581, 0, -5.207428668724176) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.542797127817581, 4.179368709650841, 0) _gate_q_1;
}
gate r_4562326000(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.323373743021868, -1.316875012827563, 1.316875012827563) _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate xx_plus_yy_4562337136(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.4263102226144735) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.130239727832496) _gate_q_1;
  ry(-2.130239727832496) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.4263102226144735) _gate_q_0;
}
gate rzz_4562326384(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.377075488836404) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4562325328(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6394453504909586) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4562325184(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.4498024419849935) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.3881221496779829) _gate_q_0;
  ry(-0.3881221496779829) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.4498024419849935) _gate_q_1;
}
gate r_4562325856(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.2777984992476243, 4.287428107630643, -4.287428107630643) _gate_q_0;
}
gate xx_minus_yy_4562325376(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.4006623393068827) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.7788366867369144) _gate_q_0;
  ry(-0.7788366867369144) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.4006623393068827) _gate_q_1;
}
gate ryy_4562324752(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.5738107380492687) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
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
gate cu1_4562323456(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.541560115283703) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.541560115283703) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.541560115283703) _gate_q_1;
}
gate cu1_4562322352(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.31417078277943894) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.31417078277943894) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.31417078277943894) _gate_q_1;
}
gate rzz_4562324368(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.1776718383180325) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4562323504(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.6241502610593657, 3.7868999792520555, -3.7868999792520555) _gate_q_0;
}
gate rzz_4562323888(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.8960804535355622) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4562322736(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.57231386240626) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4562323360(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.4912140526582212) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate rzz_4562324800(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.011487354255787) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4562322400(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.9230056315336974, 0.40944157339739573, -0.40944157339739573) _gate_q_0;
}
gate xx_plus_yy_4562322544(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.106174896082179) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.0145886469500498) _gate_q_1;
  ry(-1.0145886469500498) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.106174896082179) _gate_q_0;
}
gate rxx_4562329792(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.398430634986164) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4562322592(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.8977231052292476) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.336598056771641) _gate_q_1;
  ry(-2.336598056771641) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.8977231052292476) _gate_q_0;
}
gate rxx_4562330992(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.19814618273934437) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4562325136(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.7814991201344643) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4562321584(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.2487132412757203) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-3.0433903955657193) _gate_q_1;
  ry(-3.0433903955657193) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.2487132412757203) _gate_q_0;
}
gate cu1_4562322640(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.2968699857327637) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.2968699857327637) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.2968699857327637) _gate_q_1;
}
gate cu3_4562326048(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.137501880324229) _gate_q_0;
  u1(0.6459097278646286) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.5064394768316416, 0, -5.137501880324229) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.5064394768316416, 4.4915921524596, 0) _gate_q_1;
}
gate rzz_4562326864(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.252056454873994) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4562327920(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.938582677360707) _gate_q_0;
  u1(1.1549275379282853) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.24780560831816587, 0, -2.938582677360707) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.24780560831816587, 1.7836551394324214, 0) _gate_q_1;
}
gate rxx_4562326912(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.6452605704764323) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4562326576(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.5399101010338608) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.5201641620682296) _gate_q_1;
  ry(-1.5201641620682296) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.5399101010338608) _gate_q_0;
}
gate rzx_4562331184(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.4985215208221744) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4562326672(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.951686704872855) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.3175698709110253) _gate_q_1;
  ry(-1.3175698709110253) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.951686704872855) _gate_q_0;
}
gate cu3_4562330320(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.503020788610165) _gate_q_0;
  u1(1.3458568800621742) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.09117314823819071, 0, -1.503020788610165) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.09117314823819071, 0.15716390854799067, 0) _gate_q_1;
}
gate rzx_4562327488(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.0282084645766902) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4562329840(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.8145065433008356) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4562329216(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.528879530687103) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4562328496(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.034536369796555) _gate_q_0;
  u1(0.6836338185452553) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.51382984745765, 0, -4.034536369796555) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.51382984745765, 3.3509025512512998, 0) _gate_q_1;
}
gate cu1_4562327824(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.2134416907189034) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.2134416907189034) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.2134416907189034) _gate_q_1;
}
gate rzz_4562327872(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.526763545317359) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4562328112(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.7783813878502572, 4.4177064402811625, -4.4177064402811625) _gate_q_0;
}
gate xx_plus_yy_4562331328(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.478335051364545) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.4015281418523864) _gate_q_1;
  ry(-1.4015281418523864) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.478335051364545) _gate_q_0;
}
gate ryy_4562322304(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.001599428929813) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4564464464(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.3514877907854794) _gate_q_0;
  u1(-1.5982108028889057) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.7097182009898066, 0, -3.3514877907854794) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.7097182009898066, 4.949698593674385, 0) _gate_q_1;
}
gate cu1_4564462880(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.0471641544240116) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.0471641544240116) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.0471641544240116) _gate_q_1;
}
gate rxx_4564465712(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.5042852471613704) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4564457504(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.1936673771517237) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.1936673771517237) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.1936673771517237) _gate_q_1;
}
gate rzz_4564453712(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.886716133077754) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4564463504(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.2209985380859716) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.342425593120973) _gate_q_0;
  ry(-2.342425593120973) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.2209985380859716) _gate_q_1;
}
gate cu3_4564466912(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.4749806176754827) _gate_q_0;
  u1(0.424192308031514) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.8414584739459197, 0, -3.4749806176754827) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.8414584739459197, 3.050788309643969, 0) _gate_q_1;
}
gate xx_minus_yy_4564461440(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.369463933309824) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.5362816400090203) _gate_q_0;
  ry(-0.5362816400090203) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.369463933309824) _gate_q_1;
}
gate xx_plus_yy_4562332096(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.828178790055106) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-3.13072266613932) _gate_q_1;
  ry(-3.13072266613932) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.828178790055106) _gate_q_0;
}
gate cu3_4564466576(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.110938554816178) _gate_q_0;
  u1(-0.7032835672388336) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.3226724106987784, 0, -4.110938554816178) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.3226724106987784, 4.814222122055011, 0) _gate_q_1;
}
gate rzz_4564466480(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.0623447382148696) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
qubit[11] q;
xx_minus_yy_4562325424(5.716863280008889, 5.117997968301464) q[10], q[7];
cu3_4562326096(6.28137455397285, 5.081128837491353, 1.2015436353372428) q[9], q[2];
rx(5.398623111641282) q[8];
xx_plus_yy_4562325952(0.8357352134601964, 3.8708828247245095) q[0], q[6];
y q[1];
xx_minus_yy_4562327728(1.7626187012628536, 0.9530323640589052) q[5], q[3];
U(4.364469445976957, 1.3005411426399078, 5.437324140607321) q[4];
ecr q[4], q[3];
rccx q[1], q[8], q[7];
crx(2.7844032615686496) q[6], q[0];
ryy_4562328640(0.5889254730493444) q[9], q[5];
z q[2];
u1(0.3606388934947893) q[10];
rcccx q[8], q[6], q[10], q[5];
ryy_4562328544(0.10154749346248282) q[2], q[4];
ryy_4562328784(0.8141891410380077) q[3], q[7];
xx_minus_yy_4562330272(1.0305573847167508, 0.5479470941426264) q[1], q[9];
tdg q[0];
xx_minus_yy_4562337184(0.9110541782448234, 0.4222203952093319) q[5], q[10];
rccx q[8], q[3], q[0];
x q[6];
ecr q[4], q[9];
rx(2.9457333649884063) q[2];
p(1.254253465324369) q[1];
u1(4.532225003889038) q[7];
dcx q[7], q[4];
ch q[0], q[2];
cu(5.691633050897582, 2.998091470237521, 2.571896365398077, 3.072873080077035) q[5], q[1];
xx_minus_yy_4562330224(1.2632594596725712, 1.600295473082645) q[10], q[8];
cswap q[6], q[3], q[9];
ryy_4562330512(3.5868702081958013) q[6], q[5];
ecr q[8], q[9];
ccx q[3], q[2], q[7];
rzx_4562337328(2.1936303299211817) q[0], q[10];
csdg q[4], q[1];
sxdg q[0];
rccx q[2], q[8], q[6];
rx(3.865416439235586) q[5];
sx q[7];
u2(5.99380196656401, 0.9471407121743773) q[1];
tdg q[3];
rzz_4562331376(1.6323895594166975) q[9], q[10];
u1(6.07925148479834) q[4];
ccx q[7], q[6], q[10];
cy q[3], q[9];
c3sx q[8], q[4], q[0], q[2];
dcx q[5], q[1];
u1(0.4903402269166795) q[4];
sxdg q[10];
ch q[9], q[6];
rzx_4562331472(3.099366378256627) q[8], q[5];
cp(2.135047811579708) q[2], q[3];
u3(5.309603330694626, 1.6924797162452931, 5.936092991150487) q[7];
sx q[1];
id q[0];
ch q[0], q[7];
ccx q[3], q[9], q[5];
y q[2];
cz q[1], q[8];
y q[6];
x q[10];
s q[4];
dcx q[7], q[10];
rccx q[0], q[4], q[1];
rxx_4562337232(1.8550962994725027) q[9], q[2];
y q[8];
u3(4.803949581240561, 5.471080676928347, 2.493916246931697) q[3];
swap q[6], q[5];
swap q[7], q[5];
ecr q[8], q[1];
xx_minus_yy_4562324224(2.2363797975703137, 4.443903823406794) q[2], q[9];
x q[6];
u1(5.620501002281547) q[10];
dcx q[3], q[4];
U(2.782139796468491, 5.426548670109844, 2.2354137868159727) q[0];
swap q[9], q[8];
u2(2.48654196916198, 2.5451780458683815) q[0];
cu1_4562325808(1.3886530119587286) q[10], q[2];
cu(3.8504260218519417, 1.1261076922772635, 6.281167629532505, 1.7757027801475092) q[4], q[5];
ch q[6], q[7];
cu3_4562337664(1.085594255635162, 4.179368709650841, 6.23548862779751) q[3], q[1];
u1(5.533779862195448) q[1];
dcx q[5], q[8];
ecr q[7], q[0];
r_4562326000(3.323373743021868, 0.2539213139673336) q[6];
h q[10];
u1(6.114362176212196) q[4];
ccz q[3], q[2], q[9];
cswap q[7], q[6], q[10];
xx_plus_yy_4562337136(4.260479455664992, 4.4263102226144735) q[5], q[3];
rzz_4562326384(4.377075488836404) q[4], q[8];
sxdg q[9];
rzx_4562325328(0.6394453504909586) q[2], q[0];
s q[1];
cu(0.5199787721571552, 3.0879428123688917, 5.480753910442498, 5.559926113149771) q[0], q[10];
sdg q[5];
u3(5.95817869533847, 0.10117453203477277, 2.0730109791109226) q[6];
ccx q[1], q[8], q[4];
xx_minus_yy_4562325184(0.7762442993559658, 0.4498024419849935) q[7], q[9];
sdg q[3];
r_4562325856(2.2777984992476243, 5.85822443442554) q[2];
sx q[2];
tdg q[5];
U(6.026322622471432, 1.7494483251348794, 5.194986226533935) q[10];
xx_minus_yy_4562325376(1.5576733734738288, 2.4006623393068827) q[8], q[4];
h q[1];
tdg q[7];
cp(4.7121015080004405) q[3], q[0];
ryy_4562324752(1.5738107380492687) q[9], q[6];
p(4.856985946301027) q[2];
cu(0.9097228381124457, 5.552093382297905, 1.4850399883159757, 1.1230039792709656) q[7], q[3];
dcx q[9], q[1];
t q[0];
csdg q[5], q[4];
iswap q[10], q[8];
ry(0.289244726649145) q[6];
csx q[8], q[2];
tdg q[5];
ccx q[10], q[9], q[1];
cp(2.0129309079138116) q[4], q[7];
cx q[3], q[0];
p(5.435567873493598) q[6];
cu1_4562323456(3.083120230567406) q[4], q[8];
u1(0.20915043981338224) q[6];
cu1_4562322352(0.6283415655588779) q[3], q[10];
ccx q[1], q[2], q[5];
id q[7];
sdg q[0];
sdg q[9];
iswap q[2], q[5];
rzz_4562324368(2.1776718383180325) q[0], q[9];
ecr q[4], q[8];
r_4562323504(0.6241502610593657, 5.357696306046952) q[3];
rzz_4562323888(0.8960804535355622) q[6], q[1];
rzz_4562322736(3.57231386240626) q[10], q[7];
rzz_4562323360(1.4912140526582212) q[3], q[7];
U(5.241364842497136, 4.482605977687313, 6.001371686535519) q[0];
cry(0.3645387519960813) q[4], q[1];
z q[10];
ecr q[8], q[9];
cs q[2], q[5];
id q[6];
z q[10];
cx q[7], q[8];
cs q[3], q[1];
dcx q[5], q[0];
h q[6];
rzz_4562324800(4.011487354255787) q[4], q[2];
rx(1.9185071246317942) q[9];
u1(4.809246105410434) q[9];
u3(4.742843345389078, 0.5926961799876211, 0.9431636301320231) q[5];
ecr q[4], q[0];
rz(2.318233400809252) q[8];
sx q[3];
rx(0.26377372568954455) q[10];
u1(3.38875483325395) q[1];
x q[2];
crx(3.728772635733576) q[7], q[6];
id q[8];
r_4562322400(0.9230056315336974, 1.9802379001922923) q[3];
xx_plus_yy_4562322544(2.0291772939000996, 3.106174896082179) q[1], q[2];
rxx_4562329792(4.398430634986164) q[4], q[9];
s q[0];
cswap q[7], q[10], q[6];
rx(0.9320060062346086) q[5];
cs q[4], q[2];
c3sx q[1], q[8], q[9], q[0];
c3sx q[10], q[7], q[5], q[6];
s q[3];
t q[6];
sxdg q[5];
swap q[9], q[7];
iswap q[0], q[1];
ch q[8], q[10];
xx_plus_yy_4562322592(4.673196113543282, 2.8977231052292476) q[2], q[3];
h q[4];
rxx_4562330992(0.19814618273934437) q[8], q[5];
cry(2.745976499853424) q[1], q[9];
rzz_4562325136(1.7814991201344643) q[4], q[6];
iswap q[10], q[3];
s q[7];
sdg q[0];
tdg q[2];
iswap q[3], q[4];
xx_plus_yy_4562321584(6.086780791131439, 3.2487132412757203) q[10], q[6];
cu(0.9688856836200245, 4.693932512233007, 2.7931977929705694, 3.6061928792926286) q[9], q[7];
cu1_4562322640(2.5937399714655274) q[1], q[0];
h q[5];
sxdg q[2];
s q[8];
cu3_4562326048(5.012878953663283, 4.4915921524596, 5.783411608188858) q[8], q[0];
rccx q[7], q[10], q[2];
u3(5.676903757187432, 1.7827929797981321, 2.306633946165348) q[4];
csdg q[5], q[3];
sx q[6];
id q[9];
u1(1.900523524512362) q[1];
rzz_4562326864(4.252056454873994) q[7], q[10];
rz(6.045226772080161) q[1];
cu3_4562327920(0.49561121663633173, 1.7836551394324214, 4.093510215288992) q[4], q[2];
cp(4.205243294384825) q[5], q[9];
rccx q[8], q[3], q[6];
x q[0];
u3(5.360122674722705, 0.540190049598941, 4.468730485312536) q[9];
u3(2.1452563381988314, 5.655792100771527, 6.018101077863723) q[1];
ry(3.376662110474979) q[2];
cy q[4], q[3];
cry(5.711632247606725) q[5], q[7];
rxx_4562326912(1.6452605704764323) q[0], q[6];
ecr q[10], q[8];
cu(1.6719576569142907, 4.561999518888908, 5.077146585561344, 3.2318042707010406) q[10], q[0];
ch q[5], q[3];
xx_plus_yy_4562326576(3.040328324136459, 0.5399101010338608) q[9], q[2];
cs q[8], q[1];
u3(4.021012441669443, 4.683208558237339, 1.0444374889837198) q[6];
swap q[4], q[7];
rzx_4562331184(0.4985215208221744) q[0], q[9];
y q[5];
xx_plus_yy_4562326672(2.6351397418220506, 5.951686704872855) q[1], q[6];
sxdg q[8];
swap q[10], q[7];
sxdg q[2];
cu3_4562330320(0.18234629647638143, 0.15716390854799067, 2.848877668672339) q[4], q[3];
rzx_4562327488(3.0282084645766902) q[5], q[1];
tdg q[7];
rx(4.372023558552739) q[8];
ecr q[3], q[6];
u1(5.1651372402207905) q[4];
cp(5.997193589084444) q[0], q[2];
sdg q[9];
t q[10];
rzz_4562329840(2.8145065433008356) q[8], q[5];
U(3.155113921763932, 5.915102467306412, 4.304265510839571) q[1];
csx q[4], q[10];
rzz_4562329216(0.528879530687103) q[9], q[0];
cswap q[2], q[6], q[3];
x q[7];
cu3_4562328496(5.0276596949153, 3.3509025512512998, 4.71817018834181) q[4], q[9];
cu1_4562327824(2.426883381437807) q[5], q[8];
s q[7];
rzz_4562327872(5.526763545317359) q[0], q[2];
s q[6];
cz q[3], q[1];
s q[10];
r_4562328112(2.7783813878502572, 5.988502767076059) q[10];
dcx q[5], q[9];
xx_plus_yy_4562331328(2.8030562837047728, 5.478335051364545) q[4], q[6];
cry(0.4479957365386075) q[3], q[2];
ryy_4562322304(6.001599428929813) q[7], q[8];
cp(5.127030859265467) q[1], q[0];
U(1.205458490002448, 5.868266580799135, 0.22951646530477457) q[1];
cu3_4564464464(5.419436401979613, 4.949698593674385, 1.7532769878965735) q[5], q[8];
sxdg q[2];
cz q[0], q[9];
swap q[6], q[4];
cu1_4564462880(2.094328308848023) q[10], q[3];
u3(5.376737726694525, 1.6993845318187772, 1.272246537830133) q[7];
csdg q[1], q[10];
ecr q[2], q[0];
swap q[4], q[6];
rxx_4564465712(2.5042852471613704) q[7], q[8];
csx q[9], q[5];
y q[3];
u2(5.338061688938725, 2.267599328257739) q[2];
tdg q[7];
cp(1.4146058490102953) q[0], q[1];
cu1_4564457504(4.387334754303447) q[9], q[4];
tdg q[6];
p(1.591504432736145) q[10];
cp(4.828747655822014) q[5], q[3];
x q[8];
rzz_4564453712(1.886716133077754) q[7], q[3];
xx_minus_yy_4564463504(4.684851186241946, 2.2209985380859716) q[10], q[5];
csx q[0], q[2];
z q[9];
sxdg q[4];
crx(5.82384524032976) q[1], q[6];
id q[8];
cy q[2], q[7];
ch q[6], q[5];
ecr q[3], q[8];
ry(4.23951216018807) q[9];
cp(0.6602964730931108) q[1], q[0];
cu3_4564466912(3.6829169478918393, 3.050788309643969, 3.899172925706997) q[10], q[4];
cs q[5], q[6];
xx_minus_yy_4564461440(1.0725632800180407, 4.369463933309824) q[4], q[7];
csdg q[8], q[2];
rccx q[3], q[1], q[10];
id q[9];
p(3.9245486162706276) q[0];
cry(2.9707743280625745) q[1], q[10];
tdg q[7];
rx(2.6478514152515826) q[6];
cry(0.03179130388409432) q[4], q[3];
s q[2];
u2(6.073180897169786, 4.411422100534076) q[9];
cp(2.4360800126670354) q[8], q[5];
sdg q[0];
p(1.4895651500929818) q[9];
y q[8];
u1(5.41034312641531) q[4];
x q[5];
dcx q[2], q[10];
U(4.7230262244077394, 2.9966621793093093, 2.2805921996485536) q[0];
crz(0.2763095833608462) q[3], q[7];
xx_plus_yy_4562332096(6.26144533227864, 4.828178790055106) q[6], q[1];
u1(3.137063477756585) q[3];
cx q[6], q[1];
crz(2.9642243533043406) q[7], q[0];
swap q[4], q[9];
cu3_4564466576(4.645344821397557, 4.814222122055011, 3.4076549875773443) q[5], q[8];
U(5.483935907495064, 0.04952358677006637, 5.378362874219748) q[10];
s q[2];
cswap q[2], q[9], q[8];
c3sx q[7], q[3], q[4], q[1];
u1(4.621360127145949) q[0];
ccx q[6], q[10], q[5];
ccx q[0], q[5], q[8];
rzz_4564466480(3.0623447382148696) q[3], q[7];
ccx q[9], q[1], q[10];
ry(3.1920408831968192) q[4];
u1(4.190252635904387) q[2];
sx q[6];
ecr q[0], q[2];
cu(4.7781894873302875, 1.0632352776265281, 5.759981442159776, 4.423518169361174) q[4], q[8];
rccx q[7], q[9], q[10];
crz(3.8563455622706027) q[3], q[5];
csx q[1], q[6];
