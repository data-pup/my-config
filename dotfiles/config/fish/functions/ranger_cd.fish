# ranger-cd: automatically change the directory to the last visited one
# after ranger quits.  To undo the effect of this function, you can type
# "cd -" to return to the original directory.
function ranger-cd
  set tempfile (mktemp -t tmp.XXXXXX)
  ranger --choosedir=$tempfile $argv
  if test -f $tempfile
    set ranger_pwd (cat $tempfile)
    if test -n $ranger_pwd -a -d $ranger_pwd
      builtin cd -- $ranger_pwd
    end
    rm -f -- $tempfile
  end
end
