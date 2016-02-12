% Problem 1
% part a
A = [1 2 1; 2 4 2];
B = [2 4 2; -1 -2 -1];
C = [-2 -4 3; 1 2 5];
D = [A; A+B; A+B+C]; 

% part b
%a case in which the problem statement is not true
A = [1 2 1; 2 4 2];
B = [1 2 1; -1 -2 -1; 1 2 1];
C = [-1 -2 3; 1 2 3; 1 3 4];
D = [A; A*B; A*B*C];  
null(A);
null(B);
null(C);
null(D);

C*null(D);
A*null(D);
B*null(D);

% C*null(D) does not equal zero, so the null(D) cannot be the intersection
% of the null(A) and null(B) and null(C) or else null(D) would also be in
% the null(C).

% part C

A = [1 2; -1 -2; 1 2];
B = [1 3 2 4 9; 2 2 3 4 3];

D = A*B;
nullD = null(D);
nullDD = null(D'*D);

problemnull = null(B'*A'*A*B + B'*B);
nullB = null(B);

if nullB == problemnull
    1
else
    0
end
