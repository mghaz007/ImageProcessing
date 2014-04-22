P1 = imread('frame_1.jpg');
I1 = double(P1);

P2 = imread('frame_2.jpg');
I2 = double(P2);

B_target = I2(65:96,81:112);
