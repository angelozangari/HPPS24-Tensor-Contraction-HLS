OPENQASM 3.0;
include "stdgates.inc";
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4537089968(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.0678622467557215) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.8316606965562858) _gate_q_1;
  ry(-0.8316606965562858) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.0678622467557215) _gate_q_0;
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
gate xx_plus_yy_4537084064(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.9553517827250289) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.2065302205330308) _gate_q_1;
  ry(-1.2065302205330308) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.9553517827250289) _gate_q_0;
}
gate ryy_4537083920(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.521540195904825) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4537076864(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.299655327855602) _gate_q_0;
  u1(0.7405897298660593) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.01659313618553603, 0, -2.299655327855602) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.01659313618553603, 1.5590655979895427, 0) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate rzx_4537084880(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.2172683855460855) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4537077584(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.5884277123607162) _gate_q_0;
  u1(-0.2532083426714969) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.085076653378852, 0, -0.5884277123607162) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.085076653378852, 0.8416360550322132, 0) _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate rxx_4537074032(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8758438890040103) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4537085168(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1086829213923752) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4537084352(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.7794527909004367) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate ryy_4537082432(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1458460636565335) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4537086944(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.13571623037707) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.4119741126868462) _gate_q_0;
  ry(-0.4119741126868462) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.13571623037707) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cu3_4537074800(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.0080375613656587) _gate_q_0;
  u1(0.04701666777706537) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.2626378325036502, 0, -3.0080375613656587) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.2626378325036502, 2.9610208935885933, 0) _gate_q_1;
}
gate r_4537074320(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.8551777867748315, 1.3918418095067353, -1.3918418095067353) _gate_q_0;
}
gate cu3_4537078208(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.9368898840541826) _gate_q_0;
  u1(-1.6525408445095489) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.051651802897746, 0, -2.9368898840541826) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.051651802897746, 4.589430728563731, 0) _gate_q_1;
}
gate ryy_4537088528(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1483399544456514) _gate_q_1;
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
gate rxx_4537087472(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.961782254449331) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4537086608(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.7207525390363415) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.7207525390363415) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.7207525390363415) _gate_q_1;
}
gate r_4537081376(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.243756690647632, -0.2776514251411544, 0.2776514251411544) _gate_q_0;
}
gate rzx_4537086848(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.028914973107259) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4537089200(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.7628339054020565) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.820377151901084) _gate_q_0;
  ry(-2.820377151901084) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.7628339054020565) _gate_q_1;
}
gate rzx_4537087136(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.2619268081915519) _gate_q_1;
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
gate rxx_4537079264(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.879523353757988) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4537076672(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.4532485597013487) _gate_q_0;
  u1(-1.7902553405501214) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.3976476897806482, 0, -3.4532485597013487) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.3976476897806482, 5.24350390025147, 0) _gate_q_1;
}
gate rxx_4537078160(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.651122751844327) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4537078496(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.431935666512061) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4537080608(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.2154564596564903) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.1049294993401597) _gate_q_1;
  ry(-2.1049294993401597) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.2154564596564903) _gate_q_0;
}
gate rzx_4537081184(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.49745605882229) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4537075808(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.4048661017816313) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(3.09126243043286) _gate_q_0;
  ry(-3.09126243043286) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.4048661017816313) _gate_q_1;
}
gate r_4537089248(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.6759820992282894, 4.306128876826886, -4.306128876826886) _gate_q_0;
}
gate xx_plus_yy_4537079120(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.2771615086878105) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.8522480094301628) _gate_q_1;
  ry(-2.8522480094301628) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.2771615086878105) _gate_q_0;
}
gate rxx_4537081136(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9406940860377122) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4537082576(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.450355428153861) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4537088288(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.839303155004783) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4537085264(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.5731337001795531) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.830606223950887) _gate_q_1;
  ry(-1.830606223950887) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.5731337001795531) _gate_q_0;
}
gate ryy_4537089344(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.8178762115068174) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4537075088(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.023679655926326) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4537087328(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.7001344145150004) _gate_q_0;
  u1(-1.6222213368964038) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.1107161695572762, 0, -3.7001344145150004) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.1107161695572762, 5.322355751411404, 0) _gate_q_1;
}
gate ryy_4537075856(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.5739120540504037) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4537077872(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.27705990142926) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4537073840(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.7992013993306495, 3.966261726715538, -3.966261726715538) _gate_q_0;
}
gate rxx_4537073744(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.4458207563305652) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4537080080(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.3109870127906795) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.3109870127906795) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.3109870127906795) _gate_q_1;
}
gate cu3_4537076432(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.8202283001898829) _gate_q_0;
  u1(0.4793722196114216) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.1890565819333263, 0, -0.8202283001898829) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.1890565819333263, 0.3408560805784613, 0) _gate_q_1;
}
gate cu3_4537077776(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.4078911154571694) _gate_q_0;
  u1(1.2190755205464352) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.628918355771636, 0, -2.4078911154571694) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.628918355771636, 1.1888155949107344, 0) _gate_q_1;
}
gate xx_plus_yy_4537084112(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.7347527220197343) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.4156083623722067) _gate_q_1;
  ry(-2.4156083623722067) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.7347527220197343) _gate_q_0;
}
gate rxx_4534590960(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.665342728627613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4534592256(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.6244098206643813) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4532082096(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.6668792542447295) _gate_q_0;
  u1(-2.1557987187949705) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.39543714182697237, 0, -3.6668792542447295) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.39543714182697237, 5.8226779730397, 0) _gate_q_1;
}
gate rzx_4513709232(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.932309758096314) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
qubit[7] q;
t q[4];
p(2.2879722822873614) q[5];
sxdg q[3];
xx_plus_yy_4537089968(1.6633213931125717, 2.0678622467557215) q[2], q[1];
u2(1.640683527751401, 2.811882996286734) q[6];
ry(3.61714468990415) q[0];
ecr q[1], q[0];
U(4.1754687611068375, 4.126183807676937, 5.7105990433464235) q[5];
xx_plus_yy_4537084064(2.4130604410660617, 1.9553517827250289) q[6], q[2];
t q[4];
rx(5.441672248092539) q[3];
U(0.3073209797300369, 2.2962654375509053, 1.3766166858907716) q[5];
h q[1];
ch q[0], q[2];
ry(3.745472721767746) q[3];
ryy_4537083920(0.521540195904825) q[6], q[4];
x q[0];
s q[4];
sxdg q[6];
rz(1.3691446038131485) q[1];
cu3_4537076864(0.03318627237107206, 1.5590655979895427, 3.0402450577216613) q[5], q[2];
x q[3];
u2(4.528487914400496, 4.2672056488355095) q[3];
cswap q[6], q[1], q[2];
iswap q[5], q[0];
s q[4];
x q[6];
ch q[2], q[5];
ccx q[1], q[4], q[3];
y q[0];
tdg q[5];
U(3.575887274270812, 5.763594074904958, 0.6459319385990951) q[6];
cz q[3], q[0];
sdg q[1];
s q[4];
z q[2];
rzx_4537084880(5.2172683855460855) q[6], q[1];
cu3_4537077584(4.170153306757704, 0.8416360550322132, 0.3352193696892194) q[0], q[2];
tdg q[4];
u3(1.4914336954175922, 3.7211019493341198, 3.2953507107869386) q[5];
t q[3];
cswap q[5], q[1], q[6];
swap q[3], q[4];
rx(2.629700544627899) q[0];
p(3.0095896074075816) q[2];
csdg q[6], q[3];
swap q[1], q[2];
sdg q[4];
s q[5];
id q[0];
x q[3];
swap q[1], q[6];
rxx_4537074032(0.8758438890040103) q[5], q[2];
rzx_4537085168(2.1086829213923752) q[0], q[4];
ecr q[2], q[0];
rzx_4537084352(1.7794527909004367) q[3], q[4];
swap q[1], q[5];
sdg q[6];
ccz q[6], q[5], q[1];
rx(5.844844499802815) q[0];
h q[3];
cs q[2], q[4];
t q[2];
rccx q[6], q[4], q[1];
u2(2.7714081654359495, 3.0529227068732556) q[5];
swap q[0], q[3];
csx q[0], q[5];
z q[4];
cy q[3], q[6];
ryy_4537082432(1.1458460636565335) q[1], q[2];
U(0.6748453250354923, 4.837545198034135, 3.5438130925603306) q[6];
rccx q[5], q[0], q[4];
cz q[1], q[3];
rz(6.1143745403004655) q[2];
h q[4];
p(1.0741740007954432) q[2];
u1(4.110106737389859) q[5];
xx_minus_yy_4537086944(0.8239482253736924, 5.13571623037707) q[3], q[6];
cy q[0], q[1];
ccx q[4], q[0], q[3];
p(2.6760473983549073) q[5];
crz(4.722174024760178) q[2], q[6];
h q[1];
t q[2];
tdg q[3];
dcx q[1], q[6];
cy q[0], q[5];
h q[4];
cu3_4537074800(4.5252756650073005, 2.9610208935885933, 3.055054229142724) q[6], q[1];
ccx q[5], q[4], q[3];
r_4537074320(0.8551777867748315, 2.962638136301632) q[2];
sxdg q[0];
crx(5.718602620023198) q[3], q[2];
sx q[4];
ch q[5], q[6];
U(4.350166033270105, 5.747456150991788, 4.101951609058733) q[0];
u1(2.157926890530402) q[1];
cu3_4537078208(2.103303605795492, 4.589430728563731, 1.2843490395446335) q[6], q[2];
sxdg q[4];
ryy_4537088528(1.1483399544456514) q[5], q[3];
sxdg q[0];
U(0.29231414823733115, 2.687831592122017, 6.215019273186012) q[1];
rz(3.2632413566990537) q[1];
rcccx q[6], q[0], q[5], q[2];
sx q[3];
p(3.097888253894141) q[4];
ecr q[1], q[4];
sx q[3];
rxx_4537087472(4.961782254449331) q[6], q[2];
cu(4.7150201506477885, 0.8531337988438371, 0.9552568069741103, 4.485265630474787) q[5], q[0];
z q[0];
cu1_4537086608(1.441505078072683) q[6], q[4];
sxdg q[5];
ecr q[3], q[1];
u1(0.7007185630473651) q[2];
cy q[1], q[6];
u1(0.06227570832413431) q[3];
u2(4.286787187262515, 6.084434285264224) q[5];
s q[0];
r_4537081376(4.243756690647632, 1.2931449016537422) q[4];
u3(3.7292538303188993, 6.088327239408901, 5.584469106255533) q[2];
h q[4];
rzx_4537086848(1.028914973107259) q[2], q[6];
ch q[5], q[1];
cp(5.547982516775407) q[0], q[3];
xx_minus_yy_4537089200(5.640754303802168, 3.7628339054020565) q[4], q[1];
cz q[2], q[0];
rzx_4537087136(0.2619268081915519) q[6], q[3];
s q[5];
z q[3];
c3sx q[0], q[6], q[4], q[5];
ry(5.102826451769778) q[1];
tdg q[2];
ry(1.4031691678430078) q[5];
sdg q[2];
cz q[1], q[6];
u3(0.7132280187051858, 0.07403773266665062, 2.9365443643402096) q[4];
sdg q[0];
id q[3];
rxx_4537079264(5.879523353757988) q[2], q[0];
x q[3];
cu3_4537076672(4.7952953795612965, 5.24350390025147, 1.6629932191512276) q[6], q[4];
x q[5];
y q[1];
swap q[5], q[2];
rz(0.14083511170613056) q[4];
u2(0.8148996708955638, 2.953150115542726) q[1];
s q[0];
ch q[3], q[6];
ccz q[2], q[4], q[1];
rxx_4537078160(5.651122751844327) q[0], q[6];
t q[3];
u1(3.9626476117693508) q[5];
dcx q[1], q[5];
dcx q[2], q[6];
csdg q[4], q[0];
p(4.50739133124965) q[3];
cy q[3], q[2];
ryy_4537078496(2.431935666512061) q[4], q[6];
sdg q[0];
xx_plus_yy_4537080608(4.209858998680319, 1.2154564596564903) q[5], q[1];
rccx q[4], q[2], q[6];
cx q[0], q[3];
h q[5];
t q[1];
u1(0.9827570938615767) q[1];
cz q[5], q[6];
csdg q[0], q[4];
dcx q[3], q[2];
ry(1.146304875933196) q[0];
crz(3.520655821841151) q[6], q[1];
rzx_4537081184(2.49745605882229) q[5], q[3];
xx_minus_yy_4537075808(6.18252486086572, 3.4048661017816313) q[4], q[2];
r_4537089248(1.6759820992282894, 5.8769252036217825) q[2];
ccx q[6], q[0], q[4];
cy q[1], q[5];
z q[3];
sdg q[5];
p(1.502150871677659) q[3];
cry(2.353052604983509) q[1], q[0];
p(2.3656485877546705) q[2];
U(3.4912113216930987, 3.817018538610112, 3.561535504052836) q[4];
z q[6];
swap q[2], q[1];
xx_plus_yy_4537079120(5.7044960188603255, 3.2771615086878105) q[6], q[4];
dcx q[0], q[3];
rx(2.8833190957694352) q[5];
y q[6];
u1(0.9273545653365624) q[4];
sdg q[1];
s q[2];
p(1.378256993394046) q[0];
u1(0.5716118473178327) q[3];
s q[5];
u3(2.6061684374649503, 1.4696568078832226, 2.4214020901448277) q[2];
c3sx q[1], q[0], q[6], q[4];
rxx_4537081136(1.9406940860377122) q[3], q[5];
ch q[0], q[2];
y q[1];
crx(2.762271488438079) q[3], q[6];
rzz_4537082576(5.450355428153861) q[4], q[5];
rzz_4537088288(4.839303155004783) q[2], q[6];
xx_plus_yy_4537085264(3.661212447901774, 0.5731337001795531) q[5], q[0];
h q[3];
tdg q[4];
t q[1];
sx q[2];
ecr q[0], q[4];
ryy_4537089344(1.8178762115068174) q[5], q[3];
sdg q[1];
rx(0.5352371079615789) q[6];
cry(2.767429361992912) q[1], q[5];
h q[0];
sdg q[3];
u2(3.7375691480669553, 5.602621621387404) q[4];
h q[2];
id q[6];
y q[5];
cry(4.400490323842208) q[0], q[1];
ccz q[6], q[3], q[2];
sxdg q[4];
tdg q[3];
rz(0.07354875394926562) q[6];
p(1.5295864742680836) q[1];
t q[0];
cry(4.889290575675568) q[5], q[2];
sxdg q[4];
ryy_4537075088(4.023679655926326) q[2], q[1];
cu3_4537087328(0.2214323391145524, 5.322355751411404, 2.0779130776185966) q[3], q[6];
cx q[5], q[0];
id q[4];
csdg q[1], q[2];
y q[4];
dcx q[3], q[6];
rz(0.6174165781217441) q[5];
h q[0];
sxdg q[3];
ecr q[1], q[0];
h q[2];
ryy_4537075856(2.5739120540504037) q[5], q[6];
id q[4];
swap q[3], q[5];
csdg q[4], q[0];
cry(1.4641729863449673) q[2], q[6];
sxdg q[1];
ryy_4537077872(6.27705990142926) q[0], q[6];
ccz q[3], q[5], q[4];
cry(0.22939815816586218) q[2], q[1];
ch q[2], q[3];
r_4537073840(4.7992013993306495, 5.537058053510434) q[5];
u3(2.1191880728755343, 2.5354952527643992, 0.3443700091091512) q[1];
tdg q[6];
swap q[0], q[4];
ccz q[5], q[4], q[6];
crz(3.2033662390545654) q[1], q[3];
cry(2.80552373024791) q[0], q[2];
rcccx q[0], q[4], q[1], q[5];
sxdg q[3];
cy q[2], q[6];
rxx_4537073744(1.4458207563305652) q[0], q[5];
y q[1];
t q[6];
crx(4.570716609640721) q[4], q[2];
x q[3];
c3sx q[0], q[5], q[4], q[6];
cp(2.8208355300149273) q[2], q[3];
h q[1];
cy q[4], q[1];
crx(2.0988263354939023) q[2], q[0];
id q[3];
cx q[6], q[5];
x q[3];
t q[6];
cswap q[1], q[2], q[5];
id q[0];
rx(2.354464440831665) q[4];
crx(5.025009943629154) q[3], q[0];
csdg q[4], q[5];
id q[2];
cu1_4537080080(4.621974025581359) q[1], q[6];
crz(6.089079926683196) q[2], q[1];
cu3_4537076432(4.378113163866653, 0.3408560805784613, 1.2996005198013045) q[3], q[0];
cz q[6], q[4];
ry(4.95308491467514) q[5];
cz q[3], q[4];
ch q[0], q[2];
t q[5];
cu3_4537077776(5.257836711543272, 1.1888155949107344, 3.626966636003605) q[6], q[1];
x q[6];
sdg q[1];
t q[2];
ecr q[3], q[4];
id q[5];
y q[0];
xx_plus_yy_4537084112(4.831216724744413, 1.7347527220197343) q[2], q[5];
ch q[6], q[0];
cu(6.14179705123984, 6.216797946239762, 0.5987148946643452, 4.694625646824426) q[3], q[4];
x q[1];
rx(5.326845622240369) q[2];
h q[5];
cs q[3], q[1];
csdg q[6], q[4];
u1(3.4044384636783844) q[0];
rxx_4534590960(3.665342728627613) q[6], q[2];
cswap q[3], q[4], q[0];
sxdg q[1];
y q[5];
ryy_4534592256(1.6244098206643813) q[6], q[0];
cu3_4532082096(0.7908742836539447, 5.8226779730397, 1.5110805354497592) q[3], q[1];
cs q[4], q[5];
U(4.444239670934033, 3.5146722917472526, 3.2379893485535223) q[2];
dcx q[1], q[2];
rzx_4513709232(1.932309758096314) q[0], q[5];
ecr q[3], q[6];
tdg q[4];
