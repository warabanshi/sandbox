import Data.List

intFactorization :: Int -> Int -> Int
intFactorization n divisor
    | n == 1 = divisor
    | n `mod` divisor == 0 = intFactorization (n `div` divisor) divisor
    | otherwise = intFactorization n (divisor+1)
