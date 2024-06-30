OPENQASM 3.0;
include "stdgates.inc";
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate cu3_4537085456(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.034122146952743) _gate_q_0;
  u1(1.8916848221344105) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.43788498114651, 0, -3.034122146952743) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.43788498114651, 1.1424373248183324, 0) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4537489248(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.21728025890075578) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.421937813593035) _gate_q_0;
  ry(-2.421937813593035) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.21728025890075578) _gate_q_1;
}
gate xx_plus_yy_4537489296(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.01815722490212) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.4046447970681595) _gate_q_1;
  ry(-1.4046447970681595) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.01815722490212) _gate_q_0;
}
gate rzx_4537489968(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.85799770736136) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4537490160(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.4056686616686527) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.4056686616686527) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.4056686616686527) _gate_q_1;
}
gate xx_minus_yy_4537490064(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.9053626480891115) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.1496344276159807) _gate_q_0;
  ry(-2.1496344276159807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.9053626480891115) _gate_q_1;
}
gate xx_minus_yy_4537489728(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.8448514100434613) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.6327154950256437) _gate_q_0;
  ry(-0.6327154950256437) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.8448514100434613) _gate_q_1;
}
gate xx_plus_yy_4537489536(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.973678790102437) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.831364775389849) _gate_q_1;
  ry(-2.831364775389849) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.973678790102437) _gate_q_0;
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
gate rxx_4537490544(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.901069483997309) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4537490400(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.3931123991935896) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.0333309755091116) _gate_q_0;
  ry(-2.0333309755091116) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.3931123991935896) _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate rzx_4537490304(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.3465573759810612) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4537490256(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.154869863743429, 3.4631274326908335, -3.4631274326908335) _gate_q_0;
}
gate cu1_4537491408(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.499173950215733) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.499173950215733) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.499173950215733) _gate_q_1;
}
gate xx_minus_yy_4537491600(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-6.15281958867074) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.4177459407515662) _gate_q_0;
  ry(-0.4177459407515662) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(6.15281958867074) _gate_q_1;
}
gate rzx_4537491264(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.96331192859563) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4537491552(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.078163216918921) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.8444884862855258) _gate_q_1;
  ry(-1.8444884862855258) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.078163216918921) _gate_q_0;
}
gate rzz_4537491120(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.198690019028057) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4537492272(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.2447099544915887) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.5739298588715425) _gate_q_1;
  ry(-1.5739298588715425) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.2447099544915887) _gate_q_0;
}
gate rzz_4537492032(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.4018203872613717) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
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
gate rxx_4537492704(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.408897245763896) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4537492896(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.471677839895143) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4537492848(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.979297972167969) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.2482766214515744) _gate_q_0;
  ry(-2.2482766214515744) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.979297972167969) _gate_q_1;
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
gate cu1_4537493040(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.0886680924664422) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.0886680924664422) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.0886680924664422) _gate_q_1;
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
gate rzz_4537493568(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.427823998703164) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4537493712(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.7981384950670247) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4537493616(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.8141624101240246, 4.7099917421416855, -4.7099917421416855) _gate_q_0;
}
gate xx_minus_yy_4537491168(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.9983651699559044) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.9975956946448763) _gate_q_0;
  ry(-1.9975956946448763) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.9983651699559044) _gate_q_1;
}
gate rzx_4537491216(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.629654698079041) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4537490976(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.892164216987223) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.892164216987223) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.892164216987223) _gate_q_1;
}
gate xx_plus_yy_4537495056(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.015846421262512) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.111951878787776) _gate_q_1;
  ry(-2.111951878787776) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.015846421262512) _gate_q_0;
}
gate rxx_4537494336(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.554054792377509) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4537494096(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.1205876933265253) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.1205876933265253) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.1205876933265253) _gate_q_1;
}
gate cu3_4537494240(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.947428357201721) _gate_q_0;
  u1(-1.5841938080997089) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.21265592309879, 0, -3.947428357201721) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.21265592309879, 5.53162216530143, 0) _gate_q_1;
}
gate ryy_4537494432(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.7808953172690936) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4537494576(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.1211926252978706) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.1302312025937369) _gate_q_1;
  ry(-1.1302312025937369) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.1211926252978706) _gate_q_0;
}
gate ryy_4537494960(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.409662740808151) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
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
gate rzz_4537494192(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.9752203121748533) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate cu3_4537495488(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.7789313225702186) _gate_q_0;
  u1(-0.7863261337449275) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.2859414428576503, 0, -2.7789313225702186) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.2859414428576503, 3.565257456315146, 0) _gate_q_1;
}
gate rzz_4537495776(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.228518023676663) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4537495248(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.4325038115491937) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4537495152(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.178119514788265) _gate_q_0;
  u1(0.12242875848443191) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.916191191405463, 0, -4.178119514788265) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.916191191405463, 4.055690756303833, 0) _gate_q_1;
}
gate rxx_4537495200(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6844467175769136) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4537495104(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.8710019311519717) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4537496112(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.8425550187138376) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.8470407237232147) _gate_q_1;
  ry(-0.8470407237232147) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.8425550187138376) _gate_q_0;
}
gate rzx_4537496736(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.1077189979170643) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4537496304(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.3543475135874803) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.3543475135874803) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.3543475135874803) _gate_q_1;
}
gate xx_minus_yy_4537496640(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.310563064476948) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.7178500902915766) _gate_q_0;
  ry(-0.7178500902915766) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.310563064476948) _gate_q_1;
}
gate xx_minus_yy_4537496832(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.796471397724344) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.5939135126128277) _gate_q_0;
  ry(-1.5939135126128277) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.796471397724344) _gate_q_1;
}
gate rzx_4537496688(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.069653592149248) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4537497024(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.5760675981777454) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4537496880(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.4243188075242506) _gate_q_0;
  u1(-0.6824091800410397) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.9746644642502726, 0, -5.4243188075242506) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.9746644642502726, 6.10672798756529, 0) _gate_q_1;
}
gate rxx_4537497168(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.839247367993688) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4537497072(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.457944139540004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4537497216(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.814837427616034) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4537497552(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.5486333984942235, 3.777244868610647, -3.777244868610647) _gate_q_0;
}
gate r_4537497504(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.4035329751204492, 4.646461206537927, -4.646461206537927) _gate_q_0;
}
gate r_4537497744(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.071781393822337, 3.0500212535631643, -3.0500212535631643) _gate_q_0;
}
gate rxx_4537497696(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.9977572224037075) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4537497792(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.8393544716170902) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.8393544716170902) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.8393544716170902) _gate_q_1;
}
gate rzz_4537497888(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.7898072088244845) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4537498224(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.834474368290693) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.814103807028551) _gate_q_1;
  ry(-0.814103807028551) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.834474368290693) _gate_q_0;
}
gate cu1_4537495680(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.10055813422590806) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.10055813422590806) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.10055813422590806) _gate_q_1;
}
gate rzz_4537498416(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.2207326266460305) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4537499280(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.2015466818781757, -0.7363703678235388, 0.7363703678235388) _gate_q_0;
}
qubit[5] q;
iswap q[4], q[3];
id q[2];
cu3_4537085456(4.87576996229302, 1.1424373248183324, 4.925806969087153) q[1], q[0];
ccz q[3], q[4], q[2];
cp(3.8555919074954916) q[1], q[0];
xx_minus_yy_4537489248(4.84387562718607, 0.21728025890075578) q[4], q[1];
xx_plus_yy_4537489296(2.809289594136319, 5.01815722490212) q[2], q[0];
id q[3];
u3(3.8253909285396954, 4.6660791086941895, 4.494254317111451) q[4];
y q[0];
sdg q[3];
s q[2];
rx(0.016969180998101293) q[1];
cz q[0], q[1];
u3(0.8032081451815166, 4.28127360282331, 1.627395866422211) q[3];
ch q[4], q[2];
ccx q[1], q[3], q[2];
h q[0];
u1(4.5810012517381615) q[4];
u2(3.1165116584858827, 6.251590428044843) q[0];
h q[3];
cswap q[4], q[2], q[1];
cp(3.246608771099428) q[4], q[1];
rzx_4537489968(4.85799770736136) q[3], q[2];
sxdg q[0];
cu1_4537490160(2.8113373233373053) q[0], q[2];
sx q[4];
xx_minus_yy_4537490064(4.299268855231961, 3.9053626480891115) q[3], q[1];
crz(5.807090662040718) q[4], q[3];
xx_minus_yy_4537489728(1.2654309900512875, 0.8448514100434613) q[0], q[1];
sdg q[2];
cswap q[0], q[4], q[1];
tdg q[3];
u1(3.264742620569254) q[2];
xx_plus_yy_4537489536(5.662729550779698, 5.973678790102437) q[4], q[3];
p(3.0765887929283906) q[0];
t q[2];
rx(1.6630419224022845) q[1];
s q[1];
cx q[3], q[4];
u1(1.2141653396210328) q[0];
t q[2];
rcccx q[2], q[4], q[1], q[3];
id q[0];
y q[4];
rxx_4537490544(2.901069483997309) q[1], q[3];
iswap q[0], q[2];
cry(5.70626330676416) q[3], q[1];
xx_minus_yy_4537490400(4.066661951018223, 2.3931123991935896) q[4], q[0];
sxdg q[2];
id q[3];
rx(1.0962303960251059) q[2];
csdg q[0], q[1];
ry(2.5507348134066086) q[4];
rcccx q[4], q[0], q[2], q[3];
s q[1];
t q[0];
crx(3.4472185094809333) q[1], q[3];
rzx_4537490304(1.3465573759810612) q[4], q[2];
r_4537490256(2.154869863743429, 5.03392375948573) q[1];
rz(4.6374748572400915) q[0];
cu(5.516393770618051, 4.149893870646506, 2.376616456480184, 0.7754470145934229) q[3], q[4];
id q[2];
sdg q[2];
u1(3.015935957776928) q[3];
tdg q[4];
cu1_4537491408(4.998347900431466) q[0], q[1];
xx_minus_yy_4537491600(0.8354918815031324, 6.15281958867074) q[3], q[0];
swap q[4], q[1];
id q[2];
rzx_4537491264(2.96331192859563) q[4], q[0];
xx_plus_yy_4537491552(3.6889769725710515, 5.078163216918921) q[1], q[2];
y q[3];
h q[2];
rzz_4537491120(5.198690019028057) q[4], q[0];
ry(3.6361078292655726) q[3];
rz(3.020209131526446) q[1];
rcccx q[1], q[4], q[3], q[2];
u3(1.4238682420039999, 3.1695435292433927, 0.469104216071781) q[0];
rcccx q[4], q[3], q[2], q[1];
p(1.6523962476851055) q[0];
xx_plus_yy_4537492272(3.147859717743085, 1.2447099544915887) q[3], q[4];
crx(5.291017100916934) q[0], q[2];
z q[1];
rzz_4537492032(1.4018203872613717) q[0], q[3];
z q[4];
u2(1.4897409400098436, 3.767580958356333) q[2];
rz(0.41303650143254994) q[1];
dcx q[4], q[1];
ccz q[3], q[0], q[2];
c3sx q[4], q[0], q[2], q[3];
ry(4.552875108662865) q[1];
z q[3];
crx(5.371641415448682) q[2], q[4];
csdg q[1], q[0];
rxx_4537492704(2.408897245763896) q[1], q[0];
rx(3.6992964137709943) q[2];
rx(0.25439887548238566) q[4];
sxdg q[3];
rxx_4537492896(4.471677839895143) q[1], q[2];
xx_minus_yy_4537492848(4.496553242903149, 2.979297972167969) q[4], q[0];
rx(5.140194004477987) q[3];
csx q[1], q[4];
cu1_4537493040(2.1773361849328845) q[2], q[0];
U(2.6058204423205114, 4.3075282677340025, 5.475396921956603) q[3];
ecr q[3], q[0];
cry(3.524777955997653) q[2], q[1];
u1(1.0112315603932225) q[4];
c3sx q[0], q[2], q[4], q[3];
rx(0.2769649499778871) q[1];
y q[2];
csx q[0], q[4];
crx(6.096294566438688) q[1], q[3];
rzz_4537493568(4.427823998703164) q[4], q[3];
u2(6.003816081904596, 4.483950551273576) q[0];
U(1.2139220755682223, 2.818432934247252, 3.2407868949837866) q[1];
ry(4.557403574380418) q[2];
rzz_4537493712(1.7981384950670247) q[2], q[1];
cz q[0], q[3];
r_4537493616(2.8141624101240246, 6.280788068936582) q[4];
xx_minus_yy_4537491168(3.9951913892897526, 0.9983651699559044) q[1], q[3];
rzx_4537491216(1.629654698079041) q[4], q[2];
tdg q[0];
rcccx q[0], q[4], q[1], q[3];
sxdg q[2];
cu1_4537490976(5.784328433974446) q[0], q[2];
h q[4];
iswap q[3], q[1];
xx_plus_yy_4537495056(4.223903757575552, 4.015846421262512) q[4], q[1];
ch q[2], q[0];
rz(0.17631400306926778) q[3];
rxx_4537494336(4.554054792377509) q[1], q[2];
U(3.984741198647352, 3.4258561440020654, 6.0229373862478806) q[4];
cu1_4537494096(2.2411753866530506) q[0], q[3];
x q[4];
swap q[0], q[1];
cu3_4537494240(2.42531184619758, 5.53162216530143, 2.363234549102012) q[3], q[2];
cy q[4], q[2];
ryy_4537494432(1.7808953172690936) q[1], q[0];
x q[3];
u3(1.7541149480526057, 0.17370568803599554, 5.387507389532628) q[2];
csx q[4], q[0];
crx(4.166311003820242) q[3], q[1];
cz q[1], q[2];
cx q[3], q[4];
x q[0];
dcx q[3], q[0];
xx_plus_yy_4537494576(2.2604624051874738, 2.1211926252978706) q[1], q[2];
u3(5.118625104439643, 4.9344946860031795, 5.138015011520014) q[4];
y q[0];
ryy_4537494960(5.409662740808151) q[3], q[2];
cy q[1], q[4];
cx q[4], q[0];
cx q[3], q[2];
tdg q[1];
rccx q[4], q[0], q[3];
U(3.4496066542140245, 5.890413444619867, 4.658256054171978) q[2];
u3(2.8000698540224485, 3.717084196560923, 1.0010145962541697) q[1];
cz q[2], q[1];
rzz_4537494192(1.9752203121748533) q[4], q[3];
sx q[0];
cs q[2], q[4];
ccz q[0], q[1], q[3];
cy q[4], q[0];
dcx q[3], q[1];
u2(5.364793792054655, 5.491986653753573) q[2];
c3sx q[3], q[0], q[4], q[2];
p(1.4511807810163826) q[1];
u2(5.745413051703706, 1.0513354983702585) q[3];
h q[1];
iswap q[0], q[2];
tdg q[4];
cu3_4537495488(4.571882885715301, 3.565257456315146, 1.992605188825291) q[3], q[4];
rzz_4537495776(4.228518023676663) q[1], q[2];
u2(3.5169543161742567, 4.662133713025201) q[0];
U(0.625053166100368, 1.5653502574651383, 1.1842455326268893) q[3];
cz q[2], q[0];
rzz_4537495248(3.4325038115491937) q[4], q[1];
csx q[4], q[2];
rx(2.3518086625758734) q[0];
id q[1];
z q[3];
swap q[3], q[0];
cu3_4537495152(5.832382382810926, 4.055690756303833, 4.300548273272697) q[1], q[4];
sx q[2];
rxx_4537495200(0.6844467175769136) q[1], q[3];
ry(4.926260644909358) q[2];
rxx_4537495104(2.8710019311519717) q[4], q[0];
sx q[3];
x q[4];
crx(5.239713468262028) q[0], q[2];
u2(4.3417576527253265, 4.365125900705605) q[1];
crz(4.885196226276226) q[2], q[1];
u1(0.5512230935152562) q[3];
u1(6.095985263183918) q[0];
tdg q[4];
xx_plus_yy_4537496112(1.6940814474464294, 0.8425550187138376) q[4], q[0];
rzx_4537496736(3.1077189979170643) q[1], q[2];
u3(4.6809463074325794, 0.4620258519716046, 3.891316679870074) q[3];
u3(3.0691848222063296, 3.23141915006184, 1.2950982049661035) q[2];
rccx q[4], q[0], q[3];
id q[1];
cu1_4537496304(2.7086950271749606) q[0], q[1];
cswap q[4], q[3], q[2];
xx_minus_yy_4537496640(1.4357001805831533, 4.310563064476948) q[1], q[3];
cry(1.7462605408126441) q[2], q[4];
x q[0];
csdg q[1], q[3];
cx q[2], q[4];
rz(1.3069046707589662) q[0];
xx_minus_yy_4537496832(3.1878270252256553, 4.796471397724344) q[4], q[1];
swap q[0], q[2];
u1(5.394729447887337) q[3];
rzx_4537496688(3.069653592149248) q[0], q[1];
rzx_4537497024(1.5760675981777454) q[4], q[3];
tdg q[2];
cu3_4537496880(1.9493289285005453, 6.10672798756529, 4.741909627483211) q[0], q[2];
rxx_4537497168(2.839247367993688) q[4], q[1];
sxdg q[3];
rxx_4537497072(1.457944139540004) q[4], q[2];
id q[0];
ecr q[1], q[3];
ryy_4537497216(5.814837427616034) q[0], q[2];
s q[3];
cy q[4], q[1];
s q[2];
dcx q[4], q[1];
rx(5.104863570068953) q[0];
sdg q[3];
rx(2.262213230373134) q[1];
sxdg q[3];
h q[2];
sx q[0];
z q[4];
r_4537497552(0.5486333984942235, 5.348041195405544) q[0];
rx(0.7864048175294036) q[2];
csdg q[4], q[1];
r_4537497504(0.4035329751204492, 6.217257533332823) q[3];
tdg q[1];
sxdg q[0];
crx(0.11570039292200684) q[3], q[4];
r_4537497744(4.071781393822337, 4.620817580358061) q[2];
rccx q[1], q[0], q[3];
x q[4];
z q[2];
cu(5.291244841820102, 1.3600213708879672, 4.863130735960963, 5.5604136237643464) q[2], q[3];
rxx_4537497696(2.9977572224037075) q[4], q[1];
x q[0];
rcccx q[2], q[0], q[3], q[1];
y q[4];
cu1_4537497792(3.6787089432341804) q[2], q[3];
rzz_4537497888(3.7898072088244845) q[4], q[1];
u1(0.750840853762136) q[0];
crx(5.448444659966723) q[0], q[4];
cswap q[3], q[2], q[1];
ccx q[1], q[2], q[0];
p(2.851895423640423) q[4];
u1(3.942250217255843) q[3];
xx_plus_yy_4537498224(1.628207614057102, 4.834474368290693) q[0], q[2];
cry(2.1896989935096114) q[3], q[4];
x q[1];
y q[4];
ecr q[2], q[1];
cry(1.5139900560189348) q[0], q[3];
crx(4.6092700869102385) q[2], q[3];
s q[4];
crz(0.3353744501390612) q[1], q[0];
sx q[1];
crz(2.8649943252547714) q[3], q[4];
h q[2];
U(4.582727465889318, 1.8689133733678895, 5.6176904650174615) q[0];
cu1_4537495680(0.20111626845181613) q[2], q[3];
rzz_4537498416(3.2207326266460305) q[1], q[4];
r_4537499280(3.2015466818781757, 0.8344259589713577) q[0];
cs q[4], q[3];
cswap q[2], q[1], q[0];
