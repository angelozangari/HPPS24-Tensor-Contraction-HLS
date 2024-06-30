OPENQASM 3.0;
include "stdgates.inc";
gate rzx_4564440976(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.525618933581089) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu3_4564442272(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.356105961832011) _gate_q_0;
  u1(1.003110046272414) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.4541012056140494, 0, -1.356105961832011) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.4541012056140494, 0.352995915559597, 0) _gate_q_1;
}
gate cu1_4564442512(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.3215955174559094) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.3215955174559094) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.3215955174559094) _gate_q_1;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_minus_yy_4564447168(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.6808551750310134) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.411909351800533) _gate_q_0;
  ry(-2.411909351800533) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.6808551750310134) _gate_q_1;
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
gate rzz_4564451104(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.5086104805990965) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate r_4564440352(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.564400778197895, 1.1323117332944315, -1.1323117332944315) _gate_q_0;
}
gate rxx_4564436416(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.3420858970666545) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4564435792(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.041441263437936) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate ryy_4564436608(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.9577921860111757) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4564437136(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.8177654902843035) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4564436896(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.4879038309231192) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5511710090164352) _gate_q_1;
  ry(-2.5511710090164352) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.4879038309231192) _gate_q_0;
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
gate xx_plus_yy_4564437376(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.1753843305385985) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.8215857280866543) _gate_q_1;
  ry(-2.8215857280866543) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.1753843305385985) _gate_q_0;
}
gate rxx_4564436656(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.833179699557549) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4564435936(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.9047538352661335) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.998069753762454) _gate_q_1;
  ry(-2.998069753762454) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.9047538352661335) _gate_q_0;
}
gate cu3_4564436176(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.622105561017176) _gate_q_0;
  u1(1.37293973843249) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.40892876556693, 0, -3.622105561017176) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.40892876556693, 2.2491658225846862, 0) _gate_q_1;
}
gate xx_minus_yy_4564438192(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-6.041903528987768) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.3270211047428366) _gate_q_0;
  ry(-1.3270211047428366) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(6.041903528987768) _gate_q_1;
}
gate xx_minus_yy_4564438480(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-6.094580420186319) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.6595385289524758) _gate_q_0;
  ry(-1.6595385289524758) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(6.094580420186319) _gate_q_1;
}
gate xx_minus_yy_4564438000(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.990162641066328) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.899241338998101) _gate_q_0;
  ry(-2.899241338998101) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.990162641066328) _gate_q_1;
}
gate rxx_4564437328(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.316020145355966) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4564439056(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.4953891612633674) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4564438912(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.601917665834248) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4564439104(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.4577271258118906) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4564439344(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.730970952817006) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.2310260627370922) _gate_q_0;
  ry(-0.2310260627370922) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.730970952817006) _gate_q_1;
}
gate rzz_4564439440(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.06643029769565) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4564439200(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.3147483547058559, 0.04056510607942365, -0.04056510607942365) _gate_q_0;
}
gate rxx_4564439968(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.7250561998189573) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4564440064(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.772358414841167) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4564439824(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.6014748040170568) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.2107378244792753) _gate_q_1;
  ry(-0.2107378244792753) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.6014748040170568) _gate_q_0;
}
gate cu3_4564438288(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.013109465543785) _gate_q_0;
  u1(0.9294193977065133) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.242472124584026, 0, -5.013109465543785) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.242472124584026, 4.083690067837272, 0) _gate_q_1;
}
gate r_4564438240(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.624936648115321, 1.6661789239078253, -1.6661789239078253) _gate_q_0;
}
qubit[6] q;
ry(2.9814344245099815) q[4];
rzx_4564440976(3.525618933581089) q[0], q[5];
s q[1];
cy q[3], q[2];
cu3_4564442272(2.908202411228099, 0.352995915559597, 2.359216008104425) q[4], q[1];
t q[5];
cu1_4564442512(0.6431910349118188) q[0], q[3];
u3(5.409463412534831, 3.203312316424243, 5.215977134939474) q[2];
rz(0.8917955686071831) q[0];
U(2.1843090774115757, 2.883695573307069, 4.004744967334984) q[4];
cy q[3], q[5];
rx(4.738340849123506) q[2];
U(5.108550772536401, 5.145902389653423, 0.014561758941935742) q[1];
crx(0.9272078721685894) q[2], q[3];
ccz q[0], q[5], q[4];
sdg q[1];
xx_minus_yy_4564447168(4.823818703601066, 2.6808551750310134) q[1], q[2];
csx q[4], q[3];
cp(3.7322099722647413) q[0], q[5];
p(5.866737096884415) q[2];
rcccx q[0], q[4], q[1], q[5];
id q[3];
z q[5];
c3sx q[4], q[1], q[2], q[0];
id q[3];
id q[5];
h q[4];
p(1.3431868914395375) q[0];
u2(5.530470172416963, 4.905474956457759) q[3];
rzz_4564451104(5.5086104805990965) q[1], q[2];
swap q[1], q[3];
u3(0.11135054582883128, 6.0197407107671435, 2.4376211660222933) q[2];
ccz q[0], q[5], q[4];
u3(3.386442100330409, 0.6048309249818647, 3.7544823355099033) q[2];
cswap q[4], q[1], q[0];
dcx q[3], q[5];
id q[5];
s q[4];
cs q[1], q[2];
p(3.2002266776426698) q[0];
p(3.005715849546453) q[3];
dcx q[1], q[3];
z q[2];
p(4.6370037751019595) q[4];
swap q[5], q[0];
r_4564440352(4.564400778197895, 2.703108060089328) q[0];
cz q[5], q[3];
csx q[1], q[4];
ry(0.06825727559223549) q[2];
u2(3.1352048197740623, 2.8795978392732726) q[0];
cp(1.5914715866375504) q[3], q[5];
ccx q[4], q[1], q[2];
ry(1.2830300840998465) q[3];
rx(3.369930001978305) q[5];
s q[4];
cswap q[2], q[0], q[1];
rxx_4564436416(1.3420858970666545) q[4], q[2];
sx q[3];
x q[1];
rzz_4564435792(4.041441263437936) q[0], q[5];
iswap q[3], q[2];
cry(5.070806833813254) q[1], q[4];
p(3.61931670987277) q[0];
u3(1.8086286469858093, 4.478668504437558, 4.125782151711202) q[5];
csdg q[3], q[2];
swap q[0], q[5];
crz(3.354442531722045) q[4], q[1];
ryy_4564436608(0.9577921860111757) q[0], q[4];
crx(4.570724078899744) q[2], q[3];
cs q[5], q[1];
rzx_4564437136(4.8177654902843035) q[4], q[2];
ry(2.1230441486709823) q[0];
z q[3];
xx_plus_yy_4564436896(5.1023420180328705, 1.4879038309231192) q[5], q[1];
csx q[5], q[3];
rccx q[0], q[2], q[1];
u1(3.2854980435703256) q[4];
ecr q[1], q[4];
crx(4.8751825384682865) q[5], q[3];
tdg q[2];
s q[0];
cx q[0], q[3];
ry(1.6330607440371607) q[4];
ry(2.1583252238495847) q[2];
xx_plus_yy_4564437376(5.643171456173309, 4.1753843305385985) q[1], q[5];
tdg q[0];
rxx_4564436656(4.833179699557549) q[5], q[2];
rz(3.980876873968021) q[1];
p(3.3117987004473357) q[4];
id q[3];
s q[2];
crx(0.607159030756107) q[0], q[4];
rz(2.9317070616916174) q[1];
rx(0.03291883335953499) q[5];
sdg q[3];
p(1.6562801178240623) q[4];
sx q[1];
rccx q[3], q[0], q[2];
p(4.511716708573103) q[5];
xx_plus_yy_4564435936(5.996139507524908, 2.9047538352661335) q[4], q[1];
h q[0];
cs q[2], q[5];
sdg q[3];
cu3_4564436176(4.81785753113386, 2.2491658225846862, 4.995045299449666) q[3], q[2];
cx q[4], q[1];
sx q[0];
ry(5.023166274948509) q[5];
id q[0];
xx_minus_yy_4564438192(2.6540422094856733, 6.041903528987768) q[2], q[5];
swap q[1], q[3];
rx(5.601132984111092) q[4];
dcx q[3], q[2];
cs q[0], q[4];
sdg q[5];
u3(6.277153706330546, 0.647794075633678, 4.9062616725645265) q[1];
t q[4];
cu(3.474566333012591, 0.08943655447941226, 0.08714049727291442, 3.669740912634626) q[5], q[0];
cswap q[3], q[2], q[1];
xx_minus_yy_4564438480(3.3190770579049516, 6.094580420186319) q[0], q[2];
dcx q[1], q[4];
u2(5.0777716633789405, 0.40933368448898383) q[5];
id q[3];
xx_minus_yy_4564438000(5.798482677996202, 0.990162641066328) q[1], q[2];
rxx_4564437328(4.316020145355966) q[4], q[5];
u2(4.784115333771824, 5.155940158630439) q[3];
t q[0];
crx(3.385175506179053) q[2], q[0];
p(3.454410108343018) q[1];
u1(4.847041377048472) q[4];
sxdg q[5];
sdg q[3];
csx q[5], q[4];
rxx_4564439056(3.4953891612633674) q[1], q[0];
rzx_4564438912(5.601917665834248) q[3], q[2];
swap q[0], q[3];
cz q[4], q[1];
dcx q[2], q[5];
h q[3];
tdg q[5];
c3sx q[4], q[1], q[2], q[0];
s q[5];
cswap q[3], q[2], q[4];
cu(4.312605252859229, 2.702242026539229, 0.8608697804556601, 1.4668857555493215) q[1], q[0];
ccz q[2], q[5], q[4];
cz q[0], q[3];
tdg q[1];
rxx_4564439104(0.4577271258118906) q[3], q[4];
sx q[1];
ecr q[0], q[5];
x q[2];
ccz q[0], q[1], q[2];
csx q[5], q[4];
tdg q[3];
crx(2.617591279718232) q[0], q[3];
h q[1];
cx q[4], q[2];
x q[5];
dcx q[5], q[3];
xx_minus_yy_4564439344(0.4620521254741844, 4.730970952817006) q[1], q[2];
rzz_4564439440(5.06643029769565) q[0], q[4];
cs q[0], q[4];
swap q[3], q[2];
rz(2.5393189653048616) q[1];
r_4564439200(0.3147483547058559, 1.6113614328743202) q[5];
rxx_4564439968(3.7250561998189573) q[3], q[5];
rxx_4564440064(1.772358414841167) q[2], q[0];
ecr q[1], q[4];
xx_plus_yy_4564439824(0.4214756489585506, 0.6014748040170568) q[3], q[1];
cu3_4564438288(4.484944249168052, 4.083690067837272, 5.942528863250298) q[5], q[2];
id q[4];
rz(5.781207242972911) q[0];
ccz q[2], q[0], q[5];
sxdg q[3];
cs q[1], q[4];
tdg q[4];
U(1.7321423930162523, 2.5323443989444794, 1.815506148892719) q[2];
iswap q[5], q[1];
id q[3];
tdg q[0];
rccx q[2], q[5], q[3];
sxdg q[4];
u3(5.008164232157357, 2.875867461746614, 3.0212414191736543) q[1];
sx q[0];
r_4564438240(5.624936648115321, 3.236975250702722) q[0];
x q[5];
crz(2.9417064741487167) q[3], q[2];
u3(5.8710940280576835, 2.9745021140977106, 0.8685251699168657) q[1];
s q[4];
