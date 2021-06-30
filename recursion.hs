fibonacci n = 
    if n <= 0 
    then 0
    else 
        if n == 1 
        then 1
        else fibonacci (n - 1) + fibonacci(n - 2)

--for(int i = 0; i < n; ++i)
--{
--    fibonacci i
--}

fibonacciLoop n x i =
    if i < n
    then fibonacciLoop n (fibonacci i) (i + 1)
    else x
fibonacciList n =
    fibonacciLoop n 0 0
-- int pow2 (int n) {
--     int x = 1;
--     for(int i = 0; i < n; ++i)
--         x *= 2;
--     return x;
-- }

pow2 n = pow2loop n 1 0
pow2loop n x i =
    if i < n
    then pow2loop n (x * 2) (i + 1)
    else x
    
-- int x = 0;
-- for (int i = 0; i < n; ++i)
-- {
--     x = i
-- }

simple n = simpleLoop n 0 0
simpleLoop n x i =
    if i < n
    then simpleLoop n (i) (i + 1)
    else x