import System.Environment

fib :: Int -> Int -> Int
fib 1 _ = 1
fib 2 _ = 1
fib n k = k * (fib (n - 2) k) + (fib (n - 1) k)

main = do
    [n,k] <- getArgs
    putStr ( show ( fib (read n) (read k)))
