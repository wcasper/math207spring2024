---
layout: page
title: Basis and Dimension
---

Armed with both the notion of a spanning set and linear independence, we have a real sense of what it means to have a minimal collection of elements of a vector space from which everything can be made.
We will call a set with these properties a *basis*.

**Definition:** A **basis** for a vector space is a set of vectors which simultaneously spans the space and is linearly independent.


**Example:** The set $$\{(1,0), (0,1)\}$$ is a basis for the vector space $$\mathbb R^2$$.

**Example:** The set $$\{(1,1), (-1,1)\}$$ is a basis for the vector space $$\mathbb R^2$$.


Sometimes a basis can have infinitely many elements.

**Example:** The set $$\{1,x,x^2,x^3,x^4,\dots\}$$ is a basis for the vector space of all polynomials with real coefficients.

**Definition:** A vector space is called **finite dimensional** if it has a finite basis.  If every basis has infinitely many vectors, the vector space is called **infinite dimensional**.


**Theorem:**  If $$B$$ and $$C$$ are each a basis for the same vector space $$V$$, then there exists a bijection from $$B$$ to $$C$$.  In particular if $$B$$ or $$C$$ is finite, then both are and they both have the same number of elements.


**Definition:** If $$V$$ is a finite dimensional vector space, we call the size of a basis (and hence every basis) of $$V$$ the **dimension** of $$V$$, and denote it by $$\dim(V)$$.

**Theorem:**  If $$\dim(V) = n$$, then any set of $$n$$ linearly independent vectors is automatically a basis.  In other words, we get that they span for free!

**Theorem:**  If $$\dim(V) = n$$, then any set of $$n$$ spanning vectors is automatically a basis.  In other words, we get that they are linearly independent for free!

**Theorem:**  If $$S$$ is a set of vectors in $$V$$ that spans $$V$$, then $$S$$ contains a basis for $$V$$.  In particular $$S$$ has at least $$n$$ elmements.

**Theorem:**  If $$S$$ is a set of vectors in $$V$$ that is linearly independent, then $$S$$ can be extended to a basis for $$V$$.  In particular $$S$$ has at most $$n$$ elmements.


