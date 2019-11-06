img = imread('n.jpg');
img = im2bw(img, 0.9);
img = 1 - img;
step_i = round(size(img, 1) / 10);
step_j = round(size(img, 2) / 10);
for i = 1:10
    for j = 1:8
        tt = img((i-1)*step_i + 1 : i * step_i, (j-1)*step_j + 1 : j * step_j);
        imwrite(tt, ['subs/',num2str(i),num2str(j),'.bmp']);
    end
end
imshow(img);