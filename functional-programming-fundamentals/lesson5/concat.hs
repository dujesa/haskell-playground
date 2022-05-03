concatenate :: [[a]] -> [a]
concatenate xss = [x | xs <- xss, x <- xs]

evens = [x | x <- [1..10], even x]

factors n = [x | x <- [1..n], n `mod` x == 0]
prime n = factors n == [1,n]
primes n = [x | x <- [2..n], prime x]
