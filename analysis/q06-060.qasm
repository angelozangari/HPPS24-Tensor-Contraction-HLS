OPENQASM 3.0;
include "stdgates.inc";
gate rzz_4539921088(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.6576853471740634) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4539924448(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.4046192865924936) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.568684576590743) _gate_q_1;
  ry(-1.568684576590743) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.4046192865924936) _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate cu3_4539921280(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.272864880555903) _gate_q_0;
  u1(-0.11325925180108132) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.9226902769812106, 0, -3.272864880555903) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.9226902769812106, 3.3861241323569846, 0) _gate_q_1;
}
gate cu1_4539924400(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.6089644123143834) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.6089644123143834) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.6089644123143834) _gate_q_1;
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
gate rxx_4539922912(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.004501830554647) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4539920560(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.3404922157112062) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.7576056471531876) _gate_q_0;
  ry(-1.7576056471531876) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.3404922157112062) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate r_4539923248(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.6540594532726913, -0.6092623316555371, 0.6092623316555371) _gate_q_0;
}
gate r_4539923200(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.38345668350069295, 2.4932901219434163, -2.4932901219434163) _gate_q_0;
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
gate r_4539920752(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.5071608199884736, 3.091407303067329, -3.091407303067329) _gate_q_0;
}
gate rzz_4539921904(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.1416032930956033) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4539916192(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.409536667819638, 2.0904269625918364, -2.0904269625918364) _gate_q_0;
}
gate rxx_4539922240(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.990115119244587) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4539918688(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.1710889658930537) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.4013417370362674) _gate_q_1;
  ry(-0.4013417370362674) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.1710889658930537) _gate_q_0;
}
gate cu3_4539922144(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.8377353347218421) _gate_q_0;
  u1(-0.6889865087162952) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1330429871846892, 0, -0.8377353347218421) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1330429871846892, 1.5267218434381373, 0) _gate_q_1;
}
gate cu1_4539920896(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.7647797316616456) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.7647797316616456) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.7647797316616456) _gate_q_1;
}
gate rzx_4539921760(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.064818334550399) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4539923344(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.067323165144537) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.9487866523430744) _gate_q_0;
  ry(-0.9487866523430744) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.067323165144537) _gate_q_1;
}
gate ryy_4539921808(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.8567218785444033) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_plus_yy_4539920512(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.207585326829137) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.8242167859374718) _gate_q_1;
  ry(-0.8242167859374718) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.207585326829137) _gate_q_0;
}
gate cu1_4539918304(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.43143082926240905) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.43143082926240905) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.43143082926240905) _gate_q_1;
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
gate r_4539920608(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.2406332157660689, -1.27945643629127, 1.27945643629127) _gate_q_0;
}
gate rzz_4539919552(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.7795259159354164) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4539916096(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.11141290096978) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4539919648(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.565540155419944) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.15554526554822554) _gate_q_0;
  ry(-0.15554526554822554) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.565540155419944) _gate_q_1;
}
gate ryy_4539920272(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.43366631701451114) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate rzz_4539916624(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.045504745380822) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_plus_yy_4538042464(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.02765390121821) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.5684349269325225) _gate_q_1;
  ry(-0.5684349269325225) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.02765390121821) _gate_q_0;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate xx_minus_yy_4534738992(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.583525658037996) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.0705825331593877) _gate_q_0;
  ry(-1.0705825331593877) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.583525658037996) _gate_q_1;
}
gate rxx_4536547856(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.679005976020822) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4533908400(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.5064639902127253) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4536746400(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.29259956278131) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4536749856(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.3223993322934886) _gate_q_0;
  u1(-0.9240257132898309) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.8130403514903177, 0, -2.3223993322934886) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.8130403514903177, 3.2464250455833197, 0) _gate_q_1;
}
gate rzx_4536753552(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.643487664219362) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4539919264(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.0513657340137528) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.1234903132144747) _gate_q_1;
  ry(-2.1234903132144747) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.0513657340137528) _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate rxx_4536746544(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.860131482685693) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4536750720(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.20436698729645028) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.20436698729645028) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.20436698729645028) _gate_q_1;
}
gate r_4536752448(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.291512179131462, 4.3520392968523565, -4.3520392968523565) _gate_q_0;
}
gate cu3_4536754752(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.7224745491183753) _gate_q_0;
  u1(1.9000189696104202) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.205185954555738, 0, -3.7224745491183753) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.205185954555738, 1.8224555795079553, 0) _gate_q_1;
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
gate ryy_4536751248(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.815763486083391) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4536751536(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.9166643505975465) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4536750624(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.7216653414723745) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
qubit[6] q;
rzz_4539921088(1.6576853471740634) q[5], q[4];
xx_plus_yy_4539924448(3.137369153181486, 3.4046192865924936) q[1], q[0];
cx q[2], q[3];
swap q[4], q[5];
csdg q[1], q[2];
cu3_4539921280(5.845380553962421, 3.3861241323569846, 3.159605628754822) q[0], q[3];
crx(1.540073873630271) q[3], q[1];
h q[5];
cu1_4539924400(3.2179288246287667) q[4], q[2];
rx(5.620492593567573) q[0];
ccx q[0], q[2], q[5];
ch q[4], q[1];
y q[3];
rcccx q[5], q[3], q[4], q[0];
rxx_4539922912(3.004501830554647) q[2], q[1];
u2(1.1141462740103456, 0.21257039515090706) q[2];
xx_minus_yy_4539920560(3.515211294306375, 1.3404922157112062) q[0], q[3];
iswap q[5], q[4];
U(2.923442918050144, 4.873268107787039, 4.775418461895698) q[1];
U(4.905035133349827, 4.029588778512294, 1.0256923701290253) q[4];
h q[2];
t q[5];
tdg q[1];
r_4539923248(1.6540594532726913, 0.9615339951393594) q[3];
r_4539923200(0.38345668350069295, 4.064086448738313) q[0];
csx q[5], q[4];
cu(3.7519020720162537, 4.673338800536783, 4.915294111511836, 5.845987445662985) q[0], q[2];
cp(1.4240375600885864) q[1], q[3];
rx(4.363848373176168) q[1];
ecr q[4], q[0];
r_4539920752(0.5071608199884736, 4.662203629862225) q[3];
y q[2];
x q[5];
crx(0.5843773217284293) q[2], q[4];
swap q[5], q[0];
iswap q[1], q[3];
cry(1.9052230873758118) q[2], q[4];
ch q[5], q[1];
csdg q[3], q[0];
u3(4.473441703294616, 2.048677440151796, 2.7833131251334224) q[4];
rzz_4539921904(3.1416032930956033) q[1], q[2];
ccx q[0], q[3], q[5];
csdg q[1], q[5];
p(0.7120509855744498) q[3];
cx q[4], q[0];
r_4539916192(3.409536667819638, 3.661223289386733) q[2];
rxx_4539922240(5.990115119244587) q[4], q[1];
z q[2];
csx q[5], q[0];
sdg q[3];
xx_plus_yy_4539918688(0.8026834740725348, 2.1710889658930537) q[1], q[3];
s q[5];
rx(1.0355533981518967) q[0];
ch q[4], q[2];
cu3_4539922144(2.2660859743693784, 1.5267218434381373, 0.14874882600554692) q[3], q[0];
u1(5.985385765063613) q[5];
cp(1.3155490552931441) q[2], q[1];
x q[4];
y q[5];
cu1_4539920896(3.529559463323291) q[2], q[3];
rzx_4539921760(4.064818334550399) q[0], q[1];
sxdg q[4];
xx_minus_yy_4539923344(1.8975733046861487, 2.067323165144537) q[4], q[1];
cy q[0], q[3];
ryy_4539921808(0.8567218785444033) q[5], q[2];
s q[5];
cry(4.625877658181849) q[2], q[3];
id q[1];
xx_plus_yy_4539920512(1.6484335718749437, 3.207585326829137) q[0], q[4];
id q[0];
cu1_4539918304(0.8628616585248181) q[1], q[2];
cx q[4], q[3];
sdg q[5];
rccx q[5], q[4], q[2];
tdg q[3];
p(2.7208372789268434) q[0];
h q[1];
p(2.471255520695694) q[1];
rx(4.931096010535734) q[3];
h q[2];
r_4539920608(1.2406332157660689, 0.2913398905036266) q[5];
x q[0];
p(0.03505735024168845) q[4];
ch q[1], q[4];
iswap q[3], q[0];
sdg q[2];
rz(3.338824381662039) q[5];
rzz_4539919552(2.7795259159354164) q[4], q[5];
t q[1];
rxx_4539916096(6.11141290096978) q[3], q[2];
id q[0];
xx_minus_yy_4539919648(0.3110905310964511, 5.565540155419944) q[2], q[1];
cz q[0], q[4];
ry(4.063140796832478) q[3];
x q[5];
cy q[2], q[0];
cry(6.279758812381992) q[5], q[4];
u2(5.351630903299767, 3.7791928437403044) q[1];
x q[3];
u3(4.934021916252913, 3.583318698130823, 5.5036951971303765) q[1];
ryy_4539920272(0.43366631701451114) q[4], q[2];
swap q[0], q[3];
u1(4.698561938709843) q[5];
rcccx q[0], q[3], q[1], q[5];
y q[4];
rz(2.1548364939470086) q[2];
cz q[1], q[3];
iswap q[5], q[0];
crx(4.894718766018243) q[2], q[4];
crx(2.430854448250084) q[1], q[2];
cp(3.921946349371616) q[3], q[0];
crz(5.062782101699578) q[5], q[4];
ccz q[5], q[2], q[4];
cy q[1], q[3];
u1(2.7302959529674347) q[0];
cu(6.260917507182276, 4.236382869458938, 3.040500493379462, 0.9717487884782269) q[2], q[5];
cy q[3], q[4];
tdg q[1];
rx(6.27389249744002) q[0];
t q[3];
sx q[4];
ry(0.9886746486320462) q[1];
rzz_4539916624(3.045504745380822) q[0], q[2];
sxdg q[5];
z q[2];
ccz q[0], q[1], q[4];
h q[3];
rz(2.1944573180288662) q[5];
t q[5];
sx q[4];
x q[2];
xx_plus_yy_4538042464(1.136869853865045, 5.02765390121821) q[0], q[3];
p(3.4538008830527804) q[1];
swap q[4], q[3];
csx q[0], q[5];
y q[2];
p(3.8706023754924086) q[1];
cs q[0], q[3];
id q[1];
rx(4.410317078723716) q[5];
sxdg q[4];
x q[2];
cy q[2], q[0];
xx_minus_yy_4534738992(2.1411650663187753, 4.583525658037996) q[3], q[5];
rxx_4536547856(3.679005976020822) q[1], q[4];
s q[3];
sxdg q[1];
cswap q[2], q[0], q[5];
z q[4];
ccz q[2], q[3], q[5];
x q[1];
swap q[0], q[4];
cswap q[5], q[1], q[0];
swap q[4], q[3];
p(3.613416240707272) q[2];
ryy_4533908400(3.5064639902127253) q[2], q[3];
ry(4.324554719662116) q[0];
rzx_4536746400(5.29259956278131) q[4], q[1];
u1(1.4577506938985236) q[5];
cu3_4536749856(5.6260807029806355, 3.2464250455833197, 1.398373619003658) q[2], q[5];
ccx q[0], q[3], q[1];
sxdg q[4];
rzx_4536753552(5.643487664219362) q[5], q[2];
h q[3];
ecr q[4], q[0];
h q[1];
rccx q[5], q[2], q[1];
cx q[0], q[3];
id q[4];
csdg q[2], q[4];
xx_plus_yy_4539919264(4.246980626428949, 1.0513657340137528) q[1], q[3];
dcx q[5], q[0];
crx(5.286236466465842) q[0], q[3];
cu(5.725144281792737, 2.4713155507770677, 0.14161806414929412, 0.7914358276398586) q[5], q[4];
rxx_4536746544(2.860131482685693) q[2], q[1];
u1(0.5980843485362847) q[3];
cx q[0], q[1];
cswap q[4], q[2], q[5];
rcccx q[1], q[3], q[2], q[4];
rz(0.6623877934296379) q[0];
u1(3.161250714886658) q[5];
crz(0.7286333439391179) q[1], q[0];
cp(3.2991845763885093) q[2], q[5];
u3(5.3643913794716065, 3.768067190870947, 4.013578564849773) q[4];
u1(0.5076133315131596) q[3];
ccz q[0], q[3], q[2];
dcx q[4], q[5];
t q[1];
u3(2.8053711894490285, 5.898238631917892, 1.9426164650548212) q[2];
rccx q[0], q[4], q[1];
cu1_4536750720(0.40873397459290056) q[5], q[3];
cs q[3], q[5];
r_4536752448(4.291512179131462, 5.922835623647253) q[1];
ch q[2], q[4];
h q[0];
rcccx q[3], q[2], q[4], q[0];
h q[5];
id q[1];
csdg q[4], q[0];
h q[2];
p(1.217848230572896) q[5];
z q[1];
s q[3];
ry(0.5861136357117027) q[4];
csdg q[2], q[1];
cu3_4536754752(4.410371909111476, 1.8224555795079553, 5.622493518728795) q[5], q[0];
t q[3];
c3sx q[2], q[1], q[5], q[0];
ryy_4536751248(3.815763486083391) q[3], q[4];
rxx_4536751536(2.9166643505975465) q[3], q[0];
s q[4];
iswap q[1], q[2];
x q[5];
sxdg q[2];
p(0.21922615982781285) q[5];
ry(0.5893929485365889) q[4];
cz q[0], q[1];
U(3.5940355764954486, 3.5451535204398574, 4.096022348867531) q[3];
u1(3.0373903535937403) q[0];
ryy_4536750624(0.7216653414723745) q[5], q[1];
sxdg q[3];
cry(0.5741609138929247) q[2], q[4];
