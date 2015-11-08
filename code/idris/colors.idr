module colors

import bool

import pair

%default total

data color = red | blue | green | yellow | cyan | magenta

complement: color -> color
complement red = cyan
complement blue = yellow
complement green = magenta
complement yellow = blue
complement magenta = green
complement cyan = red

additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false

subtractive: color -> bool
subtractive a = not (additive a)

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair blue yellow) = true
complements (mkPair yellow blue) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair _ _) = false

mixink: pair color color -> color
mixink (mkPair magenta cyan) = blue
mixink (mkPair cyan magenta) = blue
mixink (mkPair cyan yellow) = green
mixink (mkPair yellow cyan) = green
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta yellow) = red
