clc; clear all; close all;

bit = [1 0 1 0 1 1 1];

fs = 1000;
tb = 1;
t = 0 : 1/fs:tb;

fc_a = 5;
aS = [];
at = [];


for i = 1 : length(bit)
    if bit(i) == 1
        S = sin(2*pi*fc_a * t);
    else
        S = zeros(1, length(t));
    end
    aS = [aS S];
    at = [at (t + (i-1)*tb)];
end


plot(at, aS, 'g', 'LineWidth', 2);
title('ASK Mod');
xlabel('t');
ylabel('A');
grid on;




    
