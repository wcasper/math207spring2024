---
layout: page
title: Basis
---

Armed with both the notion of a spanning set and linear independence, we have a real sense of what it means to have a minimal collection of elements of a vector space from which everything can be made.
We will call a set with these properties a *basis*.

**Definition:** A **basis** for a vector space is a set of vectors which simultaneously spans the space and is linearly independent.


**Example:** The set $$\{(1,0), (0,1)\}$$ is a basis for the vector space $$\mathbb R^2$$.

**Example:** The set $$\{(1,1), (-1,1)\}$$ is a basis for the vector space $$\mathbb R^2$$.


Sometimes a basis can have infinitely many elements.

**Example:** The set $$\{1,x,x^2,x^3,x^4,\dots\}$$ is a basis for the vector space of all polynomials with real coefficients.

**Definition:** A vector space is called **finite dimensional** if it has a finite basis.  If every basis has infinitely many vectors, the vector space is called **infinite dimensional**.


**Theorem:**  If $$B$$ is a spanning set of $$V$$ with $$n$$ elements and $$C$$ is a linearly independent subset of $$V$$, then $$C$$ has at most $$n$$ elements.

**Proof:**

Assume $$C$$ has more than $$n$$ elements.
Then we may write $$B = \{\mathbf u_1,\dots,\mathbf u_n\}$$ and we can choose $$n+1$$ elements $$\{\mathbf v_1,\dots, \mathbf v_{n+1}\}$$ in $$C$$.
Since $$B$$ is a spanning set, for ech $$k$$, we can write

$$\mathbf v_k = c_{k1}\mathbf u_1+c_{k2}\mathbf u_2 + \dots c_{kn}\mathbf u_n.$$

The matrix

$$C = \left(\begin{array}{cccc}
c_{11} & c_{21} & \dots & c_{(n+1)1}\\
c_{12} & c_{22} & \dots & c_{(n+1)2}\\
\vdots & \vdots & \ddots& \vdots\\
c_{1n} & c_{2n} & \dots & c_{(n+1)n}
\end{array}\right).$$

has $$n$$ rows and $$n+1$$ columns, so it must have at least one column without a pivot point, corresponding to a free variable of the homogeneous system of equations

$$C\vec x = \vec 0.$$

Thus this system of equations has a nontrivial solution $$\vec x = (x_1,\dots, x_{n+1})$$.
It follows that

$$
 x_1\left(\begin{array}{c} c_{11}\\c_{12}\\\vdots\\c_{1n}\end{array}\right)
+x_2\left(\begin{array}{c} c_{21}\\c_{22}\\\vdots\\c_{2n}\end{array}\right)
+x_{n+1}\left(\begin{array}{c} c_{(n+1)1}\\c_{(n+1)2}\\\vdots\\c_{(n+1)n}\end{array}\right) =
+\left(\begin{array}{c} 0\\0\\\vdots\\0\end{array}\right).
$$


This means that

$$x_1c_{1j} + x_2c_{2j} + \dots + x_{n+1}c_{(n+1)j} = 0,$$

and therefore

$$
x_1\mathbf v_1 + x_2\mathbf v_2 + \dots + x_{n+1}\mathbf v_{n+1} = (x_1c_{1j} + x_2c_{2j} + \dots + x_{n+1}c_{(n+1)j})\mathbf u_1 + \dots + x_1c_{1j} + x_2c_{2j} + \dots + x_{n+1}c_{(n+1)j}\mathbf u_n = \mathbf 0
$$

This says that $$\{\mathbf v_1,\dots, \mathbf v_{n+1}\}$$ are linearly dependent, which contradicts the assumption that $$C$$ is a basis.

:black_square_button:

**Corollary:** Suppose that $$B$$ is a basis for $$V$$ consisting of $$n$$ elements.  Then any set with less than $$n$$ elements cannot span the space.  Any set with more than $$n$$ elements cannot be linearly independent.

**Theorem:**  If $$B$$ and $$C$$ are each a basis for the same vector space $$V$$ and one of them is finite, then both bases are finite and have the same size.

**Proof:**  This follows from the previous theorem and the definition of a basis.
:black_square_button:


