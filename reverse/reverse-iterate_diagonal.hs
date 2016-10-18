{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
4
mooa
oano
otio
ioon
main anti
02 Test 2
3
xoo
oxo
oxx
xxx oxo
03 Test 3
1
a
a a
04 Test 4
2
cx
cx
cx xc
05 Test 5
10
loremipsum
dolorsitam
etconsecte
turadipisc
ingelitnul
lavenenati
snisinonmi
dictumnece
fficiturli
berodapibu
localeoelu macpinscfb
-}
import Control.Monad

main :: IO ()
main = do
    n <- readLn :: IO Int
    xs <- replicateM n getLine
    putStrLn $ answer xs

answer :: [String] -> String
answer xs = unwords [left, right]
  where
    left = iterDiagonal xs
    right = iterDiagonal (map reverse xs)

iterDiagonal :: [String] -> String
iterDiagonal xs = zipWith (!!) xs [0..]
