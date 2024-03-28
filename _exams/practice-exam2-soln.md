---
layout: page
title: Practice Exam 2 Solutions
permalink: /exams/practice-exam2-soln
---

### Directions
Solve the following problems and type up your solutions.  
In the actual exam, you will be allowed scratch paper and a pencil, but no calculator or note sheet.


**Problem 1:** 

For each of the following, prove that the set is a vector space, or carefully explain why it is not.

* (A)  $$W = \{ A\in M_2(\mathbb R): A = A^T\}.$$
* (B)  $$W = \{ (w,x,y,z) : x + y + z = z \}.$$
* (C)  $$W = \{ p(x)\in P_2(\mathbb R) : p(2x) = 2p(x)\}$$
* (D)  $$W = \{ p(x)\in P_2(\mathbb R) : p'(0) = 0\}$$

**Solution:**

* (A) This is a subset of $$M_2(\mathbb R)$$, so we need to check our three properties.
  1. Since the zero matrix $$\left(\begin{array}{cc}0 & 0\\0 & 0\end{array}\right)$$ is its own transpose, $$W$$ contains the zero vector.
  2. Suppose that $$A,B\in W$$.  Then $$A^T = A$$ and $$B^T = B$$, and therefore $$(A+B)^T = A^T + B^T = A + B$$, so $$(A+B)^T =  (A+B)$$.  Thus $$A+B\in W$$, and this shows we are closed under vector addition.
  3. Suppose that $$A\in W$$ and $$c\in \mathbb{R}$$.  Then $$A^T = A$$, and therefore $$(cA)^T = cA^T = cA$$, so $$(cA)^T =  cA$$.  Thus $$cA\in W$$, and this shows we are closed under scalar multiplication.

* (B) This is a subset of $$\mathbb R^4$$, so we need to check our three properties.
  1. Since $$0 + 0 + 0=0$$, $$W$$ contains $$(0,0,0,0)$$.
  2. Suppose that $$(a,b,c,d),(w,x,y,z)\in W$$.  Then $$a + b + c = c$$ and $$w + x + y = y$$.  Furthermore, $$(a,b,c,d)+(w,x,y,z)=(a+w,b+x,c+y,d+z)$$.  Since $$(a+w)+(b+x) + (c+y) = (a+b+c)+(w+x+y) = c+y$$, it follows that $$(a,b,c,d)+(w,x,y,z)$$ is in $$W$$, and this shows we are closed under vector addition.
  3. Suppose that $$(a,b,c,d)\in W$$ and $$k\in \mathbb{R}$$.  Then $$a + b + c = c$$, and $$k(a,b,c,d) = (ka,kb,kc,kd)$$.  Moreover, $$ka+kb+kc = k(a+b+c) = kc$$, so $$k(a,b,c, d)\in W$$.  This shows we are closed under scalar multiplication.

* (C) This is a subset of $$P_2(\mathbb R)$$, so we need to check our three properties.
  1. Since the zero polynomial $$p(x) = 0$$ satisfies $$p(2x) = 0= 2\cdot0 = 2p(x), $$W$$ contains the zero vector.
  2. Suppose that $$p(x),q(x)\in W$$.  Then $$p(2x) = 2p(x)$$ and $$q(2x) = 2q(x)$$.  Let $$r(x) = p(x) + q(x)$$.  Then $$r(2x) = p(2x) + q(2x) = 2p(x)+2q(x) = 2r(x)$$, so $$r(x)\in W$$.  Thus $$p(x) +q(x)\in W$$, and this shows we are closed under vector addition.
  3. Suppose that $$p(x)\in W$$ and $$c\in \mathbb{R}$$.  Then $$p(2x) = 2p(x)$$. Let $$r(x) = cp(x)$$.  Then $$r(2x) = cp(2x) = c2p(x) = 2r(x)$$, and therefore $$r(x)\in W$$.  Thus $$cp(x)\in W$$, and this shows we are closed under scalar multiplication.

* (D) This is a subset of $$P_2(\mathbb R)$$, so we need to check our three properties.
  1. Since the zero polynomial $$p(x) = 0$$ satisfies $$p'(0) = 0' = 0, $$W$$ contains the zero vector.
  2. Suppose that $$p(x),q(x)\in W$$.  Then $$p'(0) = 0$$ and $$q'(0) = 0$$.  Let $$r(x) = p(x) + q(x)$$.  Then $$r'(0) = p'(0) + q'(0) = 0 + 0 = 0$$, so $$r(x)\in W$$.  Thus $$p(x) +q(x)\in W$$, and this shows we are closed under vector addition.
  3. Suppose that $$p(x)\in W$$ and $$c\in \mathbb{R}$$.  Then $$p'(0) = 0$$. Let $$r(x) = cp(x)$$.  Then $$r'(0) = cp'(0) = c0 = 0$$, and therefore $$r(x)\in W$$.  Thus $$cp(x)\in W$$, and this shows we are closed under scalar multiplication.


**Problem 2:** 

Consider the set of matrices in $$M_3(\mathbb{R})$$

$$S = \left\lbrace
\left(\begin{array}{ccc} 2 & 3 & 4\\ -2 & 1 & 3\\ 1 & 0 & -3\end{array}\right),\ \ 
\left(\begin{array}{ccc} 1 &-1 &-2\\  0 & 2 & 0\\ 3 & 1 & -3\end{array}\right),\ \ 
\left(\begin{array}{ccc} 2 & 6 & 1\\  0 &-3 & 8\\ 2 & 5 &  1\end{array}\right)
\right\rbrace$$

* (A) Show that 

$$\left(\begin{array}{ccc} 6 & 7 & 1\\ -2 & 2 &11\\-3 & 7 & -8\end{array}\right)$$

is in the span of $$S$$.

* (B) Determine if

$$\left(\begin{array}{ccc} 1 &-2 & 5\\ 2 & -1 &11\\-1  & 1 &  2\end{array}\right)$$

is in the span.

**Solution:**

* (A) We write

$$\left(\begin{array}{ccc} 6 & 7 & 1\\ -2 & 2 &11\\ 9 & 7 & -8\end{array}\right)
 x\left(\begin{array}{ccc} 2 & 3 & 4\\ -2 & 1 & 3\\ 1 & 0 & -3\end{array}\right)
+y\left(\begin{array}{ccc} 1 &-1 &-2\\  0 & 2 & 0\\ 3 & 1 & -3\end{array}\right)
+z\left(\begin{array}{ccc} 2 & 6 & 1\\  0 &-3 & 8\\ 2 & 5 &  1\end{array}\right),$$

which gives us

$$\left(\begin{array}{ccc} 6 & 7 & 1\\ -2 & 2 &11\\ 9 & 7 & -8\end{array}\right)
  \left(\begin{array}{ccc} 2x+y+2z & 3x-y+6z & 4x-2y+z\\ -2x & x+2y-3z & 3x+8z\\ x+3y+2z & y+5z & -3x-3y+z\end{array}\right)$$

This results in a system of equations

$$\left\lbrace\begin{array}{cc}
2x+y+2z &= 6\\
3x-y+6z &= 7\\
4x-2y+z &= 1\\
-2x     &=-2\\
x+2y-3z &= 2\\
3x+8z   &=11\\
x+3y+2z &= 9\\
y+5z    &= 7\\
-3x-3y+z &= -8
\end{array}\right.$$

Solving this system, we get $$x=1$$, $$y=2$$, and $$z=1$$.
Thus 

$$\left(\begin{array}{ccc} 6 & 7 & 1\\ -2 & 2 &11\\ 9 & 7 & -8\end{array}\right)
   \left(\begin{array}{ccc} 2 & 3 & 4\\ -2 & 1 & 3\\ 1 & 0 & -3\end{array}\right)
+ 2\left(\begin{array}{ccc} 1 &-1 &-2\\  0 & 2 & 0\\ 3 & 1 & -3\end{array}\right)
+  \left(\begin{array}{ccc} 2 & 6 & 1\\  0 &-3 & 8\\ 2 & 5 &  1\end{array}\right),$$

which shows that our matrix is a linear combination of the elements of $$S$$ and therefore in the span of $$S$$.

* (B) We write

$$\left(\begin{array}{ccc} 1 &-2 & 5\\ 2 & -1 &11\\-1  & 1 &  2\end{array}\right)
 x\left(\begin{array}{ccc} 2 & 3 & 4\\ -2 & 1 & 3\\ 1 & 0 & -3\end{array}\right)
+y\left(\begin{array}{ccc} 1 &-1 &-2\\  0 & 2 & 0\\ 3 & 1 & -3\end{array}\right)
+z\left(\begin{array}{ccc} 2 & 6 & 1\\  0 &-3 & 8\\ 2 & 5 &  1\end{array}\right),$$

which gives us

$$\left(\begin{array}{ccc} 1 &-2 & 5\\ 2 & -1 &11\\-1  & 1 &  2\end{array}\right)
  \left(\begin{array}{ccc} 2x+y+2z & 3x-y+6z & 4x-2y+z\\ -2x & x+2y-3z & 3x+8z\\ x+3y+2z & y+5z & -3x-3y+z\end{array}\right)$$

This results in a system of equations

$$\left\lbrace\begin{array}{cc}
2x+y+2z &= 1\\
3x-y+6z &=-2\\
4x-2y+z &= 5\\
-2x     &= 2\\
x+2y-3z &=-1\\
3x+8z   &=11\\
x+3y+2z &=-1\\
y+5z    &= 1\\
-3x-3y+z &= 2
\end{array}\right.$$

Subtracting the fifth and seventh equations gives $$y+5z=0$$, but this contradicts th eighth equation.  This shows the system of equations has **no solution**, so the given matrix is not a linear combination of the elements of $$S$$.
In  other words, it is not in the span of $$S$$.

**Problem 3:**

For each value of the set $$S$$, determine whether the set $$S$$ is linearly independent or dependent.
If it is independent, carefully prove this.
If it is dependent, give an explicit example of a non-trivial linear dependency.

* (A) $$S\subseteq M_2(\mathbb{R})$$ given by

$$S = \left\lbrace
\left(\begin{array}{cc} -2 & 2\\ -2 & 0\end{array}\right),
\left(\begin{array}{cc}  1 &-3\\  3 & 1\end{array}\right),
\left(\begin{array}{cc}  0 &-1\\ -1 & 1\end{array}\right),
\left(\begin{array}{cc}  1 & 0\\  0 & 4\end{array}\right)
\right\rbrace$$



* (B) $$S\subseteq P_2(\mathbb{R})$$ given by

$$S = \{1 + x, 1-x, x^2 + x -3\}$$

* (C) $$S\subseteq C^2(\mathbb{R})$$ given bya

$$S = \{e^x, e^{-x}, \sinh(x)\}$$


**Solution:**

* (A) We write

$$
 a\left(\begin{array}{cc} -2 & 2\\ -2 & 0\end{array}\right)
+b\left(\begin{array}{cc}  1 &-3\\  3 & 1\end{array}\right)
+c\left(\begin{array}{cc}  0 &-1\\ -1 & 1\end{array}\right)
+d\left(\begin{array}{cc}  1 & 0\\  0 & 4\end{array}\right)
= \left(\begin{array}{cc}  0 & 0\\  0 & 0\end{array}\right)$$

from which we get

$$
 \left(\begin{array}{cc} -2a+b+d & 2a-3b-c\\ -2a+3b-c& b+c+4d\end{array}\right)
= \left(\begin{array}{cc}  0 & 0\\  0 & 0\end{array}\right)$$

This gives us a system of equations

$$\left\lbrace\begin{array}{cc}
-2a+b+d & = 0\\
2a-3b-c & = 0\\
-2a+3b-c& = 0\\
b+c+4d &= 0
\end{array}\right.$$

The associated augmented matrix is

$$\left[\begin{array}{cccc|c}
-2 & 1 & 0 & 1 & 0\\
 2 &-3 &-1 & 0 & 0\\
-2 & 3 &-1 & 0 & 0\\
 0 & 1 & 1 & 4 & 0
\end{array}\right].$$

The row reduced form is

$$\left[\begin{array}{cccc|c}
 1 & 0 & 0 & 0 & 0\\
 0 & 1 & 0 & 0 & 0\\
 0 & 0 & 1 & 0 & 0\\
 0 & 0 & 0 & 1 & 0
\end{array}\right].$$

so there are no free variables.
This means that the only solution is the trivial solution $$a=0,b=0,c=0,d=0$$.
Therefore the matrices are linearly independent.

* (B) The Wronskian is

$$W(1 + x, 1-x, x^2 + x -3) = 
= \det\left[\begin{array}{ccc} 1+x & 1-x & x^2 + x - 3\\ 1 & -1 & 2x+1\\ 0 & 0 & 2\end{array}\right] = -4.$$

Therefore the polynomials are linearly independent.

* (C) 

$$S = \{e^x, e^{-x}, \sinh(x)\}$$

Since

$$\sinh(x) = \frac{1}{2}e^x - \frac{1}{2}e^{-x},$$

we have a linear dependency

$$\sinh(x) - \frac{1}{2}e^x + \frac{1}{2}e^{-x} = 0.$$

This means that the set $$S$$ of functions is linearly dependent.


**Problem 4:**

For each value of the set $$S$$, determine whether the set $$S$$ is a basis.
Carefully explain why or why not.

* (A) $$S\subseteq\mathbb{R}^3$$ given by

$$S = \{(-2,0,3),(-3,0,0)\}$$

* (B) $$S\subseteq\mathbb{R}^3$$ given by

$$S = \{(-2,0,3),(-3,0,0),(4,1,1),(5,4,3)\}$$

* (C) $$S\subseteq P_3(\mathbb{R})$$ given by

$$S = \{2x -1, 3x-2, x^2 + 1, x^3 + 2x + 1\}.$$

**Solution:**

* (A) The set $$S$$ contains two elements.  Since $$\mathbb{R}^3$$ is three-dimensional, $$S$$ cannot be a basis.

* (B) The set $$S$$ contains four elements.  Since $$\mathbb{R}^3$$ is three-dimensional, $$S$$ cannot be a basis.

* (C) Th Wronskian is

$$W(2x -1, 3x-2, x^2 + 1, x^3 + 2x + 1) = 12,$$

so the functions are linearly independent.  Since $$P_3(\mathbb{R})$$ is four dimensional and $$S$$ has four elements, a theorem from class tells us that $$S$$ also spans $$P_3(\mathbb{R})$$.  Thus $$S$$ is a basis.


**Problem 5:**

Suppose that $$T: V\rightarrow W$$ is a linear transformation.
Prove that the image

$$\text{img}(T) = \{T(\mathbf v): \mathbf v\in V\}$$

is a subspace of $$W$$.

**Solution:**

We need to show the three properties.

1.  We need to show that the zero vector is in $$\text{img}(T)$$.  Put another way, we need to show that there is a vector $$\mathbf v\in V$$ with the property that $$T(\mathbf v) = \mathbf 0$$.  We proved in class that $$T(\mathbf 0)=\mathbf 0$$, so $$\mathbf 0$$ must belong to $$\text{img}(T)$$.
2.  We need to show that $$\text{img}(T)$$ is closed under vector addition.  Suppose that $$\mathbf w_1,\mathbf w_2\in \text{img}(T)$$.  Then there exists $$\mathbf v_1,\mathbf v_2\in V$$ with $$T(\mathbf v_1) = \mathbf w_1$$ and $$T(\mathbf v_2) = \mathbf w_2$$.  We need to show that $$\mathbf w_1+\mathbf w_2$$ belongs to $$\text{img}(T)$$, ie. that there exists some $$\mathbf v\in V$$ with $$T(\mathbf v) = \mathbf w_1+\mathbf w_2$$.  Since $$T$$ is linear, $$T(\mathbf v_1+\mathbf v_2) = T(\mathbf v_1) + T(\mathbf v_2) = \mathbf w_1 + \mathbf w_2$$.  This proves that $$\text{img}(T)$$ is closed under vector addition.
3.  We need to show that $$\text{img}(T)$$ is closed under scalar multiplication.  Suppose that $$\mathbf w\in \text{img}(T)$$ and $$c\in\mathbb{R}$$.  Then there exists $$\mathbf v\in V$$ with $$T(\mathbf v) = \mathbf w$$.  We need to show that $$c\mathbf w$$ belongs to $$\text{img}(T)$$, ie. that there exists some $$\mathbf v\in V$$ with $$T(\mathbf v) = c\mathbf w$$.  Since $$T$$ is linear, $$T(c\mathbf v) = cT(\mathbf v) = c\mathbf w$$.  This proves that $$\text{img}(T)$$ is closed under scalar multiplication.
Puing this all together, we get that $$\text{img}(T)$$ is a subspace of $$W$$.

**Problem 6:**

Let $$I = (-4,3)$$.

* (A) Show that the map 

$$T: C^2(I)\rightarrow M_2(\mathbb{R}),\ \ T(f(x)) = \left(\begin{array}{cc}f'(1) & f(0)\\ f''(2) & 0\end{array}\right)$$

is a linear transformation.

* (B) Carefully explain why the map 

$$F: C^2(I)\rightarrow \mathbb{R}^2,\ \ T(f(x)) = (2f(0)f'(0), f''(2))$$

is not a linear transformation.

**Solution:**

* (A)  We see that

$$\begin{align}T(f(x) + g(x))
 &= \left(\begin{array}{cc}f'(1)+g'(1) & f(0)+g(0)\\ f''(2)+g''(2) & 0\end{array}\right)\\
 &= \left(\begin{array}{cc}f'(1) & f(0)\\ f''(2) & 0\end{array}\right) + \left(\begin{array}{cc}g'(1) & g(0)\\ g''(2) & 0\end{array}\right)\\
 &= T(f(x)) + T(g(x)),
\end{align}$$

and also

$$\begin{align}T(cf(x))
 &= \left(\begin{array}{cc}cf'(1) & cf(0)\\ cf''(2) & 0\end{array}\right)\\
 &= c\left(\begin{array}{cc}f'(1) & f(0)\\ f''(2) & 0\end{array}\right)\\
 &= cT(f(x)).
\end{align}$$

This shows that $$T$$ is a linear transformation.

* (B)  We see that for $$f(x) = x$$ and $$g(x) = 5f(x)$$

$$T(5f(x)) = T(g(x)) = (2g(0)g'(0), g''(2)) = (2(5f(0))(5f'(0)), 5f''(2)) = (50f(0)f'(0),5f''(2))$$

However

$$5T(f(x)) = 5(2f(0)f'(0), f''(2)) = (10f(0)f'(0),5f''(2)).$$

Since $$5T(f(x))\neq T(5f(x))$$, this proves that $$T$$ is not a linear transformation.

**Problem 7:**

* (A) Determine for which values of $$r$$ the function $$y = e^{rt}$$ is a solution of 

$$y'' + 3y' -4y = 0$$

* (B) Prove that the set of all solutions of $$y'' + 3y' -4y = 0$$ is a vector space.

* (C) Show that the solutions that you found in (A) are linearly independent


**Solution:**

* (A) Let $$y=e^{rt}$$.  then 

$$y'' + 3y' -4y =(e^{rt})'' + 3(e^{rt})' - 4e^{rt} = (r^2+3r-4)e^{rt}.$$

Since this must be zero, we have $$r^2+3r-4=0$$, so $$r=4$$ or $$r=-1$$.
This gives us the two solutions $$y=e^{4t}$$ and $$y=e^{-t}$$.

* (B) We did this kind of thing in class.

* (C) Take the Wronskian and show it isn't zero.







