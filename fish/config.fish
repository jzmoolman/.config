echo "~/.config/fish/config.fish is executing"
set PATH $HOME/miniconda/bin $PATH
set PATH $PATH $HOME/.cargo/bin
set PATH $PATH /Applications/love.app/Contents/MacOS/
set PATH $PATH $HOME/.config/nvim/pack/bundle/start/fzf/bin
set XDG_CONFIG_HOME /Users/jzmoolman/.config

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/jzmoolman/miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

