---
layout: page
title: Homework 1
permalink: /homework/hw1
---

### Directions
Solve the following problems and write up your solutions.  Your solutions should be provided in one of the following formats (in order of preference)
* typed up in $$\LaTeX$$ and submitted as a PDF on Canvas
* written legibly on blank paper, scanned into a PDF and then uploaded on Canvas
* written on ancient parchement with a quill and then flown to the instructor via owl post like in Harry Potter

If you go with the first strategy, you may wish to check out Overleaf which is a free and intuitive website for generating $$\LaTeX$$ documents online.
If you wish to use the second method and don't own a scanner at home, you can check out the numerous scanning apps available for smartphones.

You will be graded based on *completion* of all of the assigned problems, along with in-depth grading of *select* problems which will not be revealed until after the homework is graded.

**Remember:** Success in any math class is based on *practice*.  The assigned homework problems are the **bare minimum**.  You should strive to do as many more problems from the textbook.

# Problem 1

Classify each of the following differential equations as *linear*, *separable*, or *homogeneous*.
Note that some equations may have more than one classification, so make sure to list all that apply.
If *none* of the classes apply, write *something else*.

Remember: some equations may need a bit of algebra to reveal what type they are!

* (a) $$xy' = x+y$$
* (b) $$y' = x^3y$$
* (c) $$y' = (y/x)^2$$
* (d) $$y' = (x/y)^2$$
* (e) $$y' = x^2 + y^2$$
* (f) $$y' = (y-x)/(y+x)$$

# Problem 2

Find the general solution of each of the following ODEs, unless it has an initial value, in which case solve the IVP.

* (a) $$y' = y/x + x/y,\ y(1) = 1$$
* (b) $$y' = \sin(x)\cos(y)$$
* (c) $$y' = xy + x + y + 1,\ y(1)=2.$$
* (d) $$y' = \ln(y) - \ln(x)$$

# Problem 3

For each of the following equations, check if the equation is exact.
If it is, solve it!
Otherwise, find an integrating factor and *then* solve it!

* (a) $$1 + 2y + 2(x+y)y' = 0$$
* (b) $$(1 + xy)e^{xy-x} + 1 + (x^2e^{xy-x} + e^{y-x})y' = 0$$
* (c) $$\sin(xy) + xy\cos(xy) + 2x + (x^2\cos(xy) + 2y)y' = 0$$
* (d) $$xy-1 + x^2y' = 0$$

# Problem 4

The following problem will help us practice our MATLAB skills and will illustrate that the ideas we explored for autonomous equations can work in a broader context.

Consider the differential equation 

$$y' = sin(x+y)$$

* (a) Create a MATLAB script which plots the the slope field of the differential equation for $$-2\pi\leq x\leq 2\pi$$ and $$-2\pi\leq y\leq 2\pi$$.  Make sure to label the axes appropriately.  [Hint: you might consider borrowing some code from the online notes!]
* (b) Looking at the graph of the function, we see that it looks like the equation has some straight lines as solutions.  What about the slope field suggests this?
* (c) Find all the equations of straight lines which are solutions of the differential equation.
* (d) Suppose that $$y(x)$$ is the particular solution satisfying the initial condition $$y(0) = 2$$.  Give, with justification, a good estimate for the value of $$y(100)$$.  [Hint: don't solve the equation.  Use the slope field!  The equation of $$y(x)$$ will quickly approach a certain line.





