module boolTest

import bool

i: bool
i = id true

cf: bool
cf = constFalse true

ct: bool
ct = constTrue false

n: bool
n = not true

b1: bool
b1 = and true true

b2: bool
b2 = and true false

b3: bool
b3 = and false true

b4: bool
b4 = and false false

b5: bool
b5 = or true true

b6: bool
b6 = or true false

b7: bool
b7 = or false true

b8: bool
b8 = or false false

b9: bool
b9 = nand true true

b10: bool
b10 = nand true false

b11: bool
b11 = nand false true

b12: bool
b12 = nand false false

b13: bool
b13 = xor true true

b14: bool
b14 = xor true false

b15: bool
b15 = xor false true

b16: bool
b16 = xor false false
