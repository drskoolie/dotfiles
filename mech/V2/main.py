import board

from kb import KMKKeyboard

from kmk.keys import KC

keyboard = KMKKeyboard()

from kmk.modules.split import Split, SplitSide, SplitType

split = Split(
    split_flip=False,  # If both halves are the same, but flipped, set this True
    split_side=None,  # Sets if this is to SplitSide.LEFT or SplitSide.RIGHT, or use EE hands
    split_type=SplitType.UART,  # Defaults to UART
    split_target_left=None,  # Assumes that left will be the one on USB. Set to False if it will be the right
    uart_interval=20,  # Sets the uarts delay. Lower numbers draw more power
    data_pin=board.GP3,  # The primary data pin to talk to the secondary device with
    data_pin2=None,  # Second uart pin to allow 2 way communication
    uart_flip=True,  # Reverses the RX and TX pins if both are provided
    use_pio=True,  # Use RP2040 PIO implementation of UART. Required if you want to use other pins than RX/TX
    )

keyboard.modules.append(split)


keyboard.keymap = [
    [
	KC.LSHIFT, KC.GRAVE, KC.BSLASH,  KC.LEFT, KC.RIGHT, KC.B, KC.LCTRL, 
        KC.CAPSLOCK, KC.Z, KC.X, KC.C, KC.V, KC.G, KC.LALT,
	KC.TAB, KC.A, KC. S, KC.D, KC.F, KC.T, KC.HOME,
	KC.EQUAL, KC.Q, KC.W, KC.E, KC.R, KC.N5, KC.N4,
	KC.NO, KC.N1, KC.N2, KC.N3, KC.NO, KC.N4, KC.LGUI,
	KC.NO, KC.N3, KC.N4, KC.N5, KC.N6, KC.N7 ,KC.BSPACE,
        
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
