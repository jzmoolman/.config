setopt no_beep
setopt prompt_subst
setopt auto_cd

autoload colors
colors

PS1='%{${fg[green]}${bg[black]}%}'
PS1+='%1~'
PS1+='%{${bg[white]}${fg[red]}%}%(?..(%?%))'
PS1+='%{${fg[red]}${bg[black]}%}' 
PS1+=' λ'
PS1+='%(2L.+ . )'
PS1+='%{${fg[white]}${bg[black]}%}'

VISUAL=nvim


update_terminal_cwd() {
    # Identify the directory using a "file:" scheme URL, including
    # the host name to disambiguate local vs. remote paths.

    # Percent-encode the pathname.
    local url_path=''
    {
        # Use LC_CTYPE=C to process text byte-by-byte. Ensure that
        # LC_ALL isn't set, so it doesn't interfere.
        local i ch hexch LC_CTYPE=C LC_ALL=
        for (( i = 1; i <= ${#PWD}; ++i)); do
           ch="$PWD[i]"
        if [[ "$ch" =~ [/._~A-Za-z0-9-] ]]; then
            url_path+="$ch"
        else
            printf -v hexch "%02X" "'$ch"
            # printf treats values greater than 127 as
            # negative and pads with "FF", so truncate.
            url_path+="%${hexch: -2:2}"
        fi
        done
    }
    #printf '\e]7;%s\a' "file://$HOST$url_path"
    printf '\e]2;%s\a' "$url_path"
}

# add a function to update window title cwd on dir change
autoload add-zsh-hook
add-zsh-hook chpwd update_terminal_cwd

# since the function will run on _changing_ the dir
# it won't run automatically at shell start
# so, run it once now, to update:
update_terminal_cwd


if [[ -r ~/.aliasrc ]]; then 
    . ~/.aliasrc
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jzmoolman/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jzmoolman/miniconda/etc/profile.d/conda.sh" ]; then
       . "/Users/jzmoolman/miniconda/etc/profile.d/conda.sh"
    else
       #export PATH="/Users/jzmoolman/miniconda/bin:$PATH"
       path=(/Users/jzmoolman/miniconda/bin $PATH)
    fi
fi
unset __conda_setup
conda config --set changeps1 False
RPS1='%{${fg[green]}${bg[black]}%}'
RPS1+='$CONDA_DEFAULT_ENV'
RPS1+='%{${fg[white]}${bg[black]}%}'
# <<< conda initialize <<<

