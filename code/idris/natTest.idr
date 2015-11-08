module natTest

import nat
import bool

a1: nat
a1 = add (S (S (S O))) (S (S (S (S O))))

m1: nat
m1 = mult (S (S (S O))) (S (S (S (S O))))

f1: nat
f1 = fact (S (S (S O)))

s1: nat
s1 = sub (S (S (S O))) (S (S O))

e1: nat
e1 = exp (S (S (S O))) (S (S O))

--Given a natural number, n, the function fib returns the natural number
  --that is in the nth place of the Fibonocci Sequence.
fi: nat
fi = fib (S (S (S (S (S O)))))
