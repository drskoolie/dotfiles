import board

from kb import KMKKeyboard

from kmk.keys import KC

keyboard = KMKKeyboard()

keyboard.keymap = [
    [
	KC.LSHIFT, KC.GRAVE, KC.BSLASH,  KC.LEFT, KC.RIGHT, KC.B, KC.LCTRL, 
        KC.CAPSLOCK, KC.Z, KC.X, KC.C, KC.V, KC.G, KC.LALT,
	KC.TAB, KC.A, KC. S, KC.D, KC.F, KC.T, KC.HOME,
	KC.EQUAL, KC.Q, KC.W, KC.E, KC.R, KC.N5, KC.N4,
	KC.NO, KC.N1, KC.N2, KC.N3, KC.NO, KC.N4, KC.LGUI,
	KC.NO, KC.N3, KC.N4, KC.N5, KC.N6, KC.N7 ,KC.BSPACE
	]
] 

if __name__ == '__main__':
    keyboard.go()
