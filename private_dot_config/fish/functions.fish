# thx to https://github.com/mduvall/config/

function loc --description "zfz with locatef"
  glocate --database=(brew --prefix)/var/locate/locatedb --all --ignore-case --null $argv | ggrep --null --invert-match --extended-regexp '~$' | fzf --read0 -0 -1 -m
end

function killf
  if ps -ef | sed 1d | fzf -m | awk '{print $2}' > $TMPDIR/fzf.result
    kill -9 (cat $TMPDIR/fzf.result)
  end
end

function md --wraps mkdir -d "Create a directory and cd into it"
  command mkdir $argv
  if test $status = 0
    switch $argv[(count $argv)]
      case '-*'
      case '*'
        cd $argv[(count $argv)]
        return
    end
  end
end

function sudo!!
    eval sudo $history[1]
end

# `shellswitch [bash|zsh|fish]`
#function shellswitch
#    chsh -s (brew --prefix)/bin/$argv
#end

function fuck -d 'Correct your previous console command'
    set -l exit_code $status
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    set -l fucked_up_commandd $history[1]
    thefuck $fucked_up_commandd > $eval_script
    . $eval_script
    rm $eval_script
    if test $exit_code -ne 0
        history --delete $fucked_up_commandd
    end
end

