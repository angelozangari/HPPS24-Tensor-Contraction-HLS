OPENQASM 3.0;
include "stdgates.inc";
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4564493008(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.641739849048323) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.292819017430025) _gate_q_1;
  ry(-1.292819017430025) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.641739849048323) _gate_q_0;
}
gate cu3_4564492672(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.1177394534963625) _gate_q_0;
  u1(-0.8595261059796546) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.763118168629502, 0, -3.1177394534963625) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.763118168629502, 3.977265559476017, 0) _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
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
gate cu3_4564488592(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.944606795116519) _gate_q_0;
  u1(-0.16636506630683412) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.49403720743499396, 0, -5.944606795116519) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.49403720743499396, 6.110971861423353, 0) _gate_q_1;
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
gate rxx_4564487920(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.4779338554804946) _gate_q_1;
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
gate xx_plus_yy_4564491424(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.7214577630163586) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.0769435149123527) _gate_q_1;
  ry(-2.0769435149123527) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.7214577630163586) _gate_q_0;
}
gate ryy_4564491280(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.453765962713225) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
qubit[12] q;
cry(2.2444301491750194) q[0], q[9];
u3(1.516711671031809, 0.8391739687231385, 5.611756085021904) q[11];
x q[7];
rz(4.706554992121211) q[10];
u1(5.491377546904453) q[1];
t q[2];
s q[4];
u2(2.69151830906735, 1.9875428368460575) q[5];
ecr q[3], q[8];
x q[6];
ecr q[9], q[7];
cz q[0], q[10];
xx_plus_yy_4564493008(2.58563803486005, 2.641739849048323) q[11], q[1];
cswap q[5], q[6], q[3];
u3(2.991193316123453, 3.060782124340846, 3.3124302929515093) q[8];
cu3_4564492672(5.526236337259004, 3.977265559476017, 2.258213347516708) q[4], q[2];
crz(4.990216222626882) q[2], q[9];
cs q[0], q[6];
cs q[4], q[1];
c3sx q[10], q[5], q[11], q[8];
id q[3];
t q[7];
cu3_4564488592(0.9880744148699879, 6.110971861423353, 5.778241728809685) q[7], q[9];
x q[0];
iswap q[3], q[5];
rccx q[4], q[8], q[6];
sdg q[10];
sxdg q[2];
csx q[1], q[11];
cx q[5], q[0];
cp(0.4837665807594936) q[2], q[6];
cry(0.42994777494139835) q[10], q[9];
iswap q[11], q[8];
ry(4.927822041681065) q[4];
rccx q[3], q[1], q[7];
cs q[3], q[5];
rxx_4564487920(2.4779338554804946) q[10], q[6];
crz(4.223919979703704) q[4], q[2];
c3sx q[11], q[0], q[8], q[7];
u1(2.518888987792067) q[9];
u2(2.540087903557804, 3.05590958177801) q[1];
u1(4.777458438449705) q[10];
cx q[5], q[1];
cx q[11], q[6];
csdg q[9], q[3];
x q[7];
t q[4];
csx q[8], q[2];
tdg q[0];
sxdg q[2];
ccz q[9], q[1], q[5];
rcccx q[4], q[6], q[10], q[8];
u3(4.529912307995704, 2.393355617612436, 3.2634076364851095) q[0];
csx q[3], q[7];
sdg q[11];
sx q[6];
sx q[9];
sdg q[1];
xx_plus_yy_4564491424(4.1538870298247055, 4.7214577630163586) q[0], q[2];
sxdg q[3];
z q[10];
swap q[11], q[4];
cz q[8], q[7];
ry(0.41931038149844374) q[5];
ryy_4564491280(4.453765962713225) q[2], q[4];
y q[1];
csdg q[5], q[7];
rccx q[9], q[6], q[8];
sx q[3];
cx q[11], q[0];
y q[10];
