---
layout: page
title: Basis and Dimension
---

Armed with both the notion of a spanning set and linear independence, we have a real sense of what it means to have a minimal collection of elements of a vector space from which everything can be made.
We will call a set with these properties a *basis*.


**Definition:** If $$V$$ is a finite dimensional vector space, we call the size of a basis (and hence every basis) of $$V$$ the **dimension** of $$V$$, and denote it by $$\dim(V)$$.


**Theorem:**  If $$S$$ is a finite set of vectors in $$V$$ that spans $$V$$, then $$S$$ contains a basis for $$V$$.  In particular $$S$$ has at least $$n$$ elmements.

**Proof:** Suppose that $$S = \{\mathbf v_1,\dots,\mathbf v_r\}$$ is a finite set of vectors which spans $$V$$.  If $$S$$ is linearly dependent, then we are done.
Otherwise, there exists nontrivial linear combination equal to the zero vector $$a_1\mathbf v_1 + \dots + a_r\mathbf v_r= \mathbf 0$$.
Then there exists some $$j$$ with $$a_j\neq 0$$ and it follows that

$$\mathbf v_j = (-a_1/a_j)\mathbf v_1 + \dots + (-a_{j-1}/a_j)\mathbf v_{j-1}+ (-a_{j+1}/a_j)\mathbf v_{j+1} + (-a_r/a_j)\mathbf v_r.$$

It follows that $$S$$ and $$S\backslash\{\mathbf v_j\}$$ have the same span.  In partiicular, it spans $$V$$.
Continuing in this way, we can throw out vectors until we end up with a subset $$S_0$$ of $$S$$ which spans $$V$$ but which has no proper subset spanning $$V$$.
The above calculations imply that $$S_0$$ is linearly dependent.
:black_square_button:

**Corollary:**  If $$\dim(V) = n$$, then any set of $$n$$ spanning vectors is automatically a basis.  In other words, we get that they are linearly independent for free!


**Theorem:**  If $$S$$ is a finite set of vectors in $$V$$ that is linearly independent, then $$S$$ can be extended to a basis for $$V$$.  In particular $$S$$ has at most $$n$$ elmements.

**Proof:**  If $$S = \{\mathbf v_1,\dots,\mathbf v_r\}$$ does not span $$V$$, then there exists $$\mathbf v_{r+1}\in V$$ which is not in the span of $$S$$.

Then if

$$a_1\mathbf v_1 + a_2\mathbf v_2 + \dots + a_{r+1}\mathbf v_{r+1} = \mathbf 0$$

we must have $$a_{r+1}=0$$ , since otherwise

$$\mathbf v_{r+1} = (-a_1/a_{r+1})\mathbf v_1 + \dots  + (-a_r/a_{r+1})\mathbf v_r$$

which is impossible since we assumed $$\mathbf v_{r+1}$$ was not in the span.
This means that

$$a_1\mathbf v_1 + a_2\mathbf v_2 + \dots + a_{r}\mathbf v_{r} = \mathbf 0$$

and since $$S$$ is linearly independent, it follows that $$a_1,\dots,a_r=0$$.
Therefore $$S\cup\{a_{r+1}\}$$ is linearly independent.

Continuing this way, either we eventually get a linearly independent set which spans $$V$$ or else we can get a linearly independent set with $$n+1$$ elements, where $$n=\dim(V)$$.
However, by the argument in the proof that two basis must have the same dimension, we know that this cannot be linearly independent.
:black_square_button:

**Corollary:**  If $$\dim(V) = n$$, then any set of $$n$$ linearly independent vectors is automatically a basis.  In other words, we get that they span for free!


