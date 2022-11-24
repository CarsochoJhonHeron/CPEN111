% Carsocho, Jhon Heron P.
% BSCPE 4-2

clc;
clf;
clear all;
close all;

% considering the directory of the image is the same as the octave file
nature = imread('nature.jpg');
figure(1), imshow(nature); %show the original image

r2G = rgb2gray(nature); %convert the image to gray scale
figure(2), imshow(r2G); %view the gray scale image

% Intensifies Red
nature_red = nature;
nature_red(:,:,2) = 0;
nature_red(:,:,3) = 0;

% Intensifies green
nature_green = nature;
nature_green(:,:,1) = 0;
nature_green(:,:,3) = 0;

% Intensifies blue
nature_blue = nature;
nature_blue(:,:,1) = 0;
nature_blue(:,:,2) = 0;

% Display the 3 images in one window using subplot
figure(3),
subplot(2,2,1),imshow(nature_red),title('Intensifies Red');
subplot(2,2,2),imshow(nature_green),title('Intensifies Green');
subplot(2,2,3),imshow(nature_blue),title('Intensifies Blue');

%save/convert the images to PNG file
imwrite(nature, 'orig2png_nature.png');
imwrite(r2G, 'orig2gray_nature.png');
imwrite(nature_red, 'Red_Nature.png');
imwrite(nature_green, 'Green_Nature.png');
imwrite(nature_blue, 'Blue_Nature.png');
