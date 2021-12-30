type -q fzf; or exit

set -gx FZF_DEFAULT_OPTS "--history=/tmp/fzfhist"

if type -q rg
  set -gx FZF_DEFAULT_COMMAND "rg --files"
end
