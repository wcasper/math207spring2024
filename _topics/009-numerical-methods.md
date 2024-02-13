---
layout: page
title: Numerical methods
---

Most differential equtions that we meet in the wild don't have nice, explicit analyic solutions.
Instead, we use computers to obtain approximate **numerical solutions**.
The history of numerical solutions of PDEs goes all the way back to Euler in
1768, so needless to say there has been plenty of time to develop all sorts of
interesting techniques.
We will discuss three such popular techniques here.


## Forward Euler

The simplest numerical method of solving an IVP

$$y' = f(t,y),\ \ \ y(t_0) = y_0$$

relies on the idea that derivatives are limits of difference quotients, so that for $$h > 0$$ small enough

$$y'(t) \approx \frac{y(t + h) - y(t)}{h}.$$

This may be rewritten as

$$y(t+h)\approx y(t) + hf(t,y(t+h)).$$

This gives us a recurrence relation for a sequence $$y_n$$:

$$y_{n+1} = y_n + hf(t_n,y_n),\quad n\geq 0.$$

The choice of $$h$$ is called the **step size**.
When the step size is sufficiently small, the values of $$y_n$$ should approximate the values of an exact solution $$y(t)$$ of the IVP at the times $$t_n$$.
In other words $$y_n\approx y(t_n)$$.
This method is called the **forward Euler method**.

### Basic example

Consider the initial value problem

$$y' = ky,\quad y(0) = 1.$$

We know the exact value of the solution to this equation is $$y(t) = e^{kt}$$, so it is actually a good one to use to verify the accuracy of our method.
Our update equation says

$$y_{n+1} = y_n + khy_n.$$

This gives

$$y_1 = 1+kh,\ \ y_2 = (1+kh)^2,\ \ y_3 = (1+kh)^3,\ \ y_n = (1+kh)^n.$$

In particular, if we want to approximate the value of $$y$$ at $$t_1$$, we can take $$h=t_1/n$$.

Then we get

$$y(t_1) \approx y_n = \left(1 + k\frac{t_1}{n}\right)^n.$$

This is just the usual limit approximation of $$e^{kt_1}$$!
In particular, if we take the limit as $$n\rightarrow\infty$$, we get

$$y(t_1) = e^{kt_1} = \lim_{n\rightarrow\infty}\left(1 + k\frac{t_1}{n}\right)^n.$$


## Backward Euler

Sometimes ODEs exhibit **stiffness**, where in order for a numerical method like Euler's method to be accurate, the step size $$h$$ must be taken to be extremely small.
These typically appear when the exact solution has components which decay rapidly with time $$t$$.
In order to get an accurate solution, the time step $$h$$ has to be taken to be extremely small relative to the actual time scales of interest.
This is undesireable, since it tends to dramatically increase the required computation time.

To fix this, we modify Euler's method in a subtle but important way.
To solve the IVP

$$y' = f(t,y),\ \ \ y(t_0) = y_0$$

we use the fact that

$$y'(t+h) \approx \frac{y(t + h) - y(t)}{h},$$

leading to the recursion relation

$$y_{n+1} = y_n + hf(t_{n+1},y_{n+1}),\quad n\geq 0.$$

Note that this means to figure out $$y_{n+1}$$, we will need to solve the above equation.
Often this cannot be done algebraically, but we can still do it numerically using Newton's method from calculus.
This method is called **backwards Euler**.

The innovation here is like your a dog chasing a squirrel at the park.
The dog can be faster, but squirrels are notoriously squirrely and make abrupt turns on small time scales.
If the dog always runs at  where the squirrel is when it runs forward it will miss.  If it runs to where it predicts the squirrel will be next, it will do much better!
This is what we're doing with the above modification.
Forwards Euler takes into account what the derivative is currently.
Backwards Euler looks at what the derivative will be in the future.

Note, however, sometimes its still better to use forward Euler since
1. it is simpler to code and understand, and
2. it may be faster if solving for $$y_{n+1}$$ using Newton's method is prohibitively slow.



## Runge-Kutta





