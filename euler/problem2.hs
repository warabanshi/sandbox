import Data.List

fib :: Int -> Int -> Int -> Int
fib m n x
    | n > 4000000 = x
    | even n = fib n (m+n) (x+n)
    | otherwise = fib n (m+n) x
