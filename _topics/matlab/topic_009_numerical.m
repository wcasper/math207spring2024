% This script explores numerical solutions of
%     y' + a*y = a*sin(t), y(0) = 1
% using
%  * Forward Euler,
%  * Backward Euler, and
%  * 4th order Runge-Kutta

% Define basic parameters

t0 = 0;       % initial time
t1 = 3*pi;    % final   time
y0 = 1;       % initial y value
nsteps = 100; % number of time steps
a = 20;       % parameter

h = (t1-t0)/nsteps;

% Create arrays to hold time and y values
t = zeros([nsteps,1]);
y = zeros([nsteps,1]);  % approx with Forward euler
z = zeros([nsteps,1]);  % approx with Backward euler
w = zeros([nsteps,1]);  % approx with RK4

% run Forward Euler

t(1) = t0;    % initial condition
y(1) = y0;    % initial condition
for k=2:nsteps
  t(k) = t(k-1) + h;
  y(k) = y(k-1) + h*a*(sin(t(k-1))-y(k-1));
end

% run Backward Euler

t(1) = t0;    % initial condition
z(1) = y0;    % initial condition
for k=2:nsteps
  t(k) = t(k-1) + h;
  z(k) = (z(k-1) + h*a*sin(t(k)))/(1+h*a);
end

% run RK4

t(1) = t0;    % initial condition
w(1) = y0;    % initial condition

f = @(t,y) (a*sin(t)-a*y);
for k=2:nsteps
  t(k) = t(k-1) + h;
  k1 = h*f(t(k-1),w(k-1));
  k2 = h*f(t(k-1) + h/2, w(k-1) + k1/2);
  k3 = h*f(t(k-1) + h/2, w(k-1) + k2/2);
  k4 = h*f(t(k-1) + h, w(k-1) + k3);
  w(k) = w(k-1) + (k1 + 2*k2 + 2*k3 + k4)/6;
end

% get exact solution
ytruth = @(t) ((a^2+a+1)*exp(-a*t) + a^2*sin(t) - a*cos(t))/(1+a^2);

% plot all solutions together

plot(t,y,'bo-')
hold on
plot(t,z,'kx-')
plot(t,w,'m.-')
plot(t,ytruth(t),'r-')

legend('Forward Euler','Backward Euler','RK4','Exact')
ylim([-2,2])
