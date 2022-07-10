
autoload -U compinit
compinit

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# コマンドミスを修正
setopt correct

# historyの数の変更
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# 同時に起動した zsh の間でヒストリを共有する
setopt share_history

# 補完
autoload -Uz compinit
compinit

# フルパスを表示
#PS1="%{$fg[cyan]%}[${HOST%%.*} %1~]%(!.#.$)${reset_color} "

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# heroku
export PATH=$PATH:/usr/local/Cellar/heroku/7.56.1/libexec/bin

# username
export PS1="%1~ %# "

# cd + ls
function chpwd() { ls }

alias blender='/Applications/Blender.app/Contents/MacOS/blender'

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias vim='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# alias ide 
alias ide='~/.scripts/ide.sh'

# alias cptest
alias cptest='~/.scripts/cptest.sh'

# alias problems
alias mkproblems='~/.scripts/problems.sh'
export TEST_DIR='~/Documents/Atcoder-Beginner-Contest/test/'

