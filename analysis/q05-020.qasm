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
gate r_4536749904(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.6538267736560845, 4.681037719107037, -4.681037719107037) _gate_q_0;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
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
gate ryy_4536749808(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.672474654780257) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4536750384(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.109051242078991) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.109051242078991) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.109051242078991) _gate_q_1;
}
gate rxx_4536750240(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.112706108076535) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate rxx_4536751152(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.11262617359392) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4536751200(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.5479108815866476, 1.045495391665276, -1.045495391665276) _gate_q_0;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate rzx_4536751392(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.172429813469407) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
qubit[5] q;
rccx q[4], q[3], q[0];
p(1.2043385229553674) q[2];
ry(1.601354135769864) q[1];
crx(3.1185479844134347) q[3], q[1];
sx q[4];
tdg q[0];
z q[2];
rx(1.099678102383155) q[1];
csx q[0], q[3];
rx(0.18211397782309632) q[4];
u3(3.0180291362957754, 4.105601579036309, 1.841278397760762) q[2];
cy q[3], q[4];
ccz q[1], q[2], q[0];
id q[4];
cy q[3], q[0];
y q[2];
rx(1.390522508888039) q[1];
cp(2.317738948468437) q[3], q[2];
u1(5.691794728176873) q[4];
cry(2.345064411015085) q[1], q[0];
csdg q[1], q[0];
cswap q[3], q[4], q[2];
sdg q[4];
r_4536749904(5.6538267736560845, 6.2518340459019335) q[3];
u3(6.127300485755792, 4.420313365399376, 3.3490438902914113) q[0];
iswap q[1], q[2];
id q[4];
cx q[3], q[2];
ecr q[0], q[1];
ryy_4536749808(3.672474654780257) q[2], q[3];
rccx q[0], q[1], q[4];
cu1_4536750384(4.218102484157982) q[0], q[3];
tdg q[1];
s q[2];
s q[4];
cz q[0], q[1];
p(0.24706740295761895) q[3];
tdg q[2];
h q[4];
tdg q[3];
U(0.5236595496582404, 1.752219216902418, 0.16187736194180583) q[0];
t q[4];
rxx_4536750240(5.112706108076535) q[2], q[1];
cu(0.2876698400132532, 0.19146921197277286, 1.386076022929248, 4.567207028345372) q[0], q[1];
csdg q[4], q[3];
u3(5.654459381903142, 4.134287682501552, 4.818966854606831) q[2];
csx q[1], q[4];
cry(3.9852168370032617) q[0], q[2];
rx(4.08033021725556) q[3];
dcx q[1], q[3];
x q[4];
u1(2.8534746791438237) q[0];
t q[2];
sx q[1];
crz(1.5648772980236583) q[4], q[3];
t q[2];
id q[0];
cu(4.198395807274014, 0.8816098348798038, 5.626160435349272, 3.1641828624193336) q[1], q[0];
rxx_4536751152(4.11262617359392) q[2], q[3];
r_4536751200(2.5479108815866476, 2.6162917184601726) q[4];
cu(0.5459547982642143, 1.1670987042204268, 4.429640995487308, 5.770542706211965) q[3], q[1];
sxdg q[0];
rzx_4536751392(4.172429813469407) q[2], q[4];
U(3.674877694240159, 1.9862978915824083, 3.323897828564876) q[3];
dcx q[2], q[4];
cx q[1], q[0];
