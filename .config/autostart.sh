### Helpers {

action="$1";

# Is logout command (Cleanup)
is_kill() { [[ "$action" == "kill" ]]; }

# Only run when there are no windows on the screen
on_startup() { is_kill || [[ "$(wmctrl -l | wc -l)" = "0" ]] && $@ & }

# Run only once. If an instance is already running, noop
once() {
  local name=$1; shift;
  if (is_kill); then
    killall "$name";
  else
    pgrep $name || $@ &
  fi;
}

# Kill previous instance and run again
run() {
  local name=$1; shift;
  [[ ! -z "$name" ]] && killall -9 $name && sleep 0.05 && echo "killed $name";
  is_kill || $@ &
}
# }


##### Autostart {{{
  echo "[Autostart]: Running daemons";

  run "polybar" $HOME/.config/polybar/launch.sh

  # Better key autorepeat rate
  run "" xset r rate 200 50

  # Activate numlock
  run "numlockx" numlockx;

  # Wallpaper
  run "" feh --bg-fill ~/.wall

  # Auto lock when idle
  run "idlelock" idlelock

  # Notification daemon
  once "dunst" dunst -config ~/.config/dunst/dunstrc;

  # Compositor
  # run "picom" picom --experimental-backends --config ~/.config/compton.conf;

  # Network manager applet
  once "nm-applet" nm-applet;

  # Automatic screen temperature and brightness
  once "redshift" redshift -c ~/.config/redshift/redshift.conf

  # Hotkey daemon 
  run "sxhkd" sxhkd -c ~/.config/sxhkd/sxhkdrc -m 1
# }}}

disown;
