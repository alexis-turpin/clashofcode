{-
01 Test 1
ACGT
TGCA
02 Test 2
A
T
03 Test 3
C
G
04 Test 4
G
C
05 Test 5
T
A
06 Test 6
GATTACA
CTAATGT
-}
main :: IO ()
main = interact answer

answer = map complement

complement 'A' = 'T'
complement 'T' = 'A'
complement 'G' = 'C'
complement 'C' = 'G'
