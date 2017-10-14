pkg load image;

img = imread('noise_img.png');
imshow(img);

img=rgb2gray(img);


noised_img = imnoise(img, 'salt & pepper', 0.0000045);
imshow(noised_img);

median_filtered = medfilt2(img);
imshow(median_filtered);
