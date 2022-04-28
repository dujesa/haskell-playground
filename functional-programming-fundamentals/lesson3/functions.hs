import Data.List

add (x,y) = x+y
add' = \(x,y) -> x+y

curryAdd x y = x+y
curryAdd' = \x y -> x+y

typedAdd :: Num b => b -> b -> b
typedAdd x y = x + y

customType = [tail,init,reverse]
customArr = [(False,'0'),(True,'1')]
customTuple = ([False,True],['1','4'])

letterMap x = map (\x -> (head x, length x)) $ group x
