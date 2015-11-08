module listExample

import list
import food
import bool
import relation

chk: food
chk = mkFood "Chicken" 400 true

pasta: food
pasta = mkFood "Pasta" 450 true

sauce: food
sauce = mkFood "Sauce" 200 true

listfood: list food
listfood = chk :: pasta :: sauce :: nil

mapfood: list Nat
mapfood = map calories listfood

filterfood: list String
filterfood = map name (filter delicious listfood)

foldrfood: Nat
foldrfood = list.foldr plus 0 (map calories (filter delicious listfood))

queryfood: Nat
queryfood = relation.query plus 0 calories delicious listfood

query2food: Nat
query2food = relation.query2 listfood delicious calories plus 0 
 
