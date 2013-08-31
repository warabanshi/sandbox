main = do
    putStrLn "Hello world"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")
