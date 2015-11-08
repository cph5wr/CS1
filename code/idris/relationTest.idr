module relationTest

import relation
import list
import bool
import Person

years': Nat
years' = relation.query plus 0 age gender people

totalHeight: Nat
--names = "Foo " ++ "Bar"
totalHeight = relation.query plus 0 height gender people

names: String
names = relation.query (++) "" name gender people

years'': Nat
years'' = relation.query2 people gender age plus 0

totalInches'': Nat
totalInches'' = relation.query2 people gender height mult 1

names'': String
names'' = relation.query2 people gender name (++) ""

countOne: a -> Nat
countOne v = 1

number: Nat
number = relation.query2 people gender countOne plus 0

count_rel: (list tuple) -> (tuple -> bool) -> Nat
count_rel rel sel = relation.query2 rel sel countOne plus 0

sum_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> Nat
sum_rel rel sel proj = relation.query2 rel sel proj plus 0

aveAge: pair Nat Nat
aveAge = mkPair 
           (relation.query2 people gender age plus 0) 
           (relation.query2 people gender countOne plus 0)
           
ve_rel:
    (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> pair Nat Nat
ave_rel rel sel proj =
   mkPair (sum_rel rel sel proj) (count_rel rel sel)

aveAge': pair Nat Nat
aveAge' = ave_rel people gender age
