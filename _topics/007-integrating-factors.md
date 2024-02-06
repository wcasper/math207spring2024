---
layout: page
title: Integrating Factors
---

As we saw before, exact equations are simply derivatives of solutions.
To actually get the solution, we just need to integrate it out.

Unfortunately, it's really easy to create equations that aren't exact but should still have nice solutions.

For example, consider the equation

$$y + e^{xy} = C.$$

This defines a big family of curves, and if we take the derivative with respect to $$x$$, using implicit differentiation we get a differential equation

$$y' + ye^{xy} + xe^{xy}y' = 0.$$

Or put in $$M,N$$-form

$$ye^{xy} + (1+xe^{xy})y' = 0.$$

The solutions of this equation are the family of curves we started with!
In fact, this equation is exact so we can solve it the usual way and get back to where we started.
However, if we do something like divide everything by $$e^{xy}$$ we get the equation

$$y + (e^{-xy} + x)y' = 0$$

which is not exact.  Still the solutions are still the same as before, so it's really something like *an exact equation in disguise*.
If we multiply by $$e^{xy}$$ we get an exact equation.
This gives us an idea:

**BIG IDEA:** Try to find a function $$\mu(x,y)$$ so that when we multiply by $$\mu$$, the equtation becomes exact.

**Definition:**  Consider a differential equation in $$M,N$$-form

$$M(x,y) + N(x,y)y' = 0$$

A function $$\mu(x,y)$$ with the property that

$$\mu(x,y)M(x,y) + \mu(x,y)N(x,y)y' = 0$$

is exact is called an **integrating factor**.

# Method of integrating factors

Our most robust method of solving first-order nonlinear ODEs is the **method of integrating factors**.
The premise of this method is to simply find an integrating factor for the equation, then multiply by it and solve the resultant exact equation using the method of the previous section.
Thus the steps are simple!

1. Check if the equation is exact.
2. If it's not exact, find an integrating factor $$\mu(x,y)$$.
3. Multiply by $$\mu(x,y)$$ (if not already exact) and solve the exact equation.

The tough part of all of this is *Step 2*.
Unfortunately, finding integrating factors for arbitrary equations is hard.  Like *really* hard.
Still we can find integrating factors in some particular special cases.

The strategy is really to make an **ansatz**, or simplifying assumption about what $$\mu(x,y)$$ should look like, and then see what happens.
Some typical examples of ansatz are:
*  assume $$\mu = \mu(x)$$ is a function of $$x$$ only, or
*  assume $$\mu = \mu(y)$$ is a function of $$y$$ only, or
*  assume that $$\mu$$ has a more exotic form, like $$\mu(x,y) = x^ay^b$$ ...

In most of the cases that we will consider here, one of the first two assumptions.
We will explore some specific instances of the more exotic forms, but typically with hints.

:warning: Of course, when we make an assumption, we could be wrong!
We need to carefully check here whether what we get makes sense.
If your first assumption leads to something nonsensical, you might need to try a different one.

**Example:**

Consider the differential equation

$$1 + y + (x/y + 2x)y' = 0.$$

In this case, $$M(x,y) = 1+y$$ and $$N(x,y) = x/y + 2x$$, so

$$M_y = 1,\ \ \text{and}\ \ N_x = 1/y + 2.$$

Therefore our equation isn't exact.

- First attempt:

Let's assume that we can find an integrating factor of the form $$\mu = \mu(x)$$.
That is, we will assume that the integrating factor can be taken to be a function of $$x$$ only.
Then there should be some function $$\mu(x)$$ with

$$\mu(x) + \mu(x)y + \mu(x)(x/y + 2x)y' = 0$$

an exact equation.
This would imply that

$$\frac{\partial}{\partial y}(\mu(x) + \mu(x)y) = \frac{\partial}{\partial x}(\mu(x)(x/y + 2x)),$$

which simplifies to

$$\mu(x) = \mu'(x)(x/y + 2x) + \mu(x)(1/y + 2).$$

Simplifying this, we get

$$\frac{\mu'(x)}{\mu(x)} = -\frac{1/y + 1}{x/y + 2x}.$$

The left is a function of $$x$$ only, but the right depends on both $$x$$ and $$y$$.
This is **complete nonsense!**
Therefore our assumption about the form of $$\mu$$ must be wrong.

- Second attempt:

We need to switch up our assumption.  Let's instead try out assuming $$\mu = \mu(y)$$ is a function $$y$$ only.
Then 

$$\mu(y) + \mu(y)y + \mu(y)(x/y + 2x)y' = 0$$

is an exact equation.
This says that

$$\frac{\partial}{\partial y}(\mu(y) + \mu(y)y) = \frac{\partial}{\partial x}(\mu(y)(x/y + 2x)),$$

which simplifies to

$$\mu'(y) + y\mu'(y) + \mu(y) = \mu(y)(1/y + 2).$$

Simplifying to gt all of our $$\mu$$ terms on one side

$$\frac{1}{\mu(y)}\mu'(y) = \frac{1}{y}.$$

This equation is separable, so we solve it that way

$$\int \frac{1}{\mu}d\mu = \int\frac{1}{y}dy.$$

This simplifies to $$\mu = Cy$$, for some arbitrary constant $$C$$.
We **just need one** integrating factor, so we can take $$C=1$$.
This means that if we multiply our original equation by $$\mu = y$$, we should get an exact equation.

$$y + y^2 + (x + 2xy)y' = 0.$$

We double-check that this is exact, since

$$\frac{\partial}{\partial y}(y + y^2) = 1 + 2y = \frac{\partial}{\partial x} (x + 2xy).$$

Then we solve the equation by searching for $$\psi(x,y)$$ with

$$\psi_x = y + y^2,\ \ \text{and}\ \ \psi_y = x + 2xy.$$

Using the first equation

$$\psi(x,y) = \int \psi_x \partial_x = \int y + y^2 \partial x = xy + xy^2 + g(y).$$

Then differentiating, this says

$$\psi_y = x + 2xy + g'(y).$$

Combining this with the second equation, we get

$$x + 2xy + g'(y) = x + 2xy,$$

This means $$g'(y) = 0$$, so $$g(y)$$ is a constant which we can take to be zero.
Thus $$\psi(x,y) = xy + xy^2$$ and our solutions are 

$$xy + xy^2 = C.$$




