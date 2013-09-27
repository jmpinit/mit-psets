# Problem Set 2
## Owen Trueblood
## Session L03

## Collaboration

For the following problems I worked alone using only the course materials from this term.
Owen Trueblood

$\pagebreak$

L03

-----

# Problem 1

_Collaboration:_ On problem 1, I collaborated with no one, and received help from no one.

----------

_Proof._

By induction.

Define:

$r(x) = \text{set of all numbers where } \\
	\text{1) the digits are equal to one another AND } \\
	\text{2) the number of digits is x}$

_for example:_ $r(3) = \{ 111, 222, 333, 444, 555, 666, 777, 888, 999 \}$

The induction hypothesis is $P(n) ::= \{n \in \mathfrak{N}, Q \in r(3^n) \mid 3^n \text{ divides evenly into Q} \}$

In the base case $P(0)$, $3^n \implies 3^0 \implies 1$. Because 1 divides every number with no remainder, $P(0)$ is true.

If X stands in for the digit (1, 2, ..., or 9) repeated in Q, then

$\sum_{i=1}^{3^n} X = (3^n)X \hfill (1)$

Because $3 \text{ divides a number evenly } \text{IFF} \text{ it divides the sum of its digits}$, and the previous equation shows that the sum of the digits has $3^n$ as a factor, $P(n+1) = 3^{n+1} | Q$ will always be true. Expounding on that argument, $3^n$ as a factor forces the truth of $P(n+1)$ because for n > 0 it has 3 as a factor. The base case is true, and $P(n) \implies P(n+1)$ is true, so by induction P(n) is proven. $\diamond$
