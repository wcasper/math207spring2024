---
layout: page
title: Linear Transformations
---

Let $$V$$ and $$W$$ be two vector spaces.

**Definition:** A function $$T: V\rightarrow W$$ is called a **linear transformation** if it satisfies both of the following properties:
* $$T(c\mathbf u) = cT(\mathbf u)$$ for all $$c\in\mathbb{R}$$ and $$\mathbf u\in V$$, and
* $$T(\mathbf u+\mathbf v) = T(\mathbf u) + T(\mathbf v)$$ for all $$\mathbf u,\mathbf v\in V$$.


**Example:** Let $$I$$ be an interval.  The transformation

$$D: C^n(I)\rightarrow C^{n-1}(I),\ \ D(f(x)) = f'(x)$$

is a linear transformation.

**Example:** The transformation 

$$T: C^2((-2,2))\rightarrow M^2(\mathbb{R}),\ \ T(f) = \left(\begin{array}{cc}f'(1) & f''(0) + f(1)\\ 0 & f'(-1)\end{array}\right)$$

is a linear transformation.

