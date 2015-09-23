"""
The program:
Your program must output the number of letters inside a message. A letter is a un character in [a-z] or [A-Z].

INPUT:
Line 1: A string message.

OUTPUT:
Line 1: The number of letters inside the message.

EXAMPLE:
Input
I am
Output
3
"""
message = raw_input()
print sum(x.isalpha() for x in message)
