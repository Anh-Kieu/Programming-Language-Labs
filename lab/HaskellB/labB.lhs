Problem 6:

> fancyDiv :: Int -> Int -> (Int, Int)
>
> fancyDiv n m = if (m==0)
>                   then error "Tried to divide by zero"
>                   else (quotient, remainder)
>                where
>                   quotient = n `quot` m
>                   remainder = n `rem` m

> roots :: Int -> Int -> Int -> (Float, Float)
>
> roots a b c = if (d < 0)
>                  then error "Program error: No real root"
>                  else (x1, x2)
>               where
>                  d = (b*b - 4*a*c)
>                  x1 = ((fromIntegral (-b) + sqrt(fromIntegral d)) / (2* (fromIntegral a)))
>                  x2 = ((fromIntegral (-b) - sqrt(fromIntegral d)) / (2* (fromIntegral a)))

> allRoots :: Int -> Int -> Int -> ((Float, Float), (Float, Float))
>
> allRoots a b c = if (d >= 0)
>                     then ((x1, 0.0), (x2, -0.0))
>                     else ((c1, d1), (c2, d2))
>                  where
>                     d = (b*b - 4*a*c)
>                     x1 = ((fromIntegral (-b) + sqrt(fromIntegral d)) / (2* (fromIntegral a)))
>                     x2 = ((fromIntegral (-b) - sqrt(fromIntegral d)) / (2* (fromIntegral a)))
>                     c1 = ((fromIntegral (-b)) / (2* (fromIntegral a)))
>                     d1 = ((sqrt(fromIntegral (-d))) / (2* (fromIntegral a)))
>                     c2 = c1
>                     d2 = -d1

Problem 8:

> revHead ls = (head (tail ls)) : ((head ls) : (tail (tail ls)))

1.

> firstLast :: [a] -> [a]
>
> firstLast [] = error "Program error: Empty list"
> firstLast [a] = [a]
> firstLast l = tail(init l)

2.

> strip :: Int -> [a] -> [a]
>
> strip i l = if (length l) < 2*i
>                then error "Not enough length"
>                else take ((length l) - 2*i) (drop i l)

3.

> mrg :: [Int] -> [Int] -> [Int]
>
> mrg [] l = l
> mrg l [] = l
> mrg l r = if (head (l)) < (head (r))
>              then (++) [head(l)] (mrg (tail(l)) r)
>              else (++) [head(r)] (mrg (tail(r)) l)

Problem 10:

> addRat :: (Int, Int) -> (Int, Int) -> (Int, Int)
>
> addRat (_, 0) (_, _) = error "Can't divide by zero"
> addRat (_, _) (_, 0) = error "Can't divide by zero"
> addRat (a, b) (c, d) = reduce ((a*d + b*c), (b*d))

Reduce to canonical form for legit rational number (no 0 denominator)

> reduce :: (Int, Int) -> (Int, Int)
>
> reduce (a, b) = ((div a (gcdd a b)), (div b (gcdd a b)))

Find the greatest common denominator, algorithm for finding gcd

> gcdd :: Int -> Int -> Int
> gcdd n m = if (n == 0)
>               then m
>               else gcdd (m - (div m n)*n) n

Problem 11:

> sorted :: [Int] -> Bool
> sorted [] = True
> sorted [a] = True
> sorted (x:y:z) = if (x <= y)
>                     then sorted((y:z))
>                     else False

> mySum :: [Int] -> Int
>
> mySum [] = 0
> mySum (x:y) = x + mySum y
