clc;
clf;
clear all;
close all;
pkg load image

% directory of the image considering the directory is the same as exercise1.m
fruits = imread('fruits.png');

figure(1), imshow(fruits); % view the fruits.png.

% What data type is it?
% The datatype of the image is PNG or Portable Network Graphics.

% Reduce the spatial resolution of the original image to half.
reduceImage = imresize(fruits, 0.5);
imwrite(reduceImage, 'fruits2.png');
figure(2), imshow('fruits2.png');

% Convert from color RGB image to HSV.
rgbtohsv = rgb2hsv(reduceImage);
imwrite(rgbtohsv, 'fruits3.png');
figure(3), imshow('fruits3.png');




