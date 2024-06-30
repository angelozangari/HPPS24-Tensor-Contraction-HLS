OPENQASM 3.0;
include "stdgates.inc";
gate rxx_4536757584(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.4849088551135883) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
}
gate rzx_4536759216(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.5004944375494635) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate ryy_4536758880(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.9241102861862904) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
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
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
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
gate xx_minus_yy_4536760080(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.2321895726026866) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(3.077567609421937) _gate_q_0;
  ry(-3.077567609421937) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.2321895726026866) _gate_q_1;
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
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate xx_plus_yy_4536759696(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.5944179556703147) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.2312469708664597) _gate_q_1;
  ry(-1.2312469708664597) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.5944179556703147) _gate_q_0;
}
gate cu1_4536761664(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.08077284119424451) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.08077284119424451) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.08077284119424451) _gate_q_1;
}
gate rzz_4536760896(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.7579917876344442) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4536761328(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.7627324824923627) _gate_q_0;
  u1(-1.6732948262140903) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.5190880254473744, 0, -1.7627324824923627) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.5190880254473744, 3.436027308706453, 0) _gate_q_1;
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
gate xx_plus_yy_4536762240(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(6.163903619334976) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.735776017520683) _gate_q_1;
  ry(-2.735776017520683) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-6.163903619334976) _gate_q_0;
}
gate cu1_4536760032(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.7716245800022888) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.7716245800022888) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.7716245800022888) _gate_q_1;
}
gate xx_plus_yy_4536761616(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.316985711577068) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.550748462587923) _gate_q_1;
  ry(-1.550748462587923) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.316985711577068) _gate_q_0;
}
gate xx_minus_yy_4536761088(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.6485166718986852) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.522293261805882) _gate_q_0;
  ry(-1.522293261805882) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.6485166718986852) _gate_q_1;
}
gate xx_minus_yy_4536760224(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.929609674876061) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.1330151581794712) _gate_q_0;
  ry(-1.1330151581794712) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.929609674876061) _gate_q_1;
}
gate rzz_4536761520(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.1428987222889395) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4536761568(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.06737379962297474) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.5400652581998944) _gate_q_0;
  ry(-1.5400652581998944) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.06737379962297474) _gate_q_1;
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
gate rzz_4536761712(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.0169524820500593) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4536762192(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.5926199955556303, -0.8774295348114995, 0.8774295348114995) _gate_q_0;
}
gate xx_minus_yy_4536759792(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.2218511016635223) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.1295348997121815) _gate_q_0;
  ry(-1.1295348997121815) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.2218511016635223) _gate_q_1;
}
gate rxx_4536761904(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.0880766480575086) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_plus_yy_4536747456(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.1468113221874496) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.8599039324328228) _gate_q_1;
  ry(-1.8599039324328228) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.1468113221874496) _gate_q_0;
}
gate ryy_4536762000(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1750213056495706) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
qubit[5] q;
rxx_4536757584(3.4849088551135883) q[0], q[2];
cry(0.6714196413486082) q[1], q[4];
U(0.6237408671385513, 5.438626786415503, 0.8948846341947577) q[3];
cry(5.130388343192758) q[3], q[2];
csdg q[1], q[4];
t q[0];
cy q[4], q[2];
csdg q[1], q[0];
sdg q[3];
p(2.939485841193984) q[4];
csdg q[3], q[2];
rzx_4536759216(3.5004944375494635) q[1], q[0];
ryy_4536758880(3.9241102861862904) q[4], q[2];
cx q[1], q[3];
x q[0];
cry(4.640727071650977) q[0], q[3];
ccz q[1], q[4], q[2];
z q[4];
swap q[2], q[0];
cu(2.7408405246440912, 1.5369525326846682, 1.0346017399949528, 4.83954974773173) q[1], q[3];
sxdg q[1];
cswap q[0], q[4], q[2];
sdg q[3];
swap q[1], q[2];
rz(0.07024714355390263) q[0];
t q[3];
sdg q[4];
csdg q[0], q[1];
u1(0.8422072991434346) q[3];
ch q[2], q[4];
t q[2];
U(2.992234091600489, 4.199908193073128, 3.2532492255449537) q[3];
cp(1.0700526698349457) q[1], q[0];
h q[4];
t q[4];
cs q[3], q[2];
sxdg q[1];
s q[0];
ecr q[4], q[0];
rx(2.2997052405906313) q[3];
cx q[1], q[2];
id q[3];
tdg q[0];
crx(4.298392963957224) q[4], q[1];
h q[2];
swap q[1], q[3];
xx_minus_yy_4536760080(6.155135218843874, 3.2321895726026866) q[4], q[0];
s q[2];
y q[2];
p(1.8154810318146852) q[3];
ecr q[4], q[0];
tdg q[1];
csx q[4], q[1];
h q[0];
crx(2.3559712263050545) q[3], q[2];
h q[1];
rcccx q[0], q[4], q[2], q[3];
rz(2.01347740132056) q[2];
ry(2.1097737357618023) q[3];
cx q[0], q[4];
s q[1];
iswap q[2], q[3];
ecr q[0], q[1];
sx q[4];
id q[4];
xx_plus_yy_4536759696(2.4624939417329195, 0.5944179556703147) q[2], q[0];
t q[3];
u3(3.6656419661002846, 5.8205384400737, 4.1963381865262255) q[1];
sxdg q[2];
h q[4];
sdg q[1];
cu1_4536761664(0.16154568238848901) q[3], q[0];
rzz_4536760896(0.7579917876344442) q[2], q[0];
U(3.3178347145513762, 5.479553441014511, 2.350532513230044) q[1];
cz q[3], q[4];
sdg q[0];
U(0.28084304052492165, 1.6526762529020127, 0.5463151428071297) q[1];
p(5.102719785851602) q[4];
cu3_4536761328(5.038176050894749, 3.436027308706453, 0.08943765627827256) q[3], q[2];
c3sx q[3], q[4], q[0], q[1];
z q[2];
csx q[4], q[0];
xx_plus_yy_4536762240(5.471552035041366, 6.163903619334976) q[1], q[2];
rz(1.3297947708480122) q[3];
cswap q[1], q[4], q[3];
cu1_4536760032(1.5432491600045777) q[0], q[2];
crz(3.360622857735517) q[3], q[1];
h q[0];
p(3.4927551681804) q[2];
u2(3.924264960260627, 3.384612920814727) q[4];
ry(6.134242885758456) q[3];
xx_plus_yy_4536761616(3.101496925175846, 4.316985711577068) q[2], q[1];
csdg q[0], q[4];
xx_minus_yy_4536761088(3.044586523611764, 0.6485166718986852) q[0], q[3];
xx_minus_yy_4536760224(2.2660303163589424, 5.929609674876061) q[2], q[1];
h q[4];
crz(3.8674732786430104) q[4], q[1];
rzz_4536761520(3.1428987222889395) q[2], q[3];
p(4.195928588280176) q[0];
xx_minus_yy_4536761568(3.0801305163997887, 0.06737379962297474) q[1], q[4];
rccx q[0], q[2], q[3];
rzz_4536761712(3.0169524820500593) q[2], q[3];
rx(0.8469573576197168) q[0];
sxdg q[4];
p(3.6476587024563316) q[1];
r_4536762192(0.5926199955556303, 0.693366791983397) q[3];
cx q[4], q[0];
csx q[1], q[2];
rx(5.964465097549028) q[3];
rx(6.282148260800768) q[1];
cry(4.291947088047152) q[2], q[4];
sxdg q[0];
xx_minus_yy_4536759792(2.259069799424363, 1.2218511016635223) q[0], q[1];
u2(3.7232674268864994, 4.619803378993676) q[4];
cu(1.3978186649996247, 0.6494626199978918, 3.998057708879967, 4.676519422135388) q[2], q[3];
tdg q[4];
swap q[3], q[0];
ecr q[1], q[2];
cx q[3], q[2];
rxx_4536761904(3.0880766480575086) q[4], q[0];
sxdg q[1];
csx q[0], q[4];
z q[3];
xx_plus_yy_4536747456(3.7198078648656456, 2.1468113221874496) q[1], q[2];
ryy_4536762000(2.1750213056495706) q[1], q[4];
cp(3.0520750809827013) q[3], q[2];
u3(2.434173118107172, 2.4171568116280904, 2.3827071006027243) q[0];
