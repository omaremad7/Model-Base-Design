new_system('Model','model');
open_system('Model');

add_block('P_controller_library/P_controller', 'Model/P_cont');
add_block('simulink/Sources/Step','Model/Step_Signal');
add_block('built-in/Scope', 'Model/Scope');

add_line('Model', 'Step_Signal/1', 'P_cont/1');
add_line('Model', 'P_cont/1', 'Scope/1'); 

sim('Model');

%Momken a8yar fel stop time zy mana 3awz
%Aw aktebha fel command window 3shan el wa2t yt8yr ashal
%sim('Model','StopTime','10');

