Problem 1:

> data Color = Red | Blue | Green | White | Black
>      deriving Show

Test ordinal: Blue < Red => error -> no ordinal
Blue + 1 => error -> no integer behind




Problem 2:

> problem2 = \a -> a + 3

Problem 3:

> foo :: [Int] -> [Int]
> foo list = filter ((<) 5) list

Problem 4:

a > fooa :: Int -> ([Int] -> (Bool -> Int))

b > foob :: (Int, Int, Float) -> ([Int] -> (Bool -> Int))

c > fooc :: Int -> (Char -> (Float -> Bool))

d > food :: (a -> (b -> b)) -> (b -> ([a] -> b))
