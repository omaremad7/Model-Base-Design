new_system('P_controller_library','library');
open_system('P_controller_library');

%Make the subsystem
add_block('built-in/Subsystem','P_controller_library/P_controller');

%Make the inputs and outputs of the subsystem
add_block('simulink/Sources/In1', 'P_controller_library/P_controller/Input');
add_block('simulink/Sinks/Out1', 'P_controller_library/P_controller/Output');

%Make the gain block inside the subsystem
add_block('built-in/Gain', 'P_controller_library/P_controller/Kp');

%Add lines between blocks
add_line('P_controller_library/P_controller','Input/1','Kp/1');
add_line('P_controller_library/P_controller','Kp/1','Output/1');

%Make a mask to the subsystem
set_param('P_controller_library/P_controller','Mask','ON');
%Bakteb fel 7eta ele lama bados double click 3ala el subsystem
set_param('P_controller_library/P_controller','MaskDescription','Proportional Controller');

%Bakteb 3ala el subsystem mn bara
set_param('P_controller_library/P_controller','MaskDisplay','disp(''P-Controller'')');

%Save library
save_system('P_controller_library');
