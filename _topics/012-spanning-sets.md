---
layout: page
title: Spanning sets
---

A vector space $$V$$ always has scalar multiplication and vector addition, so by combining these two operations we have a perfect way to start to create new vectors out of old ones.
More formally, these combinations of vector addition and scalar multiplicationo are called linear combinations.
A **linear combination** of a collection of vectors $$\mathbf u_1,\mathbf u_2,\dots,\mathbf u_n$$ is a vector of the form

$$a_1\mathbf u_1 + a_2\matthbf u_2 + \dots + a_n\mathbf u_n.$$

The set of all such linear combinations is called the **span** of $$\{\mathbf u_1,\dots,\mathbf u_n\}$$ and is denoted by

$$\text{span}\{\mathbf u_1,\dots,\mathbf u_n\} = \{a_1\mathbf u_1 + \dots + a_n\mathbf u_n: a_1,\dots, a_n\in\mathbb{R}\}.$$

**Theorem:** The span of a collection of vectors in $$V$$ is a subspace of $$V$$.

In the special case that

$$V = \text{span}\{\mathbf u_1,\dots,\mathbf u_n\}$$, we call $$\{\mathbf u_1,\dots,\mathbf u_n\}$$ a **spanning set** for $$V$$.
 

**Example:** The set of vectors

$$\left\lbrace\binom{1}{0},\binom{0}{1}\right\rbrace$$

is a spanning set for the vector space of all $$2\times 1$$ column vectors.

**Example:** The set of vectors $$\{\mathbf e_1,\mathbf e_2,\dots,\mathbf e_n\}$$
is a spanning set for the vector space of all $$n\times 1$$ column vectors,
where here 

$$\mathbf e_j = \left(\begin{array}{c}0\\\vdots\\0\\1\\0\\\vdots\\0\end{array}\right).$$

is the column vector with a $$1$$ in the $$j$$'th spot and zeros elsewhere.  This spanning set is called the **standard basis**.

**Example:** Let $$V$$ be the set of all polynomials of degree at most $$3$$.  Then $$V$$ is a vector space and 

$$\{1,x,x^2,x^3\}$$

$$\{1, x, 2x^2 -1, x^3 + x\}$$

$$\{1, 2, 3, (x+1)^2, (x+2)^2, x^3 + 3x + 1\}$$

are all spanning sets for $$V$$.





