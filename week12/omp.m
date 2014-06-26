clear all;
close all;

%% Setup problem
dim = 10;
I = eye(dim);
D = zeros(dim, dim);

for i = 1:dim
    for j = 1:dim
        D(i,j) = sin(i + j);
    end
end

A_unorm = D * I;
for i = 1:dim
    n = norm(A_unorm(:,i));
    A(:,i) = A_unorm(:,i) / n;
end

b = [-2,-6,-9, 1, 8,10, 1,-9,-4,-3]';
S = 3;

%% OMP

r = b;
Omega = zeros(dim,1);
x = zeros(dim,1);
while (norm0(x) < S)
    if (c > dim)
        break
    end
    fprintf('===================')
    
    j = find(Omega == 0)
    x_star = zeros(dim,1);
    for i = j
        x_star(i) = A(:,i)' * r;
    end
    
    [max_value, index] = max(abs(x_star(:)))
    Omega(index) = 1;

    A_omega = zeros(dim,dim);
    j = find(Omega == 1);
    A_omega(:,j) = A(:,j);
    z_omega_star = pinv(A_omega' * A_omega) * A_omega' * b
    
    r = b - A_omega * z_omega_star
    
    x = z_omega_star
end