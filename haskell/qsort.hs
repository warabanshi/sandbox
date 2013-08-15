qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs)    = qsort [n | n <- xs, n <= x] ++ [x] ++ qsort [n | n <- xs, n > x]
