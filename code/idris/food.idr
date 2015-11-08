module food

import bool

||| A record type that is equivalent to:
||| (data food = mkFood String bool Nat)
||| but where we give names to fields.
||| A food has a name, a number of calories,
||| and is or is not delicious.
record food where
    constructor mkFood
    name : String
    calories : Nat
    delicious : bool

-- An example value of type Food
f: food
f = mkFood "Chicken" 400 true

-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the name of food f.
n: String
n = name f
-- expect "Chicken"

-- Here we get the number of calories of food f.
c: Nat
c = calories f
-- expect 400

-- Here we get true if food f is delicious and false if food f is not delicious.
d: bool
d = delicious f
