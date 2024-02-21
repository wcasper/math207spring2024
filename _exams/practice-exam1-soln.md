---
layout: page
title: Practice Exam 1 Solutions
permalink: /exams/practice-exam1-soln
---

### Directions
Solve the following problems and type up your solutions.  
In the actual exam, you will be allowed scratch paper and a pencil, but no calculator or note sheet.


**Problem 1:** 

Classify each of the following differential equations by their type.
You do NOT need to solve it (except it would be good practice!)

* (a) $$y' = \frac{x+y}{x-y}$$
* (b) $$y' + e^{2x}y = 3x^2$$
* (c) $$\frac{1}{xy}y' = y^2\cos(x)$$
* (d) $$3x + ye^{xy} + (2y + xe^{xy})y' = 0$$
* (e) $$y' + 3x^2y = y^5$$

**Solution:**

* (a) homogeneous
* (b) linear
* (c) separable
* (d) exact
* (e) Bernoulli

**Problem 2:** 

Solve the differential equation

$$3y^2 + 5x^2y + (3xy + 2x^3)y' = 0.$$

[Hint: find an integrating factor of the form $$x^ay^b$$.

**Solution:**

We multiply by $$x^ay^b$$ to get

$$3x^ay^{b+2} + 5x^{a+2}y^{b+1} + (3x^{a+1}y^{b+1} + 2x^{a+3}y^b)y' = 0.$$

This should be exact, meaning

$$M_y = 3(b+2)x^ay^{b+1} + 5(b+1)x^{a+2}y^b$$

and

$$N_x = 3(a+1)x^ay^{b+1} + 2(a+3)x^{a+2}y^b$$

should both be equal.  Comparing similar polynomials, it follows that

$$3(b+2) = 3(a+1),\ \ \text{and}\ \ 5(b+1) = 2(a+3).$$

This first equation says $$b = a-1$$.  Putting this into the second equation, we get $$5a =2(a+3)$$.  This gives $$a=2$$ and therefore $$b = 1$$.
Thus the equation

$$3x^2y^{3} + 5x^{4}y^{2} + (3x^{3}y^{2} + 2x^{5}y)y' = 0$$

must be exact.  We calculate

$$\psi = \int M \partial x = \int (3x^2y^{3} + 5x^{4}y^{2})\partial x = x^3y^3 + x^5y^2 + g(y).$$

Therefore

$$3x^3y^2 + 2x^5y + g'(y) = \psi_y = N = 3x^{3}y^{2} + 2x^{5}y.$$

It follows $$g'(y) = 0$$ so we can take $$g(y) = 0$$.
Consequently $$\psi(x,y) = x^3y^3 + x^5y^2$$ and our family of solutions is

$$x^3y^3 + x^5y^2  = C.$$

**Problem 3:**

Find a general solution of each of the following differential equations.
If the equation has an initial value, instead solve the initial value problem.

* (a) $$y^2 + \cos(x) + (2xy + \sin(y))y' = 0$$
* (b) $$3x^2\ln(x) + x^2-y -xy' = 0,\ \ y(1) = 5$$
* (c) $$xy' = x\tan(y/x) + y$$
* (d) $$xy-1 + x^2y' = 0$$

**Solution:**

* (a) This is exact, and we solve it in the usual way to get

$$xy^2 + \sin(x) - \cos(y) = C$$

* (b) This is already exact also.  Alternatively, we can rewrie this as a linear equation

$$y' + \frac{1}{x}y = 3x\ln(x)+x$$

An integrating factor for this is given by $$\mu(x) = e^{\int \frac{1}{x}dx} = e^{\ln x} = x$$
This gives us the equation

$$xy' + y = 3x^2\ln(x)+x^2$$

which we can rewrite as

$$(xy)' = 3x^2\ln(x)+x^2$$

Integrating both sides, we obtain

$$xy = x^3\ln(x) + C.$$

The initial condition then implies

$$1\cdot 5 = 1^3\ln(1) + C.$$

from which we get $$ C = 5$$.

Solving for $$y$$, this gives 

$$y = x^2\ln(x) + \frac{5}{x}.$$

* (c) If we divide by $$x$$, we see this is the homogeneous equation

$$y' = \tan(y/x) + y/x.$$

We do the substitution $$z=y/x$$,  which gives $$y' = z + xz'$$, making our equation

$$z + xz' = \tan(z) + z.$$

This simplifies to the separable equation

$$xz' = \tan(z)$$

Separating and integrating, we get

$$\ln\sin(z) = \ln(x) + C_1$$

Exponentiating gives

$$\sin(z) = Cx$$

and substituting back in for $$z$$ we have 

$$\sin(y/x) = Cx.$$

* (d) This is a first-order linear equation

$$y' + \frac{1}{x}y = \frac{1}{x^2}.$$

The inegrating factor is $$\mu = x$$, which gives

$$xy' + y = \frac{1}{x}.$$

This folds up to

$$(xy)' = \frac{1}{x}.$$

Now integrating both sides, we get

$$xy = \ln(x) + C.$$

Therefore

$$y = \frac{1}{x}\ln(x) + \frac{C}{x}.$$

**Problem 4:**

Find solve the following first order linear differential equation using both the method of integrating factors as well as the method of variation of parameters:

$$y' + 2y = \cos(3x).$$

**Solution:**

The integrating factor is $$\mu = e^{2x}$$ from which the solution becomes

$$y = e^{-2x}\int e^{2x}\cos(3x)dx = \frac{3}{13}\sin(3x) + \frac{2}{13}\cos(3x) + Ce^{-2x}.$$

Alternatively, with variation of parameters we solve

$$y_h' + 2y_h =0.$$

This is separable and the solution is $$y_h = e^{-2x}$$.
Then we propose a solution of the form $$y = v(x)y_h$$.
Inserting this into the equation, we get

$$(vy_h)' + 2vy_h = \cos(3x)$$

This expands to

$$v'y_h + vy_h' + 2vy_h = \cos(3x)$$

Then since $$y_h' = -2y_h$$, this simplifies to

$$v'y_h  = \cos(3x)$$

Thus

$$v' = e^{2x}\cos(3x)$$

Integrating this, we find

$$v = \frac{3}{13}e^{2x}\sin(3x) + \frac{2}{13}e^{2x}\cos(3x) + C.$$

Therefore

$$y = vy_h = \frac{3}{13}\sin(3x) + \frac{2}{13}\cos(3x) + Ce^{-2x}.$$


**Problem 5:**

Consider the differential equation

$$y' = x^2 + y^2.$$

* (a) Sketch a picture of the slope field for $$-1\leq x\leq 1$$ and $$-1\leq y\leq 1$$.
* (b) Inside the slope field, sketch the integral curve passing through $$(0,0)$$.

**Solution:** Omitted.

**Problem 6:**

Consider the initial value problem

$$y' = x^2 + y^2,\ \ y(0) = 0.$$

Use Forward Euler with a time step of $$h = 0.25$$ to approximate the values of $$y(0.25)$$, $$y(0.5)$$, $$y(0.75)$$ and $$y(1.0)$$.

**Solution:**

The update equation is

$$y_n = y_{n-1} + h(x_{n-1}^2 + y_{n-1}^2).$$

To organize this, we make a table

|$$n$$|$$x_n$$|$$y_n$$|
|-----|-------|-------|
|  0  |   0   |   0   |
|  1  |  0.25 |   0   |
|  2  |  0.50 | 0.0156|
|  3  |  0.75 | 0.0782|
|  4  |  1.00 | 0.2203|

**Problem 7:**

Give an example or explain why no example exists.

* (a) A differential equation $$M(x,y) + N(x,y)y' = 0$$ which is closed but not exact
* (b) An initial value problem with more than one solution
* (c) A solution of $$y' = y(y-1)(y+2)$$ which takes both positive and negative values
* (d) An autonomous differential equation with a semistable equilibrium value at $$y=3$$
* (e) A differential equation which is invariant under the transformation $$u=x$$ and $$v = 3y$$

**Solution:**

* (a) $$\frac{-y}{x^2+y^2} + \frac{x}{x^2+y^2}y' = 0$$

* (b) $$y' = y^{1/3},\quad y(0) = 0.$$

* (c) Not possible!  Can't cross through the equilibrium solution $$y=0$$

* (d) $$y' = y(y-3)^2$$

* (e) $$y' = xy$$

