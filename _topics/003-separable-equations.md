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

:warning: Don't forget about your arbitrary constant of integration ($$+C$$)!
3. Finally, solve for $$y$$ in terms of $$x$$ if possible.  Otherwise, solve for $$x$$ in terms of $$y$$.  Or else just leave it in the cleanest form you can.

**Basic Example:** 

Consider the separable equation

$$y' = 2x(1+y^2).$$

We separate this as

$$\frac{1}{1+y^2}dy = 2xdx.$$

Then we integrate both sides, getting

$$\tan^{-1}(y) = \int\frac{1}{1+y^2}dy = \int 2xdx = x^2 + C.$$

Therefore

$$\tan^{-1}(y) = x^2+C,$$

and our solution is

$$y = \tan(x^2 + C).$$

This is the **general solution**.

If we add an initial condition, like $$y(0) = 1$$, then we can insert this into our general solution

$$1 = \tan(0^2+C),$$

and solve for $$C$$.  In this case we get $$C = \pi/4$$, giving us the **particular solution**

$$y = \tan\left(x^2 + \frac{\pi}{4}\right).$$

## Detecting separability

While the strategy for solving a separable equation is straight-forward, that's not always the tricky part.
Oftentimes equations might be separable, but we might not notice it!
Sometimes we need to do a bit of algebra to figure out if an equation is separable.


**Example 1:**

The equation

$$y' = \frac{x^2y-xy^2}{x-y}$$

simplifies to

$$y' = xy,$$

which is separable.

**Example 2:**

After factoring, the equation

$$y' = 3xy + y-6x-2$$

can be rewritten as

$$y' = (3x+1)(y-2)$$

which is separable.

**Example 2:**

After using angle addition formulas for sine,
the equation

$$y' = \sin(x+y)+\sin(x-y)$$

simplifies to

$$y' = 2\sin(x)\cos(y),$$

which is separable.

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




