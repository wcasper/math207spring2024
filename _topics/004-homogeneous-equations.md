---
layout: page
title: Homogeneous Equations
---

A **homogeneous** ODE is a differential equation of the form

$$y' = f(y/x).$$

This shouldn't be confused with the notion of a *linear* homogeneous equation, which is a very different thing that we will discuss later on.

Homogeneous ODEs exhibit the property that they are invariant under "zooming", ie. under transformations of the form

$$\begin{align}
u = Cx,\\
v = Cy
\end{align}$$

for any nonzero constant $$C$$.
One of the consequences of this is that if $$y = g(x)$$ is a solution of the equation, then the transformed version $$y/C = g(x/C)$$ or $$y = Cg(x/C)$$ must also be a solution.

This kind of symmetry suggests that we perform a coordinate change to new \vocab{homogeneous} coordinates, where the transformations above fix one of the coordinates.
This can be achieved by introducing the new variable:

$$z = y/x$$

Notice that when $$y$$ and $$z$$ are both rescaled by $$C$$, the value of $$z$$ is fixed!

Now to solve the original differential equation, we need to rewrite it as an equation in $$z$$ and $$x$$ only.

To start, we use the product nd chain rules.  Since $$y = xz$$, we know that

$$\frac{dy}{dx} = z + x\frac{dz}{dx}.$$

Therefore the original homogeneous equation can be rewritten as

$$z + xz' = f(z).$$

This equation is separable!
In fact, we can write

$$z' = \frac{1}{x} (f(z)-z).$$

Now we can solve it like a typical separable equation.

# Solving homogeeneous equations

To summarize, solving homogeneous equations $$y' = f(y/x)$$ involves the following steps

1. Introduce the homogeneous variable

$$z =y/x$$

2. Rewrite the homogeneous equation into the separable equation

$$z + xz' = f(z)$$

3. Solve this separable equation for $$z$$ as a function of $$x$$

4. Use $$y = xz$$ to get the value of $$y$$ as a function of $$x$$

:warning: Don't forget Step 4!  In the end, we want $$y$$ and not $$z$$.


**Basic Example:** 

Consider the homogeneous equation

$$y' = -2 + (y/x)^2.$$

Using the homogeneous coordinate substitution $$z = y/x$$,
we get the new equation

$$z + xz' = -2 + z^2.$$

Separating this, we get

$$\frac{1}{z^2-z-2} dz = \frac{1}{x} dx.$$

Now we need to integrate both sides.
Integrating the left hand side comes down to partial fraction decomposition.  We have

$$\int \frac{1/3}{z-2} - \frac{1/3}{z+1} dz = \int \frac{1}{x}dx.$$

This results in

$$\frac{1}{3}\ln\frac{z-2}{z+1} = \ln(x) + C_1.$$

Exponentiating this gives (for $$C_2 = e^{3C_1}$$)

$$\frac{z-2}{z+1} = C_2x^3.$$

Then 

$$z = \frac{2+C_2x^3}{1-C_2x^3},$$

so finally we obtain

$$y = x\frac{2+C_2x^3}{1-C_2x^3}.$$

**Important note**:  The constants $$C_1$$ and $$C_2$$ are arbitrary constants, so keeping track of the relationships between them isn't actually important.
Thus sometimes we will be sloppy and write $$C$$ to simply represent an arbitrary constant in the equation, omitting the subindex.
In practice, this doesn't cause any problems as long as you are careful at each step.


## Detecting separability

Using homogeneous coordinates, solving homogeneous equations is no tougher than separable ones.
However, again it may not always be clear that an equation is homogeneous.
We might have to do some algebra to find out!

**Example 1:** The equation

$$y' = \frac{x-y}{x+y} + x/y$$

is homogeneous, since it can be rewritten as

$$y' = \frac{1-y/x}{1+y/x} + \frac{1}{y/x}$$





