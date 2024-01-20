---
layout: page
title: Introducing Ordinary Differential Equations
---

# Basic Examples of ODEs

## What this course is about

An **ordinary differential equation** (ODE) is a differential equation which defines a relationship between a function and its **derivatives**.
In this class we will explore the theory of diffential equations, focusing in particular on first order ODEs, $$n$$'th order ODEs with a constant coefficients, and systems of differential equations.
For example, the equation

$$y' = y$$

expresses a relationship between an unknown function $$y$$ and its first derivative $$y'$$, specifically saying that they are equal.
A **solution** of a differential equation is a value of the unknown function $$y$$ which satisfies the equation.
In this case for example, $$y=e^x$$ would solve the equation.

:warning: This is not the only solution!  For example $$y=2e^x$$ is also a solution.


A good part of this course will revolve around methods to solve these equations, or at least represent their solutions as infinite series, along with numerical methods of approximating solutions.
Half of this course will also discuss fundamentals of linear algebra and their important applications to differential equations.

Of course, differential equations involve derivatives.
Notationally, there are many different ways of expressing derivatives and in practice we will use many of these interchangeably.  For example $$f'(x)$$, $$\frac{df}{dx}$$, $$\frac{d}{dx}f$$, $$\dot f$$, and $$Df$$ will all be ways that we express derivatives.

Differential equations arise naturally in all kinds of places, from physical systems, to population dynamics in biology, to pure mathematics.
We demonstrate this with several key examples below.

## The importance of invariants

The kinds of differential equations that we can solve analytically (by which we mean without a computer) are very special.
As such, it is entirely possible to go through an entire class on differential equations with the impression that the topic is a "bag of tricks".
In reality, the kinds of differential equations that we are able to solve, such as separable equations, linear differential equations with constant coefficients, exact equations, or nonlinear homogeneous equations, are the ones that exhibit invariants under transformations.
In other words, they have a high degree of symmetry.

For example, the equation

$$y' = \sin(y/x)$$ 

has the property that if we rescale $$x$$ and $$y$$, the equation remains the same.
This strong symmetry simultaneously indicates the potential for an analytic solution, as well as potential methods for the solution.

For wilder equations without sufficient symmetry, we rely on numerical routines to uncover solutions.

# First order equations

Starting out, we will be interested in **first-order differential equations**, which are differential equations which can be expressed in the form

$$y' = f(x,y).$$

In other words, first order differential equations are equations that involve the first derivative of $$y$$, but not higher derivatives.
Sometimes, it is convenient to rewrite our differential equation is a different canonical form, depending on the type of equation.
For example, **first-order linear differential equations** will often be expressed as

$$a(x)y' + b(x)y = f(x)$$.

Of course, we can go from this form to the previous form by "solving for $$y'$$".

## Population dynamics

One example of a place where differential equations arises naturally is in **population models**, where the population of a species changes over time in response to the current population and its environment.

For example, a very simple model for population growth might be that the current population $$P$$ will grow at a rate proportional to its curent value, ie.

$$\frac{dP}{dx} = kP.$$

A more sophisticated model might take into account that at some point the population of the species will begin to exceed the capacity of the environment to sustain it, leading to an effective upper limit.
This leads to the **logistic equation**

$$\frac{dP}{dx} = kP(1-P/C),$$

for constants $$k$$ and $$C$$, corresponding to the **population growth rate** and the **carrying capacity**, respectively.

## Mixing problems

Another place that first order ODE's naturally arise is in **mixing problems**, also known as **tank problems**.
A stereotypical example of this kind of problem is when one or more streams of water enter a tank and a single stream exits.
The water entering the tank is polluted with salt or something and a well-mixed solution exits.
Our goal is then to measure something, like the density of salt exiting the tank or the total mass of salt in the tank as time changes.

# Second order equations

Naturally, we will next be concerned with second-order differential equations, ie. equations that can be expressed in the form

$$y'' = f(x,y,y').$$

These kinds of equations are the ones that arise most naturally in physics, due to Newton's Law $$F=ma$$.
Since the acceleration is the second derivative of position with respect to time, second derivatives abound.

Again, second-order equations will have all kinds of other canonical expressions depending on their type.
For example, with **second-order linear** differential equations, we will want to explore equations of the form

$$a(x)y'' + b(x)y' + c(x)y = f(x).$$

## LCR circuits and mass-spring systems

The simplest example of a second-order ODE that arises is a differential equation governing the motion of a mass-spring system with mass $$m$$, spring constant $$k$$, and friction force $$\gamma$$:

$$my'' + \gamma y' + ky = 0.$$

A related equation arises in electrical engineering.
If we hook a resistor, inductor, and capacitor in serial, then the charge $$Q$$ on the capacitor satisfies the second-order differential equation

$$LQ'' + RQ' + \frac{1}{C}Q = 0,$$

for $$L, R$$, and $$C$$ the inductance, resistence, and capacitance respectively.

## Pendulum

As a more complicated example of a second-order differential equation, we can consider the motion of a pendulum of length $$L$$, which satisfies the differential equation

$$\frac{d^2\theta}{dt^2}+ \frac{g}{L}\sin(\theta) = ,$$

where here $$\theta$$ is the angle from the vertical and $$g$$ is the acceleration due to gravity.
Notice that this is our first example of a **second-order nonlinear equation**, since it is not a linear equation.

## Systems of differential equations

We will also be interested in solutions of **systems of differential equations**, where we are trying to find a collection of functions which satisfy a collection of differentil equations *simultaneously*.

For example, the following is a system of differential equations

$$\begin{align*}
y_1' &= -y_2,\\
y_2' &= y_1.
\end{align*}$$

A **solution** of a system of differential equations is a pair of specific values for the unknown functions $$y_1$$ and $$y_2$$ which satisfy both equations in the system at the same time.
For example

$$y_1 = \cos(t),\ \ y_2 = \sin(t)$$

is a solution.


## Double pendulum

A collection of two pendulums connected together forms an incredibly intricate example of a system of second-order differential equations.

<p align="center"><img width=200 src="fig/double-pendulum.png"/></p>

If their masses are $$m_1$$ and $$m_2$$, and their lengths are $$L_1$$ and $$L_2$$, the angles of each pendulum from the vertical satisfy the system of equations.

$$\begin{align*}
\theta_1'' &= \frac{-g(2m_1 + m_2)\sin\theta_1 - m_2g\sin(\theta_1-2\theta_2) - 2\sin(\theta_1-\theta_2)m_2((\theta_2')^2L_2 + (\theta_1')^2)L_1\cos(\theta_1-\theta_2))}{L_1(2m_1+m_2 -m_2\cos(2\theta_1-2\theta_2))}\\
\theta_1'' &= \frac{2\sin(\theta_1-\theta_2)((\theta_1')^2L_1(m_1+m_2) + g(m_1+m_2)\cos\theta_1 + (\theta_2')^2L_2m_2\cos(\theta_1-\theta_2))}{L_2(2m_1+m_2-m_2\cos(2\theta_1-2\theta_2))}
\end{align*}$$

This is an example of a system which is impossible to solve by hand, but can be approximately solved using numerical integration techniques like Runge-Kutta.
The following site provides a really nice app for exploring these solutions:
* [Double pendulum simulation](https://www.myphysicslab.com/pendulum/double-pendulum-en.html)


