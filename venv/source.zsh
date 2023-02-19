python3 -m venv venv_global
python3 -m venv venv_neovim
python3 -m venv venv_ml

source venv_neovim/bin/activate
pip install pynvim black
deactivate
