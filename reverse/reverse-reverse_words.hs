{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
Hello World
World Hello
02 Test 2
Groot am I
I am Groot
03 Test 3
@ 4 : #
# : 4 @
04 Test 4
What?Hi!
What?Hi!
05 Test 5
What ? Hi !
! Hi ? What
06 Test 6
Lorem Ipsum Dice Deus Flavius
Flavius Deus Dice Ipsum Lorem
-}
main = interact (unwords . reverse . words)
