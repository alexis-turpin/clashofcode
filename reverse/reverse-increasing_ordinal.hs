{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
codingame
cpflrlgtm
02 Test 2
abcdef
acegik
03 Test 3
cracker
cscfojx
04 Test 4
aaaaaa
abcdef
-}
import Data.Char

main :: IO ()
main = interact answer

answer :: String -> String
answer xs = map chr $ zipWith (+) [0..] (map ord xs)
