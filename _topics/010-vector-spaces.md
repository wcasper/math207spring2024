---
layout: page
title: Vector Spaces
---

A vector space is one of the most important and fundamental objects in mathematics.
Inherently, they are used to capture ideas of *linearity*, *linear combinations*, and *linear transformations*.
Maybe you heard in the past that a vector is some physical quantity with a magnitude and a direction.
For reasons we will begin to understand in this class, there is much to be gained by considering vectors and vector spaces in abstract generality.

## What is a vector space

Loosely speaking, a vector space is a set of objects called vectors, where we have some way to add vectors together and we have a way to multiply vectors by numbers we call sclars, and where these operations are algebraically compatible.
Let's make this very formal now.

**Definition:** A **real vector space** is a set $$V$$ with the following properties:
* (A1)  given $$\mathbf u,\mathbf v\in V$$, there exists a vector $$\mathbf u+\mathbf v$$ also in $$V$$
* (A2)  if $$\mathbf u\in V$$ and $$c\in\mathbb{R}$$ then there exists $$c\mathbf u\in V$$
* (A3)  we have **commutativity**: $$\mathbf u+\mathbf v = \mathbf v+\mathbf u$$ for all $$\mathbf u,\mathbf v\in V$$
* (A4)  we have **additive associativity**:  $$(\mathbf u+\mathbf v)+\mathbf w = \mathbf u+(\mathbf v+\mathbf w)$$ for all $$\mathbf u,\mathbf v,\mathbf w\in V$$
* (A5)  we have a **zero vector**: $\mathbf 0\in V$ with $$\mathbf 0 + \mathbf u = \mathbf u + \mathbf 0 = \mathbf u$$ for all $$\mathbf u\in V$$
* (A6)  we have a **additive inverses**: for every $$\mathbf u\in V$$ there exists $$-\mathbf u\in V$$ with $$\mathbf u + (-\mathbf u) = \mathbf 0$$
* (A7)  we have $$1\mathbf u = \mathbf u$$ for all $$\mathbf u\in V$$
* (A8)  we have **multiplicative associativity**: if $$a,b\in\mathbb{R}$$, then $$a(b\mathbf u) = (ab)\mathbf u$$
* (A9)  we have **distributivity over vector addition**: if $$c\in\mathbb{R}$$ and $$\mathbf u,\mathbf v\in V$$, then $$c(\mathbf u+\mathbf v) = c\mathbf u + c\mathbf v$$
* (A10) we have **distributivity over scalar addition**: if $$a,b\in\mathbb{R}$$ and $$\mathbf u\in V$$, then $$(a+b)\mathbf u = a\mathbf u + b\mathbf u$$

It's worth noting that this same definition holds if we replace $$\mathbb{R}$$ with any other **field**, such as the rational numbers $$\mathbb{Q}$$ or the complex numbers $$\mathbb C$$, or even the set $$\mathbb F_2$$ of $$0$$ and $$1$$ with addition modulo $$2$$.

These 10 laws are together called the **axioms of a vector space**, and were chosen to describe structures that completely mimic the experience we had with row and column vectors in $$\mathbb{R}^2$$, $$\mathbb{R}^3$$ or more generally $$\mathbb{R}^n$$.
We formalize this though, since now we can start to understand some other really interesting mathematical objects as vector spaces.

**Example:** Consider the set of all polynomials in a variable $$x$$ of degree at most $$3$$

$$V = \{a_0 + a_1x + a_2x^2 + a_3x^3: a_0,a_1,a_2,a_3\in\mathbb{R}\}.$$

If we add two polynomials of degree $$3$$ together, we get another polynomial whose degree is no larger than $$3$$.
Likewise if we multiply a polynomial by a real number, we get a polynomial of at most the same degree.
We also have the zero polynomial $$0 + 0x + 0x^2 + 0x^3$$, which plays the role of the zero vector $$\mathbf 0$$.
Taking these all together, this is an example of a real vector space.

**Example:** The set of all $$2\times 2$$ matrices with real entries is a real vector space.

**Example:** Let $$I\subseteq\mathbb{R}$$ be an interval.  The set of all real-valued functions on $$I$$ is a vector space.

**Example:** Let $$I\subseteq\mathbb{R}$$ be an interval.  The set of all continuous, real-valued functions on $$I$$ is a vector space.

**Example:** Let $$I\subseteq\mathbb{R}$$ be an interval.  The set of all differentiable, real-valued functions on $$I$$ is a vector space.

**Example:** Let $$V$$ be the set of all solutions of the differential equation $$y'' + y = 0$$.  Then $$V$$ is a vector space.

### Other properties of vector spaces

Any vector space satisfying tthe axioms above, will automatically also satisfy several other important properties.

**Theorem:** Let $$V$$ be a real vector space.  Then

1.  The zero vector is unique
2.  $$0\mathbf u = \mathbf 0$$ for all $$\mathbf u\in V$$
3.  $$c\mathbf 0 = \mathbf 0$$ for all $$c\in \mathbb{R}$$
4.  Additive inverses are unique
5.  For all $$\mathbf u\in V$$, $$-\mathbf u = (-1)\mathbf u$$
6.  If $$a\in\mathbb{R}$$ and $$\mathbf u\in V$$ with $$a\mathbf u = \mathbf 0$$, then either $$a=0$$ or $$\mathbf u = \mathbf 0$$ (or both)


