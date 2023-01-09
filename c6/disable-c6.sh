#!/usr/bin/bash
if [ "${1}" == "post" ]; then

  # Disable c6 coming out of sleep
  python3 ~/dotfiles/c6/Ryzen/ZenStates-Linux/zenstates.py --c6-disable
fi

