f (x:xs) = [x] ++ y ++ f zs
  where 
    y = show (length [a | a <- xs, a == x] + 1)
    zs = [b | b <- xs, b /= x]
f xs = xs

first (x:xs) = x
