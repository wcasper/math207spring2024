% define some fixed variables for all plots
nx = 30;        % number of grid points in x direction
ny = 30;        % number of grid points in y direction
xmin =  0.0;    % minimum x value
xmax =  2.0;    % maximum x value
ymin =  0.0;    % minimum y value
ymax =  2.0;    % maximum y value




% plot the logistic equation phase diagram
k = 2;   % growth rate
C = 1;   % carrying capacity
t     = linspace(xmin,xmax,nx);
inits = [0.1,0.5,1.1,1.5,2.0];  % starting points

hold on
for y0 = inits
  y = C + exp(-k*t/C)*(y0-C);
  plot(t,y,'o-','Linewidth',2)
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



% plot some integral curves of the latter slope field

equilib = [-2,-1,0,1]

clf 
hold on

ystarts = [-2.1,-1.5,-1.1,-0.9,-0.5,0.1,0.5,0.9,1.01]

ncurves = length(ystarts)

fun1 = @(x,y)((y-1)*y*(y+1)*(y+2)*(y+2))

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
      foo = foo + (dx/nsteps)*fun1(x,foo);
    end
    Z(k) = foo;
  end
  plot(linspace(xmin,xmax,nx),Z,'Linewidth',2)
end

for e = equilib
  yline(e,'r-.','LineWidth',4)
end

ylim([-2.5,1.2])
  
saveas(gcf,'../fig/004-phase.png')


