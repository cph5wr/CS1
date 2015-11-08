module DNATest

import bool
import pair
import list
import DNA

comp1: base
comp1 = complement_base A

comp2: base
comp2 = complement_base T

comp3: base
comp3 = complement_base C

comp4: base
comp4 = complement_base G

s1: list base
s1 = A::T::C::G::C::T::nil

comps1: list base
comps1 = complement_strand s1

compsnil: list base
compsnil= complement_strand nil

sp: list (pair base base)
sp = (mkPair A T)::(mkPair G C)::(mkPair G C)::(mkPair T A)::nil

strand1sp: list base
strand1sp = strand1 sp

strand1nil: list base
strand1nil = strand1 nil

strand2sp: list base
strand2sp = strand2 sp

strand2nil: list base
strand2nil = strand2 nil

completes1: list (pair base base)
completes1 = complete s1

completenil: list (pair base base)
completenil = complete nil

countBases1: Nat
countBases1 = countBase s1 C
