% Problem 2
% Midterm 2016
% V. Margot Paez

y = [1 2 3]';
A = [1 2; 3 2; 1 4];
A2 = A + [0.2 0.3; 0.2 0.3; 0.2 .03];
A3 = A + [0.2 0.05; 0.02 0.3; 0.01 .05];
B1 = inv(A'*A)*A';
B2 = inv(A2'*A2)*A2';
B3 = inv(A3'*A3)*A3';
x1 = B1*y;
x2 = B2*y;
x3 = B3*y;

% method 1
Aavg = 1/3*(A+A2+A3);
x_avg = inv(Aavg'*Aavg)*Aavg'*y
rms_avg = sqrt(1/1*norm(Aavg*x_avg-y)^2);


% method 2
x_ea = 1/3*(x1+x2+x3)
rms_ea = sqrt(1/3*(norm(A*x_ea-y)^2)+(norm(A2*x_ea-y)^2)+(norm(A3*x_ea-y)^2));
rms_ea1 = sqrt(1/1*norm(A*x1-y)^2);
rms_ea2 = sqrt(1/1*norm(A2*x2-y)^2);
rms_ea3 = sqrt(1/1*norm(A3*x3-y)^2);


% method 3
r = zeros(3,3);
r(1,1) = norm(A*x1-y)^2;
r(1,2) = norm(A*x2-y)^2;
r(1,3) = norm(A*x3-y)^2;
r(2,1) = norm(A2*x1-y)^2;
r(2,2) = norm(A2*x2-y)^2;
r(2,3) = norm(A2*x3-y)^2;
r(3,1) = norm(A3*x1-y)^2;
r(3,2) = norm(A3*x2-y)^2;
r(3,3) = norm(A3*x3-y)^2;

snorm = 0;
for j =1:3
        snorm1 = snorm + r(1,j);
        snorm2 = snorm + r(2,j);
        snorm3 = snorm + r(3,j);
end

rms1 = sqrt(1/3*snorm1);
rms2 = sqrt(1/3*snorm2);
rms3 = sqrt(1/3*snorm3);

x3
