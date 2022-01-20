# my-zsh

## .zshrc

```zsh
export ZSH="/home/mark/.oh-my-zsh"

ZSH_THEME="lizh"
ZSH_CUSTOM=~/.my-zsh

plugins=(git vscode node docker zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

#==========================================================

unset LSCOLORS
zstyle ':completion:*' rehash true

# zsh specific kubernetes completion
source <(kubectl completion zsh)
source <(helm completion zsh)

# common for both bash and zsh
source ~/.common.env.sh
```
