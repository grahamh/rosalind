import System.Environment

compliment :: String -> String
compliment []     = []
compliment (x:xs) = case x of   'A' -> 'T':compliment xs
                                'G' -> 'C':compliment xs
                                'T' -> 'A':compliment xs
                                'C' -> 'G':compliment xs
                                _   -> compliment xs

main = do
    [f,g] <- getArgs
    s <- readFile f
    writeFile g $ compliment $ reverse s
