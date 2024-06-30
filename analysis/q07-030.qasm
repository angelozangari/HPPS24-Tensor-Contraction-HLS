OPENQASM 3.0;
include "stdgates.inc";
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
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
gate xx_plus_yy_4418148576(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.137526551113036) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.6567431546516416) _gate_q_1;
  ry(-0.6567431546516416) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.137526551113036) _gate_q_0;
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
gate rzx_4540374272(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.3976881383554093) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate xx_plus_yy_4540368512(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.3724887335801554) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.6048023559913307) _gate_q_1;
  ry(-1.6048023559913307) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.3724887335801554) _gate_q_0;
}
gate xx_plus_yy_4540371920(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.9403638095970055) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5377530168650106) _gate_q_1;
  ry(-2.5377530168650106) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.9403638095970055) _gate_q_0;
}
gate xx_minus_yy_4540372304(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.3154073938524742) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.2810963035544051) _gate_q_0;
  ry(-0.2810963035544051) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.3154073938524742) _gate_q_1;
}
gate rzz_4540367600(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.4498131679556) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate r_4540371680(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.7203363946658525, 1.5637133194757973, -1.5637133194757973) _gate_q_0;
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
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate xx_minus_yy_4540370576(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.8147598087675225) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.03365657245188869) _gate_q_0;
  ry(-0.03365657245188869) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.8147598087675225) _gate_q_1;
}
gate xx_plus_yy_4540369664(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(3.9095513067793264) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.2362661504608563) _gate_q_1;
  ry(-0.2362661504608563) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-3.9095513067793264) _gate_q_0;
}
gate rxx_4540367648(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.593391180490254) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate r_4540368176(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.093624230504728, 2.298938412636915, -2.298938412636915) _gate_q_0;
}
gate cu1_4540368848(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.3715117334226725) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.3715117334226725) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.3715117334226725) _gate_q_1;
}
gate cu3_4540368416(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.9592630773763178) _gate_q_0;
  u1(1.889307964282187) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.5710697674203848, 0, -2.9592630773763178) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.5710697674203848, 1.0699551130941305, 0) _gate_q_1;
}
gate xx_minus_yy_4540374944(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.608723064012516) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.8300720250410645) _gate_q_0;
  ry(-1.8300720250410645) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.608723064012516) _gate_q_1;
}
gate rxx_4540376528(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.4752623297993273) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4540373744(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.6804840629556845) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.5890873997243272) _gate_q_0;
  ry(-0.5890873997243272) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.6804840629556845) _gate_q_1;
}
gate rzz_4540369376(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.021889745489475) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
qubit[7] q;
cp(5.707572249615131) q[4], q[1];
rx(1.9860487236584825) q[6];
p(1.5497019526853266) q[3];
U(3.462556652852767, 2.599260739901345, 3.6575749961622277) q[0];
cz q[2], q[5];
ccz q[0], q[4], q[5];
csdg q[2], q[6];
u2(4.259276777937268, 3.6581402936713605) q[3];
u2(0.34041598618601626, 1.1350310999728874) q[1];
xx_plus_yy_4418148576(1.3134863093032831, 5.137526551113036) q[4], q[6];
u2(0.5425888923967191, 4.58466424240368) q[5];
cp(0.9886162680151008) q[1], q[3];
crz(1.48483897867804) q[0], q[2];
sdg q[3];
u2(0.9595637538202696, 0.7345710819777772) q[1];
sdg q[4];
cz q[6], q[5];
sx q[0];
u2(0.5314617447734158, 4.994744615789624) q[2];
csdg q[6], q[1];
cs q[3], q[4];
csx q[0], q[2];
sx q[5];
crx(2.5446187885610687) q[2], q[0];
y q[3];
c3sx q[1], q[5], q[6], q[4];
cp(1.5144918665621485) q[1], q[6];
ch q[2], q[5];
rccx q[0], q[4], q[3];
cy q[3], q[4];
cy q[1], q[6];
sx q[5];
ry(0.9841757245586433) q[2];
sx q[0];
rz(6.1393471962604185) q[2];
rzx_4540374272(0.3976881383554093) q[4], q[6];
u2(0.3284148989141213, 5.779432534046518) q[3];
cx q[0], q[1];
h q[5];
ccx q[2], q[6], q[0];
xx_plus_yy_4540368512(3.2096047119826614, 1.3724887335801554) q[4], q[5];
x q[1];
rx(2.462534729742807) q[3];
swap q[0], q[3];
xx_plus_yy_4540371920(5.075506033730021, 3.9403638095970055) q[5], q[1];
xx_minus_yy_4540372304(0.5621926071088102, 1.3154073938524742) q[4], q[6];
z q[2];
t q[5];
rzz_4540367600(3.4498131679556) q[3], q[2];
dcx q[1], q[6];
sxdg q[0];
r_4540371680(0.7203363946658525, 3.134509646270694) q[4];
csx q[5], q[1];
cswap q[3], q[0], q[4];
z q[2];
u3(3.2793789827580584, 1.7008923419871813, 4.559664233520739) q[6];
ccz q[0], q[1], q[5];
cswap q[6], q[2], q[3];
z q[4];
y q[1];
tdg q[0];
cu(4.454163829618458, 1.9648025812403769, 5.111353879944847, 3.8369163810440208) q[5], q[2];
ecr q[3], q[4];
U(2.6548681753499, 3.892189140131525, 1.5048093605064858) q[6];
iswap q[2], q[0];
csx q[6], q[1];
cs q[3], q[5];
ry(1.3661268541440492) q[4];
xx_minus_yy_4540370576(0.06731314490377738, 1.8147598087675225) q[1], q[0];
ccx q[5], q[2], q[4];
rx(0.43795721862714415) q[3];
tdg q[6];
cz q[3], q[4];
sx q[6];
xx_plus_yy_4540369664(0.4725323009217126, 3.9095513067793264) q[0], q[1];
rxx_4540367648(4.593391180490254) q[2], q[5];
u1(4.248791308399902) q[4];
h q[1];
rcccx q[0], q[5], q[2], q[3];
x q[6];
u2(2.358283701752497, 5.223843191171106) q[0];
s q[6];
cy q[3], q[1];
U(2.615591695897346, 0.6887229280418967, 4.095571363652299) q[4];
crz(4.809294798994986) q[2], q[5];
y q[0];
ccx q[2], q[5], q[3];
r_4540368176(5.093624230504728, 3.8697347394318116) q[6];
cry(1.9326556389721152) q[4], q[1];
sdg q[5];
sxdg q[0];
cu1_4540368848(2.743023466845345) q[4], q[6];
cry(1.9728541989413002) q[2], q[3];
rx(3.397105384382358) q[1];
cu3_4540368416(3.1421395348407697, 1.0699551130941305, 4.848571041658505) q[4], q[6];
xx_minus_yy_4540374944(3.660144050082129, 5.608723064012516) q[0], q[5];
z q[2];
sxdg q[1];
rz(3.6674738373637674) q[3];
y q[0];
csx q[5], q[1];
iswap q[2], q[3];
cz q[4], q[6];
rz(1.4197332663196935) q[6];
cp(4.342419195094761) q[2], q[5];
cs q[4], q[3];
h q[1];
t q[0];
iswap q[5], q[6];
sdg q[0];
rxx_4540376528(1.4752623297993273) q[2], q[1];
cx q[3], q[4];
xx_minus_yy_4540373744(1.1781747994486544, 3.6804840629556845) q[2], q[5];
p(5.873460207238423) q[0];
crz(2.962210407521857) q[4], q[1];
cx q[6], q[3];
u3(6.165337581936994, 1.846730791304462, 1.291758868088645) q[4];
rccx q[0], q[2], q[6];
u2(0.7962954805702361, 2.032111772599269) q[1];
csdg q[5], q[3];
cry(5.389472482845302) q[6], q[2];
s q[5];
sx q[0];
u2(4.6329250143503025, 3.418564482583796) q[1];
rzz_4540369376(2.021889745489475) q[4], q[3];
cswap q[4], q[3], q[2];
ecr q[0], q[1];
cx q[6], q[5];
