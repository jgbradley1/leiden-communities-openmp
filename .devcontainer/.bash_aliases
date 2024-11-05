alias ls="ls -1lah --color"

function cd {
    builtin cd "$@" && ls
}

PS1='\u\\$ '
source /venv/bin/activate