OPENQASM 3.0;
include "stdgates.inc";
gate cu3_4514026064(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(4.771746643336575) _gate_q_0;
  u1(-0.246476341525947) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-2.532791545456596, 0, -4.771746643336575) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(2.532791545456596, 5.018222984862522, 0) _gate_q_1;
}
gate sxdg _gate_q_0 {
  s _gate_q_0;
  h _gate_q_0;
  s _gate_q_0;
}
gate xx_plus_yy_4536108768(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(1.962447090686776) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-1.365370857588423) _gate_q_1;
  ry(-1.365370857588423) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-1.962447090686776) _gate_q_0;
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
gate iswap _gate_q_0, _gate_q_1 {
  s _gate_q_0;
  s _gate_q_1;
  h _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
  h _gate_q_1;
}
gate rzz_4536122832(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(5.661029843007626) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate r_4536749376(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.391858173861559, 3.100886797390274, -3.100886797390274) _gate_q_0;
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
gate xx_plus_yy_4536747408(_gate_p_0, _gate_p_1) _gate_q_0, _gate_q_1 {
  rz(0.3137421641964133) _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sx _gate_q_1;
  rz(pi/2) _gate_q_1;
  s _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  ry(-0.017825271243455204) _gate_q_1;
  ry(-0.017825271243455204) _gate_q_0;
  cx _gate_q_1, _gate_q_0;
  sdg _gate_q_0;
  rz(-pi/2) _gate_q_1;
  sxdg _gate_q_1;
  rz(pi/2) _gate_q_1;
  rz(-0.3137421641964133) _gate_q_0;
}
gate r_4536755568(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.30331006943391, 3.3430611802638532, -3.3430611802638532) _gate_q_0;
}
gate dcx _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  cx _gate_q_1, _gate_q_0;
}
gate r_4536757920(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(1.312063383862248, -1.2751413509478682, 1.2751413509478682) _gate_q_0;
}
gate rzz_4536750864(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(4.23951114451951) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate rxx_4536749136(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(5.349169303457299) _gate_q_1;
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
gate cu3_4536748752(_gate_p_0, _gate_p_1, _gate_p_2) _gate_q_0, _gate_q_1 {
  u1(3.144547099477895) _gate_q_0;
  u1(-2.1240256305979863) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(-1.1052025091488502, 0, -3.144547099477895) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  u3(1.1052025091488502, 5.268572730075881, 0) _gate_q_1;
}
gate rzz_4513709424(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.6090233263958407) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
}
gate cs _gate_q_0, _gate_q_1 {
  p(pi/4) _gate_q_0;
  cx _gate_q_0, _gate_q_1;
  p(-pi/4) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  p(pi/4) _gate_q_1;
}
gate r_4536748320(_gate_p_0, _gate_p_1) _gate_q_0 {
  u3(4.880938479488709, 3.382276468163636, -3.382276468163636) _gate_q_0;
}
gate rzz_4536747840(_gate_p_0) _gate_q_0, _gate_q_1 {
  cx _gate_q_0, _gate_q_1;
  rz(3.123626224199391) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
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
gate rxx_4536747312(_gate_p_0) _gate_q_0, _gate_q_1 {
  h _gate_q_0;
  h _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  rz(4.497339645861513) _gate_q_1;
  cx _gate_q_0, _gate_q_1;
  h _gate_q_1;
  h _gate_q_0;
}
qubit[5] q;
cu3_4514026064(5.065583090913192, 5.018222984862522, 4.525270301810628) q[2], q[4];
h q[0];
cp(4.559222084905282) q[1], q[3];
id q[4];
cry(0.8391445098304171) q[3], q[2];
xx_plus_yy_4536108768(2.730741715176846, 1.962447090686776) q[1], q[0];
cx q[4], q[3];
rccx q[1], q[0], q[2];
iswap q[4], q[2];
rzz_4536122832(5.661029843007626) q[3], q[1];
y q[0];
cu(4.842559498944384, 4.035275158380953, 3.175220283136338, 1.2668262475603775) q[0], q[4];
r_4536749376(4.391858173861559, 4.67168312418517) q[1];
csx q[2], q[3];
x q[4];
rccx q[3], q[0], q[2];
sxdg q[1];
xx_plus_yy_4536747408(0.03565054248691041, 0.3137421641964133) q[1], q[0];
x q[3];
u1(4.540018938192361) q[4];
u3(1.7916365993213648, 3.6673183652242813, 3.2991218515851646) q[2];
cswap q[2], q[1], q[0];
rx(4.648926794138777) q[3];
r_4536755568(4.30331006943391, 4.91385750705875) q[4];
cz q[1], q[0];
cx q[3], q[4];
sdg q[2];
t q[2];
swap q[3], q[0];
y q[1];
id q[4];
dcx q[2], q[3];
r_4536757920(1.312063383862248, 0.2956549758470284) q[1];
s q[4];
U(0.35861655292211814, 2.6901034190778903, 0.008735667282983016) q[0];
ccx q[4], q[0], q[1];
u2(5.32793769190508, 1.7831705255989767) q[3];
rx(3.336921181072492) q[2];
swap q[2], q[1];
csx q[3], q[4];
sdg q[0];
z q[1];
p(1.3641341358583574) q[3];
rzz_4536750864(4.23951114451951) q[2], q[0];
sdg q[4];
crz(4.002313876194319) q[3], q[0];
s q[2];
sx q[4];
y q[1];
swap q[1], q[2];
cx q[4], q[0];
sdg q[3];
rxx_4536749136(5.349169303457299) q[4], q[2];
h q[1];
cz q[0], q[3];
t q[0];
u2(1.733898105153503, 2.475639904205158) q[1];
y q[4];
cz q[3], q[2];
cu(2.6513484525051143, 5.922101832238436, 0.4954513209530423, 5.733681560595236) q[2], q[0];
csdg q[3], q[4];
rz(0.9538601380101792) q[1];
ecr q[1], q[4];
cz q[2], q[0];
U(0.3017617610162577, 2.5315014576524586, 2.6666632122869514) q[3];
z q[4];
cx q[0], q[3];
dcx q[2], q[1];
x q[3];
U(3.564549481978931, 2.3953471067583334, 1.60255659399499) q[1];
cy q[2], q[0];
sdg q[4];
p(2.506498908519338) q[0];
rccx q[3], q[2], q[4];
x q[1];
cu3_4536748752(2.2104050182977004, 5.268572730075881, 1.020521468879909) q[0], q[3];
rzz_4513709424(3.6090233263958407) q[2], q[4];
sdg q[1];
t q[4];
x q[2];
cs q[3], q[1];
r_4536748320(4.880938479488709, 4.9530727949585325) q[0];
rx(4.269444197592505) q[4];
z q[0];
sxdg q[1];
rzz_4536747840(3.123626224199391) q[3], q[2];
rcccx q[2], q[0], q[1], q[3];
s q[4];
ry(0.32450086357927427) q[4];
tdg q[2];
h q[0];
cy q[3], q[1];
cry(0.12344677857883433) q[2], q[3];
ccx q[1], q[0], q[4];
rxx_4536747312(4.497339645861513) q[3], q[4];
x q[1];
cp(3.062548206255854) q[0], q[2];
