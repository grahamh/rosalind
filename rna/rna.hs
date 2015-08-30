import System.Environment

replace :: Eq a => a -> a -> [a] -> [a]
replace s t []     = []
replace s t (x:xs) = (if x== s then t else x) : replace s t xs 

main = do
    [f,g] <- getArgs
    s <- readFile f
    writeFile g (replace 'T' 'U' s)

