global t0 t1 t2 tf
global m1 m2 m3 m4 m5 m6 mo1 mo2 mo3 mo4 mo5 mo6
global h e l f d  hc ec lc fc dc
global pxw0 pyw0 pzw0 pxw pyw pzw
global g  F alpha Kp Kd Ku R060


% Position
q1 = atan2(-pxw, pyw)+atan2((sqrt(-l^2+pxw^2+pyw^2)),l)
q3 = atan2(e^2+f^2+l^2-pxw^2-pyw^2-(pzw-h)^2,-sqrt(4*e^2*f^2-(e^2+f^2+l^2-pxw^2-pyw^2-(pzw-h)^2)^2))
q2 = atan2(-(pxw*cos(q1)+pyw*sin(q1))*f*cos(q3)-(pzw-h)*(e-f*sin(q3)), (pxw*cos(q1)+pyw*sin(q1))*(e-f*sin(q3))-(pzw-h)*f*cos(q3))

R06 = R060
q4 = atan2(R06(1,3)*sin(q1)-R06(2,3)*cos(q1),R06(1,3)*cos(q1)*cos(q2+q3)+R06(2,3)*sin(q1)*cos(q2+q3)-R06(3,3)*sin(q2+q3))
q5 = atan2( sqrt((R06(1,3)*sin(q1)-R06(2,3)*cos(q1))^2+(R06(1,3)*cos(q1)*cos(q2+q3)+R06(2,3)*sin(q1)*cos(q2+q3)-R06(3,3)*sin(q2+q3))^2),-R06(1,3)*cos(q1)*sin(q2+q3)-R06(2,3)*sin(q1)*sin(q2+q3)-R06(3,3)*cos(q2+q3))
q6 = atan2(-R06(1,2)*cos(q1)*sin(q2+q3)-R06(2,2)*sin(q1)*sin(q2+q3)-R06(3,2)*cos(q2+q3),R06(1,1)*cos(q1)*sin(q2+q3)+R06(2,1)*sin(q1)*sin(q2+q3)+R06(3,1)*cos(q2+q3))


% Velocity Or Speed
qd11 = f*sin(q1)*sin(q2+q3)-e*sin(q1)*cos(q2)-l*cos(q1);
qd12 = -f*cos(q1)*cos(q2+q3)-e*cos(q1)*sin(q2);
qd13 = -f*cos(q1)*cos(q2+q3);
qd14 = 0;
qd15 = 0;
qd16 = 0;
qd21 = -f*cos(q1)*sin(q2+q3)+e*cos(q1)*cos(q2)-l*sin(q1);
qd22 = -f*sin(q1)*cos(q2+q3)-e*sin(q1)*sin(q2);
qd23 = -f*sin(q1)*cos(q2+q3);
qd24 = 0;
qd25 = 0;
qd26 = 0;
qd31 = 0;
qd32 = f*sin(q2+q3)-e*cos(q2);
qd33 = f*sin(q2+q3);
qd34 = 0;
qd35 = 0;
qd36 = 0;

qdot = [qd11 qd12 qd13 qd14 qd15 qd16;
        qd21 qd22 qd23 qd24 qd25 qd26;
        qd31 qd32 qd33 qd34 qd35 qd36]\[xedot;yedot;zedot];
    
q1dot = qdot(1);
q2dot = qdot(2);
q3dot = qdot(3);
q4dot = qdot(4);
q5dot = qdot(5);
q6dot = qdot(6);


% Mat. Adot
ad11 = f*q1dot*cos(q1)*sin(q2+q3)+f*sin(q1)*(q2dot+q3dot)*cos(q2+q3)-e*q1dot*cos(q1)*cos(q2)+e*sin(q1)*q2dot*sin(q2)+l*q1dot*sin(q1);
ad12 = f*q1dot*sin(q1)*cos(q2+q3)+f*cos(q1)*(q2dot+q3dot)*sin(q2+q3)+e*q1dot*sin(q1)*sin(q2)-e*cos(q1)*q2dot*cos(q2);
ad13 = f*q1dot*sin(q1)*cos(q2+q3)+f*cos(q1)*(q2dot+q3dot)*sin(q2+q3);
ad14 = 0;
ad15 = 0;
ad16 = 0;
ad21 = f*q1dot*sin(q1)*sin(q2+q3)-f*cos(q1)*(q2dot+q3dot)*cos(q2+q3)-e*q1dot*sin(q1)*cos(q2)-e*cos(q1)*q2dot*sin(q2)-l*q1dot*cos(q1);
ad22 = -f*q1dot*cos(q1)*cos(q2+q3)+f*sin(q1)*(q2dot+q3dot)*sin(q2+q3)-e*q1dot*cos(q1)*sin(q2)-e*sin(q1)*q2dot*cos(q2);
ad23 = -f*q1dot*cos(q1)*cos(q2+q3)+f*sin(q1)*(q2dot+q3dot)*sin(q2+q3);
ad24 = 0;
ad25 = 0;
ad26 = 0;
ad31 = 0;
ad32 = f*(q2dot+q3dot)*cos(q2+q3)+e*q2dot*sin(q2);
ad33 = f*(q2dot+q3dot)*cos(q2+q3);
ad34 = 0;
ad35 = 0;
ad36 = 0;
Adot = [ad11 ad12 ad13 ad14 ad15 ad16;
        ad21 ad22 ad23 ad24 ad25 ad26;
        ad31 ad32 ad33 ad34 ad35 ad36];

% Acceleration
qddot = [qd11 qd12 qd13 qd14 qd15 qd16;
         qd21 qd22 qd23 qd24 qd25 qd26;
         qd31 qd32 qd33 qd34 qd35 qd36;]\([xeddot;yeddot;zeddot;]-Adot*qdot);

% Disire
qdes = [q1;q2;q3;q4;q5;q6];
qdotdes = qdot;
qddotdes = qddot;
% End