concatenate :: [[a]] -> [a]
concatenate xss = [x | xs <- xss, x <- xs]

evenCustom = [x | x <- [1..10], even x]

mouseDeltas xs = zip xs (tail xs)

positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x', i) <- zip xs [0..n], x == x']
  where n = length xs - 1

pythagorean z = [(x, y, z) | x <- [1..z], y <- [1..z], x*x + y*y == z*z]

factors :: Int -> [Int]
factors x = [y | y <- [1..x-1], x`mod`y==0]

perfect :: Int -> [Int]
perfect x = [y | y <- [1..x-1], sum(factors y) == y]
