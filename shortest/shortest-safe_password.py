"""
Your program must determine if a given string would be a safe password. Here, a password is considered safe if:
It contains at least 8 characters.
It contains at least 1 digit (0-9).
It contains at least 1 lowercase letter (a-z).
It contains at least 1 uppercase letter (A-Z).

INPUT:
Line 1: P a string containing a password.

OUTPUT:
Line 1: true if P is a safe password, false otherwise.

CONSTRAINTS:
0 < P.length < 100

EXAMPLE:
Input
11/12/1978
Output
false
 

Download the files provided in the test script:
Example: IN / OUT
1: IN / OUT
2: IN / OUT
3: IN / OUT
"""
s=input()
a=len(s)>7 and any(c.isdigit()for c in s)and any(c.isalpha() and c.islower()for c in s)and any(c.isalpha() and c.isupper()for c in s)
print(str(a).lower())
