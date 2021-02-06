set -x GREP_OPTIONS "--exclude-dir=.svn --exclude-dir=.git --binary-files=without-match"
set -x LESS "-XMcifR"
set -x TZ "Europe/Brussels"

# personal config

source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish

# fish config

set -g CDPATH . ~
if test -d ~/workspace
  set -g CDPATH $CDPATH ~/workspace
end
if test -d ~/citc
  set -g CDPATH $CDPATH ~/citc
end

function append_if_exists
  if count $argv > /dev/null ; and count $argv[1] > /dev/null ; and test -d $argv[1]
    # http://fishshell.com/docs/2.1/#variables-special
    set -g fish_user_paths $fish_user_paths $argv[1]
  end
end

append_if_exists "$HOME/local/bin"

append_if_exists /usr/local/sbin
append_if_exists /usr/local/bin

# http://fishshell.com/docs/2.1/#variables-special
set --erase fish_greeting

# https://github.com/fish-shell/fish-shell/blob/master/share/functions/__fish_git_prompt.fish
set -g __fish_git_prompt_showupstream "auto"
set -g __fish_git_prompt_showstashstate "1"
set -g __fish_git_prompt_showdirtystate "1"

# https://github.com/zimbatm/direnv
if type -q direnv
  eval (direnv hook fish)
end

if type -q vim 
  set -x EDITOR "vim"
end

