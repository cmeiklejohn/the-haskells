main = do
    a <- return "hello"
    b <- return "world!"
    putStrLn $ a ++ " " ++ b
