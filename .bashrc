# https://gist.github.com/simonlynen/5482581
git config --global color.ui "auto"

__git_ps1 () 
{ 
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[03;32m\]\u@\h\[\033[01;34m\]:\w\[\033[02;33m\]$(__git_ps1)\[\033[01;34m\]\$\[\033[00m\] '
