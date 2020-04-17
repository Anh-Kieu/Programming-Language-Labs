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
