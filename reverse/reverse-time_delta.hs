{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
12:47:11 14:01:57
01:14:46
02 Test 2
13:09:42 22:16:15
09:06:33
03 Test 3
00:00:00 23:59:59
23:59:59
04 Test 4
10:10:10 20:20:20
10:10:10
-}
import Data.List.Split
import Text.Printf

main :: IO ()
main = do
    [a, b] <- fmap (map (map read. splitOn ":") . words) getLine :: IO [[Int]]
    let seconds = toSeconds b - toSeconds a
    putStrLn $ formatSeconds seconds

toSeconds [h, m, s] = (h * 60 * 60) + (m * 60) + s

formatSeconds x = printf "%02d:%02d:%02d" hours minutes seconds
  where
    (minutes', seconds) = x `divMod` 60
    (hours, minutes) = minutes' `divMod` 60
