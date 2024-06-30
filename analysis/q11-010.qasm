OPENQASM 3.0;
include "stdgates.inc";
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate cu3_4563853408(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.2557632543419235) _gate_q_0;
  u1(-0.7829473277763244) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.814795531807558, 0, -5.2557632543419235) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.814795531807558, 6.038710582118248, 0) _gate_q_1;
}
gate cu1_4563853792(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.4673589591694336) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.4673589591694336) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.4673589591694336) _gate_q_1;
}
gate ryy_4563857824(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.678873496254943) _gate_q_1;
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
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4563859600(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.822119856756126) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.099931519519239) _gate_q_1;
  ry(-1.099931519519239) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.822119856756126) _gate_q_0;
}
gate rxx_4563855040(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.901084170703409) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
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
gate cu3_4563860704(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.856004872166659) _gate_q_0;
  u1(0.6212741423787977) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.215953248778092, 0, -4.856004872166659) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.215953248778092, 4.234730729787861, 0) _gate_q_1;
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
gate cu3_4563860128(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.4413065391743323) _gate_q_0;
  u1(-2.177523542045195) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.263333141253764, 0, -2.4413065391743323) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.263333141253764, 4.618830081219527, 0) _gate_q_1;
}
gate r_4563846112(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.0705220306140797, -1.0632425749251997, 1.0632425749251997) _gate_q_0;
}
gate cu3_4563860992(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.725476527404026) _gate_q_0;
  u1(0.8202963459734869) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.288282919531901, 0, -3.725476527404026) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.288282919531901, 2.905180181430539, 0) _gate_q_1;
}
gate xx_plus_yy_4563860416(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.655352414922423) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.6637380886784854) _gate_q_1;
  ry(-0.6637380886784854) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.655352414922423) _gate_q_0;
}
gate rzx_4563861232(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.3960440002863605) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4563858976(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.4620252610411941) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate ryy_4563860848(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.802970368593699) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
qubit[11] q;
ccz q[1], q[7], q[2];
cu3_4563853408(5.629591063615116, 6.038710582118248, 4.472815926565599) q[5], q[8];
cu1_4563853792(4.934717918338867) q[9], q[10];
swap q[0], q[3];
cu(1.896537356471851, 4.869217839771257, 4.3872493130292405, 4.345452714576622) q[6], q[4];
U(4.849323261917849, 4.519753682491268, 0.07768480383366129) q[9];
ry(0.4534796231213789) q[8];
ryy_4563857824(3.678873496254943) q[6], q[5];
rz(0.2213468472638936) q[0];
p(0.6863776054774955) q[2];
rccx q[3], q[4], q[1];
cx q[10], q[7];
cry(2.0409659864894216) q[9], q[2];
iswap q[10], q[8];
xx_plus_yy_4563859600(2.199863039038478, 4.822119856756126) q[5], q[4];
tdg q[3];
y q[6];
ccz q[1], q[0], q[7];
rxx_4563855040(4.901084170703409) q[9], q[5];
dcx q[6], q[2];
rccx q[8], q[1], q[4];
rcccx q[7], q[0], q[10], q[3];
u3(0.6981701176062346, 5.498595625545311, 6.2456587691549705) q[9];
z q[2];
cu3_4563860704(4.431906497556184, 4.234730729787861, 5.477279014545457) q[10], q[0];
cu(5.401908338229439, 6.207907371147919, 1.186449498369068, 4.155421332053308) q[3], q[7];
csx q[1], q[6];
cz q[8], q[5];
z q[4];
p(1.8261764951337147) q[10];
cu3_4563860128(4.526666282507528, 4.618830081219527, 0.26378299712913705) q[2], q[7];
sxdg q[0];
cp(5.88279626061428) q[4], q[8];
cry(3.822851392613535) q[6], q[1];
U(4.472832521297229, 1.0044611527279654, 4.430438950901556) q[3];
rx(3.185553836659095) q[5];
r_4563846112(3.0705220306140797, 0.5075537518696969) q[9];
tdg q[7];
U(4.226280950108455, 3.3940223500966162, 1.7522351096355113) q[5];
u1(3.319437983288247) q[6];
cu3_4563860992(2.576565839063802, 2.905180181430539, 4.545772873377513) q[8], q[2];
cp(5.220960377258585) q[4], q[1];
id q[9];
h q[3];
xx_plus_yy_4563860416(1.3274761773569708, 5.655352414922423) q[10], q[0];
u2(0.0886818842026787, 2.1768408409859754) q[2];
u1(3.4860447973933035) q[6];
rzx_4563861232(0.3960440002863605) q[8], q[4];
sdg q[1];
u1(3.195356612578341) q[5];
sdg q[0];
rzx_4563858976(0.4620252610411941) q[9], q[3];
cz q[7], q[10];
sdg q[6];
sx q[9];
u1(4.227066269473411) q[2];
rx(1.5727525132782818) q[4];
s q[3];
z q[1];
csdg q[0], q[5];
csdg q[10], q[7];
rz(2.1179252288394306) q[8];
csdg q[3], q[0];
y q[4];
sxdg q[6];
id q[7];
ryy_4563860848(4.802970368593699) q[8], q[10];
ccz q[1], q[9], q[5];
h q[2];
