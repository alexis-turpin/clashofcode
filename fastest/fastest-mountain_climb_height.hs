{-
Your program must determine up to what height the mountaineer can climb on a given mountain.

The mountaineer begins at the foot of the mountain (height 0) and to the left, he always moves to the right and can climb encountered walls if they are exactly 1 unit of height. The mountaineer never goes down.

Your program is given through the standard input a grid composed of the characters "." and "#".

The mountain is defined by the "#" characters, they are each 1 unit of height.
The "." characters indicate air, the mountaineer can cross these cells freely.

INPUT:
Line 1: Two space separated integers width and height for the size of the grid containing the mountain.
Next height lines: A string of length width containing . for air and # for mountain rock.

OUTPUT:
An integer for the maximum height the mountaineer can reach, starting from the bottom left.

CONSTRAINTS:
0 < width, height < 100

EXAMPLE:
Input
9 7
........# (6)
........# (5)
.......## (4)
.....#### (3)
....##### (2)
..####### (1)
.######## (0)
Output
5
-}
main :: IO ()
main = do
    _ <- getLine
    mountains <- fmap lines getContents
    print $ maxHeight mountains

maxHeight :: [String] -> Int
maxHeight [x] = 0
maxHeight (mountains)
    | head bottom == '.' = maxHeight $ chopLeft mountains
    | head penultimate == '.' = 1 + maxHeight (chopLeft $ init mountains)
    | otherwise = 0
    where
    bottom = last mountains
    penultimate = last $ init mountains

chopLeft :: [[a]] -> [[a]]
chopLeft = map tail
