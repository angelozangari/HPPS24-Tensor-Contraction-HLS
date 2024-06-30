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
gate rzx_4541061632(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.811693481010306) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4541057648(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.982293972806303) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.0693513060938675) _gate_q_1;
  ry(-1.0693513060938675) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.982293972806303) _gate_q_0;
}
gate r_4541061008(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.075311129262925, 3.977642990172951, -3.977642990172951) _gate_q_0;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate rxx_4541061200(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.193714649949246) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4541059040(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.160307497358052) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4541058608(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.878343039731444) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate ryy_4541060432(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.564404519760825) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4541058128(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.053947136204606) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4541063840(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.67440370649726) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4541063504(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.9557259777140703) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rxx_4541065040(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.623757442525383) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzz_4541060288(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.8909011359148958) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4541067824(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.011517329974876) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.10782204576649629) _gate_q_0;
  ry(-0.10782204576649629) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.011517329974876) _gate_q_1;
}
gate rxx_4541066240(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.9580722560019779) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4541068640(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9877007988915585) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4541068736(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.681423144276958) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate xx_minus_yy_4541069264(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.6604292229937911) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.3977576485786239) _gate_q_0;
  ry(-0.3977576485786239) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.6604292229937911) _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate r_4541069072(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.7150710959673385, -1.0648604390357066, 1.0648604390357066) _gate_q_0;
}
gate ccz _gate_q_0, _gate_q_1, _gate_q_2 {
  h _gate_q_2;
  ccx _gate_q_0, _gate_q_1, _gate_q_2;
  h _gate_q_2;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate cu3_4541070464(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.402147934909044) _gate_q_0;
  u1(-0.8148619255911724) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.7012678014351774, 0, -1.402147934909044) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.7012678014351774, 2.2170098605002164, 0) _gate_q_1;
}
gate cu3_4541067584(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.184578280985239) _gate_q_0;
  u1(1.3592915722095233) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.4071388111096358, 0, -4.184578280985239) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.4071388111096358, 2.825286708775715, 0) _gate_q_1;
}
gate rxx_4541071184(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.9416272804294883) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
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
gate xx_plus_yy_4541064944(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.658425668354275) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.934820122998441) _gate_q_1;
  ry(-2.934820122998441) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.658425668354275) _gate_q_0;
}
gate rzx_4541067152(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(6.191542531719835) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4541066624(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.756993260554712, 3.0835379914153824, -3.0835379914153824) _gate_q_0;
}
gate rxx_4541065376(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.615677018438111) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate cu3_4541064128(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(0.635575622514982) _gate_q_0;
  u1(-0.25546116673219627) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1977512681427198, 0, -0.635575622514982) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1977512681427198, 0.8910367892471783, 0) _gate_q_1;
}
gate r_4541062208(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.191832947729593, 1.8613392173773162, -1.8613392173773162) _gate_q_0;
}
gate rzx_4541065280(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.1940919081510492) _gate_q_1;
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
gate rxx_4541064848(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.6857016986035913) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate rzx_4541066384(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.43930035293163) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate r_4541068496(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.02957241738504123, 3.3799323998275925, -3.3799323998275925) _gate_q_0;
}
gate cu3_4541061824(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.5444321425973) _gate_q_0;
  u1(0.9089236110111654) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.953715889143901, 0, -3.5444321425973) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.953715889143901, 2.635508531586135, 0) _gate_q_1;
}
gate xx_plus_yy_4541068976(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(4.956717315434351) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.7855194396139054) _gate_q_1;
  ry(-0.7855194396139054) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-4.956717315434351) _gate_q_0;
}
gate rzz_4541064656(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.6880009147600417) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4541058176(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-0.7205096631568777) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.9046420358834117) _gate_q_0;
  ry(-0.9046420358834117) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(0.7205096631568777) _gate_q_1;
}
qubit[7] q;
cx q[5], q[0];
rccx q[4], q[3], q[1];
cy q[2], q[6];
u2(4.434695486324986, 6.113251669405099) q[2];
rzx_4541061632(5.811693481010306) q[6], q[4];
rcccx q[5], q[1], q[3], q[0];
cswap q[2], q[5], q[1];
id q[3];
cry(3.7563436143193143) q[6], q[4];
z q[0];
ry(6.14893283570283) q[1];
xx_plus_yy_4541057648(2.138702612187735, 5.982293972806303) q[3], q[2];
rccx q[4], q[5], q[6];
r_4541061008(3.075311129262925, 5.548439316967848) q[0];
iswap q[5], q[6];
u2(6.018539651585672, 4.8169304477481605) q[3];
id q[1];
rxx_4541061200(4.193714649949246) q[0], q[4];
y q[2];
cz q[5], q[0];
rzx_4541059040(2.160307497358052) q[1], q[2];
x q[6];
crz(1.8858728100159345) q[3], q[4];
cx q[4], q[6];
t q[2];
s q[0];
u2(3.608397788425114, 3.577646875272483) q[3];
p(3.7122024686698203) q[5];
h q[1];
z q[4];
sxdg q[2];
rx(3.4622952178810844) q[5];
rccx q[0], q[6], q[3];
rx(2.378161770241915) q[1];
rxx_4541058608(4.878343039731444) q[6], q[3];
ecr q[0], q[2];
crx(0.7669376306997574) q[4], q[1];
y q[5];
ryy_4541060432(2.564404519760825) q[5], q[4];
rccx q[2], q[3], q[0];
u3(5.196749009164553, 5.754721129838241, 0.1096343686442874) q[6];
sxdg q[1];
rx(3.006176193885235) q[5];
rzx_4541058128(6.053947136204606) q[6], q[0];
id q[4];
rzz_4541063840(4.67440370649726) q[3], q[2];
U(2.987605705840839, 0.7788352521486008, 2.391152626759904) q[1];
sdg q[1];
rcccx q[5], q[2], q[4], q[6];
rx(0.9570101649564964) q[0];
p(2.648586965326319) q[3];
tdg q[2];
sx q[1];
rcccx q[0], q[3], q[5], q[4];
ry(2.6263906060926474) q[6];
u2(0.9036928370953318, 3.2225706790496376) q[5];
U(1.705664106423704, 0.9008346806921997, 2.0862455321572773) q[0];
p(6.123200446225614) q[1];
cry(1.373721025819247) q[6], q[4];
sxdg q[2];
sdg q[3];
tdg q[2];
cp(6.170027551951807) q[5], q[0];
ry(5.230831466992167) q[3];
x q[6];
t q[1];
sdg q[4];
rz(2.2656915875518013) q[4];
cx q[3], q[2];
p(5.925147898315405) q[5];
cp(0.9872983077581953) q[1], q[6];
sx q[0];
rz(3.898147937198136) q[2];
t q[3];
sx q[4];
rxx_4541063504(2.9557259777140703) q[0], q[1];
cy q[6], q[5];
p(2.4060239007966815) q[4];
id q[5];
h q[3];
rxx_4541065040(4.623757442525383) q[6], q[1];
cy q[2], q[0];
crx(2.449027770854057) q[5], q[2];
crx(5.841518902380324) q[4], q[0];
rzz_4541060288(0.8909011359148958) q[1], q[6];
s q[3];
h q[1];
ry(5.977333989399927) q[6];
cp(2.4098357800932377) q[4], q[0];
u3(4.919576677291557, 5.276975041202831, 5.025411913276343) q[2];
id q[5];
U(1.4472805085876004, 0.28492716015347935, 5.244142581220181) q[3];
cz q[3], q[1];
xx_minus_yy_4541067824(0.21564409153299258, 4.011517329974876) q[0], q[4];
z q[6];
y q[2];
u2(1.3900547992352372, 0.36244123474548057) q[5];
s q[4];
cp(4.735109577589579) q[6], q[5];
rx(0.8611334574520936) q[3];
ry(1.0223865997038917) q[0];
h q[1];
u3(1.1045610008027706, 2.08839530319925, 0.19770936326423635) q[2];
rxx_4541066240(0.9580722560019779) q[3], q[4];
rzx_4541068640(1.9877007988915585) q[5], q[0];
cry(2.074879592616478) q[6], q[2];
sx q[1];
id q[5];
rxx_4541068736(5.681423144276958) q[6], q[4];
crx(0.1690765320055345) q[3], q[0];
xx_minus_yy_4541069264(0.7955152971572478, 1.6604292229937911) q[2], q[1];
iswap q[4], q[0];
cswap q[6], q[2], q[3];
h q[1];
ry(3.539116768123699) q[5];
id q[6];
cs q[1], q[5];
rz(4.581711455225805) q[4];
cz q[0], q[2];
u3(0.794592794092889, 2.4499091525696097, 1.6143972647194413) q[3];
x q[6];
r_4541069072(1.7150710959673385, 0.50593588775919) q[4];
crz(3.7724016563656497) q[3], q[1];
ccz q[5], q[2], q[0];
rcccx q[1], q[3], q[0], q[6];
cry(3.0401697036429263) q[4], q[5];
u2(3.154025824910844, 6.213572203131047) q[2];
ry(5.005289521493931) q[5];
dcx q[4], q[1];
u2(0.9704761070676194, 3.7466130415794847) q[0];
rz(6.110963149882762) q[6];
crz(0.2535937867568927) q[2], q[3];
cp(0.4593190591304638) q[0], q[3];
ccz q[6], q[5], q[1];
t q[4];
y q[2];
cs q[2], q[5];
cx q[6], q[3];
id q[4];
cu3_4541070464(5.402535602870355, 2.2170098605002164, 0.5872860093178717) q[0], q[1];
p(2.6928181478552657) q[2];
tdg q[0];
u3(0.6356225442461045, 4.521940899701508, 2.4518544970753906) q[1];
cu3_4541067584(0.8142776222192716, 2.825286708775715, 5.543869853194762) q[5], q[6];
cu(0.5353084457307249, 6.251732176907695, 5.87985183263211, 5.88043224399875) q[4], q[3];
u3(4.500589376904971, 1.4720643478743278, 1.9924366719031372) q[5];
rxx_4541071184(1.9416272804294883) q[2], q[1];
cx q[6], q[0];
U(3.0276365979843924, 3.8282515458900614, 1.1478732138152665) q[4];
id q[3];
p(6.07806279255795) q[0];
U(4.9332674581505245, 2.9562142250701995, 0.560477105718458) q[2];
swap q[4], q[3];
ccx q[5], q[1], q[6];
rcccx q[4], q[1], q[5], q[0];
rz(0.03879355052413888) q[2];
ry(3.942784529659838) q[6];
sdg q[3];
crz(5.12669862743579) q[5], q[1];
id q[6];
cu(3.587643826703182, 5.658177098232081, 3.2263211558969083, 3.2432278832140855) q[4], q[2];
cz q[3], q[0];
cswap q[2], q[3], q[0];
U(3.0232698198599457, 4.995271027916635, 0.31927845533237253) q[1];
csx q[5], q[6];
h q[4];
cu(5.393723492247103, 1.7119589129154595, 6.100082644743991, 4.485663627482103) q[3], q[0];
y q[1];
rx(2.505060497171561) q[5];
iswap q[6], q[4];
u2(4.909413601144295, 3.742561633686632) q[2];
y q[6];
cs q[0], q[1];
xx_plus_yy_4541064944(5.869640245996882, 2.658425668354275) q[4], q[3];
sdg q[5];
sdg q[2];
sxdg q[2];
cp(0.8000500166557467) q[3], q[6];
id q[4];
sxdg q[5];
u3(5.451816967077305, 2.3815963766363932, 6.161330701987587) q[1];
u3(4.058979217218487, 3.051216498239637, 1.64706515164803) q[0];
rzx_4541067152(6.191542531719835) q[6], q[0];
swap q[2], q[3];
u2(1.3858130491746226, 0.4909526635694381) q[4];
cp(4.365565705356805) q[5], q[1];
ch q[6], q[5];
r_4541066624(4.756993260554712, 4.654334318210279) q[4];
rxx_4541065376(1.615677018438111) q[3], q[2];
sdg q[1];
ry(2.3589812719099488) q[0];
U(5.430064349709775, 1.665939303344186, 4.560231972162091) q[2];
tdg q[0];
cu3_4541064128(2.3955025362854396, 0.8910367892471783, 0.3801144557827858) q[5], q[1];
sx q[3];
p(3.7108507267078323) q[6];
r_4541062208(3.191832947729593, 3.432135544172213) q[4];
rzx_4541065280(0.1940919081510492) q[4], q[6];
cswap q[2], q[0], q[5];
csdg q[1], q[3];
cx q[1], q[4];
t q[3];
rxx_4541064848(2.6857016986035913) q[0], q[5];
cz q[6], q[2];
rzx_4541066384(3.43930035293163) q[6], q[2];
r_4541068496(0.02957241738504123, 4.950728726622489) q[1];
sxdg q[0];
cu3_4541061824(3.907431778287802, 2.635508531586135, 4.453355753608466) q[3], q[4];
y q[5];
p(4.204421025791591) q[4];
cx q[2], q[6];
xx_plus_yy_4541068976(1.5710388792278107, 4.956717315434351) q[3], q[1];
rzz_4541064656(3.6880009147600417) q[5], q[0];
h q[1];
y q[0];
ccz q[5], q[2], q[3];
tdg q[4];
U(3.0984562009764116, 1.1880987323463474, 5.107665736794507) q[6];
sx q[5];
cy q[2], q[4];
xx_minus_yy_4541058176(1.8092840717668235, 0.7205096631568777) q[1], q[3];
crz(3.1058561269246945) q[0], q[6];
rz(2.3542164213966874) q[3];
crz(5.166239169998936) q[4], q[0];
u1(0.35798545429139034) q[1];
tdg q[5];
cx q[6], q[2];
