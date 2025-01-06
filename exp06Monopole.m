%This program print pattern for Short and any monopole Antenna by giving the length of your Dipole 
clc; 
clear all; 
close all; 
lamda=input('enter the value of wave length= '); 
l=input('enter your monopole length l= '); 
ratio=l/lamda; 
B=(2*pi/lamda); 
theta= -pi/2:pi/100:pi/2; 
if ratio<= 0.1      %check if Short Dipole 
  E=sin(theta); 
  En=abs(E); 
  subplot(2,3,1); 
  polar(theta,En); %This plot polar pattern in plane which dipole appear as line 
else %check if not short dipole 
  f1=cos(B*l/2.*cos(theta)); 
  f2=cos(B*l/2); 
  f3=sin(theta); 
  E=(f1-f2)./f3; 
  En=abs(E); 
  subplot(1,3,2); 
polar(theta,En); %This plot polar pattern in plane which dipole appear as line
end 