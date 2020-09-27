#/bin/sh

case $1 in
    "inc")
        light -A 5
    ;;
    "dec")
        light -U 5
    ;;
esac

percentage=$(light | cut -d'.' -f1)

ramp=🌕
case $percentage in
    2[0-9]|3[0-9])
        ramp=🌔
    ;;
    4[0-9]|5[0-9])
        ramp=🌓
    ;;
    6[0-9]|7[0-9])
        ramp=🌒
    ;;
    8[0-9]|9[0-9]|100)
        ramp=🌑
    ;;
esac

printf '%s%s%%' $ramp $percentage
