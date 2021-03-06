I1 = imread('original_quiz.jpg');
s1 = size(I1);

I1d = im2double(I1);

LP = [1.0/9.0, 1.0/9.0, 1.0/9.0; 1.0/9.0, 1.0/9.0, 1.0/9.0; 1.0/9.0, 1.0/9.0, 1.0/9.0];
BL = [0.25, 0.5, 0.25; 0.5, 1, 0.5; 0.25, 0.5, 0.25];

I1low = imfilter(I1d, LP, 'replicate');

s2 = [round(s1(1) / 2), round(s1(2) / 2)];
I2 = zeros(s2);

for y = 1:s2(2)
  for x = 1:s2(1)
    I2(x,y) = I1low(x * 2 - 1, y * 2 - 1);
  end;
end;

I3 = zeros(s1);

for y = 1:s2(2)
  for x = 1:s2(1)
    I3(x * 2 - 1, y * 2 - 1) = I2(x, y);
  end;
end;

I3up = imfilter(I3, BL);

psnr = PSNR(I1d, I3up, 1)
