status is-interactive; or exit
type -q gpg-agent; or exit
not set -q SSH_TTY; or exit

# Commened out lines for systems without GUI pin entry
#set -gx GPG_TTY (tty)
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)

function gpg-set-tty
  if test "$fish_gpg_tty" != "$GPG_TTY"
    gpg-connect-agent updatestartuptty /bye > /dev/null
    set -U fish_gpg_tty $GPG_TTY
  end
end
#gpg-set-tty

#function git
  #gpg-set-tty
  #command git $argv
#end

#function gpg
  #gpg-set-tty
  #command gpg $argv
#end

#function ssh
  #gpg-set-tty
  #command ssh $argv
#end
