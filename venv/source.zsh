python3 -m venv venv_global
python3 -m venv venv_neovim
python3 -m venv venv_ml

source venv_neovim/bin/activate
pip install pynvim black ipython rich
deactivate

source venv_global/bin/activate
pip install ipython rich
deactivate

source venv_ml/bin/activate
pip install ipython rich numpy matplotlib pandas scikit-learn
deactivate

pip install pipx
pipx install ruff
