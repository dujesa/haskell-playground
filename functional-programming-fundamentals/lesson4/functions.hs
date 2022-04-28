signum' n | n < 0 = -1
          | n == 0 = 0
          | otherwise = 1

abs' x  | x >= 0 = x
        | otherwise = -x
