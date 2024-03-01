---
layout: page
title: Homework 3
permalink: /homework/hw3
---

### Directions
Solve the following problems and write up your solutions.  Your solutions should be provided in one of the following formats (in order of preference)
* typed up in $$\LaTeX$$ and submitted as a PDF on Canvas
* written legibly on blank paper, scanned into a PDF and then uploaded on Canvas
* written on ancient parchement with a quill and then flown to the instructor via owl post like in Harry Potter

If you go with the first strategy, you may wish to check out Overleaf which is a free and intuitive website for generating $$\LaTeX$$ documents online.
If you wish to use the second method and don't own a scanner at home, you can check out the numerous scanning apps available for smartphones.

You will be graded based on *completion* of all of the assigned problems, along with in-depth grading of *select* problems which will not be revealed until after the homework is graded.

**Remember:** Success in any math class is based on *practice*.  The assigned homework problems are the **bare minimum**.  You should strive to do as many more problems from the textbook.

# Problem 1

For each of the following, determine if the set is a vector space or not.  Carefully justify your conclusion.

* (A) $$\{A: A\ \text{is a $2\times 2$ matrix and $A^2$ is symmetric}\}$$
* (B) $$\{A: A\ \text{is a $2\times 2$ matrix and $AA^T=I$}\}$$
* (C) $$\{a + bx + cx^2 + dx^3: a,b,c,d\in\mathbb{R}\}$$
* (D) $$\{f(x): \text{$f(x)$ is a continuous function on $[0,1]$ and $\int_0^1 f(x)dx = 0$}\}$$

# Problem 2

For each of the following, decide whether the set of vectors in $$V$$ spans $$V$$.  If it does, carefully show it.  If not, give an example of a vector in $$V$$ which is not in the span.

* (A) $$\{(1,1),(1,-1)\}$$ in $$\mathbb R^2$$
* (B) $$\{(1,-2,1),(1,-3,2), (-2,1,1)\}$$ in $$\mathbb R^3$$
* (C) $$\left\lbrace\left(\begin{array}{cc}1 & 1\\-1& 2\end{array}\right),\left(\begin{array}{cc}1 & 0\\0 & 1\end{array}\right),\left(\begin{array}{cc}3 & -2\\2& 0\end{array}\right)\right\rbrace$$ in $$M_2(\mathbb R)$$

# Problem 3

The hyperbolic sine and hyperbolic cosine functions are defined by

$$\sinh(x) = \frac{e^{x}-e^{-x}}{2},\quad\text{and}\quad \cosh(x) = \frac{e^{x}+e^{-x}}{2}.$$

Let $$V$$ be the span of $$\sinh(x)$$ and $$\cosh(x)$$.
Show that $$V$$ is also equal to the span of $$e^x$$ and $$e^{-x}$$.

# Problem 4

For each of the following sets of vectors, determine if the set is linearly dependent or independent.
If it is linearly dependent, give an explicit linear dependence relationship between the vectors.

* (A) $$\{ (2, −1), (3, 2), (0, 1)\}$$
* (B) $$\{(1, 2, 3), (1, −1, 2), (1, −4, 1)\}$$
* (C) $$\{(−2, 4, −6), (3, −6, 9)\}$$
* (D) $$\{1,x,x^2\}$$
* (E) $$\{\sin(x),\cos(x),\tan(x)\}$$
* (F) $$\{e^x,e^{-x},\cosh(x)\}$$

# Problem 6

Suppose that $$\mathbf u_1$$ and $$\mathbf u_2$$ are two vectors in a vector space, and that $$\mathbf v_1$$, $$\mathbf v_2$$, and $$\mathbf v_3$$ are three different vectors belonging to the span of $$\{\mathbf u_1,\mathbf u_2\}$$.
Carefully prove that the set of vectors $$\{\mathbf v_1,\mathbf v_2,\mathbf v_3\}$$ must be linearly dependent.

# Problem 7

Let $$V$$ be the set of all column vectors with positive entris

$$V = \left\lbrace\binom{a}{b} : a,b\in\mathbb{R},\ a > 0,\ b > 0\right\rbrace.$$

However, we will define a *new* kind of vector addition, which we denote by $$\oplus$$, which is defined to be

$$\binom{a}{b} \oplus \binom{x}{y} := \binom{ax}{by}.$$

We also denote a new kind of scalar multiplication, which we denote by $$ * $$ and which is defined for any scalar $$c\in\mathbb{R}$$ by

$$c\odot\binom{a}{b} = \binom{a^c}{b^c}.$$

* (A) Calculate $$\binom{3}{2}\oplus \binom{2}{5}$$.
* (B) Calculate $$2\odot \binom{2}{5}$$.
* (C) Show that $$V$$ has a zero vector, and explain what it is and why.
* (D) Verify that $$V$$ satisfies all ten axioms of a vector space with the operations $$\oplus$$ and $$\odot$$.


