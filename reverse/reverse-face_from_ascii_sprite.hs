{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
! | o V - \_/
!!!!!
|o o|
| V |
| - |
 \_/
02 Test 2
~ I - . O '-+-'
~~~~~
I- -I
I . I
I O I
'-+-'
03 Test 3
_ l 0 o = U
_____
l0 0l
l o l
l = l
  U
04 Test 4
^ ^ ^ ^ ^ ^^^^^
^^^^^
^^ ^^
^ ^ ^
^ ^ ^
^^^^^
-}
import Text.Printf

main :: IO ()
main = interact face

face (hair:' ':side:' ':eye:' ':nose:' ':mouth:' ':chin) = unlines face'
  where
    face' = [ replicate 5 hair
            , printf "%c%c %c%c" side eye eye side
            , printf "%c %c %c" side nose side
            , printf "%c %c %c" side mouth side
            , printf "%s%s" (replicate chinSpace ' ') chin]
    chinSpace = (5 - length chin) `div` 2
