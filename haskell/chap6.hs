import Data.Char
import Data.List
import qualified Data.Map as Map
import qualified Geometry.Sphere as Sphere

encode :: Int -> String -> String
encode n xs = map (\c -> chr $ ord c + n) xs

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

firstTo :: Int -> Maybe Int
firstTo n = find (\x -> digitSum x == n) [1..]

findKey :: (Eq k) => k -> [(k, v)] -> v
findKey key xs = snd . head . filter (\(k, v) -> key == k) $ xs

findKey' :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey' key [] = Nothing
findKey' key ((k, v):xs)
    | key == k = Just v
    | otherwise = findKey' key xs

-- phoneBook :: Map.Map String String
-- phoneBook = Map.fromList $ [
phoneBook = [
    ("one ta-ren", "shiboukakunin"),
    ("raiden", "ikiteitanoka"),
    ("edajima", "rabauru"),
    ("edajima", "heihachi"),
    ("kankore", "nanodesu!")
    ]

string2digit :: String -> [Int]
string2digit = map digitToInt . filter isDigit

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String
phoneBookToMap xs = Map.fromListWith add xs
    where add s1 s2 = s1 ++ "," ++ s2


