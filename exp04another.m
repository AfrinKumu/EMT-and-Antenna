% Constants 
c = 3e8; % Speed of light in m/s 
a = 0.9 * 0.0254; % Waveguide width in meters (0.9 inch to meters) 
b = 0.4 * 0.0254; % Waveguide height in meters (0.4 inch to meters) 
f = 9e9; % Operating frequency in Hz (9 GHz to Hz) 
% Calculating phase velocity 
fc = (c / (2 * sqrt(a^2 + b^2))); % Cutoff frequency for WR90 waveguide mode 
v_phase = c / sqrt(1 - (fc / f)^2);
% Calculating group velocity 
w = 2 * pi * f; % Angular frequency 
dk_dw = pi * sqrt((a^2 + b^2) * (f^2 - fc^2)) / (a * b * c); % Derivative of wave vector with respect to angular frequency 
v_group = (c^2 * dk_dw) / (c * dk_dw + w); 
% Displaying the results 
fprintf('Phase velocity: %.2f m/s\n', v_phase); 
fprintf('Group velocity: %.2f m/s\n', v_group);