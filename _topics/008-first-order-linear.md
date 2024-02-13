---
layout: page
title: First order linear
---

In this section, we look at an important special case of first order equations.
Specifically, when the equation is *linear*.
Since most things can be approximated locally as linear things, this case is fundamental.

A first order differential equation is called **linear** if it can be written in the form

$$y' + p(x)y = q(x).$$

We will present two different ways to solve this equation: integrating factors and variation of parameters.

## Method of integrating factors

For the method of integrating factors, we look for an integrating factor of the form $$\mu = \mu(x)$$.
Then our equation becomes

$$\mu(x)y' + \mu(x)p(x)y = \mu(x)q(x).$$

Rewritten in $$M,N$$-form, this says

$$\mu(x)p(x)y - \mu(x)q(x) + \mu(x)y' = 0.$$

Now for this to be exact, we need $$M_y = N_x$$ for

$$M_y = \frac{\partial}{\partial y}(\mu(x)p(x)y - \mu(x)q(x)) = \mu(x)p(x)$$

and

$$N_x = \mu'(x).$$

This results in the differential equation

$$\mu'(x) = \mu(x)p(x).$$

This equation is separable!
The solution is 

$$\mu(x) = e^{\int p(x)dx}.$$

Using this, the original equation becomes

$$(\mu(x)y)' = \mu(x)q(x)$$

so that the solution is

$$y = \frac{1}{\mu(x)}\int \mu(x)q(x)dx.$$

## Method of variation of parameters

In this method, we consider the **associated homogeneous equation**

$$y_h' + p(x)y_h = 0.$$

This equation is separable and the solution is $$y_h = e^{-\int p(x)dx}.$$
Now with variation of parameters, we propose a solution of the form

$$y(x) = v(x)y_h(x).$$

Then taking the derivative gives

$$y'(x) = v'(x)y_h(x) + v(x)y_h'(x).$$

Then to solve the equation $$y' + p(x)y = q(x)$$, we must have

$$v'(x)y_h(x) + v(x)y_h'(x) + p(x)v(x)y_h(x) = q(x).$$

Using the fct that $$y_h' = -p(x)y_h$$, this reduces to

$$v'(x)y_h(x) = q(x).$$

Therefore $$v'(x) = q(x)/y_h(x)$$ or rather

$$v(x) = \int q(x)y_h^{-1}(x)dx.$$

Our final answer is then

$$y(x) = y_h(x)\int q(x)y_h^{-1}(x)dx.$$


## Bernoulli equation

A **Bernoulli equation** is a differential equation of the form 

$$y' + p(x)y = q(x)y^n.$$

We can solve this by using the substitution $$z = y^{1-n}$$, which gives

$$z' = (1-n)y^{-n}y'$$

so that the original equation becomes

$$z' + (1-n)p(x)z = (1-n)q(x).$$

This is a linear equation, so we can solve it using one of the methods above!



