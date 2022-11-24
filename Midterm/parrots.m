% Carsocho, Jhon Heron P.
% BSCPE 4-2

clc;
clf;
clear all;
close all;

% Importing, Displaying, and Converting Images
% considering the directory of the image is the same as the octave file
parrots = imread('parrots.jpg');
figure(1), imshow(parrots); % display the parrots.jpg
whos parrots; % display info of parrots.jpg

gray = rgb2gray(parrots); % RGB(True Color) to Gray Scale

% show the image in full intensity gray scale
figure(2), imshow(gray, [0,255]);

figure(3), imshow(gray); % display the converted image
