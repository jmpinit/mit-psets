Owen Trueblood

L03

-----

# Problem 2

_Collaboration:_ On problem 2, I collaborated with no one, and received help from Robert Sloan.  
----------

_What's bogus about the proof_: the proof does not address the uniqueness of the ordered sequence of primes that it shows exists for n + 1 in the inductive step. It says, "otherwise, $n + 1$ is not prime, which by definition means $n + 1 = km$ for some integers k, m such that $2 \leq k, m < n + 1$," but there may be several choices of k and m, each supposedly with their own unique sequences of primes. So the next statement that, "it follows immediately that by merging the unique prime sequences for k and m, in sorted order, we get a unique weakly decreasing sequence of primes whose product equals $n+1$," is not true. Combining two unique sequences does not necessarily give a new unique sequence, and so the proof should explain why the sequences of k and m are guaranteed to give a new unique sequence in order to be complete.
