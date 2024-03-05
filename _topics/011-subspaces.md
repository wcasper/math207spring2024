---
layout: page
title: Subspaces
---

A subspace of a vector space $$V$$ is a subset $$W\subseteq V$$ which is still a vector space using the same vector addition and scalar multiplication operations of $$W$$.

**Example:**  If $$V$$ is any vector space, then the subset $$W = \{\mathbf 0\}$$ consisting of just the zero vector is a subspace.  This is called the **trivial subspace**.

**Example:** If $$V$$ is any vector space, then $$W=V$$ is a subspace of $$V$$.  This is called the **whole space** or **whole subspace**.

**Example:**  If $$V$$ is any vector space, then the empty set $$W = \varnothing$$ is a subset of $$V$$ but *not* a subspace.  In paricular, it violates Axiom 5 and does not have a zero vector.

**Example:**  If $$V$$ is the vector space $$\mathbf{R}^3$$, then any plane passing through the origin

$$W = \{(x,y,z)\in\mathbb{R}^3: ax + by + cz = 0\}$$

is a subspace of $$V$$.

**Example:**  If $$V$$ is the vector space $$\mathbf{R}^3$$, then any line passing through the origin

$$W = \{(x,y,z)\in\mathbb{R}^3: x = at,\ y = bt,\ z = ct,\ t\in\mathbb{R}\}$$

is a subspace of $$V$$.

**Example:**  If $$V$$ is the vector space $$\mathbf{R}^3$$, then any subspace that is not the whole space and not the trivial subspace mus be a plane passing through the origin or a line passing through the origin.  A similar geometric idea applies in $$\mathbb{R}^n$$ for all $$n$$, where we replace lines and planes with their natural analogs.

**Example:** If $$V$$ is the set of $$n\times 1$$ column vectors and $$A$$ is an $$m\times n$$ matrix, then the set 

$$\{\mathbf x\in V: A\mathbf x = \mathbf 0\}$$

is a subspace of $$V$$, called the **null space** or **kernel** of $$A$$.


## Checking if a subset is a subspace

To check whether a certain set is a vector space, we have to check ten separate axioms!
However, to check whether a subset $$W$$ of a vector space $$V$$ is a subspace it's much easier!
We just need to verify three simple properties:
1. (nonempty) $$W$$ is not the empty set
2. (closure under vector addition) if $$\mathbf u,\mathbf v\in W$$ then $$\mathbf u + \mathbf v\in W$$
3. (closure under scalar multiplication) if $$c\in\mathbb{R}$$ and $$\mathbf u\in W$$, then $$c\mathbf u\in W$$

Note: if $$W$$ is a vector space, then (1) and (3) above combined imply that $$\mathbb 0$$ is in $$W$$.  Thus typically to check if $$W$$ is nonempty, the simplest thing to do is to check if $$\mathbf 0$$ is in $$W$$.

Since proving something is a subspace involves only three checks, one common tactic to prove that a set is a vector space is to identify it as a subset of a known vector space and then prove that it is a subspace.

**Problem:** Prove that the set of all solutions of the differential equation $$y'' + y = 0$$ on the interval $$(-1,1)$$ is a vector space.

**Solution:** Let $$W$$ be the set of all solutions of $$y'' + y = 0$$ on he interval $$(-1,1)$$.  As we already saw, the collection of all real-valued functions on $$(-1,1)$$ is a real vector space $$V$$.  Since $$W\subseteq V$$, it suffices to show that $$W$$ is a subspace.  We check each of the three properties above.
1. The constant function $$f(x) = 0$$ is the zero vector in $$V$$ and also solves the differential equation.  So the zero vector is in $$W$$.
2. If $$y=f(x)$$ and $$y=g(x)$$ are both solutions of $$y'' + y = 0$$, then

$$(f(x)+g(x))'' + (f(x)+g(x)) = f''(x) + f(x) + g''(x) + g(x) = 0 + 0 = 0,$$

so $$y = (f+g)(x)$$ is also a solution.  Thus if $$f,g\in W$$ then $$f+g\in W$$.

3. if $$y = f(x)$$ is a solution and $$c\in\mathbb{R}$$ is a real constant, then

$$(cf(x))'' + cf(x) = cf''(x) + cf(x) = c(f''(x) + f(x)) = c0  = 0.$$

Therefore $$y=cf(x)$$ is also a solution.  Thus if $$f\in W$$ and $$c\in R$$, then $$cf\in W$$.

It follows that $$W$$ is a subspace of $$V$$ and thus a vector space.
This a special case of the following theorem.

**Theorem:** Let $$I$$ be an interval and $$a_2(x),a_1(x),a_0(x)$$ be real-valued functions on $$I$$.  Then the set of all solutions to the linear homogeneous second-order ODE

$$a_2(x)y'' + a_1(x)y' + a_0(x)y = 0$$

on the interval $$I$$ is a vector space.
We call this the **solution space** of the homogeneous linear ODE on $$I$$.

For solution spaces of second order homogeneous linear ODEs, there are always two different solutionos $$y_1$$ and $$y_2$$ of the equation, such that every solution is a linear combination $$c_1y_1 + c_2y_2$$ of $$y_1$$ and $$y_2$$.
In this situation, we say that $$y_1$$ and $$y_2$$ **span** $$W$$.
We will discuss the idea of spanning sets for arbitrary vector spaces in the next section.



