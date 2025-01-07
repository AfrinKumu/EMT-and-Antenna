%Impedance Matching..
clc; 
format long; 
Z0=100; 
sm1=smithchart; 
hold all; 
ZL=20+j*100; 
f0=5e8; % Hz
gamma_L=(ZL-Z0)/(ZL+Z0); 
% show ZL on Smith chart adding text showing values
if imag(ZL)<0 
sign1='-'; 
else
 sign1='+'; 
end
hold all;
plot(real(gamma_L),imag(gamma_L),'ro','LineWidth',1.5); 
str1=['ZL =' num2str(real(ZL)) sign1 'j' num2str(abs(imag(ZL))) ' \rightarrow'];
text(real(gamma_L),imag(gamma_L)+.01,str1,'Color','blue','FontSize',20,'HorizontalAlignment','right','VerticalAlignment','middle'); 
 
RL=real(ZL);XL=imag(ZL); 
if abs(real(ZL/Z0))>=1 % ZL inside 1+jx
 disp(' ZL inside 1+jx');
 B1=1/(RL^2+XL^2)*(XL+(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5); 
 B2=1/(RL^2+XL^2)*(XL-(RL/Z0)^.5*(RL^2+XL^2-Z0*RL)^.5); 
 X1=1/B1+XL*Z0/RL-Z0/(B1*RL) ; X2=1/B2+XL*Z0/RL-Z0/(B2*RL); 
elseif abs(real(ZL/Z0))<=1 % ZL outside 1+jx
 disp(' ZL outside 1+jx');
 X1=(RL*(Z0-RL))^.5-XL; X2=-(RL*(Z0-RL))^.5-XL; 
 B1=1/Z0*((Z0-RL)/RL)^.5; B2=-1/Z0*((Z0-RL)/RL)^.5; 
end
% the 1st match solution 
[C1 , ~]=B2LC(B1,f0); 
[L1, ~]=X2LC(X1,f0); 
% and the 2nd solution
[L2, ctype]=B2LC(B2,f0); 
[C2, ltype]=X2LC(X2,f0);
