OPENQASM 3.0;
include "stdgates.inc";
gate ryy_4533908208(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.158329733235694) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
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
gate r_4533908400(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.030391940742957, -0.012008613224534281, 0.012008613224534281) _gate_q_0;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
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
gate xx_minus_yy_4534736544(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.7676905407195567) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.4931868082804607) _gate_q_0;
  ry(-1.4931868082804607) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.7676905407195567) _gate_q_1;
}
gate cu1_4414163136(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.6179718139821395) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.6179718139821395) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.6179718139821395) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate rxx_4536758928(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.4575518885575014) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu1_4536759072(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.390354095249529) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.390354095249529) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.390354095249529) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate ryy_4536753840(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9570560284090335) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ryy_4536760608(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.915601388209849) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4536747456(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.849863426299913, 2.047450780225484, -2.047450780225484) _gate_q_0;
}
gate xx_minus_yy_4536758784(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.8880358286585666) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.9496927379766087) _gate_q_0;
  ry(-1.9496927379766087) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.8880358286585666) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cu1_4536761184(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.21002219693442) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.21002219693442) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.21002219693442) _gate_q_1;
}
gate ryy_4536750336(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.6593356994514536) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4536761568(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.436267914553559) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4536746688(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.332143607844786, -0.6897160477293599, 0.6897160477293599) _gate_q_0;
}
gate r_4536755328(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.4326352530759525, 2.7106295798751274, -2.7106295798751274) _gate_q_0;
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
gate rzx_4536761808(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6851136743263972) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4536753936(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.0038020019994414) _gate_q_0;
  u1(0.6064404477357797) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.474380393238303, 0, -2.0038020019994414) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.474380393238303, 1.3973615542636617, 0) _gate_q_1;
}
gate xx_minus_yy_4536754320(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.9317529693155215) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.8968869256079497) _gate_q_0;
  ry(-2.8968869256079497) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.9317529693155215) _gate_q_1;
}
gate r_4536757392(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.0849630512460604, 4.145558430485385, -4.145558430485385) _gate_q_0;
}
gate xx_minus_yy_4536755232(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.156845911181389) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.2302537875769075) _gate_q_0;
  ry(-0.2302537875769075) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.156845911181389) _gate_q_1;
}
qubit[6] q;
ccx q[5], q[0], q[4];
swap q[1], q[2];
tdg q[3];
z q[0];
cswap q[4], q[5], q[3];
z q[1];
rz(4.761828316335879) q[2];
ryy_4533908208(3.158329733235694) q[0], q[4];
cx q[5], q[2];
sdg q[1];
h q[3];
csdg q[5], q[2];
cs q[0], q[1];
tdg q[3];
id q[4];
r_4533908400(5.030391940742957, 1.5587877135703623) q[3];
swap q[4], q[5];
ecr q[0], q[2];
sxdg q[1];
id q[5];
rccx q[3], q[2], q[0];
xx_minus_yy_4534736544(2.9863736165609214, 3.7676905407195567) q[1], q[4];
cz q[3], q[0];
swap q[2], q[1];
tdg q[5];
sx q[4];
sxdg q[1];
tdg q[5];
id q[3];
cu1_4414163136(1.235943627964279) q[0], q[4];
z q[2];
rx(0.24188740833265404) q[1];
crz(4.707255493051443) q[3], q[2];
ccz q[5], q[0], q[4];
crx(3.10845053691113) q[3], q[0];
cy q[5], q[1];
rxx_4536758928(2.4575518885575014) q[4], q[2];
cu(3.016993026146364, 3.7084856267577724, 2.8880866779022236, 3.3977163429853743) q[0], q[1];
sx q[3];
cu1_4536759072(4.780708190499058) q[4], q[2];
rx(3.512364914984273) q[5];
iswap q[2], q[3];
sx q[1];
ryy_4536753840(1.9570560284090335) q[0], q[4];
u1(1.6043822459501695) q[5];
swap q[3], q[5];
U(0.07678575602896726, 1.3173296388361933, 3.2406756245556876) q[2];
crx(2.744206406893173) q[4], q[0];
y q[1];
y q[4];
ryy_4536760608(5.915601388209849) q[2], q[3];
cp(5.50845811480956) q[1], q[5];
U(5.2896996578385584, 3.586932560240439, 5.479877429685722) q[0];
r_4536747456(2.849863426299913, 3.6182471070203808) q[0];
u2(5.1130301694523155, 3.580128341803492) q[3];
xx_minus_yy_4536758784(3.8993854759532174, 0.8880358286585666) q[1], q[2];
iswap q[5], q[4];
cy q[1], q[4];
ch q[5], q[2];
rx(2.13413491477517) q[3];
rx(0.5132210410275215) q[0];
sx q[2];
ccx q[5], q[0], q[4];
sdg q[1];
ry(0.4973134838958569) q[3];
dcx q[5], q[4];
tdg q[0];
t q[1];
cu1_4536761184(4.42004439386884) q[3], q[2];
ryy_4536750336(3.6593356994514536) q[0], q[1];
U(3.2498827074911687, 2.770236090276575, 5.43025779116496) q[2];
rxx_4536761568(4.436267914553559) q[4], q[5];
ry(3.552966242563514) q[3];
iswap q[3], q[0];
dcx q[1], q[4];
s q[2];
y q[5];
swap q[2], q[5];
r_4536746688(1.332143607844786, 0.8810802790655367) q[1];
rx(3.6834120214377677) q[0];
y q[4];
sx q[3];
cy q[2], q[4];
ccz q[1], q[5], q[0];
h q[3];
tdg q[5];
tdg q[4];
h q[0];
r_4536755328(5.4326352530759525, 4.281425906670024) q[3];
U(0.6086569279635881, 6.176612952473522, 5.025548683916502) q[1];
z q[2];
ch q[5], q[4];
u2(5.286983759095002, 3.721576510497681) q[3];
rz(5.728562607097326) q[1];
id q[2];
u3(5.808806283222511, 1.1797808749782277, 4.294303472689515) q[0];
rx(5.01190517083552) q[4];
tdg q[3];
rcccx q[5], q[1], q[0], q[2];
rzx_4536761808(0.6851136743263972) q[5], q[3];
cy q[4], q[1];
cu(4.395454156844124, 2.23352826247249, 2.9783118504754666, 2.5237415949850046) q[0], q[2];
ch q[2], q[4];
rccx q[3], q[5], q[0];
sdg q[1];
rz(5.509354367838922) q[1];
cu3_4536753936(4.948760786476606, 1.3973615542636617, 2.610242449735221) q[4], q[5];
xx_minus_yy_4536754320(5.793773851215899, 4.9317529693155215) q[2], q[0];
y q[3];
rcccx q[0], q[4], q[2], q[3];
r_4536757392(2.0849630512460604, 5.716354757280282) q[1];
y q[5];
rcccx q[5], q[1], q[0], q[3];
xx_minus_yy_4536755232(0.460507575153815, 4.156845911181389) q[2], q[4];
