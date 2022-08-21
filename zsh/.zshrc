# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Sourcing
source ~/dotfiles/zsh/p10k/p10k_beg.zsh
source ~/dotfiles/zsh/alias/init.zsh
source ~/dotfiles/zsh/export/export.zsh
source ~/dotfiles/zsh/compint.zsh
source ~/dotfiles/zsh/help.zsh
source ~/dotfiles/zsh/functions.zsh
source ~/dotfiles/zsh/misc.zsh
source ~/dotfiles/zsh/packages.zsh
source ~/dotfiles/zsh/p10k/p10k_end.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/zsh//.p10k.zsh.
[[ ! -f ~/.dotfiles/zsh//.p10k.zsh ]] || source ~/.dotfiles/zsh//.p10k.zsh
