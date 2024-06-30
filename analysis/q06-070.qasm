OPENQASM 3.0;
include "stdgates.inc";
gate rzz_4541065616(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.837275154111231) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu1_4541065952(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.404995712647625) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.404995712647625) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.404995712647625) _gate_q_1;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4541065904(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.265518077433505) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.4889481920728718) _gate_q_1;
  ry(-0.4889481920728718) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.265518077433505) _gate_q_0;
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
gate rzz_4541066960(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.2739783661401121) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4541069456(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.6441092123477774) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4541071232(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.3201493858259126) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4541064608(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.738980616071437) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4541068592(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.4968209879309892) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.590381061538988) _gate_q_0;
  ry(-0.590381061538988) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.4968209879309892) _gate_q_1;
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
gate ryy_4541067248(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.498070439034568) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4541067824(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1233245331423307) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4541062880(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.3687778664714334, -0.35357386240196154, 0.35357386240196154) _gate_q_0;
}
gate ryy_4541067872(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.648561245005062) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4541067728(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(6.16788739433799) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
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
gate rzx_4541068352(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.128214192508138) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4541068544(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.4220194065775316) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4541068640(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.457878277499083) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4541068448(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.9526121165833104) _gate_q_0;
  u1(-0.22239991068489395) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-3.118045410384393, 0, -3.9526121165833104) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(3.118045410384393, 4.175012027268204, 0) _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate xx_minus_yy_4541068496(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.5332761791805696) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.986475494458737) _gate_q_0;
  ry(-2.986475494458737) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.5332761791805696) _gate_q_1;
}
gate rxx_4541069072(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.5728823032502333) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4541068976(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.9234156209182567) _gate_q_0;
  u1(0.18572011960190293) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.9226608722000129, 0, -1.9234156209182567) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.9226608722000129, 1.7376955013163538, 0) _gate_q_1;
}
gate xx_minus_yy_4541069936(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.3276046182120157) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.8149842160019167) _gate_q_0;
  ry(-2.8149842160019167) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.3276046182120157) _gate_q_1;
}
gate ryy_4541069552(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.150166673965448) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4541070176(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.7359070756470734) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.207058251744957) _gate_q_0;
  ry(-1.207058251744957) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.7359070756470734) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate r_4541069696(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.8175727720452302, 1.9198143310447042, -1.9198143310447042) _gate_q_0;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate ryy_4541070224(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.100374255469149) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4541071328(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.2661594460133838, 2.4961129200091774, -2.4961129200091774) _gate_q_0;
}
gate rzx_4541071136(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.0186683343593042) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4541070656(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.4497260306331756) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.4497260306331756) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.4497260306331756) _gate_q_1;
}
gate rxx_4541069840(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.22761107551417284) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4541070752(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.551765177531954) _gate_q_0;
  u1(-0.9400590205672537) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.33393451522259154, 0, -4.551765177531954) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.33393451522259154, 5.4918241980992075, 0) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate r_4541069744(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.6035811761598073, 0.38429235847218446, -0.38429235847218446) _gate_q_0;
}
gate ryy_4538096128(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.745334331832369) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4538093488(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.8996995078741525) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538092576(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.588185136873439, 1.4023570995189498, -1.4023570995189498) _gate_q_0;
}
gate xx_minus_yy_4538096800(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.4580103302464085) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.4067234779019098) _gate_q_0;
  ry(-1.4067234779019098) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.4580103302464085) _gate_q_1;
}
gate rzz_4538092672(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.1036163044910932) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4538092336(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.6663888042736914, -0.5016784543259292, 0.5016784543259292) _gate_q_0;
}
gate cu1_4538092048(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.4468329619357427) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.4468329619357427) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.4468329619357427) _gate_q_1;
}
gate rzz_4538091232(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.305255992166122) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4538089840(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1177400883469677) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4538090752(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.324890331312229) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4538090128(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.862559996562945) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4538089888(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.9811411456378818) _gate_q_0;
  u1(1.3931838423086824) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.2760614674338655, 0, -1.9811411456378818) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.2760614674338655, 0.5879573033291994, 0) _gate_q_1;
}
gate xx_minus_yy_4538091424(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.1160094020127392) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.6911553667741288) _gate_q_0;
  ry(-1.6911553667741288) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.1160094020127392) _gate_q_1;
}
qubit[6] q;
u3(5.360915063432748, 2.8450905846862073, 3.991062511242541) q[2];
rzz_4541065616(4.837275154111231) q[0], q[1];
s q[5];
cu1_4541065952(2.80999142529525) q[4], q[3];
y q[4];
t q[5];
c3sx q[2], q[3], q[1], q[0];
rcccx q[5], q[2], q[1], q[3];
sxdg q[4];
tdg q[0];
s q[0];
u1(3.7688603089597383) q[4];
xx_plus_yy_4541065904(0.9778963841457436, 1.265518077433505) q[1], q[2];
ecr q[3], q[5];
ry(4.386906680028111) q[1];
rzz_4541066960(0.2739783661401121) q[2], q[3];
y q[5];
ry(3.266610404934208) q[0];
p(4.5392441544413975) q[4];
sx q[4];
rz(3.603520244740975) q[3];
rzx_4541069456(1.6441092123477774) q[1], q[0];
x q[2];
u2(4.1668980776945315, 4.89300181689637) q[5];
ryy_4541071232(1.3201493858259126) q[5], q[2];
rz(0.27927662495243677) q[3];
h q[0];
rzx_4541064608(1.738980616071437) q[1], q[4];
sxdg q[4];
rx(3.341587472715309) q[1];
ch q[3], q[0];
xx_minus_yy_4541068592(1.180762123077976, 0.4968209879309892) q[2], q[5];
rccx q[4], q[1], q[2];
cswap q[5], q[0], q[3];
ryy_4541067248(5.498070439034568) q[2], q[4];
cu(1.4586444492832917, 4.407705098976683, 5.710542160026009, 2.2953398624680075) q[5], q[0];
h q[1];
sdg q[3];
cry(1.6523411453833083) q[2], q[4];
y q[3];
rzx_4541067824(1.1233245331423307) q[0], q[1];
rz(0.5021634255523542) q[5];
z q[4];
r_4541062880(0.3687778664714334, 1.217222464392935) q[0];
crx(5.535765092045411) q[1], q[3];
ryy_4541067872(3.648561245005062) q[5], q[2];
rzz_4541067728(6.16788739433799) q[2], q[5];
cry(2.4320818194455995) q[0], q[3];
cy q[1], q[4];
dcx q[0], q[4];
y q[1];
y q[2];
cx q[3], q[5];
cx q[3], q[5];
y q[2];
ch q[1], q[0];
id q[4];
ccx q[5], q[4], q[0];
t q[1];
u3(0.0719246700385497, 5.5656354271213315, 4.738299784682535) q[3];
sx q[2];
csx q[3], q[5];
rzx_4541068352(4.128214192508138) q[0], q[4];
rzz_4541068544(1.4220194065775316) q[2], q[1];
cp(4.275536731805893) q[0], q[4];
y q[3];
rz(6.246622812836888) q[5];
id q[1];
rx(4.132462163150551) q[2];
rzz_4541068640(2.457878277499083) q[3], q[5];
cu3_4541068448(6.236090820768786, 4.175012027268204, 3.7302122058984164) q[1], q[2];
cry(2.009316679842905) q[4], q[0];
csdg q[2], q[1];
xx_minus_yy_4541068496(5.972950988917474, 1.5332761791805696) q[5], q[4];
cu(4.351628158857192, 1.7388778728650087, 3.8010470020062552, 4.75799943274661) q[3], q[0];
rxx_4541069072(2.5728823032502333) q[5], q[4];
ry(3.336722235585231) q[2];
ecr q[1], q[0];
u3(4.652127576799774, 4.3851027383134715, 1.3955881255640297) q[3];
h q[0];
rccx q[4], q[5], q[3];
u1(0.9551122194713412) q[1];
U(2.298837595949893, 0.20241083869242474, 3.0069668242844343) q[2];
rx(4.5149885890550925) q[0];
csdg q[1], q[5];
rx(4.528961444345463) q[2];
cu3_4541068976(1.8453217444000258, 1.7376955013163538, 2.1091357405201596) q[3], q[4];
crz(2.2185561684993798) q[5], q[3];
xx_minus_yy_4541069936(5.6299684320038335, 0.3276046182120157) q[2], q[4];
cz q[0], q[1];
dcx q[2], q[1];
u1(5.607420699147603) q[5];
rx(3.098313878971643) q[4];
cy q[3], q[0];
ryy_4541069552(2.150166673965448) q[3], q[0];
crz(2.6252441979012326) q[1], q[5];
xx_minus_yy_4541070176(2.414116503489914, 1.7359070756470734) q[2], q[4];
ccx q[3], q[5], q[2];
ccz q[1], q[4], q[0];
r_4541069696(0.8175727720452302, 3.490610657839601) q[4];
U(2.437380695938163, 0.6420882717211511, 0.6240148950171687) q[0];
c3sx q[3], q[2], q[1], q[5];
cy q[2], q[4];
s q[5];
u3(2.8208269904567693, 2.613887352524383, 5.775983544577557) q[3];
tdg q[0];
sx q[1];
cs q[4], q[1];
crz(5.8229115304492955) q[3], q[0];
z q[2];
h q[5];
crz(3.58832092462522) q[5], q[3];
cry(1.8820081429810775) q[0], q[4];
sdg q[1];
sdg q[2];
crz(2.8275491829108885) q[3], q[5];
cs q[2], q[0];
sxdg q[4];
tdg q[1];
crz(3.5427011906814254) q[5], q[0];
x q[1];
ryy_4541070224(4.100374255469149) q[2], q[4];
U(1.8555377228400836, 6.156904374593875, 4.728326430110901) q[3];
ch q[1], q[0];
ry(0.8591030029335535) q[3];
csdg q[2], q[5];
sx q[4];
ccz q[2], q[1], q[0];
ccz q[4], q[5], q[3];
y q[5];
rz(4.510327131772519) q[2];
r_4541071328(1.2661594460133838, 4.066909246804074) q[0];
u2(0.0890153873466666, 2.6268444401178135) q[3];
s q[1];
sxdg q[4];
cu(4.173394515191516, 0.3155857876433242, 4.5814513494063585, 1.8093239826809915) q[2], q[5];
u3(1.4149229636022747, 0.4704849107907071, 4.881244180531396) q[4];
s q[0];
rzx_4541071136(1.0186683343593042) q[1], q[3];
dcx q[0], q[2];
cu1_4541070656(2.8994520612663512) q[4], q[5];
crz(1.34892408547797) q[3], q[1];
p(4.050263204162294) q[0];
p(5.1334262602854075) q[4];
rxx_4541069840(0.22761107551417284) q[2], q[3];
u1(2.504969158211804) q[1];
sdg q[5];
cu3_4541070752(0.6678690304451831, 5.4918241980992075, 3.6117061569647) q[0], q[4];
iswap q[5], q[1];
sdg q[2];
ry(6.276972854353608) q[3];
cs q[0], q[3];
r_4541069744(1.6035811761598073, 1.955088685267081) q[4];
t q[1];
cy q[5], q[2];
cp(2.206581148874286) q[0], q[1];
x q[2];
ccz q[5], q[4], q[3];
rcccx q[1], q[3], q[2], q[4];
u2(2.509261304953385, 2.2096694652511255) q[5];
u3(4.321290218140166, 4.2468508281743205, 1.7743581492832476) q[0];
ryy_4538096128(3.745334331832369) q[4], q[0];
ryy_4538093488(4.8996995078741525) q[2], q[1];
u1(3.470216927154221) q[5];
rx(3.225299848957262) q[3];
c3sx q[0], q[4], q[5], q[3];
iswap q[2], q[1];
rccx q[1], q[4], q[5];
cy q[3], q[0];
sdg q[2];
u2(3.0948366402129563, 5.424971449346274) q[2];
ccx q[4], q[0], q[3];
ch q[5], q[1];
swap q[1], q[3];
id q[0];
ccx q[5], q[4], q[2];
cp(5.902129058190466) q[4], q[5];
r_4538092576(3.588185136873439, 2.9731534263138464) q[0];
xx_minus_yy_4538096800(2.8134469558038195, 0.4580103302464085) q[1], q[2];
sdg q[3];
cry(2.3538432175179205) q[2], q[4];
x q[1];
ecr q[0], q[5];
ry(1.9644239457590666) q[3];
rzz_4538092672(1.1036163044910932) q[4], q[0];
ry(3.853595512046014) q[1];
sxdg q[2];
U(4.628107921716424, 3.788885958379995, 2.1241037387635857) q[3];
r_4538092336(0.6663888042736914, 1.0691178724689674) q[5];
id q[1];
cu(2.467475460412636, 1.1124451436223457, 2.356147871501165, 4.575945890919216) q[4], q[5];
crx(3.6549478234271624) q[3], q[0];
u2(5.923706170084134, 0.3663042682690908) q[2];
s q[0];
rccx q[5], q[4], q[3];
iswap q[1], q[2];
ch q[0], q[3];
s q[5];
ecr q[4], q[2];
x q[1];
csdg q[2], q[1];
z q[4];
z q[0];
z q[5];
h q[3];
cswap q[1], q[5], q[4];
sdg q[0];
sdg q[3];
U(3.8557199919642664, 5.34894893264323, 0.17605159326963946) q[2];
u2(3.479238160865825, 1.498379579870505) q[0];
cu(3.4536233732973933, 3.7812469647505034, 3.7641127398101255, 5.586178176818647) q[5], q[2];
cu1_4538092048(4.8936659238714855) q[4], q[3];
id q[1];
cswap q[5], q[2], q[1];
ccx q[0], q[3], q[4];
p(5.221997347489334) q[4];
crz(4.023367733493688) q[1], q[2];
s q[3];
rzz_4538091232(2.305255992166122) q[5], q[0];
ryy_4538089840(1.1177400883469677) q[2], q[1];
id q[0];
s q[5];
sxdg q[4];
h q[3];
t q[1];
ccz q[0], q[2], q[4];
ecr q[3], q[5];
p(5.308103140912032) q[5];
ccx q[0], q[1], q[3];
tdg q[2];
ry(5.212764601507198) q[4];
u2(2.79029005613458, 4.977603962447683) q[2];
sx q[5];
rzx_4538090752(4.324890331312229) q[4], q[1];
t q[3];
y q[0];
U(4.799896143290772, 4.632751767877776, 3.1925969690122105) q[2];
ryy_4538090128(4.862559996562945) q[1], q[3];
ry(2.575079291037925) q[4];
dcx q[5], q[0];
cswap q[1], q[3], q[4];
iswap q[0], q[2];
rx(3.54398826645626) q[5];
ecr q[1], q[0];
crz(6.160793777384861) q[3], q[4];
x q[5];
id q[2];
cu3_4538089888(2.552122934867731, 0.5879573033291994, 3.374324987946564) q[2], q[5];
p(2.7624350873734698) q[1];
u1(5.290430031979099) q[4];
x q[3];
rz(3.134322708742724) q[0];
p(2.9049920818000516) q[5];
rcccx q[0], q[4], q[1], q[2];
U(0.8348857324521053, 0.5467451351628747, 1.8045858832050385) q[3];
sdg q[4];
cs q[0], q[2];
u2(4.514638416139203, 5.9066763228063826) q[5];
xx_minus_yy_4538091424(3.3823107335482576, 0.1160094020127392) q[1], q[3];
cs q[0], q[4];
z q[1];
crz(1.3729212111007303) q[2], q[3];
t q[5];
