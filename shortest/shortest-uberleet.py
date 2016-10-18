"""
Statement
The program:
Your program must read the string given on the standard input and print to the standard output the same string converted into Uberleet.

To convert text into Uberleet, the lowercase and uppercase characters that follow must be replaced:
'A' with '4'.
'B' with '8'.
'C' with '('.
'D' with '|)'.
'E' with '3'.
'F' with '|='.
'G' with '6'.
'H' with '|-|'.
'I' with '!'.
'J' with '_|'.
'K' with '|<'.
'L' with '1'.
'M' with '/\/\'.
'N' with '|\|'.
'O' with '0'.
'P' with '|>'.
'Q' with '9'.
'R' with '/2'.
'S' with '5'.
'T' with '7'.
'U' with '|_|'.
'V' with '\/'.
'W' with '\/\/'.
'X' with '}{'.
'Y' with ''/'.
'Z' with '2'.

The non-alphabetic characters must not be replaced but they must be displayed unchanged.

INPUT:
A string S.

OUTPUT:
S converted to Uberleet.

CONSTRAINTS:
S contains at least 1 character.

EXAMPLE:
Input
Hello World
Output
|-|3110 \/\/0/21|)
"""
m={'A':"4",'B':"8",'C':"(",'D':"|)",'E':"3",'F':"|=",'G':"6",'H':"|-|",'I':"!",'J':"_|",'K':"|<",'L':"1",'M':"/\\/\\",'N':"|\\|",'O':"0",'P':"|>",'Q':"9",'R':"/2",'S':"5",'T':"7",'U':"|_|",'V':"\\/",'W':"\\/\\/",'X':"}{",'Y':"'/",'Z':"2"}
print ''.join(m.get(c.upper(),c)for c in raw_input())
