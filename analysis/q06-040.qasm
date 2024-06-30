OPENQASM 3.0;
include "stdgates.inc";
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
gate ryy_4539915904(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.9500362206443006) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate rzx_4539918544(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.7643815512865255) _gate_q_1;
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
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate rzx_4539919360(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(0.34973899485973053) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate r_4539912928(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(0.31310829312239663, 1.5940547420371534, -1.5940547420371534) _gate_q_0;
}
gate rzx_4539917536(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.1909261297808533) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate cu1_4539916816(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(0.056440933899338214) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-0.056440933899338214) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(0.056440933899338214) _gate_q_1;
}
gate cu1_4539919264(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.1825997150358065) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.1825997150358065) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.1825997150358065) _gate_q_1;
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
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate cu3_4539916672(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.1641067909020832) _gate_q_0;
  u1(0.27027155656304613) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.9675076761943543, 0, -2.1641067909020832) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.9675076761943543, 1.893835234339037, 0) _gate_q_1;
}
gate ryy_4539918304(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.3899721775525213) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate xx_minus_yy_4539921664(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.701311719252599) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.7880078702233997) _gate_q_0;
  ry(-1.7880078702233997) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.701311719252599) _gate_q_1;
}
gate xx_minus_yy_4539919168(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.343690741155487) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.8150696601418308) _gate_q_0;
  ry(-0.8150696601418308) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.343690741155487) _gate_q_1;
}
gate xx_plus_yy_4539918496(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(2.530571542925651) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-2.5338488320418) _gate_q_1;
  ry(-2.5338488320418) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-2.530571542925651) _gate_q_0;
}
gate rxx_4539919840(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.557383718827976) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
gate r_4539921328(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.638208861847149, 4.533459300412454, -4.533459300412454) _gate_q_0;
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
gate xx_minus_yy_4539918448(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-3.9792397298348616) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.0656776008426596) _gate_q_0;
  ry(-0.0656776008426596) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(3.9792397298348616) _gate_q_1;
}
gate r_4539920128(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.882823723379177, 1.7204856037181626, -1.7204856037181626) _gate_q_0;
}
gate xx_minus_yy_4539921232(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-1.1178660918355083) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(2.2593670481960677) _gate_q_0;
  ry(-2.2593670481960677) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(1.1178660918355083) _gate_q_1;
}
gate ryy_4539921904(_gate_p_0) _gate_q_0, _gate_q_1 {
  rx(pi/2) _gate_q_0;
  rx(pi/2) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.022693195960875) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rx(-pi/2) _gate_q_0;
  rx(-pi/2) _gate_q_1;
}
gate cu1_4539920224(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(2.0195308139735157) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-2.0195308139735157) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(2.0195308139735157) _gate_q_1;
}
gate xx_minus_yy_4539923200(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-4.7518411423372005) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(0.7814724314428786) _gate_q_0;
  ry(-0.7814724314428786) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(4.7518411423372005) _gate_q_1;
}
gate xx_minus_yy_4539921520(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(-2.3189810083336186) _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sx _gate_q_0;
  rz(pi/2) _gate_q_0;
  s _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  ry(1.3092744454392427) _gate_q_0;
  ry(-1.3092744454392427) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  sdg _gate_q_1;
  rz(-pi/2) _gate_q_0;
  sxdg _gate_q_0;
  rz(pi/2) _gate_q_0;
  rz(2.3189810083336186) _gate_q_1;
}
qubit[6] q;
rcccx q[4], q[5], q[0], q[3];
y q[2];
rx(1.2635931138829222) q[1];
cx q[5], q[2];
ryy_4539915904(0.9500362206443006) q[0], q[1];
rzx_4539918544(2.7643815512865255) q[3], q[4];
csdg q[3], q[0];
csdg q[2], q[4];
u2(5.530379244489171, 1.5672949710113726) q[5];
p(4.092913782548361) q[1];
ccx q[5], q[1], q[3];
cswap q[2], q[0], q[4];
sxdg q[4];
rzx_4539919360(0.34973899485973053) q[1], q[5];
swap q[0], q[3];
tdg q[2];
t q[3];
s q[2];
cy q[1], q[4];
ry(0.9118734066324932) q[0];
tdg q[5];
rx(5.569694264496952) q[4];
ecr q[2], q[3];
csx q[0], q[1];
sdg q[5];
r_4539912928(0.31310829312239663, 3.16485106883205) q[4];
cy q[3], q[2];
rzx_4539917536(2.1909261297808533) q[0], q[1];
sx q[5];
rcccx q[3], q[1], q[0], q[5];
z q[2];
sxdg q[4];
tdg q[2];
h q[4];
rz(3.2776090960412962) q[5];
cu1_4539916816(0.11288186779867643) q[0], q[3];
U(1.4110487276669874, 2.4566137825521603, 5.600887795402744) q[1];
cu1_4539919264(2.365199430071613) q[4], q[5];
id q[3];
rccx q[2], q[1], q[0];
h q[4];
tdg q[3];
cu(4.95638020162347, 5.163380621318038, 1.2968654559194608, 1.667872379651507) q[2], q[5];
id q[0];
z q[1];
s q[2];
cs q[1], q[4];
rx(4.561485498639133) q[5];
crz(4.954843122348569) q[3], q[0];
cp(0.5329533062240003) q[4], q[3];
crz(2.2377664795777763) q[2], q[1];
csx q[0], q[5];
p(1.4611135967481423) q[2];
ecr q[4], q[1];
cu3_4539916672(1.9350153523887086, 1.893835234339037, 2.4343783474651293) q[3], q[0];
tdg q[5];
tdg q[2];
p(1.7599549798421725) q[5];
swap q[3], q[4];
y q[0];
p(4.687978526539492) q[1];
cry(5.257084964568579) q[0], q[3];
cs q[4], q[2];
ryy_4539918304(3.3899721775525213) q[5], q[1];
cswap q[5], q[2], q[3];
cz q[4], q[1];
s q[0];
sxdg q[4];
ry(3.9777968911629347) q[2];
t q[5];
sx q[0];
csx q[1], q[3];
cy q[2], q[0];
cry(0.4723707723483071) q[5], q[1];
x q[4];
x q[3];
cs q[4], q[2];
sdg q[1];
ccx q[5], q[3], q[0];
U(6.1123929522002785, 3.0437399101006024, 0.32098050063646716) q[4];
cy q[5], q[1];
xx_minus_yy_4539921664(3.5760157404467994, 3.701311719252599) q[2], q[0];
tdg q[3];
xx_minus_yy_4539919168(1.6301393202836616, 2.343690741155487) q[3], q[5];
t q[1];
xx_plus_yy_4539918496(5.0676976640836, 2.530571542925651) q[4], q[2];
U(5.04217000925487, 1.7292110574787243, 4.220225889378854) q[0];
rxx_4539919840(2.557383718827976) q[4], q[5];
u2(1.5225028899814965, 0.9249864905625408) q[3];
sdg q[2];
ry(0.12537802352413374) q[1];
r_4539921328(5.638208861847149, 6.10425562720735) q[0];
U(5.6059201607060904, 0.09652981366870632, 0.018140336688504927) q[4];
id q[1];
c3sx q[3], q[0], q[5], q[2];
xx_minus_yy_4539918448(0.1313552016853192, 3.9792397298348616) q[1], q[0];
sx q[4];
cp(2.6572027066272867) q[5], q[3];
sx q[2];
rccx q[1], q[3], q[5];
csdg q[0], q[4];
u3(5.986335033226171, 3.2336758659078013, 5.834592166745856) q[2];
rccx q[1], q[4], q[0];
ry(5.638574215182128) q[3];
cx q[5], q[2];
sxdg q[3];
cs q[5], q[2];
y q[1];
y q[0];
p(4.989774676750816) q[4];
h q[2];
sx q[5];
rz(5.331380994170332) q[1];
ry(0.6349408673510751) q[4];
u2(2.455198002968058, 0.12384502024564692) q[3];
r_4539920128(5.882823723379177, 3.291281930513059) q[0];
rcccx q[2], q[4], q[0], q[5];
z q[3];
t q[1];
u1(4.905557636592526) q[3];
sxdg q[2];
ch q[4], q[0];
p(3.7716838215450514) q[5];
id q[1];
cs q[5], q[3];
p(5.769729362056802) q[1];
x q[0];
ch q[2], q[4];
sdg q[0];
y q[4];
sx q[3];
cz q[1], q[2];
id q[5];
xx_minus_yy_4539921232(4.518734096392135, 1.1178660918355083) q[1], q[5];
ryy_4539921904(2.022693195960875) q[0], q[3];
z q[4];
sxdg q[2];
ecr q[0], q[4];
s q[2];
cp(4.771468588063834) q[5], q[3];
x q[1];
z q[5];
swap q[3], q[4];
cry(2.2700809931041643) q[2], q[0];
u1(2.2882406798178327) q[1];
t q[1];
rz(4.794947234231123) q[4];
sx q[2];
ry(5.674348086435102) q[5];
u3(5.405802376378779, 2.7646436657612248, 5.4639456194918665) q[3];
tdg q[0];
sx q[3];
cu1_4539920224(4.0390616279470315) q[1], q[0];
ry(4.860926800576686) q[2];
rx(5.916731378040635) q[4];
u2(3.596835340120176, 5.03478248098764) q[5];
xx_minus_yy_4539923200(1.5629448628857572, 4.7518411423372005) q[1], q[2];
U(4.308898138591345, 4.173538599789442, 2.6631118843721833) q[5];
xx_minus_yy_4539921520(2.6185488908784853, 2.3189810083336186) q[4], q[3];
u1(1.1884963431187074) q[0];
