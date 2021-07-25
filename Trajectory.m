% Trajectory
% Apply the terms
X12=[0 0 0 1;0 0 1 0;t1^3 t1^2 t1 1;3*t1^2 2*t1 1 0]\[70;0;40;0];
X23=[t1^3 t1^2 t1 1;3*t1^2 2*t1 1 0;tf^3 tf^2 tf 1;3*tf^2 2*tf 1 0]\[70;0;10;0];

% Conditions

if t <= t1
    
    pxw = 75;
    xedot = 0;
    xeddot = 0;
    
    pyw = 70;
    yedot = 0;
    yeddot = 0;
    
    pzw = X12(1)*t^3+X12(2)*t^2+X12(3)*t+X12(4)
    zedot = 3*X12(1)*t^2+2*X12(2)*t+X12(3);
    zeddot = 6*X12(1)*t+2*X12(2);
    
else t > t1 && t < tf
    
    pxw = 75;
    xedot = 0;
    xeddot =0 ;
    
    pyw = X23(1)*t^3+X23(2)*t^2+X23(3)*t+X23(4)
    yedot = 3*X23(1)*t^2+2*X23(2)*t+X23(3);
    yeddot = 6*X23(1)*t+2*X23(2);
    
    pzw = 40;
    zedot = 0;
    zeddot = 0;
    
end

%End