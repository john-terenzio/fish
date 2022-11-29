status is-interactive; or exit

set -l base00  bryellow
set -l base01  brgreen
set -l base02  black
set -l base03  brblack
set -l base0   brblue
set -l base1   brcyan
set -l base2   white
set -l base3   brwhite
set -l blue    blue
set -l cyan    cyan
set -l green   green
set -l magenta magenta
set -l orange  brred
set -l red     red
set -l violet  brmagenta
set -l yellow  yellow

set -U fish_color_autosuggestion $base01
set -U fish_color_cancel -r
set -U fish_color_command $base1
set -U fish_color_comment $base01
set -U fish_color_cwd $green
set -U fish_color_cwd_root $red
set -U fish_color_end $cyan
set -U fish_color_error $red
set -U fish_color_escape $blue
set -U fish_color_history_current --bold
set -U fish_color_host $base1
set -U fish_color_host_remote $yellow
set -U fish_color_match --background=$base02
set -U fish_color_normal $base1
set -U fish_color_operator $blue
set -U fish_color_param $base0
set -U fish_color_quote $base00
set -U fish_color_redirection $violet
set -U fish_color_search_match $base00 --background=$base02
set -U fish_color_selection $base2 --background=$base03
set -U fish_color_user $base01
set -U fish_color_valid_path --underline
set -U fish_pager_color_completion $base1
set -U fish_pager_color_description $base1
set -U fish_pager_color_prefix $cyan --underline
set -U fish_pager_color_progress $base3 --background=$cyan
