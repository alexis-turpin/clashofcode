{-
Your program must indicate on how many mirrors a laser will bounce before leaving the given area.
The area is represented by a grid of characters.
The laser emitter, represented by an L character, is always placed somewhere in the first column of the grid and fires the laser to the right.
The laser travels in a straight line.
The mirrors are represented by slash '/' and backslash '\' characters. 
For example, a laser travelling towards the right will go up if it hits a '/' mirror and will go down if it hits a '\' mirror.
The laser can travel through its own beam.
The laser can travel through the emitter.

Your program must read the grid from the standard input filled with four different symbols:
A dot . means empty cell.
A slash / or backslash \ represents a slanted mirror.
An L indicates the position of the laser emitter.

INPUT:
Line 1: 2 space separated integers width and height.
Next height lines: A string of width characters from (., /, \, L).

OUTPUT:
A single integer for the number of mirrors the laser will bounce off before leaving the grid.

CONSTRAINTS:
0 < width < 100
0 < height < 100

EXAMPLE:
Input
8 5
../.\../
........
L.//....
...\/./.
\....\..
Output
6
-}
import Control.Arrow (second)
import Control.Monad
import Data.List
import Data.Maybe
import System.IO

data Direction = SOUTH | EAST | NORTH | WEST
    deriving (Eq, Ord, Show, Bounded, Enum)

type Cell = Char
type Grid = [[Cell]]
type Position = (Int, Int)

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    _ <- getLine
    grid <- fmap lines getContents
    let path = genPath grid (initialPosition grid) initialDirection
    forM_ path $ \(grid, position, direction) -> do
            hPutStr stderr $ unlines $ replaceCell grid position 'x'
            hPrint stderr position
            hPrint stderr direction
    let directions = group $ map (\(_, _, direction) -> direction) path
    hPrint stderr directions
    print $ length $ tail directions

initialDirection :: Direction
initialDirection = EAST

initialPosition :: Grid -> Position
initialPosition grid = (rowIndex, columnIndex)
    where
    (rowIndex, columnIndex) =
        fromMaybe (error "no row with start location") $ listToMaybe $
        map (second fromJust) $ filter (isJust . snd) $
        zip [0..] (map (elemIndex 'L') grid)

genPath ::
    Grid
    -> Position
    -> Direction
    -> [(Grid, Position, Direction)]
genPath grid position direction
    | position' == ((-1), (-1)) = []
    | nextCell `elem` "/\\" = x : genPath grid position' (changeDirection nextCell direction)
    | otherwise = x : genPath grid position' direction
    where
    (row, column) = position
    x = (grid, position, direction)
    nextCell = getCell grid position'
    position' = nextPos grid direction position

nextPos :: Grid -> Direction -> Position -> Position
nextPos grid NORTH (row, column)
    | row' < 0 = ((-1), (-1))
    | column' < 0 = ((-1), (-1))
    | row' >= length grid = ((-1), (-1))
    | column' >= length (grid !! 0) = ((-1), (-1))
    | otherwise = (row', column')
    where (row', column') = (row - 1, column)
nextPos grid SOUTH (row, column)
    | row' < 0 = ((-1), (-1))
    | column' < 0 = ((-1), (-1))
    | row' >= length grid = ((-1), (-1))
    | column' >= length (grid !! 0) = ((-1), (-1))
    | otherwise = (row', column')
    where (row', column') = (row + 1, column)
nextPos grid EAST (row, column)
    | row' < 0 = ((-1), (-1))
    | column' < 0 = ((-1), (-1))
    | row' >= length grid = ((-1), (-1))
    | column' >= length (grid !! 0) = ((-1), (-1))
    | otherwise = (row', column')
    where (row', column') = (row, column + 1)
nextPos grid WEST (row, column)
    | row' < 0 = ((-1), (-1))
    | column' < 0 = ((-1), (-1))
    | row' >= length grid = ((-1), (-1))
    | column' >= length (grid !! 0) = ((-1), (-1))
    | otherwise = (row', column')
    where (row', column') = (row, column - 1)

getCell :: Grid -> Position -> Cell
getCell grid (row, column) = grid !! row !! column

changeDirection :: Cell -> Direction -> Direction
changeDirection '/' EAST = NORTH
changeDirection '/' WEST = SOUTH
changeDirection '/' SOUTH = WEST
changeDirection '/' NORTH = EAST
changeDirection '\\' EAST = SOUTH
changeDirection '\\' WEST = NORTH
changeDirection '\\' SOUTH = EAST
changeDirection '\\' NORTH = WEST

replaceCell :: Grid -> Position -> Cell -> Grid
replaceCell grid (row, column) cell = replaceAtIndex row row' grid
    where
    row' = replaceAtIndex column cell (grid !! row)

-- http://stackoverflow.com/a/10133429/1988505
replaceAtIndex :: Int -> a -> [a] -> [a]
replaceAtIndex n item ls = a ++ (item:b) where (a, _:b) = splitAt n ls
