time = linspace(0,10,100);
% specifying initial conditions
initial_displacement_x=0.005;
initial_velocity_x=0;
initial_displacement_y=0;
initial_velocity_y=0;


Options= [initial_displacement_x;initial_velocity_x;initial_displacement_y;initial_velocity_y];


[tsol, Xsol] = ode45(@pend,time,Options);
X = Xsol(:,1);
Y = Xsol(:,3);


figure(1)
plot(X,tsol);
%xlabel('X_position');
%ylabel('Time');
figure(2)
plot(Y,tsol);
%xlabel('Y position');
%ylabel('Time');
figure(3)
plot(Y,X);
%xlabel('Y');
%ylabel('X');


function dYdt =pend(~,Y)
g = 9.8;
l=1;  % length of pendulum 1m
w = (2*pi)/86400;
lambda = 25.5941*(pi)/180;  % latitude angle of the location. this is for my college location
x= Y(1);
xdot=Y(2);
y = Y(3);
ydot=Y(4);

dxdotdt = -(g*x)/l  + 2*ydot*w*sin(lambda);
dxdt= xdot;
dydt = ydot;
dydotdt = -(g*y)/l  - 2*xdot*w*sin(lambda);

dYdt = [dxdt;dxdotdt;dydt;dydotdt];
end



