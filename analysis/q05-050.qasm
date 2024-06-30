OPENQASM 3.0;
include "stdgates.inc";
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
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
gate cu3_4537085360(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(5.46648320003081) _gate_q_0;
  u1(-0.6313560884728031) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.5379354258751583, 0, -5.46648320003081) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.5379354258751583, 6.097839288503613, 0) _gate_q_1;
}
gate cu3_4537077152(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(1.7190871480742351) _gate_q_0;
  u1(-0.13522373648850317) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.040528360655304, 0, -1.7190871480742351) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.040528360655304, 1.8543108845627383, 0) _gate_q_1;
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
gate csdg _gate_q_0, _gate_q_1 {
  p(-pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
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
gate cu1_4537085840(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.982601490754107) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.982601490754107) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.982601490754107) _gate_q_1;
}
gate rzx_4537086080(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.229974431134207) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4537085936(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.217376206401209) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rxx_4537086848(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.5959816985798188) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4537086032(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(6.2340406534404735, 1.5122264867619069, -1.5122264867619069) _gate_q_0;
}
gate xx_plus_yy_4537086704(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.885327207380836) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.5791642920429434) _gate_q_1;
  ry(-1.5791642920429434) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.885327207380836) _gate_q_0;
}
gate xx_minus_yy_4537086944(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-5.169279628357911) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.2616019722766303) _gate_q_0;
  ry(-1.2616019722766303) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(5.169279628357911) _gate_q_1;
}
gate rzx_4537087376(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.874880240187293) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate r_4537087568(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.0378461500738765, 0.7473415970857937, -0.7473415970857937) _gate_q_0;
}
gate cu1_4537087328(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.7141553850778024) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.7141553850778024) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.7141553850778024) _gate_q_1;
}
gate r_4537087040(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.2839529108254477, 4.608969299305933, -4.608969299305933) _gate_q_0;
}
gate rzz_4537088480(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(0.6663964682442617) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate r_4537088672(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(3.084366770240676, 2.602572335891665, -2.602572335891665) _gate_q_0;
}
gate rzz_4537088912(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.278724567696469) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu3_4537087808(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.8106329721831913) _gate_q_0;
  u1(-1.8405255688312778) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.2109879377783392, 0, -2.8106329721831913) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.2109879377783392, 4.651158541014469, 0) _gate_q_1;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate rzx_4537089344(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.575625214261473) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzx_4536758736(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(1.7012934249796798) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate rzz_4536758016(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.334492036069406) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate xx_minus_yy_4536759072(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.3547076577704393) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.978553942326115) _gate_q_0;
  ry(-0.978553942326115) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.3547076577704393) _gate_q_1;
}
gate cu3_4536758208(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.4804236009383356) _gate_q_0;
  u1(-0.5271894408820694) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.903088664630562, 0, -3.4804236009383356) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.903088664630562, 4.007613041820405, 0) _gate_q_1;
}
qubit[5] q;
tdg q[1];
sxdg q[3];
iswap q[0], q[2];
U(4.424469812335732, 4.275131030180711, 2.3460280724414915) q[4];
csx q[2], q[4];
u3(2.179049762721171, 3.5800583120339264, 1.8021175553366287) q[0];
h q[3];
z q[1];
cu3_4537085360(1.0758708517503166, 6.097839288503613, 4.835127111558006) q[2], q[3];
sx q[1];
cry(0.4433055552016809) q[4], q[0];
U(4.573048521853795, 0.43978220608883983, 2.306030451830422) q[2];
u1(2.7228272166541725) q[3];
tdg q[1];
cu3_4537077152(2.081056721310608, 1.8543108845627383, 1.583863411585732) q[0], q[4];
c3sx q[0], q[4], q[3], q[1];
rz(2.702582289308395) q[2];
sxdg q[3];
csx q[0], q[1];
id q[4];
h q[2];
csdg q[4], q[2];
u1(4.202095370896338) q[0];
ecr q[3], q[1];
sx q[4];
cu1_4537085840(3.965202981508214) q[0], q[2];
csdg q[3], q[1];
t q[4];
rx(1.6865796499372503) q[3];
sx q[2];
id q[0];
sxdg q[1];
rzx_4537086080(2.229974431134207) q[4], q[3];
ecr q[1], q[0];
U(0.22587800666273852, 6.199521489396286, 5.314428937687957) q[2];
cswap q[1], q[3], q[4];
u3(3.509067503748864, 6.17407548261208, 2.2874866054685534) q[0];
z q[2];
rzx_4537085936(1.217376206401209) q[0], q[1];
sxdg q[2];
tdg q[3];
u3(1.0288174979878786, 3.5445819065425597, 4.3762737637888725) q[4];
rxx_4537086848(1.5959816985798188) q[1], q[3];
sx q[0];
h q[4];
r_4537086032(6.2340406534404735, 3.0830228135568034) q[2];
swap q[0], q[1];
cry(4.019819297251496) q[2], q[3];
rx(2.136202971327022) q[4];
z q[0];
xx_plus_yy_4537086704(3.158328584085887, 5.885327207380836) q[1], q[3];
rz(1.4681545687804367) q[2];
s q[4];
cx q[1], q[0];
x q[2];
rz(0.8714509016583679) q[3];
sx q[4];
swap q[0], q[4];
crx(4.557164205822839) q[2], q[3];
ry(2.355291355751146) q[1];
csx q[1], q[4];
swap q[3], q[0];
s q[2];
iswap q[1], q[4];
rx(2.8417106449265503) q[0];
xx_minus_yy_4537086944(2.5232039445532606, 5.169279628357911) q[2], q[3];
cp(0.5442141692054807) q[2], q[1];
rzx_4537087376(5.874880240187293) q[0], q[4];
y q[3];
cs q[0], q[1];
sx q[2];
r_4537087568(2.0378461500738765, 2.3181379238806903) q[3];
x q[4];
cu1_4537087328(5.428310770155605) q[3], q[2];
crx(2.522590766651824) q[0], q[1];
h q[4];
r_4537087040(3.2839529108254477, 6.17976562610083) q[0];
cy q[3], q[1];
u1(4.711741368095171) q[4];
y q[2];
z q[4];
rz(1.1184687136473879) q[0];
csdg q[1], q[3];
rx(4.036261046578044) q[2];
crx(5.877669155989866) q[1], q[3];
ry(5.087301004019307) q[4];
ecr q[0], q[2];
rzz_4537088480(0.6663964682442617) q[2], q[4];
cx q[3], q[1];
id q[0];
cu(2.277912849506373, 1.6435899755068972, 5.962758194767257, 6.258978536134634) q[1], q[3];
sdg q[4];
cs q[2], q[0];
cy q[1], q[4];
rccx q[0], q[2], q[3];
ecr q[1], q[0];
iswap q[2], q[3];
r_4537088672(3.084366770240676, 4.173368662686562) q[4];
rzz_4537088912(5.278724567696469) q[3], q[0];
cu3_4537087808(4.4219758755566785, 4.651158541014469, 0.9701074033519136) q[2], q[4];
tdg q[1];
ry(0.43936453502398437) q[1];
crx(4.467968622057737) q[2], q[3];
u3(2.4432092518285327, 2.8988757129860034, 6.235819759316145) q[0];
h q[4];
cs q[2], q[1];
y q[3];
cs q[0], q[4];
crx(2.3202732815069673) q[2], q[0];
csdg q[1], q[3];
ry(2.1959547450432404) q[4];
cy q[1], q[2];
rx(2.7071095956959597) q[4];
y q[3];
sdg q[0];
ccx q[2], q[0], q[3];
cs q[1], q[4];
u2(3.000527103762847, 1.060397880074279) q[0];
cry(6.00040095371598) q[4], q[2];
dcx q[3], q[1];
sdg q[1];
x q[3];
rx(6.079093344584617) q[0];
cu(2.6616839600487285, 6.169002812426466, 1.314214505075182, 0.771723827063393) q[2], q[4];
p(0.9449580671711474) q[2];
csx q[0], q[4];
x q[3];
p(4.682685795201743) q[1];
cz q[3], q[0];
cu(4.229879683427352, 3.8467921643037406, 3.841616251572272, 2.76866755811287) q[1], q[2];
tdg q[4];
cs q[1], q[3];
sx q[0];
cry(1.0193545946953075) q[4], q[2];
sdg q[0];
tdg q[1];
tdg q[3];
sdg q[2];
tdg q[4];
rzx_4537089344(2.575625214261473) q[4], q[3];
U(5.547976977782418, 4.425601466881615, 4.735038065918885) q[1];
cy q[0], q[2];
s q[2];
id q[0];
iswap q[4], q[1];
rz(0.4017990031295721) q[3];
rzx_4536758736(1.7012934249796798) q[3], q[4];
sx q[2];
rzz_4536758016(5.334492036069406) q[0], q[1];
xx_minus_yy_4536759072(1.95710788465223, 2.3547076577704393) q[2], q[1];
csx q[4], q[0];
sxdg q[3];
u1(3.857655514581629) q[4];
cy q[1], q[2];
u3(0.3024120831155696, 4.854159557180347, 3.912300444977948) q[0];
x q[3];
sxdg q[4];
cu3_4536758208(5.806177329261124, 4.007613041820405, 2.953234160056266) q[3], q[2];
ecr q[0], q[1];
c3sx q[0], q[4], q[1], q[3];
sx q[2];
swap q[4], q[1];
iswap q[3], q[0];
y q[2];
z q[2];
swap q[3], q[0];
ry(2.318369493232486) q[4];
z q[1];
