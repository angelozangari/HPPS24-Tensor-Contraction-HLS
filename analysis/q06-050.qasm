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
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4538094160(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.449935152950267) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.635114113940193) _gate_q_1;
  ry(-2.635114113940193) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.449935152950267) _gate_q_0;
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
gate r_4538094400(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.7816389707397975, 2.9215034524095476, -2.9215034524095476) _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cu1_4538094784(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.7980655644386738) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.7980655644386738) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.7980655644386738) _gate_q_1;
}
gate ryy_4538094832(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.695270656960582) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate r_4538094880(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.8679622439645125, 0.9369982811617357, -0.9369982811617357) _gate_q_0;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate ryy_4538095456(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.431019624255595) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rxx_4538095936(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.3228818669231917) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate r_4538096224(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.5196025163830633, 2.314703908417136, -2.314703908417136) _gate_q_0;
}
gate cu3_4538096656(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.304550748705713) _gate_q_0;
  u1(1.007960286845291) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.5412223015166193, 0, -1.304550748705713) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.5412223015166193, 0.296590461860422, 0) _gate_q_1;
}
gate rzx_4538096752(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.9311426787301826) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4538097376(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.8923399187101215) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.8341989848469453) _gate_q_0;
  ry(-1.8341989848469453) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.8923399187101215) _gate_q_1;
}
gate ryy_4538098672(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.2348585713221185) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate r_4538097568(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.0975777423680007, 3.3517796010914918, -3.3517796010914918) _gate_q_0;
}
gate cu3_4538097472(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.124337783675463) _gate_q_0;
  u1(0.030248850029511498) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.774667144919465, 0, -4.124337783675463) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.774667144919465, 4.094088933645951, 0) _gate_q_1;
}
gate ryy_4538097760(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.155835944422575) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4538097616(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.3459683866959935) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.1262028408128264) _gate_q_0;
  ry(-1.1262028408128264) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.3459683866959935) _gate_q_1;
}
gate rzx_4538097904(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.130895417322776) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4538097856(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.338116449373105) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4538097712(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.1913809198564467, 4.650326595971915, -4.650326595971915) _gate_q_0;
}
gate cu3_4538097952(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.5993146020860642) _gate_q_0;
  u1(0.04382874387578739) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.4340466389784048, 0, -3.5993146020860642) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.4340466389784048, 3.5554858582102766, 0) _gate_q_1;
}
gate r_4538098144(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.60321417909779, 1.931004174327735, -1.931004174327735) _gate_q_0;
}
gate rxx_4538098432(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.417760329656794) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4538098768(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.437483307872178) _gate_q_0;
  u1(0.9867576552340573) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.6659019372699887, 0, -4.437483307872178) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.6659019372699887, 3.4507256526381203, 0) _gate_q_1;
}
gate ryy_4538097040(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1922727944977811) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
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
gate xx_plus_yy_4538098240(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.187714974916102) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.3131421699026739) _gate_q_1;
  ry(-0.3131421699026739) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.187714974916102) _gate_q_0;
}
gate rzz_4538099392(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.540523458662703) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4538098912(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.299907328225888, -1.4007977151155249, 1.4007977151155249) _gate_q_0;
}
gate cu1_4538099680(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.0930318182592837) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.0930318182592837) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.0930318182592837) _gate_q_1;
}
gate ryy_4538099872(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.152931607144423) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4538099056(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.20597231608668443) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.09119939995561042) _gate_q_0;
  ry(-0.09119939995561042) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.20597231608668443) _gate_q_1;
}
qubit[6] q;
U(4.188931373149595, 1.4385135137496823, 4.086978889849213) q[5];
u1(1.9366109860577925) q[0];
rccx q[1], q[3], q[4];
tdg q[2];
cs q[5], q[3];
cz q[4], q[2];
crx(1.7308561820106643) q[0], q[1];
ry(2.619066200293158) q[0];
csdg q[4], q[3];
u1(3.401049284315091) q[2];
u2(3.6664128955744597, 4.8963778897968755) q[1];
U(4.959111577359798, 1.7712166197152401, 3.8811288214365915) q[5];
cry(2.173029923339148) q[5], q[4];
xx_plus_yy_4538094160(5.270228227880386, 1.449935152950267) q[0], q[2];
rx(5.108013741925287) q[1];
tdg q[3];
rccx q[3], q[0], q[2];
csx q[5], q[1];
U(3.704786066744985, 3.074618321174238, 1.806332035728913) q[4];
z q[4];
id q[5];
sdg q[2];
tdg q[1];
h q[0];
h q[3];
cp(5.850313638070119) q[1], q[2];
U(3.7013987947254683, 3.9636250153622257, 4.005799021082061) q[0];
r_4538094400(0.7816389707397975, 4.492299779204444) q[4];
crz(4.174394884755222) q[5], q[3];
s q[2];
dcx q[3], q[5];
cu1_4538094784(1.5961311288773476) q[4], q[0];
u1(0.921924494479733) q[1];
ryy_4538094832(1.695270656960582) q[4], q[3];
cs q[0], q[5];
h q[2];
t q[1];
crz(2.7307086843954664) q[1], q[2];
ccz q[3], q[5], q[0];
r_4538094880(3.8679622439645125, 2.5077946079566322) q[4];
cs q[5], q[4];
rz(4.3035087311045075) q[2];
sxdg q[1];
crz(4.186740798646212) q[0], q[3];
h q[1];
ry(4.7111650436389) q[3];
rccx q[5], q[2], q[4];
x q[0];
U(0.5355530372173796, 4.654363613051773, 4.9925657026495935) q[1];
x q[2];
iswap q[5], q[0];
id q[3];
s q[4];
csdg q[3], q[0];
ry(1.0315905826908949) q[5];
cu(5.074182193188712, 3.4215483801441615, 0.6991554644599908, 1.8075527421669124) q[2], q[1];
h q[4];
ryy_4538095456(1.431019624255595) q[0], q[4];
rccx q[1], q[2], q[3];
u3(1.4968320082085949, 1.5094315388110533, 3.0618589422752556) q[5];
cry(5.540753726718512) q[5], q[1];
rxx_4538095936(3.3228818669231917) q[2], q[0];
t q[3];
sx q[4];
u1(1.4206892269202112) q[3];
cu(3.544639170925193, 1.9099590775360487, 2.3059142790391194, 4.28160850083102) q[0], q[4];
crx(4.510275714231318) q[5], q[2];
id q[1];
p(1.7326523070879012) q[5];
crx(4.1074165946002275) q[1], q[0];
ry(5.8720923435973145) q[3];
id q[2];
h q[4];
cs q[2], q[4];
c3sx q[5], q[3], q[1], q[0];
r_4538096224(3.5196025163830633, 3.8855002352120325) q[5];
rccx q[1], q[0], q[2];
cs q[4], q[3];
csx q[4], q[5];
cu(1.841725899515994, 0.023011230824385862, 3.9542447793609505, 0.4489340956174418) q[3], q[1];
cu3_4538096656(3.0824446030332386, 0.296590461860422, 2.312511035551004) q[0], q[2];
sx q[5];
cu(3.3023880028196135, 5.189938072622417, 1.7207782734691184, 3.6131077853960547) q[1], q[3];
id q[2];
rzx_4538096752(3.9311426787301826) q[0], q[4];
csdg q[0], q[2];
rccx q[4], q[3], q[1];
U(4.351917890249671, 2.352997855035355, 4.685601410898624) q[5];
cswap q[0], q[2], q[1];
cx q[3], q[5];
x q[4];
cry(3.1632315308961196) q[3], q[0];
id q[5];
id q[1];
u2(4.642466176134299, 2.2188501759145227) q[4];
h q[2];
xx_minus_yy_4538097376(3.6683979696938906, 2.8923399187101215) q[3], q[4];
ryy_4538098672(5.2348585713221185) q[2], q[0];
cz q[5], q[1];
r_4538097568(2.0975777423680007, 4.922575927886388) q[2];
cu3_4538097472(3.54933428983893, 4.094088933645951, 4.154586633704974) q[5], q[3];
cy q[0], q[1];
sx q[4];
ryy_4538097760(4.155835944422575) q[2], q[0];
c3sx q[4], q[5], q[3], q[1];
tdg q[1];
s q[4];
ccx q[0], q[5], q[3];
u1(3.096430050848779) q[2];
u1(4.033280184638312) q[0];
xx_minus_yy_4538097616(2.252405681625653, 4.3459683866959935) q[3], q[1];
sxdg q[5];
ry(1.900806306237605) q[2];
x q[4];
ry(3.264504579078125) q[1];
rzx_4538097904(2.130895417322776) q[5], q[4];
rzx_4538097856(2.338116449373105) q[2], q[0];
r_4538097712(3.1913809198564467, 6.221122922766812) q[3];
ccz q[5], q[1], q[4];
rx(3.348778268397577) q[0];
cs q[2], q[3];
u1(3.395145705106935) q[4];
x q[3];
cu3_4538097952(2.8680932779568096, 3.5554858582102766, 3.6431433459618514) q[1], q[2];
u3(4.576594039269897, 1.6681815171938106, 5.865354733411722) q[5];
r_4538098144(0.60321417909779, 3.5018005011226316) q[0];
cx q[0], q[5];
h q[2];
h q[4];
id q[1];
rz(3.0595500716037907) q[3];
sdg q[4];
csdg q[0], q[2];
ccz q[5], q[1], q[3];
rxx_4538098432(4.417760329656794) q[3], q[5];
id q[4];
u2(0.35166536603718884, 1.0642316404882384) q[0];
crz(2.491095136323305) q[2], q[1];
U(0.29919296007036017, 4.672217168006341, 3.2784278206512054) q[3];
cu3_4538098768(1.3318038745399774, 3.4507256526381203, 5.424240963106235) q[4], q[5];
cz q[1], q[2];
rx(3.7487964994989915) q[0];
ry(4.246432785673865) q[5];
sdg q[0];
y q[3];
u1(4.428147874779493) q[2];
ch q[1], q[4];
ryy_4538097040(1.1922727944977811) q[0], q[1];
crz(4.267865953699933) q[3], q[5];
u2(1.741974650379157, 2.1740351771463087) q[4];
z q[2];
c3sx q[5], q[2], q[3], q[1];
ecr q[4], q[0];
csx q[5], q[1];
cy q[3], q[4];
h q[2];
U(5.996330098446826, 4.572383280436859, 4.919322503967025) q[0];
xx_plus_yy_4538098240(0.6262843398053478, 4.187714974916102) q[0], q[5];
rzz_4538099392(5.540523458662703) q[2], q[3];
ry(5.011926237719034) q[4];
sdg q[1];
sx q[3];
r_4538098912(5.299907328225888, 0.16999861167937164) q[2];
rz(4.920894956892485) q[5];
ch q[0], q[1];
id q[4];
c3sx q[0], q[5], q[1], q[2];
cx q[4], q[3];
cu1_4538099680(4.1860636365185675) q[3], q[5];
h q[2];
csx q[1], q[4];
u2(5.604255873417891, 0.11433950604492793) q[0];
t q[2];
cu(5.575896022536959, 2.482613158678844, 0.8048208128829725, 3.253460158174862) q[0], q[4];
cs q[1], q[5];
rz(5.175949094731827) q[3];
csx q[5], q[3];
ryy_4538099872(1.152931607144423) q[2], q[1];
tdg q[0];
u2(0.09376643361948571, 2.751849091871273) q[4];
csdg q[2], q[5];
sxdg q[0];
rx(3.3134729630675817) q[1];
xx_minus_yy_4538099056(0.18239879991122085, 0.20597231608668443) q[4], q[3];
h q[1];
p(3.3799925968870292) q[4];
rccx q[3], q[2], q[5];
s q[0];
csx q[4], q[1];
sdg q[2];
rccx q[0], q[3], q[5];
