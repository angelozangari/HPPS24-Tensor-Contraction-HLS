OPENQASM 3.0;
include "stdgates.inc";
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate cu3_4539914176(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.2211896882073496) _gate_q_0;
  u1(0.8528616913656839) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.5647614892859267, 0, -2.2211896882073496) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.5647614892859267, 1.3683279968416655, 0) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate ryy_4539914272(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.490626947738745) _gate_q_1;
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
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
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
gate rzz_4539919888(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.0859205630156308) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4539921952(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.342660664021083) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzz_4539921472(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.031220616939886) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4539923968(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.86742056339698) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4539259872(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.493546446159352) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4539921184(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.3776337270169494) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.4127000090455028) _gate_q_1;
  ry(-0.4127000090455028) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.3776337270169494) _gate_q_0;
}
gate rxx_4539911632(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.770168783708081) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4539911584(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.7386162948896073) _gate_q_0;
  u1(-0.16878366372852116) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.8049070884693009, 0, -3.7386162948896073) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.8049070884693009, 3.9073999586181287, 0) _gate_q_1;
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
gate rxx_4539911824(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.47698314609679254) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4539912400(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.893052667931233) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate ryy_4539912160(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.219684197793255) _gate_q_1;
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
qubit[6] q;
crx(5.244306920682427) q[5], q[2];
ccz q[3], q[4], q[1];
h q[0];
x q[1];
z q[4];
u2(1.025028772817701, 1.343362695848714) q[3];
cu3_4539914176(5.1295229785718535, 1.3683279968416655, 3.0740513795730333) q[5], q[2];
tdg q[0];
cu(3.6098916151212403, 5.067212552213332, 5.5788131799073675, 1.2239994734343613) q[1], q[2];
iswap q[4], q[5];
id q[0];
u1(4.00956936032922) q[3];
ryy_4539914272(5.490626947738745) q[1], q[3];
rcccx q[5], q[0], q[4], q[2];
iswap q[1], q[2];
z q[5];
swap q[4], q[0];
sx q[3];
id q[4];
ccx q[2], q[5], q[3];
U(2.5035417885667313, 3.8266882889242373, 4.408182037659468) q[1];
u2(6.173613795660826, 1.3192639031894187) q[0];
cp(2.2674291014667696) q[0], q[5];
cs q[1], q[3];
csx q[4], q[2];
rzz_4539919888(1.0859205630156308) q[5], q[0];
cy q[1], q[2];
U(4.267375884764362, 3.264005555917837, 0.7441477552071417) q[3];
U(5.317565200206984, 5.248649171248987, 1.5542579615586103) q[4];
rzz_4539921952(5.342660664021083) q[4], q[2];
t q[0];
u3(2.0744778478985215, 6.248052452098701, 3.1841752599072155) q[1];
rzz_4539921472(2.031220616939886) q[5], q[3];
ryy_4539923968(3.86742056339698) q[0], q[5];
y q[2];
rzz_4539259872(5.493546446159352) q[4], q[1];
u3(2.6842073664071857, 1.937347268966649, 3.473558532563381) q[3];
xx_plus_yy_4539921184(0.8254000180910056, 1.3776337270169494) q[1], q[4];
rxx_4539911632(3.770168783708081) q[0], q[3];
crz(5.641652687147082) q[5], q[2];
crz(4.159432790402745) q[4], q[3];
cswap q[5], q[1], q[2];
sx q[0];
cu3_4539911584(1.6098141769386018, 3.9073999586181287, 3.5698326311610864) q[1], q[3];
s q[0];
x q[4];
crx(2.3018357913528797) q[5], q[2];
rccx q[5], q[1], q[4];
rxx_4539911824(0.47698314609679254) q[2], q[0];
rx(2.52096172457136) q[3];
cy q[4], q[0];
h q[1];
cy q[3], q[5];
u1(3.260856852688377) q[2];
rxx_4539912400(4.893052667931233) q[4], q[0];
csx q[3], q[5];
h q[1];
sx q[2];
U(0.13569574947399088, 0.26929978108911706, 0.6388197136133438) q[1];
cy q[5], q[0];
crx(1.0438724201681429) q[2], q[3];
t q[4];
rccx q[2], q[0], q[3];
crx(0.21801698350374324) q[4], q[1];
sxdg q[5];
s q[5];
ccz q[1], q[0], q[2];
y q[4];
x q[3];
ryy_4539912160(5.219684197793255) q[2], q[1];
sx q[0];
u3(0.6726583367500971, 5.023663817168064, 1.5942311830488276) q[5];
csdg q[4], q[3];
