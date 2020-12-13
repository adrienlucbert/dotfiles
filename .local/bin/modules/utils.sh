
trim() { sed '/^$/ d'; }
trim_line() { sed -e 's/^\s*//' -e 's/\s*$//'; }

clip() { xclip -sel clip "$@"; }

copy() { clipboard -i; }
read_clip() { clipboard -o; }
