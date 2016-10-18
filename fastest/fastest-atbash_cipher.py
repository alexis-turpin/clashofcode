"""
Your program must decrypt a text with Atbash cipher -- a simple substitution cipher.

It consists in substituting a (the first letter) for z (the last), b (the second) for y (one before last), and so on, reversing the alphabet.

INPUT:
Line 1: an encrypted word.

OUTPUT:
Line 1: the decrypted word.

CONSTRAINTS:
The given word contains only lowercase latin letters (a-z).

EXAMPLE:
Input
zyxabc
Output
abczyx
"""
alphabet = [chr(x) for x in range(ord('a'), ord('z') + 1)]
word = input()
out = [alphabet[-(alphabet.index(letter) + 1)] for letter in word]
print(''.join(out))
