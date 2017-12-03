%linear space to genrate linear )sequence
inital = 10;    %initial value or starting value
final = 20;     %final value 
number = 5;     %how many number of points you want 
t = linspace(inital,final,number)
%%
%{ 
The voltage, v, across a resistance is given as (Ohm’s Law), v = Ri , where
i is the current and R the resistance. The power dissipated in resistor R is
given by the expression
P = Ri^2
Q1.
If R = 10 Ohms and the current is increased from 0 to 10 A with increments
of 2A, write a MATLAB program to generate a table of current, voltage and
power dissipation.
%}
R = 10;      % resistance
I = 0:2:10;  %current
V = I.*R;    % voltage
P = (I.^2)*R;%power calculation
sol = [P; V; I]
%%
