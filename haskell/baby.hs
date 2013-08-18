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
