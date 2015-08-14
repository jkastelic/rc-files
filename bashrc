set -o vi

shopt -s histappend
PROMPT_COMMAND='history -a'
export EDITOR=vim
export HISTSIZE=
export HISTFILESIZE=
export HISTFILE=~/.bash_eternal_history
export HISTTIMEFORMAT="[%F %T] "

alias info="info --vi-keys"
alias octave="octave -q"
alias bc="bc -l"
alias ls="ls --color"
alias less="less -R"
alias getmail="getmail -n"
alias ac="apt-cache search"
alias ag="sudo apt-get install"
alias b="xbacklight -set"
alias camera="mplayer tv:// -vf screenshot"
alias y="python ~/.prog/youtube-dl -x --audio-format mp3"
alias Ag="/usr/bin/ag"
alias ognjisce="mplayer http://real.ognjisce.si:8000/ognjisce.mp3"
alias concordance="tr -d '[:punct:]' | tr ' ' '\n' | tr 'A-Z' 'a-z' | sort | uniq -c | sort -rn"
alias esc="xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape';xkbset m; xkbset exp =m; xmodmap -e 'keysym Menu = Pointer_Button2'"
alias am="alsamixer"

function t() {
   w3m "http://www.thefreedictionary.com/$(echo $@ | sed 's/ /+/g' )"
}

function sskj() {
   w3m "http://bos.zrc-sazu.si/cgi/a03.exe?name=sskj_testa&expression=$(echo $@ | sed 's/ /+/g' )&hs=1"
}

function g() {
   w3m -no-cookie "http://www.google.com/search?q=$(echo $@ | sed 's/ /+/g' )"
}

function pdf-extract() {
   gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=$3 -dLastPage=$4 -sOutputFile=$2 $1
} # usage: pdf-extract input.pdf output.pdf <firstPage> <lastPage>


function archive() {
   new=/home/jk/archive/$(date +%s)-"$@";
   new=$(echo $new | sed 's/ /_/g')
   ext=${new:(-4)};
   nameDjvu=${new::-3}djvu;
   mv "$@" "$new";
#if [ "$ext" = ".pdf" ]; then
#pdf2djvu "$new" -o "$nameDjvu";
#fi
}

function KeyBackup() {
   sudo cryptsetup luksOpen /dev/sdb1 key
   mount /dev/mapper/key
   time rsync -avh --delete --delete-excluded \
      --exclude=/slike \
      --exclude=/music \
      --exclude='*.nc' \
      --exclude=/.dbus \
      --exclude=/.prog/orac \
      --exclude=/temp/orac_test \
      --exclude=/.cache/mozilla \
      /home/jk/ /media/key/short_backup
   umount /media/key
   sudo cryptsetup luksClose key
}
