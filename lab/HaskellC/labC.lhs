> import Data.Char

Problem 12:

1. Convert a list of integers into a list of absolute value, using Prelude.abs
prompt:
map abs [-11,2,3,0]

2. Convert a list of Strings into a list of integers where each integer in the result is the length of the string
prompt:
map length ["hi","stay","safe","!"]

Problem 13:

> convert2Int :: [Char] -> Int
> convert2Int l = foldl (+) 0 y
>                 where y = mapToDec(l)

> decimalize :: Char -> Int -> Int
> decimalize a b = (digitToInt a)*(10^b)

> mapToDec :: [Char] -> [Int]
> mapToDec [] = []
> mapToDec l = (++) [(decimalize (head l) ((length l) - 1))] (mapToDec(tail l))


> stripHex :: [Char] -> [Char]
> stripHex n = (tail (tail n))

> hexa :: Int -> Char -> Int
> hexa i c = if (isDigit c)
>               then i*16 + (digitToInt c)
>               else i*16 + (ord(c) - ord('A') + 10)

> convertHex2Int :: [Char] -> Int
> convertHex2Int l = foldl hexa 0 (stripHex l)

Problem 14:

> stdDev :: [Float] -> Float
> stdDev [] = 0
> stdDev l = sqrt( a * b - c^2)
>            where a = (1.0 / (fromIntegral (length l)))
>                  b = sumSquare l
>                  c = (sumList l) / (fromIntegral (length l))

> sumList :: [Float] -> Float
> sumList l = foldl (+) 0 l

> sumSquare :: [Float] -> Float
> sumSquare l = sumList (map (^2) l)

Problem 15:

> insert :: [Int] -> Int -> [Int]
> insert [] a = [a]
> insert l a = [x | x <- l, x<a] ++ [a] ++ [x| x<- l, x>=a]

> myMap :: (a->b) -> [a] -> [b]
> myMap f l = [f(x) | x <- l]

> factors :: Int -> [Int]
> factors m = [x | x <- (primes m), m `mod` x == 0]


> primes :: Int -> [Int]
> primes n = filterPrime [2..(n+1)]

> filterPrime :: [Int] -> [Int]
> filterPrime [] = []
> filterPrime (h:t) = [h] ++ filterPrime [x | x <- t, (x `mod` h) /= 0]
