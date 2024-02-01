close all
clc
clear
new_system('AddTwoNumbers_model', 'model'); %Ba3mel model gded no3o Model msh Library
open_system('AddTwoNumbers_model');% Baft7 el model elle 3amlto

% add_block('built-in/Subsystem' , 'AddTwoNumbers_model/subsystem'); %Badeef subsystem
% 
% open_system('AddTwoNumbers_model/subsystem'); %Bafta7 el subsystem ele 3awzo 3ala tool mn el model mn 8eer ma aft7 el model nafso
% add_block('simulink/Sources/In1' , 'AddTwoNumbers_model/subsystem/InputNum1'); %Ba7oy input fel Subsystem w sameto InputNum1
% set_param('AddTwoNumbers_model','solver','ode45');
add_block('built-in/Gain','AddTwoNumbers_model/Gain11');
add_block('simulink/Sources/In1','AddTwoNumbers_model/input1')
