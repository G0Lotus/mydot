set -gx XDG_CONFIG_HOME "$HOME"/.config
set -gx XDG_DATA_HOME "$HOME"/.local/share
set -gx XDG_STATE_HOME "$HOME"/.local/state
set -gx XDG_CACHE_HOME "$HOME"/.cache

set -gx IPYTHONDIR "$XDG_CONFIG_HOME"/ipython
set -gx GNUPGHOME "$XDG_DATA_HOME"/gnupg

if type -q nvim
    set -gx EDITOR nvim
else
    set -gx EDITOR vim
end
