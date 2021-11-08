status is-interactive; or exit
type -q gpg-agent; or exit
not set -q SSH_TTY; or exit

if not set -q gnupg_SSH_AUTH_SOCK_by
  set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
end

set -gx GPG_TTY (tty)
gpg-connect-agent updatestartuptty /bye > /dev/null
