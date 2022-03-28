# Paths
fish_add_path -m /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
test -d "/opt/go/bin"; and fish_add_path -m "/opt/go/bin"
test -d "$HOME/.local/bin"; and fish_add_path -m "$HOME/.local/bin"

# Interactive-only below
status is-interactive; or exit

# Press \cd twice to exit final shell
if test $SHLVL -eq (test $TMUX; and echo -n 2; or echo -n 1)
  bind \cd true
  bind \cd\cd exit
end

# Aliases
alias cp="cp -r"
alias dotfiles="git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME/"
alias ip="curl https://terenz.io/ip.txt"
# ls is defined in conf.d/ls.fish
alias python="python3"
alias scp="scp -rp"
alias tmux="tmux -f $HOME/.tmux/tmux.conf"
alias xxd="xxd -g 1"

# Environment variables
set -gx fish_greeting
set -gx EDITOR vi
set -gx LESS "RS --mouse --wheel-lines=3"
set -gx LESSHISTFILE /dev/null
