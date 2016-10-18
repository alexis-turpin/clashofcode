"""
This is an implementation of a castle siege on a rectangular map. Enemies attempt to reach the castle at the top of the map, while towers attempt to fend them off.

Each round of the game has the following three phases:

1. Each tower targets a single enemy within a 5×5 square centred on itself, if any.

Towers prioritise targets by the following criteria, in order of precedence. Each criteria is used to break ties of the above criteria.

Criteria:
1. The enemy furthest NORTH
2. The enemy closest to the tower
3. The enemy furthest EAST

2. Each enemy's HP is reduced by the number of towers that targeted it. Then, each enemy that has 0 or less HP is DESTROYED. Then, if no enemies remain, the player WINS.

3. Each enemy moves NORTH one cell. If an enemy moves into a tower this way, the enemy is DESTROYED. If an enemy moves off the top of the map, the player LOSES.

You must output WIN/LOSE followed by the round number when the game ended.

INPUT:
Line 1: The width W and the height H of the map.
Next H Lines: Strings W characters long, representing entities in each cell of the initial state of the map. Entities are represented by the following characters:
. Empty Space
N An enemy with N HP
T A Tower

OUTPUT:
A single line containing the WIN/LOSE state of the game State (either 'WIN' or 'LOSE') followed by the round number R (starting from 1) when the game ended.

CONSTRAINTS:
0 ≤ N ≤ 9
1 ≤ W, H ≤ 8

EXAMPLE:
Input
6 4
.T....
......
...3..
......
"""
import sys


class EnemyWinError(Exception):
    pass


def main():
    w, h = [int(i) for i in input().split()]
    grid = [list(input()) for _ in range(h)]
    print('\n'.join(''.join(row) for row in grid), file=sys.stderr)
    result = play(grid)
    print(' '.join(str(x) for x in result))


def play(grid):
    result = 'WIN'
    num_rounds = 0
    collision = False
    while not all(x in '.T' for row in grid for x in row) or collision:
        num_rounds += 1
        targets = get_tower_targets(grid)
        grid = remove_hp(grid, targets)
        try:
            (grid, collision) = move_enemies(grid)
        except EnemyWinError:
            result = 'LOSE'
            return (result, num_rounds)
        print('-' * len(grid[0]), file=sys.stderr)
        print('\n'.join(''.join(row) for row in grid), file=sys.stderr)
        print(collision, file=sys.stderr)
    return (result, num_rounds)


def get_tower_targets(grid):
    for tower in _get_towers(grid):
        target = _get_tower_target(grid, tower)
        if not target:
            continue
        yield target


def _get_towers(grid):
    for row_idx, row in enumerate(grid):
        for col_idx, cell in enumerate(row):
            if cell != 'T':
                continue
            yield (row_idx, col_idx)


def _get_tower_target(grid, tower):
    targets = list(get_enemies(grid))
    targets = [target for target in targets if _within_5x5(tower, target)]
    if not targets:
        return []
    if len(targets) == 1:
        return targets[0]
    targets = _filter_most_north(targets)
    if len(targets) == 1:
        return targets[0]
    targets = _filter_closest(tower, targets)
    if len(targets) == 1:
        return targets[0]
    targets = _filter_furthest_east(targets)
    return targets[0]


def get_enemies(grid):
    for row_idx, row in enumerate(grid):
        for col_idx, cell in enumerate(row):
            if cell in '.T':
                continue
            yield (row_idx, col_idx)


def _within_5x5(tower, target):
    tower_row, tower_col = tower
    target_row, target_col = target
    return bool(
        (tower_row - 2 <= target_row <= tower_row + 2) and
        (tower_col - 2 <= target_col <= tower_col + 2)
    )


def _filter_most_north(targets):
    min_row_idx = min(row_idx for (row_idx, col_idx) in targets)
    return [
        (row_idx, col_idx)
        for (row_idx, col_idx) in targets
        if row_idx == min_row_idx
    ]


def _filter_closest(tower, targets):
    min_distance = min(_distance(tower, target) for target in targets)
    return [
        target
        for target in targets
        if _distance(tower, target) == min_distance
    ]


def _distance(tower, target):
    tower_row, tower_col = tower
    target_row, target_col = target
    return abs(tower_row - target_row) + abs(tower_col - target_col)


def _filter_furthest_east(targets):
    max_col_idx = max(col_idx for (row_idx, col_idx) in targets)
    return [
        (row_idx, col_idx)
        for (row_idx, col_idx) in targets
        if col_idx == max_col_idx
    ]


def remove_hp(grid, targets):
    for row_idx, col_idx in targets:
        hp = int(grid[row_idx][col_idx])
        hp -= 1
        if hp <= 0:
            hp = '.'
        grid[row_idx][col_idx] = str(hp)
    return grid


def move_enemies(grid):
    # XXX: The "Collision" test case fails without this hacky value.
    collision = False
    for row_idx, col_idx in get_enemies(grid):
        hp = grid[row_idx][col_idx]
        grid[row_idx][col_idx] = '.'
        row_idx -= 1
        if row_idx < 0:
            raise EnemyWinError
        if grid[row_idx][col_idx] == 'T':
            # Dies if hits tower.
            collision = True
            continue
        grid[row_idx][col_idx] = hp
    return (grid, collision)


if __name__ == '__main__':
    main()
