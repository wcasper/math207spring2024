---
layout: page
title: Exact Equations
---

A good alternative approach to solving differential equations is to *start* with the solution and work backward.
In general, a family of solutions of a first-order ODE will look like

$$\psi(x,y) = C$$

for some function $$\psi$$ of $$x,y$$, where $$C$$ is our abitrary constant that keeps showing up in all of our solutions.
Suppose we start with the solution $$\psi(x,y)=C$$.  What's the problem?  By this we mean

**Question:** What kind of differential equation has this as a solution?

To answer this question, we use *implicit differentiation*, taking the derivative with respect to $$x$$.
This results in the differential equation

$$\varphi_x(x,y) + \varphi_y(x,y)y' = 0.$$

This suggests that we should start to explore first-order ODEs written in **M,N-form**:

$$M(x,y) + N(x,y)y' = 0$$

for some functions $$M(x,y)$$ and $$N(x,y)$$.
If it turns out that there's some function $$\psi(x,y)$$ with $$\psi_x = M$$ and $$\psi_y = N$$, then the equation automatically has the family of solutions defined above!
This motivates the following definition.

**Definition:**  The differential equation $$M(x,y) + N(x,y)y' = 0$$ is called **exact** if there exists a differentiable function $$\psi(x,y)$$ satisfying

$$\psi_x(x,y) = M(x,y)\quad\text{and}\quad \psi_y(x,y) = N(x,y).$$

The challenge that immediately then comes to mind is *how* to tell when an equation is exact, and if it is how to get $$\psi(x,y)$$.

## Closed vs. Exact

One way to check for exactness is to leverge Clairaut's Theorem, which tells us that mixed partial derivatives commute.

**Clairaut's Theorem:** Suppose that $$\psi(x,y)$$ is twice continuously differentiable.
Then

$$\frac{\partial}{\partial x}\frac{\partial \psi}{\partial y} =  \frac{\partial}{\partial y}\frac{\partial \psi}{\partial x}.$$

As a consequence of this, if $$M(x,y)$$ and $$N(x,y)$$ are continuously differentiable and 

$$M(x,y) + N(x,y)y' = 0$$

is exact, then

$$M_y = \frac{\partial}{\partial y}\frac{\partial \psi}{\partial x} = \frac{\partial}{\partial x}\frac{\partial \psi}{\partial y} = N_x.$$

This gives us a necessary condition that the functions $$M$$ and $$N$$ must satisfy in order for the equation to be exact.
It also motivates the following definition.

**Definition:** The differential equation $$M(x,y) + N(x,y)y' = 0$$ is called **closed** if $$M_y = N_x$$.

:warning: Technically it would be more appropriate to say the differential form $$Mdx + Ndy$$ is closed, whatever that means.

What Clairaut's Theorem tells us is that

$$\textbf{exact}\Longrightarrow\textbf{closed}.$$

The reverse is true as long as we are working on simple regions like rectangles (more generally on simply connected domains) where $$M$$ and $$N$$ are continuously differentiable.

**Theorem:** Suppose that $$M$$ and $$N$$ are continuously differentiable on a rectangle $$R\subseteq\mathbb R^2$$ and that $$M$$ and $$N$$ are continuously differentiable on $$R$$.  Then $$M(x,y) + N(x,y)y' = 0$$ is exact on $$R$$ if and only if it is closed.

This theorem is amazing, since it says to check for exactness we just need to compare some partial derivatives on a rectangle.
It's important to remember the condition of continuous differentiability however, as the next example shows.

**Counter-example:**  Consider the domain $$D$$ of the $$x,y$$ plane obtained by taking a rectangle around the origin, but removing the origin itself.
Since we removed the origin, the differential equation

$$\frac{-y}{x^2+y^2} + \frac{x}{x^2+y^2}y' = 0$$

defined everywhere in $$D$$.  This equation is closed, since one can check that $$M_y = N_x$$.
However, one can show that it's not exact.
The reason why we get things like this here is because the domain has a "hole" which closed things see but exact things don't.
Using the difference between closed and exact things to look for things like holes is the starting point of **de Rham cohomology**.

## Solving exact equations

To solve an exact equation, we use a tool we call **partial integration**.  Partial integration is the integral analog of partial differentiation.
We integrate the function with respect to one variable, treating the other variable as a constant.

**Example:**

Consider the differential equation

$$(y + \sin(y) + 2x) + (x\cos(y) + 2y + x)y'.$$

This equation is closed (check!) and both $$M$$ and $$N$$ are continuously differentiable everywhere, so it is exact.
This means that there is a function $$\psi(x,y)$$ with the property

$$\psi_x(x,y) = y + \sin(y) + 2x\quad\text{and}\quad \psi_y(x,y) = x\cos(y) + 2y + x.$$

Now to get $$\psi$$, we need to "undo" the partial derivative using a partial integral in one of these two equations.
Taking the first equation

$$\psi(x,y) = \int \psi_x(x,y)\partial x =  \int y + \sin(y) + 2x \partial x.$$

In doing this integral, we are integrating with respect to $$x$$ and treating $$y$$ as a constant.
However, when we do this integration we don't end up with an arbitrary constant of integration.
Instead, we end up with an arbitrary function of the "constant variable" $$y$$.

This we find

$$\psi(x,y) = xy + x\sin(y) + x^2 + g(y)$$

for some unknown function $$g(y)$$.
To figure out what $$g(y)$$ should be, we use the second equation

$$\psi_y(x,y) = x\cos(y) + 2y + x.$$

Now that we have an expression for $$\psi(x,y)$$, we can plug it in.
This gives

$$x + x\cos(y) + g'(y) = x\cos(y) + 2y + x.$$

This simplifies to $$g'(y) = 2y$$, which we integrate to get $$g(y) = y^2$$.

:warning: If you end up with $$g(y)$$ equal to something involving $$x$$, you've made a mistake somewhere!

Puting this all together, we get

$$\psi(x,y) = xy + x\sin(y) + x^2 + y^2.$$

Our solutions come from setting $$\psi(x,y) = C$$.
Thus we have the family of solutions

$$xy + x\sin(y) + x^2 + y^2 = C.$$

### Summary of steps
To summarize, for exact equations we will always involve the same steps.
1. Check exactness
2. Use partial integration with respect to $$x$$ on $$M(x,y)$$ or partial integration with respect to $$y$$ on $$N(x,y)$$ (whichever is easier!) to get $$\psi(x,y)$$ in terms of an arbitrary function of the other variable.
3. Now use the equation that we *didn't* already use to differentiate our expression for $$\psi(x,y)$$ and solve for the unknown function.
4. Conclude by setting our final expression for $$\psi(x,y)$$ equal to an arbitrary constant.
5. Clean up!  Solve for $$y$$ in terms of $$x$$ (or elsee $$x$$ in terms of $$y$) if it seems practical.  If it's an initial value problem, also plug in the initial condition to find the value of the constant!


