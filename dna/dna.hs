-- A solution to the Rosalind question DNA
--
import System.Environment

count :: Eq a => a -> [a] -> Int
count x = length . filter (==x)

main = do
    [f,g] <- getArgs
    s <- readFile f
    writeFile g ((show(count 'A' s)) ++ " " ++ (show(count 'C' s)) ++ " " ++ (show(count 'G' s)) ++ " " ++  (show(count 'T' s)))
