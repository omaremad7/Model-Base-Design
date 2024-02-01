%Plot the system from scope
plot(System);
hold on
%Plot the tangent line
t =0:0.01:10;
y = 0.5*t -0.37;
plot(t,y);
hold on
%Plot a line at the set point to detect time constant
plot(t,1);
%Change the plot scale to get parameters we need
xlim ([0 6])
ylim ([0 1.1])
