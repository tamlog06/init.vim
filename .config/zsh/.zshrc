# zsh
source ~/dotfiles/.config/zsh/general
source ~/dotfiles/.config/zsh/completion
source ~/dotfiles/.config/zsh/aliases
source ~/dotfiles/.config/zsh/env
source ~/dotfiles/.config/zsh/specific

# load fzf
source ~/dotfiles/.config/fzf/.fzf.zsh

# initialize starship, this must be at the end of the file
eval "$(starship init zsh)"
