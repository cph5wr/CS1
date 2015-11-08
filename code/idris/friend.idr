module friend

import bool

|||A friend is someone who is or isn't trustworthy, who has a name, and who has an age in years
data friend = mkFriend bool String Nat

jeff: friend
jeff = mkFriend true "Jeff" 19

lucas: friend
lucas = mkFriend true "Lucas" 19

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> String
getName (mkFriend b s n) = s

getTrust: friend -> bool
getTrust (mkFriend b s n) = b
