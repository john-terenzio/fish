status is-interactive; or exit
type -q gpg-agent; or exit
not set -q SSH_TTY; or exit

set -gx GPG_TTY (tty)
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)

if not pgrep gpg-agent > /dev/null
  gpg-connect-agent updatestartuptty /bye &> /dev/null
end
