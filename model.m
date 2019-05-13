
clear; close all; clc

% read the two images 
% convert to double over [0,1] (need to allow negative values in hi-filtered)
im1 = im2double( rgb2gray( imread('cat.bmp') ) );
im2 = im2double( rgb2gray( imread('dog.bmp') ) );
% 
% 
viz_freq(im1, im2); 

% find G1 and G2 interactively
%choose G1 and G2 (and report to hw3_report.txt, you could do that by hand)
G1 = 1
G2 = 18
% % 
% % %build and visualize the hybrid image
% save the hybrid image (e.g., dog/cat pair in 'dog_cat.jpg')
[lo,hi,hybrid] = hybrid_image (im1, im2, G1, G2);
imwrite(hybrid,'dog_cat.jpg');



% repeat for each image pair


%plane_bird
im1 = im2double( rgb2gray( imread('plane.bmp') ) );
im2 = im2double( rgb2gray( imread('bird.bmp') ) );
[lo,hi,hybrid] = hybrid_image (im1, im2, G1, G2);
imwrite(hybrid,'plane_bird.jpg');

%bicycle_motorcycle
im1 = im2double( rgb2gray( imread('motorcycle.bmp') ) );
im2 = im2double( rgb2gray( imread('bicycle.bmp') ) );
[lo,hi,hybrid] = hybrid_image (im1, im2, G1, G2);
imwrite(hybrid,'bicycle_motorcycle.jpg');

%marilyn_albert
im1 = im2double( rgb2gray( imread('albert.bmp') ) );
im2 = im2double( rgb2gray( imread('marilyn.bmp') ) );
[lo,hi,hybrid] = hybrid_image (im1, im2, G1, G2);
imwrite(hybrid,'marilyn_albert.jpg');


%fish_submarine
im1 = im2double( rgb2gray( imread('fish.bmp') ) );
im2 = im2double( rgb2gray( imread('submarine.bmp') ) );
[lo,hi,hybrid] = hybrid_image (im1, im2, G1, G2);
imwrite(hybrid,'fish_submarine.jpg');

%my_pic
im1 = im2double( rgb2gray( imread('my_pic_two.jpg') ) );
im2 = im2double( rgb2gray( imread('my_pic_one.jpg') ) );
[lo,hi,hybrid] = hybrid_image (im1, im2, G1, G2);
imwrite(hybrid,'my_pic.jpg');


