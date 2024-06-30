OPENQASM 3.0;
include "stdgates.inc";
gate ryy_4540380464(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.563123440955706) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4540380320(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(3.111009718030257) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-3.111009718030257) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(3.111009718030257) _gate_q_1;
}
gate r_4540380704(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.414782340291277, 2.682353358186357, -2.682353358186357) _gate_q_0;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4540379840(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.628067072070107) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-3.0126254494045055) _gate_q_1;
  ry(-3.0126254494045055) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.628067072070107) _gate_q_0;
}
gate ryy_4540380032(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.5265422807015541) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4540380272(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.8507408930486365) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.807428063592239) _gate_q_0;
  ry(-1.807428063592239) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.8507408930486365) _gate_q_1;
}
gate xx_minus_yy_4540379312(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.7869252773653623) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.6276061251989845) _gate_q_0;
  ry(-0.6276061251989845) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.7869252773653623) _gate_q_1;
}
gate rxx_4540379264(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.1980700750432924) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4540379024(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.424534955451243) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4540379216(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.08519632263354647) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.08519632263354647) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.08519632263354647) _gate_q_1;
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
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate ryy_4540378640(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.4102996639086363) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4540378208(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.0329008647064075) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.806582628170673) _gate_q_1;
  ry(-2.806582628170673) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.0329008647064075) _gate_q_0;
}
gate xx_plus_yy_4540378256(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.085918414877979) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.9623745204760265) _gate_q_1;
  ry(-0.9623745204760265) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.085918414877979) _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate cu3_4540378688(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.2326330699857673) _gate_q_0;
  u1(0.2407719928989963) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-3.0967423764587734, 0, -2.2326330699857673) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(3.0967423764587734, 1.991861077086771, 0) _gate_q_1;
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
gate xx_plus_yy_4540377824(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.3532772910216335) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.0489807715683868) _gate_q_1;
  ry(-1.0489807715683868) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.3532772910216335) _gate_q_0;
}
gate r_4540377152(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.1290998181497924, -1.5534644658987424, 1.5534644658987424) _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate xx_plus_yy_4540376096(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.2665018086571707) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.4304349640971603) _gate_q_1;
  ry(-1.4304349640971603) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.2665018086571707) _gate_q_0;
}
gate rzz_4540376144(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.9317432376796149) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4540375952(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.78686323165738) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4540376576(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.374155962072541) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.697758711746945) _gate_q_0;
  ry(-2.697758711746945) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.374155962072541) _gate_q_1;
}
gate r_4540376048(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.3554374245200904, -1.1191742423002566, 1.1191742423002566) _gate_q_0;
}
gate r_4540376720(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.521643693368497, -1.0427062466201846, 1.0427062466201846) _gate_q_0;
}
gate rzx_4540375040(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6130898020279144) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4540375280(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.9920960813172255, 0.6206996801797362, -0.6206996801797362) _gate_q_0;
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
gate xx_minus_yy_4540376672(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.8459525641698638) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.983141567818437) _gate_q_0;
  ry(-2.983141567818437) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.8459525641698638) _gate_q_1;
}
gate xx_plus_yy_4540373984(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.680764053991223) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.3119842166599425) _gate_q_1;
  ry(-1.3119842166599425) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.680764053991223) _gate_q_0;
}
gate rzx_4540374032(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.084772498974331) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4540373264(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.52322780395117) _gate_q_0;
  u1(-1.2871317153062112) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.243318842647065, 0, -2.52322780395117) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.243318842647065, 3.810359519257381, 0) _gate_q_1;
}
gate rzx_4540374176(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.1238815144585934) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4540373552(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.4382392438244613) _gate_q_0;
  u1(1.3353368147670264) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.19327266184903, 0, -3.4382392438244613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.19327266184903, 2.1029024290574347, 0) _gate_q_1;
}
gate rxx_4540373600(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1467130317888836) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4540373216(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-6.097877906855821) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.6787613219128543) _gate_q_0;
  ry(-1.6787613219128543) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(6.097877906855821) _gate_q_1;
}
gate ryy_4540374752(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.693767043039531) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4540374656(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.3209328247263137) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.5074821123028035) _gate_q_0;
  ry(-1.5074821123028035) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.3209328247263137) _gate_q_1;
}
gate rxx_4540370912(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.2186550950460586) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4540372448(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.6487236268770604) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4540372832(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.301764071940887) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4540372592(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.737258623312429) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4540371872(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1319582583029) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4540371728(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.484259101551165) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate r_4540371392(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.250363253404893, -1.368619980620454, 1.368619980620454) _gate_q_0;
}
gate cu3_4540371152(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.852005639585156) _gate_q_0;
  u1(0.634864473745218) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.2334819820183063, 0, -3.852005639585156) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.2334819820183063, 3.217141165839938, 0) _gate_q_1;
}
gate rxx_4540371104(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.5892013080529734) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4540369088(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.5286321552707385) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.3496786887248273) _gate_q_0;
  ry(-1.3496786887248273) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.5286321552707385) _gate_q_1;
}
gate rzz_4540370144(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(6.1918131976372015) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4540369568(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.7803535493422196) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.8756317041457695) _gate_q_0;
  ry(-2.8756317041457695) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.7803535493422196) _gate_q_1;
}
gate xx_minus_yy_4540370864(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.547262293380156) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(3.1341127715313974) _gate_q_0;
  ry(-3.1341127715313974) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.547262293380156) _gate_q_1;
}
gate cu1_4540370432(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.05620517963800344) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.05620517963800344) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.05620517963800344) _gate_q_1;
}
gate r_4540369760(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.8707486899303805, 1.3187279079014442, -1.3187279079014442) _gate_q_0;
}
gate xx_plus_yy_4540369952(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.3479077329875473) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.2153965245243102) _gate_q_1;
  ry(-0.2153965245243102) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.3479077329875473) _gate_q_0;
}
gate rzx_4540369040(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.359436612455704) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4540369136(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.3460662229914693, -1.1969610204404577, 1.1969610204404577) _gate_q_0;
}
gate r_4540368752(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.6441494724059554, 1.653604525388285, -1.653604525388285) _gate_q_0;
}
gate xx_plus_yy_4540369280(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.6391505634847) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.9049195639514753) _gate_q_1;
  ry(-1.9049195639514753) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.6391505634847) _gate_q_0;
}
gate rzz_4540370624(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.170671495398705) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4540371056(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.8719235946374275) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4540368320(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.579567354252572, 0.9272417817258654, -0.9272417817258654) _gate_q_0;
}
gate xx_minus_yy_4540368704(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.1601689383886375) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.536747578024233) _gate_q_0;
  ry(-1.536747578024233) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.1601689383886375) _gate_q_1;
}
gate r_4540366928(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.9608935650919824, 1.5542694113883275, -1.5542694113883275) _gate_q_0;
}
gate r_4540366976(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.034669638251749256, 0.5504897397457467, -0.5504897397457467) _gate_q_0;
}
qubit[6] q;
ccx q[1], q[5], q[3];
ryy_4540380464(3.563123440955706) q[4], q[0];
x q[2];
cu1_4540380320(6.222019436060514) q[2], q[4];
t q[0];
r_4540380704(1.414782340291277, 4.253149684981254) q[3];
t q[5];
sxdg q[1];
u3(5.513833919015676, 0.7994111048152865, 0.41387869256948173) q[4];
cz q[5], q[0];
cx q[2], q[1];
s q[3];
crx(3.576840282207219) q[5], q[2];
cu(2.087241738529543, 1.513050392321636, 4.025909170381976, 2.6260026799418337) q[4], q[1];
xx_plus_yy_4540379840(6.025250898809011, 5.628067072070107) q[3], q[0];
ryy_4540380032(0.5265422807015541) q[5], q[4];
sx q[0];
x q[1];
xx_minus_yy_4540380272(3.614856127184478, 0.8507408930486365) q[3], q[2];
cswap q[4], q[0], q[2];
xx_minus_yy_4540379312(1.255212250397969, 1.7869252773653623) q[5], q[3];
x q[1];
u1(0.5901091220028148) q[5];
id q[0];
u2(5.214768928187993, 2.3966807806810366) q[3];
cry(5.991988144919712) q[4], q[2];
tdg q[1];
rz(1.9142077614596942) q[4];
rxx_4540379264(3.1980700750432924) q[1], q[2];
ryy_4540379024(4.424534955451243) q[5], q[3];
rx(5.399937695584713) q[0];
cu1_4540379216(0.17039264526709294) q[4], q[5];
csx q[3], q[2];
cx q[1], q[0];
c3sx q[1], q[3], q[5], q[4];
y q[2];
rz(1.1909562638187778) q[0];
iswap q[3], q[1];
ryy_4540378640(3.4102996639086363) q[0], q[4];
U(1.3748753468023216, 1.5029899197679484, 5.555159604549013) q[2];
s q[5];
xx_plus_yy_4540378208(5.613165256341346, 3.0329008647064075) q[0], q[4];
xx_plus_yy_4540378256(1.924749040952053, 4.085918414877979) q[1], q[3];
cy q[5], q[2];
ccz q[4], q[3], q[0];
cu3_4540378688(6.193484752917547, 1.991861077086771, 2.4734050628847637) q[5], q[1];
ry(2.4408140146952895) q[2];
iswap q[5], q[0];
tdg q[4];
ccz q[1], q[2], q[3];
rccx q[1], q[5], q[3];
sx q[0];
cz q[4], q[2];
rx(3.213442203662951) q[3];
s q[5];
t q[4];
u1(1.2257013879160794) q[1];
sx q[0];
z q[2];
cs q[2], q[4];
cy q[3], q[1];
sdg q[5];
u2(3.349210367636292, 1.7420515927660576) q[0];
sx q[1];
x q[3];
crz(5.8813758662170805) q[5], q[2];
xx_plus_yy_4540377824(2.0979615431367735, 1.3532772910216335) q[4], q[0];
iswap q[1], q[0];
rz(1.7921101528942238) q[3];
crz(1.591054837387402) q[5], q[2];
sxdg q[4];
cswap q[5], q[3], q[1];
cry(1.296825118996971) q[2], q[4];
s q[0];
y q[0];
rccx q[2], q[4], q[1];
iswap q[5], q[3];
r_4540377152(3.1290998181497924, 0.017331860896154162) q[2];
h q[5];
crx(3.6044007823232023) q[3], q[4];
u3(2.5236546960971205, 3.260084804877061, 4.365609948879584) q[1];
t q[0];
x q[1];
rx(0.6457438770657267) q[5];
cu(2.2989167883733046, 2.5777439209508928, 5.272566025219646, 0.49756950570775993) q[2], q[3];
u1(1.6025801830506674) q[4];
ry(0.05970367751555062) q[0];
sxdg q[5];
z q[2];
cx q[0], q[1];
dcx q[4], q[3];
csdg q[0], q[5];
cp(6.267461049030294) q[3], q[1];
t q[4];
h q[2];
xx_plus_yy_4540376096(2.8608699281943206, 1.2665018086571707) q[3], q[1];
rccx q[2], q[5], q[0];
sxdg q[4];
iswap q[2], q[0];
rzz_4540376144(1.9317432376796149) q[1], q[4];
sx q[3];
u2(1.6050059103757723, 1.5388897086195408) q[5];
ccx q[0], q[4], q[3];
y q[1];
dcx q[2], q[5];
p(5.532499270594522) q[1];
u1(4.854229950902092) q[3];
t q[2];
ccz q[5], q[0], q[4];
rxx_4540375952(1.78686323165738) q[3], q[5];
t q[1];
xx_minus_yy_4540376576(5.39551742349389, 5.374155962072541) q[0], q[4];
sxdg q[2];
c3sx q[1], q[0], q[4], q[5];
id q[2];
sx q[3];
r_4540376048(2.3554374245200904, 0.45162208449463986) q[4];
s q[0];
cry(0.019910516733455674) q[2], q[1];
csdg q[3], q[5];
sxdg q[0];
ccz q[3], q[1], q[4];
r_4540376720(4.521643693368497, 0.528090080174712) q[2];
h q[5];
rzx_4540375040(0.6130898020279144) q[1], q[5];
ccx q[4], q[2], q[3];
p(5.167851701897389) q[0];
cu(4.8631913046458415, 0.9858677376063156, 0.5131593032849691, 3.6141769509543513) q[5], q[0];
r_4540375280(1.9920960813172255, 2.1914960069746328) q[3];
id q[1];
csx q[2], q[4];
ch q[1], q[0];
cs q[4], q[3];
rx(4.154741869353755) q[5];
rx(1.707298122066343) q[2];
h q[1];
rz(3.347245172674301) q[0];
sdg q[4];
y q[2];
u2(2.8574022135494266, 1.6003393741215186) q[3];
t q[5];
dcx q[2], q[0];
crx(0.7040147309537178) q[4], q[3];
cs q[5], q[1];
ecr q[1], q[4];
xx_minus_yy_4540376672(5.966283135636874, 2.8459525641698638) q[2], q[0];
y q[3];
sxdg q[5];
rx(4.935322849914141) q[0];
sxdg q[4];
y q[1];
ccx q[2], q[5], q[3];
rz(1.055117803771715) q[1];
xx_plus_yy_4540373984(2.623968433319885, 3.680764053991223) q[3], q[2];
rzx_4540374032(3.084772498974331) q[4], q[0];
sdg q[5];
x q[2];
cu3_4540373264(4.48663768529413, 3.810359519257381, 1.2360960886449586) q[0], q[4];
sx q[1];
s q[5];
u3(5.237858503431348, 2.5066145037538163, 4.129763030174858) q[3];
sx q[4];
y q[3];
rzx_4540374176(3.1238815144585934) q[5], q[0];
ry(5.000310660448043) q[1];
u1(1.5395605286387448) q[2];
csx q[4], q[2];
c3sx q[0], q[1], q[5], q[3];
cu3_4540373552(4.38654532369806, 2.1029024290574347, 4.7735760585914875) q[3], q[5];
c3sx q[2], q[4], q[0], q[1];
p(2.7238171291219992) q[5];
rxx_4540373600(2.1467130317888836) q[2], q[1];
cu(3.473340489221527, 5.725581987219224, 3.5880904685070623, 5.901325095798696) q[0], q[4];
rx(2.430925099628916) q[3];
sxdg q[1];
iswap q[5], q[0];
cx q[2], q[3];
id q[4];
c3sx q[3], q[0], q[5], q[2];
u2(2.747615422609613, 5.839301595221415) q[4];
p(3.8767274502492204) q[1];
x q[2];
xx_minus_yy_4540373216(3.3575226438257086, 6.097877906855821) q[4], q[1];
iswap q[3], q[0];
u3(5.251179793116762, 4.844796914449244, 2.191770936189991) q[5];
z q[2];
s q[4];
sx q[5];
ryy_4540374752(5.693767043039531) q[0], q[3];
id q[1];
ccx q[5], q[0], q[1];
xx_minus_yy_4540374656(3.014964224605607, 1.3209328247263137) q[2], q[4];
sx q[3];
rxx_4540370912(2.2186550950460586) q[4], q[2];
rzz_4540372448(0.6487236268770604) q[3], q[5];
rx(3.49436584959803) q[0];
sdg q[1];
ccz q[2], q[3], q[4];
cp(1.647789207335391) q[0], q[5];
s q[1];
y q[1];
s q[5];
ryy_4540372832(5.301764071940887) q[4], q[0];
ry(3.993962681777768) q[2];
p(6.0510560144830094) q[3];
rxx_4540372592(2.737258623312429) q[4], q[2];
p(1.1072452153799095) q[3];
rzx_4540371872(2.1319582583029) q[1], q[0];
s q[5];
rccx q[3], q[2], q[0];
rzx_4540371728(2.484259101551165) q[5], q[4];
s q[1];
y q[2];
rcccx q[3], q[1], q[0], q[5];
r_4540371392(6.250363253404893, 0.20217634617444252) q[4];
sxdg q[3];
rx(4.799366457518781) q[1];
sxdg q[5];
csdg q[2], q[4];
rz(6.051095064465829) q[0];
cs q[4], q[3];
id q[0];
ccz q[2], q[5], q[1];
csdg q[2], q[1];
cu3_4540371152(2.4669639640366126, 3.217141165839938, 4.486870113330374) q[3], q[5];
cx q[0], q[4];
p(0.8697922798378019) q[2];
ccx q[5], q[4], q[3];
csdg q[1], q[0];
rxx_4540371104(2.5892013080529734) q[4], q[1];
x q[2];
cswap q[3], q[5], q[0];
cry(6.119570241315199) q[3], q[1];
iswap q[5], q[0];
sdg q[4];
ry(0.36341588337141884) q[2];
sdg q[1];
t q[3];
cs q[2], q[4];
s q[5];
ry(5.891668086574615) q[0];
tdg q[5];
ry(6.244000038067848) q[3];
xx_minus_yy_4540369088(2.6993573774496546, 2.5286321552707385) q[2], q[0];
u3(0.37146374516812375, 1.4235188910951582, 2.922100740049117) q[4];
ry(1.0453117232847522) q[1];
t q[4];
dcx q[3], q[1];
rzz_4540370144(6.1918131976372015) q[5], q[0];
tdg q[2];
id q[0];
u1(3.642477685153307) q[3];
cy q[4], q[5];
xx_minus_yy_4540369568(5.751263408291539, 2.7803535493422196) q[2], q[1];
xx_minus_yy_4540370864(6.268225543062795, 4.547262293380156) q[4], q[0];
dcx q[5], q[3];
cu1_4540370432(0.11241035927600689) q[1], q[2];
rx(5.504777443468365) q[3];
u3(1.0777707175805804, 6.204074164705573, 4.366392863751285) q[1];
U(2.174874716291787, 2.355438592633771, 1.5869821203352068) q[0];
r_4540369760(0.8707486899303805, 2.889524234696341) q[4];
U(5.722994850576376, 0.959598624592307, 0.07848998372037055) q[5];
sxdg q[2];
rz(2.9959222990050414) q[4];
xx_plus_yy_4540369952(0.4307930490486204, 2.3479077329875473) q[5], q[0];
cz q[3], q[2];
u1(0.47670443232348125) q[1];
cy q[0], q[2];
swap q[4], q[1];
sxdg q[3];
s q[5];
ry(0.8902897381482123) q[2];
rzx_4540369040(4.359436612455704) q[3], q[5];
y q[1];
r_4540369136(3.3460662229914693, 0.37383530635443873) q[0];
r_4540368752(0.6441494724059554, 3.2244008521831815) q[4];
csx q[0], q[2];
ecr q[5], q[3];
xx_plus_yy_4540369280(3.8098391279029507, 5.6391505634847) q[1], q[4];
csx q[2], q[4];
dcx q[3], q[1];
rzz_4540370624(4.170671495398705) q[5], q[0];
dcx q[0], q[1];
rzz_4540371056(2.8719235946374275) q[5], q[3];
rz(3.4783622985629004) q[2];
u3(4.041941455133603, 5.895621031212897, 3.0912676663854106) q[4];
cz q[5], q[1];
sxdg q[4];
sxdg q[3];
sdg q[0];
t q[2];
u1(1.6132008951632468) q[3];
ccz q[5], q[0], q[4];
sdg q[2];
r_4540368320(5.579567354252572, 2.498038108520762) q[1];
rccx q[5], q[4], q[1];
ry(4.611438354296937) q[0];
t q[3];
rx(3.32392630671675) q[2];
rcccx q[0], q[4], q[5], q[3];
x q[2];
z q[1];
tdg q[3];
ccz q[2], q[4], q[0];
cx q[1], q[5];
c3sx q[4], q[1], q[0], q[3];
u3(0.6489927490362862, 6.127679771077564, 5.774082569200261) q[2];
sdg q[5];
ecr q[4], q[5];
ry(4.25529284252471) q[0];
cz q[1], q[3];
u1(3.19081199445419) q[2];
cry(1.9755237011968023) q[2], q[5];
rcccx q[4], q[0], q[1], q[3];
cz q[3], q[2];
rx(0.34285767554705193) q[4];
cswap q[5], q[0], q[1];
u3(5.9879560185371865, 4.1057188871964, 1.2260061663084085) q[5];
crx(1.5775411152386518) q[1], q[3];
rccx q[4], q[0], q[2];
ecr q[0], q[5];
ecr q[1], q[3];
crx(5.65037946756366) q[2], q[4];
iswap q[0], q[3];
iswap q[1], q[4];
s q[2];
rx(1.456487009022711) q[5];
u1(3.792614340330469) q[2];
csdg q[0], q[4];
xx_minus_yy_4540368704(3.073495156048466, 2.1601689383886375) q[3], q[5];
p(5.716806802503053) q[1];
iswap q[2], q[4];
crx(0.7916968398070764) q[0], q[5];
cx q[3], q[1];
swap q[5], q[4];
r_4540366928(0.9608935650919824, 3.125065738183224) q[1];
r_4540366976(0.034669638251749256, 2.1212860665406432) q[2];
U(6.032594430904184, 3.879204935909172, 2.0900618671792266) q[3];
sdg q[0];
