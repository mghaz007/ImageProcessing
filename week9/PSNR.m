function g = PSNR(B1,B2,val)

[H,W] = size(B1);
psnr = 10 * log10(val^2 / (norm(B1 - B2, 'fro') ^ 2 / H / W));

% mse  = MSE(B1, B2);
% psnr = 10 * log10(val^2 / mse);

g = psnr;
