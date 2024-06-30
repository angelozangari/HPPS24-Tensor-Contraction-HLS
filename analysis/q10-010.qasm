OPENQASM 3.0;
include "stdgates.inc";
gate ryy_4564509440(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.707717701343974) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
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
gate xx_plus_yy_4564511072(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.856053490595517) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.07288875870167287) _gate_q_1;
  ry(-0.07288875870167287) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.856053490595517) _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate xx_plus_yy_4564508048(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.2505948032357836) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.6058154995386977) _gate_q_1;
  ry(-2.6058154995386977) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.2505948032357836) _gate_q_0;
}
gate rzx_4564516400(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.4705549297531775) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4564501616(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.159636160994821) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.7068281048457279) _gate_q_1;
  ry(-0.7068281048457279) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.159636160994821) _gate_q_0;
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
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate ryy_4564496848(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.381765491383458) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4564499104(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.9458905902753239) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.9458905902753239) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.9458905902753239) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate xx_minus_yy_4564492912(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.145199342649927) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.513922818769458) _gate_q_0;
  ry(-2.513922818769458) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.145199342649927) _gate_q_1;
}
gate rxx_4564498912(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.060178494753925) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
qubit[10] q;
ryy_4564509440(0.707717701343974) q[6], q[3];
c3sx q[8], q[1], q[9], q[4];
xx_plus_yy_4564511072(0.14577751740334574, 5.856053490595517) q[2], q[0];
h q[5];
x q[7];
crx(1.7329026081452332) q[6], q[0];
crx(5.358396912111011) q[8], q[5];
sxdg q[3];
p(5.908509999520163) q[4];
sx q[7];
ry(4.713531880604269) q[1];
sxdg q[2];
rz(0.3927809809116806) q[9];
crz(2.5369990310796324) q[9], q[1];
x q[3];
rx(0.11881787117413202) q[6];
ccz q[5], q[7], q[4];
swap q[8], q[0];
u1(3.3463339837123423) q[2];
x q[6];
h q[9];
ry(4.050815644760848) q[0];
id q[1];
xx_plus_yy_4564508048(5.2116309990773955, 3.2505948032357836) q[5], q[4];
cry(3.4675287656644125) q[7], q[8];
crz(3.645559341404864) q[3], q[2];
rzx_4564516400(3.4705549297531775) q[6], q[3];
xx_plus_yy_4564501616(1.4136562096914558, 4.159636160994821) q[1], q[9];
U(5.96852663472576, 6.0641675992065736, 1.8880736146891997) q[5];
crx(2.332123798657874) q[4], q[8];
cp(4.294755933110955) q[7], q[0];
ry(2.2276146171558397) q[2];
ccz q[0], q[4], q[8];
csx q[7], q[1];
cx q[3], q[9];
t q[5];
u1(5.749575873262588) q[6];
ry(2.2886964428239627) q[2];
U(5.6357381486060465, 0.32392333681916285, 3.9874275275026747) q[8];
cp(5.380572823794701) q[4], q[7];
csdg q[1], q[2];
p(4.061724219621515) q[6];
y q[0];
rx(5.154621059583702) q[5];
rz(0.2801570637509949) q[3];
t q[9];
x q[2];
rx(6.098837771170945) q[8];
cs q[1], q[0];
t q[5];
c3sx q[4], q[6], q[9], q[7];
tdg q[3];
u1(1.4136464957102006) q[7];
ryy_4564496848(5.381765491383458) q[1], q[9];
cu1_4564499104(1.8917811805506477) q[6], q[5];
u3(3.577708627921803, 4.961880387329593, 1.9777617290952796) q[8];
ry(0.48520873222173955) q[0];
cy q[2], q[4];
tdg q[3];
iswap q[5], q[1];
x q[3];
xx_minus_yy_4564492912(5.027845637538916, 4.145199342649927) q[7], q[8];
p(0.8956104721997008) q[2];
rxx_4564498912(4.060178494753925) q[6], q[9];
sxdg q[0];
tdg q[4];
