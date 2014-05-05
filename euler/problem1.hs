import Data.List

fizzBuzzSum :: Int -> Int
fizzBuzzSum n = sum [x | x <- [1..n-1], x `mod` 5 == 0 || x `mod` 3 == 0]
