function g = PSNR(B1,B2)

mse  = MSE(B1, B2);
psnr = 10 * log10(1 / mse);

g = psnr;
