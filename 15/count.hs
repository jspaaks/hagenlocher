module Main (main) where

    import qualified System.Environment (getArgs)


    count :: Int -> Int -> IO ()
    count n m = do
        putStrLn (show n)
        if n < m then
            count (n + 1) m
        else
            return ()


    main = do
        args <- System.Environment.getArgs
        let [n, m] = map read args
        count n m
