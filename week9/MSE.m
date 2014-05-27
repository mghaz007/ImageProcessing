function g = MSE(B1,B2)

s1 = size(B1);
s2 = size(B2);

if not(s1(1) == s2(1) && s1(2) == s2(2))
  error('input parameters do not match in size')
end;

sum = 0;
for x = 1:s1(2)
    for y = 1:s1(1)
        sum = sum + (B1(y,x) - B2(y,x))^2;
    end
end;

sum = sum / (s1(1) * s1(2));

g = sum;