function demo()
%%This is a code for our paper
%
%%
clear all; 
clc; 
close all;

%Read a color image into the workspace and convert the data to double. Display the pristine color image.
[filename,filepath]=uigetfile('*.*',' ‰»Î“ª ∏ˆÕºœÒ'); 
img_nm=strcat(filepath,filename);
imgSrc =imread(img_nm);
%imgSrc =imresize(imgSrc,[400 600]);
imgFinal=imDustRemoval_hdsp(imgSrc);
subplot(121);imshow(imgSrc);title('Input image');
subplot(122);imshow(imgFinal);title('output image');

end