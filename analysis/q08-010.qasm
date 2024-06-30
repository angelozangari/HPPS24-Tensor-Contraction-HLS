OPENQASM 3.0;
include "stdgates.inc";
gate rzz_4564518384(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.7740149121700854) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4564520688(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.9689482555871447, -0.12759075025188027, 0.12759075025188027) _gate_q_0;
}
gate cu3_4564518960(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.2998818776499583) _gate_q_0;
  u1(-0.7388928404872657) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.3812568780884993, 0, -1.2998818776499583) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.3812568780884993, 2.038774718137224, 0) _gate_q_1;
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
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate r_4564519632(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.9533727804761687, 3.063249104961737, -3.063249104961737) _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
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
gate cu1_4564520544(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.0292243314986473) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.0292243314986473) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.0292243314986473) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
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
gate ryy_4564523712(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.33062240550115) _gate_q_1;
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
gate cu3_4564518912(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.6648674755217563) _gate_q_0;
  u1(1.3710098830709527) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.20927326000598, 0, -1.6648674755217563) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.20927326000598, 0.2938575924508036, 0) _gate_q_1;
}
gate rzx_4564521744(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.418327098060791) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4564521888(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.7769070410986747) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-3.0092174009565213) _gate_q_1;
  ry(-3.0092174009565213) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.7769070410986747) _gate_q_0;
}
qubit[8] q;
y q[6];
rzz_4564518384(5.7740149121700854) q[1], q[7];
r_4564520688(1.9689482555871447, 1.4432055765430163) q[4];
cu3_4564518960(4.762513756176999, 2.038774718137224, 0.5609890371626927) q[2], q[0];
ecr q[3], q[5];
ch q[4], q[1];
sx q[5];
dcx q[6], q[3];
p(2.984684583984407) q[0];
r_4564519632(1.9533727804761687, 4.6340454317566335) q[7];
sdg q[2];
dcx q[5], q[2];
csdg q[7], q[3];
csx q[6], q[0];
csx q[4], q[1];
h q[7];
cp(0.4357650513414107) q[1], q[3];
cu1_4564520544(4.058448662997295) q[4], q[0];
iswap q[5], q[6];
u3(4.085813757379587, 1.8210560536401839, 1.9930742093939582) q[2];
rccx q[6], q[1], q[5];
ryy_4564523712(2.33062240550115) q[4], q[2];
sx q[3];
U(3.55706692687425, 6.230226914374748, 0.6209557637559552) q[7];
u1(1.3250305805989724) q[0];
cu(3.6611260275702096, 5.0024165763883195, 6.114962462669227, 3.163895354005817) q[4], q[7];
crx(4.716006424237571) q[1], q[0];
rcccx q[5], q[3], q[2], q[6];
cu3_4564518912(2.41854652001196, 0.2938575924508036, 3.035877358592709) q[3], q[2];
s q[6];
cry(6.210526359100029) q[5], q[1];
ry(1.5167942217286867) q[4];
u1(4.944974382732637) q[7];
sx q[0];
crx(0.7658306965486115) q[2], q[4];
ccx q[6], q[5], q[1];
swap q[3], q[0];
p(0.14217879777267953) q[7];
rzx_4564521744(3.418327098060791) q[2], q[7];
c3sx q[3], q[1], q[5], q[0];
p(4.417840127711151) q[6];
sdg q[4];
xx_plus_yy_4564521888(6.018434801913043, 1.7769070410986747) q[7], q[4];
csx q[0], q[6];
cy q[1], q[2];
swap q[3], q[5];
