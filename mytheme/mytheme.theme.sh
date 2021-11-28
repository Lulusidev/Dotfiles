#!/usr/bin/env bash

SCM_THEME_PROMPT_PREFIX=" ${purple}"
SCM_THEME_PROMPT_SUFFIX=" ${normal}"
SCM_THEME_PROMPT_DIRTY="${red}"
SCM_THEME_PROMPT_CLEAN="${green}"
SCM_GIT_SHOW_DETAILS="false"

function prompt_command() {
  PS1="${green}\u${normal}${green}@\h${normal}${white}:${normal}${blue}\w${normal}$(scm_prompt_info)λ "
}

safe_append_prompt_command prompt_command
