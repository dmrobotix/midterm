%% Problem 5
A_meas = [2.0 1.2 -1.0; 0.4 2.0 -0.5; -0.5 0.9 1.0];
v1 = [0.7; 0; 0.7];
v2 = [0.3; 0.6; 0.7];
v3 = [0.6; 0.6; 0.3];

lambda1_ls = inv(v1'*v1)*v1'*A_meas*v1
lambda2_ls = inv(v2'*v2)*v2'*A_meas*v2
lambda3_ls = inv(v3'*v3)*v3'*A_meas*v3

V = [v1 v2 v3];
W = inv(V);
D = [lambda1_ls 0 0; 0 lambda2_ls 0; 0 0 lambda3_ls];

A_maybe = V*D*W;

J = 0;
for i = 1:3
    for j = 1:3
        J = J + (A_meas(i,j)-A_maybe(i,j))^2;
    end
end
%% Results
J = 1/9*J
    
