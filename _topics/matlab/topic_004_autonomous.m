% define some fixed variables for all plots
nx = 30;        % number of grid points in x direction
ny = 30;        % number of grid points in y direction
xmin =  0.0;    % minimum x value
xmax =  2.0;    % maximum x value
ymin =  0.0;    % minimum y value
ymax =  2.0;    % maximum y value


% create nx-by-ny matrices whose entries are the x and y values
[X, Y] = meshgrid(linspace(xmin,xmax,nx),linspace(ymin,ymax,ny));


% plot the logistic equation phase diagram
k = 2;   % growth rate
C = 1;   % carrying capacity
t     = linspace(xmin,xmax,nx);
inits = [0.1,0.5,1.1,1.5,2.0];  % starting points

fun1 = @(x, y) (k*y.*(1-y/C));
DYDX = fun1(X, Y);
DY = DYDX ./ sqrt(1 + DYDX.^2);
DX = ones(length(DY)) ./ sqrt(1 + DYDX.^2);
h = quiver(X, Y, DX, DY, 0.5);
set(h, "maxheadsize", 0.0);

hold on
for y0 = inits
  y = C + exp(-k*t/C)*(y0-C);
  plot(t,y,'Linewidth',2)
end

xlim([xmin,xmax])
ylim([ymin,ymax])
yticks([0,1])
yticklabels({'0','C'})
xticks([0,1,2])
ylabel('Population (thousand badgers)')
xlabel('Time (years)')

yline(0,'r-.','LineWidth',5)
yline(1,'r-.','LineWidth',5)

saveas(gcf,'../fig/004-logistic.png')


% clear the figure window
clf 

% update coordinates for next figure
xmin = 0;
xmax = 2.5;
ymin = -2.5;
ymax =  1.2;

[X, Y] = meshgrid(linspace(xmin,xmax,nx),linspace(ymin,ymax,ny));

% plot the second phase diagram
fun2 = @(x,y)((y-1).*y.*(y+1).*(y+2).*(y+2))
DYDX = fun2(X, Y);
DY = DYDX ./ sqrt(1 + DYDX.^2);
DX = ones(length(DY)) ./ sqrt(1 + DYDX.^2);
h = quiver(X, Y, DX, DY, 0.5);
set(h, "maxheadsize", 0.0);

equilib = [-2,-1,0,1]

ystarts = [-2.1,-1.5,-1.1,-0.9,-0.5,0.1,0.5,0.9,1.01]

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
  plot(linspace(xmin,xmax,nx),Z,'Linewidth',2)
end

for e = equilib
  yline(e,'r-.','LineWidth',4)
end

xlim([xmin,xmax])
ylim([ymin,ymax])
  
saveas(gcf,'../fig/004-phase.png')


