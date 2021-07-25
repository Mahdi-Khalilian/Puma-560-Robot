% In the name of God
% Frist name : Mahdi
% Last name : Khalilian
% Student Number : 971141035
% Home Work : Robot Puma560
%Cm
clear all
close all
clc

% Parameter
global t0 t1 t2 tf
global m1 m2 m3 m4 m5 m6 mo1 mo2 mo3 mo4 mo5 mo6
global h e l f d  hc ec lc fc dc
global pxw0 pyw0 pzw0 pxw pyw pzw
global g  F alpha Kp Kd Ku R060

t0 = 0;
t1 = 0.5;
t2 = 0.5;
tf = t1+t2;

mo1 = 10;
mo2 = 15;
mo3 = 7;
mo4 = 5;
mo5 = 3;
mo6 = 1;


m1 = 15 + mo1;
m2 = 20 + mo2;
m3 = 10 + mo2;
m4 = 5 + mo2;
m5 = 4 + mo2;
m6 = 1 + mo2;

h = 120;
e = 80;
l = 15;
f = 60;
d = 40;

hc = 10;
ec = 80^2 +20^2;
lc = 15^2 + 15^2;
fc = 60^2 + 10^2;
dc = 40^2 + 6^2;

pxw = 75;
pyw = 70;
pzw = 70;

pxw0 = 75;
pyw0 = 70;
pzw0 = 70;

F = 0;
alpha = 0;
g = 9.8;



% Control Parameters
om1 = 3;
om2 = 3;
om3 = 3;
om4 = 50;
om5 = 50;
om6 = 50;
zet1 = 5;
zet2 = 5;
zet3 = 5;
zet4 = 10;
zet5 = 10;
zet6 = 10;
Ku = 0.9;

Kp = [om1^2 0 0 0 0 0;
      0 om2^2 0 0 0 0;
      0 0 om3^2 0 0 0;
      0 0 0 om4^2 0 0;
      0 0 0 0 om5^2 0;
      0 0 0 0 0 om6^2];
  
Kd = [2*zet1*om1 0 0 0 0 0;
      0 2*zet2*om2 0 0 0 0;
      0 0 2*zet3*om2 0 0 0;
      0 0 0 2*zet4*om2 0 0;
      0 0 0 0 2*zet5*om2 0;
      0 0 0 0 0 2*zet2*om2];

% Initial Conditions
q10=0
q20=-pi/2
q30=0
q40=-pi/2
q50=-pi/2
q60=pi/2


nx0 = (((cos(q50)*cos(q30)*cos(q40)+sin(q50)*sin(q30))*cos(q20)+sin(q20)*(-cos(q50)*sin(q30)*cos(q40)+sin(q50)*cos(q30)))*cos(q60)-sin(q40)*sin(q60)*(cos(q20)*cos(q30)-sin(q20)*sin(q30)))*cos(q10)+sin(q10)*(cos(q50)*sin(q40)*cos(q60)+cos(q40)*sin(q60))
ny0 =(((cos(q50)*cos(q30)*cos(q40)+sin(q50)*sin(q30))*cos(q20)+sin(q20)*(-cos(q50)*sin(q30)*cos(q40)+sin(q50)*cos(q30)))*cos(q60)-sin(q40)*sin(q60)*(cos(q20)*cos(q30)-sin(q20)*sin(q30)))*sin(q10)-cos(q10)*(cos(q50)*sin(q40)*cos(q60)+cos(q40)*sin(q60))
nz0 = ((-cos(q50)*sin(q30)*cos(q40)+sin(q50)*cos(q30))*cos(q20)-sin(q20)*(cos(q50)*cos(q30)*cos(q40)+sin(q50)*sin(q30)))*cos(q60)+(sin(q20)*cos(q30)+cos(q20)*sin(q30))*sin(q40)*sin(q60)

sx0 = (((-cos(q50)*cos(q30)*cos(q40)-sin(q50)*sin(q30))*cos(q20)-sin(q20)*(-cos(q50)*sin(q30)*cos(q40)+sin(q50)*cos(q30)))*sin(q60)-cos(q60)*sin(q40)*(cos(q20)*cos(q30)-sin(q20)*sin(q30)))*cos(q10)+sin(q10)*(-cos(q50)*sin(q40)*sin(q60)+cos(q40)*cos(q60))
sy0 = (((-cos(q50)*cos(q30)*cos(q40)-sin(q50)*sin(q30))*cos(q20)-sin(q20)*(-cos(q50)*sin(q30)*cos(q40)+sin(q50)*cos(q30)))*sin(q60)-cos(q60)*sin(q40)*(cos(q20)*cos(q30)-sin(q20)*sin(q30)))*sin(q10)-cos(q10)*(-cos(q50)*sin(q40)*sin(q60)+cos(q40)*cos(q60))
sz0 = ((cos(q50)*sin(q30)*cos(q40)-sin(q50)*cos(q30))*cos(q20)+sin(q20)*(cos(q50)*cos(q30)*cos(q40)+sin(q50)*sin(q30)))*sin(q60)+(sin(q20)*cos(q30)+cos(q20)*sin(q30))*sin(q40)*cos(q60)

ax0 = (-cos(q40)*(sin(q20)*sin(q30)-cos(q20)*cos(q30))*sin(q50)-cos(q50)*(sin(q20)*cos(q30)+cos(q20)*sin(q30)))*cos(q10)+sin(q50)*sin(q40)*sin(q10)
ay0 = (-cos(q40)*(sin(q20)*sin(q30)-cos(q20)*cos(q30))*sin(q50)-cos(q50)*(sin(q20)*cos(q30)+cos(q20)*sin(q30)))*sin(q10)-sin(q50)*sin(q40)*cos(q10)
az0 = -(sin(q20)*cos(q30)+cos(q20)*sin(q30))*cos(q40)*sin(q50)+(sin(q20)*sin(q30)-cos(q20)*cos(q30))*cos(q50)

R060 = [nx0 sx0 ax0;
        ny0 sy0 ay0;
        nz0 sz0 az0];



xedot0 = 0;
yedot0 = 0;
zedot0 = 0;

% Position
q10 = atan2(-pxw0, pyw0)+atan2((sqrt(-l^2+pxw0^2+pyw0^2)),l);
q30 = atan2(e^2+f^2+l^2-pxw0^2-pyw0^2-(pzw-h)^2,-sqrt(4*e^2*f^2-(e^2+f^2+l^2-pxw0^2-pyw0^2-(pzw0-h)^2)^2));
q20 = atan2(-(pxw0*cos(q10)+pyw0*sin(q10))*f*cos(q30)-(pzw0-h)*(e-f*sin(q30)), (pxw0*cos(q10)+pyw0*sin(q10))*(e-f*sin(q30))-(pzw0-h)*f*cos(q30));

q40 = atan2(R060(1,3)*sin(q10)-R060(2,3)*cos(q10),R060(1,3)*cos(q10)*cos(q20+q30)+R060(2,3)*sin(q10)*cos(q20+q30)-R060(3,3)*sin(q20+q30));
q50 = atan2(sqrt((R060(1,3)*sin(q10)-R060(2,3)*cos(q10))^2+(R060(1,3)*cos(q10)*cos(q20+q30)+R060(2,3)*sin(q10)*cos(q20+q30)-R060(3,3)*sin(q20+q30))^2),-R060(1,3)*cos(q10)*sin(q20+q30)-R060(2,3)*sin(q10)*sin(q20+q30)-R060(3,3)*cos(q20+q30));
q60 = atan2(-R060(1,2)*cos(q10)*sin(q20+q30)-R060(2,2)*sin(q10)*sin(q20+q30)-R060(3,2)*cos(q20+q30),R060(1,1)*cos(q10)*sin(q20+q30)+R060(2,1)*sin(q10)*sin(q20+q30)+R060(3,1)*cos(q20+q30));





q110 = f*sin(q10)*sin(q20+q30)-e*sin(q10)*cos(q20)-l*cos(q10);
q120 = -f*cos(q10)*cos(q20+q30)-e*cos(q10)*sin(q20);
q130 = -f*cos(q10)*cos(q20+q30);
q140 = 0;
q150 = 0;
q160 = 0;
q210 = -f*cos(q10)*sin(q20+q30)+e*cos(q10)*cos(q20)-l*sin(q10);
q220 = -f*sin(q10)*cos(q20+q30)-e*sin(q10)*sin(q20);
q230 = -f*sin(q10)*cos(q20+q30);
q240 = 0;
q250 = 0;
q260 = 0;
q310 = 0;
q320 = f*sin(q20+q30)-e*cos(q20);
q330 = f*sin(q20+q30);
q340 = 0;
q350 = 0;
q360 = 0;

qdot0 = [q110 q120 q130 q140 q150 q160;
         q210 q220 q230 q240 q250 q260;
         q310 q320 q330 q340 q350 q360]\[xedot0;yedot0;zedot0];

q1dot0 = qdot0(1);
q2dot0 = qdot0(2);
q3dot0 = qdot0(3);
q4dot0 = qdot0(4);
q5dot0 = qdot0(5);
q6dot0 = qdot0(6);


IC = [q10;q20;q30;q40;q50;q60;q1dot0;q2dot0;q3dot0;q4dot0;q5dot0;q6dot0];

[Time,Ans] = ode45(@InPut,[t0 tf],IC);

% Pro
for nn = 1:length(Time)
t = Time(nn); 
Trajectory

q1d(nn) = atan2(-pxw, pyw)+atan2((sqrt(-l^2+pxw^2+pyw^2)),l);
q3d(nn) = atan2(e^2+f^2+l^2-pxw^2-pyw^2-(pzw-h)^2,-sqrt(4*e^2*f^2-(e^2+f^2+l^2-pxw^2-pyw^2-(pzw-h)^2)^2));
q2d(nn) = atan2(-(pxw*cos(q1d(nn))+pyw*sin(q1d(nn)))*f*cos(q3d(nn))-(pzw-h)*(e-f*sin(q3d(nn))), (pxw*cos(q1d(nn))+pyw*sin(q1d(nn)))*(e-f*sin(q3d(nn)))-(pzw-h)*f*cos(q3d(nn)));
q4d(nn) = atan2(R060(1,3)*sin(q1d(nn))-R060(2,3)*cos(q1d(nn)),R060(1,3)*cos(q1d(nn))*cos(q2d(nn)+q3d(nn))+R060(2,3)*sin(q1d(nn))*cos(q2d(nn)+q3d(nn))-R060(3,3)*sin(q2d(nn)+q3d(nn)));
q5d(nn) = atan2( sqrt((R060(1,3)*sin(q1d(nn))-R060(2,3)*cos(q1d(nn)))^2+(R060(1,3)*cos(q1d(nn))*cos(q2d(nn)+q3d(nn))+R060(2,3)*sin(q1d(nn))*cos(q2d(nn)+q3d(nn))-R060(3,3)*sin(q2d(nn)+q3d(nn)))^2),-R060(1,3)*cos(q1d(nn))*sin(q2d(nn)+q3d(nn))-R060(2,3)*sin(q1d(nn))*sin(q2d(nn)+q3d(nn))-R060(3,3)*cos(q2d(nn)+q3d(nn)));
q6d(nn) = atan2(-R060(1,2)*cos(q1d(nn))*sin(q2d(nn)+q3d(nn))-R060(2,2)*sin(q1d(nn))*sin(q2d(nn)+q3d(nn))-R060(3,2)*cos(q2d(nn)+q3d(nn)),R060(1,1)*cos(q1d(nn))*sin(q2d(nn)+q3d(nn))+R060(2,1)*sin(q1d(nn))*sin(q2d(nn)+q3d(nn))+R060(3,1)*cos(q2d(nn)+q3d(nn)));


qd11 = f*sin(q1d(nn))*sin(q2d(nn)+q3d(nn))-e*sin(q1d(nn))*cos(q2d(nn))-l*cos(q1d(nn));
qd12 = -f*cos(q1d(nn))*cos(q2d(nn)+q3d(nn))-e*cos(q1d(nn))*sin(q2d(nn));
qd13 = -f*cos(q1d(nn))*cos(q2d(nn)+q3d(nn));
qd14 = 0;
qd15 = 0;
qd16 = 0;
qd21 = -f*cos(q1d(nn))*sin(q2d(nn)+q3d(nn))+e*cos(q1d(nn))*cos(q2d(nn))-l*sin(q1d(nn));
qd22 = -f*sin(q1d(nn))*cos(q2d(nn)+q3d(nn))-e*sin(q1d(nn))*sin(q2d(nn));
qd23 = -f*sin(q1d(nn))*cos(q2d(nn)+q3d(nn));
qd24 = 0;
qd25 = 0;
qd26 = 0;
qd31 = 0;
qd32 = f*sin(q2d(nn)+q3d(nn))-e*cos(q2d(nn));
qd33 = f*sin(q2d(nn)+q3d(nn));
qd34 = 0;
qd35 = 0;
qd36 = 0;

qdot = [qd11 qd12 qd13 qd14 qd15 qd16;
        qd21 qd22 qd23 qd24 qd25 qd26;
        qd31 qd32 qd33 qd34 qd35 qd36]\[xedot;yedot;zedot];


q1dotd(nn) = qdot(1);
q2dotd(nn) = qdot(2);
q3dotd(nn) = qdot(3);
q4dotd(nn) = qdot(4);
q5dotd(nn) = qdot(5);
q6dotd(nn) = qdot(6);

add11 = f*sin(q1d(nn))*(q2dotd(nn)+q3dotd(nn))*cos(q2d(nn)+q3d(nn))+f*q1dotd(nn)*cos(q1d(nn))*sin(q2d(nn)+q3d(nn))+(e*q2dotd(nn)*sin(q2d(nn))+l*q1dotd(nn))*sin(q1d(nn))-e*q1dotd(nn)*cos(q1d(nn))*cos(q2d(nn));
add12 = f*cos(q1d(nn))*(q2dotd(nn)+q3dotd(nn))*sin(q2d(nn)+q3d(nn))+f*q1dotd(nn)*sin(q1d(nn))*cos(q2d(nn)+q3d(nn))-e*(cos(q1d(nn))*cos(q2d(nn))*q2dotd(nn)-sin(q1d(nn))*sin(q2d(nn))*q1dotd(nn));
add13 = f*(cos(q1d(nn))*(q2dotd(nn)+q3dotd(nn))*sin(q2d(nn)+q3d(nn))+q1dotd(nn)*sin(q1d(nn))*cos(q2d(nn)+q3d(nn)));
add14 = 0;
add15 = 0;
add16 = 0;
add21 = -f*cos(q1d(nn))*(q2dotd(nn)+q3dotd(nn))*cos(q2d(nn)+q3d(nn))+f*q1dotd(nn)*sin(q1d(nn))*sin(q2d(nn)+q3d(nn))+(-e*q2dotd(nn)*sin(q2d(nn))-l*q1dotd(nn))*cos(q1d(nn))-e*q1dotd(nn)*sin(q1d(nn))*cos(q2d(nn));
add22 = f*sin(q1d(nn))*(q2dotd(nn)+q3dotd(nn))*sin(q2d(nn)+q3d(nn))-f*q1dotd(nn)*cos(q1d(nn))*cos(q2d(nn)+q3d(nn))-e*(cos(q1d(nn))*sin(q2d(nn))*q1dotd(nn)+cos(q2d(nn))*sin(q1d(nn))*q2dotd(nn));
add23 = (sin(q1d(nn))*(q2dotd(nn)+q3dotd(nn))*sin(q2d(nn)+q3d(nn))-q1dotd(nn)*cos(q1d(nn))*cos(q2d(nn)+q3d(nn)))*f;
add24 = 0;
add25 = 0;
add26 = 0;
add31 = 0;
add32 = f*(q2dotd(nn)+q3dotd(nn))*cos(q2d(nn)+q3d(nn))+e*q2dotd(nn)*sin(q2d(nn));
add33 = f*(q2dotd(nn)+q3dotd(nn))*cos(q2d(nn)+q3d(nn));
add34 = 0;
add35 = 0;
add36 = 0;

Adot = [add11 add12 add13 add14 add15 add16;
        add21 add22 add23 add24 add25 add26;
        add31 add32 add33 add34 add35 add36];

qddot =[qd11 qd12 qd13 qd14 qd15 qd16;
        qd21 qd22 qd23 qd24 qd25 qd26;
        qd31 qd32 qd33 qd34 qd35 qd36]\([xeddot;yeddot;zeddot]-Adot*qdot);

qdes = [q1d(nn);q2d(nn);q3d(nn);q4d(nn);q5d(nn);q6d(nn)];
qdotdes = qdot;
qddotdes = qddot;

% Torque 
q1 = Ans(nn,1); 
q2 = Ans(nn,2);
q3 = Ans(nn,3); 
q4 = Ans(nn,4);
q5 = Ans(nn,5); 
q6 = Ans(nn,6);

q1dot = Ans(nn,7);
q2dot = Ans(nn,8);
q3dot = Ans(nn,9);
q4dot = Ans(nn,10);
q5dot = Ans(nn,11);
q6dot = Ans(nn,12);

Dynamic

Q = [Ans(nn,1);Ans(nn,2);Ans(nn,3);Ans(nn,4);Ans(nn,5);Ans(nn,6)];
Qdot = [Ans(nn,7);Ans(nn,8);Ans(nn,9);Ans(nn,10);Ans(nn,11);Ans(nn,12)];

U = qddotdes-Kd*(Qdot-qdotdes)-Kp*(Q-qdes);
Taw(:,nn)= B\(Ku*M*U+H+G+F);
end;

% Plot
figure(1)
plot(Time,Ans(:,1)*180/pi,'-o',Time,q1d*180/pi),grid,xlabel('Time(Sec)'),ylabel('q1(t) & q1d(t) in Degree'),legend('q1d','q1')
figure(2)
plot(Time,Ans(:,2)*180/pi,'-o',Time,q2d*180/pi),grid,xlabel('Time(Sec)'),ylabel('q2(t) & q2d(t) in Degree'),legend('q2d','q2')
figure(3)
plot(Time,Ans(:,3)*180/pi,'-o',Time,q3d*180/pi),grid,xlabel('Time(Sec)'),ylabel('q3(t) & q3d(t) in Degree'),legend('q3d','q3')
figure(4)
plot(Time,Ans(:,4)*180/pi,'-o',Time,q4d*180/pi),grid,xlabel('Time(Sec)'),ylabel('q4(t) & q4d(t) in Degree'),legend('q4d','q4')
figure(5)
plot(Time,Ans(:,5)*180/pi,'-o',Time,q5d*180/pi),grid,xlabel('Time(Sec)'),ylabel('q5(t) & q5d(t) in Degree'),legend('q5d','q5')
figure(6)
plot(Time,Ans(:,6)*180/pi,'-o',Time,q6d*180/pi),grid,xlabel('Time(Sec)'),ylabel('q6(t) & q6d(t) in Degree'),legend('q6d','q6')



figure(7)
plot(Time,Ans(:,7),'-o',Time,q1dotd),grid,xlabel('Time(Sec)'),ylabel('q1dot(t) & q1dotd(t) in Rad/sec'),legend('q1dotd','q1dot')
figure(8)
plot(Time,Ans(:,8),'-o',Time,q2dotd),grid,xlabel('Time(Sec)'),ylabel('q2dot(t) & q2dotd(t) in Rad/sec'),legend('q2dotd','q2dot')
figure(9)
plot(Time,Ans(:,9),'-o',Time,q3dotd),grid,xlabel('Time(Sec)'),ylabel('q3dot(t) & q3dotd(t) in Rad/sec'),legend('q3dotd','q3dot')
figure(10)
plot(Time,Ans(:,10),'-o',Time,q4dotd),grid,xlabel('Time(Sec)'),ylabel('q4dot(t) & q4dotd(t) in Rad/sec'),legend('q4dotd','q4dot')
figure(11)
plot(Time,Ans(:,11),'-o',Time,q5dotd),grid,xlabel('Time(Sec)'),ylabel('q5dot(t) & q5dotd(t) in Rad/sec'),legend('q5dotd','q5dot')
figure(12)
plot(Time,Ans(:,12),'-o',Time,q6dotd),grid,xlabel('Time(Sec)'),ylabel('q6dot(t) & q6dotd(t) in Rad/sec'),legend('q6dotd','q6dot')

figure(13)
plot(Time,Taw(1,:)),grid,xlabel('Time(Sec)'),ylabel('Taw 1(t) in N.m')
figure(14)
plot(Time,Taw(2,:)),grid,xlabel('Time(Sec)'),ylabel('Taw 2(t) in N.m')
figure(15)
plot(Time,Taw(3,:)),grid,xlabel('Time(Sec)'),ylabel('Taw 3(t) in N.m')
figure(16)
plot(Time,Taw(4,:)),grid,xlabel('Time(Sec)'),ylabel('Taw 4(t) in N.m')
figure(17)
plot(Time,Taw(5,:)),grid,xlabel('Time(Sec)'),ylabel('Taw 5(t) in N.m')
figure(18)
plot(Time,Taw(6,:)),grid,xlabel('Time(Sec)'),ylabel('Taw 6(t) in N.m')
% End

