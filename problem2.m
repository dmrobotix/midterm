% Problem 2
% Midterm 2016
% CMPE-240
% V. Margot Paez

y = [1 2 3]';
A = [1.01 2.002; 3.003 2.007; 1.008 4.08];
A2 = A + [0.02 0.03; 0.02 0.03; 0.02 .03];
A3 = A + [0.2 0.05; 0.02 0.03; 0.01 .05];
B1 = inv(A'*A)*A';
B2 = inv(A2'*A2)*A2';
B3 = inv(A3'*A3)*A3';
x1 = B1*y
x2 = B2*y
x3 = B3*y

% method 1
Aavg = 1/3*(A+A2+A3);
x_ae = inv(Aavg'*Aavg)*Aavg'*y


% method 2
x_ea = 1/3*(x1+x2+x3)

% method 3
r = zeros(3,3);
r(1,1) = norm(A*x1-y)^2;
r(1,2) = norm(A2*x1-y)^2;
r(1,3) = norm(A3*x1-y)^2;

r(2,1) = norm(A*x2-y)^2;
r(2,2) = norm(A2*x2-y)^2;
r(2,3) = norm(A3*x2-y)^2;

r(3,1) = norm(A*x3-y)^2;
r(3,2) = norm(A2*x3-y)^2;
r(3,3) = norm(A3*x3-y)^2;


rms1 = sqrt(1/3*sum(r(1,:)))
rms2 = sqrt(1/3*sum(r(2,:)))
rms3 = sqrt(1/3*sum(r(3,:)))
