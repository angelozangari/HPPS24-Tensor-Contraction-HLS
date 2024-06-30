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
gate rzx_4537487232(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.4525457011864047) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate ryy_4537490208(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.040480249918120534) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
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
gate cu3_4537486944(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.291303986172173) _gate_q_0;
  u1(-0.2991331554370086) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.775690369984064, 0, -2.291303986172173) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.775690369984064, 2.5904371416091814, 0) _gate_q_1;
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
gate r_4537493280(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.921537086685904, 3.0112649695458336, -3.0112649695458336) _gate_q_0;
}
gate rzx_4537486080(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1241519780845084) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4537492320(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.2675159591767575) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4537490352(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.9891696853011881) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate rzz_4537485408(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.3733718750960753) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4537490928(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.062137514273308) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4537486416(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.484595420636881) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4537485264(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.4498938470193043) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate xx_plus_yy_4537487136(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.484367282022761) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.126565285451358) _gate_q_1;
  ry(-1.126565285451358) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.484367282022761) _gate_q_0;
}
gate ryy_4537487376(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.6684418601107645) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4537483536(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.9676750848227211) _gate_q_0;
  u1(0.459266217980404) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.965783952173375, 0, -1.9676750848227211) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.965783952173375, 1.508408866842317, 0) _gate_q_1;
}
gate rxx_4537484880(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.915587978425027) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4537490736(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.734496530950417) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate rzz_4537491360(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.15865621322115653) _gate_q_1;
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
gate xx_plus_yy_4537493568(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.323642458539704) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.53706497662373) _gate_q_1;
  ry(-0.53706497662373) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.323642458539704) _gate_q_0;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate cu3_4537498320(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.2405914887319685) _gate_q_0;
  u1(1.6935510849583042) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.6930035695058856, 0, -3.2405914887319685) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.6930035695058856, 1.547040403773664, 0) _gate_q_1;
}
gate cu3_4537494288(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.710097537472791) _gate_q_0;
  u1(-0.912060819676773) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.2920742454986085, 0, -3.710097537472791) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.2920742454986085, 4.622158357149564, 0) _gate_q_1;
}
gate xx_minus_yy_4537496736(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.2559747577957046) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.5959555442128894) _gate_q_0;
  ry(-1.5959555442128894) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.2559747577957046) _gate_q_1;
}
gate rzx_4537496496(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7821891414041473) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate cu3_4537495488(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.4369502363817395) _gate_q_0;
  u1(-0.27194900723543025) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.0038658948713857, 0, -5.4369502363817395) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.0038658948713857, 5.70889924361717, 0) _gate_q_1;
}
gate r_4537494576(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.96810157666791, 1.6539288064356188, -1.6539288064356188) _gate_q_0;
}
gate xx_minus_yy_4537490400(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.434641498388021) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.7980539015911123) _gate_q_0;
  ry(-2.7980539015911123) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.434641498388021) _gate_q_1;
}
gate rzx_4537486560(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.4818796446001622) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate rzz_4537492896(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.473381016919033) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4537497840(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.4809594980162313) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4537495344(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.47669918343766) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu1_4537498128(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.7785434787649772) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.7785434787649772) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.7785434787649772) _gate_q_1;
}
gate cu1_4537498080(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.14599180138458848) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.14599180138458848) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.14599180138458848) _gate_q_1;
}
gate xx_plus_yy_4538092480(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.4096228431056628) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.8611055270710344) _gate_q_1;
  ry(-1.8611055270710344) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.4096228431056628) _gate_q_0;
}
gate ryy_4538099440(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.6888899085714546) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4538101744(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.12319918182483232) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4538099728(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.6568471546225154) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4538097040(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.072699605566897, 4.434432524165356, -4.434432524165356) _gate_q_0;
}
gate r_4538100448(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.432654339717176, -0.22758998332104396, 0.22758998332104396) _gate_q_0;
}
gate rxx_4538096704(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.9345003275682853) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4538096320(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.327374421091441) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4538097136(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-6.193541460526422) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.6890662981938013) _gate_q_0;
  ry(-0.6890662981938013) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(6.193541460526422) _gate_q_1;
}
gate rzx_4538103232(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.557477145630671) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4538096752(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.892727435386926, 0.01860781423726454, -0.01860781423726454) _gate_q_0;
}
gate ryy_4538099824(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.758982932848472) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4538095120(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.27524998877924545) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.27524998877924545) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.27524998877924545) _gate_q_1;
}
gate r_4538105728(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.2811571109555465, 3.1437917505409168, -3.1437917505409168) _gate_q_0;
}
gate xx_plus_yy_4538095792(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.042511106708528) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.4403314651253054) _gate_q_1;
  ry(-2.4403314651253054) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.042511106708528) _gate_q_0;
}
gate cu3_4538097424(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.27966387229396) _gate_q_0;
  u1(1.9782018924026312) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.7089582516291743, 0, -3.27966387229396) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.7089582516291743, 1.301461979891329, 0) _gate_q_1;
}
gate ryy_4538095264(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.7965200754604935) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4538096896(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.796543761337839) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.1418596179433031) _gate_q_1;
  ry(-0.1418596179433031) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.796543761337839) _gate_q_0;
}
gate rzz_4538098336(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.192068748518999) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4538097376(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.6784118029504331) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.943182944040056) _gate_q_1;
  ry(-2.943182944040056) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.6784118029504331) _gate_q_0;
}
gate rxx_4538101936(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.2843165374149006) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4538104288(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.4634171180578885) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4538091568(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.4710529587687768) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.15881520394911777) _gate_q_0;
  ry(-0.15881520394911777) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.4710529587687768) _gate_q_1;
}
gate ryy_4537495152(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.6700685613902233) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4538091328(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.167910072592346) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4538101120(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.178620189532477) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4538103760(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.3959925702867855) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4538093584(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.055635753174621) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4537492704(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.5750268842931825) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4538097472(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.425236333170684) _gate_q_0;
  u1(-0.722785992331064) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.14864215360552488, 0, -5.425236333170684) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.14864215360552488, 6.148022325501748, 0) _gate_q_1;
}
gate cu3_4538102176(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.25061908053066) _gate_q_0;
  u1(-0.5755315431404243) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.4998490621088427, 0, -2.25061908053066) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.4998490621088427, 2.8261506236710843, 0) _gate_q_1;
}
gate cu3_4538091376(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.9457484846582678) _gate_q_0;
  u1(-1.2667328748086102) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.4772015516032391, 0, -1.9457484846582678) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.4772015516032391, 3.212481359466878, 0) _gate_q_1;
}
gate r_4538104816(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.743656989918595, 2.148524415914645, -2.148524415914645) _gate_q_0;
}
gate rzx_4538092240(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.168461669016461) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4538098912(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.382583214480041) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
qubit[7] q;
iswap q[2], q[0];
id q[1];
rzx_4537487232(2.4525457011864047) q[5], q[4];
rz(0.7955427591614728) q[6];
z q[3];
c3sx q[2], q[3], q[0], q[4];
swap q[1], q[6];
y q[5];
cp(0.28212120690702674) q[2], q[3];
h q[0];
ryy_4537490208(0.040480249918120534) q[6], q[4];
csx q[5], q[1];
cp(2.4524207832929465) q[3], q[1];
csx q[2], q[4];
cu3_4537486944(5.551380739968128, 2.5904371416091814, 1.9921708307351642) q[5], q[6];
u3(1.3406000922705656, 5.316230418948991, 2.9226696593437476) q[0];
ecr q[2], q[6];
u2(0.28384660263828054, 1.9751248315331498) q[1];
iswap q[0], q[4];
r_4537493280(5.921537086685904, 4.58206129634073) q[5];
sx q[3];
rzx_4537486080(2.1241519780845084) q[5], q[4];
ccx q[3], q[2], q[0];
crz(3.3990158940615522) q[1], q[6];
cry(1.745722337580685) q[6], q[3];
ecr q[1], q[2];
t q[4];
rzz_4537492320(3.2675159591767575) q[5], q[0];
rzz_4537490352(0.9891696853011881) q[5], q[1];
tdg q[6];
sxdg q[0];
swap q[2], q[3];
id q[4];
rzz_4537485408(2.3733718750960753) q[3], q[0];
rzx_4537490928(2.062137514273308) q[1], q[4];
sdg q[2];
z q[6];
u1(2.6374353666121233) q[5];
csx q[2], q[6];
rzx_4537486416(5.484595420636881) q[1], q[0];
cswap q[4], q[5], q[3];
crz(1.6840272376997483) q[2], q[3];
cry(5.661929115681854) q[6], q[4];
cp(6.160783423002728) q[5], q[1];
z q[0];
rxx_4537485264(3.4498938470193043) q[4], q[0];
ccx q[5], q[3], q[2];
U(3.897599142037377, 0.12103803395788906, 3.9040987221532957) q[1];
u2(3.450139555970032, 5.339253746798378) q[6];
z q[4];
ry(4.717602783931637) q[2];
csdg q[5], q[6];
sx q[1];
xx_plus_yy_4537487136(2.253130570902716, 4.484367282022761) q[0], q[3];
z q[5];
crz(6.1178344510507126) q[0], q[6];
ryy_4537487376(2.6684418601107645) q[4], q[1];
U(4.7212352717150345, 5.893391039846207, 0.07431370787751931) q[3];
rz(0.09883784888542332) q[2];
cx q[3], q[4];
cp(2.8397069114912625) q[5], q[0];
cz q[1], q[2];
y q[6];
u3(1.0390035979887688, 4.881234473135472, 4.456938489566765) q[2];
cu3_4537483536(5.93156790434675, 1.508408866842317, 2.426941302803125) q[4], q[1];
rxx_4537484880(4.915587978425027) q[6], q[0];
ry(1.3978168296859033) q[5];
sxdg q[3];
u2(3.4253204968401825, 5.747908094105114) q[5];
rxx_4537490736(2.734496530950417) q[4], q[2];
cry(0.7209464289750792) q[6], q[3];
csdg q[1], q[0];
c3sx q[1], q[5], q[6], q[3];
h q[0];
dcx q[4], q[2];
u3(4.991385756781112, 5.02992553580647, 1.913192346766951) q[6];
u1(4.29233348984239) q[0];
id q[3];
swap q[2], q[4];
rzz_4537491360(0.15865621322115653) q[1], q[5];
rcccx q[5], q[0], q[3], q[1];
crx(4.228214536895303) q[6], q[2];
p(3.2151116737282592) q[4];
s q[1];
rz(1.058611204790188) q[2];
iswap q[3], q[0];
sdg q[4];
sdg q[6];
p(1.0780077337589729) q[5];
crz(1.0842150322230981) q[5], q[0];
sdg q[1];
z q[3];
csdg q[6], q[2];
s q[4];
U(3.074388666996095, 2.490167728609685, 1.4802227307666171) q[5];
u3(0.906764435276349, 1.705319789692875, 5.761453384018657) q[0];
id q[1];
dcx q[4], q[6];
sdg q[2];
t q[3];
ry(2.9006551539375978) q[0];
csdg q[6], q[1];
c3sx q[4], q[3], q[2], q[5];
u1(0.4470517859000816) q[6];
xx_plus_yy_4537493568(1.07412995324746, 5.323642458539704) q[4], q[1];
cs q[0], q[2];
rz(4.158032716939674) q[3];
sxdg q[5];
cu(6.062808721428115, 1.4852523860511775, 3.1322813198955655, 3.639594575486621) q[2], q[5];
cu3_4537498320(5.386007139011771, 1.547040403773664, 4.934142573690273) q[1], q[0];
cu3_4537494288(2.584148490997217, 4.622158357149564, 2.798036717796018) q[3], q[4];
x q[6];
iswap q[6], q[0];
xx_minus_yy_4537496736(3.191911088425779, 1.2559747577957046) q[5], q[1];
crz(4.943665819384229) q[2], q[3];
x q[4];
crx(1.176764325171262) q[6], q[1];
cz q[5], q[3];
cz q[4], q[2];
s q[0];
crx(1.7586471561538894) q[6], q[0];
crz(6.260403916953237) q[5], q[1];
z q[2];
s q[3];
tdg q[4];
u1(2.834879153299809) q[4];
cx q[3], q[1];
crz(3.933052550789766) q[6], q[2];
ch q[0], q[5];
rzx_4537496496(3.7821891414041473) q[5], q[4];
rx(1.2745527705345152) q[6];
rccx q[3], q[1], q[2];
x q[0];
sxdg q[2];
ccx q[6], q[1], q[3];
crx(1.3229997115852747) q[5], q[0];
u1(2.029395666712148) q[4];
cx q[0], q[5];
s q[2];
sdg q[1];
cu3_4537495488(4.007731789742771, 5.70889924361717, 5.165001229146309) q[3], q[6];
id q[4];
ecr q[3], q[5];
x q[2];
rcccx q[0], q[4], q[1], q[6];
c3sx q[0], q[6], q[3], q[2];
iswap q[5], q[4];
tdg q[1];
sdg q[3];
r_4537494576(3.96810157666791, 3.2247251332305154) q[0];
xx_minus_yy_4537490400(5.596107803182225, 5.434641498388021) q[6], q[2];
iswap q[5], q[1];
y q[4];
cx q[0], q[6];
ecr q[5], q[1];
sdg q[3];
rzx_4537486560(0.4818796446001622) q[4], q[2];
ccz q[2], q[0], q[3];
rccx q[6], q[5], q[4];
t q[1];
csdg q[2], q[0];
h q[6];
h q[5];
rzz_4537492896(4.473381016919033) q[3], q[4];
h q[1];
csdg q[5], q[6];
rccx q[1], q[4], q[3];
dcx q[0], q[2];
dcx q[1], q[6];
ch q[3], q[4];
U(5.076731726395619, 0.062981489656004, 6.113516240461451) q[5];
rzz_4537497840(3.4809594980162313) q[2], q[0];
cry(3.9626413219771845) q[2], q[3];
rzz_4537495344(5.47669918343766) q[4], q[6];
ecr q[0], q[1];
x q[5];
cz q[5], q[6];
ecr q[4], q[0];
iswap q[3], q[1];
x q[2];
u1(1.8817772675596058) q[5];
cu1_4537498128(3.5570869575299544) q[1], q[2];
cu1_4537498080(0.29198360276917695) q[6], q[0];
sxdg q[3];
sdg q[4];
xx_plus_yy_4538092480(3.7222110541420688, 0.4096228431056628) q[6], q[0];
h q[2];
x q[3];
y q[1];
tdg q[5];
y q[4];
x q[5];
ryy_4538099440(2.6888899085714546) q[2], q[4];
p(3.792131701183759) q[6];
rx(5.096852805136445) q[1];
csdg q[0], q[3];
u2(0.7120977445011206, 2.410325677265376) q[5];
swap q[4], q[1];
s q[3];
p(3.385267814686251) q[0];
cz q[6], q[2];
sxdg q[2];
ry(3.094980799693251) q[6];
cu(2.9695141420764504, 4.0101711239210385, 4.700639433256745, 2.3823060561544995) q[5], q[3];
rxx_4538101744(0.12319918182483232) q[1], q[0];
rx(4.750796930571768) q[4];
rccx q[1], q[6], q[2];
cu(4.490627388790172, 0.569560165432951, 0.14273396050376935, 3.722545090059935) q[0], q[5];
U(5.023803965137415, 1.0490467623431956, 4.625883080163323) q[3];
U(6.02787848598368, 5.727839068310391, 0.8163118070586515) q[4];
id q[3];
rxx_4538099728(1.6568471546225154) q[1], q[6];
dcx q[2], q[4];
r_4538097040(4.072699605566897, 6.005228850960252) q[5];
tdg q[0];
rcccx q[3], q[2], q[5], q[0];
sxdg q[6];
sxdg q[4];
t q[1];
sdg q[4];
u2(3.5443785807586585, 2.4281062184609925) q[2];
h q[1];
r_4538100448(4.432654339717176, 1.3432063434738526) q[6];
cswap q[5], q[3], q[0];
cs q[1], q[5];
rxx_4538096704(3.9345003275682853) q[0], q[6];
iswap q[4], q[3];
y q[2];
sxdg q[5];
iswap q[6], q[3];
dcx q[0], q[1];
sx q[2];
u1(0.29422894445005016) q[4];
z q[2];
y q[5];
h q[4];
p(1.454470202429661) q[0];
cswap q[3], q[1], q[6];
rxx_4538096320(4.327374421091441) q[1], q[3];
ccx q[5], q[2], q[4];
cy q[6], q[0];
u1(0.5743606376731977) q[5];
cswap q[1], q[2], q[3];
sdg q[0];
cx q[6], q[4];
cx q[5], q[4];
h q[1];
cp(6.127444535867815) q[2], q[0];
tdg q[6];
s q[3];
s q[6];
ry(5.300446748022768) q[5];
u3(0.22208443045410464, 2.264575930017598, 0.6705403844901175) q[2];
h q[0];
ccx q[1], q[4], q[3];
tdg q[3];
tdg q[1];
iswap q[4], q[0];
x q[5];
csdg q[6], q[2];
sx q[4];
xx_minus_yy_4538097136(1.3781325963876025, 6.193541460526422) q[0], q[2];
rzx_4538103232(5.557477145630671) q[3], q[6];
u2(0.807405591234082, 0.9045205666796168) q[1];
u1(1.956235830664819) q[5];
ry(0.2696251370956462) q[2];
cx q[5], q[4];
iswap q[1], q[0];
csx q[3], q[6];
y q[5];
u2(4.800734858003203, 4.179620260706601) q[6];
t q[0];
t q[1];
cz q[2], q[3];
ry(1.2879779019156512) q[4];
iswap q[2], q[1];
cs q[3], q[4];
sxdg q[5];
h q[6];
t q[0];
cz q[1], q[6];
cp(5.960682405442736) q[3], q[2];
crx(6.163280763234406) q[5], q[4];
y q[0];
cs q[5], q[3];
r_4538096752(1.892727435386926, 1.589404141032161) q[2];
tdg q[0];
ccx q[1], q[6], q[4];
ch q[1], q[5];
sxdg q[3];
u1(3.031392692432328) q[0];
t q[4];
cry(3.1430139982443634) q[2], q[6];
rx(0.6268780204803833) q[5];
crx(2.1820027490078937) q[6], q[4];
p(1.760716221844767) q[1];
z q[2];
p(1.743539589782355) q[0];
t q[3];
ryy_4538099824(3.758982932848472) q[6], q[3];
crx(5.155942023400059) q[4], q[1];
sdg q[2];
cu1_4538095120(0.5504999775584909) q[5], q[0];
u1(1.1772851731729785) q[5];
rcccx q[2], q[0], q[3], q[1];
u1(1.6166810676883525) q[4];
id q[6];
r_4538105728(0.2811571109555465, 4.714588077335813) q[4];
cp(3.788913564084789) q[6], q[1];
u2(5.9204061194941096, 5.514145652951021) q[0];
tdg q[3];
U(5.606951043768668, 5.970379016717414, 4.6187079583349) q[5];
u3(4.384261510802269, 2.460885398126303, 2.435781471168213) q[2];
cp(1.1345071259603443) q[0], q[2];
xx_plus_yy_4538095792(4.880662930250611, 5.042511106708528) q[4], q[5];
u1(4.607735261895032) q[3];
ch q[6], q[1];
y q[3];
cu3_4538097424(1.4179165032583485, 1.301461979891329, 5.257865764696591) q[1], q[4];
ryy_4538095264(2.7965200754604935) q[2], q[6];
cx q[5], q[0];
xx_plus_yy_4538096896(0.2837192358866062, 1.796543761337839) q[1], q[3];
p(0.9148064867406995) q[0];
cs q[4], q[2];
z q[5];
z q[6];
csx q[4], q[6];
rzz_4538098336(4.192068748518999) q[2], q[0];
s q[1];
tdg q[5];
U(5.518861852543434, 2.04201061440527, 0.615869078475358) q[3];
xx_plus_yy_4538097376(5.886365888080112, 1.6784118029504331) q[1], q[5];
rccx q[4], q[0], q[6];
sxdg q[2];
u2(2.1378840569478674, 6.152651447611607) q[3];
h q[0];
cp(1.8351012005918772) q[2], q[6];
cs q[3], q[4];
rxx_4538101936(3.2843165374149006) q[5], q[1];
ryy_4538104288(5.4634171180578885) q[5], q[0];
rx(5.356094946823252) q[4];
sx q[2];
xx_minus_yy_4538091568(0.31763040789823554, 1.4710529587687768) q[1], q[6];
u1(2.785728062763307) q[3];
x q[0];
ryy_4537495152(2.6700685613902233) q[6], q[1];
rxx_4538091328(5.167910072592346) q[3], q[4];
cry(3.2472223685401898) q[2], q[5];
u3(6.098844472695735, 4.591737459196163, 0.5978746922792925) q[2];
rzx_4538101120(5.178620189532477) q[4], q[1];
ryy_4538103760(3.3959925702867855) q[3], q[0];
U(5.491529955125733, 0.48147040007110414, 0.2141630190513205) q[6];
h q[5];
cswap q[1], q[2], q[6];
sdg q[0];
rzx_4538093584(4.055635753174621) q[3], q[4];
t q[5];
iswap q[0], q[1];
ecr q[4], q[3];
ccz q[5], q[2], q[6];
cy q[1], q[4];
ryy_4537492704(2.5750268842931825) q[3], q[0];
sxdg q[6];
x q[5];
t q[2];
cu3_4538097472(0.29728430721104976, 6.148022325501748, 4.70245034083962) q[0], q[3];
id q[6];
c3sx q[5], q[2], q[4], q[1];
cu3_4538102176(2.9996981242176854, 2.8261506236710843, 1.6750875373902356) q[0], q[1];
sx q[3];
z q[2];
u3(4.876050519682215, 3.0124521906213175, 5.097912178436182) q[6];
cu3_4538091376(0.9544031032064783, 3.212481359466878, 0.6790156098496574) q[5], q[4];
p(4.264908097294593) q[3];
u3(5.631765596431302, 2.4864120495846844, 4.936316670984419) q[2];
ccx q[0], q[4], q[6];
t q[5];
rz(2.8986962835666) q[1];
x q[0];
cx q[3], q[5];
dcx q[1], q[4];
r_4538104816(4.743656989918595, 3.7193207427095416) q[6];
h q[2];
p(3.179088745656543) q[2];
s q[5];
ecr q[0], q[1];
t q[4];
cry(4.742465439585811) q[3], q[6];
u1(4.531181062296976) q[5];
u3(1.1691960918474127, 5.81295804839822, 5.93936641776764) q[3];
id q[0];
rzx_4538092240(5.168461669016461) q[2], q[6];
z q[1];
tdg q[4];
swap q[6], q[4];
tdg q[5];
ryy_4538098912(5.382583214480041) q[1], q[2];
crz(5.625424262298838) q[3], q[0];
