%define constant
A = 0.5; %Increasing it lead to set point increasing
T = 1; %Increasing it lead to increasing settling and rise time

num = [0 A];
den = [T 1];
G = tf(num,den); %Get transfer function

subplot(3,1,1); %To make one Fig for three plots and that it's first plot, It's written before the plot command 
step(G); %Get step response
xlim([0 12]); %To limit x scale in the plot figure
ylim([0 1]); %To limit y scale in the plot figure
s1 = stepinfo(G,'RiseTimeLimits',[0.05,0.95]);

t = 0: 0.1: 10;
u_ramp = t;
[y_ramp, t_ramp] = lsim(G,u_ramp, t); %G is the system used, u_ramp is the input signal and t is the time scale
subplot(3,1,2); %The second plot in the figure
plot(t_ramp, y_ramp);
s2 = stepinfo(G,'RiseTimeLimits',[0.05,0.95]);

u_para = 0.5 * t.^2;
[y_para t_para] = lsim(G,u_para, t);
subplot(3,1,3); %The third plot in the figure
plot(t_para, y_para)


