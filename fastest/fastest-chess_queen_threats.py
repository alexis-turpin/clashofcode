"""
You are given a 8x8 chessboard with some queens placed on it.
You must output the board with all the positions where ONE additional queen may be placed without threatening the existing ones or being threatened by one

As a reminder, a queen threatens all squares in the eight surrounding directions - left, right, up, down and the four diagonals.

INPUT:
8 lines of 8 characters: row. A dot . represents an empty square, a Q represents a queen.

OUTPUT:
8 lines of 8 characters: A dot . represents a square where you may not place a new queen, a P represents a position where a new queen may be placed. The squares of the original queens must be left as ..

EXAMPLE:
Input
........
........
........
...Q....
........
........
........
........
Output
.PP.PP.P
P.P.P.PP
PP...PPP
........
PP...PPP
P.P.P.PP
.PP.PP.P
PPP.PPP.
"""
import itertools


def main():
    board = [list(input()) for _ in range(8)]
    print('\n'.join(''.join(row) for row in answer(board)))


def answer(board):
    next_board = [list('P' * 8) for _ in range(8)]
    for row_idx, row in enumerate(board):
        for column_idx, square in enumerate(row):
            if square == '.':
                continue
            next_board = remove_threats(next_board, row_idx, column_idx)
    return next_board


def remove_threats(next_board, row_idx, column_idx):
    for row_threat, column_threat in generate_threats(row_idx, column_idx):
        next_board[row_threat][column_threat] = '.'
    return next_board


def generate_threats(row_idx, column_idx):
    for idx in range(8):
        yield (row_idx, idx)
        yield (idx, column_idx)

    for delta_row, delta_col in itertools.product([-1, 1], [-1, 1]):
        new_row, new_col = row_idx, column_idx
        while 0 <= new_row < 8 and 0 <= new_col < 8:
            yield (new_row, new_col)
            new_row += delta_row
            new_col += delta_col


if __name__ == '__main__':
    main()
