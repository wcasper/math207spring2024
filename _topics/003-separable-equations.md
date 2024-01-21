---
layout: page
title: Separable Equations
---

The simplest differential equations to solve are called **separable equations**.
Separable equations are first order ODEs that can be expressed in the form

$$y' = f(x)g(y)$$

for some functions $$f(x)$$ and $$g(y)$$, and they turn out to be very easy to solve analytically, as long as the integrals of $$f(x)$$ and $$g(y)$$ don't turn out to be too hard.

# Solving separable equations

The strategy for solving a separable equation is always the same.

Starting with the equation we follow these steps:

1. Separate the components into all $$x$$ terms on one side and all $$y$$ terms on the other

$$\frac{1}{g(y)}dy = f(x)dx.$$

2. Now we integrate both sides, but the left hand side is integrated with respect to $$x$$ and the right is integrated with respect to $$y$$.

$$\int \frac{1}{g(y)}dy = \int f(x)dx.$$

:warning: Don't forget about your arbitrary constant of integration ($+C$)!
3. Finally, solve for $$y$$ in terms of $$x$$ if possible.  Otherwise, solve for $$x$$ in terms of $$y$$.  Or else just leave it in the cleanest form you can.

## Detecting separability

While the strategy for solving a separable equation is straight-forward, that's not always the tricky part.
Oftentimes equations might be separable, but we might not notice it!
For example, the equations

$$y' = 2xy + 3y-4x-6$$

$$y' = \frac{x^2y-xy^2}{x-y}$$

$$y' = \sin(x+y)+\sin(x-y)$$

are all separable, as one can see fter doing a bit of algebra.

## The role of symmetry

As we mentioned at the start of this course, the kinds of differential equations that we know how to solve are those for which we can observe lots of symmetries.
So a natural question to ask is:

**Question:** What kinds of symmetries does a separable equation have?

This answer is also important because of the previous issue.
If separability is sometimes hard to detect, characterizing it in other ways like symmeries might help us spot it!

The answer to our question turns out to be that separable equations are those which have lots of symmetries of the form

$$\begin{align}
u = x,\\
v = h(y)
\end{align}$$

for certain functions $$h(y)$$.
In other words, they are invariant under certain transformations that don't change the $$x$$ variable but rearrrange the $$y$$ variable.
Geometrically, we can think of this as rescaling in the $$y$$-direction in a non-uniform way where we squash some parts and expand others.

**Example:**

For example, consider the separable differential equation 

$$y' = xy^2.$$

Let $$C$$ be a nonzero constant and consider the transformation

$$\begin{align}
u = x,\\
v = y/(1+Cy)
\end{align}$$

The chain rule tells us

$$\frac{dv}{du} = \frac{1}{(1+Cy)^2}y' = \frac{1}{(1+Cy)^2}x y^2 = uv^2.$$

Thus the transformation is a symmtry of the equation for every value of $$C$$.

**General case:**

In general, a separable differential equation

$$y' = f(x)g(y)$$

has the family of symmetries

$$\begin{align}
u = x,\\
v = \eta^{-1}(\eta(y)+C)
\end{align}$$

where here $$\eta(t) = \int 1/g(t)dt$$.




