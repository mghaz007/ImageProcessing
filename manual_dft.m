x = [2 1 1; 1 0 0; 0 0 0; 1 0 0];
X = zeros(size(x))+0.0j;
for n1=0:3
    for n2=0:2
        for k1=0:3
            for k2=0:2
                X(k1+1,k2+1) = X(k1+1,k2+1) + x(n1+1,n2+1)*exp(-1j*((2*pi)/4)*n1*k1)*exp(-1j*((2*pi)/3)*n2*k2);
            end
        end
    end
end
