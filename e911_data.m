%% Problem 4

% data for midterm problem on an E-911 system
c = 0.3;  % speed of light in m/ns
S = [ -20000 1000 -3000 4000 -3500 1000 4000 -4000 6000;
        5000 3500 -4000 1000  2000 6000 -3000 -1500 -1000];
% location of base stations (in m)
t = [  
      63282.00
      13402.00
      25964.00
      24073.00
       8516.00
      17692.00
      30981.00
      18834.00
      32703.00];
% arrival times of signal at base stations (in ns)


% stuff
r_norms = 0;
A = zeros(9,3);
b = zeros(9,1);
r = zeros(9,1);
flag = 1;

%------give initial guess
X = [100; 90; 5000];

%------- loop ------
while flag
    %----- Calculate matrix A
    A = zeros(9,3);
    b = zeros(9,1);
    for i = 1:9
        A(i,:) = [1/c*(S(1,i)-X(1))/norm(S(:,i)-X(1:2)) 1/c*(S(2,i)-X(2))/norm(S(:,i)-X(1:2)) -1];
        % ... and b
        b(i,:) = 1/c*(S(1,i)-X(1))/norm(S(:,i)-X(1:2))*X(1) + 1/c*(S(2,i)-X(2))/norm(S(:,i)-X(1:2))*X(2) - X(3) - (t(1) - 1/c*norm(S(:,i)-X(1:2)) - X(3));
    end

    % solve least squares equation
    X_ls = inv(A'*A)*A'*b;
    X = X_ls;

    %--- stopping critera
    r_norm = norm(A*X-b)^2;
    r_norms(end+1) = r_norm; 

    if length(r_norms) > 1
        if r_norms(end) == r_norms(end-1)
            flag = 0;
        end
    end
   
end

%% Results
% the more than likely incorrect approximate solution for X_ls = [x1, x2,
% tau]
X_ls

iterations = 1:length(r_norms);
plot(iterations,r_norms);
