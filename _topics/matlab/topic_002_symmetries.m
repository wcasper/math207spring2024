% define some fixed variables for all plots
nx = 30;        % number of grid points in x direction
ny = 30;        % number of grid points in y direction
xmin = -2.0;    % minimum x value
xmax =  2.0;    % maximum x value
ymin = -2.0;    % minimum y value
ymax =  2.0;    % maximum y value

% plot the slope field for y'= xy
subplot(1,2,1)
[X, Y] = meshgrid(linspace(xmin,xmax,nx),linspace(ymin,ymax,ny));
fun1 = @(x, y) (y.*x);
DYDX = fun1(X, Y);
DY = DYDX ./ sqrt(1 + DYDX.^2);
DX = ones(length(DY)) ./ sqrt(1 + DYDX.^2);
h = quiver(X, Y, DX, DY, 0.5);
set(h, "maxheadsize", 0.0);
xlim([xmin,xmax])
ylim([ymin,ymax])
xlabel('x')
ylabel('y')


% replot the same slope field, but zoomed in this time
xrescale = 1
yrescale = 0.1
rectangle('Position',[xmin*xrescale ymin*yrescale (xmax-xmin)*xrescale (ymax-ymin)*yrescale],'Edgecolor','r','Linewidth',3)
subplot(1,2,2)
[X, Y] = meshgrid(linspace(xmin*xrescale,xmax*xrescale,nx),linspace(ymin*yrescale,ymax*yrescale,ny));
DYDX = fun1(X, Y);
DY = DYDX ./ sqrt(1 + DYDX.^2);
DX = ones(length(DY)) ./ sqrt(1 + DYDX.^2);
h = quiver(X, Y, DX, DY, 0.5);
set(h, "maxheadsize", 0.0);
xlim([xmin*xrescale,xmax*xrescale])
ylim([ymin*yrescale,ymax*yrescale])
xlabel('x')
ylabel('y')
rectangle('Position',[xmin*xrescale ymin*yrescale (xmax-xmin)*xrescale (ymax-ymin)*yrescale],'Edgecolor','r','Linewidth',3)
saveas(gcf,'../fig/002-field1.png')

% plot the slope field for y'= sin(y/x)
subplot(1,2,1)
[X, Y] = meshgrid(linspace(xmin,xmax,nx),linspace(ymin,ymax,ny));
fun2 = @(x, y) exp(y./x);
DYDX = fun2(X, Y);
DY = DYDX ./ sqrt(1 + DYDX.^2);
DX = ones(length(DY)) ./ sqrt(1 + DYDX.^2);
h = quiver(X, Y, DX, DY, 0.5);
set(h, "maxheadsize", 0.0);
xlim([xmin,xmax])
ylim([ymin,ymax])
xlabel('x')
ylabel('y')


% replot the same slope field, but zoomed in this time
xrescale = 0.1
yrescale = 0.1
rectangle('Position',[xmin*xrescale ymin*yrescale (xmax-xmin)*xrescale (ymax-ymin)*yrescale],'Edgecolor','r','Linewidth',3)
subplot(1,2,2)
[X, Y] = meshgrid(linspace(xmin*xrescale,xmax*xrescale,nx),linspace(ymin*yrescale,ymax*yrescale,ny));
DYDX = fun2(X, Y);
DY = DYDX ./ sqrt(1 + DYDX.^2);
DX = ones(length(DY)) ./ sqrt(1 + DYDX.^2);
h = quiver(X, Y, DX, DY, 0.5);
set(h, "maxheadsize", 0.0);
xlim([xmin*xrescale,xmax*xrescale])
ylim([ymin*yrescale,ymax*yrescale])
xlabel('x')
ylabel('y')
rectangle('Position',[xmin*xrescale ymin*yrescale (xmax-xmin)*xrescale (ymax-ymin)*yrescale],'Edgecolor','r','Linewidth',3)
saveas(gcf,'../fig/002-field2.png')


  


