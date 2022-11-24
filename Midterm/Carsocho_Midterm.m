clc;
clf;
clear all;
close all;

% Importing, Displaying, and Converting Images
parrots = imread('parrots.jpg');
figure(1), imshow(parrots);
whos('parrots.jpg')

gray = rgb2gray(parrots);
figure(2), imshow(gray);


