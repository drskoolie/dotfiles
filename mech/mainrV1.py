from kb import KMKKeyboard

from kmk.keys import KC

keyboard = KMKKeyboard()

keyboard.keymap = [
    [
	KC.MINUS, KC.N0, KC.N9,  KC.N8, KC.N7, KC.N6, KC.RCTRL, 
        KC.BSLASH, KC.P, KC.O, KC.I, KC.U, KC.Y, KC.DELETE,
	KC.QUOTE, KC.SCOLON, KC. L, KC.K, KC.J, KC.H, KC.PGUP,
	KC.RSHIFT, KC.SLASH, KC.DOT, KC.COMMA, KC.M, KC.N, KC.PGDOWN,
	KC.NO, KC.RBRACKET, KC.LBRACKET, KC.DOWN, KC.UP, KC.NO, KC.ENTER,
	KC.NO, KC.NO, KC.NO, KC.NO, KC.NO, KC.NO ,KC.SPACE,
	]

]

if __name__ == '__main__':
    keyboard.go()
