module Ep05Lists where

    myElem :: (Eq a) => a -> [a] -> Bool
    myElem item xs
        | null xs         = False
        | item == head xs = True
        | otherwise       = myElem item $ tail xs
    

    myNub :: (Eq a) => [a] -> [a]
    myNub lst
        | null lst     = []
        | myElem hd tl = myNub tl
        | otherwise    = hd : myNub tl
        where
            hd = head lst
            tl = tail lst


    -- myIsAsc :: [Int] -> Bool
    -- myIsAsc lst = helper lst (tail lst) where
    --     helper _ [] = False
    --     helper (a:as) (b:bs)
    --         | a >= b    = False
    --         | null bs   = True
    --         | otherwise = helper as bs


    myIsAsc :: [Int] -> Bool
    myIsAsc []       = True
    myIsAsc [_]      = True
    myIsAsc (a:b:cs) = (a <= b) && myIsAsc (b:cs)


    -- edges connect the node with id 'm' to the node with id 'n', where 'm'
    -- is the start and 'n' is the finish
    myHasPath :: [(Int, Int)] -> Int -> Int -> Bool
    myHasPath edges from to = propagate edges [from] where
        propagate edges froms
            | myElem to froms = True
            | null froms      = False
            | otherwise       = propagate edges' froms' where
                edges' = [ edge | edge <- edges, not $ myElem (fst edge) froms ]
                froms' = myNub [ snd edge | edge <- edges, myElem (fst edge) froms ]

