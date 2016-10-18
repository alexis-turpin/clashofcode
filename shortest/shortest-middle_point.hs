{-
Your program must find the point that is exactly between two other points.

You are given the coordinates (x, y) of two points which bind a line segment.
The midpoint of this line segment is the target point. 

Be careful with float numbers and use . as a decimal mark.

INPUT:
Line 1: Two integers separated by whitespace x1 and y1, the coordinates of the first point.
Line 2: Two integers separated by whitespace x2 and y2, the coordinates of the second point.

OUTPUT:
Two integers separated by whitespace, the coordinates of the midpoint.

CONSTRAINTS:
-100 < x,y < 100

EXAMPLE:
Input
1 2
3 5
Output
2 3.5
-}
main = do
 a<-getLine
 b<-getLine
 let[x1,y1]=map read $ words a :: [Integer]
 let[x2,y2]=map read $ words b :: [Integer]
 putStrLn $ unwords [f x1 x2, f y1 y2]
f :: Integer -> Integer -> String
f a b
 | c == fromInteger (round c) = show $ floor c
 | otherwise = show c
 where c = fromInteger (a + b) / 2 :: Float