"""
Your program must determine the possible exits of a maze.
The maze can have several exits or none, and may contain loops or parts that cannot be reached from the starting point.

INPUT:
Line 1: two ints W and H representing the width and height of the maze.
Line 2: two ints X and Y representing your start position in the maze.
H following lines: one row of the maze. A . represents an empty cell and a # represents a wall that cannot be traversed.

OUTPUT:
Line 1: an integer N representing the number of exits.
N following lines: two ints EX and EY representing the coordinates of each exit, given ordered by EX, then by EY (i.e. 2 10 comes before 5 1).

CONSTRAINTS:
7<=W<=21
7<=H<=21

EXAMPLE:
Input
7 7
1 1
#######
#.....#
#####.#
#.#...#
#.#.###
#......
#######
"""
import itertools


def main():
    w, h = [int(i) for i in input().split()]
    x, y = [int(i) for i in input().split()]
    maze = [input() for _ in range(h)]
    exits = find_exits(maze, w, h, x, y)
    show_results(exits)


def find_exits(maze, w, h, x, y):
    exits = set()
    stack = [[(x, y)]]
    while stack:
        parent = stack.pop()
        for move in legal_moves(maze, w, h, parent):
            if is_exit(maze, w, h, move):
                exits.add(move)
                continue
            child = list(parent) + [move]
            stack.append(child)
    return sorted(exits)


def legal_moves(maze, w, h, path):
    for delta_x, delta_y in itertools.product([-1, 0, 1], [-1, 0, 1]):
        if abs(delta_x) == abs(delta_y):
            continue
        x, y = path[-1]
        x += delta_x
        y += delta_y
        if x < 0 or y < 0:
            continue
        # if x > h or y > h:
        #     continue
        try:
            if maze[y][x] == '#':
                continue
        except:
            continue
        if (x, y) in path:
            continue
        yield (x, y)


def is_exit(maze, w, h, move):
    x, y = move
    if x == 0 or x == (h - 1):
        return True
    if y == 0 or y == (w - 1):
        return True
    return False


def show_results(exits):
    print(len(exits))
    for each_x, each_y in exits:
        print(each_x, each_y)


if __name__ == '__main__':
    main()
