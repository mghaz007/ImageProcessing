function g = PSNR(B1,B2,val)

mse  = MSE(B1, B2);
psnr = 10 * log10(val^2 / mse);

g = psnr;
