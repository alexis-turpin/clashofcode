"""
You are given an expression comprised of integers separated by operators, as well as the result of the expression preceded by an equals symbol =.
However, some of the digits in the expression have been replaced by question marks ?. 
You must restore the missing digits to the expression in such a way that it stays correct.

The digits to the right of the equals sign = will never be replaced by question marks ? .

Each expression can have several operators, but of the same type only.

INPUT:
A single line expression containing positive integers, and the operators +, -, *, / and the = sign. Some digits will be replaced by ? characters. Each number and symbol is separated by a space.

OUTPUT:
The same expression with each ? replaced with the proper digit for the expression to be true.

CONSTRAINTS:
expression contains less than 256 characters.

EXAMPLE:
Input
1? + 18 = 29
Output
11 + 18 = 29
"""
import itertools


def main():
    expression = input()
    print(answer(expression))


def answer(expression):
    if '?' not in expression:
        return expression
    groups = []
    for each_group in expression.split():
        try:
            each_group = int(each_group)
        except Exception:
            pass
        groups.append(each_group)
    assert groups[-2] == '='
    target = groups[-1]
    assert '?' not in str(target), 'question mark in target'
    solved = solve(groups[:-2], target=target)
    return ' '.join(str(x) for x in (solved + groups[-2:]))


def solve(groups, target):
    for each_guess in gen_guess(groups, target):
        guess_expression = ' '.join(str(x) for x in each_guess)
        if eval(guess_expression) == target:
            return each_guess


def gen_guess(groups, target):
    num_question = ''.join(str(x) for x in groups).count('?')
    for replacements in itertools.product(list(range(10)) * num_question):
        replacements = list(replacements)
        guess = []
        for each_group in groups:
            if '?' not in str(each_group):
                guess.append(each_group)
                continue
            while '?' in str(each_group):
                each_group = str(each_group)
                each_group = each_group.replace('?', str(replacements.pop(0)), 1)
                try:
                    each_group = int(each_group)
                except Exception:
                    pass
            guess.append(each_group)
        yield guess
    return groups


if __name__ == '__main__':
    main()
