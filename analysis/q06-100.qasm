OPENQASM 3.0;
include "stdgates.inc";
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
gate r_4564452224(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.304541558548589, -0.0890884840014754, 0.0890884840014754) _gate_q_0;
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
gate cu3_4564453280(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.426518630969144) _gate_q_0;
  u1(2.0414331438222852) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.148635122082661, 0, -2.426518630969144) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.148635122082661, 0.3850854871468594, 0) _gate_q_1;
}
gate cu1_4564461104(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.111880453536567) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.111880453536567) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.111880453536567) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4564454288(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.2198503112648815) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.1978069462634797) _gate_q_1;
  ry(-0.1978069462634797) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.2198503112648815) _gate_q_0;
}
gate r_4564453952(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.5237140323415481, 3.6093591873394004, -3.6093591873394004) _gate_q_0;
}
gate xx_plus_yy_4564453664(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.77468040552173) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.012333487916001) _gate_q_1;
  ry(-1.012333487916001) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.77468040552173) _gate_q_0;
}
gate xx_plus_yy_4564454336(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.591508130544585) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.745573153326483) _gate_q_1;
  ry(-0.745573153326483) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.591508130544585) _gate_q_0;
}
gate cu1_4564454768(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.6560391872090913) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.6560391872090913) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.6560391872090913) _gate_q_1;
}
gate ryy_4564454528(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.5731309716163038) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4564452320(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.764818285753055) _gate_q_1;
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
gate rzx_4564451888(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.135532796397683) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4564454912(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.285167185416403, 1.262868963770289, -1.262868963770289) _gate_q_0;
}
gate cu3_4564452464(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.462092655088418) _gate_q_0;
  u1(0.3853716779638612) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1383168454720842, 0, -4.462092655088418) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1383168454720842, 4.076720977124557, 0) _gate_q_1;
}
gate cu1_4564454432(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.1213535433986852) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.1213535433986852) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.1213535433986852) _gate_q_1;
}
gate rzz_4564451984(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.5072431151700412) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4564454720(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.029617387316951) _gate_q_0;
  u1(-0.33649293783708456) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.23075883327856153, 0, -2.029617387316951) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.23075883327856153, 2.3661103251540356, 0) _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate xx_plus_yy_4564454816(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.218719590382069) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.044917058588128) _gate_q_1;
  ry(-1.044917058588128) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.218719590382069) _gate_q_0;
}
gate r_4564454480(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.270556570618564, -0.9548982183901825, 0.9548982183901825) _gate_q_0;
}
gate cu1_4564454672(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.5437912139002843) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.5437912139002843) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.5437912139002843) _gate_q_1;
}
gate cu1_4564456544(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.255213325386879) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.255213325386879) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.255213325386879) _gate_q_1;
}
gate rzx_4564457120(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.999946609355416) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4564456112(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.09890450421167002) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.09890450421167002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.09890450421167002) _gate_q_1;
}
gate rzz_4564457312(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.24570852763157) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4564455872(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.15779047567369497) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4564455824(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.4996083058286667) _gate_q_1;
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
gate xx_minus_yy_4564455728(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.666276873239223) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.0031084935540538995) _gate_q_0;
  ry(-0.0031084935540538995) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.666276873239223) _gate_q_1;
}
gate cu3_4564457360(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.328798392999641) _gate_q_0;
  u1(2.1804848843429183) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.3109820243882506, 0, -2.328798392999641) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.3109820243882506, 0.14831350865672294, 0) _gate_q_1;
}
gate xx_minus_yy_4564457264(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.6937919234788652) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.549230572428157) _gate_q_0;
  ry(-1.549230572428157) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.6937919234788652) _gate_q_1;
}
gate rxx_4564460192(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.29388886934927677) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4564456784(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.46310157650707456, -1.3392660225193063, 1.3392660225193063) _gate_q_0;
}
gate rzx_4564455584(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.98622603989473) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4564458128(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.40631640377852696) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.48801523224443083) _gate_q_1;
  ry(-0.48801523224443083) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.40631640377852696) _gate_q_0;
}
gate cu3_4564458896(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.904856174487026) _gate_q_0;
  u1(-2.1305188714288774) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.5350061087475444, 0, -3.904856174487026) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.5350061087475444, 6.035375045915903, 0) _gate_q_1;
}
gate xx_plus_yy_4564455200(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.03437348835328055) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.12125001818649495) _gate_q_1;
  ry(-0.12125001818649495) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.03437348835328055) _gate_q_0;
}
gate r_4564455440(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.7665814519975306, 0.8673661167449751, -0.8673661167449751) _gate_q_0;
}
gate ryy_4564459280(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.7458436090680806) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4564458944(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.380830720302283) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-3.0577172976364433) _gate_q_1;
  ry(-3.0577172976364433) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.380830720302283) _gate_q_0;
}
gate rzx_4564458608(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.103684437405333) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4564459856(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.061166869980397, -0.14091497417599386, 0.14091497417599386) _gate_q_0;
}
gate cu1_4564458224(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.3395574686171534) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.3395574686171534) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.3395574686171534) _gate_q_1;
}
gate cu1_4564459712(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.5397909199632771) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.5397909199632771) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.5397909199632771) _gate_q_1;
}
gate ryy_4564459616(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.9806860254785451) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4564457744(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.340102590097791) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4564457888(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.0704834028237205, 3.401554254360245, -3.401554254360245) _gate_q_0;
}
gate r_4564459904(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.230417341976834, -1.3807136678633796, 1.3807136678633796) _gate_q_0;
}
gate ryy_4564460048(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.020139231016488) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4564460432(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.7137573357317932) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4564460384(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.138006946917553) _gate_q_0;
  u1(-0.842535637923389) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.12963332414348602, 0, -4.138006946917553) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.12963332414348602, 4.980542584840943, 0) _gate_q_1;
}
gate rzz_4564459664(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.450951011789863) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu1_4564458464(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.5193570852161082) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.5193570852161082) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.5193570852161082) _gate_q_1;
}
gate cu1_4564457648(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.6858832866947497) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.6858832866947497) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.6858832866947497) _gate_q_1;
}
gate rxx_4564463024(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.6471516264177737) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4564461968(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.334382554439772) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4564461824(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.4175240807557046) _gate_q_0;
  u1(-1.811609631833532) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.8162697485916334, 0, -2.4175240807557046) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.8162697485916334, 4.2291337125892365, 0) _gate_q_1;
}
gate xx_plus_yy_4564461632(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.735225358531531) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.7551934547660202) _gate_q_1;
  ry(-1.7551934547660202) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.735225358531531) _gate_q_0;
}
gate cu1_4564462400(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.906807280407294) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.906807280407294) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.906807280407294) _gate_q_1;
}
gate rzx_4564462256(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.278554987378247) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4564462496(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.836498637531742) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4564462640(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.683632569682857) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4564461056(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.9727435878906636) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.9727435878906636) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.9727435878906636) _gate_q_1;
}
gate ryy_4564462976(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.7641776915873093) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4564463792(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.47666770372771167) _gate_q_1;
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
gate xx_plus_yy_4564463072(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.91639429568554) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.8075069615434017) _gate_q_1;
  ry(-0.8075069615434017) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.91639429568554) _gate_q_0;
}
gate xx_minus_yy_4564464464(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-6.215371729668537) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.4128393219692457) _gate_q_0;
  ry(-0.4128393219692457) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(6.215371729668537) _gate_q_1;
}
gate cu3_4564464176(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.039277422528183) _gate_q_0;
  u1(-0.6508262002208143) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.8364417853438817, 0, -4.039277422528183) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.8364417853438817, 4.690103622748998, 0) _gate_q_1;
}
gate r_4564464896(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.775761329875571, 2.2682712477018803, -2.2682712477018803) _gate_q_0;
}
qubit[6] q;
csx q[3], q[1];
r_4564452224(2.304541558548589, 1.4817078427934212) q[0];
cswap q[4], q[5], q[2];
y q[0];
rx(5.555264756455159) q[2];
ch q[4], q[5];
id q[1];
rx(4.472399869736252) q[3];
y q[1];
rz(2.8134885536052523) q[4];
z q[5];
ccz q[0], q[3], q[2];
s q[4];
ecr q[1], q[3];
cu3_4564453280(4.297270244165322, 0.3850854871468594, 4.4679517747914295) q[0], q[2];
ry(0.8144903506586885) q[5];
ch q[1], q[4];
sx q[2];
cu1_4564461104(4.223760907073134) q[3], q[5];
id q[0];
tdg q[3];
swap q[2], q[0];
z q[4];
dcx q[5], q[1];
t q[2];
cs q[4], q[5];
ecr q[1], q[0];
y q[3];
xx_plus_yy_4564454288(0.3956138925269594, 5.2198503112648815) q[0], q[5];
u1(5.663312356935565) q[4];
cu(1.913705815469818, 4.076880228435269, 3.9671261637440987, 4.433777513161236) q[3], q[2];
ry(1.078376504097239) q[1];
cx q[4], q[3];
cp(3.6507616912879257) q[2], q[0];
ecr q[5], q[1];
ccx q[0], q[2], q[1];
csx q[5], q[3];
y q[4];
id q[5];
cry(5.0425537628363815) q[3], q[1];
cs q[0], q[4];
z q[2];
cx q[4], q[5];
sxdg q[0];
ry(0.012133424819451065) q[2];
r_4564453952(0.5237140323415481, 5.180155514134297) q[1];
t q[3];
ry(5.665251835218953) q[5];
ecr q[3], q[2];
tdg q[0];
u2(5.20925833077215, 5.113271586496735) q[1];
rx(1.7281929677178174) q[4];
xx_plus_yy_4564453664(2.024666975832002, 4.77468040552173) q[3], q[5];
dcx q[2], q[1];
cx q[4], q[0];
sx q[0];
sdg q[3];
sxdg q[5];
sx q[2];
cu(0.6598634063355853, 1.6263445974440802, 2.024645776127172, 3.1640410201853992) q[4], q[1];
sdg q[2];
ch q[0], q[4];
dcx q[5], q[3];
rx(0.6836858316675888) q[1];
ccx q[4], q[5], q[0];
swap q[3], q[1];
ry(1.355374158285062) q[2];
dcx q[1], q[2];
xx_plus_yy_4564454336(1.491146306652966, 4.591508130544585) q[4], q[0];
cx q[3], q[5];
cu1_4564454768(1.3120783744181825) q[0], q[3];
id q[1];
ryy_4564454528(2.5731309716163038) q[2], q[5];
u1(5.835881738508817) q[4];
t q[2];
u1(0.963199036519447) q[5];
rxx_4564452320(3.764818285753055) q[3], q[4];
crx(3.7789180643515086) q[1], q[0];
sx q[5];
cswap q[3], q[1], q[0];
p(1.4078822846278458) q[2];
y q[4];
sxdg q[3];
ch q[0], q[2];
iswap q[5], q[4];
u3(4.291378182378449, 5.073634609516599, 1.758627018028969) q[1];
rccx q[1], q[0], q[2];
crx(1.6649041214591473) q[4], q[3];
s q[5];
cz q[1], q[3];
rzx_4564451888(5.135532796397683) q[5], q[0];
dcx q[2], q[4];
r_4564454912(4.285167185416403, 2.8336652905651856) q[3];
u2(1.780883079303531, 2.7486077578240526) q[1];
p(3.949183050535955) q[4];
cp(0.2514992164772894) q[5], q[2];
u2(3.877262145775377, 4.6847058575780345) q[0];
sxdg q[0];
cu3_4564452464(2.2766336909441685, 4.076720977124557, 4.8474643330522795) q[5], q[3];
cu1_4564454432(2.2427070867973704) q[4], q[2];
rx(2.4779566112754887) q[1];
ecr q[2], q[1];
rzz_4564451984(1.5072431151700412) q[4], q[3];
rx(2.3560076520074937) q[0];
u2(5.356011082359907, 5.45478572049032) q[5];
cu3_4564454720(0.46151766655712306, 2.3661103251540356, 1.6931244494798665) q[0], q[2];
csdg q[3], q[5];
xx_plus_yy_4564454816(2.089834117176256, 3.218719590382069) q[4], q[1];
cs q[3], q[1];
csx q[5], q[4];
cz q[2], q[0];
cs q[0], q[2];
r_4564454480(4.270556570618564, 0.615898108404714) q[1];
iswap q[3], q[4];
sx q[5];
z q[2];
crx(4.71889418906784) q[3], q[4];
z q[1];
tdg q[5];
sxdg q[0];
cu1_4564454672(3.0875824278005686) q[4], q[0];
cy q[2], q[5];
cu1_4564456544(2.510426650773758) q[3], q[1];
z q[4];
z q[1];
x q[0];
U(1.2388913727357382, 3.2094799379352574, 5.840776414370705) q[5];
swap q[3], q[2];
u1(2.8483002355287033) q[5];
y q[2];
cu(3.875774469112876, 5.326755632379751, 0.8991967813290889, 6.013222153738606) q[4], q[3];
rzx_4564457120(3.999946609355416) q[0], q[1];
cu1_4564456112(0.19780900842334004) q[5], q[1];
rzz_4564457312(5.24570852763157) q[2], q[3];
z q[0];
sdg q[4];
rz(3.1189370200737123) q[1];
ccz q[0], q[2], q[5];
rz(2.4462353131868246) q[3];
u1(2.1874005175212456) q[4];
rzx_4564455872(0.15779047567369497) q[0], q[5];
sxdg q[4];
crz(3.794504368715394) q[2], q[3];
u2(4.945061541731993, 1.7010402602969013) q[1];
cry(3.7851160403355686) q[1], q[3];
p(3.7067696464351707) q[2];
p(4.680381225924426) q[5];
rzx_4564455824(2.4996083058286667) q[4], q[0];
tdg q[4];
U(2.3015620016288616, 3.041451302359967, 1.6129303509830617) q[0];
swap q[1], q[3];
t q[2];
t q[5];
s q[2];
tdg q[3];
c3sx q[4], q[5], q[0], q[1];
t q[3];
c3sx q[4], q[2], q[5], q[1];
u1(4.106193328242986) q[0];
id q[0];
h q[3];
cx q[2], q[1];
xx_minus_yy_4564455728(0.006216987108107799, 5.666276873239223) q[4], q[5];
cu3_4564457360(4.621964048776501, 0.14831350865672294, 4.5092832773425595) q[5], q[1];
xx_minus_yy_4564457264(3.098461144856314, 1.6937919234788652) q[0], q[3];
cy q[2], q[4];
rxx_4564460192(0.29388886934927677) q[2], q[4];
cz q[5], q[3];
r_4564456784(0.46310157650707456, 0.23153030427559035) q[1];
rx(3.0948151811633537) q[0];
rzx_4564455584(4.98622603989473) q[3], q[2];
rx(3.743781874843148) q[4];
csx q[5], q[1];
x q[0];
xx_plus_yy_4564458128(0.9760304644888617, 0.40631640377852696) q[1], q[2];
p(2.16172921339955) q[5];
crz(2.585138408682403) q[4], q[3];
z q[0];
ccx q[1], q[0], q[4];
rccx q[3], q[5], q[2];
u3(3.9456595632378737, 2.909558072453405, 4.320539284997266) q[3];
ccz q[4], q[0], q[1];
tdg q[5];
s q[2];
tdg q[2];
cu3_4564458896(3.070012217495089, 6.035375045915903, 1.7743373030581484) q[3], q[5];
xx_plus_yy_4564455200(0.2425000363729899, 0.03437348835328055) q[1], q[0];
sdg q[4];
csdg q[5], q[0];
u1(2.180422329377014) q[3];
t q[2];
r_4564455440(0.7665814519975306, 2.4381624435398717) q[1];
U(2.570745139985053, 3.877916586893835, 5.4201779032806785) q[4];
ryy_4564459280(0.7458436090680806) q[5], q[0];
cy q[2], q[1];
s q[3];
ry(5.446772672302214) q[4];
sx q[2];
U(2.454121406507429, 5.959296693719183, 6.232486928906487) q[5];
u1(2.3346273988663726) q[1];
rx(0.631276632747495) q[4];
s q[0];
tdg q[3];
ch q[1], q[3];
xx_plus_yy_4564458944(6.115434595272887, 2.380830720302283) q[2], q[5];
dcx q[4], q[0];
y q[1];
sx q[5];
sx q[2];
u3(3.182676780925665, 3.222927449490851, 3.2925628188228586) q[3];
csdg q[4], q[0];
rzx_4564458608(4.103684437405333) q[4], q[0];
ccx q[2], q[1], q[3];
sdg q[5];
crz(3.3338245562586626) q[4], q[1];
z q[2];
cry(3.4254936189535665) q[5], q[3];
u2(3.6943863913456667, 3.4443835734668964) q[0];
r_4564459856(4.061166869980397, 1.4298813526189027) q[5];
cx q[0], q[1];
cu1_4564458224(2.679114937234307) q[3], q[4];
y q[2];
tdg q[4];
ecr q[2], q[0];
cu1_4564459712(1.0795818399265542) q[1], q[5];
z q[3];
sdg q[2];
swap q[1], q[5];
rz(6.162403773656911) q[3];
swap q[0], q[4];
rz(3.152977590945567) q[4];
ryy_4564459616(0.9806860254785451) q[1], q[3];
sdg q[2];
ry(5.952014937995091) q[0];
sdg q[5];
crz(5.680645787592321) q[3], q[5];
csdg q[2], q[1];
rzz_4564457744(4.340102590097791) q[0], q[4];
sxdg q[2];
sx q[0];
U(1.7957780827714402, 0.3362150772701853, 3.4922638755301794) q[4];
iswap q[1], q[3];
y q[5];
cu(6.152426014459277, 0.08723982179808555, 4.68187618607277, 1.1238176115198342) q[1], q[2];
c3sx q[0], q[5], q[3], q[4];
ry(3.9625912196014013) q[1];
r_4564457888(5.0704834028237205, 4.972350581155141) q[3];
cz q[4], q[5];
r_4564459904(4.230417341976834, 0.19008265893151707) q[0];
p(5.976261093632767) q[2];
ccz q[2], q[3], q[1];
t q[0];
csx q[5], q[4];
crz(1.2018568267768737) q[4], q[1];
sxdg q[5];
ryy_4564460048(4.020139231016488) q[3], q[2];
id q[0];
rx(4.4625838982367565) q[4];
cz q[0], q[5];
tdg q[1];
cx q[3], q[2];
ryy_4564460432(1.7137573357317932) q[2], q[0];
t q[4];
ccx q[1], q[3], q[5];
u2(3.9694036539399975, 4.756902334787721) q[2];
cu3_4564460384(0.25926664828697205, 4.980542584840943, 3.2954713089941645) q[0], q[5];
x q[1];
x q[4];
rx(1.2116807373667704) q[3];
rzz_4564459664(3.450951011789863) q[0], q[4];
cp(4.6071850885000485) q[5], q[1];
sdg q[3];
s q[2];
cu1_4564458464(3.0387141704322165) q[4], q[1];
cu1_4564457648(3.3717665733894995) q[2], q[5];
rxx_4564463024(2.6471516264177737) q[0], q[3];
x q[3];
cswap q[2], q[5], q[1];
cp(4.322433891109106) q[0], q[4];
csx q[2], q[0];
cs q[5], q[4];
u2(1.2914804195391623, 0.9445761236063314) q[1];
y q[3];
s q[5];
csx q[0], q[4];
rccx q[1], q[2], q[3];
cy q[4], q[2];
rxx_4564461968(5.334382554439772) q[5], q[3];
p(6.024991774529925) q[0];
z q[1];
ry(2.711992718806241) q[3];
ccx q[0], q[1], q[5];
cu(1.5116430838242685, 0.7350130603552267, 0.8517320087126352, 0.38671848159530725) q[4], q[2];
z q[2];
cswap q[4], q[5], q[3];
x q[0];
U(5.959367281004129, 5.848897463326353, 1.5186077972082788) q[1];
cry(0.017085357218220267) q[3], q[2];
cu3_4564461824(1.6325394971832667, 4.2291337125892365, 0.6059144489221728) q[4], q[0];
y q[1];
sxdg q[5];
s q[4];
y q[5];
ch q[0], q[3];
t q[2];
U(4.329714364311555, 0.6085911099711361, 0.4373047762550166) q[1];
rccx q[0], q[3], q[1];
xx_plus_yy_4564461632(3.5103869095320404, 0.735225358531531) q[5], q[2];
z q[4];
cx q[2], q[1];
h q[0];
ccx q[3], q[5], q[4];
cu1_4564462400(1.813614560814588) q[3], q[4];
rzx_4564462256(6.278554987378247) q[2], q[0];
h q[5];
h q[1];
ccx q[4], q[1], q[3];
y q[2];
h q[5];
ry(2.1989275906117776) q[0];
swap q[2], q[4];
ryy_4564462496(4.836498637531742) q[1], q[5];
rxx_4564462640(2.683632569682857) q[0], q[3];
y q[3];
U(5.015709046872, 1.1446864639372483, 0.5337389782260191) q[1];
ccz q[2], q[5], q[0];
id q[4];
u2(1.4140882088970532, 5.264057098992475) q[0];
tdg q[1];
cy q[3], q[2];
U(5.757809265071647, 1.061674344354444, 5.402750684839542) q[5];
u2(2.417606643637546, 0.284888725058083) q[4];
sxdg q[4];
cu1_4564461056(5.945487175781327) q[1], q[0];
ry(1.6040074218067881) q[5];
cp(3.333072528817143) q[2], q[3];
ecr q[1], q[0];
rx(0.7750526367826622) q[4];
ry(4.30654286095851) q[5];
ch q[3], q[2];
u1(3.709779489788984) q[4];
x q[2];
cry(2.620246242655014) q[0], q[1];
id q[3];
u3(1.6106301934883143, 2.9606000850010816, 5.078761387290869) q[5];
U(5.192284185718594, 0.31218019339544173, 4.396432807854876) q[1];
cu(0.8562614193477882, 5.429659503769468, 1.5068361392008194, 6.087459691334946) q[4], q[0];
id q[5];
ryy_4564462976(2.7641776915873093) q[2], q[3];
sdg q[4];
ryy_4564463792(0.47666770372771167) q[5], q[3];
cswap q[0], q[2], q[1];
swap q[3], q[1];
u2(4.810733320400968, 4.563566321365983) q[2];
iswap q[4], q[0];
s q[5];
s q[2];
U(2.768078342720483, 6.200248077493551, 3.2528994042940607) q[5];
y q[3];
dcx q[0], q[4];
s q[1];
rcccx q[5], q[2], q[3], q[4];
y q[0];
ry(5.962601770708309) q[1];
swap q[0], q[5];
cy q[4], q[3];
csdg q[1], q[2];
xx_plus_yy_4564463072(1.6150139230868035, 5.91639429568554) q[4], q[5];
h q[1];
sxdg q[3];
xx_minus_yy_4564464464(0.8256786439384914, 6.215371729668537) q[2], q[0];
rcccx q[0], q[4], q[1], q[5];
sx q[3];
u2(3.480051792659605, 4.265646734780968) q[2];
iswap q[5], q[4];
ch q[3], q[1];
cu3_4564464176(5.672883570687763, 4.690103622748998, 3.3884512223073693) q[2], q[0];
csx q[4], q[3];
cp(2.732321092185004) q[5], q[2];
cx q[0], q[1];
iswap q[2], q[3];
t q[0];
cz q[1], q[4];
r_4564464896(1.775761329875571, 3.839067574496777) q[5];
