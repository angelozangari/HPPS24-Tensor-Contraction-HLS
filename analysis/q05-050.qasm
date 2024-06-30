OPENQASM 3.0;
include "stdgates.inc";
gate rxx_4561807184(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.1800590102286195) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4561799648(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.036269390274018) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.6361863965805569) _gate_q_0;
  ry(-0.6361863965805569) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.036269390274018) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate rzx_4534359616(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4534359664(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ecr _gate_q_0, _gate_q_1 {
  rzx_4534359616(pi/4) _gate_q_0, _gate_q_1;
  x _gate_q_0;
  rzx_4534359664(-pi/4) _gate_q_0, _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
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
gate rzz_4561809296(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.9347100315850154) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4561809152(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.604101110896086) _gate_q_0;
  u1(1.538910052579701) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.617913848416572, 0, -2.604101110896086) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.617913848416572, 1.065191058316385, 0) _gate_q_1;
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
gate rxx_4561805264(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.5854988860365573) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4561800512(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.32960633837177) _gate_q_0;
  u1(0.15889540199560548) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.4302882449282819, 0, -5.32960633837177) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.4302882449282819, 5.170710936376165, 0) _gate_q_1;
}
gate rzz_4561801520(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.7232781281408959) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4561801760(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.8326849936630916) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4561802480(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.7116864451977956, 0.07862059610024685, -0.07862059610024685) _gate_q_0;
}
gate xx_plus_yy_4561800704(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.62988674404088) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.7889192898503197) _gate_q_1;
  ry(-2.7889192898503197) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.62988674404088) _gate_q_0;
}
gate ryy_4561811984(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.6664110416137641) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzz_4561812272(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.4571137830068686) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate xx_plus_yy_4561813424(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.033245182275803) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5503036536113917) _gate_q_1;
  ry(-2.5503036536113917) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.033245182275803) _gate_q_0;
}
gate r_4561807232(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.0737351891933526, 4.147485839592993, -4.147485839592993) _gate_q_0;
}
gate r_4561813184(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.42504910357227, 1.6995757846882258, -1.6995757846882258) _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate rxx_4561806224(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.17408946594529412) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4561805984(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.914044872118755) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4561805408(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.8864426027599386) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4561806128(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.174593493662248) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4561806080(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.5278746101320694) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4561806320(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.761955862713218) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
qubit[5] q;
rz(1.531166317703543) q[0];
rxx_4561807184(1.1800590102286195) q[3], q[2];
cu(1.0604390843961995, 1.3744384338387008, 3.6432030455304907, 2.693511786039853) q[1], q[4];
u3(3.0557682078930286, 2.6947756196623516, 3.364802377873152) q[0];
xx_minus_yy_4561799648(1.2723727931611137, 2.036269390274018) q[2], q[3];
dcx q[4], q[1];
dcx q[1], q[0];
rz(2.9134820075862717) q[2];
csdg q[4], q[3];
cz q[3], q[4];
rz(2.9355836720839625) q[0];
u1(4.14984478397442) q[2];
tdg q[1];
cz q[2], q[3];
u1(0.2684778815016473) q[4];
cx q[0], q[1];
crx(1.5601182321946803) q[1], q[3];
cu(0.38308001916779827, 2.7482966832878337, 0.35582953623804314, 1.998027769898461) q[0], q[4];
y q[2];
ecr q[0], q[3];
cs q[2], q[1];
h q[4];
csx q[1], q[4];
rzz_4561809296(3.9347100315850154) q[0], q[3];
tdg q[2];
U(3.5364967773252367, 3.584026043796972, 5.923154552606819) q[2];
crz(0.8808274514433871) q[1], q[3];
rz(0.40337693342812225) q[0];
tdg q[4];
cu(5.321276743533266, 4.180780339110331, 1.0524846636096739, 3.025558466360985) q[3], q[0];
cu3_4561809152(1.235827696833144, 1.065191058316385, 4.143011163475787) q[1], q[2];
U(2.7551517908891476, 1.3232373211489676, 1.046953770216989) q[4];
tdg q[2];
csx q[3], q[1];
u2(1.0821577342855735, 4.895649112380184) q[4];
id q[0];
rcccx q[3], q[2], q[0], q[1];
id q[4];
cz q[2], q[1];
swap q[3], q[0];
h q[4];
rxx_4561805264(3.5854988860365573) q[0], q[4];
t q[1];
cu(0.40958399315880867, 3.990718568867305, 2.84505469983729, 5.699030979872818) q[2], q[3];
u3(4.173555399712835, 4.4198833052703215, 0.44976114338924383) q[0];
cu3_4561800512(2.8605764898565638, 5.170710936376165, 5.488501740367376) q[4], q[2];
cx q[1], q[3];
crx(2.2339254799644626) q[4], q[3];
u2(3.91606600040121, 1.390121143490713) q[0];
z q[2];
z q[1];
u1(5.783198180103414) q[4];
dcx q[1], q[2];
x q[3];
x q[0];
crx(4.0919576935972835) q[3], q[4];
rzz_4561801520(0.7232781281408959) q[1], q[0];
rx(4.539572917990819) q[2];
swap q[0], q[3];
rxx_4561801760(1.8326849936630916) q[1], q[4];
rz(5.517978161617566) q[2];
r_4561802480(0.7116864451977956, 1.6494169228951434) q[4];
cp(3.3075630139223575) q[3], q[2];
u2(1.6195741656877172, 1.5668059501956018) q[1];
sxdg q[0];
xx_plus_yy_4561800704(5.577838579700639, 4.62988674404088) q[4], q[1];
s q[0];
tdg q[3];
t q[2];
cp(2.463047333131188) q[3], q[1];
crx(6.279529835192695) q[2], q[4];
p(5.382905061963231) q[0];
ryy_4561811984(0.6664110416137641) q[0], q[2];
crz(4.465330534821568) q[3], q[1];
y q[4];
dcx q[3], q[2];
cx q[1], q[0];
p(6.206463333597783) q[4];
rzz_4561812272(1.4571137830068686) q[3], q[1];
U(5.708731501936456, 0.4247136272551705, 4.1555371347456544) q[4];
cz q[2], q[0];
c3sx q[3], q[1], q[0], q[4];
tdg q[2];
xx_plus_yy_4561813424(5.100607307222783, 5.033245182275803) q[1], q[0];
cswap q[3], q[2], q[4];
cswap q[0], q[2], q[4];
ry(1.0129062533656064) q[1];
r_4561807232(2.0737351891933526, 5.7182821663878896) q[3];
y q[4];
sdg q[0];
csdg q[2], q[1];
rz(4.604484673929942) q[3];
z q[4];
sdg q[1];
tdg q[3];
r_4561813184(5.42504910357227, 3.2703721114831223) q[0];
tdg q[2];
rcccx q[3], q[0], q[2], q[4];
p(4.983217448626095) q[1];
cu(5.95043772567689, 0.22330152916674426, 1.6992278999073012, 1.095699032592609) q[1], q[0];
csx q[3], q[4];
u1(5.94178684379482) q[2];
x q[2];
ch q[1], q[3];
ry(5.236103483134901) q[0];
s q[4];
ccz q[0], q[1], q[3];
U(3.9539318257102822, 5.2556466260601615, 2.0820458849541743) q[2];
u2(1.3461329941561546, 3.515672383412672) q[4];
rx(5.459812787743326) q[4];
rxx_4561806224(0.17408946594529412) q[2], q[3];
rx(0.5677525036539586) q[1];
sx q[0];
swap q[4], q[0];
cs q[2], q[3];
t q[1];
rcccx q[2], q[4], q[0], q[3];
tdg q[1];
cy q[4], q[0];
csx q[3], q[2];
t q[1];
rcccx q[2], q[3], q[4], q[0];
rz(6.009342317171654) q[1];
rxx_4561805984(5.914044872118755) q[2], q[1];
rzz_4561805408(3.8864426027599386) q[4], q[3];
sxdg q[0];
cz q[4], q[0];
rxx_4561806128(0.174593493662248) q[2], q[3];
y q[1];
rzx_4561806080(0.5278746101320694) q[2], q[3];
cs q[1], q[4];
u3(1.840136941047111, 0.6282965631952618, 0.7169712590554955) q[0];
h q[0];
x q[2];
cy q[1], q[3];
p(4.872439266694735) q[4];
crz(2.8575898853019392) q[0], q[2];
rz(4.63096768837457) q[4];
cu(4.311331091631522, 3.538946743083405, 0.985189401136506, 0.1033899929490885) q[1], q[3];
rcccx q[2], q[1], q[4], q[3];
sdg q[0];
u1(0.4944752086030557) q[0];
ecr q[2], q[1];
csx q[4], q[3];
rzz_4561806320(5.761955862713218) q[1], q[2];
tdg q[4];
s q[3];
rx(5.553158587564898) q[0];
y q[4];
cp(2.84890166632361) q[3], q[1];
id q[2];
u3(5.934914611553568, 4.499803795161589, 2.648273886713497) q[0];
ecr q[1], q[2];
dcx q[0], q[3];
sxdg q[4];
ccx q[2], q[0], q[1];
sdg q[4];
h q[3];
