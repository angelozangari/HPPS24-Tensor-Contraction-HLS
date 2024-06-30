OPENQASM 3.0;
include "stdgates.inc";
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4540877136(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.1996129319712414) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.832914558062423) _gate_q_1;
  ry(-1.832914558062423) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.1996129319712414) _gate_q_0;
}
gate rzx_4540878960(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.379388097967254) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4540878192(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.47979690661274754) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_minus_yy_4540878240(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.9877774485806776) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.6186409220035993) _gate_q_0;
  ry(-1.6186409220035993) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.9877774485806776) _gate_q_1;
}
gate r_4540878768(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.924673304168605, 3.6665395147866775, -3.6665395147866775) _gate_q_0;
}
gate ryy_4540878816(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.0990943429980615) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4540878432(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.0654254548155258) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate ryy_4540878720(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6957184322777115) _gate_q_1;
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
gate rzz_4540879536(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.209136620599441) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4540879200(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.048638829258651) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate ryy_4540880592(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.791428392189664) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu3_4540880880(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.472260703268872) _gate_q_0;
  u1(2.0514135915380187) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.490981343917798, 0, -2.472260703268872) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.490981343917798, 0.42084711173085343, 0) _gate_q_1;
}
gate cu1_4540881888(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.20591318414336518) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.20591318414336518) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.20591318414336518) _gate_q_1;
}
gate rzx_4540882848(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.792814874358168) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4540881216(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.536328260495334) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate rzz_4540881504(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.0692775590032055) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4540880448(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.153670589848212) _gate_q_0;
  u1(0.4970257680928596) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.5775231827701459, 0, -2.153670589848212) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.5775231827701459, 1.6566448217553527, 0) _gate_q_1;
}
gate rxx_4540881168(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.674510326252567) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate ryy_4540882896(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.047185479084743) _gate_q_1;
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
gate ryy_4540884144(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.904996899360406) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
qubit[7] q;
cu(4.921108740564576, 2.6904788002634588, 3.519135257738888, 2.7353986349103008) q[4], q[3];
xx_plus_yy_4540877136(3.665829116124846, 1.1996129319712414) q[2], q[1];
u2(2.4441686767228097, 1.077932012661228) q[6];
u1(3.31501926572068) q[0];
u3(0.6185781974981593, 1.4865797346484853, 4.54769995427127) q[5];
rz(2.280109619409133) q[6];
rzx_4540878960(5.379388097967254) q[1], q[0];
crx(1.4103447914417415) q[2], q[5];
rz(0.7098052585873694) q[4];
x q[3];
rzx_4540878192(0.47979690661274754) q[4], q[1];
xx_minus_yy_4540878240(3.2372818440071987, 1.9877774485806776) q[5], q[6];
u3(5.1061249874711025, 3.7616083443808894, 2.747868824382042) q[0];
r_4540878768(2.924673304168605, 5.237335841581574) q[2];
u2(0.6911452253397531, 3.926518493470227) q[3];
ryy_4540878816(1.0990943429980615) q[5], q[2];
rzz_4540878432(0.0654254548155258) q[3], q[4];
U(1.239891234935883, 1.229615695217684, 3.3329562302189206) q[0];
ryy_4540878720(0.6957184322777115) q[1], q[6];
crx(2.935897707025722) q[1], q[3];
s q[5];
rccx q[6], q[0], q[4];
z q[2];
U(5.091689611835023, 0.30944492680943814, 0.8793320404474376) q[6];
sdg q[1];
t q[4];
c3sx q[5], q[0], q[3], q[2];
crx(5.64349568578323) q[2], q[0];
rzz_4540879536(3.209136620599441) q[3], q[5];
cry(3.658547706671358) q[1], q[4];
p(5.894465004988285) q[6];
ch q[2], q[5];
rzx_4540879200(6.048638829258651) q[6], q[1];
h q[4];
cx q[3], q[0];
csx q[3], q[5];
cry(3.8348855925755556) q[0], q[1];
csx q[2], q[6];
y q[4];
ryy_4540880592(4.791428392189664) q[2], q[1];
t q[3];
cz q[5], q[0];
U(3.6795952706117023, 0.32219644725169416, 2.2762261872873313) q[6];
rz(3.0173259897624067) q[4];
cu3_4540880880(4.981962687835596, 0.42084711173085343, 4.523674294806891) q[2], q[6];
cu1_4540881888(0.41182636828673036) q[0], q[4];
rzx_4540882848(5.792814874358168) q[5], q[1];
rz(3.522375771055255) q[3];
ch q[5], q[0];
cp(3.336129081916267) q[2], q[1];
cz q[4], q[3];
y q[6];
ryy_4540881216(4.536328260495334) q[0], q[3];
iswap q[6], q[5];
rx(4.702926332803867) q[1];
iswap q[4], q[2];
csx q[0], q[4];
rzz_4540881504(2.0692775590032055) q[3], q[5];
cu3_4540880448(1.1550463655402918, 1.6566448217553527, 2.650696357941072) q[6], q[1];
z q[2];
rxx_4540881168(3.674510326252567) q[3], q[2];
u2(3.7071646424035407, 1.6218335793277783) q[4];
h q[5];
cs q[0], q[1];
id q[6];
c3sx q[1], q[6], q[0], q[3];
ryy_4540882896(1.047185479084743) q[4], q[2];
u1(5.335915817622921) q[5];
u2(4.480579106247992, 3.3032841817910743) q[6];
p(0.09984610355841769) q[0];
cz q[4], q[1];
rx(0.409821116026472) q[2];
sxdg q[5];
u3(4.131987749870912, 5.8173573555363065, 1.3227446595703887) q[3];
ccx q[3], q[1], q[4];
ry(0.7227524917790785) q[6];
id q[5];
U(4.0889972499505545, 5.5859078550250025, 6.033499594734155) q[2];
y q[0];
rcccx q[0], q[1], q[2], q[4];
sdg q[6];
u1(2.7443374676407712) q[5];
rx(1.1818203084961147) q[3];
tdg q[5];
csx q[6], q[4];
s q[3];
y q[2];
ryy_4540884144(3.904996899360406) q[0], q[1];
