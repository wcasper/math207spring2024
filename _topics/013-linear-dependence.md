---
layout: page
title: Linear Dependence
---

One very natural question for vector spaces is how many vectors we must use to actually span the space.
For example, the set

$$\left\lbrace\binom{1}{0},\binom{0}{1},\binom{2}{3}\right\rbrace$$

is a spanning set for the vector space of all $$2\times 1$$ column vectors, the third vector can already be made out of the first two

$$\binom{2}{3} = 2\binom{1}{0} + 3\binom{0}{1}$$

so anything we build with it can actually be built out of the first two.  It's not an "essential" building block of this spanning set, and if we get rid of it, we have the set

$$\left\lbrace\binom{1}{0},\binom{0}{1}\right\rbrace$$

which is still a spanning set of the vector space.
This kind of consideration leads us to the idea of linear dependence and linear independence.

**Def:** A collection of vectors $$\{\mathbf u_1, \dots,\mathbf u_n\}$$ is called **linearly dependent** if there exists a collection of scalars $$c_1,\dots, c_n$$ which aren't all zero, such that

$$c_1\mathbf u_1 + c_2\mathbf u_2 + \dots + c_n\mathbf u_n = \mathbf 0.$$

If the only solution of the above equation is the **trivial solution**  $$c_1=0, c_2=0,\dots, c_n=0$$, then the collection of vectors is called **linearly independent**.


**Example:**  Consider the set of polynomials

$$\{x^2 + 2x, x - 1, 2x^2 + x + 3, 4x + 5\}.$$

Is it linearly dependent or linearly independent?

To check, we take an arbitrary linear combination

$$a(x^2+2x) + b(x-1) + c(2x^2 + x + 3) + d(4x + 5) = (a+2c)x^2 + (b+c+4d)x + (-b+3c+5d).$$

For this linear comobination to give us zero, we must have

$$\begin{align}
a + 2c &=0\\
b + c + 4d &=0\\
-b + 3c + 5d &=0
\end{align}$$

To get solutions of this system of equations, we form the augmented matrix

$$\left[\begin{array}{ccccc}
1 & 0 & 2 & 0 & 0\\
0 & 1 & 1 & 4 & 0\\
0 &-1 & 3 & 5 & 0
\end{array}\right]$$

and row reduce it to get

$$\left[\begin{array}{ccccc}
1 & 0 & 0 & -18/4 & 0\\
0 & 1 & 0 & 7/4   & 0\\
0 & 0 & 1 & 9/4   & 0
\end{array}\right]$$

This gives us multiple solutions, including $$a = 18$$, $$b=-7$$, $$c=-9$$ and $$d=4$$.
This means that the polynomials are *linearly dependent*.

**Example:**  Consider the set of $$3\times 3$$ permutation matrices

$$\left\lbrace
\left(\begin{array}{ccc} 1 & 0 & 0 \\ 0 & 1 & 0\\ 0 & 0 & 1\end{array}\right),
\left(\begin{array}{ccc} 1 & 0 & 0 \\ 0 & 0 & 1\\ 0 & 1 & 0\end{array}\right),
\left(\begin{array}{ccc} 0 & 1 & 0 \\ 1 & 0 & 0\\ 0 & 0 & 1\end{array}\right),
\left(\begin{array}{ccc} 0 & 1 & 0 \\ 0 & 0 & 1\\ 1 & 0 & 0\end{array}\right),
\left(\begin{array}{ccc} 0 & 0 & 1 \\ 1 & 0 & 0\\ 0 & 1 & 0\end{array}\right),
\left(\begin{array}{ccc} 0 & 0 & 1 \\ 0 & 1 & 0\\ 1 & 0 & 0\end{array}\right)
\right\rbrace.$$

An arbitrary linear combination of these is given by

$$
\left(\begin{array}{ccc} a+b & c+d & e+f \\ c+e & a+f & d+b\\ d+f & b+e & a+c\end{array}\right),
$$

where $$a,b,c,d,e,f\in\mathbb{R}$$.

If we take $$a=1$$, $$b=-1$$, $$c=1$$, $$d=-1$$, $$e=1$$ and $$f=-1$$, then this combintion is zero.
Therefore the set of permutation matrices is linearly dependent.

**Example:**

The set of polynomials 

$$\{x^2 + 2x, x - 1, 2x^2 + x + 3\}$$

is linearly independent.  To see this, we take an arbitrary linear combination

$$a(x^2+2x) + b(x-1) + c(2x^2 + x + 3) = (a+2c)x^2 + (b+c)x + (-b+3c).$$

For this to be zero, we must have 

$$\begin{align}
a + 2c &=0\\
b + c &=0\\
-b + 3c &=0
\end{align}$$

To get solutions of this system of equations, we form the augmented matrix

$$\left[\begin{array}{cccc}
1 & 0 & 2 & 0\\
0 & 1 & 1 & 0\\
0 &-1 & 3 & 0
\end{array}\right]$$

and row reduce it to get

$$\left[\begin{array}{cccc}
1 & 0 & 0 & 0\\
0 & 1 & 0 & 0\\
0 & 0 & 1 & 0
\end{array}\right]$$

There are no free variables, so the  only solution is the *trivial solution* $$a=0$$, $$b=0$$, and $$c=0$$.

## Discarding extra vectors

If a set of vectors

$$\{\mathbf v_1,\mathbf v_2,\dots,\mathbf v_n\}$$

is linearly dependent we can get rid of one or more of the vectors without changing the span.
Put another way, we can build the same vector space using less starting material.
However, what vector we remove sometimes matters.
For example, the subset of $$\mathbb R^3$$

$$\{(1,0,0),(0,1,0),(0,0,1),(1,1,0)\}$$

spans $$\mathbb R^3$$ and is easily seen to be linearly dependent since

$$1 (1,0,0) + 1 (0,1,0) + 0 (0,0,1) + (-1) (1,1,0) = 0.$$

If we remove $$(1,1,0)$$ from the set, we still have a set of vectors which spans $$\mahbb{R}^3$$.
Alternatively we remove either $$(1,0,0)$$ or $$(0,1,0)$$ from the set, we still have a set of vectors which spans $$\mathbb{R}^3$$.
However, if we remove $$(0,0,1)$$ we no longer span $$\mathbb{R}^3$$.
This is because the vector we remove must be able to be written as a linear combination of the remaining vectors.
Equivalently, it has to show up with a nonzero coefficient in our linear dependence expression.
This leads to the following very important theorem in the theory of vector spaces.

**Theorem:**  Suppose that $$\{\mathbf u_1,\dots,\mathbf u_n\}$$ is a linearly dependent set of vectors and $$\mathbf u_n$$ can be expressed as a linear combination of $$\mathbf u_1,\dots,\mathbf u_{n-1}$$.
Then

$$\text{span}\{\mathbf u_1,\dots,\mathbf u_n\} = \text{span}\{\mathbf u_1,\dots,\mathbf u_{n-1}\}.$$


## Linear dependence in $$\mathbb{R}^m$$

The most basic place to check for linear dependence or linear independence is $$\mathbb{R}^m$$.
Starting with a set of vectors

$$\{\mathbf u_1,\mathbf u_2,\dots \mathbf u_n\}$$

we form the equation

$$c_1\mathbf u_1 + c_2\mathbf u_2 + \dots + c_n\mathbf u_n = \mathbf 0.$$

This is equivalent to the homogeneous linear system of equations

$$A\vec c = \vec 0$$

where here $$\vec c$$ is the vector whose entries are $$c_1,\dots, c_n$$ and $$A$$ is the $$m\times n$$ matrix whose column vectors are $$\mathbf u_1$$, through $$\mathbf u_n$$.  This leads to a simple characterization of linear dependence in terms of solutions of systems of linear equations.

**Theorem:** Let $$A$$ be the $$m\times n$$ matrix whose columns are the vectors $$\mathbf u_1,\dots,\mathbf u_n$$.  Then 

$$\{\mathbf u_1,\mathbf u_2,\dots \mathbf u_n\}$$

is linearly independent if and only if the only solution of the homogeneous system of linear equations  $$A\vec c = \vec 0$$ is the trivial solution $$\vec c = \vec 0$$.
Equivalently, this is true if and only if the system has no free variables, which may be determined by row reduction.

## Linear dependence of functions

When linked with the theory of differential equations, one important factor that comes up is whether some collection of functions is linearly dependent or linearly independent.

For example, is the set of functions

$$\{\sin(x), \cos(x), e^{x}\}

linearly dependent or linearly independent.
It turns out that there is a very handy tool to help us detect linear independence of functions, called the Wronskian.

**Definition:** Let $$f_1(x),\dots, f_n(x)$$ be an ordered list of $$n$$ functions which are all differentiable at least $$n-1$$  times.
The **Wronskian** of these functions is the determinant expression

$$W(f_1,\dots, f_n)
= \det\left(\begin{array}{cccc}
f_1(x) & f_2(x) & \dots & f_n(x)\\
f_1'(x) & f_2'(x) & \dots & f_n'(x)\\
\vdots & \vdots & \ddots & \vdots\\
f_1^{(n-1)}(x) & f_2^{(n-1)}(x) & \dots & f_n^{(n-1)}(x)
\end{array}\right).$$

**Example:**

$$\begin{align}
W(\sin(x),\cos(x))
 & = \det\left(\begin{array}{cc}
 \sin(x) & \cos(x)\\
 \cos(x) &-\sin(x)
\end{array}\right)\\
 & = -\sin^2(x) - \cos^2(x) = -1.
\end{align}$$

**Example:**

$$\begin{align}
W(\sin(x),\cos(x), e^x)
 & = \det\left(\begin{array}{ccc}
 \sin(x)  &  \cos(x) & e^x\\
 \cos(x)  & -\sin(x) & e^x\\
 -\sin(x) & -\cos(x) & e^x\\
\end{array}\right)\\
 & = 2(-\sin^2(x) - \cos^2(x))e^x - (-\sin(x)\cos(x)+\cos(x)\sin(x))e^x = -2e^x.
\end{align}$$


The next theorem explains how the Wronskian allows us to detect linear independence.

**Theorem:** Suppose that the Wronskian $$W(f_1,\dots, f_n)$$ is nonzero on at least one value in an interval $$I$$.  Then the functions $$f_1,\dots, f_n$$ are linearly independent over the interval $$I$$.

:warning: This isn't an if and only if.  It is possible for the Wronskian to be zero but for the functions to be linearly independent.  This is the case for example for the functions

$$f_1(x) = x^2,\quad f_2(x) = \left\lbrace\begin{array}{cc}x^2 & x \geq 0\\ -x^2 & x < 0\end{array}\right.$$

