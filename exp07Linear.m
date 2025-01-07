%This program print pattern for linear Array (uniform) Antenna by giing 
clc; 
lamda=input('enter the value of wave length= '); 
N=input('enter the no. of elements= '); 
alfa=input('enter your progressive phase= '); 
d=input('enter the seperation distance between elements= '); 
B=(2*pi/lamda);         
%magnetic field 
%theta= pi/100:pi/100:2*pi; 
theta= 0:0.01:2*pi; 
w=alfa+B*d.*cos(theta); 
AF=sinc(N*(w./2))./sinc(w./2); 
figure; 
axis equal; 
subplot(1,3,2) 
%polarplot(theta,AF,'linewidth',2,'color','red'); 
polarplot(theta,AF); 
%grid on; 
