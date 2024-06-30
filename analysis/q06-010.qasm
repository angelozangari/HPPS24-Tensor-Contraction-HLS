OPENQASM 3.0;
include "stdgates.inc";
gate cu3_4513541024(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.4292874897027974) _gate_q_0;
  u1(-1.1219093107936806) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.666151811289822, 0, -3.4292874897027974) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.666151811289822, 4.551196800496478, 0) _gate_q_1;
}
gate rxx_4536547856(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.2510807764019264) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4536547952(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.318308009853395, 2.067596301197254, -2.067596301197254) _gate_q_0;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4536549008(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.896654329107123) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.1842454206993371) _gate_q_0;
  ry(-1.1842454206993371) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.896654329107123) _gate_q_1;
}
gate r_4535873856(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.022155789631333, 1.5869263243350749, -1.5869263243350749) _gate_q_0;
}
gate r_4535483952(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.437334964111374, 4.217741089218263, -4.217741089218263) _gate_q_0;
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
qubit[6] q;
ccx q[4], q[5], q[3];
sdg q[0];
U(0.27546089781135713, 0.03163657610841268, 5.523687176805161) q[2];
y q[1];
swap q[2], q[5];
u3(3.2360029890951627, 0.8739450263663182, 3.8062535828771846) q[3];
cu3_4513541024(5.332303622579644, 4.551196800496478, 2.307378178909117) q[0], q[4];
t q[1];
rxx_4536547856(0.2510807764019264) q[1], q[5];
cswap q[3], q[0], q[4];
y q[2];
r_4536547952(1.318308009853395, 3.6383926279921504) q[0];
z q[1];
tdg q[3];
rz(2.2322013373540868) q[4];
xx_minus_yy_4536549008(2.3684908413986743, 5.896654329107123) q[2], q[5];
ccx q[4], q[5], q[3];
z q[0];
t q[1];
y q[2];
r_4535873856(5.022155789631333, 3.1577226511299714) q[4];
cu(0.6447839615262966, 4.030421828902899, 6.078031580179793, 3.5823598902015865) q[5], q[1];
ry(0.08199267526434882) q[3];
h q[2];
sdg q[0];
u3(0.7107208456621462, 4.166950630743581, 5.7258123060758335) q[0];
sxdg q[2];
s q[3];
sdg q[1];
cy q[4], q[5];
cry(1.3301628088677853) q[0], q[5];
r_4535483952(2.437334964111374, 5.78853741601316) q[3];
ecr q[1], q[4];
tdg q[2];
c3sx q[5], q[4], q[1], q[2];
cp(2.9827068515154824) q[3], q[0];
cy q[3], q[1];
id q[5];
ecr q[2], q[0];
h q[4];
