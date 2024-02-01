%Create Subsystem
new_system('Dynamic_System','Model');
open_system('Dynamic_System');

%System configuration
set_param('Dynamic_System','Solver','ode45');
set_param('Dynamic_System','StopTime',num2str(10));

%Add blocks
add_block('built-in/Subsystem','Dynamic_System/DynamicSubsystem');
add_block('built-in/Gain','Dynamic_System/DynamicSubsystem/Gain');
add_block('built-in/Scope','Dynamic_System/DynamicSubsystem/Scope');
add_block('Simulink/Sources/Step','Dynamic_System/DynamicSubsystem/Input_Signal');
add_block('built-in/ToWorkspace','Dynamic_System/DynamicSubsystem/Output');

%Add lines and connections
add_line('Dynamic_System/DynamicSubsystem','Input_Signal/1','Gain/1');
add_line('Dynamic_System/DynamicSubsystem','Gain/1','Scope/1');
add_line('Dynamic_System/DynamicSubsystem','Gain/1','Output/1');
set_param('Dynamic_System/DynamicSubsystem/Output','VariableName','Output');

for Counter = 1: 5
    set_param('Dynamic_System/DynamicSubsystem/Gain','Gain',num2str(Counter));
    sim('Dynamic_System');
    hold on
    plot(Output);
end





