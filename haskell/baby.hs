doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x >= 100
                then x
                else x * 2

length' s = sum [1|_ <- s]

-- factorial n = product [1..n]

circumference :: Float -> Float
circumference f = 2 * pi * f

lucky :: Int -> String
lucky 7 = "lucky star"
lucky x = "don't match"

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

head' :: [a] -> a
head' [] = error "invalid argument"
head' (x:_) = x

firstLetter :: String -> String
firstLetter "" = "empty string specified"
firstLetter all@(x:xs) = "First letter of " ++ all ++ " is " ++ [x]

bmiTell :: Double -> String
bmiTell bmi
    | bmi <= 18.5 = "you are too thin"
    | bmi <= 22.5 = "good condition"
    | bmi <= 25.0 = "little fat"
    | otherwise = "you die"

bmiTell' :: Double -> Double -> String
bmiTell' weight height
    | bmi <= 18.5 = show bmi ++ ": you are too thin"
    | bmi <= 22.5 = show bmi ++ ": good condition"
    | bmi <= 25.0 = show bmi ++ ": little fat"
    | otherwise = show bmi ++ ": you die"
    where bmi = weight / height ^ 2

cylinder :: Double -> Double -> Double
cylinder r h = 
    let sideArea = 2 * r * pi * h
        topArea = r ^ 2 * pi
    in sideArea + 2 * topArea

fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "empty list detected"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate' :: a -> Int  -> [a]
replicate' x n
    | n <= 0    = []
    | otherwise = x : replicate' x (n-1)

take' :: Int -> [a] -> [a]
take' n _
    | n == 0    = []
take' _ []      = []
take' n (x:xs)  = x : take' (n-1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

zip' :: [a] -> [b] -> [(a,b)]
zip' [] _   = []
zip' _ []   = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

divTen :: (Floating a) => a -> a
divTen = (10 /)

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
    where g x y = f y x

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs)
    | f x       = x : filter' f xs
    | otherwise = filter' f xs

largestDiv :: Integer
largestDiv = head (filter p [10000,9999..])
    where p x = x `mod` 3689 == 0

allPowOdd :: [Integer]
allPowOdd = takeWhile (< 10000) (filter odd (map (^2) [1..]))

collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz x
    | odd x     = x : collatz (x * 3 + 1)
    | even x    = x : collatz (div x 2)

collatzFilter :: Int
collatzFilter = length (filter isLong (map collatz [1..100]))
    where isLong x = length x > 15

filter'' :: (a -> Bool) -> [a] -> [a]
filter'' f = foldr (\x acc -> if f x then x : acc else acc) [] 


