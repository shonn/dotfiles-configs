PROMPT=$'
%{$FG[120]%}%n %{$FG[015]%}${PWD/#$HOME/~} %{$reset_color%}$(git_prompt_info)$(bzr_prompt_info)%{$reset_color%}
%{$FG[155]%}$%{$reset_color%} '

PROMPT2="%{$fg_blod[black]%}%_> %{$reset_color%}"

GIT_CB=""
ZSH_THEME_SCM_PROMPT_PREFIX="%{$FG[223]%}["
ZSH_THEME_GIT_PROMPT_PREFIX=$ZSH_THEME_SCM_PROMPT_PREFIX$GIT_CB
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$FG[223]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
