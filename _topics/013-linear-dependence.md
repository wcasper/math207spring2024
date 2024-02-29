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

Otherwise, the collection of vectors is called **linearly independent**.







