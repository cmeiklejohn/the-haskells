main = do
    line <- getLine
    if null line
        then do
            return ()
            main
        else do
            putStrLn $ reverseWords line
            main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words
