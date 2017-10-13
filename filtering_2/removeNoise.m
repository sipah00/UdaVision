% Apply a Gaussian filter to remove noise
img = imread('saturn.png');
imshow(img);

% TODO: Add noise to the image

nsig = 25;
noise = randn(size(img)) .* nsig;
no_img = noise + img;
imshow(no_img);

% TODO: Now apply a Gaussian filter to smooth out the noise
% Note: You may need to pkg load image;

pkg load image;

kers = 11;
ksig = 3;

fltr = fspecial('gaussian', kers, ksig);

smt = imfilter(no_img, fltr);
imshow(smt);

