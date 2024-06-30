OPENQASM 3.0;
include "stdgates.inc";
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4564427376(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.475346654969551) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5815485693299594) _gate_q_1;
  ry(-2.5815485693299594) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.475346654969551) _gate_q_0;
}
gate r_4564427856(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.7143015931169105, 0.9977273693715043, -0.9977273693715043) _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
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
gate xx_minus_yy_4564427472(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.5210672060313852) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.859846341361816) _gate_q_0;
  ry(-2.859846341361816) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.5210672060313852) _gate_q_1;
}
gate xx_plus_yy_4564428576(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.5669944868591037) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.6062843130709308) _gate_q_1;
  ry(-1.6062843130709308) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.5669944868591037) _gate_q_0;
}
gate r_4564428528(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.252643780636036, -0.1467448622469607, 0.1467448622469607) _gate_q_0;
}
gate rzz_4564428384(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.2356577896070386) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
qubit[6] q;
cx q[5], q[0];
xx_plus_yy_4564427376(5.163097138659919, 1.475346654969551) q[2], q[4];
r_4564427856(0.7143015931169105, 2.568523696166401) q[3];
tdg q[1];
cu(4.430851146411631, 3.748311128507647, 1.1291147390108782, 5.318518849079289) q[1], q[2];
ccz q[3], q[5], q[4];
sxdg q[0];
sx q[4];
u1(2.654894585568766) q[3];
cx q[0], q[5];
U(1.329255621958666, 6.0924749618236005, 0.5320621454020725) q[2];
p(0.7140542498498372) q[1];
c3sx q[4], q[0], q[3], q[5];
rz(1.1361568171275251) q[1];
t q[2];
y q[3];
xx_minus_yy_4564427472(5.719692682723632, 0.5210672060313852) q[2], q[5];
ry(0.7291907674625702) q[1];
z q[0];
rz(3.1843999463481607) q[4];
u2(0.15852571809063193, 4.363868353254932) q[2];
sxdg q[4];
sxdg q[0];
xx_plus_yy_4564428576(3.2125686261418616, 1.5669944868591037) q[3], q[5];
tdg q[1];
r_4564428528(6.252643780636036, 1.4240514645479359) q[4];
h q[5];
rzz_4564428384(2.2356577896070386) q[3], q[2];
u1(0.012299668940092087) q[0];
s q[1];
c3sx q[5], q[1], q[4], q[2];
cry(0.478355999871457) q[3], q[0];
U(3.7386732763076282, 0.7329735592601471, 5.21975470941115) q[3];
sxdg q[5];
swap q[0], q[2];
y q[4];
u3(5.5692895611282065, 4.7373695272313, 5.70886590839455) q[1];
dcx q[2], q[5];
cswap q[0], q[4], q[3];
ry(2.6886503704839693) q[1];
