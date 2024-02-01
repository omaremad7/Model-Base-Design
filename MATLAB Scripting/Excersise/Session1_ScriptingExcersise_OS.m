close all
clear
clc
%Create model and open it
new_system('AddTwoNumbers','model');
open_system('AddTwoNumbers');

%Add the needed blocks
add_block('built-in/Subsystem', 'AddTwoNumbers/AddNums');
add_block('simulink/Sources/In1','AddTwoNumbers/AddNums/NumberOne');
add_block('simulink/Sources/In1','AddTwoNumbers/AddNums/NumberTwo');
add_block('simulink/Math Operations/Add','AddTwoNumbers/AddNums/add');
add_block('simulink/Sinks/Out1','AddTwoNumbers/AddNums/Summation');