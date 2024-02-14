---
layout: page
title: Homework 2
permalink: /homework/hw2
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

Find an integrating factor of the form $$\mu(x,y) = x^ay^b$$ for the differential equation

$$3y + 5x^2 + (y/x^2 + 4x + 3x^3/y)y' = 0.$$

Then find a solution of the equation satisfying the initial condition $$y(1)=2$$.

# Problem 2

Find the general solution of each of the following ODEs, unless it has an initial value, in which case solve the IVP.

* (a) $$y' - 2xy = x,\ \ y(0) = 1.$$
* (b) $$y' + \cot(x)y = \sin(x).$$
* (c) $$y' + 3y = xy^5$$ (Hint: this is a Bernoulli equation, so use the sub $$z = y^{-4}$$)

# Problem 3

Consider the initial value problem

$$y' = 1 + xy^2,\quad y(-2) = -0.8$$

Write a MATLAB code that uses Forward Euler to approximate the solution $$y(x)$$ for $$-2\leq x\leq 2$$ using various different step sizes.  Plot them all on the same graph.  What step size looks small enough for the solution to be accurate?  How do we tell?

# Problem 4

Repeat problem 3, but now with Backward Euler.  How does the required step size compare to the previous one?

# Problem 5

Repeat problem 3 again, but now with 4th order Runge Kutta (RK4).  What step size is required this time?




