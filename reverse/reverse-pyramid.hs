main = interact $ unlines . (\x -> map (\k -> concatMap show $ replicate k x) [1..x]) . read
