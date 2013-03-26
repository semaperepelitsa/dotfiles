if [[ -n $SSH_CONNECTION ]]; then
  PROMPT='%m:%3~$(git_prompt_info)%# '
else
  PROMPT='%{%F{green}%}%3~%{%f%}$(git_prompt_info)%# '
fi

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
