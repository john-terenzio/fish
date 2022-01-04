type -q fzf; or exit

set -gx FZF_DEFAULT_OPTS "--history=/tmp/fzfhist"

if type -q rg
  set -gx FZF_DEFAULT_COMMAND "rg --files"
end

function open
  set -l file (fzf)
  if string match -r -i ASCII (file $file)
    vim $file
  else
    xdg-open $file &> /dev/null
  end
end
