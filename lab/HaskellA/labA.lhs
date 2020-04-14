Problem 1
1. 3.

> fact :: Int -> Int
>
> fact 0 = 1
> fact n = n * fact(n-1)

> choose :: Int -> Int -> Int
>
> choose n k = div (fact n) (fact k * fact (n-k))

2. It said stack overflow. This happened because it will keep calling fact(n-1) which goes on
forever till -infinity (but the stack ran out of mem first).
Parenthesis around fact(n-1) is redundant as it is straightforward but around n-1 is not because it will evaluate fact n which
will be an infinite loop
4. fact 50 will produce -3258495067890909184 and choose 50 5 will produce 0
5.

> choose2 :: Int -> Int -> Int
>
> choose2 _ 0 = 1
> choose2 n k = if n == k
>               then 1
>               else (choose2 (n-1) (k-1)) + (choose2 (n-1) k)

Problem 2:
fib: F0 = 0 F1 = 1 Fn = F(n-1) + F(n-2) for n >= 2

> fib :: Int -> Int
>
> fib 0 = 0
> fib 1 = 1
> fib n = (fib (n-1)) + (fib (n-2))

> fibsel :: Int -> Int
>
> fibsel n = if n==1 || n==2
>            then 1
>            else if n == 0
>                    then 0
>                    else (fibsel (n-1)) + (fibsel (n-2))

Problem 3:

> fibcase :: Int -> Int
>
> fibcase n = case n of
>                  0 -> 0
>                  1 -> 1
>                  n -> fibcase(n-1) + fibcase(n-2)

Problem 4:
1.

> grade :: Int -> Char
>
> grade n
>       | (90 <= n) && (n<= 100) = 'A'
>       | (80 <= n) && (n <= 89) = 'B'
>       | (70 <= n) && (n <= 79) = 'C'
>       | (60 <= n) && (n <= 69) = 'D'
>       | (0 <= n) && (n <= 59) = 'F'
>       | otherwise = 'E'

2.

> abs2 :: Int -> Int
>
> abs2 a
>      | (a >= 0) = a
>      | otherwise = (-a)

Problem 5:

> hyp :: Int -> Int -> Float
>
> hyp a b
>     | (a < 0) || (b < 0) = 0
>     | otherwise = sqrt(fromIntegral(a*a) + fromIntegral(b*b))
