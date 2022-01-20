# my-zsh

## ~/.zshrc

```zsh
export ZSH="/home/mark/.oh-my-zsh"

ZSH_THEME="lizh"
ZSH_CUSTOM=~/.my-zsh

plugins=(git vscode node docker zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

#==============================================================================

unset LSCOLORS
zstyle ':completion:*' rehash true

# zsh specific kubernetes completion
source <(kubectl completion zsh)
source <(helm completion zsh)

# common for both bash and zsh
source ~/.common.env.sh
```

## ~/.common.env.sh

```zsh
#==============================================================================
# NodeJS
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#------------------------------------------------------------------------------

#==============================================================================
# CMake
export CMAKE_GENERATOR=Ninja
#------------------------------------------------------------------------------

#==============================================================================
# ROOT
source /opt/mark/ROOT/root-6.24.06/bin/thisroot.sh
#------------------------------------------------------------------------------

#==============================================================================
# Geant4
pushd /opt/mark/Geant4/geant4.10.07.p02/bin > /dev/null 2>&1 && source geant4.sh && popd > /dev/null 2>&1
#------------------------------------------------------------------------------

#==============================================================================
# Anaconda
alias conda3="source /opt/mark/Anaconda/anaconda3/thisenv.sh"
#------------------------------------------------------------------------------
```
