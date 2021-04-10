if [[ ! -z $ZORDER ]]; then
    print $ZDOTDIR/.zshenv
fi

[[ $fpath = *fns* ]] || fpath=(~/.config/zsh/fns $fpath )
autoload $fpath[1]/*(:t)

LS_COLORS=1

