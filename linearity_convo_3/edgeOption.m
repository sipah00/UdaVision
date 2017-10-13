pkg load image;

img = imread('cv1.png');
imshow(img);

fltr_s = 25;
fltr_sig = 4;
fltr = fspecial('gaussian', fltr_s, fltr_sig);

fltrimg = imfilter(img, fltr, 0);
imshow(fltrimg);


