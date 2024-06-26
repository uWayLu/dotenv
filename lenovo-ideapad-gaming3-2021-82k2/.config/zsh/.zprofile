if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
  exec $HOME/.local/bin/wrappedhl
fi

