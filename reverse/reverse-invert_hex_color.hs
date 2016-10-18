{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
#000000
#FFFFFF
02 Test 2
#FFFFFF
#000000
03 Test 3
#F0E68C
#0F1973
04 Test 4
#424242
#BDBDBD
05 Test 5
#ADFF2F
#5200D0
-}
import Data.Char
import Numeric

main :: IO ()
main = interact answer

answer :: String -> String
answer ('#':r1:r2:g1:g2:b1:b2:xs) = concat $ "#" : map (toHex . invertHex . justHex) [red, green, blue]
  where
    red = [r1, r2] :: String
    green = [g1, g2] :: String
    blue = [b1, b2] :: String

justHex :: String -> Integer
justHex = fst . head . readHex

invertHex :: Integer -> Integer
invertHex = abs . subtract 255

toHex :: (Integral a, Show a) => a -> String
toHex x = map toUpper $ showHex x ""
