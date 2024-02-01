%Create System
new_system('ControlSystemProject','model');
open_system('ControlSystemProject');

%Add blocks
add_block('Simulink/Sources/Step','ControlSystemProject/Input_signal');
add_block('built-in/Transfer Fcn','ControlSystemProject/System');
add_block('Simulink/Continuous/PID Controller','ControlSystemProject/PID');
add_block('built-in/Scope','ControlSystemProject/Scope');

%Add lines to connect blocks
add_line('ControlSystemProject','Input_signal/1','System/1');
add_line('ControlSystemProject','System/1','PID/1');
add_line('ControlSystemProject','PID/1','Scope/1');

%Set the parameters
set_param('ControlSystemProject/System','Numerator','[1]');
set_param('ControlSystemProject/System','Denominator','[1 1 1]');

set_param('ControlSystemProject/PID','P','2');
set_param('ControlSystemProject/PID','I','2');
set_param('ControlSystemProject/PID','D','1');

%Run model
sim('ControlSystemProject');
