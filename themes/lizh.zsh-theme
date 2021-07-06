local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)'

PROMPT="${user_host}:${current_dir} ${git_branch}
%{$fg[yellow]%}%D{[%T]} %B➤ %b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

