clear all;
close all;

%% read image

image = imread('Cameraman256.bmp', 'bmp');
% image = [1,2,2,3;2,2,1,4;1,2,3,4;3,0,2,255];

simage  = size(image);

%% build histogram

hist = zeros(256,1,'uint16');

for y = 1:simage(1)
    for x = 1:simage(2)
        val = uint16(image(y,x)) + 1;
        hist(val) = hist(val) + 1;
    end
end

%% calculate probabilities

s = sum(hist);
prob = double(hist) ./ s;

%% calculate entropy

entro = double(0);
sprob = size(prob);
for i = 1:sprob
    entro = entro + prob(i) * log(prob(i)) / log(2);
end
entro = entro * -1;

disp(['Entropy of image = ' num2str(entro)]);


