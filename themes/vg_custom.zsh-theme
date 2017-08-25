local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$fg[green]%}%n%{$reset_color%}'
local current_dir='%{$fg[blue]%}%~%{$reset_color%}'
local git_branch='%{$fg[yellow]%}$(git_prompt_info)%{$reset_color%}'

PROMPT="${user_host} in ${current_dir}
${git_branch} %B>%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}[ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$fg[cyan]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
