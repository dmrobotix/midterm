% EE263: Worse time for control system failiure
% Problem data

% The A matrix
A = [0.5 0   0   0;
     0   0.5 0.5 0;
     0   0   1   0.5;
     0.5 0   0   1];
% The B matrix
B = [1 0 0 0;
     0 1 0 0]';
% the K matrix
K =[-5 0 -25 -20;
     0 -1  -1  -2];

 A_tilde = A+B*K; % when the system is working normally
 
 [U,S,D] = svd(A);
 [V,D_] = eig(A);
 
 [U_tilde,S_tilde,D_tilde] = svd(A_tilde);
 %[U_tilde,S_tilde,D_tilde] = svd(expm(A_tilde));
 [V_tilde, D__tilde] = eig(A_tilde);
 
 %% Results
 v1 = D(:,1);
 x = expm(A_tilde*4.63)*expm(A*1)*expm(A_tilde*4.37)*v1
 norm(x) 
 