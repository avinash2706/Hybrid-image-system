    function [im1_lo, im2_hi, im_hybrid] = hybrid_image (im1, im2, G1, G2)


figure
subplot(3,2,1)
imshow(im1);
subplot(3,2,2)
imshow(im2)

subplot(3,2,3)
h = fspecial('gaussian', 31, G1);
im1_lo = imfilter(im1, h);
imshow(im1_lo);

subplot(3,2,4)
h = fspecial('gaussian', 31, G2);
im2_hi = imfilter(im2, h);
im2_hi=im2-im2_hi;
new=im2_hi+0.5;
imshow(new);

subplot(3,2,5)
im_hybrid=im1_lo+im2_hi;
imshow(im_hybrid);






