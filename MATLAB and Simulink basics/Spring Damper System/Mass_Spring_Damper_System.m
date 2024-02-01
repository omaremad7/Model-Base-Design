clear all
clc
%define simulink parameters
b = 10; %Damping coefficient
K = 400; %Spring constant
x0 = 1; %The initial displacement
m = 1; %Mass
StopTime = 10; %Time of simulation
F = 0; %External force

%Simulation Model multiple time
%Get current system
model = gcs; %To make the variable 'model' identify the Simulink model
massValues = 1:1:7;

for i= 1:numel(massValues)
    m = massValues(i);
    sim(model); %To assigns the reults of simulation in variable 'result'
    switch i
        case 1
            %m = 1, with red color
            plot(results,'r')
            hold on 
        case 3
            %m = 3, with green color
            plot(results,'g')
        case 5
            %m = 5, with blue color
            plot(results,'b')
        case 7
            %m = 7, with black color
            plot(results,'k')
            
    end
end
