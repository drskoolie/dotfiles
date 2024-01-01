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
    #coord_mapping = [             
    #     0,  1,  2,  3,  4,  5,                 37, 36, 35, 34, 33, 32, 
    #     8,  9, 10, 11, 12, 13,                 45, 44, 43, 42, 41, 40,
    #    16, 17, 18, 19, 20, 21, 22, 23, 55, 54, 53, 52, 51, 50, 49, 48,
    #          27, 28, 29, 30, 31,             63, 62, 61, 60, 59, 
    #]
