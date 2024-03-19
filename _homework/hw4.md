---
layout: page
title: Homework 4
permalink: /homework/hw4
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

For each of the following, determine whether the given set of vectors is a basis for $$\mathbb{R}^n$$.
Carefully explain.

* (A)  $$S = \{(−6, −1)\}$$.
* (B)  $$S = \{(1, 1), (−1, 1)\}$$.
* (C)  $$S = \{(1, 2, 1), (3, −1, 2), (1, 1, −1)\}$$.
* (D)  $$S = \{(1, −1, 1), (2, 5, −2), (3, 11, −5)\}$$.
* (E)  $$S = \{(1, 1, −1, 2), (1, 0, 1, −1), (2, −1, 1, −1)\}$$.
* (F)  $$S = \{(1, 1, 0, 2), (2, 1, 3, −1), (−1, 1, 1, −2),(2, −1, 1, 2)\}$$.

# Problem 2

For each of the following, determine whether the given set of vectors is a basis for the vector space $$P_n(\mathbb{R})$$ of polynomials of degree $$\leq n$$ with real coefficients.
Carefully explain.

* (A) $$n = 1$$: $$S = \{2 − 5x, 3x, 7 + x\}$$.
* (B) $$n = 2$$: $$S = \{1 − 3x^2 , 2x + 5x^2 , 1 − x + 3x^2\}$$.
* (C) $$n = 2$$: $$S = \{5x^2 , 1 + 6x, −3 − x^2 \}$$.
* (D) $$n = 2$$: $$S = \{−2x + x^2 , 1 + 2x + 3x^2 , −1 − x^2 ,5x + 5x^2 \}$$.
* (E) $$n = 3$$: $$S = \{1 + x^3 , x + x^3 , x^2 + x^3 \}$$.
* (F) $$n = 3$$: $$S = \{1 + x + 2x^3 , 2 + x^2 + 3x^2 − x^3 ,−1 + x + x^2 − 2x^3 , 2 − x + x^2 + 2x^3 \}$$.

# Problem 3

For each of the following subspaces of $$\mathbb{R}^3$$, determine a basis for the subspace and find the dimension.

* (A) $$V = \{(x,y,z)\in\mathbb{R}^3: x − 3y + z = 0\}$$ 
* (B) $$V = \{(r,r-2s,3s-5r): r,s\in\mathbb{R}\}.$$

# Problem 4

The $$n$$'th Hermite polynomial $$h_n(x)$$ is a polynomial of degree $$n$$ which is a solution of the differential equation

$$y'' - 2xy' = -2ny.$$

* (A) Find the values of $$h_0(x)$$, $$h_1(x)$$, $$h_2(x)$$, and $$h_3(x)$$
* (B) Show that the polynomials you found in part (a) are a basis for $$P_3(\mathbb{R})$$

# Problem 5

Find a matrix representing each of the following linear transformations

$$T: \mathbb{R}^n\rightarrow\mathbb{R}^m$$

* (A) $$T(x_1, x_2) = (3x_1 − 2x_2, x_1 + 5x_2 )$$.
* (B) $$T(x_1, x_2) = (x_1 + 3x_2 , 2x_1 − 7x_2 , x_1 )$$.
* (C) $$T(x_1, x_2, x_3) = (x_1 − x_2 + x_3 , x_3 − x_1 )$$.
* (D) $$T(x_1, x_2, x_3) = x_1 + 5x_2 − 3x_3$$.
* (E) $$T(x_1, x_2, x_3) = (x_3 − x_1 , −x_1 , 3x_1 + 2x_3, 0)$$.

# Problem 6

Carefully show that each of the following maps is a linear transformation, or else carefully explain why it is not.

* (A) $$T: C^2(I)\rightarrow C^0(I)$$ given by

$$T(f) = a_2(x)f''(x) + a_1(x)f'(x) + a_0(x)f(x)$$

where $$a_0(x)$$, $$a_1(x)$$, and $$a_2(x)$$ are vectors in $$C^0(I)$$
* (B) $$T: C^0([a,b])\rightarrow \mathbb{R}$$ given by

$$T(f) = \int_a^b f(x)dx,$$

* (C) $$T: P_3(\mathbb{R})\rightarrow \mathbb{R}$$ given by

$$T(a + bx + cx^2 + dx^3) = a+b+c+1.$$

* (D) $$T: M_2(\mathbb{R})\rightarrow M_2(\mathbb{R})$$ given by

$$T(A) = A^2.$$

* (E) $$T: M_2(\mathbb{R})\rightarrow M_2(\mathbb{R})$$ given by

$$T(A) = A + A^T.$$

* (F) $$T: C^2((-3,3))\rightarrow M_2(\mathbb{R})$$ given by

$$T(f) = \left\lbrace\begin{array}{cc} f''(0) & f(0)-f'(1)\\ f'(2) & 0\end{array}\right).$$


