% Mat. M
M11 = (1/8)*d*m6*e*sin(q5+q3-q4)-(1/8)*d*m6*e*sin(-q5+q3-q4)+(1/8)*d*m6*e*sin(q5+q3+q4)-(1/8)*d*m6*e*sin(-q5+q3+q4)-sin(q3)*e*f*m4-sin(q3)*e*f*m5-sin(q3)*e*f*m6-(1/4)*d*m6*e*sin(q3+q5)-(1/4)*d*m6*e*sin(q3-q5)+(1/2)*m4*f^2-(1/8)*d*f*m6*cos(2*q3-q4-q5+2*q2)+(1/8)*d*f*m6*cos(2*q3-q4+q5+2*q2)-(1/8)*d*f*m6*cos(2*q3+q4-q5+2*q2)+(1/8)*d*m6*e*sin(q5+q3+q4+2*q2)-(1/8)*d*m6*e*sin(-q5+q3+q4+2*q2)-(1/4)*d*m6*e*sin(q3+q5+2*q2)-(1/4)*d*m6*e*sin(q3-q5+2*q2)-e*f*m4*sin(q3+2*q2)-e*f*m5*sin(q3+2*q2)-e*f*m6*sin(q3+2*q2)-(1/4)*d*f*m6*cos(2*q3-q5+2*q2)-(1/4)*d*f*m6*cos(2*q3+q5+2*q2)+(1/8)*d*f*m6*cos(2*q3+q4+q5+2*q2)+(1/8)*d*m6*e*sin(q5+q3-q4+2*q2)-(1/8)*d*m6*e*sin(-q5+q3-q4+2*q2)+(1/2)*cos(2*q2)*e^2*m5+(1/2)*cos(2*q2)*e^2*m6-(1/2)*m4*f^2*cos(2*q3+2*q2)-(1/2)*f^2*m5*cos(2*q3+2*q2)-(1/2)*m6*f^2*cos(2*q3+2*q2)+(1/2)*e^2*m6+l^2*m4+l^2*m5+(1/2)*f^2*m5+(1/2)*e^2*m4+(1/2)*e^2*m5+m3*l^2+(1/2)*m3*e^2+(1/2)*m1*hc^2+m6*l^2+(1/2)*m6*f^2+(1/2)*d*m6*cos(q5)*f+(1/2)*cos(2*q2)*e^2*m3+(1/2)*cos(2*q2)*e^2*m4-(1/2)*d*m6*l*cos(q4-q5)+(1/2)*d*m6*l*cos(q4+q5);
M22 = (1/4)*d*m6*e*sin(q5+q3+q4)-(1/4)*d*m6*e*sin(-q5+q3-q4)-(1/4)*d*m6*e*sin(-q5+q3+q4)+(1/4)*d*m6*e*sin(q5+q3-q4)-(1/2)*d*m6*e*sin(q3+q5)-(1/2)*d*m6*e*sin(q3-q5)-2*sin(q3)*e*f*m4-2*sin(q3)*e*f*m5-2*sin(q3)*e*f*m6+d*m6*cos(q5)*f+e^2*m6+m6*f^2+m4*f^2+f^2*m5+m3*e^2+e^2*m4+e^2*m5+(1/12)*m2*ec;
M33 = d*m6*cos(q5)*f+m3*e^2+m4*f^2+f^2*m5+m6*f^2+(1/12)*m3*lc;
M44 = (1/12)*m4*fc+m4*f^2;
M55 = (1/12)*m5*dc;
M66 = (1/12)*m5*dc+m6*d^2;

M12 = -(1/8)*d*m6*e*sin(q4-q5+q2)-(1/8)*d*m6*e*sin(-q4+q5+q2)+(1/8)*d*m6*e*sin(q4+q5+q2)+(1/8)*d*m6*e*sin(-q4-q5+q2)-(1/8)*d*m6*l*cos(q5+q3+q4+q2)+(1/4)*d*m6*l*cos(q3-q5+q2)+(1/4)*d*m6*l*cos(q3+q5+q2)+f*l*m4*cos(q3+q2)+f*l*m5*cos(q3+q2)+f*l*m6*cos(q3+q2)+(1/8)*d*f*m6*cos(-q5+q3-q4+q2)+(1/8)*d*m6*l*cos(-q5+q3-q4+q2)-(1/8)*d*f*m6*cos(q5+q3-q4+q2)-(1/8)*d*m6*l*cos(q5+q3-q4+q2)-(1/8)*d*f*m6*cos(-q5+q3+q4+q2)+(1/8)*d*m6*l*cos(-q5+q3+q4+q2)+(1/8)*d*f*m6*cos(q5+q3+q4+q2)+sin(q2)*e*l*m3+sin(q2)*e*l*m4+sin(q2)*e*l*m5+sin(q2)*e*l*m6;
M13 = -(1/8)*d*m6*l*cos(q5+q3+q4+q2)+(1/4)*d*m6*l*cos(q3-q5+q2)+(1/4)*d*m6*l*cos(q3+q5+q2)+f*l*m4*cos(q3+q2)+f*l*m5*cos(q3+q2)+f*l*m6*cos(q3+q2)+(1/8)*d*f*m6*cos(-q5+q3-q4+q2)+(1/8)*d*m6*l*cos(-q5+q3-q4+q2)-(1/8)*d*f*m6*cos(q5+q3-q4+q2)-(1/8)*d*m6*l*cos(q5+q3-q4+q2)-(1/8)*d*f*m6*cos(-q5+q3+q4+q2)+(1/8)*d*m6*l*cos(-q5+q3+q4+q2)+(1/8)*d*f*m6*cos(q5+q3+q4+q2);
M14 = -(1/8)*d*m6*e*sin(-q4+q5+q2)+(1/8)*d*m6*e*sin(-q4-q5+q2)-(1/8)*d*m6*e*sin(q4+q5+q2)+(1/8)*d*m6*e*sin(q4-q5+q2)+(1/8)*d*f*m6*cos(-q5+q3+q4+q2)-(1/8)*d*f*m6*cos(q5+q3+q4+q2)+(1/8)*d*m6*l*cos(-q5+q3+q4+q2)-(1/8)*d*m6*l*cos(q5+q3+q4+q2)+(1/8)*d*f*m6*cos(-q5+q3-q4+q2)-(1/8)*d*f*m6*cos(q5+q3-q4+q2)-(1/8)*d*m6*l*cos(-q5+q3-q4+q2)+(1/8)*d*m6*l*cos(q5+q3-q4+q2);
M15 = -(1/8)*d*m6*e*sin(q4+q5+q2)-(1/8)*d*m6*e*sin(q4-q5+q2)-(1/8)*d*f*m6*cos(-q5+q3+q4+q2)-(1/8)*d*m6*l*cos(-q5+q3+q4+q2)-(1/8)*d*f*m6*cos(q5+q3+q4+q2)-(1/8)*d*m6*l*cos(q5+q3+q4+q2)+(1/8)*d*f*m6*cos(-q5+q3-q4+q2)-(1/8)*d*m6*l*cos(-q5+q3-q4+q2)+(1/8)*d*f*m6*cos(q5+q3-q4+q2)-(1/8)*d*m6*l*cos(q5+q3-q4+q2)-(1/4)*d*m6*l*cos(q3-q5+q2)+(1/4)*d*m6*l*cos(q3+q5+q2)+(1/8)*d*m6*e*sin(-q4+q5+q2)+(1/8)*d*m6*e*sin(-q4-q5+q2);
M16 = 0;

M21 = M12; 
M23 = (1/8)*d*m6*e*sin(q5+q3+q4)-(1/8)*d*m6*e*sin(-q5+q3-q4)-(1/8)*d*m6*e*sin(-q5+q3+q4)+(1/8)*d*m6*e*sin(q5+q3-q4)-(1/4)*d*m6*e*sin(q3+q5)-(1/4)*d*m6*e*sin(q3-q5)-sin(q3)*e*f*m4-sin(q3)*e*f*m5-sin(q3)*e*f*m6+d*m6*cos(q5)*f+m4*f^2+f^2*m5+m6*f^2;
M24 = -(1/8)*d*m6*e*sin(-q5+q3+q4)-(1/8)*d*m6*e*sin(q5+q3-q4)+(1/8)*d*m6*e*sin(q5+q3+q4)+(1/8)*d*m6*e*sin(-q5+q3-q4)+(1/4)*d*f*m6*cos(q4-q5)-(1/4)*d*f*m6*cos(q4+q5);
M25 = -(1/4)*d*f*m6*cos(q4-q5)-(1/4)*d*f*m6*cos(q4+q5)-(1/4)*d*m6*e*sin(q3+q5)+(1/4)*d*m6*e*sin(q3-q5)+(1/8)*d*m6*e*sin(q5+q3+q4)+(1/8)*d*m6*e*sin(-q5+q3-q4)+(1/8)*d*m6*e*sin(-q5+q3+q4)+(1/8)*d*m6*e*sin(q5+q3-q4);
M26 = 0;

M31 = M13;
M32 = M23;
M34 = (1/4)*d*f*m6*cos(q4-q5)-(1/4)*d*f*m6*cos(q4+q5);
M35 = -(1/4)*d*f*m6*cos(q4-q5)-(1/4)*d*f*m6*cos(q4+q5);
M36 = 0;

M41 = M14;
M42 = M24;
M43 = M34;
M45 = 0;
M46 = 0;

M51 = M15;
M52 = M25; 
M53 = M35;
M54 = M45;
M56 = 0;

M61 = M16;
M62 = M26;
M63 = M36;
M64 = M46;
M65 = M56;

M = [M11 M12 M13 M14 M15 M16;
     M21 M22 M23 M24 M25 M26;
     M31 M32 M33 M34 M35 M36;
     M41 M42 M43 M44 M45 M46;
     M51 M52 M53 M54 M55 M56;
     M61 M62 M63 M64 M65 M66];
% Mat. H
H1 = -(2*(2*f*(d*((q2dot+q3dot)*cos(q4)-(1/2)*q5dot)*m6*sin(q5)-(1/2)*d*m6*cos(q5)-(1/2)*f*(m4+m5+m6))*cos(q3)^2+(-2*f*((1/2)*d*m6*(q4dot*sin(q4)+cos(q4))*sin(q5)-(1/2)*d*m6*q5dot*cos(q4)*cos(q5)+(d*m6*cos(q5)+f*(m4+m5+m6))*(q2dot+q3dot))*sin(q3)+((1/2)*d*m6*(q4dot*sin(q4)+cos(q4))*sin(q5)-(1/2)*d*m6*q5dot*cos(q4)*cos(q5)+(q2dot+(1/2)*q3dot)*(d*m6*cos(q5)+2*f*(m4+m5+m6)))*e)*cos(q3)+(d*((q2dot+(1/2)*q3dot)*cos(q4)-(1/2)*q5dot)*m6*sin(q5)-(1/2)*d*m6*cos(q5)-f*(m4+m5+m6))*e*sin(q3)-d*f*((q2dot+q3dot)*cos(q4)-(1/2)*q5dot)*m6*sin(q5)+(1/2)*d*m6*cos(q5)*f+((1/2)*e^2+(1/2)*f^2)*m6+((1/2)*m4+(1/2)*m5)*f^2+(1/2)*e^2*(m3+m4+m5)))*q1dot*cos(q2)^2+(1/2)*(8*f*((1/2)*d*m6*(q4dot*sin(q4)+cos(q4))*sin(q5)-(1/2)*d*m6*q5dot*cos(q4)*cos(q5)+(d*m6*cos(q5)+f*(m4+m5+m6))*(q2dot+q3dot))*q1dot*sin(q2)*cos(q3)^2+(-4*q1dot*(-2*f*(d*((q2dot+q3dot)*cos(q4)-(1/2)*q5dot)*m6*sin(q5)-(1/2)*d*m6*cos(q5)-(1/2)*f*(m4+m5+m6))*sin(q3)+(d*((q2dot+(1/2)*q3dot)*cos(q4)-(1/2)*q5dot)*m6*sin(q5)-(1/2)*d*m6*cos(q5)-f*(m4+m5+m6))*e)*sin(q2)+d*m6*(l*(q2dot^2+2*q2dot*q3dot+q3dot^2+q4dot^2+q5dot^2)*cos(q4)+(f*(q2dot+q3dot)-q4dot*l)*sin(q4)-2*q5dot*l*(q2dot+q3dot))*sin(q5)-(-d*m6*q5dot*cos(q4)*cos(q5)+d*m6*(-2*q4dot*q5dot*sin(q4)+q2dot+q3dot)*cos(q5)+2*f*(q2dot+q3dot)*(m4+m5+m6))*l)*cos(q3)+(4*(((1/2)*d*m6*(q4dot*sin(q4)+cos(q4))*sin(q5)-(1/2)*d*m6*q5dot*cos(q4)*cos(q5)+(q2dot+(1/2)*q3dot)*(d*m6*cos(q5)+2*f*(m4+m5+m6)))*e*sin(q3)-(1/2)*d*m6*f*(q4dot*sin(q4)+cos(q4))*sin(q5)+(1/2)*d*m6*cos(q4)*f*q5dot*cos(q5)-d*m6*f*(q2dot+q3dot)*cos(q5)+((-q2dot-q3dot)*f^2-q2dot*e^2)*m6-(m4+m5)*(q2dot+q3dot)*f^2-q2dot*e^2*(m3+m4+m5)))*q1dot*sin(q2)+(d*((-q4dot*f-(q2dot+q3dot)*l)*cos(q4)+(-2*q4dot*(q2dot+q3dot)*l+f*(q2dot^2+2*q2dot*q3dot+q3dot^2-q4dot^2-q5dot^2))*sin(q4)+q5dot*l)*m6*sin(q5)+2*d*cos(q5)*q5dot*m6*((q2dot+q3dot)*l+q4dot*f)*cos(q4)-d*(q5dot*sin(q4)*f+l*(q2dot^2+2*q2dot*q3dot+q3dot^2+q5dot^2))*m6*cos(q5)-2*f*l*(q2dot+q3dot)^2*(m4+m5+m6))*sin(q3)-(d*(-q4dot*cos(q4)+sin(q4)*(q2dot^2-q4dot^2-q5dot^2))*m6*sin(q5)+2*d*m6*q4dot*q5dot*cos(q4)*cos(q5)-d*m6*sin(q4)*q5dot*cos(q5)-2*q2dot^2*l*(m3+m4+m5+m6))*e)*cos(q2)+2*f*(d*((q2dot+q3dot)*cos(q4)-(1/2)*q5dot)*m6*sin(q5)-(1/2)*d*m6*cos(q5)-(1/2)*f*(m4+m5+m6))*q1dot*cos(q3)^2+(1/2)*((d*((-q4dot*f-(q2dot+q3dot)*l)*cos(q4)+(-2*q4dot*(q2dot+q3dot)*l+f*(q2dot^2+2*q2dot*q3dot+q3dot^2-q4dot^2-q5dot^2))*sin(q4)+q5dot*l)*m6*sin(q5)+2*d*cos(q5)*q5dot*m6*((q2dot+q3dot)*l+q4dot*f)*cos(q4)-d*(q5dot*sin(q4)*f+l*(q2dot^2+2*q2dot*q3dot+q3dot^2+q5dot^2))*m6*cos(q5)-2*f*l*(q2dot+q3dot)^2*(m4+m5+m6))*sin(q2)+(2*(-2*f*((1/2)*d*m6*(q4dot*sin(q4)+cos(q4))*sin(q5)-(1/2)*d*m6*q5dot*cos(q4)*cos(q5)+(d*m6*cos(q5)+f*(m4+m5+m6))*(q2dot+q3dot))*sin(q3)+q2dot*(d*m6*cos(q5)+2*f*(m4+m5+m6))*e))*q1dot)*cos(q3)+(1/2)*((-d*m6*(l*(q2dot^2+2*q2dot*q3dot+q3dot^2+q4dot^2+q5dot^2)*cos(q4)+(f*(q2dot+q3dot)-q4dot*l)*sin(q4)-2*q5dot*l*(q2dot+q3dot))*sin(q5)+(-d*m6*q5dot*cos(q4)*cos(q5)+d*m6*(-2*q4dot*q5dot*sin(q4)+q2dot+q3dot)*cos(q5)+2*f*(q2dot+q3dot)*(m4+m5+m6))*l)*sin(q3)+q2dot*(d*m6*sin(q4)*sin(q5)-2*l*(m3+m4+m5+m6))*e)*sin(q2)+(d*m6*q2dot*e*cos(q4)*sin(q3)*sin(q5)-d*m6*((f*(q2dot+q3dot)+q4dot*l)*cos(q4)-sin(q4)*l)*sin(q5)-d*m6*sin(q4)*q5dot*cos(q5)*l-m6*l^2+(-m3-m4-m5)*l^2-(1/2)*m1*hc^2)*q1dot;
H2 = (1/12)*((6*(-((-q4dot*f+(q2dot+q3dot)*l)*cos(q4)-q5dot*l+f*sin(q4))*q1dot*sin(q2)+(-cos(q4)*l+(f*(q2dot+q3dot)-q4dot*l)*sin(q4))*q1dot*cos(q2)-(2*((q2dot*q3dot+(1/2)*q3dot^2+(1/2)*q4dot^2+(1/2)*q5dot^2)*cos(q4)-(1/2)*q4dot*sin(q4)-q5dot*(q2dot+q3dot)))*e))*d*m6*sin(q5)+6*q1dot*(d*m6*(q5dot*sin(q4)*f+l)*cos(q5)+2*f*l*(m4+m5+m6))*sin(q2)-6*l*q1dot*(d*m6*(-q5dot*cos(q4)+q2dot+q3dot)*cos(q5)+2*f*(q2dot+q3dot)*(m4+m5+m6))*cos(q2)+(12*(d*m6*(-q4dot*q5dot*sin(q4)-(1/2)*q5dot*cos(q4)+q2dot+(1/2)*q3dot)*cos(q5)+(2*(q2dot+(1/2)*q3dot))*f*(m4+m5+m6)))*e)*sin(q3)+(1/12)*(6*d*((-cos(q4)*l+(f*(q2dot+q3dot)-q4dot*l)*sin(q4))*q1dot*sin(q2)+((-q4dot*f+(q2dot+q3dot)*l)*cos(q4)-q5dot*l+f*sin(q4))*q1dot*cos(q2)-(2*((q2dot+(1/2)*q3dot)*cos(q4)+q4dot*(q2dot+q3dot)*sin(q4)-(1/2)*q5dot))*e)*m6*sin(q5)-6*l*q1dot*(d*m6*(-q5dot*cos(q4)+q2dot+q3dot)*cos(q5)+2*f*(q2dot+q3dot)*(m4+m5+m6))*sin(q2)-6*q1dot*(d*m6*(q5dot*sin(q4)*f+l)*cos(q5)+2*f*l*(m4+m5+m6))*cos(q2)-(12*(d*(-q5dot*(q2dot+q3dot)*cos(q4)+q2dot*q3dot+(1/2)*q3dot^2+(1/2)*q5dot^2)*m6*cos(q5)+(2*(q2dot+(1/2)*q3dot))*q3dot*f*(m4+m5+m6)))*e)*cos(q3)-(1/2)*d*(q1dot*e*(q4dot*cos(q4)-sin(q4))*sin(q2)+q1dot*q2dot*e*cos(q2)*sin(q4)+2*f*((-(1/2)*q4dot^2-(1/2)*q5dot^2)*cos(q4)+(1/2)*q4dot*sin(q4)+q5dot*(q2dot+q3dot)))*m6*sin(q5)-(1/2)*(d*m6*sin(q4)*q5dot*cos(q5)+2*l*(m3+m4+m5+m6))*q1dot*e*sin(q2)+q1dot*q2dot*e*l*(m3+m4+m5+m6)*cos(q2)-d*m6*(-q4dot*q5dot*sin(q4)-(1/2)*q5dot*cos(q4)+q2dot+q3dot)*f*cos(q5)+(1/12)*((-12*q2dot-12*q3dot)*f^2-12*q2dot*e^2)*m6-(m4+m5)*(q2dot+q3dot)*f^2-q2dot*(e^2*(m3+m4+m5)+(1/12)*m2*ec);
H3 = (1/12)*(6*d*(((-q4dot*f+(q2dot+q3dot)*l)*cos(q4)-q5dot*l+f*sin(q4))*q1dot*cos(q2)+(-cos(q4)*l+(f*(q2dot+q3dot)-q4dot*l)*sin(q4))*q1dot*sin(q2)-q2dot*e*(q4dot*sin(q4)+cos(q4)))*m6*sin(q5)-6*q1dot*(d*m6*(q5dot*sin(q4)*f+l)*cos(q5)+2*f*l*(m4+m5+m6))*cos(q2)-6*l*q1dot*(d*m6*(-q5dot*cos(q4)+q2dot+q3dot)*cos(q5)+2*f*(q2dot+q3dot)*(m4+m5+m6))*sin(q2)-(6*(d*m6*(-q5dot*cos(q4)+q3dot)*cos(q5)+2*q3dot*f*(m4+m5+m6)))*q2dot*e)*cos(q3)+(1/12)*(6*d*m6*((-cos(q4)*l+(f*(q2dot+q3dot)-q4dot*l)*sin(q4))*q1dot*cos(q2)-((-q4dot*f+(q2dot+q3dot)*l)*cos(q4)-q5dot*l+f*sin(q4))*q1dot*sin(q2)-q2dot*e*(q3dot*cos(q4)-q5dot))*sin(q5)-6*l*q1dot*(d*m6*(-q5dot*cos(q4)+q2dot+q3dot)*cos(q5)+2*f*(q2dot+q3dot)*(m4+m5+m6))*cos(q2)+6*q1dot*(d*m6*(q5dot*sin(q4)*f+l)*cos(q5)+2*f*l*(m4+m5+m6))*sin(q2)+6*q2dot*(d*m6*cos(q5)+2*f*(m4+m5+m6))*e)*sin(q3)-d*m6*((-(1/2)*q4dot^2-(1/2)*q5dot^2)*cos(q4)+(1/2)*q4dot*sin(q4)+q5dot*(q2dot+q3dot))*f*sin(q5)-d*m6*(-q4dot*q5dot*sin(q4)-(1/2)*q5dot*cos(q4)+q2dot+q3dot)*f*cos(q5)-f^2*(q2dot+q3dot)*m6-(m4+m5)*(q2dot+q3dot)*f^2-(e^2+(1/12)*lc)*m3*q3dot;
H4 = (1/2)*m6*d*((-(((q2dot+q3dot)*l+q4dot*f)*sin(q3)-e*q4dot+cos(q3)*l)*q1dot*cos(q2)+(q1dot*sin(q2)*l+e*q2dot)*sin(q3)+(-((q2dot+q3dot)*l+q4dot*f)*q1dot*sin(q2)-q2dot*q3dot*e)*cos(q3)-f*(q2dot+q3dot))*sin(q4)+(q1dot*(-sin(q3)*f+(f*(q2dot+q3dot)+q4dot*l)*cos(q3)+e)*cos(q2)+(-(f*(q2dot+q3dot)+q4dot*l)*q1dot*sin(q2)-e*q2dot*q4dot)*sin(q3)-q1dot*sin(q2)*f*cos(q3)+q1dot*q2dot*e*sin(q2)+q4dot*f*(q2dot+q3dot))*cos(q4))*sin(q5)+(1/2)*m6*d*q5dot*((-q1dot*sin(q2)*l-e*q2dot)*sin(q3)+q1dot*cos(q2)*cos(q3)*l+f*(q2dot+q3dot))*cos(q5)*sin(q4)-(1/2)*m6*d*q5dot*cos(q5)*q1dot*((-sin(q3)*f+e)*cos(q2)-cos(q3)*sin(q2)*f)*cos(q4)-(f^2+(1/12)*fc)*m4*q4dot;
H5 = (1/2)*m6*d*(((((q2dot+q3dot)*l+q4dot*f)*q1dot*cos(q2)-q1dot*sin(q2)*l-e*q2dot)*sin(q3)-q1dot*(e*q4dot-cos(q3)*l)*cos(q2)+(((q2dot+q3dot)*l+q4dot*f)*q1dot*sin(q2)+q2dot*q3dot*e)*cos(q3)+f*(q2dot+q3dot))*cos(q4)+(-q1dot*(q5dot*l+f*sin(q4))*cos(q2)-((f*(q2dot+q3dot)+q4dot*l)*q1dot*sin(q2)+e*q2dot*q4dot)*sin(q4))*sin(q3)+sin(q4)*q1dot*((f*(q2dot+q3dot)+q4dot*l)*cos(q3)+e)*cos(q2)+(-q1dot*sin(q2)*f*sin(q4)-q5dot*(q1dot*sin(q2)*l+e*q2dot))*cos(q3)+sin(q4)*(q1dot*q2dot*e*sin(q2)+q4dot*f*(q2dot+q3dot)))*cos(q5)+(1/2)*m6*d*q5dot*((-q1dot*sin(q2)*l-e*q2dot)*sin(q3)+q1dot*cos(q2)*cos(q3)*l+f*(q2dot+q3dot))*sin(q5)*cos(q4)+(1/2)*m6*d*(-q1dot*(q5dot*sin(q4)*f-l)*cos(q2)+q1dot*l*(q2dot+q3dot)*sin(q2)+q2dot*q3dot*e)*sin(q5)*sin(q3)-(1/2)*m6*d*((q2dot+q3dot)*l*cos(q3)-q5dot*e*sin(q4))*q1dot*sin(q5)*cos(q2)-(1/2)*d*sin(q5)*m6*(q1dot*q5dot*sin(q2)*sin(q4)*f-q1dot*sin(q2)*l-e*q2dot)*cos(q3)-(1/12)*q5dot*m5*dc;
H6 = -q6dot*d^2*m6-(1/12)*q6dot*m5*dc;

H = [H1;H2;H3;H4;H5;H6];

% Mat. G
G1 = 0;
G2 = g*((d*cos(q3)*cos(q4)*sin(q5)*m1+(-d*cos(q5)*m1-f*(m1+m4+m5))*sin(q3)+e*(m1+m3+m4+m5))*cos(q2)-((d*cos(q5)*m1+f*(m1+m4+m5))*cos(q3)+d*cos(q4)*sin(q3)*sin(q5)*m1)*sin(q2));
G3 = g*((d*cos(q3)*cos(q4)*sin(q5)*m1-sin(q3)*(d*cos(q5)*m1+f*(m1+m4+m5)))*cos(q2)-((d*cos(q5)*m1+f*(m1+m4+m5))*cos(q3)+d*cos(q4)*sin(q3)*sin(q5)*m1)*sin(q2));
G4 = -m1*g*sin(q4)*sin(q5)*d*(sin(q2)*cos(q3)+cos(q2)*sin(q3));
G5 = d*(cos(q5)*(sin(q2)*cos(q3)+cos(q2)*sin(q3))*cos(q4)+sin(q5)*(sin(q2)*sin(q3)-cos(q2)*cos(q3)))*m1*g;
G6 = 0;

G = [G1;G2;G3;G4;G5;G6];

% Mat. B
B = [-1 0 0 0 0 0;
     0 -1 0 0 0 0;
     0 0 -1 0 0 0;
     0 0 0 -1 0 0;
     0 0 0 0 -1 0;
     0 0 0 0 0 -1];
% Mat. Force
F1 = 0;
F2 = 0;
F3 = 0;
F4 = 0;
F5 = 0;
F6 = 0;

F = [F1;F2;F3;F4;F5;F6];
% End