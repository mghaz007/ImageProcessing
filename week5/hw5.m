clear;

Po = imread('original.jpg');
Pn = imread('noisy.jpg');

In = double(Pn);
Io = double(Po);

I1 = double(medfilt2(uint8(In)));
I2 = double(medfilt2(uint8(I1)));

psnr1 = PSNR(Io, In, 255);
psnr2 = PSNR(Io, I1, 255);
psnr3 = PSNR(Io, I2, 255);

sprintf('PSNR(Io, In) = %f', psnr1)
sprintf('PSNR(Io, I1) = %f', psnr2)
sprintf('PSNR(Io, I2) = %f', psnr3)

figure; imshow(uint8(In))
figure; imshow(uint8(I1))
figure; imshow(uint8(I2))
figure; imshow(uint8(Io))
