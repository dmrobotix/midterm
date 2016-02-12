% Problem 2
% Midterm 2016
% V. Margot Paez

y = [1 2 3];
A = [1 2; 3 2; 1 4];
A2 = A + [0.2 0.3; 0.2 0.3; 0.2 03];
A3 = A + [0.2 0.05; 0.02 0.3; 0.01 .05];
B1 = inv(A'*A)*A';
B2 = inv(A2'*A2)*A2';
B3 = inv(A3'*A3)*A3';
x1 = B1*y
x2=B2*y
x3=B3*y

% method 1
Aavg = 1/3*(A+A2+A3);
x_avg = (Aavg'*Aavg)*Aavg'*y
norm(Aavg*a_avg-y)


% method 2

x_ea = 1/3*(x1+x2+x3)
norm(A*x1-y)
norm(A2*x2-y)
norm(A3*x3-y)

% method 3

r = zeros(3,3);

for i = 1:3
    for j = 1:3
        
    end
end