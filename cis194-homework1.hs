import Data.Char
import Data.List.Split

toDigits :: Int -> [Int]
toDigits 0 = [] 
toDigits x = map digitToInt $ show x

toDigitsRev :: Int -> [Int]
toDigitsRev xs = reverse $ toDigits xs

sumDigits :: [Int] -> Int
sumDigits xs = foldl (+) 0 (concat $ map toDigits xs)

doubleEveryOther :: [Int] -> [Int]
doubleEveryOther xs = concat . map (\[x,y] -> [x*2, y]) $ chunksOf 2 xs

validate :: Int -> Bool
validate x = mod 10 (sumDigits $ doubleEveryOther $ toDigits x) == 0
