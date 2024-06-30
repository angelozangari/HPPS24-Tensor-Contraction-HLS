OPENQASM 3.0;
include "stdgates.inc";
gate rzx_4418144496(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.080190792531844) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate cu3_4537559920(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.5331548525711098) _gate_q_0;
  u1(-0.36172933167328314) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.609303267092846, 0, -0.5331548525711098) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.609303267092846, 0.894884184244393, 0) _gate_q_1;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4537564480(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.543644930674895) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.8322863886521394) _gate_q_1;
  ry(-1.8322863886521394) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.543644930674895) _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate xx_plus_yy_4537551472(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.154527258019127) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.728369799293155) _gate_q_1;
  ry(-2.728369799293155) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.154527258019127) _gate_q_0;
}
gate cu3_4537560688(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.331463080144936) _gate_q_0;
  u1(1.0400194131980558) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.23344602765037942, 0, -2.331463080144936) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.23344602765037942, 1.2914436669468798, 0) _gate_q_1;
}
gate cu3_4537560928(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.7647725184773533) _gate_q_0;
  u1(0.591420128277421) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.2760375223866447, 0, -3.7647725184773533) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.2760375223866447, 3.1733523901999323, 0) _gate_q_1;
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
gate rzz_4537561072(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.571524592677696) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4537553824(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.5478750861694026) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.691179082241678) _gate_q_1;
  ry(-2.691179082241678) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.5478750861694026) _gate_q_0;
}
gate cu1_4537558144(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.31111232163029906) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.31111232163029906) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.31111232163029906) _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
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
gate rxx_4537560832(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.6708043050760986) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4537556128(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.4116505439118145) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.4116505439118145) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.4116505439118145) _gate_q_1;
}
gate xx_plus_yy_4537552960(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.7968711362899663) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.1148069863020353) _gate_q_1;
  ry(-1.1148069863020353) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.7968711362899663) _gate_q_0;
}
gate ryy_4537557184(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.298842829052764) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4537556656(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.5528334720290475) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4537560640(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.24554300780912) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4537559344(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.462404683315004) _gate_q_0;
  u1(-0.13531720788247936) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.9555828058027456, 0, -5.462404683315004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.9555828058027456, 5.597721891197484, 0) _gate_q_1;
}
gate xx_plus_yy_4537552672(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.1501764735377993) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.1007046563173097) _gate_q_1;
  ry(-2.1007046563173097) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.1501764735377993) _gate_q_0;
}
gate ryy_4537555936(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1389566522539103) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4537550128(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.4114896764221631) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.4114896764221631) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.4114896764221631) _gate_q_1;
}
gate rzz_4537550800(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.3666043266419474) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4537550368(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.954322291813255) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.6988532362266002) _gate_q_0;
  ry(-2.6988532362266002) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.954322291813255) _gate_q_1;
}
gate xx_minus_yy_4537553104(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.43435552014496) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.8887685696653476) _gate_q_0;
  ry(-2.8887685696653476) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.43435552014496) _gate_q_1;
}
gate xx_plus_yy_4537554400(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.1392820173314644) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.9027915495326525) _gate_q_1;
  ry(-0.9027915495326525) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.1392820173314644) _gate_q_0;
}
gate xx_minus_yy_4537552384(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.0286158866767163) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.433391484258711) _gate_q_0;
  ry(-1.433391484258711) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.0286158866767163) _gate_q_1;
}
gate ryy_4537558480(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.0171004271787105) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4537549840(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.7640968599528724) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4537563568(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.115250363222546) _gate_q_0;
  u1(2.185550916376874) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.404055622491429, 0, -3.115250363222546) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.404055622491429, 0.9296994468456723, 0) _gate_q_1;
}
gate rzz_4537555648(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.5466370072960467) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4537556704(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.9508158274438396) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4537557136(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.7568607721667675, 0.1745699521803128, -0.1745699521803128) _gate_q_0;
}
gate rxx_4537549552(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1150979765554436) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4537550320(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.5813006156345912, 2.8365322334556318, -2.8365322334556318) _gate_q_0;
}
gate rzz_4537556560(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.851816440473833) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4537557376(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.0831424075489187) _gate_q_0;
  u1(1.498622982182238) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.898977620695642, 0, -3.0831424075489187) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.898977620695642, 1.5845194253666803, 0) _gate_q_1;
}
gate rxx_4537564384(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.029159238974459) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4537564816(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.525403102239863) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4537551952(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.141356831096831, 2.269718041827844, -2.269718041827844) _gate_q_0;
}
gate rxx_4537564864(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.5009179820458042) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4537560304(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.9736031342223885, 3.062044214314339, -3.062044214314339) _gate_q_0;
}
gate rzz_4537563808(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.7643908268165074) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4540381472(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.6398039575851224, -1.3982422425203103, 1.3982422425203103) _gate_q_0;
}
gate rxx_4540373984(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8206559577929806) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4540368944(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.7540345217617612, -0.4880091830946114, 0.4880091830946114) _gate_q_0;
}
gate rxx_4540369376(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.3088822875776412) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4540379936(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.55429734637815) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.1513300186884122) _gate_q_1;
  ry(-0.1513300186884122) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.55429734637815) _gate_q_0;
}
gate rzx_4540376192(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.31146359744689656) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4540375712(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.864050465987113, -1.0282881354057565, 1.0282881354057565) _gate_q_0;
}
gate cu1_4540371056(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.4628503834614184) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.4628503834614184) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.4628503834614184) _gate_q_1;
}
gate rzz_4540373936(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.353881791217617) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4540369424(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.14978284812148274, 4.346314551389925, -4.346314551389925) _gate_q_0;
}
gate r_4540371104(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.163250540717364, 0.6049944727983774, -0.6049944727983774) _gate_q_0;
}
gate cu3_4540379024(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.9596007341699435) _gate_q_0;
  u1(1.8681079085373709) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-3.0989459623169786, 0, -2.9596007341699435) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(3.0989459623169786, 1.0914928256325727, 0) _gate_q_1;
}
gate ryy_4540375952(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.7678685051626046) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4540377632(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.641634556646832, 1.194269165869716, -1.194269165869716) _gate_q_0;
}
gate cu1_4540378064(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.7010131074819893) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.7010131074819893) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.7010131074819893) _gate_q_1;
}
gate rzx_4540375232(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.709398428967167) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
qubit[7] q;
rzx_4418144496(5.080190792531844) q[3], q[0];
ecr q[4], q[6];
cx q[2], q[1];
u2(0.2204600388802385, 5.064338990344141) q[5];
cz q[2], q[4];
cu3_4537559920(5.218606534185692, 0.894884184244393, 0.17142552089782676) q[5], q[6];
csx q[0], q[1];
h q[3];
xx_plus_yy_4537564480(3.664572777304279, 2.543644930674895) q[5], q[6];
p(3.1034130374543607) q[4];
csdg q[2], q[1];
iswap q[0], q[3];
dcx q[1], q[6];
y q[5];
xx_plus_yy_4537551472(5.45673959858631, 4.154527258019127) q[2], q[0];
cx q[3], q[4];
z q[3];
cu3_4537560688(0.46689205530075883, 1.2914436669468798, 3.3714824933429917) q[5], q[6];
cu3_4537560928(2.5520750447732894, 3.1733523901999323, 4.356192646754774) q[1], q[2];
cy q[0], q[4];
sx q[0];
c3sx q[2], q[3], q[4], q[5];
csx q[6], q[1];
rccx q[6], q[2], q[3];
crx(0.6697461624406685) q[5], q[1];
rzz_4537561072(4.571524592677696) q[4], q[0];
ch q[6], q[3];
h q[0];
xx_plus_yy_4537553824(5.382358164483356, 2.5478750861694026) q[5], q[2];
x q[4];
u2(5.611518082727809, 5.158792362756045) q[1];
cu(6.031901871498056, 4.533896786200265, 0.9520734792763242, 4.459114969945079) q[3], q[2];
cu1_4537558144(0.6222246432605981) q[5], q[1];
ch q[0], q[4];
s q[6];
cu(0.95446391923259, 2.785906343951624, 5.020361699779451, 0.6076349235071346) q[5], q[6];
cs q[4], q[1];
ccz q[0], q[3], q[2];
rcccx q[1], q[4], q[2], q[6];
u3(5.873237932564707, 1.6023735738555982, 2.5454337505192104) q[5];
ry(1.8521582103960634) q[0];
y q[3];
rxx_4537560832(1.6708043050760986) q[5], q[6];
ecr q[1], q[0];
z q[4];
u3(0.786275987608107, 2.4074616556969053, 0.8378318918534238) q[2];
u3(6.274341359838156, 3.9821611514559603, 1.129615856903617) q[3];
cu1_4537556128(4.823301087823629) q[2], q[3];
crx(4.339788556532788) q[5], q[0];
iswap q[4], q[6];
U(0.05667022246114208, 5.868658793852395, 3.0690814505482362) q[1];
cz q[1], q[5];
rccx q[2], q[3], q[6];
y q[0];
sxdg q[4];
crz(2.232374879955592) q[5], q[2];
xx_plus_yy_4537552960(2.2296139726040707, 3.7968711362899663) q[0], q[6];
ryy_4537557184(4.298842829052764) q[3], q[1];
sxdg q[4];
rzx_4537556656(4.5528334720290475) q[4], q[0];
t q[1];
crx(5.31026090434264) q[2], q[3];
rzx_4537560640(4.24554300780912) q[5], q[6];
cu3_4537559344(5.911165611605491, 5.597721891197484, 5.327087475432525) q[3], q[6];
csdg q[2], q[5];
ecr q[4], q[1];
ry(2.624464647409956) q[0];
t q[4];
ecr q[1], q[3];
U(2.9888236168450577, 4.82231164759159, 6.142452488548544) q[6];
sx q[0];
csdg q[2], q[5];
u3(0.26738557202376245, 3.754739999900173, 4.202855787600744) q[6];
t q[5];
xx_plus_yy_4537552672(4.2014093126346195, 3.1501764735377993) q[4], q[0];
dcx q[1], q[2];
rz(4.054206211835485) q[3];
ccx q[6], q[2], q[0];
crz(0.021648096607562718) q[3], q[1];
ryy_4537555936(1.1389566522539103) q[4], q[5];
rcccx q[6], q[5], q[0], q[1];
rx(5.406927653774824) q[3];
p(0.22028102405603647) q[2];
z q[4];
u2(6.134192382622787, 0.6518158198547541) q[5];
cu1_4537550128(0.8229793528443262) q[1], q[0];
h q[2];
cu(2.208251192184364, 4.373764409758948, 2.1912846915282223, 5.8101161720818) q[6], q[4];
s q[3];
rzz_4537550800(1.3666043266419474) q[5], q[0];
crx(3.9943047925671173) q[1], q[6];
cz q[3], q[2];
h q[4];
iswap q[4], q[3];
y q[6];
u2(0.3986308086505529, 1.713937759680562) q[5];
u3(3.792321447721775, 1.2990531716043396, 4.502772632470415) q[2];
p(5.981461716216104) q[1];
z q[0];
ccx q[1], q[3], q[5];
u3(0.5889592785655665, 4.809365412062293, 1.2266240780687898) q[4];
u1(3.9785015364518426) q[2];
h q[0];
x q[6];
rccx q[1], q[0], q[5];
x q[4];
cy q[6], q[2];
rz(3.064886929491958) q[3];
u2(3.1452610544999358, 4.108950448214426) q[4];
s q[5];
h q[3];
csdg q[1], q[0];
rz(3.000878895186863) q[6];
u2(5.769329200435063, 2.6094577531580248) q[2];
xx_minus_yy_4537550368(5.3977064724532005, 1.954322291813255) q[1], q[0];
ccz q[4], q[6], q[5];
ecr q[3], q[2];
h q[1];
tdg q[4];
cx q[5], q[6];
crx(1.6200738830904222) q[2], q[3];
z q[0];
rccx q[1], q[2], q[0];
x q[4];
ry(2.1615828244246136) q[5];
xx_minus_yy_4537553104(5.777537139330695, 3.43435552014496) q[6], q[3];
x q[3];
cu(0.8862145091048981, 4.579481778625047, 0.5326329793253354, 3.944789465468743) q[4], q[2];
sx q[6];
U(3.382300920440991, 1.0212249093554207, 5.095827599103333) q[5];
x q[0];
t q[1];
cswap q[6], q[5], q[2];
rccx q[1], q[0], q[4];
U(2.735985276157014, 5.6378841389219545, 1.1182891344204882) q[3];
x q[0];
cz q[4], q[5];
csdg q[2], q[6];
csx q[1], q[3];
crx(5.59350951030106) q[1], q[6];
cswap q[2], q[0], q[4];
sxdg q[5];
u1(4.9486574075530605) q[3];
u1(0.4064570135228407) q[5];
sx q[4];
h q[2];
z q[6];
h q[1];
cs q[3], q[0];
xx_plus_yy_4537554400(1.805583099065305, 0.1392820173314644) q[1], q[4];
ch q[3], q[0];
p(4.36631872906309) q[2];
sdg q[5];
p(5.000713114833778) q[6];
xx_minus_yy_4537552384(2.866782968517422, 3.0286158866767163) q[6], q[0];
cz q[1], q[4];
ryy_4537558480(1.0171004271787105) q[3], q[2];
p(3.025851789682936) q[5];
h q[5];
rxx_4537549840(2.7640968599528724) q[2], q[1];
rx(4.960715150317164) q[0];
cp(4.371341124291922) q[4], q[6];
u2(0.730512754784865, 6.102548082053343) q[3];
sdg q[4];
sdg q[1];
swap q[0], q[5];
U(3.6425716947809876, 2.1285456710699493, 4.81513951150145) q[2];
cu(3.6121327419778475, 0.33786796360349136, 3.339870921131407, 2.0445716780621868) q[3], q[6];
crx(4.992850665950525) q[2], q[6];
cu(5.274109063907538, 5.419230570377681, 2.482070318700863, 2.8766586544289368) q[5], q[0];
rx(3.6325297665139145) q[4];
sxdg q[1];
U(0.5867477632304291, 1.6702039791815273, 2.855654360305533) q[3];
c3sx q[6], q[2], q[5], q[3];
cu3_4537563568(2.808111244982858, 0.9296994468456723, 5.30080127959942) q[0], q[1];
sx q[4];
cry(0.7906074731319029) q[6], q[0];
x q[1];
cs q[2], q[3];
cy q[4], q[5];
cry(4.326165005756368) q[3], q[6];
rzz_4537555648(0.5466370072960467) q[5], q[2];
csdg q[4], q[1];
t q[0];
cu(1.4572956824655123, 3.4431750665408196, 1.7043596251628639, 0.3274240688310256) q[0], q[5];
rxx_4537556704(2.9508158274438396) q[2], q[6];
ch q[3], q[4];
x q[1];
r_4537557136(1.7568607721667675, 1.7453662789752094) q[3];
dcx q[6], q[4];
rxx_4537549552(1.1150979765554436) q[2], q[5];
sdg q[1];
r_4537550320(1.5813006156345912, 4.407328560250528) q[0];
rzz_4537556560(3.851816440473833) q[4], q[6];
rccx q[0], q[1], q[3];
csx q[5], q[2];
cry(4.673591621944159) q[2], q[4];
sxdg q[3];
x q[5];
cu3_4537557376(5.797955241391284, 1.5845194253666803, 4.5817653897311565) q[1], q[6];
rz(6.072740371726109) q[0];
id q[1];
z q[0];
crx(0.5956721227356014) q[3], q[4];
iswap q[6], q[5];
rx(5.47844437762841) q[2];
U(3.4822549963553415, 5.007681630707274, 2.7592983960226043) q[4];
csdg q[1], q[6];
cx q[5], q[2];
cp(2.8599826761879736) q[3], q[0];
id q[2];
ccx q[0], q[3], q[6];
s q[1];
x q[4];
tdg q[5];
iswap q[6], q[0];
id q[5];
rxx_4537564384(3.029159238974459) q[1], q[2];
rx(5.655236097382753) q[3];
t q[4];
sx q[1];
y q[6];
ecr q[5], q[2];
rz(5.606219329827992) q[3];
iswap q[4], q[0];
rxx_4537564816(3.525403102239863) q[5], q[4];
crz(2.9736526322945678) q[1], q[3];
u1(1.0680938109742812) q[6];
z q[0];
r_4537551952(5.141356831096831, 3.8405143686227405) q[2];
sx q[6];
u1(0.902845476023442) q[3];
z q[0];
rxx_4537564864(0.5009179820458042) q[1], q[5];
s q[4];
id q[2];
cu(0.35552785212580656, 0.7752587952547236, 3.3043585933453525, 0.17212701469204916) q[4], q[1];
s q[2];
cu(4.049543067102929, 1.049834080752544, 0.6446651107494431, 4.001498383759256) q[6], q[0];
r_4537560304(4.9736031342223885, 4.6328405411092355) q[5];
u2(2.3329815997056627, 5.077655543106585) q[3];
rzz_4537563808(2.7643908268165074) q[2], q[3];
U(0.8196321493034543, 3.1351080051234788, 2.2152081912138906) q[0];
y q[5];
u2(2.629230807400487, 1.2323081564223597) q[1];
z q[4];
u1(0.7213261003785123) q[6];
rz(0.7901882171422148) q[0];
U(0.7888215874484106, 4.852248030570775, 0.36216487720925084) q[2];
sx q[1];
u3(2.3427773741293985, 4.6311729836642925, 5.351433702521577) q[3];
t q[4];
dcx q[6], q[5];
swap q[2], q[1];
s q[4];
iswap q[5], q[6];
cz q[0], q[3];
crx(2.3229966455910405) q[0], q[2];
cswap q[6], q[5], q[1];
r_4540381472(3.6398039575851224, 0.1725540842745862) q[4];
sx q[3];
rxx_4540373984(0.8206559577929806) q[1], q[4];
r_4540368944(2.7540345217617612, 1.0827871437002852) q[6];
y q[2];
iswap q[0], q[3];
ry(1.525111901768273) q[5];
crz(3.7083154464477115) q[4], q[2];
rxx_4540369376(0.3088822875776412) q[3], q[0];
ccz q[6], q[1], q[5];
cu(1.998539151433827, 5.781676459886799, 0.9729507106312082, 1.0308431771991577) q[2], q[1];
crx(4.2356319311060115) q[0], q[6];
dcx q[5], q[3];
U(5.02921304065491, 5.421636020363322, 1.9338738724379418) q[4];
cry(1.3539733763569175) q[2], q[3];
s q[1];
x q[6];
sx q[4];
xx_plus_yy_4540379936(0.3026600373768244, 3.55429734637815) q[0], q[5];
rcccx q[4], q[6], q[2], q[3];
csx q[5], q[1];
u2(2.1307159042849224, 0.6376333535353292) q[0];
rzx_4540376192(0.31146359744689656) q[3], q[5];
swap q[0], q[4];
y q[1];
cu(0.4186319324744557, 3.9180381369916604, 1.5927228207020727, 0.07934284266942392) q[2], q[6];
crx(1.2324573814834852) q[4], q[5];
h q[1];
U(4.226681308427084, 0.43853665062058034, 4.589749360125231) q[3];
dcx q[2], q[0];
r_4540375712(5.864050465987113, 0.5425081913891401) q[6];
cu1_4540371056(2.9257007669228368) q[1], q[0];
cy q[4], q[5];
rzz_4540373936(3.353881791217617) q[2], q[3];
sdg q[6];
r_4540369424(0.14978284812148274, 5.917110878184822) q[5];
tdg q[0];
tdg q[3];
x q[6];
tdg q[1];
ry(6.07969559867478) q[4];
r_4540371104(4.163250540717364, 2.175790799593274) q[2];
dcx q[1], q[5];
ccx q[0], q[4], q[2];
ch q[3], q[6];
csdg q[2], q[6];
sx q[0];
rx(2.7398753166587184) q[3];
s q[5];
h q[1];
p(0.6184226257055206) q[4];
ch q[4], q[1];
rcccx q[6], q[0], q[5], q[2];
tdg q[3];
cry(3.1361531006888836) q[4], q[2];
cu3_4540379024(6.197891924633957, 1.0914928256325727, 4.827708642707314) q[0], q[1];
sx q[6];
cz q[3], q[5];
cu(5.153336732916447, 1.95760718906083, 0.12487264566493446, 1.7681476245578767) q[3], q[4];
ryy_4540375952(1.7678685051626046) q[6], q[0];
ccz q[1], q[5], q[2];
ecr q[6], q[2];
ccx q[4], q[5], q[1];
cry(2.816965301818071) q[3], q[0];
r_4540377632(3.641634556646832, 2.7650654926646125) q[6];
x q[1];
cu1_4540378064(1.4020262149639786) q[3], q[2];
y q[0];
tdg q[4];
t q[5];
p(5.974471046361185) q[6];
cu(2.343527889139003, 5.866760944629519, 4.355968863493746, 4.345803310980408) q[3], q[4];
s q[5];
rzx_4540375232(4.709398428967167) q[1], q[0];
t q[2];
cs q[5], q[2];
s q[0];
cswap q[1], q[6], q[4];
t q[3];
z q[1];
rz(2.2686825040363976) q[0];
rz(6.103564079748972) q[3];
rccx q[6], q[4], q[5];
id q[2];
cx q[2], q[4];
sdg q[5];
cry(4.1472226713698435) q[0], q[3];
iswap q[1], q[6];
swap q[4], q[1];
ccx q[5], q[3], q[2];
h q[0];
x q[6];
