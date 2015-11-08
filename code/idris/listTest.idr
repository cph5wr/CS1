module listTest

import nat
import bool
import list

l0: list nat
l0 = nil

l1: list nat
l1 = (O :: nil)

l2: list nat
l2 = ((S (S O)) :: ((S O) :: nil))

l3: list nat
l3 = ((S O) :: ((S (S (S O))) :: (O :: nil)))

l4: list nat
l4 = (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

ln0: nat
ln0 = list.length l0

ln1: nat
ln1 = list.length l3

ap0: list nat
ap0 = l0 ++ l2

ap1: list nat
ap1 = l2 ++ l3

ml4: list bool
ml4 = map evenb l4

fl4: list nat
fl4 = filter evenb l4
