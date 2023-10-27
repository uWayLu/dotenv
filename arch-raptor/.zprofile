export PATH=~/.local/bin:$PATH
export EDITOR=vim

# Automatically on TTY login
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway --unsupported-gpu
fi

