# Focault-Pendulum
This simulation is done by solving 2 double differential dependant equations in matlab and simulink software.

Eqn1 = x'' = -(g/l)*x + 2*w*y'*sin(lambda)


Eqn1 = y'' = -(g/l)*y + 2*w*x'*sin(lambda)

where x' = dx/dt;
      x'' = d2x/dt2; similarly in y 
      g = gravity = 9.8m/s2;
      l = 1m = length of pendulum
      lambda = latitude angle of the location where pendulum is kept
      w = anglular velocity of earth
