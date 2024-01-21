% define some fixed variables for all plots
nx = 30;        % number of grid points in x direction
ny = 30;        % number of grid points in y direction
xmin = -2.0;    % minimum x value
xmax =  2.0;    % maximum x value
ymin = -2.0;    % minimum y value
ymax =  2.0;    % maximum y value

% create nx-by-ny matrices whose entries are the x and y values
[X, Y] = meshgrid(linspace(xmin,xmax,nx),linspace(ymin,ymax,ny));

% plot the slope field for y'= xy
fun1 = @(x, y) (y.*x);
DYDX = fun1(X, Y);
DY = DYDX ./ sqrt(1 + DYDX.^2);
DX = ones(length(DY)) ./ sqrt(1 + DYDX.^2);
h = quiver(X, Y, DX, DY, 4*(xmax-xmin)/nx);
set(h, "maxheadsize", 0.0);
xlim([xmin,xmax])
ylim([ymin,ymax])
xlabel('x')
ylabel('y')
saveas(gcf,'../fig/001-field1.png')

% plot the slope field for y'= x^2/(1-x^2-y^2)
fun2 = @(x, y) 1 + (x.*y.*y)
DYDX = fun2(X, Y);
DY = DYDX ./ sqrt(1 + DYDX.^2);
DX = ones(length(DY)) ./ sqrt(1 + DYDX.^2);
h = quiver(X, Y, DX, DY, 4*(xmax-xmin)/nx);
set(h, "maxheadsize", 0.0);
xlim([xmin,xmax])
ylim([ymin,ymax])
xlabel('x')
ylabel('y')
saveas(gcf,'../fig/001-field2.png')

% plot some integral curves of the latter slope field


ystarts = [-0.9,-0.84,-0.83,-0.82,-0.81,-0.80,-0.79,-0.78,-0.7,-0.6, -0.5, -0.4, -0.3, -0.2, -0.1, 0.0, 0.1, 0.2, 0.3, 1.0, 1.5]

ncurves = length(ystarts)

hold on

for m = 1:ncurves
  Z = zeros([1,nx]);
  Z(1) = ystarts(m);
  x = xmin;
  dx = (xmax-xmin)/nx;
  nsteps = 1000;  % steps per grid point
  for k = 2:nx
    Z(k) = Z(k-1);
    foo = Z(k-1);
    for j = 1:nsteps
      x = x + dx/nsteps;
      foo = foo + (dx/nsteps)*fun2(x,foo);
    end
    Z(k) = foo;
  end
  plot(linspace(xmin,xmax,nx),Z)
end

saveas(gcf,'../fig/001-curves1.png')
  


