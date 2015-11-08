module nat

import bool
import eq
import serialize

data nat = O | S nat

isZero: nat -> bool
isZero O = true
isZero _ = false

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

--I'm allowing 0^0 to equal 1 for the sake of this code.
exp: nat -> nat -> nat
exp n O = (S O)
exp n (S m) = mult n (exp n m)

le: nat -> nat -> bool
le (S n) O = false
le O m = true
le (S n) (S m) = le n m

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O (S m) = false
eql_nat (S n) O = false
eql_nat (S n) (S m) = eql_nat n m

gt: nat -> nat -> bool
gt n m = not (le n m)

ge: nat -> nat -> bool
ge n m = or (gt n m) (eql_nat n m)

lt: nat -> nat -> bool
lt n m = not (ge n m)

--Given a natural number, n, this function returns the natural number
  --that is in the nth place of the Fibonocci Sequence.
fib: nat -> nat
fib (S O) = O
fib (S (S O)) = (S O)
fib (S n) = add (fib n) (fib (pred n))

instance eq nat where
 eql n1 n2 = eql_nat n1 n2

instance serialize nat where
 toString O = "Z"
 toString (S n) = "s" ++ (toString n)
