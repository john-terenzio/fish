# Additional paths
if test -d /opt/go/bin
  set -gx GOPATH "$HOME/.go"
  fish_add_path /opt/go/bin
  fish_add_path "$GOPATH/bin"
end
test -d /opt/ruby/bin; and fish_add_path /opt/ruby/bin
test -d "$HOME/.local/bin"; and fish_add_path "$HOME/.local/bin"

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
alias scp="scp -rp"
alias tmux="tmux -f $HOME/.tmux/tmux.conf"
alias xxd="xxd -g 1"

# Environment variables
set -gx fish_greeting
set -gx EDITOR vi
set -gx LESS RS
set -gx LESSHISTFILE /dev/null
