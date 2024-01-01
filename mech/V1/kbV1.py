import board

from kmk.kmk_keyboard import KMKKeyboard as _KMKKeyboard
from kmk.scanners import DiodeOrientation

class KMKKeyboard(_KMKKeyboard):
    col_pins = (
        board.GP28,
        board.GP27,
        board.GP26,
        board.GP22,
        board.GP20,
        board.GP23,
        board.GP21
    )

    row_pins = (
        board.GP4,
        board.GP5,
        board.GP6,
        board.GP7,
        board.GP8,
        board.GP9
    )
    diode_orientation = DiodeOrientation.COL2ROW
    data_pin = board.GP3
    
    # flake8: noqa
    # fmt: off
    coord_mapping = [
            0,     1,     2,     3,     4 ,    5,     6,     7,               8,     9,   10,   11,   12,   13,   14,   15, 
            16,   17,    18,    19,    20,    21,    22,    23,              24,    25,   26,   27,   28,   29,   30,   31, 
            32,   33,    34,    35,    36,    37,    38,    39,              40,    41,   42,   43,   44,   45,   46,   47, 
            48,   49,    50,    51,    52,    53,    54,    55,              56,    57,   58,   59,   60,   61,   62,   63, 
            64,   65,    66,    67,    68,    69,    70,    71,              72,    73,   74,   75,   76,   77,   78,   79, 
            80,   81,    82,    83,    84,    85,    86,    87,              88,    89,   90,   91,   92,   93,   94,   95, 
        ]
