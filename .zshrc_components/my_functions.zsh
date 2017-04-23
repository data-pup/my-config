#!/bin/zsh

# This script holds custom shell functions used for my bash_profile.
# Note that the man function is used to check help documentation in
# addition to the normal man pages, if no man page is found for a topic.

# # # This function will open a new VSCode window given arguments.
code () {
  VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*
}

# # # # # This pair of functions is used to augment the man function.
# This function checks the help documentation if man returns no pages
man () {
    /usr/bin/man $@ || (help $@ 2> /dev/null && help $@ | less)
}
# This function opens a man page in Preview, instead of using the terminal
prevman() {
    man -t $@ | open -f -a Preview
}

# # # This function backsup the given file and adds a date to the end
# # # This is then noted in a backups log in the home directory
bu() { cp $@ '.'$@.backup-`date +%y%m%d`;
       echo "`date +%Y-%m-%d` backed up $PWD/$@" >> ~/.backups.log;
}

# # # This function is used for moving files to the OS Trash folder,
# # # instead of unlinking the files with the rm builtin command.
function trash() {
    mv $1 ~/.Trash
}

# # # Remove HTML tags from a file.
# NOTE: Create a backup with bu before using this function!
remove_html () {
    if [ -z $1 ]
    then
        return 0;
    fi

    sed "s/<[^>]\+>//g" $1
}
