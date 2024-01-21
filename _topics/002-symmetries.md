---
layout: page
title: Symmetries
---

As we mentioned at the start of this course, the kinds of differential equations that we know how to solve are those for which we can observe lots of symmetries.
A **symmetry** of a first-order ordinary differential equation is a change of variables

$$\begin{align}
u = g(x,y),
v = h(x,y)
\end{align}$$

with the property that when we replace $$x$$ and $$y$$ with their expressions in terms of $$u$$ and $$v$$ in the original differential equation, it stays the same equation:

$$y' = f(x,y)\ \ \Rightarrow\ \ v' = f(u,v).$$

Geometrically, this says if we impose the coordinate change and regraph the slope field, then we get the same picture!

We can also formulate this condition in terms of derivatives.
If $$y = y(x)$$ is a solution of the differential equation, then the coordinate substitution above makes $$u$$ and $$v$$ also into functions of $$x$$.

From the chain rule

$$\frac{du}{dx} = g_x(x,y) + g_y(x,y)y',$$

$$\frac{dv}{dx} = h_x(x,y) + h_y(x,y)y',$$

and therefore since $$\frac{dv}{du} = \frac{dv/dx}{du/dx}$$, we get

$$\frac{dv}{du} = \frac{h_x(x,y) + h_y(x,y)y'}{g_x(x,y) + g_y(x,y)y'}.\quad\quad\quad\quad\quad\quad \mathbf{(1)}$$

This means that algebraically, a symmetry must satisfy the equation

$$\frac{h_x(x,y) + h_y(x,y)f(x,y)}{g_x(x,y) + g_y(x,y)f(x,y)} = f(g(x,y),h(x,y)).$$

This is an example of a **nonlinear partial differential equation**.
Usually, these kinds of equations are very, very, *very* difficult to solve, so in practice symmetries are detected in other ways.

## Examples

**Example 1:**

As a first example, consider the ODE

$$y' = xy.$$

Let $$C$$ be a nonzero constant and consider the change of coordinates

$$\begin{align}
u = x,\\
v = Cy
\end{align}$$

In other words $$g(x,y) = x$$ and $$h(x,y) = Cy$$.
As a transformation, this is a rescaling of our picture in the $$y$$-direction.

From equation (1) above, we have

$$\frac{dv}{du} = \frac{0 + Cy'}{1 + 0y'} = Cy'$$

and using our original ODE, this says

$$\frac{dv}{du} = Cy' = Cxy = uv.$$

So the new ODE is the same as the old one:

$$\frac{dv}{du} = uv.$$

This makes the aboove transformation a symmetry of the differential equation for each value of $$C$$.

**Example 2:**

As a second example, consider the ODE

$$y' = \sin(y/x).$$

Let $$C$$ be a nonzero constant and consider the change of coordinates

$$\begin{align}
u = Cx,\\
v = Cy
\end{align}$$

As a transformation, this is rescaling both $$x$$ and $$y$$ at the same rate, causing the picture to "zoom out" or "zoom in", depending on if $$C > 1$$ or $$0 < C < 1$$.

Equation (1) above says 

$$\frac{dv}{du} = \frac{0 + Cy'}{C + 0y'} = y'.$$

Using our original differential equation, this gives

$$\frac{dv}{du} = y' = \sin(y/x) = \sin(v/u).$$

So the new ODE is the same as the old one:

$$\frac{dv}{du} = \sin(v/u).$$

This makes the aboove transformation a symmetry of the differential equation for each value of $$C$$.


