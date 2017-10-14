pkg load image;

img = imread('cv.jpg');
imshow(img);

fltr_s = 25;
fltr_sig = 4;
fltr = fspecial('gaussian', fltr_s, fltr_sig);

clipfltrimg = imfilter(img, fltr, 0);  %clip filter
wrapfltrimg = imfilter(img, fltr, 'circular'); %wrap filter
cedgefltrimg = imfilter(img, fltr, 'replicate'); %copy edge filter
reffltrimg = imfilter(img, fltr, 'symmetric'); %reflection filter

imshow(clipfltrimg);
imshow(wrapfltrimg);
imshow(cedgefltrimg);
imshow(reffltrimg);
