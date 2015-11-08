module hwTest.idr

import hw
import bool
import option
import pair
import list
import nat
import eq
import serialize
import ite

a: set nat
a = mkSet nil

b: set nat
b = mkSet (O::nil)

c: set nat
c = mkSet ((S O)::O::nil)

d: set nat
d = mkSet (O::(S O)::nil)

la: list nat
la = nil

lb: list nat
lb = (O::nil)

lc: list nat
lc = ((S O)::O::nil)

isEa: bool
isEa = isEmpty a

isEb: bool
isEb = isEmpty b

set_inserta: set nat
set_inserta = set_insert O a

set_insertb: set nat
set_insertb = set_insert O b

list_removela: list nat
list_removela = list_remove O la

list_removelb: list nat
list_removelb = list_remove O lb

list_removelc: list nat
list_removelc = list_remove (S (S O)) lc

set_removea: set nat
set_removea = set_remove (S O) a

set_removec: set nat
set_removec = set_remove (S O) c

set_cardinalitya: nat
set_cardinalitya = set_cardinality a

set_cardinalityb: nat
set_cardinalityb = set_cardinality b

set_membera: bool
set_membera = set_member O a

set_memberc: bool
set_memberc = set_member (S O) c

combinelalb: list nat
combinelalb = combine la lb

combinelblc: list nat
combinelblc = combine lb lc

set_unionab: set nat
set_unionab = set_union a b

set_unionbc: set nat
set_unionbc = set_union b c

intersectlalb: list nat
intersectlalb = intersect la lb

intersectlblc: list nat
intersectlblc = intersect lb lc

set_intersectionab: set nat
set_intersectionab = set_intersection a b

set_intersectionbc: set nat
set_intersectionbc = set_intersection b c

list_differencelalb: list nat
list_differencelalb = list_difference la lb

list_differencelbla: list nat
list_differencelbla = list_difference lb la

list_differencelclb: list nat
list_differencelclb = list_difference lc lb

set_differenceab: set nat
set_differenceab = set_difference a b

set_differenceba: set nat
set_differenceba = set_difference b a

set_differencecb: set nat
set_differencecb = set_difference c b

set_foralla: bool
set_foralla = set_forall evenb a

set_forallb: bool
set_forallb = set_forall evenb b

set_forallc: bool
set_forallc = set_forall evenb c

set_existsa: bool
set_existsa = set_exists evenb a

set_existsb: bool
set_existsb = set_exists evenb b

set_existsc: bool
set_existsc = set_exists evenb c

set_witnessa: option nat
set_witnessa = set_witness evenb a

set_witnessb: option nat
set_witnessb = set_witness evenb b

set_witnessc: option nat
set_witnessc = set_witness evenb c 

set_productab: set (pair nat nat)
set_productab = set_product a b

set_productbc: set (pair nat nat)
set_productbc = set_product b c

eql_setab: bool
eql_setab = eql_set a b

eql_setcd: bool
eql_setcd = eql_set c d

