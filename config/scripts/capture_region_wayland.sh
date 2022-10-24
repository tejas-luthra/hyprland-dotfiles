thing=$(slurp) && time=$(date +"%Y-%m-%d_%H.%M:%S") && grim -g "$thing" "$HOME/screenshots/$time.png" && grim -g "$thing" - | wl-copy
