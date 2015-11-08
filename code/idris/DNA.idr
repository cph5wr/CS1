module DNA

import bool
import pair
import nat
import list
import ite

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base ->  list base
complement_strand l = map complement_base l

strand1: list (pair base base) -> list base
strand1 l = map fst l

strand2: list (pair base base) -> list base
strand2 l = map snd l

--I made these lines of code to make "complete".
completebase: base -> pair base base
completebase b1 = mkPair b1 (complement_base b1)

complete: list base -> list (pair base base)
complete l = map completebase l

--I made these lines of code to make "countBase".
isEqual: base -> base -> Nat
isEqual A A = 1
isEqual T T = 1
isEqual C C = 1
isEqual G G = 1
isEqual _ _ = 0

countBase: list base -> base -> Nat
countBase l c = list.foldr plus 0 (map (isEqual c) l)
