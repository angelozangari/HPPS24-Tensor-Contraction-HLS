OPENQASM 3.0;
include "stdgates.inc";
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
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
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cu1_4537816304(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.117148309885679) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.117148309885679) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.117148309885679) _gate_q_1;
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
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate r_4537817168(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.8557073826544728, -0.4024698364252519, 0.4024698364252519) _gate_q_0;
}
gate ryy_4537817312(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.127527847956597) _gate_q_1;
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
gate xx_minus_yy_4537817504(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.973296488170178) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.5161150844302793) _gate_q_0;
  ry(-1.5161150844302793) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.973296488170178) _gate_q_1;
}
gate cu1_4537817264(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.2682206545815173) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.2682206545815173) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.2682206545815173) _gate_q_1;
}
gate xx_minus_yy_4537817360(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.5676116285739755) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.7581120451352734) _gate_q_0;
  ry(-2.7581120451352734) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.5676116285739755) _gate_q_1;
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
gate rxx_4537818128(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.054779156994052) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4537818416(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.9030923991205455, 1.3464835468060246, -1.3464835468060246) _gate_q_0;
}
gate rzx_4537818176(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.3520157404185607) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4537817984(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.3329494542312794) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate r_4537817024(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.9502493569731373, -0.34666564047338944, 0.34666564047338944) _gate_q_0;
}
gate rzx_4537816976(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.6694163643774549) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4537818992(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.2553904784897945) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.229695531677148) _gate_q_1;
  ry(-1.229695531677148) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.2553904784897945) _gate_q_0;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate rzz_4537818944(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.031559800208231) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4537818704(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.2152344676790821) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4537819904(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.566659902619331) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4537823024(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.3916791706710372) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.9434783515612328) _gate_q_0;
  ry(-1.9434783515612328) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.3916791706710372) _gate_q_1;
}
gate cu1_4537820336(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.65112170132108) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.65112170132108) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.65112170132108) _gate_q_1;
}
gate ryy_4537820240(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.142262622456623) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4537821104(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.5745516237748631) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.5745516237748631) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.5745516237748631) _gate_q_1;
}
gate rzx_4537820432(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.041345026035178) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4537821344(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.7191236974893807) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.7191236974893807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.7191236974893807) _gate_q_1;
}
gate cu1_4537821296(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.7464836368419155) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.7464836368419155) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.7464836368419155) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate cu3_4537821392(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.721809403235968) _gate_q_0;
  u1(-2.6111723826946673) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.6591666790366666, 0, -2.721809403235968) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.6591666790366666, 5.332981785930635, 0) _gate_q_1;
}
gate rzz_4537821680(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.165659116410733) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4537822256(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.353225223436963) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.690622773540804) _gate_q_1;
  ry(-2.690622773540804) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.353225223436963) _gate_q_0;
}
gate rzx_4537822544(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.176565788182649) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4537822592(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.1639749187746642) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.1639749187746642) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.1639749187746642) _gate_q_1;
}
gate cu1_4537822304(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.1298873472931648) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.1298873472931648) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.1298873472931648) _gate_q_1;
}
gate ryy_4537822688(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.845957025978063) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4537822736(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.5911475285304221) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4537820048(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.0164898699727338) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.0552617214568774) _gate_q_1;
  ry(-1.0552617214568774) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.0164898699727338) _gate_q_0;
}
gate cu3_4537820912(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.9916609164181795) _gate_q_0;
  u1(-0.26527164959991245) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.3684607884201294, 0, -1.9916609164181795) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.3684607884201294, 2.256932566018092, 0) _gate_q_1;
}
gate ryy_4537823456(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.9989297963887167) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4537823264(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.330432315320115) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4537820720(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.5451179860390722) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4537824272(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.6536845141656562, 3.1235033675817254, -3.1235033675817254) _gate_q_0;
}
gate r_4537823840(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.743443522933601, 2.0383986039082833, -2.0383986039082833) _gate_q_0;
}
gate cu1_4537824224(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.5829066106340517) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.5829066106340517) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.5829066106340517) _gate_q_1;
}
gate cu1_4537824848(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.8041428485455033) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.8041428485455033) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.8041428485455033) _gate_q_1;
}
gate cu3_4537824560(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.7205424669675136) _gate_q_0;
  u1(0.18764440572623908) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.1078405587277866, 0, -1.7205424669675136) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.1078405587277866, 1.5328980612412746, 0) _gate_q_1;
}
gate r_4537824800(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.7805163617322781, 2.392267649426604, -2.392267649426604) _gate_q_0;
}
gate rxx_4537824608(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.6292889482177357) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4537825376(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.4427409506708848) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4537825184(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.484484586708067, 3.1548227762229075, -3.1548227762229075) _gate_q_0;
}
gate xx_plus_yy_4537825616(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.530622291523413) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.1867653317538578) _gate_q_1;
  ry(-1.1867653317538578) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.530622291523413) _gate_q_0;
}
gate cu3_4537825952(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.933610985680302) _gate_q_0;
  u1(-1.8780450161836773) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.447845514194676, 0, -2.933610985680302) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.447845514194676, 4.811656001863979, 0) _gate_q_1;
}
gate rzx_4537825760(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.3377667524832186) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4537823312(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.0323466540788215, 0.46450913967600593, -0.46450913967600593) _gate_q_0;
}
gate cu3_4537824896(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.658794426678445) _gate_q_0;
  u1(-0.32889457554074597) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.5702964217443458, 0, -3.658794426678445) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.5702964217443458, 3.987689002219191, 0) _gate_q_1;
}
gate rxx_4537823072(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.893338454303033) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4537827248(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.3712199831974687, 0.8691298754630035, -0.8691298754630035) _gate_q_0;
}
gate rzz_4537826000(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.1739292836652835) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4537823984(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.531939878981258) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4537823696(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.634194855757271) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.913327329422185) _gate_q_0;
  ry(-1.913327329422185) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.634194855757271) _gate_q_1;
}
gate r_4537823744(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.766940450114258, 1.960123967974225, -1.960123967974225) _gate_q_0;
}
qubit[5] q;
x q[1];
t q[2];
crz(3.9885152764476843) q[4], q[3];
u2(1.375959762590451, 4.788103615863958) q[0];
t q[2];
u2(4.274910424151681, 1.4217496071809486) q[1];
sdg q[3];
ch q[0], q[4];
csdg q[0], q[2];
cswap q[1], q[4], q[3];
h q[3];
cz q[1], q[2];
t q[4];
sxdg q[0];
sxdg q[0];
cswap q[4], q[3], q[2];
y q[1];
swap q[0], q[4];
sdg q[2];
z q[3];
id q[1];
sdg q[2];
c3sx q[3], q[1], q[4], q[0];
x q[3];
dcx q[2], q[1];
cu1_4537816304(4.234296619771358) q[4], q[0];
h q[1];
rccx q[4], q[2], q[3];
u1(0.10917534043779706) q[0];
cs q[0], q[4];
u2(3.975312116255271, 3.9627332048973356) q[3];
crz(5.058652805168323) q[1], q[2];
r_4537817168(2.8557073826544728, 1.1683264903696446) q[1];
crz(5.142034716632269) q[0], q[4];
ch q[3], q[2];
ccx q[4], q[1], q[3];
ryy_4537817312(5.127527847956597) q[2], q[0];
p(2.1193737565323554) q[0];
t q[1];
u2(4.713641808085214, 1.090861052359175) q[3];
cp(3.4738876097193283) q[4], q[2];
ecr q[3], q[0];
xx_minus_yy_4537817504(3.0322301688605586, 5.973296488170178) q[2], q[4];
rx(4.16748221436619) q[1];
cu1_4537817264(4.536441309163035) q[1], q[2];
ccx q[0], q[3], q[4];
ccx q[0], q[3], q[4];
cs q[1], q[2];
xx_minus_yy_4537817360(5.516224090270547, 0.5676116285739755) q[2], q[1];
rccx q[4], q[0], q[3];
csx q[1], q[2];
rxx_4537818128(5.054779156994052) q[4], q[3];
rx(4.516234204264527) q[0];
z q[1];
dcx q[0], q[2];
u3(4.8936460849531915, 5.715841238279809, 3.213687016501515) q[3];
t q[4];
csdg q[1], q[4];
s q[2];
sxdg q[0];
u3(2.108464948387607, 1.6480183819704006, 0.7017510040556495) q[3];
cu(6.152782472613166, 3.9471981792139923, 5.980351954417936, 2.5620060824571755) q[3], q[2];
rx(3.0024436963649337) q[1];
r_4537818416(5.9030923991205455, 2.917279873600921) q[4];
z q[0];
rzx_4537818176(1.3520157404185607) q[0], q[4];
rxx_4537817984(3.3329494542312794) q[3], q[1];
h q[2];
rcccx q[0], q[1], q[3], q[4];
r_4537817024(0.9502493569731373, 1.2241306863215071) q[2];
u3(1.1637447550288318, 4.5073627445582005, 5.210761551110248) q[3];
cu(1.2726816538680494, 0.23653765348387584, 2.9815584868166054, 1.5564112769113194) q[1], q[0];
swap q[4], q[2];
ch q[3], q[0];
rzx_4537816976(1.6694163643774549) q[2], q[1];
x q[4];
y q[2];
sxdg q[1];
h q[3];
csdg q[4], q[0];
c3sx q[2], q[0], q[3], q[1];
U(2.9672562212852647, 0.6280924833750113, 5.237709060079436) q[4];
sx q[1];
cs q[3], q[2];
y q[0];
U(3.3551790483476442, 4.147912730671171, 4.717948680140587) q[4];
xx_plus_yy_4537818992(2.459391063354296, 0.2553904784897945) q[3], q[1];
p(1.0808256810010997) q[4];
u2(2.2080464569488574, 2.571019875739835) q[0];
rz(1.8683715358700181) q[2];
p(0.6820384393161446) q[2];
ry(4.796277692417247) q[0];
iswap q[3], q[1];
t q[4];
rz(1.3724146072683179) q[3];
csdg q[4], q[2];
rzz_4537818944(4.031559800208231) q[1], q[0];
y q[0];
sxdg q[1];
rzx_4537818704(0.2152344676790821) q[2], q[3];
tdg q[4];
ccx q[4], q[3], q[1];
u3(2.5598312828734664, 0.30147775822688566, 4.371152505276338) q[2];
h q[0];
tdg q[2];
cz q[0], q[3];
rx(2.637804672446339) q[4];
tdg q[1];
ry(3.5853364087678528) q[4];
z q[3];
csdg q[0], q[1];
p(2.2901444016321144) q[2];
ry(4.209113311349179) q[3];
p(3.4321657056182824) q[2];
u1(3.9524271541120495) q[4];
t q[0];
sdg q[1];
ryy_4537819904(2.566659902619331) q[0], q[2];
u2(1.442919996987104, 5.829717303301177) q[1];
z q[3];
u2(3.409576563440166, 3.7295689665399125) q[4];
ccx q[1], q[4], q[0];
sdg q[3];
u2(3.4289140977601322, 5.3655254314531025) q[2];
xx_minus_yy_4537823024(3.8869567031224657, 1.3916791706710372) q[3], q[1];
cx q[4], q[0];
ry(6.182172858626868) q[2];
cu1_4537820336(5.30224340264216) q[1], q[0];
ch q[2], q[3];
ry(4.820946725526791) q[4];
y q[4];
y q[1];
cz q[0], q[3];
h q[2];
ryy_4537820240(5.142262622456623) q[2], q[1];
p(3.896792345778747) q[0];
p(5.082644976575618) q[3];
u1(3.5497062055488335) q[4];
sdg q[2];
iswap q[1], q[3];
cu1_4537821104(3.1491032475497263) q[0], q[4];
crz(5.335873149914341) q[3], q[4];
rzx_4537820432(5.041345026035178) q[2], q[1];
tdg q[0];
id q[2];
crz(1.6472831740125868) q[0], q[4];
cy q[1], q[3];
id q[4];
sxdg q[2];
sxdg q[3];
u3(5.6746402693241285, 4.211188077799271, 2.961828007443782) q[1];
id q[0];
rz(3.7379527437371207) q[1];
cu(2.3177722273642627, 5.635272088270117, 5.378871579329746, 3.0428242935669805) q[2], q[4];
cu1_4537821344(3.4382473949787613) q[0], q[3];
cu1_4537821296(1.492967273683831) q[4], q[0];
dcx q[1], q[2];
sxdg q[3];
t q[0];
U(5.6683849314298005, 5.206470895496678, 3.3776077673072993) q[1];
ccz q[3], q[4], q[2];
cu3_4537821392(3.318333358073333, 5.332981785930635, 0.11063702054130113) q[0], q[1];
u1(2.2448992813871276) q[4];
u3(1.6369686852062073, 5.256356329195725, 4.437725970977135) q[2];
ry(3.53506518676619) q[3];
z q[4];
sxdg q[1];
rzz_4537821680(3.165659116410733) q[3], q[0];
u3(0.14820386881702263, 2.5274186819415476, 1.9017685691730895) q[2];
rz(1.801947757678291) q[3];
crx(2.687165176100318) q[2], q[1];
sx q[4];
rx(2.437314430115076) q[0];
crx(5.5900176522400065) q[2], q[0];
rz(3.6116301411388383) q[1];
xx_plus_yy_4537822256(5.381245547081608, 5.353225223436963) q[3], q[4];
u2(4.7651613660636265, 4.096463106656164) q[2];
ccx q[0], q[3], q[1];
z q[4];
sdg q[4];
rccx q[2], q[3], q[1];
rx(4.878398572534026) q[0];
ry(2.947617458079145) q[3];
ccx q[4], q[0], q[1];
sdg q[2];
cp(2.5362796722853047) q[0], q[1];
h q[3];
crx(5.650656726980756) q[4], q[2];
rzx_4537822544(2.176565788182649) q[1], q[2];
ccx q[4], q[0], q[3];
rx(0.5580958980937042) q[2];
cu1_4537822592(2.3279498375493284) q[3], q[1];
u3(4.305122339845619, 2.9119437934678594, 1.6818150893280783) q[0];
id q[4];
x q[0];
cx q[2], q[3];
u1(2.1677998318997598) q[1];
tdg q[4];
cu1_4537822304(2.2597746945863295) q[2], q[0];
ryy_4537822688(3.845957025978063) q[1], q[3];
y q[4];
crx(2.5352543551980733) q[1], q[3];
ryy_4537822736(0.5911475285304221) q[0], q[2];
z q[4];
y q[0];
xx_plus_yy_4537820048(2.1105234429137547, 1.0164898699727338) q[3], q[1];
cry(4.573415104571339) q[4], q[2];
sx q[3];
sx q[4];
u3(2.6683398342920537, 4.6869254911712614, 6.229823854995615) q[0];
crx(4.94176314067782) q[1], q[2];
h q[1];
cp(0.4987806916510014) q[2], q[0];
cp(6.262612115105017) q[4], q[3];
ccx q[3], q[4], q[1];
y q[2];
ry(2.2813734739818003) q[0];
cu3_4537820912(4.736921576840259, 2.256932566018092, 1.726389266818267) q[0], q[2];
csdg q[1], q[3];
rz(3.6817595098897433) q[4];
ryy_4537823456(2.9989297963887167) q[4], q[3];
ch q[0], q[1];
z q[2];
rxx_4537823264(2.330432315320115) q[3], q[2];
y q[0];
rzz_4537820720(0.5451179860390722) q[4], q[1];
h q[0];
s q[1];
dcx q[3], q[4];
ry(2.7675116990595496) q[2];
cz q[3], q[2];
csx q[4], q[1];
r_4537824272(1.6536845141656562, 4.694299694376622) q[0];
ry(2.7935727417246783) q[0];
cz q[1], q[3];
t q[4];
u1(3.915479704904313) q[2];
y q[2];
ccx q[0], q[3], q[1];
t q[4];
h q[2];
csdg q[4], q[3];
ch q[1], q[0];
crx(0.8039336691848389) q[2], q[4];
u3(0.4219758078208076, 1.1803382560948976, 5.167639780598147) q[1];
u3(3.362500272499644, 2.8570374493741317, 1.0709870202426237) q[3];
rz(2.949780851542282) q[0];
ch q[2], q[3];
swap q[1], q[4];
r_4537823840(4.743443522933601, 3.60919493070318) q[0];
ecr q[0], q[4];
cu1_4537824224(3.1658132212681034) q[1], q[2];
rz(1.6823874898942566) q[3];
s q[0];
dcx q[1], q[4];
cu1_4537824848(3.6082856970910067) q[3], q[2];
rx(2.668254758931133) q[3];
dcx q[4], q[2];
cy q[1], q[0];
cry(5.043575770765476) q[0], q[3];
u2(3.165854014276106, 0.3779402463748531) q[4];
y q[2];
rx(3.5782293787217703) q[1];
cu3_4537824560(4.215681117455573, 1.5328980612412746, 1.9081868726937528) q[1], q[4];
cz q[0], q[3];
tdg q[2];
r_4537824800(1.7805163617322781, 3.9630639762215005) q[3];
rxx_4537824608(3.6292889482177357) q[2], q[0];
csdg q[4], q[1];
cx q[0], q[1];
cswap q[3], q[2], q[4];
sxdg q[4];
ry(1.374510859523749) q[3];
cu(4.125271898607976, 2.6357392326030413, 3.749369975963472, 4.114645816664951) q[2], q[1];
tdg q[0];
rzz_4537825376(0.4427409506708848) q[0], q[4];
crx(2.511860964839846) q[1], q[2];
h q[3];
cx q[1], q[4];
dcx q[0], q[3];
ry(1.015685668233942) q[2];
rcccx q[1], q[3], q[4], q[0];
rx(4.5200190573330365) q[2];
tdg q[3];
rx(2.2794404669808825) q[1];
ch q[4], q[0];
sdg q[2];
r_4537825184(5.484484586708067, 4.725619103017804) q[0];
cswap q[4], q[3], q[1];
s q[2];
xx_plus_yy_4537825616(2.3735306635077156, 0.530622291523413) q[3], q[0];
cu(5.205872243782534, 1.7898774831936324, 5.480285645629419, 5.795299949751851) q[2], q[1];
sxdg q[4];
s q[3];
swap q[2], q[4];
u3(2.829762787597521, 1.9546258809369328, 0.8857888219921598) q[0];
rx(2.4363618931868674) q[1];
cu3_4537825952(4.895691028389352, 4.811656001863979, 1.0555659694966246) q[2], q[4];
sxdg q[0];
u2(4.401572343298839, 2.4480459714794933) q[3];
x q[1];
rzx_4537825760(3.3377667524832186) q[4], q[1];
cp(5.890144631903338) q[2], q[0];
r_4537823312(1.0323466540788215, 2.0353054664709025) q[3];
cu3_4537824896(1.1405928434886916, 3.987689002219191, 3.329899851137699) q[3], q[4];
cz q[2], q[0];
tdg q[1];
sxdg q[3];
y q[2];
rxx_4537823072(4.893338454303033) q[0], q[4];
r_4537827248(1.3712199831974687, 2.4399262022579) q[1];
cp(4.647177407069424) q[0], q[1];
cu(0.001175538753802408, 4.531334926018798, 2.681534168149056, 0.8025189780269194) q[4], q[2];
h q[3];
sxdg q[2];
rzz_4537826000(3.1739292836652835) q[3], q[0];
rz(4.18582541309312) q[4];
ry(2.522395153842992) q[1];
u2(3.462725027399704, 1.651296127385902) q[3];
cz q[1], q[2];
crz(6.267753553267123) q[4], q[0];
rzx_4537823984(1.531939878981258) q[1], q[2];
xx_minus_yy_4537823696(3.82665465884437, 4.634194855757271) q[3], q[4];
y q[0];
cs q[3], q[2];
csdg q[4], q[0];
r_4537823744(2.766940450114258, 3.5309202947691216) q[1];
