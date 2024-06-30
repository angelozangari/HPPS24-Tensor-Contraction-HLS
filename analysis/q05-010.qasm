OPENQASM 3.0;
include "stdgates.inc";
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate r_4536746832(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.704547637251299, 3.618337779305783, -3.618337779305783) _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate xx_plus_yy_4536746976(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.6756560908193614) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.7349813074924335) _gate_q_1;
  ry(-0.7349813074924335) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.6756560908193614) _gate_q_0;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
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
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cu3_4536747360(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.596206132008465) _gate_q_0;
  u1(-0.6725618751033149) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.04234604957054125, 0, -2.596206132008465) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.04234604957054125, 3.2687680071117797, 0) _gate_q_1;
}
gate ryy_4536747408(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.07430416899979) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4536747648(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.3787363488323512) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.9219072416706214) _gate_q_0;
  ry(-0.9219072416706214) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.3787363488323512) _gate_q_1;
}
gate rzz_4536747696(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.856644916186174) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
qubit[5] q;
t q[1];
rz(4.206026862904349) q[2];
sxdg q[0];
r_4536746832(5.704547637251299, 5.1891341061006795) q[3];
t q[4];
csdg q[2], q[4];
cry(4.658402791158795) q[0], q[1];
ry(0.26965080619905124) q[3];
h q[0];
xx_plus_yy_4536746976(1.469962614984867, 1.6756560908193614) q[2], q[4];
iswap q[3], q[1];
u3(0.26600655520840455, 3.9586717083082954, 2.3334240414780285) q[1];
rcccx q[3], q[4], q[0], q[2];
rx(0.6054623126392097) q[1];
dcx q[0], q[2];
t q[3];
rx(0.8964645305579018) q[4];
u2(5.786888514249398, 5.6696655122652135) q[0];
dcx q[2], q[4];
u1(1.067078820097505) q[1];
rx(2.0408949775645797) q[3];
crx(0.48726233827564414) q[2], q[1];
cu3_4536747360(0.0846920991410825, 3.2687680071117797, 1.92364425690515) q[0], q[3];
sx q[4];
ryy_4536747408(5.07430416899979) q[0], q[1];
ch q[4], q[2];
U(2.013897657084981, 0.26941263767838475, 5.006229848825658) q[3];
z q[4];
xx_minus_yy_4536747648(1.8438144833412429, 1.3787363488323512) q[2], q[0];
swap q[1], q[3];
rzz_4536747696(5.856644916186174) q[1], q[0];
csx q[4], q[2];
sdg q[3];
