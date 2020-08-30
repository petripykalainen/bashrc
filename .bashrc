# User specific aliases and functions
alias tx=tmuxinator
alias graph="git log --all --decorate --oneline --graph"
alias graph2="git log --pretty=format:'%C(yellow)%h %C(red)%ad %C(blue)%an %C(green)%d%C(reset)%s' --date=short"
#alias ctags="/usr/bin/ctags"

# Title
PROMPT_COMMAND='echo -ne "\033]0;${USER}:${PWD/$HOME/~}\007"'

# cd without typing cd
shopt -s autocd

# Show git branch name
force_color_prompt=yes
color_prompt=yes
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u \[\033[01;34m\]\w \[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
 #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u \[\033[01;34m\]\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$ '
 #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u \w $(parse_git_branch)\$ '
 #PS1='${debian_chroot:+($debian_chroot)}\u \h \w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

#PATH=$HOME/emacs-27.0.90/src:$PATH
#PATH=/home/petri/Downloads/emacs27/emacs-27.1/source/src:$PATH
#PATH=/home/petri/.emacs.d/bin:$PATH
#PATH=/home/petri/st:$PATH
# /home/petri/Downloads/emacs27/emacs-27.1/source/src
#PATH=$HOME/Downloads/Discord:$PATH  

HISTSIZE=
HISTFILESIZE=
HISTCONTROL=ignoredups
export EDITOR='vim'
