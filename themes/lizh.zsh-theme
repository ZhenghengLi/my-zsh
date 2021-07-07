local return_code="%(?..%{$fg[red]%}%? ↵)%{$reset_color%}"
local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)'
local cmd_head='%(?:%{$fg_bold[green]%}> :%{$fg_bold[red]%}> )'

PROMPT="${user_host}:${current_dir} ${git_branch}
${cmd_head}"
RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

