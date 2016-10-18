{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
CodinGame rocks
4 1
02 Test 2
Hi
1
03 Test 3
AEIOU aeiou AeIoU aEiOu y
5 5 5 5 0
04 Test 4
-~Wh@ts up?~-
0 1
05 Test 5
! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
06 Test 6
Lots and lots of words!! Hey Hi Hello oejr32 29ej^[OQ2 dajw9(*JijI Inidw9d H(J@*J NUEJ*J8o JH^@T$k23 :[wp-wdwd9,; KI9je28jdkqwskms MM9i29wsk29u83r3ur MOJIj8w90ks2oskwlk
1 1 1 1 1 1 1 2 2 2 3 2 0 3 0 0 2 3 3
-}
import Data.Char
main = interact (unwords . map (show . countVowels) . words . map toLower)
countVowels = length . filter (`elem` "aeiou")
