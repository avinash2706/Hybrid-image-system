function viz_freq (im1, im2)



figure

for sigma = 1:9
    h = fspecial('gaussian', 31, sigma);
    one = imfilter(im1, h);
    subplot(3,3,sigma)
    imshow(one);
end



figure

for sigma = 2:2:18
    h = fspecial('gaussian', 31, sigma);
    two = imfilter(im2, h);
    two=im2-two;
    two=two+0.5;
    subplot(3,3,sigma/2)
    imshow(two);
end




