% FCN
function out=InPut(t,y)

global t0 t1 t2 tf
global m1 m2 m3 m4 m5 m6 mo1 mo2 mo3 mo4 mo5 mo6
global h e l f d  hc ec lc fc dc
global pxw0 pyw0 pzw0 pxw pyw pzw
global g  F alpha Kp Kd Ku R060

q1 = y(1);
q2 = y(2);
q3 = y(3);
q4 = y(4);
q5 = y(5);
q6 = y(6);

Q = [q1;q2;q3;q4;q5;q6];

q1dot = y(7);
q2dot = y(8);
q3dot = y(9);
q4dot = y(10);
q5dot = y(11);
q6dot = y(12);

Qdot = [q1dot;q2dot;q3dot;q4dot;q5dot;q6dot];

% Calling
Trajectory
InverseKinematic
Dynamic

% Control
U = qddotdes-Kd*(Qdot-qdotdes)-Kp*(Q-qdes);
Taw = B\(Ku*M*U+H+G+F);
out = [Qdot;M\(B*Taw-H-G-F)];
% End