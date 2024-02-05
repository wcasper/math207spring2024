---
layout: page
title: Worksheet 1
permalink: /worksheets/ws1
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

## The Redbull Stratos Skydive

The **Red Bull Stratos skydive** was a project which aimed to break many records simultaneously, including speed records and highest-altitude jump records.
In $$2012$$, skydiver Felix Bumgartner jumped from a height of $$38969$$ meters (ie. $$24$$ miles) above the planets surface.
His descent from the stratosphere to his landing point in New Mexico took approximately $$10$$ minutes.
In his descent, Baumgartner broke the speed of sound, becoming the first human to do so without a vehicle.

{% include youtube.html id="raiFrxbHxV0;" %}

Data of his altitude and speed over time was obtained directly from the above footage and is available in the following data file
* [unofficial Stratos jump data](ws1/stratos.dat)


In this worksheet, we want to analyze Felix's descent by **modeling** it using first-order ODEs and **MATLAB**.
By understanding differences between the actual data and the results of our models, we can start to see what physical phenomena are important for understanding falling from extreme heights.
This could help the development of new ideas, like designs for emergency equipment for spacecraft.

### Step 1: load and plot the data

Download the data using the link above.
The downloaded file should be called *stratos.dat*.
Make sure to open it up and look inside!

```
0 38969 0
2 38948 67
5 38827 187
8 38635 287
10 38439 364
12 38233 430
15 37842 530
17 37471 612
...
```

The data is organized in three columns corresponding to time (s), altitude (m), and speed (km/h), in that order.
So for example, looking at the third row we see that after $$5$$ seconds, Felix was at an altitude of $$38827$$ meters and was moving at $$187$$ kilometers per hour ($$116$$ miles per hour).

We want to take this data from the file and read it into MATLAB.  When we did this for images, we used the command *imread()*.   Of course this is not an image, so we'll be using the command *load()* instead.

**Important:** make sure that the data file is in the current working directory for MATLAB, otherwise MATLAB will fail to load it!

```Matlab
load("stratos.dat")
```

Now we have read in the data file into MATLAB, specifically into a matrix called *stratos*.
The columns of *stratos* are exacly the columns of the data file.
We separate these columns into variables **time**, **alt**, and **spd**.

```Matlab
time = stratos(:,1);
alt  = stratos(:,2);
spd  = stratos(:,3);
```

The speed is currently in units of km/h, so we convert this to the SI units of m/s.

```Matlab
spd = spd*1000/3600;
```

To visualize the data, we can plot it using the *plot* command.
For example we can plot the altitude versus time using blue circles for our data points with the following code.

```Matlab
plot(time,alt,'bo')
```

We should also label our axes.

```Matlab
xlabel('time (s)')
ylabel('altitude (m)')
```

Take some time to review the different options for linestyles and colors in MATLAB using the [Help Center documentation](https://www.mathworks.com/help/matlab/creating_plots/specify-line-and-marker-appearance-in-plots.html).

## Basic Model for falling

The simplest model describing the velocity $$v$$ of a falling object is

$$\frac{dv}{dt} = -g$$

where $$g$$ is the acceleration due to gravity, which we typically take to be $$g = 9.81$$ m/s^2.
The speed $$s$$ is the absolute value of the velocity, and is initially zero, so it satisfies the initial value problem

$$\frac{ds}{dt} = g,\ \ s(0) = 0.$$

The solution of this initial value problem is $$s(t) = gt$$.
This gives us a **model** that we can use to try to predict what the speed will be as a function of time.
We can put this model into MATLAB directly using this code.

```Matlab
g = 9.81;
s = g*time;
```

We plot both the real speed and the model on the same graph using the following MATLAB code.

```Matlab
plot(time,spd,'bo')
hold on
plot(time,s,'r--')
```

We should also label our axes and insert a legend.

```Matlab
xlabel('time (s)')
ylabel('speed (m/s)')
legend('observed speed','model')
```

Let's also use *xlim* to limit our graph to what happens during the first $$200$$ seconds.

```Matlab
xlim([0, 200])
```

You  should obtain the following figure.  If you did not, go back and check what you might have missed.

<p align="center"><img width=500 src="ws1/model1.png"/></p>


**Questions:**

* (a)  Where is this model fairly accurate?  Where is it not?
* (b)  What explanations do you have for differences between the model and reality?
* (c)  What changes would you make to the model to make it more accurate?

## What about gravity?

A more advanced model takes additional phenomena into account, and subsequently may more accurately predict the reality of the situation.
However, reality is often so complicated that it might be hard to decide *what* phenomena we need to make sure to include and *how* to take them into account.

For example, one bit of phenomena that we ignored is that the gavitational acceleration experienced in the stratosphere is very different from the acceleration we experience standing on earth.
As we move away from our planet, its pull on us becomes weaker, according to Newton's universal law of gravity.
Specifically, there is a **universal gravitational constant** $$G = 6.6743\cdot 10^{-11}$$ ($$m^3/kg\cdot s^2$$) with the property that the force of attraction between two masses $$m_1$$ and $$m_2$$ is 
$$F = G\frac{m_1m_2}{r^2},$$
where $$r$$ is the distance between them.
With this in mind, the gravitational acceleration experienced by Felix depends on his altitude $$y$$ by

$$g = G\frac{M}{(y + R)^2},$$

where here $$M = 5.9722\cdot 10^{24}$$ (kg) and $$R = 6378.1\cdot 10^{3}$$ (m) are the mass and radius of the Earth, respectively.

We can use MATLAB to calculate the differences in the gravitational acceleration over Felix's descent.
We start by programming the values of $$G$$, $$R$$, and $$M$$.

```Matlab
G = 6.6743e-11;
R = 6378.1e3;
M = 5.9722e24;
```

Next, we need to calculate the non-constant gravitational acceleration *gvar* with respect to the altitude.

```Matlab
gvar = G*M./(alt+R).^2;
```

:warning: The use of ./ and .^ instead of / and ^ is important here, since it specifies that the operations should be performed entrywise on the matrix *alt*.

Now we can clear the figure and plot the gravitational acceleration that Felix experienced over time.

```Matlab
clf
plot(time,gvar,'ko-')
xlabel('time (s)')
ylabel('gravitational acceleration (m/s^2)')
```

<p align="center"><img width=500 src="ws1/gravity.png"/></p>

**Questions:**

* (a)  Based on the plot, are the changes in gravity a big contributing factor to the differences we see in the previous model?
* (b)  At what altitudes do you think these differences in gravity start to play an important role?

## What about air drag?

If you've ever been skydiving or bungie jumping, you know that one of the important forces you experience in these situations is **air drag**, which is a friction force opposite the direction of motion.  The higher the speed, the higher the drag force experienced.

For objects moving very quickly through a medium which is not too dense, the air drag is approximately proportional to the square of the speed.
The resulting differential equation says

$$\frac{ds}{dt} = g - k s^2,$$

the coefficient $$k$$ here is given by $$k = \frac{1}{2}\rho C_d A$$, where $$\rho$$ is the density of the medium, $$A$$ is the cross-sectional area, and $$C_d$$ is the **cofficient of drag**, which has to do with properties of the medium, the geometry of the falling object and the material properties of the medium it is falling through.

The solution of this equation with the initila condition $$s(0) = 0$$ is 

$$s(t) = \sqrt{\frac{g}{k}}\tanh(\sqrt{gk}t).$$

The value of $$k$$ actually changes over time, due changes in the atmospheric density.
A good value of $$k$$ can be determined by fitting the proposed model to the data.
The value of $$k=2.725\cdot 10^{-5}$$ does reasonable job of representing the curve at early times.
Using this, let's plot our old and new model on the same graph with the real data.

First, we encode our new model.

```Matlab
k = 2.725e-5;
s_new = sqrt(g/k)*tanh(sqrt(g*k).*time);
```

Now we clear the figure and plot all of our graphs together.

```Matlab
clf
plot(time,spd,'bo')
hold on
plot(time,s,'r--')
plot(time,s_new,'k.-')
xlabel('time (s)')
ylabel('speed (m/s)')
xlim([0 200])
ylim([0 1000])
legend('observed speed','model','model with drag')
```

<p align="center"><img width=500 src="ws1/model2.png"/></p>

Our new model does a better job of explaning the shape of the curve.
However, it starts to dramatically diverge with the actual curve after $$50$$ seconds.
This is actually due to the fact that at $$42$$ seconds Felix starts to experience an uncontrolled spin, which he eventually corrects by flattening his body, boosting his cross-sectional area and increasing the drag coefficient.


## Additional resources

* [Wikipedia article on the Stratos skydive](https://en.wikipedia.org/wiki/Red_Bull_Stratos)
* [Full length documentary about the Stratos project](https://www.redbull.com/us-en/films/mission-to-the-edge-of-space)


