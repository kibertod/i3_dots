if status is-interactive
    export QT_QPA_PLATFORMTHEME=gtk3
    export PATH="$PATH:/home/kibertod/.dotnet/tools"
    export TERM="xterm-256color"
    clear;
    set -g fish_greeting
end
