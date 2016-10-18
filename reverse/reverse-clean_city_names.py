"""
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
2
Montpellier
New York
3
new york
NewYork
montpellier
New York
New York
Montpellier
02 Test 2
2
Kyoto
Tokyo
1
tokyo
Tokyo
03 Test 3
2
Saint Petersburg
San Francisco
1
San Fran Cisco
San Francisco
04 Test 4
2
Helsinki
Hanoi
2
Hanoi
Helsinki
Hanoi
Helsinki
05 Test 5
5
Sydney
Newcastle upon Tyne
Marrakech
Le Mans
Vienna
20
le mans
Newcastle Upon Tyne
MarraKech
sydney
LeMans
VIENNA
NEWCASTLEuponTYNE
SYDNEY
Marr a kech
Newcastle upon Tyne
vienna
marrakech
Vien na
le Mans
Newcastleupon Tyne
Sydney
Lemans
m A R R A K E C H
VIenna
SydneY
Le Mans
Newcastle upon Tyne
Marrakech
Sydney
Le Mans
Vienna
Newcastle upon Tyne
Sydney
Marrakech
Newcastle upon Tyne
Vienna
Marrakech
Vienna
Le Mans
"""
def main():
    n = int(input())
    cities = [input() for _ in range(n)]

    m = int(input())
    uncleaned = [input() for _ in range(m)]

    city_map = {normalize(name): name for name in cities}

    for name in uncleaned:
        print(city_map[normalize(name)])


def normalize(name):
    return ''.join(x.lower() for x in name.split())


if __name__ == '__main__':
    main()
