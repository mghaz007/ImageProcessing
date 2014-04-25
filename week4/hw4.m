P1 = imread('frame_1.jpg');
I1 = double(P1);

P2 = imread('frame_2.jpg');
I2 = double(P2);

B_target = I2(65:96,81:112);

s = size(I2);

f_min = 10000000;
x_min = 0;
y_min = 0;

for x = 1:s(2)-32
    for y = 1:s(1)-32
        B1 = I1(y:y+31,x:x+31);
        f = MAE(B_target,B1);

        if f < f_min
            f_min = f;
            x_min = x;
            y_min = y;
        end
    end
end

sprintf('min MAE = %f at (%d,%d)', f_min, y_min, x_min)

