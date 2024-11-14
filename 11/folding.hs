module Ep11Folding where
    revr :: [a] -> [a]
    revr lst = foldr f [] lst where
        f elem acc = (<>) acc [elem]

    revl :: [a] -> [a]
    revl lst = foldl f [] lst where
        f acc elem = (:) elem acc

    prefixes :: [a] -> [[a]]
    prefixes xs = foldr f [] xs where
        f elem acc = (map (:) acc) : acc

-- [take n xs | n <- [1..(length xs)]]
