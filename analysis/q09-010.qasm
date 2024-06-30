OPENQASM 3.0;
include "stdgates.inc";
gate r_4562337376(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.505307925928396, 4.491612155448827, -4.491612155448827) _gate_q_0;
}
gate r_4562331520(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.9668637930618744, 2.4375479348982454, -2.4375479348982454) _gate_q_0;
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
gate rzx_4562336896(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(2.4332305663757343) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4562330560(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.9402779740230178) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.0481707610454656) _gate_q_1;
  ry(-1.0481707610454656) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.9402779740230178) _gate_q_0;
}
gate r_4562337184(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(5.456373446655382, 2.8926503894303313, -2.8926503894303313) _gate_q_0;
}
gate rzz_4562330272(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(2.9105745527004694) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cu1_4562337136(_gate_p_0) _gate_q_0, _gate_q_1 {
  u1(1.1350109901696461) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  u1(-1.1350109901696461) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u1(1.1350109901696461) _gate_q_1;
}
gate xx_plus_yy_4562336944(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(5.282001683944136) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.70023038838162) _gate_q_1;
  ry(-1.70023038838162) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-5.282001683944136) _gate_q_0;
}
gate r_4562330752(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(2.1920633646808736, 2.7419371167242126, -2.7419371167242126) _gate_q_0;
}
gate rzz_4562337328(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(1.2181579821707333) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rzx_4562331088(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(3.9546574258563894) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
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
gate cu3_4562330944(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(2.1471729479819506) _gate_q_0;
  u1(1.9692624873687994) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-0.9623540925136874, 0, -2.1471729479819506) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(0.9623540925136874, 0.17791046061315136, 0) _gate_q_1;
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
qubit[9] q;
cz q[1], q[8];
cu(2.271185001955173, 1.7168519910037603, 0.544124590113151, 2.389587334826327) q[4], q[3];
r_4562337376(5.505307925928396, 6.062408482243724) q[7];
ccx q[5], q[2], q[0];
r_4562331520(2.9668637930618744, 4.008344261693142) q[6];
y q[0];
cp(3.255956901395607) q[3], q[7];
c3sx q[6], q[1], q[5], q[2];
id q[4];
sdg q[8];
crx(6.227552668135948) q[1], q[4];
rz(3.1410201596010636) q[6];
p(4.301514488018135) q[2];
sx q[7];
cy q[0], q[8];
x q[3];
z q[5];
crx(0.8063067355951757) q[6], q[4];
iswap q[3], q[5];
u1(4.804387361809729) q[8];
csdg q[2], q[0];
cy q[1], q[7];
rzx_4562336896(2.4332305663757343) q[8], q[7];
xx_plus_yy_4562330560(2.096341522090931, 1.9402779740230178) q[3], q[1];
tdg q[4];
p(0.8647746213841582) q[0];
r_4562337184(5.456373446655382, 4.463446716225228) q[6];
id q[2];
rz(5.29407568275427) q[5];
sdg q[0];
rzz_4562330272(2.9105745527004694) q[3], q[2];
p(4.542010972764127) q[6];
cz q[8], q[5];
cry(5.820907165002064) q[7], q[4];
rx(5.809306815465059) q[1];
c3sx q[8], q[7], q[6], q[4];
rx(5.830500069857979) q[3];
cx q[0], q[1];
cu1_4562337136(2.2700219803392923) q[2], q[5];
xx_plus_yy_4562336944(3.40046077676324, 5.282001683944136) q[6], q[5];
r_4562330752(2.1920633646808736, 4.312733443519109) q[8];
t q[2];
p(0.19255108758343228) q[4];
rzz_4562337328(1.2181579821707333) q[1], q[0];
u2(0.5273441678177573, 3.8233629874069424) q[7];
p(6.09258135208022) q[3];
rzx_4562331088(3.9546574258563894) q[5], q[3];
ecr q[0], q[6];
cu3_4562330944(1.9247081850273748, 0.17791046061315136, 4.11643543535075) q[7], q[8];
csdg q[2], q[1];
s q[4];
iswap q[6], q[1];
cx q[0], q[7];
id q[5];
rcccx q[4], q[3], q[8], q[2];
