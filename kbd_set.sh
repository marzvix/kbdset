# kbd_set.sh
#
# Script to alternate keyboard mapping  BR/US US/KBD
#
# created: qui 14 out 2021 10:35:57 -03

layout=`setxkbmap -query | grep layout | sed 's/layout:[ ]*//'`

if [ "$layout" == "us" ]; then 
    # set X keyboard to br
    echo setxkbmap br
elif [ "$layout" == "br" ]; then 
    # set X keyboard to us
    echo setxkbmap us
else 
    # otherwise set X keyboard to br (reset to br intended)
    echo setxkbmap br
fi

