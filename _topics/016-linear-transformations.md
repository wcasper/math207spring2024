---
layout: page
title: Linear Transformations
---

Let $$V$$ and $$W$$ be two vector spaces.

**Definition:** A function $$T: V\rightarrow W$$ is called a **linear transformation** if it satisfies both of the following properties:
* it **respects scalar multiplication**: $$T(c\mathbf u) = cT(\mathbf u)$$ for all $$c\in\mathbb{R}$$ and $$\mathbf u\in V$$, and
* it **respects vector addition**: $$T(\mathbf u+\mathbf v) = T(\mathbf u) + T(\mathbf v)$$ for all $$\mathbf u,\mathbf v\in V$$.

The vector space $$V$$ is calld the **domain** of $$T$$.  The vector space $$W$$ is called the **codomain**.
The set

$$\text{img}(T) = \{T(\mathbf v): \mathbf v\in V\}$$

is called the **range** of $$T$$ or alternatively the **image** of $$T$$. 

The set

$$\text{ker}(T) = \{\mathbf v \in V: T(\mathbf v) = \mathbf 0\}$$

is called the **kernel** or **null space** of $$T$$.

**Example:** Let $$I$$ be an interval.  The transformation

$$D: C^n(I)\rightarrow C^{n-1}(I),\ \ D(f(x)) = f'(x)$$

is a linear transformation.

To see this, we need to check three things:

1. that the transformation is well-defined, ie. every input has a legitimate output

Suppose that $$f(x)\in C^n(I)$$.
Then $$f(x)$$ is $$n$$-times continuously differentiable, so $$f'(x)$$ is $$n-1$$ times continuously differentiable, meaning $$f'(x)\in C^{n-1}(I)$$.
This means that the function is well-defined.

2. that the transformation respects scalar multiplication

Suppose that $$f(x)\in C^n(I)$$ and $$c\in\mathbb{R}$$.  Then

$$D(cf) = (cf(x))' = cf'(x) = cD(f).$$

2. that the transformation respects vector addition

Suppose that $$f(x),g(x)\in C^n(I)$$.  Then

$$D(f+g) = (f(x)+g(x))' = f'(x) + g'(x) = D(f) + D(g).$$

Putting this all together, we see that $$D$$ is a linear transformation!

**Example:** The transformation 

$$T: C^2((-2,2))\rightarrow M^2(\mathbb{R}),\ \ T(f) = \left(\begin{array}{cc}f'(1) & f''(0) + f(1)\\ 0 & f'(-1)\end{array}\right)$$

is a linear transformation.  

**Example:** The transformation

$$T: \mathbb{R}^2\rightarrow\mathbb{R}^2,\ \ T((x_1,x_2)) = (x_1+x_2,x_1-x_2+3)$$

is not a linear transformation.

**Example:** The transformation

$$T: \mathbb{R}^2\rightarrow\mathbb{R}^2,\ \ T((x_1,x_2)) = (x_1x_2,x_1^2)$$

is not a linear transformation.

## Properties of Linear Transformations

Fundamentally, linear transformations are nice because they communicate information between vector spaces.
The following three theorems show in particular certain subspaces are naturally associated with any linear transformation.

**Theorem:** A linear transformation $$T: V\rightarrow W$$ must take the zero vector to the zero vector, ie. $$T(\mathbf 0_V) = \mathbf 0_W$$.

**Proof:** $$T(\mathbf 0_V) = T(0\mathbf 0_V) = 0T(\mathbf 0_V) = 0_W$$. :black_square_button:

**Theorem:** The kernel of a linear transformation $$T: V\rightarrow W$$ is a subspace of $$W$$

**Proof:** To check that it is a subspace, we need to check three properties:

1. It contains the zero vector.

By the previous theorem, this is true.

2. It is closed under scalar multiplication.

Suppose $$\mathbf u\in \text{ker}(T)$$ and $$c\in\mathbb{R}$$.  Then $$T(\mathbf u) = \mathbf 0_W$$, so

$$T(c\mathbf u) = cT(\mathbf u) = c\mathbf 0_W = \mathbf 0_W.$$

Therefore $$c\mathbf u\in\text{ker}(T)$$.

3. It is closed under vector addition.

Suppose $$\mathbf u,\mathbf v\in \text{ker}(T)$$.  Then $$T(\mathbf u) = \mathbf 0_W$$ and $$T(\mathbf v) = \mathbf 0_W$$, so

$$T(\mathbf u + \mathbf v) = T(\mathbf u) + T(\mathbf v) = \mathbf 0_W + \mathbf 0_W = \mathbf 0_W.$$

Therefore $$\mathbf u + \mathbf v\in \text{ker}(T)$$.

Combining all of these together, we see $$\text{ker}(T)$$ is a vector space.  :black_square_button:


**Theorem:** The image of a linear transformation $$T: V\rightarrow W$$ is a subspace of $$W$$

**Proof:** To check that it is a subspace, we need to check three properties:

1. It contains the zero vector.

By the previous theorem, this is true.

2. It is closed under scalar multiplication.

Suppose $$\mathbf w\in \text{img}(T)$$ and $$c\in\mathbb{R}$$.  Then there exists $$\mathbf u\in V$$ with $$T(\mathbf u) = \mathbf w$$, so $$T(c\mathbf u) = cT(\mathbf u) = c\mathbf w$$.  It follows that $$c\mathbf w$$ is in the image of $$T$$.

3. It is closed under vector addition.

Suppose $$\mathbf w_1,\mathbf w_2\in \text{img}(T)$$.  Then there exists $$\mathbf u_1,\mathbf u_2\in V$$ with $$T(\mathbf u_1) = \mathbf w_1$$ and $$T(\mathbf u_2) = \mathbf w_2$$.  Therefore $$T(\mathbf u_1 + \mathbf u_2) = T(\mathbf u_1) + T(\mathbf u_2) = \mathbf w_1 + \mathbf w_2$$.
This shows that $$\mathbf w_1 + \mathbf w_2$$ is in the image of $$T$$.

Combining all of these together, we see $$\text{ker}(T)$$ is a vector space.  :black_square_button:

## Transformations defined by matrices

Matrices define an important special case of linear transformations.
If $$A$$ is an $$m\times n$$ matrix, then $$A$$ induces a linear transformation $$T_A: \mathbb{R}^n\rightarrow\mathbb R^m$$ via matrix multiplication.
Specifically, we identify a point $$(x_1,\dots, x_n)\in\mathbb{R}^n$$ with the column vector $$\left[\begin{array}{c}x_1\\x_2\\\vdots\\x_n\end{array}\right]$$ and every point $$(y_1,\dots, y_m)\in\mathbb{R}^m$$ with the column vector $$\left[\begin{array}{c}y_1\\y_2\\\vdots\\y_m\end{array}\right]$$.

Then the map $$T: \mathbb{R}^n\rightarrow\mathbb{R}^m$$ defined by

$$T(x_1,\dots, x_n) = A\left[\begin{array}{c}x_1\\x_2\\\vdots\\x_n\end{array}\right]$$

is a linear transformation.

Conversely, given any linear transformation $$T: \mathbb{R}^n\rightarrow\mathbb{R}^m$$ we associate a matrix called the **matrix of $$T$$**.  It is the matrix whose column vectors are $$T(\mathbf e_1),\dots,T(\mathbf e_n)$$, ie.

$$A = [T(\mathbf e_1),\ T(\mathbf e_2),\ \dots\ T(\mathbf e_n)].$$

Here $$\mathbf e_1,\dots, \mathbf e_n$$ is the **standard basis for $$\mathbb{R}^n$$**.

**Theorem:**  If $$A$$ is the matrix associated with a linear transformation $$T$$, then $$T_A = T$$.  Conversely, if $$A$$ is an $$m\times n$$ matrix, then the matrix associated with the linear transformation $$T_A$$ is $$A$$.  In other words, linear transformations $$T: \mathbb{R}^n\rightarrow \mathbb{R}^m$$ and $$n\times m$$ matrices are the sam thing!


