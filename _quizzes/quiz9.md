---
layout: page
title: Lecture 9 Assessment
permalink: /quizzes/lecture9
---


**Question 1:**  Multiple choice.  

The following code for RK4 from class has a bug.  What is it?

```Matlab
t(1) = t0;    % initial condition
w(1) = y0;    % initial condition

f = @(t,y) (a*sin(t)-a*y);
for k=2:nsteps
  t(k) = t(k-1) + h;
  k1 = h*f(t(k-1),w(k-1));
  k2 = h*f(t(k-1) + h/2, w(k-1) + k1/2);
  k3 = h*f(t(k-1) + h/2, w(k-1) + k1/2);
  k4 = h*f(t(k-1) + h, w(k-1) + k3);
  w(k) = w(k-1) + (k1 + 2*k2 + 2*k3 + k4)/6;
end

```

* (A) this is the code for backward Euler
* (B) the expression for k2 is wrong
* (C) the expression for k3 is wrong
* (D) trick question, there isn't a bug

**Question 2:**  True or false.

The set of all $$3\times 1$$ row vectors is a vector space.


**Question 3:**  True or false.

The set of all real-valued functions defined on an interval $$[a,b]$$ is a vector space.

**Question 4:**  True or false.

If $$V$$ is a vector space, then $$-\mathbf{v} = (-1)\mathbf v$$ for all $$\mathbf{v}\in V$$.




