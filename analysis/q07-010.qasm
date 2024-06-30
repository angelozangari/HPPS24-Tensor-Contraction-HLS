OPENQASM 3.0;
include "stdgates.inc";
gate ryy_4564496992(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.2530871902620113) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate cu1_4564497184(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.46324650104424697) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.46324650104424697) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.46324650104424697) _gate_q_1;
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
gate rzz_4564495840(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.6120902733834466) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4564497952(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.7216926043020907) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.1957696846491819) _gate_q_0;
  ry(-1.1957696846491819) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.7216926043020907) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate ryy_4564497712(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.524546081179745) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4564495408(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.1574533680286838) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.1574533680286838) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.1574533680286838) _gate_q_1;
}
gate r_4564496752(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.140854727766151, 4.112733174991313, -4.112733174991313) _gate_q_0;
}
qubit[7] q;
ryy_4564496992(1.2530871902620113) q[5], q[4];
rccx q[0], q[1], q[6];
x q[3];
sxdg q[2];
sdg q[1];
u2(1.2723100951081494, 5.142422767009706) q[4];
ccz q[5], q[0], q[2];
csdg q[3], q[6];
cry(3.9904875483260867) q[5], q[1];
ch q[3], q[4];
cu1_4564497184(0.9264930020884939) q[0], q[2];
z q[6];
rz(2.623993708744345) q[0];
cy q[3], q[5];
csx q[4], q[2];
cx q[1], q[6];
rcccx q[3], q[6], q[2], q[5];
rzz_4564495840(1.6120902733834466) q[1], q[4];
U(3.005105545260571, 3.9532624110303165, 3.8407496369874927) q[0];
rx(4.312367571566898) q[5];
csdg q[3], q[1];
cry(4.126162440630374) q[4], q[0];
rz(0.7335872896438707) q[6];
sx q[2];
cu(2.860878658708051, 1.9219626000823529, 2.8532381493553958, 2.1698871061115854) q[2], q[0];
sxdg q[4];
xx_minus_yy_4564497952(2.3915393692983637, 0.7216926043020907) q[1], q[5];
dcx q[6], q[3];
csdg q[1], q[3];
ryy_4564497712(4.524546081179745) q[0], q[6];
cu1_4564495408(0.3149067360573676) q[5], q[4];
sxdg q[2];
u3(0.6245069386275934, 5.46223797480515, 2.828806242292452) q[5];
cu(6.105501575183939, 5.959903658418842, 1.2446666372038353, 1.3602658836437964) q[3], q[0];
h q[2];
ccx q[1], q[4], q[6];
cu(3.866330562948339, 0.7385739469327519, 0.4306241872762449, 4.985417858203194) q[4], q[1];
id q[6];
cry(0.33497126500216473) q[0], q[5];
id q[2];
r_4564496752(4.140854727766151, 5.68352950178621) q[3];
