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
gate rxx_4564509344(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9660764930545807) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4564509968(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.068829043781149) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.33398793863004284) _gate_q_1;
  ry(-0.33398793863004284) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.068829043781149) _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate xx_minus_yy_4564510208(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.846303465321205) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.7558967532355614) _gate_q_0;
  ry(-1.7558967532355614) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.846303465321205) _gate_q_1;
}
gate xx_minus_yy_4564500800(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.4106843570612453) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(3.1106748363015817) _gate_q_0;
  ry(-3.1106748363015817) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.4106843570612453) _gate_q_1;
}
gate rzz_4564509440(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.8649690909264718) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4564514288(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.742333806899356) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5610684820166303) _gate_q_1;
  ry(-2.5610684820166303) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.742333806899356) _gate_q_0;
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
gate rzx_4564512032(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.305097333017573) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4564510496(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.8200828676983075) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.19589448053815223) _gate_q_0;
  ry(-0.19589448053815223) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.8200828676983075) _gate_q_1;
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
gate rxx_4564504928(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1317491641882766) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4564509152(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.78228703187557) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.17614168018840018) _gate_q_1;
  ry(-0.17614168018840018) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.78228703187557) _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate ryy_4564504496(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.390618148177662) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4564508768(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.7054838206961777) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4564501088(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.9159140589923833) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4564503920(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.589840388693248) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.14095713794124032) _gate_q_1;
  ry(-0.14095713794124032) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.589840388693248) _gate_q_0;
}
gate r_4564500848(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.929644254419363, 4.161195955153436, -4.161195955153436) _gate_q_0;
}
gate rzx_4564538896(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.23922067234361) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4564534240(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.19488202494730622) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4564533616(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.800701705891618) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4564538848(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.5232977906093463) _gate_q_0;
  u1(0.9377450559228564) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.998273710098769, 0, -3.5232977906093463) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.998273710098769, 2.5855527346864897, 0) _gate_q_1;
}
gate rzx_4564541488(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.40302636253144797) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4564540960(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.6000885559653035, 3.717801087867901, -3.717801087867901) _gate_q_0;
}
gate r_4564538272(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.8373879754941242, -0.018537793115224854, 0.018537793115224854) _gate_q_0;
}
gate ryy_4564537984(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.3900517788217135) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4564540192(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.716357379910897) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(3.112305271993976) _gate_q_0;
  ry(-3.112305271993976) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.716357379910897) _gate_q_1;
}
gate cu1_4564538704(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.7716557971389317) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.7716557971389317) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.7716557971389317) _gate_q_1;
}
gate rzz_4564548064(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.146472920577867) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4563851968(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.291381945572422, 1.067155004898876, -1.067155004898876) _gate_q_0;
}
gate cu3_4563852784(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.4362712173229173) _gate_q_0;
  u1(-0.34924939874907035) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.8512187657011747, 0, -1.4362712173229173) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.8512187657011747, 1.7855206160719876, 0) _gate_q_1;
}
gate r_4563852256(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.473743277685173, 1.3105507586695504, -1.3105507586695504) _gate_q_0;
}
gate rzz_4563855664(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.3078740910721516) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4563854320(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.4532061345543634) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(3.072447198977131) _gate_q_0;
  ry(-3.072447198977131) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.4532061345543634) _gate_q_1;
}
gate rzx_4563858352(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.2324162250290422) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4563849808(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.140708543251097) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4563850048(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.679189620862265) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4563856864(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.0866234131754307) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.4134380892800396) _gate_q_1;
  ry(-1.4134380892800396) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.0866234131754307) _gate_q_0;
}
gate ryy_4563859072(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.0072731621072455) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4563850384(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.9550497225564194, 4.380726781893786, -4.380726781893786) _gate_q_0;
}
gate xx_minus_yy_4563850912(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.0137393061629885) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.9063669940424433) _gate_q_0;
  ry(-1.9063669940424433) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.0137393061629885) _gate_q_1;
}
gate ryy_4563851056(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.3445205558183515) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4563848416(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.180993012892509) _gate_q_0;
  u1(0.862068814938679) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.2518168419363975, 0, -5.180993012892509) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.2518168419363975, 4.31892419795383, 0) _gate_q_1;
}
gate rxx_4563848368(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.350522250874113) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4563847456(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.055026444782141, -1.3127926933501544, 1.3127926933501544) _gate_q_0;
}
gate xx_minus_yy_4564511984(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.7549398745612416) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.0679884231746586) _gate_q_0;
  ry(-1.0679884231746586) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.7549398745612416) _gate_q_1;
}
gate r_4564503680(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.185408081638587, 2.832698652707471, -2.832698652707471) _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate xx_plus_yy_4563845776(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.3839825704526325) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.968338748654683) _gate_q_1;
  ry(-2.968338748654683) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.3839825704526325) _gate_q_0;
}
gate xx_plus_yy_4563846208(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.360741528630973) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.154098432455501) _gate_q_1;
  ry(-1.154098432455501) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.360741528630973) _gate_q_0;
}
gate xx_plus_yy_4563851776(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.5494021856739515) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.1784204581244493) _gate_q_1;
  ry(-1.1784204581244493) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.5494021856739515) _gate_q_0;
}
gate ryy_4563849280(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.4039403682111398) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4563846544(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.8742407683557603) _gate_q_0;
  u1(1.3963719607228184) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.4323629606072616, 0, -1.8742407683557603) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.4323629606072616, 0.4778688076329419, 0) _gate_q_1;
}
gate xx_plus_yy_4563846016(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.532471749627776) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.518838513285445) _gate_q_1;
  ry(-2.518838513285445) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.532471749627776) _gate_q_0;
}
gate rxx_4563850336(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.9040281080174664) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4563849040(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.852535672266209, -0.9577964532912618, 0.9577964532912618) _gate_q_0;
}
gate rzz_4563858256(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.001214813959263) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4563847792(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.736446481292602, 0.512341492863718, -0.512341492863718) _gate_q_0;
}
gate cu1_4563856000(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.47277044577750077) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.47277044577750077) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.47277044577750077) _gate_q_1;
}
gate rzx_4563845728(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.398064208885168) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4563846928(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.4284330479695813) _gate_q_0;
  u1(-1.0689418430869075) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.247122202033798, 0, -1.4284330479695813) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.247122202033798, 2.497374891056489, 0) _gate_q_1;
}
gate ryy_4563848944(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.987500481325702) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4563852592(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.003961880973923) _gate_q_0;
  u1(-1.0052262113518988) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.32123245026277886, 0, -2.003961880973923) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.32123245026277886, 3.009188092325822, 0) _gate_q_1;
}
gate r_4563853360(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.0082317012294313, -0.4245687103359106, 0.4245687103359106) _gate_q_0;
}
gate rzz_4563853120(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.3710344170590736) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4563850864(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.1110329268354997, 1.6212492135744396, -1.6212492135744396) _gate_q_0;
}
gate xx_minus_yy_4563851152(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.48201116804266775) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.3081147893237812) _gate_q_0;
  ry(-1.3081147893237812) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.48201116804266775) _gate_q_1;
}
gate rxx_4563852016(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.388075954513117) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4563854176(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.6483565178917505, -0.4783633549348443, 0.4783633549348443) _gate_q_0;
}
gate r_4563852736(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.5336734164810455, 3.278418967504006, -3.278418967504006) _gate_q_0;
}
gate r_4563853168(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.6408709832717174, 1.7711134530533035, -1.7711134530533035) _gate_q_0;
}
gate rzz_4563854896(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.050850281399469) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4563859696(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.7158172843462343, 0.8053131177437169, -0.8053131177437169) _gate_q_0;
}
gate ryy_4563855568(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.781678081677926) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4563855088(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.6228732129405508) _gate_q_0;
  u1(0.3125584671128496) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.7806339132371621, 0, -2.6228732129405508) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.7806339132371621, 2.310314745827701, 0) _gate_q_1;
}
qubit[12] q;
y q[0];
h q[4];
cu(2.2747183675543914, 5.166633514511683, 1.5286214019155968, 5.074304334222234) q[1], q[8];
rccx q[7], q[5], q[11];
U(5.944621488300694, 2.521932558417955, 4.526220175184423) q[9];
U(3.540092290700724, 5.4117252247682845, 1.7781621456855632) q[6];
ecr q[3], q[10];
ry(4.2651379248475845) q[2];
cy q[7], q[5];
swap q[8], q[3];
u3(5.4864542552394155, 0.379691995298369, 1.1389828080964899) q[10];
iswap q[6], q[1];
rxx_4564509344(1.9660764930545807) q[4], q[2];
xx_plus_yy_4564509968(0.6679758772600857, 3.068829043781149) q[11], q[0];
tdg q[9];
cz q[10], q[0];
dcx q[7], q[8];
u2(1.7464156252409608, 0.798303467702457) q[2];
xx_minus_yy_4564510208(3.5117935064711228, 4.846303465321205) q[3], q[4];
sxdg q[9];
dcx q[5], q[11];
u1(0.019588219104279082) q[6];
U(4.690062952140905, 1.6111587949378052, 2.340563392764041) q[1];
iswap q[11], q[4];
xx_minus_yy_4564500800(6.221349672603163, 2.4106843570612453) q[3], q[6];
sxdg q[7];
rz(5.371196846497663) q[2];
rzz_4564509440(1.8649690909264718) q[10], q[8];
ry(0.3137915797197403) q[0];
cy q[1], q[5];
sdg q[9];
cz q[0], q[2];
cy q[9], q[11];
xx_plus_yy_4564514288(5.122136964033261, 4.742333806899356) q[7], q[3];
u1(6.220474489856766) q[1];
cswap q[5], q[6], q[4];
u2(2.272158977994157, 4.428540753842445) q[8];
z q[10];
csx q[10], q[9];
rzx_4564512032(4.305097333017573) q[6], q[1];
xx_minus_yy_4564510496(0.39178896107630445, 0.8200828676983075) q[3], q[8];
ccx q[5], q[7], q[11];
ry(5.282156003219368) q[0];
cp(1.9861049585116983) q[4], q[2];
c3sx q[5], q[0], q[1], q[8];
u3(1.3726956607413772, 0.3435757991622969, 1.7945716060813859) q[10];
rccx q[3], q[11], q[7];
y q[2];
t q[9];
h q[4];
u2(2.03593512082341, 2.228571724020355) q[6];
rx(0.7972339637199576) q[9];
swap q[8], q[3];
rcccx q[0], q[7], q[6], q[11];
cy q[5], q[10];
ccx q[2], q[1], q[4];
rxx_4564504928(1.1317491641882766) q[7], q[9];
xx_plus_yy_4564509152(0.35228336037680036, 3.78228703187557) q[1], q[5];
csx q[0], q[10];
sxdg q[8];
dcx q[6], q[4];
ccz q[2], q[11], q[3];
sxdg q[11];
cs q[1], q[5];
ryy_4564504496(4.390618148177662) q[0], q[4];
crx(5.960600447610977) q[7], q[6];
ryy_4564508768(0.7054838206961777) q[8], q[3];
crx(3.5918259770965157) q[2], q[10];
sx q[9];
rccx q[2], q[6], q[0];
sdg q[8];
ryy_4564501088(3.9159140589923833) q[9], q[1];
u3(1.0312224332398026, 4.886973558135448, 0.9164050968665975) q[10];
ry(1.2284910993472988) q[7];
crx(3.7539613577401156) q[3], q[4];
csx q[11], q[5];
dcx q[3], q[1];
xx_plus_yy_4564503920(0.28191427588248064, 3.589840388693248) q[10], q[2];
r_4564500848(2.929644254419363, 5.731992281948332) q[11];
cu(5.40802595114847, 1.9157022512617157, 3.530372312088645, 2.930671213971297) q[7], q[6];
ccx q[9], q[5], q[8];
rzx_4564538896(5.23922067234361) q[0], q[4];
ryy_4564534240(0.19488202494730622) q[10], q[11];
rzz_4564533616(5.800701705891618) q[8], q[3];
z q[0];
cu3_4564538848(5.996547420197538, 2.5855527346864897, 4.4610428465322025) q[2], q[4];
rccx q[5], q[1], q[7];
rz(3.0579486887977634) q[6];
sdg q[9];
rzx_4564541488(0.40302636253144797) q[7], q[1];
r_4564540960(2.6000885559653035, 5.288597414662798) q[8];
dcx q[0], q[4];
rx(1.2806414885261825) q[6];
y q[9];
id q[3];
rccx q[2], q[5], q[11];
u1(1.3074731182087276) q[10];
r_4564538272(2.8373879754941242, 1.5522585336796717) q[4];
ryy_4564537984(5.3900517788217135) q[11], q[0];
dcx q[2], q[5];
iswap q[10], q[3];
xx_minus_yy_4564540192(6.224610543987952, 5.716357379910897) q[6], q[9];
crx(0.3908773170507163) q[7], q[8];
x q[1];
rx(0.9010882748357882) q[8];
sx q[10];
cu1_4564538704(3.5433115942778635) q[9], q[0];
rzz_4564548064(4.146472920577867) q[2], q[4];
rccx q[7], q[3], q[5];
cy q[11], q[6];
r_4563851968(4.291381945572422, 2.6379513316937726) q[1];
cu(6.20332969873741, 0.3300775465922157, 1.4026220790788582, 3.463674118445131) q[11], q[8];
swap q[0], q[1];
rccx q[9], q[2], q[6];
cu3_4563852784(3.7024375314023494, 1.7855206160719876, 1.087021818573847) q[10], q[3];
cz q[5], q[7];
sxdg q[4];
x q[7];
r_4563852256(4.473743277685173, 2.881347085464447) q[4];
rzz_4563855664(2.3078740910721516) q[11], q[6];
cx q[0], q[3];
rcccx q[1], q[10], q[2], q[8];
xx_minus_yy_4563854320(6.144894397954262, 3.4532061345543634) q[9], q[5];
ccx q[2], q[7], q[9];
ccx q[1], q[10], q[4];
cy q[6], q[3];
rx(1.6074142129190359) q[8];
p(3.520566828911057) q[0];
crx(0.7806387285062838) q[11], q[5];
rzx_4563858352(3.2324162250290422) q[3], q[5];
rccx q[0], q[10], q[9];
rz(5.645006243864703) q[2];
iswap q[11], q[6];
csx q[8], q[1];
z q[4];
id q[7];
U(2.4501241932182727, 5.885392595596582, 0.4128650075537056) q[5];
sxdg q[1];
csx q[8], q[6];
sdg q[0];
sdg q[9];
tdg q[4];
sdg q[11];
u3(3.3256767798731217, 3.09210343073788, 5.610093710621508) q[10];
crz(1.5668975004773378) q[3], q[7];
sdg q[2];
cz q[8], q[9];
c3sx q[0], q[2], q[1], q[6];
rzx_4563849808(4.140708543251097) q[10], q[11];
crx(5.5208523263931015) q[7], q[3];
s q[4];
s q[5];
csx q[5], q[9];
cswap q[1], q[4], q[10];
ccz q[3], q[6], q[8];
cry(4.31322933539333) q[2], q[7];
u2(4.627488802216384, 5.47795852474112) q[11];
p(0.34255119923390626) q[0];
h q[3];
u2(6.2264298812344, 0.7184653024590977) q[8];
ryy_4563850048(3.679189620862265) q[4], q[1];
x q[2];
xx_plus_yy_4563856864(2.826876178560079, 2.0866234131754307) q[11], q[0];
ryy_4563859072(4.0072731621072455) q[9], q[5];
crx(4.540109249161656) q[10], q[6];
sdg q[7];
crz(5.436072823169468) q[7], q[10];
r_4563850384(3.9550497225564194, 5.951523108688683) q[3];
xx_minus_yy_4563850912(3.8127339880848865, 5.0137393061629885) q[9], q[11];
dcx q[4], q[0];
rz(5.764557866187415) q[6];
cy q[1], q[5];
ryy_4563851056(2.3445205558183515) q[2], q[8];
cu3_4563848416(2.503633683872795, 4.31892419795383, 6.043061827831188) q[10], q[11];
u1(0.5262487831311142) q[7];
cry(3.427231791801701) q[9], q[4];
ry(0.46128383088577574) q[2];
rxx_4563848368(2.350522250874113) q[1], q[5];
swap q[6], q[0];
r_4563847456(2.055026444782141, 0.25800363344474214) q[3];
sdg q[8];
xx_minus_yy_4564511984(2.135976846349317, 0.7549398745612416) q[0], q[2];
cy q[5], q[7];
sx q[6];
cswap q[8], q[4], q[10];
rccx q[9], q[1], q[3];
id q[11];
rcccx q[1], q[3], q[0], q[7];
r_4564503680(5.185408081638587, 4.4034949795023675) q[6];
rz(1.1563297477367989) q[2];
dcx q[11], q[9];
y q[8];
csdg q[4], q[5];
id q[10];
xx_plus_yy_4563845776(5.936677497309366, 0.3839825704526325) q[6], q[0];
U(1.076411022109603, 3.4219076399804087, 3.585435063936579) q[10];
crx(5.1862647000253315) q[5], q[8];
z q[4];
cu(4.8128248648141705, 2.684570761736272, 3.01737179997584, 4.6499818342443175) q[9], q[11];
crx(3.844316389376447) q[1], q[7];
csdg q[3], q[2];
cp(2.391045974764322) q[7], q[9];
u1(3.873745350163912) q[3];
xx_plus_yy_4563846208(2.308196864911002, 5.360741528630973) q[11], q[6];
crx(3.9828055676909155) q[5], q[8];
u1(0.7291065403118686) q[1];
c3sx q[2], q[0], q[4], q[10];
swap q[4], q[0];
xx_plus_yy_4563851776(2.3568409162488986, 3.5494021856739515) q[1], q[7];
cy q[3], q[6];
cu(5.313503992449131, 4.500966949523866, 3.329173832061113, 0.2099922481426477) q[8], q[2];
ryy_4563849280(1.4039403682111398) q[11], q[5];
h q[9];
t q[10];
swap q[8], q[1];
cu3_4563846544(4.864725921214523, 0.4778688076329419, 3.2706127290785787) q[11], q[3];
iswap q[5], q[6];
swap q[0], q[2];
cu(2.459373165733157, 2.5108308198357054, 4.496185113275426, 3.639650292322633) q[4], q[7];
rx(4.768839097204851) q[10];
u1(3.919828936129864) q[9];
t q[1];
dcx q[6], q[10];
dcx q[3], q[8];
rccx q[11], q[9], q[0];
h q[7];
xx_plus_yy_4563846016(5.03767702657089, 5.532471749627776) q[4], q[2];
h q[5];
ccx q[4], q[9], q[7];
ch q[11], q[5];
id q[0];
U(0.9154982673055669, 3.8213624886654203, 1.6282009932315533) q[8];
c3sx q[2], q[1], q[3], q[6];
sxdg q[10];
tdg q[4];
rcccx q[9], q[10], q[0], q[1];
cswap q[8], q[5], q[3];
crx(5.358396571625491) q[7], q[2];
rxx_4563850336(0.9040281080174664) q[11], q[6];
id q[9];
csx q[1], q[2];
x q[0];
iswap q[10], q[8];
r_4563849040(4.852535672266209, 0.6129998735036347) q[4];
u3(0.02930068002532845, 2.7453096023823513, 1.2377252635263674) q[3];
crz(4.7993191816656315) q[6], q[5];
crz(4.308224161498567) q[11], q[7];
ry(4.695206254289818) q[9];
rzz_4563858256(3.001214813959263) q[8], q[2];
cz q[7], q[1];
rcccx q[6], q[0], q[11], q[4];
cswap q[3], q[5], q[10];
sdg q[11];
u1(0.5641902346517684) q[9];
u2(0.5145262224575549, 4.0975134603635865) q[1];
r_4563847792(1.736446481292602, 2.0831378196586146) q[3];
y q[10];
cu(4.787047546589789, 2.987926790902247, 1.9411336079628532, 1.834409838777002) q[6], q[2];
u2(3.5650831695251513, 1.7562940655123627) q[4];
h q[0];
cu1_4563856000(0.9455408915550015) q[5], q[8];
rx(1.5356465334468026) q[7];
rzx_4563845728(4.398064208885168) q[6], q[2];
cs q[1], q[0];
swap q[3], q[4];
cu3_4563846928(2.494244404067596, 2.497374891056489, 0.35949120488267394) q[5], q[11];
crx(1.3313485779225738) q[7], q[9];
ryy_4563848944(4.987500481325702) q[8], q[10];
tdg q[5];
cry(4.748694546409222) q[11], q[1];
cz q[4], q[9];
p(5.757706918934849) q[2];
x q[6];
iswap q[0], q[7];
cu3_4563852592(0.6424649005255577, 3.009188092325822, 0.9987356696220243) q[8], q[3];
r_4563853360(3.0082317012294313, 1.146227616458986) q[10];
tdg q[2];
rzz_4563853120(1.3710344170590736) q[9], q[10];
cp(5.793493952393887) q[1], q[8];
ccx q[6], q[5], q[4];
r_4563850864(2.1110329268354997, 3.192045540369336) q[11];
s q[0];
ry(6.1605933606745475) q[7];
u1(5.2816753274744155) q[3];
s q[0];
iswap q[2], q[7];
ecr q[5], q[1];
x q[10];
xx_minus_yy_4563851152(2.6162295786475624, 0.48201116804266775) q[3], q[9];
rxx_4563852016(3.388075954513117) q[8], q[11];
id q[6];
sdg q[4];
s q[11];
cx q[2], q[3];
tdg q[6];
iswap q[1], q[8];
cry(4.771324863141562) q[4], q[9];
tdg q[7];
u2(2.2894945321549547, 6.226257455474093) q[0];
x q[5];
s q[10];
sxdg q[11];
dcx q[1], q[2];
r_4563854176(4.6483565178917505, 1.0924329718600523) q[4];
r_4563852736(4.5336734164810455, 4.849215294298903) q[10];
sx q[5];
s q[7];
crx(2.939344544168908) q[9], q[3];
id q[8];
csx q[6], q[0];
r_4563853168(1.6408709832717174, 3.3419097798482) q[11];
x q[0];
csdg q[2], q[7];
crz(0.9098576336794159) q[9], q[6];
rccx q[3], q[8], q[4];
cx q[1], q[5];
h q[10];
t q[1];
cu(4.543769139765668, 3.8568698843714992, 1.5981957851880004, 3.344001120395334) q[4], q[0];
rzz_4563854896(4.050850281399469) q[8], q[9];
ccz q[5], q[3], q[7];
u3(2.505167774428612, 3.8984147406621696, 2.8194948382638927) q[10];
cp(1.691357605144983) q[6], q[2];
r_4563859696(1.7158172843462343, 2.3761094445386135) q[11];
sdg q[9];
sxdg q[10];
ccz q[8], q[5], q[6];
ecr q[3], q[11];
cy q[1], q[2];
ryy_4563855568(2.781678081677926) q[7], q[4];
u1(1.75665005776135) q[0];
rccx q[3], q[10], q[5];
ccz q[8], q[4], q[6];
t q[11];
u2(2.4417902809942387, 3.428063026895626) q[0];
cu(6.1074503571660435, 2.370077057556483, 2.7067525221816884, 4.738529815921157) q[1], q[9];
cu3_4563855088(1.5612678264743243, 2.310314745827701, 2.9354316800534) q[2], q[7];
rz(2.1681945703435823) q[2];
u2(1.4611375300551428, 0.5157783716696792) q[5];
rx(2.7678881547752727) q[9];
sx q[4];
crz(5.399938123713608) q[3], q[10];
t q[0];
rz(0.8582826516194916) q[7];
sxdg q[1];
t q[11];
csx q[6], q[8];
c3sx q[5], q[11], q[1], q[4];
rccx q[8], q[2], q[7];
cswap q[3], q[10], q[6];
cz q[9], q[0];
