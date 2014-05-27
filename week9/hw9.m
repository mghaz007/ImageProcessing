clear all;
close all;

%% read image
image = imread('Cameraman256.bmp', 'bmp');

%% write jpegs
imwrite(image, 'Cameraman_75.jpg', 'jpg', 'quality', 75);
imwrite(image, 'Cameraman_10.jpg', 'jpg', 'quality', 10);

%% load created jpegs

im75 = imread('Cameraman_75.jpg', 'jpg');
im10 = imread('Cameraman_10.jpg', 'jpg');

%% compute PSNRs

d100 = double(image);
d75  = double(im75);
d10  = double(im10);

psnr75 = PSNR(d100, d75, 255);
psnr10 = PSNR(d100, d10, 255);

disp(['PSNR(image, image75) = ' num2str(psnr75)]);
disp(['PSNR(image, image10) = ' num2str(psnr10)]);
