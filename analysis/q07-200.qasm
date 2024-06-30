OPENQASM 3.0;
include "stdgates.inc";
gate cu3_4538732608(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.182910819736375) _gate_q_0;
  u1(0.8449997722277467) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.370917898559168, 0, -3.182910819736375) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.370917898559168, 2.337911047508628, 0) _gate_q_1;
}
gate rzz_4538737504(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.658346611665705) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate cu1_4538743120(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.6007404727859953) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.6007404727859953) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.6007404727859953) _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4538739520(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.863622598633893) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.2086426571744846) _gate_q_0;
  ry(-1.2086426571744846) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.863622598633893) _gate_q_1;
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
gate xx_minus_yy_4538740144(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.312707472119956) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.6623482333316213) _gate_q_0;
  ry(-2.6623482333316213) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.312707472119956) _gate_q_1;
}
gate xx_plus_yy_4538843792(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.694943905765769) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.7107319964111856) _gate_q_1;
  ry(-1.7107319964111856) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.694943905765769) _gate_q_0;
}
gate rzx_4538845424(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.0182361806369045) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4538847008(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.3079994840716784) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate xx_minus_yy_4538846336(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.663040814017231) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.242868919687702) _gate_q_0;
  ry(-2.242868919687702) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.663040814017231) _gate_q_1;
}
gate ryy_4538848256(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7741736623821533) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4538844752(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.034602947061853) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4538859440(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.664689128575727) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.20587915787272387) _gate_q_1;
  ry(-0.20587915787272387) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.664689128575727) _gate_q_0;
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
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate rzz_4538852240(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.861478918339682) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4538856656(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9660110405585116) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate xx_plus_yy_4538854928(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.359616144108617) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.624266742371905) _gate_q_1;
  ry(-1.624266742371905) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.359616144108617) _gate_q_0;
}
gate ryy_4538858528(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.456326372917506) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4538846432(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.780359623678812) _gate_q_0;
  u1(-0.525466886275411) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.225393182434769, 0, -0.780359623678812) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.225393182434769, 1.305826509954223, 0) _gate_q_1;
}
gate r_4538853728(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.35833127909817575, 0.1430375581993597, -0.1430375581993597) _gate_q_0;
}
gate cu3_4538858720(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.94420013202823) _gate_q_0;
  u1(1.808478339406872) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.796867062563654, 0, -1.94420013202823) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.796867062563654, 0.13572179262135806, 0) _gate_q_1;
}
gate cu3_4538856800(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.9238590308890857) _gate_q_0;
  u1(-2.2785348524145905) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.8186058260957414, 0, -3.9238590308890857) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.8186058260957414, 6.202393883303676, 0) _gate_q_1;
}
gate r_4538858576(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.284902866340333, 0.6210853017054254, -0.6210853017054254) _gate_q_0;
}
gate rxx_4538856896(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.121163152658034) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4538853296(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.787850230735561) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4538850944(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.645954661873051) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4538856704(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.6763336464124898) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate cu3_4538853104(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.11900485751767) _gate_q_0;
  u1(-0.7888909601843985) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.2974550185341616, 0, -5.11900485751767) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.2974550185341616, 5.907895817702069, 0) _gate_q_1;
}
gate ryy_4538857568(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.763371708348409) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4538854784(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.5789971988165266) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4538852816(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.251743785434508) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu1_4538848400(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.5401276169440625) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.5401276169440625) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.5401276169440625) _gate_q_1;
}
gate ryy_4538851760(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.242541512067016) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4538852384(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.5541608292980179) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.5541608292980179) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.5541608292980179) _gate_q_1;
}
gate r_4538847632(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.791038236656504, 0.2798201073725326, -0.2798201073725326) _gate_q_0;
}
gate r_4538847488(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.431058270696668, -1.5113144765487534, 1.5113144765487534) _gate_q_0;
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
gate cu3_4538849792(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.8216432507875806) _gate_q_0;
  u1(-0.845919723799349) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.3563605478271765, 0, -1.8216432507875806) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.3563605478271765, 2.6675629745869296, 0) _gate_q_1;
}
gate r_4538852336(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.28666640545611, 0.9368626478208335, -0.9368626478208335) _gate_q_0;
}
gate xx_minus_yy_4538850176(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.7150018569694003) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.80080676434276) _gate_q_0;
  ry(-2.80080676434276) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.7150018569694003) _gate_q_1;
}
gate rxx_4538853872(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.6240086527087096) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4538851856(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.814303629683409) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.814303629683409) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.814303629683409) _gate_q_1;
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
gate rxx_4538850896(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.0647405224655015) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4538845616(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.063626181090229) _gate_q_0;
  u1(-0.7624608959156676) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.043617491222260225, 0, -4.063626181090229) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.043617491222260225, 4.826087077005897, 0) _gate_q_1;
}
gate xx_minus_yy_4538847440(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.32604175508113564) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.828169790415424) _gate_q_0;
  ry(-2.828169790415424) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.32604175508113564) _gate_q_1;
}
gate ryy_4538843312(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.002929189038045) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4538848496(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.921746830186196) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4538844512(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.066648756241281) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4538850416(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.5412091037986135) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4538849408(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(6.137580086024011) _gate_q_0;
  u1(0.12183370748588374) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.04877807348131, 0, -6.137580086024011) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.04877807348131, 6.015746378538127, 0) _gate_q_1;
}
gate r_4538848448(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.3632052635218082, 0.05279369461298655, -0.05279369461298655) _gate_q_0;
}
gate xx_plus_yy_4538848736(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.5317556649039827) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.3812174948774708) _gate_q_1;
  ry(-0.3812174948774708) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.5317556649039827) _gate_q_0;
}
gate rzz_4538845328(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.068713993708736) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4538844944(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.13133412301461542, 0.30357070418739407, -0.30357070418739407) _gate_q_0;
}
gate ryy_4538844800(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.07028432255908855) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538850752(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.1345750635182603, 2.3163842696518313, -2.3163842696518313) _gate_q_0;
}
gate rzz_4538845808(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.4350196227940293) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4538848016(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.431778976651283) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538846720(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.078952162727989, -1.0611143262936897, 1.0611143262936897) _gate_q_0;
}
gate cu1_4538850080(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.6085983278715148) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.6085983278715148) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.6085983278715148) _gate_q_1;
}
gate ryy_4538852288(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.8800010298958694) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538849456(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.3473903261714972, 4.149729799550701, -4.149729799550701) _gate_q_0;
}
gate xx_plus_yy_4538849888(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.3528368417163405) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.8972679206659127) _gate_q_1;
  ry(-0.8972679206659127) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.3528368417163405) _gate_q_0;
}
gate rzz_4538852768(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.825091718258797) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4538849744(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.3785726727363787) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.5608051644355398) _gate_q_1;
  ry(-1.5608051644355398) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.3785726727363787) _gate_q_0;
}
gate r_4538849648(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.2529951633023685, 1.6783126502746, -1.6783126502746) _gate_q_0;
}
gate rxx_4538856128(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.957825991792495) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4538847872(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.04557964891118475) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4538850992(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.5800101078552262) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.8446469118796847) _gate_q_0;
  ry(-2.8446469118796847) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.5800101078552262) _gate_q_1;
}
gate r_4538843600(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.017648220845774, 4.618602264044345, -4.618602264044345) _gate_q_0;
}
gate ryy_4538844656(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.344092904861329) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4538854976(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.354275601304395) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.8694020076675064) _gate_q_1;
  ry(-1.8694020076675064) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.354275601304395) _gate_q_0;
}
gate rxx_4538845904(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1057185787283133) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4538854880(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.4982259440351827) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.6384698195591) _gate_q_0;
  ry(-0.6384698195591) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.4982259440351827) _gate_q_1;
}
gate xx_minus_yy_4538855600(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.823702115160583) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.5875671803751157) _gate_q_0;
  ry(-2.5875671803751157) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.823702115160583) _gate_q_1;
}
gate rzz_4538857328(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.5562242600121756) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4538854400(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.235105210642356) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4538849024(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.5666264588958505) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4538857712(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.610434158305349) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.366890386025594) _gate_q_0;
  ry(-2.366890386025594) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.610434158305349) _gate_q_1;
}
gate rxx_4538853824(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.22586813673101) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4538936464(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.494179463120098) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.773467666336501) _gate_q_1;
  ry(-0.773467666336501) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.494179463120098) _gate_q_0;
}
gate ryy_4538939008(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.475260847163274) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538937856(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.43499535924942, -1.210876958012096, 1.210876958012096) _gate_q_0;
}
gate xx_plus_yy_4538930272(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.5942462578679097) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.8439930093929362) _gate_q_1;
  ry(-1.8439930093929362) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.5942462578679097) _gate_q_0;
}
gate rzz_4538930656(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.2526904912100065) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu1_4538938240(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.9011420804839485) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.9011420804839485) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.9011420804839485) _gate_q_1;
}
gate rxx_4538932528(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.03728426408463) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4538935168(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.0757276087380227) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.0757276087380227) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.0757276087380227) _gate_q_1;
}
gate xx_plus_yy_4538935024(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.3318594534421054) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.4728958625300437) _gate_q_1;
  ry(-2.4728958625300437) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.3318594534421054) _gate_q_0;
}
gate cu3_4538930512(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.726334899437898) _gate_q_0;
  u1(-1.3411598573598278) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.005747876776278049, 0, -3.726334899437898) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.005747876776278049, 5.067494756797726, 0) _gate_q_1;
}
gate xx_minus_yy_4538932720(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.5922391274745216) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.5095683000785853) _gate_q_0;
  ry(-1.5095683000785853) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.5922391274745216) _gate_q_1;
}
gate ryy_4538932096(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.746560197310571) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4538931520(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.183508755265895) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.22248256060866278) _gate_q_1;
  ry(-0.22248256060866278) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.183508755265895) _gate_q_0;
}
gate cu3_4538931472(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.7182475759536202) _gate_q_0;
  u1(-0.3491842170436681) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.8090183771237316, 0, -0.7182475759536202) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.8090183771237316, 1.0674317929972883, 0) _gate_q_1;
}
gate rzz_4538928832(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.974323957167349) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4538926576(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.100048176165296) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4538930560(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.7099812356415662) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-3.012789697707537) _gate_q_1;
  ry(-3.012789697707537) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.7099812356415662) _gate_q_0;
}
gate rzx_4538927008(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6996328075162397) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4538926864(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.647670786646456) _gate_q_0;
  u1(-2.002918604244102) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.7199384516066037, 0, -3.647670786646456) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.7199384516066037, 5.650589390890558, 0) _gate_q_1;
}
gate rzz_4538926528(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.4031292598502396) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4538925712(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.556214014170426) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.5260838398972285) _gate_q_0;
  ry(-1.5260838398972285) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.556214014170426) _gate_q_1;
}
gate cu3_4538927488(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.3012280581260525) _gate_q_0;
  u1(-1.567563263646693) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.1864315846364484, 0, -3.3012280581260525) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.1864315846364484, 4.868791321772745, 0) _gate_q_1;
}
gate rxx_4538927440(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.0017792981615189004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4538931328(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.9106830465721696) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.9053089432872135) _gate_q_1;
  ry(-2.9053089432872135) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.9106830465721696) _gate_q_0;
}
gate rzz_4538927056(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.757125513106424) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4538931952(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.6067846752534582) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.436230791415194) _gate_q_0;
  ry(-1.436230791415194) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.6067846752534582) _gate_q_1;
}
gate ryy_4538927776(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.876959028338098) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4538932672(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.3055487315631558) _gate_q_0;
  u1(-0.8084738125105504) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.7487684946005124, 0, -2.3055487315631558) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.7487684946005124, 3.114022544073706, 0) _gate_q_1;
}
gate r_4538933776(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.2543130038164603, 0.3258620239527099, -0.3258620239527099) _gate_q_0;
}
gate xx_plus_yy_4538935072(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.11823304046291) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.4786471826394635) _gate_q_1;
  ry(-0.4786471826394635) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.11823304046291) _gate_q_0;
}
gate xx_plus_yy_4538935984(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.857076107985322) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.1007145239762643) _gate_q_1;
  ry(-1.1007145239762643) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.857076107985322) _gate_q_0;
}
gate xx_plus_yy_4538932144(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.6343560397721646) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.8274077770595498) _gate_q_1;
  ry(-0.8274077770595498) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.6343560397721646) _gate_q_0;
}
gate xx_plus_yy_4538925280(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.5128761905843255) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.958624257283412) _gate_q_1;
  ry(-1.958624257283412) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.5128761905843255) _gate_q_0;
}
gate r_4538925136(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.931196040653614, 4.279219851990068, -4.279219851990068) _gate_q_0;
}
gate r_4538937472(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.286723710207184, 1.2313982107736416, -1.2313982107736416) _gate_q_0;
}
gate ryy_4538933920(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.14503336175375645) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4538935312(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.6663228065279965) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4538938096(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.6826280009357126) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.6826280009357126) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.6826280009357126) _gate_q_1;
}
gate ryy_4538939200(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.293539045710877) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4538936896(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.833771496394074) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4538926624(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.096228360411696, -0.5574940389125123, 0.5574940389125123) _gate_q_0;
}
gate xx_minus_yy_4538938288(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.6292506067376795) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.0922452506989588) _gate_q_0;
  ry(-1.0922452506989588) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.6292506067376795) _gate_q_1;
}
gate xx_minus_yy_4538941264(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.329840896043601) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.05564409247286176) _gate_q_0;
  ry(-0.05564409247286176) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.329840896043601) _gate_q_1;
}
gate xx_plus_yy_4538936032(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.5966618104784432) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.3372949701998736) _gate_q_1;
  ry(-0.3372949701998736) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.5966618104784432) _gate_q_0;
}
gate r_4538930608(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.116222305334918, 2.6799768710670957, -2.6799768710670957) _gate_q_0;
}
gate rxx_4538925856(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.2074941807397785) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4538927248(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.159824285963847, -0.1523586661469054, 0.1523586661469054) _gate_q_0;
}
gate cu1_4538926048(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.3145819494585287) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.3145819494585287) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.3145819494585287) _gate_q_1;
}
gate cu3_4538926384(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.5424324007023196) _gate_q_0;
  u1(1.4388934360013201) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.3553526550920203, 0, -3.5424324007023196) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.3553526550920203, 2.1035389647009994, 0) _gate_q_1;
}
gate xx_minus_yy_4538939488(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.085110450633328) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.30175800925663676) _gate_q_0;
  ry(-0.30175800925663676) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.085110450633328) _gate_q_1;
}
gate ryy_4538934784(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.705034415731226) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4538928928(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.868758104984939) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4538927152(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.4028542000872184) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538937328(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.2228319941756993, 4.519309758555101, -4.519309758555101) _gate_q_0;
}
gate rzx_4538937280(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1105296815184849) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4538935888(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.073281195427719) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.7731624809805904) _gate_q_0;
  ry(-1.7731624809805904) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.073281195427719) _gate_q_1;
}
gate r_4538933200(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.109632272247693, -0.6384745973770533, 0.6384745973770533) _gate_q_0;
}
gate rxx_4538933536(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.6361802014797935) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4538941312(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.8243391333580625) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.0867022886624755) _gate_q_0;
  ry(-1.0867022886624755) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.8243391333580625) _gate_q_1;
}
gate r_4538933632(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.2616277583629225, 4.08009994660995, -4.08009994660995) _gate_q_0;
}
gate rxx_4538934064(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.302493785582065) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4538940448(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.8691411826786368) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.1354500905872893) _gate_q_1;
  ry(-1.1354500905872893) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.8691411826786368) _gate_q_0;
}
gate ryy_4538928208(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8112716806797681) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4538938768(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.2210956501319736) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4538936176(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8964401297495508) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4538939056(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.224279231544567, 3.0337677814826796, -3.0337677814826796) _gate_q_0;
}
gate xx_plus_yy_4538940640(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.9039187413529515) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.8863811956382661) _gate_q_1;
  ry(-1.8863811956382661) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.9039187413529515) _gate_q_0;
}
gate rzz_4538937664(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.598432608779964) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4538940928(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.8373110578565113) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4538927920(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.844944895696709) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.6017827946403631) _gate_q_1;
  ry(-0.6017827946403631) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.844944895696709) _gate_q_0;
}
gate ryy_4538936224(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.9061643899967695) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538930800(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.04530733084121, 1.9101400383385925, -1.9101400383385925) _gate_q_0;
}
gate r_4538935648(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.795751397642702, 3.9245075499652717, -3.9245075499652717) _gate_q_0;
}
gate r_4538941408(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.5909382755591532, 3.6065892124340113, -3.6065892124340113) _gate_q_0;
}
gate r_4538937040(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.6735726475410875, 2.355838138923848, -2.355838138923848) _gate_q_0;
}
gate cu3_4513709088(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.10541734195103405) _gate_q_0;
  u1(-0.030747641823495632) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.8543997640167187, 0, -0.10541734195103405) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.8543997640167187, 0.13616498377452968, 0) _gate_q_1;
}
gate xx_minus_yy_4539466528(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.1264662334446784) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.8912569694969736) _gate_q_0;
  ry(-1.8912569694969736) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.1264662334446784) _gate_q_1;
}
gate cu3_4539474496(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.9079041709811817) _gate_q_0;
  u1(0.9800010881095391) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.5147877184629931, 0, -1.9079041709811817) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.5147877184629931, 0.9279030828716427, 0) _gate_q_1;
}
gate cu3_4539466000(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.9614303493974297) _gate_q_0;
  u1(0.6597855266739798) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.7609487719666364, 0, -2.9614303493974297) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.7609487719666364, 2.30164482272345, 0) _gate_q_1;
}
gate rxx_4539474880(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.6975603556120715) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4539470800(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.038210267068769, 2.081472274120072, -2.081472274120072) _gate_q_0;
}
qubit[7] q;
cu3_4538732608(2.741835797118336, 2.337911047508628, 4.027910591964122) q[4], q[1];
ccx q[5], q[2], q[0];
cx q[6], q[3];
cx q[0], q[3];
p(3.1108317472764284) q[6];
ch q[4], q[5];
rzz_4538737504(0.658346611665705) q[2], q[1];
rccx q[2], q[3], q[6];
crz(4.723213858333831) q[4], q[1];
h q[5];
z q[0];
x q[6];
sdg q[2];
cy q[1], q[3];
cu1_4538743120(5.201480945571991) q[0], q[4];
t q[5];
xx_minus_yy_4538739520(2.417285314348969, 5.863622598633893) q[2], q[1];
c3sx q[5], q[0], q[3], q[4];
rx(4.611297216662703) q[6];
xx_minus_yy_4538740144(5.324696466663243, 4.312707472119956) q[4], q[3];
swap q[2], q[1];
tdg q[0];
p(4.762444716232255) q[5];
tdg q[6];
sx q[2];
tdg q[0];
z q[5];
rccx q[6], q[1], q[3];
U(4.5922041510997476, 2.2541428809708126, 0.9336948664162834) q[4];
xx_plus_yy_4538843792(3.421463992822371, 2.694943905765769) q[5], q[6];
rzx_4538845424(3.0182361806369045) q[1], q[3];
sxdg q[0];
ry(1.4470984336619255) q[4];
u3(4.880044450464788, 1.1240826619192887, 4.867533836109644) q[2];
rxx_4538847008(2.3079994840716784) q[0], q[6];
crx(6.194372448041784) q[4], q[5];
cs q[3], q[2];
rz(1.788871400251686) q[1];
sdg q[1];
xx_minus_yy_4538846336(4.485737839375404, 1.663040814017231) q[5], q[0];
ryy_4538848256(3.7741736623821533) q[2], q[3];
tdg q[4];
sx q[6];
cx q[6], q[4];
sx q[0];
s q[3];
rxx_4538844752(4.034602947061853) q[2], q[1];
u2(1.0255324834255188, 6.082281727620231) q[5];
xx_plus_yy_4538859440(0.41175831574544774, 4.664689128575727) q[1], q[6];
ecr q[2], q[5];
x q[3];
h q[4];
t q[0];
cry(0.7011655299287123) q[3], q[5];
iswap q[4], q[0];
cu(5.919431961711829, 3.7451102755249197, 2.616433784501741, 4.490470665772099) q[1], q[6];
id q[2];
cu(3.4870082779733504, 3.1163344607036807, 4.5172362252873235, 1.473652921945666) q[3], q[0];
ch q[6], q[5];
rzz_4538852240(2.861478918339682) q[2], q[4];
s q[1];
rxx_4538856656(1.9660110405585116) q[3], q[5];
y q[6];
p(5.179850097243297) q[2];
U(5.676359109412634, 0.7966933050569616, 0.650324006068414) q[4];
h q[1];
sxdg q[0];
dcx q[5], q[1];
cs q[3], q[2];
cs q[0], q[4];
s q[6];
csdg q[2], q[5];
rccx q[6], q[1], q[0];
u3(1.5965523466637894, 3.2816638921350814, 0.4912694812380149) q[3];
z q[4];
ry(2.810418317618747) q[6];
y q[3];
xx_plus_yy_4538854928(3.24853348474381, 4.359616144108617) q[5], q[0];
cp(4.721702152052319) q[2], q[1];
u3(5.226147662130936, 3.6577311767751217, 0.3029665608303481) q[4];
ryy_4538858528(2.456326372917506) q[2], q[6];
swap q[0], q[4];
cry(0.9255669878797095) q[3], q[1];
rx(4.491768234450866) q[5];
cz q[5], q[1];
c3sx q[6], q[2], q[3], q[4];
sx q[0];
cu3_4538846432(2.450786364869538, 1.305826509954223, 0.254892737403401) q[2], q[0];
r_4538853728(0.35833127909817575, 1.7138338849942563) q[6];
csdg q[4], q[3];
z q[5];
u2(3.3579769473831957, 2.3802995386315273) q[1];
tdg q[6];
dcx q[2], q[3];
cu3_4538858720(5.593734125127308, 0.13572179262135806, 3.752678471435102) q[4], q[0];
cu3_4538856800(1.6372116521914828, 6.202393883303676, 1.645324178474495) q[5], q[1];
r_4538858576(4.284902866340333, 2.191881628500322) q[6];
rxx_4538856896(1.121163152658034) q[2], q[5];
cswap q[4], q[1], q[3];
u1(2.6969219076670408) q[0];
p(3.428504539066885) q[2];
ryy_4538853296(5.787850230735561) q[0], q[3];
swap q[5], q[1];
h q[6];
z q[4];
rxx_4538850944(5.645954661873051) q[1], q[4];
x q[2];
dcx q[0], q[5];
rz(5.352489475934172) q[6];
U(1.139770496427486, 4.26289618646043, 1.3920721863414558) q[3];
u2(0.18520591058832925, 3.840281249652813) q[4];
u1(1.8739735196328433) q[0];
cry(1.2225492435446086) q[2], q[1];
tdg q[6];
z q[3];
id q[5];
rzz_4538856704(1.6763336464124898) q[2], q[5];
ccz q[1], q[6], q[4];
cu3_4538853104(2.594910037068323, 5.907895817702069, 4.330113897333272) q[3], q[0];
t q[2];
ryy_4538857568(0.763371708348409) q[0], q[5];
iswap q[1], q[6];
dcx q[4], q[3];
cu(3.0088886987888066, 3.7911490284893468, 2.46175493082485, 2.5178110321519895) q[6], q[2];
z q[3];
u3(4.331003878534148, 0.8384242760504568, 1.5420194082344953) q[1];
id q[4];
rzx_4538854784(2.5789971988165266) q[0], q[5];
cp(0.11022629019384611) q[2], q[1];
rccx q[6], q[0], q[4];
tdg q[3];
rz(1.470381785731204) q[5];
cu(3.0724245522053715, 0.6466832054350627, 3.3381347109200448, 0.245881826895075) q[5], q[2];
rx(2.0081139796753757) q[4];
rz(0.3429271236432723) q[1];
ecr q[3], q[0];
sx q[6];
rzz_4538852816(5.251743785434508) q[0], q[4];
ch q[1], q[2];
swap q[6], q[3];
rz(3.135663123721466) q[5];
cu1_4538848400(3.080255233888125) q[5], q[3];
iswap q[4], q[0];
ryy_4538851760(4.242541512067016) q[6], q[2];
rz(5.334923432439481) q[1];
crx(3.9041409583580737) q[5], q[2];
ry(5.795869460974377) q[6];
crz(6.229302898961362) q[3], q[1];
swap q[0], q[4];
csdg q[1], q[5];
cswap q[6], q[0], q[4];
id q[3];
sdg q[2];
cu(3.7002972931782243, 1.4212288036824607, 4.977457146549788, 0.34534348708874507) q[6], q[4];
ccx q[0], q[2], q[1];
ry(1.8922044659486112) q[3];
sdg q[5];
ry(4.309003366700243) q[2];
dcx q[3], q[5];
cry(0.04057016524717979) q[4], q[0];
ry(0.4246114480832229) q[6];
p(2.876546192143446) q[1];
cy q[3], q[2];
u1(5.321830752368722) q[0];
tdg q[6];
cu1_4538852384(1.1083216585960358) q[4], q[1];
sx q[5];
r_4538847632(5.791038236656504, 1.8506164341674292) q[6];
crz(2.9919243858357554) q[0], q[2];
r_4538847488(2.431058270696668, 0.059481850246143185) q[5];
ch q[4], q[3];
z q[1];
h q[1];
c3sx q[3], q[4], q[2], q[5];
cs q[6], q[0];
rcccx q[4], q[2], q[3], q[6];
sxdg q[5];
id q[1];
z q[0];
cu3_4538849792(4.712721095654353, 2.6675629745869296, 0.9757235269882315) q[2], q[3];
r_4538852336(3.28666640545611, 2.50765897461573) q[4];
sxdg q[1];
cu(4.292105343328559, 2.5863304861158585, 0.3251085277548535, 5.238066538490998) q[5], q[6];
h q[0];
ecr q[3], q[1];
h q[5];
dcx q[0], q[4];
iswap q[6], q[2];
swap q[1], q[4];
xx_minus_yy_4538850176(5.60161352868552, 1.7150018569694003) q[5], q[2];
sdg q[6];
csdg q[0], q[3];
z q[4];
h q[3];
rccx q[1], q[6], q[2];
u2(5.479597673228883, 2.056390918382643) q[0];
t q[5];
dcx q[5], q[2];
rxx_4538853872(3.6240086527087096) q[0], q[1];
t q[6];
u3(3.768120025609642, 4.240857649324042, 0.5499655372998428) q[4];
p(3.9869160949688838) q[3];
rccx q[6], q[4], q[1];
cu1_4538851856(3.628607259366818) q[2], q[0];
u3(3.5905825396456144, 5.3294033822783975, 2.627911397969879) q[5];
x q[3];
u1(3.3394286112663343) q[5];
ry(3.8470386113123665) q[4];
h q[1];
csx q[6], q[2];
sx q[0];
id q[3];
rx(3.1058392958375753) q[1];
U(5.451837831219838, 1.9536382888389572, 1.9752423580299519) q[0];
ry(1.3006932252770607) q[2];
rz(2.6594383443329015) q[6];
t q[3];
rxx_4538850896(3.0647405224655015) q[4], q[5];
cp(5.6642430196976825) q[5], q[4];
cu3_4538845616(0.08723498244452045, 4.826087077005897, 3.301165285174562) q[1], q[0];
cu(0.21828468642248125, 0.4790703942864524, 5.085647118921676, 3.996271993575393) q[6], q[2];
rx(0.8923166823449601) q[3];
ch q[0], q[5];
ecr q[3], q[6];
s q[1];
dcx q[4], q[2];
rcccx q[0], q[6], q[1], q[2];
xx_minus_yy_4538847440(5.656339580830848, 0.32604175508113564) q[4], q[5];
s q[3];
crz(5.4277607301227535) q[2], q[5];
tdg q[0];
x q[1];
ryy_4538843312(3.002929189038045) q[3], q[6];
u2(5.539769463994272, 0.8152212315950864) q[4];
crz(3.3410461802886435) q[0], q[1];
rzx_4538848496(5.921746830186196) q[6], q[5];
crx(6.278052669408418) q[3], q[2];
p(2.9956101004221223) q[4];
csx q[5], q[2];
rzx_4538844512(5.066648756241281) q[1], q[4];
U(5.139803043784736, 1.5100275113032184, 0.13389886327531583) q[3];
rz(2.575106852588025) q[6];
z q[0];
tdg q[5];
rzz_4538850416(5.5412091037986135) q[2], q[4];
cu3_4538849408(4.09755614696262, 6.015746378538127, 6.259413793509895) q[0], q[1];
u1(5.639269876654432) q[3];
sx q[6];
r_4538848448(1.3632052635218082, 1.623590021407883) q[5];
dcx q[3], q[1];
u2(4.11901085133875, 3.77941086115274) q[4];
rx(0.9071141956559619) q[2];
ecr q[6], q[0];
sxdg q[1];
rx(3.60440068045027) q[5];
xx_plus_yy_4538848736(0.7624349897549416, 0.5317556649039827) q[6], q[2];
cu(4.9157808811738235, 0.7630267851851984, 1.2149002095615833, 2.6858674080260587) q[0], q[3];
u3(4.746544741497871, 3.184711477137471, 6.086470089797522) q[4];
u2(3.0156281043081092, 5.3005676204292715) q[6];
cu(5.1277068453446315, 5.014977918476977, 0.7543676820908638, 3.7346739367472956) q[0], q[4];
cz q[2], q[3];
rzz_4538845328(5.068713993708736) q[1], q[5];
u1(3.0398159585111943) q[6];
r_4538844944(0.13133412301461542, 1.8743670309822906) q[3];
ecr q[5], q[0];
z q[2];
cry(1.6863253010854657) q[1], q[4];
cp(0.2689233763490269) q[0], q[5];
U(2.7765948090687926, 0.0002444180978872868, 2.8835821722373822) q[6];
sx q[3];
u1(5.975333171601225) q[4];
cu(1.9457113071490448, 0.6931496734547529, 3.4781418239958954, 3.3840425094336593) q[1], q[2];
cp(1.6285336325368251) q[2], q[5];
cy q[6], q[4];
s q[0];
ryy_4538844800(0.07028432255908855) q[3], q[1];
rcccx q[2], q[4], q[1], q[3];
ecr q[6], q[5];
r_4538850752(2.1345750635182603, 3.887180596446728) q[0];
crx(1.3393943475541579) q[1], q[5];
rzz_4538845808(3.4350196227940293) q[3], q[6];
cx q[4], q[2];
z q[0];
ch q[1], q[0];
rcccx q[2], q[5], q[4], q[3];
x q[6];
ryy_4538848016(4.431778976651283) q[3], q[4];
c3sx q[1], q[5], q[6], q[2];
u1(2.9283594607607597) q[0];
r_4538846720(4.078952162727989, 0.5096820005012068) q[6];
ccx q[3], q[2], q[5];
crx(0.8010806986610162) q[1], q[4];
z q[0];
t q[4];
csdg q[1], q[2];
csx q[0], q[5];
dcx q[3], q[6];
rz(1.2752984901997926) q[6];
dcx q[3], q[0];
cp(0.18636627002089973) q[2], q[5];
cu1_4538850080(3.2171966557430296) q[1], q[4];
ryy_4538852288(2.8800010298958694) q[0], q[6];
dcx q[3], q[4];
r_4538849456(3.3473903261714972, 5.7205261263455975) q[2];
u3(3.8295783952945857, 5.332528605607963, 3.1602244506245962) q[5];
u1(3.3583060279405905) q[1];
dcx q[3], q[5];
xx_plus_yy_4538849888(1.7945358413318253, 0.3528368417163405) q[2], q[6];
sx q[1];
sxdg q[0];
id q[4];
cz q[0], q[1];
cz q[3], q[2];
z q[5];
rzz_4538852768(5.825091718258797) q[6], q[4];
rz(5.323429775770196) q[6];
cswap q[3], q[5], q[2];
cx q[0], q[1];
U(4.384049322045979, 1.5834712947447307, 4.499684622678739) q[4];
cx q[2], q[1];
cz q[6], q[0];
xx_plus_yy_4538849744(3.1216103288710797, 0.3785726727363787) q[5], q[3];
r_4538849648(0.2529951633023685, 3.2491089770694965) q[4];
s q[1];
csdg q[5], q[6];
dcx q[0], q[4];
sdg q[3];
u2(2.783930438672861, 3.391583177254036) q[2];
crz(2.699362826857097) q[2], q[6];
rxx_4538856128(4.957825991792495) q[1], q[5];
ch q[0], q[3];
rz(3.1283104943814175) q[4];
rxx_4538847872(0.04557964891118475) q[1], q[0];
cz q[5], q[3];
x q[6];
xx_minus_yy_4538850992(5.689293823759369, 1.5800101078552262) q[4], q[2];
cs q[0], q[5];
r_4538843600(3.017648220845774, 6.189398590839241) q[2];
s q[3];
cswap q[1], q[6], q[4];
ccx q[0], q[3], q[1];
cx q[6], q[4];
s q[2];
x q[5];
ryy_4538844656(3.344092904861329) q[2], q[0];
c3sx q[4], q[5], q[6], q[3];
u2(2.2710628338750882, 1.2093933113755118) q[1];
xx_plus_yy_4538854976(3.738804015335013, 4.354275601304395) q[5], q[1];
u3(4.190624033401406, 1.17383413985165, 4.59998252534514) q[2];
t q[0];
u2(2.418396223266651, 3.5881961546909684) q[4];
sdg q[6];
sx q[3];
swap q[1], q[0];
rxx_4538845904(2.1057185787283133) q[3], q[4];
ecr q[5], q[6];
tdg q[2];
z q[2];
cry(1.8867884400989992) q[6], q[0];
cy q[4], q[5];
xx_minus_yy_4538854880(1.2769396391182, 0.4982259440351827) q[3], q[1];
ccz q[4], q[6], q[1];
u1(0.9815097463732364) q[0];
csx q[3], q[2];
x q[5];
cry(1.8487671778351418) q[5], q[0];
dcx q[2], q[6];
ecr q[3], q[4];
p(5.0383422540180565) q[1];
dcx q[6], q[5];
ch q[3], q[0];
x q[1];
t q[2];
sdg q[4];
cs q[3], q[2];
sx q[1];
ccx q[0], q[6], q[4];
t q[5];
csdg q[6], q[4];
ecr q[3], q[2];
cs q[5], q[1];
h q[0];
cry(4.922267364965582) q[1], q[0];
sxdg q[3];
sx q[5];
crx(4.329935015885653) q[4], q[6];
s q[2];
t q[0];
xx_minus_yy_4538855600(5.175134360750231, 5.823702115160583) q[3], q[5];
rzz_4538857328(2.5562242600121756) q[2], q[6];
u1(4.066593744434743) q[4];
s q[1];
crx(6.213699604271336) q[1], q[6];
tdg q[3];
u1(2.4711644781050617) q[4];
t q[0];
rzx_4538854400(3.235105210642356) q[2], q[5];
U(5.228839824673832, 1.5446278535190692, 3.7427932141187994) q[2];
iswap q[6], q[1];
sdg q[4];
rxx_4538849024(2.5666264588958505) q[3], q[5];
u1(4.870680957413419) q[0];
swap q[0], q[6];
ccx q[3], q[4], q[2];
xx_minus_yy_4538857712(4.733780772051188, 1.610434158305349) q[1], q[5];
rxx_4538853824(4.22586813673101) q[0], q[2];
cx q[5], q[4];
cx q[6], q[1];
z q[3];
rz(1.6504339312045315) q[0];
csx q[1], q[3];
sxdg q[2];
s q[6];
csx q[4], q[5];
sxdg q[2];
id q[6];
u3(0.1763285505500439, 0.9704865130929633, 5.821820622453523) q[4];
rccx q[1], q[0], q[5];
tdg q[3];
ry(2.7686464253161445) q[2];
ccx q[5], q[4], q[3];
rccx q[1], q[6], q[0];
xx_plus_yy_4538936464(1.546935332673002, 5.494179463120098) q[2], q[6];
crx(5.124222181172157) q[5], q[0];
tdg q[1];
rz(3.400890224126028) q[4];
u2(3.9978705625569346, 4.161267874519456) q[3];
cx q[0], q[1];
ryy_4538939008(5.475260847163274) q[2], q[6];
s q[4];
u1(3.5336451546591023) q[5];
r_4538937856(0.43499535924942, 0.35991936878280056) q[3];
xx_plus_yy_4538930272(3.6879860187858724, 3.5942462578679097) q[1], q[5];
swap q[3], q[0];
rzz_4538930656(0.2526904912100065) q[4], q[2];
ry(1.6070814980110508) q[6];
cu1_4538938240(5.802284160967897) q[5], q[2];
t q[6];
ch q[0], q[1];
x q[3];
u3(2.9428667972570954, 5.157153718957852, 3.763307780039764) q[4];
rxx_4538932528(4.03728426408463) q[2], q[0];
ch q[6], q[5];
cu1_4538935168(0.1514552174760454) q[4], q[1];
ry(5.862019996077844) q[3];
xx_plus_yy_4538935024(4.945791725060087, 0.3318594534421054) q[0], q[5];
cu3_4538930512(0.011495753552556097, 5.067494756797726, 2.38517504207807) q[6], q[4];
cu(0.6490188396857535, 4.594172869891485, 2.7373601019207534, 0.007641827999849392) q[2], q[1];
ry(0.19597129424452842) q[3];
rx(2.062858123519709) q[3];
iswap q[2], q[0];
rcccx q[6], q[1], q[5], q[4];
cx q[5], q[0];
cu(5.026182925042794, 0.5272294906357824, 0.4866512260467766, 2.4101382265980393) q[4], q[6];
s q[1];
u1(3.2118698890773647) q[3];
s q[2];
p(2.8374688517125946) q[3];
csdg q[5], q[0];
dcx q[6], q[2];
sx q[4];
u3(5.87626455641132, 1.4124081206036905, 2.6573002952980684) q[1];
ry(3.683467089192518) q[2];
crx(2.515005509549138) q[4], q[6];
xx_minus_yy_4538932720(3.0191366001571707, 0.5922391274745216) q[0], q[3];
swap q[1], q[5];
p(2.3970057127948894) q[5];
ry(3.9047190795807065) q[2];
crz(0.21200501058046167) q[4], q[6];
ryy_4538932096(5.746560197310571) q[0], q[3];
sxdg q[1];
swap q[5], q[6];
cx q[1], q[0];
iswap q[3], q[2];
U(2.0349735932605877, 2.824801338199216, 3.1638002483109653) q[4];
z q[4];
xx_plus_yy_4538931520(0.44496512121732557, 3.183508755265895) q[1], q[0];
cs q[5], q[6];
sx q[3];
sdg q[2];
u1(1.574146107053798) q[4];
h q[3];
cp(2.8454822464035634) q[2], q[6];
csdg q[0], q[5];
u2(4.327168793811229, 4.1017928341639) q[1];
iswap q[0], q[4];
cu(5.99076448458684, 3.7945740662264296, 3.0142809303285105, 0.10308630738664055) q[3], q[2];
U(3.4273058276435067, 2.7170968574938192, 4.893237185503951) q[6];
u3(1.8702480287839969, 0.8850369492713118, 5.31557394251859) q[5];
id q[1];
cy q[2], q[6];
cu(2.4340783157914934, 4.959131597993154, 0.2765920561100078, 4.833667016404815) q[5], q[0];
cx q[1], q[3];
x q[4];
p(4.913371865972987) q[4];
ccx q[1], q[6], q[2];
u2(6.148195384492813, 3.4247373738276177) q[0];
u2(3.472343781290315, 1.3397185499970088) q[3];
z q[5];
cs q[2], q[4];
cz q[3], q[1];
cp(0.6895087595123174) q[6], q[5];
h q[0];
crz(3.2577117235446362) q[3], q[0];
cu3_4538931472(3.618036754247463, 1.0674317929972883, 0.3690633589099521) q[6], q[1];
cs q[4], q[2];
x q[5];
cz q[6], q[2];
cx q[1], q[4];
tdg q[5];
csdg q[3], q[0];
p(1.725486625042771) q[2];
rzz_4538928832(4.974323957167349) q[1], q[4];
x q[0];
rz(4.054537891641369) q[6];
rzx_4538926576(5.100048176165296) q[5], q[3];
xx_plus_yy_4538930560(6.025579395415074, 3.7099812356415662) q[6], q[3];
crx(0.30936651769584755) q[2], q[1];
cu(2.0847658501082065, 0.9171692968137783, 1.7060327338876706, 2.218804188055557) q[4], q[5];
sdg q[0];
id q[0];
rzx_4538927008(0.6996328075162397) q[3], q[4];
cz q[6], q[5];
sxdg q[2];
t q[1];
tdg q[6];
csx q[4], q[2];
cp(2.414471058752514) q[3], q[0];
x q[5];
sxdg q[1];
rz(5.686624017109672) q[3];
sdg q[4];
rccx q[1], q[2], q[6];
crz(2.0795124634550803) q[5], q[0];
cu3_4538926864(1.4398769032132075, 5.650589390890558, 1.6447521824023539) q[0], q[4];
rzz_4538926528(1.4031292598502396) q[6], q[2];
sx q[3];
cs q[5], q[1];
xx_minus_yy_4538925712(3.052167679794457, 4.556214014170426) q[0], q[6];
z q[3];
ecr q[2], q[4];
u1(3.6561128193771832) q[5];
sx q[1];
cu3_4538927488(4.372863169272897, 4.868791321772745, 1.7336647944793593) q[0], q[6];
ccz q[1], q[2], q[5];
u1(3.3866222916295383) q[3];
sxdg q[4];
t q[2];
sx q[0];
ch q[3], q[6];
crx(3.5575371464092242) q[1], q[4];
h q[5];
rxx_4538927440(0.0017792981615189004) q[1], q[6];
sx q[3];
tdg q[5];
csx q[4], q[2];
sxdg q[0];
U(0.2482811597665606, 0.652209234225443, 5.892783121617173) q[3];
u1(0.3705517368130776) q[6];
cy q[5], q[0];
xx_plus_yy_4538931328(5.810617886574427, 1.9106830465721696) q[4], q[2];
p(5.259507768257585) q[1];
cp(0.3672788510682734) q[5], q[3];
c3sx q[4], q[2], q[6], q[1];
t q[0];
t q[5];
rzz_4538927056(3.757125513106424) q[3], q[2];
rz(3.190304263987057) q[0];
u2(3.301109750056447, 2.2924497450254226) q[4];
xx_minus_yy_4538931952(2.872461582830388, 1.6067846752534582) q[6], q[1];
ryy_4538927776(3.876959028338098) q[0], q[6];
cu3_4538932672(3.497536989201025, 3.114022544073706, 1.4970749190526051) q[2], q[3];
y q[5];
sdg q[1];
U(5.162266201238828, 5.429354654472818, 5.478118653505126) q[4];
sdg q[3];
id q[1];
c3sx q[5], q[0], q[6], q[4];
z q[2];
sdg q[2];
h q[3];
crz(1.034803847202859) q[4], q[0];
cz q[6], q[5];
sxdg q[1];
rz(3.8318251183852206) q[3];
p(5.246687219253028) q[0];
iswap q[4], q[6];
cs q[1], q[5];
p(1.7700702942878652) q[2];
ry(0.45015618222710935) q[1];
U(3.449728263896988, 4.3759206354241265, 3.9749443306699614) q[6];
h q[3];
ecr q[4], q[2];
swap q[0], q[5];
s q[0];
r_4538933776(2.2543130038164603, 1.8966583507476065) q[3];
x q[4];
csx q[1], q[5];
tdg q[6];
u1(6.087868051587899) q[2];
xx_plus_yy_4538935072(0.957294365278927, 4.11823304046291) q[3], q[0];
cp(0.634668524057882) q[1], q[6];
xx_plus_yy_4538935984(2.2014290479525287, 4.857076107985322) q[2], q[5];
sxdg q[4];
crz(3.7063882459547624) q[6], q[2];
p(0.05713891200063911) q[1];
sxdg q[5];
y q[4];
cry(2.466759604281106) q[0], q[3];
xx_plus_yy_4538932144(1.6548155541190996, 1.6343560397721646) q[4], q[1];
U(6.236180944116257, 3.1785194483458863, 5.435215679407973) q[0];
xx_plus_yy_4538925280(3.917248514566824, 1.5128761905843255) q[2], q[3];
u1(5.9401826316090975) q[5];
ry(1.3827125334732382) q[6];
y q[1];
y q[4];
ch q[0], q[6];
cx q[2], q[3];
sx q[5];
r_4538925136(4.931196040653614, 5.850016178784965) q[4];
r_4538937472(4.286723710207184, 2.802194537568538) q[5];
x q[2];
cry(4.54649280643309) q[3], q[6];
ryy_4538933920(0.14503336175375645) q[0], q[1];
rx(3.8921731861585416) q[2];
u2(1.0692383930750524, 5.729494381161548) q[5];
rxx_4538935312(4.6663228065279965) q[0], q[3];
u3(3.4328032018668453, 2.4477755047616205, 6.2304219467966675) q[1];
u3(1.2491722068124484, 2.422230993824387, 1.4050389843529898) q[4];
ry(3.8525901793375548) q[6];
cy q[6], q[5];
cs q[3], q[2];
ch q[1], q[0];
h q[4];
ch q[6], q[0];
cs q[4], q[5];
rccx q[2], q[1], q[3];
u3(2.763694542398386, 3.56157948389455, 5.509998557630899) q[1];
rx(0.5831083933125678) q[6];
cs q[3], q[4];
y q[0];
y q[2];
z q[5];
cp(3.9916491889466417) q[5], q[3];
rz(5.585565130121003) q[0];
cu1_4538938096(1.3652560018714253) q[4], q[2];
sdg q[6];
t q[1];
ryy_4538939200(4.293539045710877) q[6], q[0];
u1(5.964530924083324) q[3];
c3sx q[1], q[5], q[4], q[2];
ccx q[6], q[5], q[3];
rcccx q[4], q[0], q[1], q[2];
cry(0.7253310525901806) q[0], q[2];
dcx q[1], q[4];
rx(5.88506245606201) q[5];
y q[3];
sxdg q[6];
rzx_4538936896(5.833771496394074) q[2], q[3];
r_4538926624(2.096228360411696, 1.0133022878823843) q[4];
p(2.9811826351308097) q[0];
z q[1];
xx_minus_yy_4538938288(2.1844905013979177, 4.6292506067376795) q[5], q[6];
crz(0.04057167625350934) q[2], q[4];
cs q[3], q[0];
csdg q[5], q[1];
tdg q[6];
c3sx q[2], q[6], q[0], q[5];
xx_minus_yy_4538941264(0.11128818494572353, 1.329840896043601) q[1], q[3];
u1(5.750581702147275) q[4];
ry(5.425693536942664) q[1];
xx_plus_yy_4538936032(0.6745899403997472, 0.5966618104784432) q[3], q[2];
u2(5.743927904969827, 4.162446485299281) q[6];
cswap q[4], q[0], q[5];
cu(5.230018489113543, 2.3502713165004567, 5.4898172947287245, 4.296543313459354) q[5], q[3];
csdg q[0], q[4];
cx q[1], q[2];
h q[6];
rccx q[6], q[0], q[4];
ccx q[5], q[1], q[2];
r_4538930608(1.116222305334918, 4.250773197861992) q[3];
id q[0];
rx(0.8860918935705012) q[1];
rccx q[4], q[6], q[2];
ecr q[3], q[5];
ccx q[3], q[0], q[5];
u1(5.309059206523532) q[4];
s q[2];
sx q[1];
h q[6];
tdg q[1];
ccz q[6], q[5], q[2];
x q[4];
p(4.160709675562115) q[3];
id q[0];
csdg q[4], q[1];
rxx_4538925856(1.2074941807397785) q[6], q[0];
crz(5.87246618991266) q[3], q[5];
r_4538927248(6.159824285963847, 1.4184376606479911) q[2];
h q[5];
cy q[6], q[4];
cu1_4538926048(2.6291638989170574) q[3], q[1];
h q[2];
u3(0.4738347503350454, 1.8726023596216967, 5.304298257890801) q[0];
s q[2];
rcccx q[3], q[0], q[1], q[5];
id q[4];
ry(2.740879360756672) q[6];
s q[3];
cu3_4538926384(2.7107053101840406, 2.1035389647009994, 4.98132583670364) q[5], q[6];
ch q[0], q[1];
xx_minus_yy_4538939488(0.6035160185132735, 5.085110450633328) q[2], q[4];
c3sx q[1], q[5], q[4], q[0];
ryy_4538934784(4.705034415731226) q[6], q[2];
U(1.2552296076441622, 4.621993873715749, 0.770711756774507) q[3];
rx(4.809057723866504) q[2];
rzx_4538928928(1.868758104984939) q[6], q[1];
sxdg q[4];
y q[5];
ryy_4538927152(2.4028542000872184) q[0], q[3];
ecr q[6], q[0];
c3sx q[3], q[4], q[5], q[1];
U(3.1002335651985535, 1.3531290521830468, 5.35010026307396) q[2];
ch q[6], q[0];
cy q[2], q[4];
r_4538937328(1.2228319941756993, 6.090106085349998) q[3];
rx(2.8463464780208994) q[1];
U(2.324766522486421, 4.1877934319742085, 5.685982863600249) q[5];
y q[3];
cx q[5], q[2];
iswap q[4], q[6];
y q[1];
h q[0];
z q[2];
z q[5];
rzx_4538937280(1.1105296815184849) q[6], q[0];
xx_minus_yy_4538935888(3.5463249619611807, 5.073281195427719) q[3], q[4];
p(1.2776004782044712) q[1];
cswap q[5], q[2], q[4];
z q[3];
h q[6];
z q[0];
r_4538933200(5.109632272247693, 0.9323217294178433) q[1];
u1(3.3974530767902724) q[6];
rxx_4538933536(1.6361802014797935) q[0], q[4];
ch q[1], q[2];
xx_minus_yy_4538941312(2.173404577324951, 4.8243391333580625) q[5], q[3];
ccz q[4], q[2], q[3];
h q[1];
r_4538933632(5.2616277583629225, 5.650896273404847) q[0];
sx q[5];
h q[6];
swap q[5], q[6];
rxx_4538934064(4.302493785582065) q[0], q[3];
xx_plus_yy_4538940448(2.2709001811745786, 1.8691411826786368) q[1], q[2];
z q[4];
u3(5.410145213566766, 0.47130888875283816, 3.7391669107570698) q[3];
u3(5.292177297023246, 2.2517114254305395, 2.2852137315990024) q[4];
ryy_4538928208(0.8112716806797681) q[6], q[2];
h q[0];
cz q[5], q[1];
c3sx q[1], q[5], q[3], q[2];
rxx_4538938768(3.2210956501319736) q[0], q[4];
z q[6];
id q[3];
rxx_4538936176(0.8964401297495508) q[0], q[4];
p(3.488767102718112) q[5];
u3(1.7170044650707423, 4.441960549394786, 4.26706450420622) q[2];
cx q[1], q[6];
cp(4.837544884806444) q[6], q[5];
x q[4];
csdg q[3], q[2];
r_4538939056(6.224279231544567, 4.604564108277576) q[1];
rx(5.167063324006363) q[0];
crx(3.5014353330175267) q[1], q[4];
cy q[2], q[5];
t q[6];
ch q[0], q[3];
xx_plus_yy_4538940640(3.7727623912765322, 5.9039187413529515) q[6], q[1];
rzz_4538937664(5.598432608779964) q[5], q[2];
u2(2.834189606681758, 0.23451845339316027) q[3];
rx(2.9128138595656234) q[0];
u2(0.21985406602741436, 3.4310558634822845) q[4];
ccz q[4], q[0], q[5];
id q[2];
ccx q[1], q[6], q[3];
rxx_4538940928(2.8373110578565113) q[2], q[4];
xx_plus_yy_4538927920(1.2035655892807262, 0.844944895696709) q[0], q[6];
u3(1.7866050874232693, 6.153704792125181, 5.078652992116474) q[1];
h q[3];
rz(1.9475375035465092) q[5];
cp(2.2554218908700454) q[0], q[3];
u1(1.854912771811773) q[2];
h q[4];
rx(0.5521822900272548) q[6];
U(4.9376181051117305, 5.106715905356914, 2.904845640070514) q[1];
rz(4.348815659438459) q[5];
rz(6.123658381349261) q[6];
cu(4.786360530974872, 5.278762494948998, 0.27561863669799935, 1.8795341894198145) q[1], q[0];
u3(1.3771196125937597, 1.220803049411157, 2.156310687322529) q[2];
z q[5];
tdg q[4];
rz(4.383884284049298) q[3];
cswap q[3], q[4], q[1];
ryy_4538936224(5.9061643899967695) q[2], q[6];
id q[0];
u1(4.513563641975188) q[5];
cry(4.398917043409484) q[3], q[4];
cs q[0], q[5];
iswap q[1], q[6];
z q[2];
cry(2.0339460916095096) q[3], q[1];
cswap q[5], q[2], q[4];
r_4538930800(3.04530733084121, 3.480936365133489) q[6];
p(2.2227455434523042) q[0];
u3(2.2143589343261723, 1.0957894203364118, 1.7378473431883577) q[3];
z q[6];
tdg q[0];
ry(4.787155937859017) q[2];
r_4538935648(4.795751397642702, 5.495303876760168) q[5];
u1(1.4509455625121221) q[1];
sdg q[4];
tdg q[4];
dcx q[1], q[2];
tdg q[6];
x q[5];
u1(5.1990852188191665) q[3];
rz(1.032489046959687) q[0];
t q[6];
cy q[1], q[3];
s q[0];
p(3.159035780785324) q[2];
csx q[4], q[5];
r_4538941408(3.5909382755591532, 5.177385539228908) q[3];
ccx q[4], q[1], q[6];
sdg q[5];
csx q[0], q[2];
rccx q[1], q[6], q[2];
sdg q[3];
r_4538937040(4.6735726475410875, 3.9266344657187444) q[0];
rx(3.535722203334236) q[4];
u3(0.35356545924918825, 0.3635194908454656, 2.630441845889329) q[5];
ry(3.3869809047567325) q[1];
rz(4.898185820117643) q[3];
csx q[5], q[4];
crz(4.880806418503984) q[6], q[2];
x q[0];
h q[1];
cu3_4513709088(3.7087995280334374, 0.13616498377452968, 0.07466970012753842) q[0], q[5];
u1(2.5989671153761056) q[3];
u1(0.17598477756971653) q[2];
u3(2.4877496672331603, 2.67190419158547, 1.6645270640346395) q[6];
x q[4];
t q[4];
xx_minus_yy_4539466528(3.7825139389939473, 4.1264662334446784) q[0], q[3];
cu3_4539474496(1.0295754369259862, 0.9279030828716427, 2.887905259090721) q[1], q[2];
dcx q[5], q[6];
crz(2.285151021267738) q[1], q[5];
cry(5.057154419626156) q[6], q[0];
p(1.5507600178834209) q[2];
p(1.3775800379136833) q[3];
tdg q[4];
z q[0];
rx(4.3809416193866) q[2];
h q[1];
ccz q[6], q[4], q[5];
id q[3];
csdg q[1], q[4];
c3sx q[3], q[0], q[6], q[5];
u3(0.26044479868307824, 4.212815652347326, 5.261376865663646) q[2];
crz(4.03289921638819) q[3], q[6];
ch q[5], q[4];
csdg q[0], q[1];
u2(0.15515845251685464, 6.198370773825241) q[2];
cu3_4539466000(3.5218975439332727, 2.30164482272345, 3.6212158760714095) q[6], q[2];
s q[5];
z q[3];
crx(1.8634572454155904) q[0], q[1];
u2(3.2174079565423193, 0.8132416174617454) q[4];
rxx_4539474880(3.6975603556120715) q[4], q[1];
tdg q[6];
sxdg q[2];
csx q[3], q[5];
r_4539470800(3.038210267068769, 3.6522686009149687) q[0];
sxdg q[6];
c3sx q[4], q[1], q[2], q[5];
tdg q[3];
p(2.0024167681001566) q[0];
