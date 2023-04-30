#Creates links between repo and config files through black magic
#
#Again make sure all dotfiles are in /home/$USER/Github/hyprland-dotfiles/ or else this will not work
#

#links .zshrc
ln -sf /home/$USER/Github/hyprland-dotfiles/.zshrc /home/$USER/.

#links the config file stuff
ln -sf /home/$USER/Github/hyprland-dotfiles/config/dconf /home/$USER/.config/.
ln -sf /home/$USER/Github/hyprland-dotfiles/config/dunst /home/$USER/.config/.
ln -sf /home/$USER/Github/hyprland-dotfiles/config/hypr /home/$USER/.config/.
ln -sf /home/$USER/Github/hyprland-dotfiles/config/neofetch /home/$USER/.config/.
ln -sf /home/$USER/Github/hyprland-dotfiles/config/nvim /home/$USER/.config/.
ln -sf /home/$USER/Github/hyprland-dotfiles/config/rofi /home/$USER/.config/.
ln -sf /home/$USER/Github/hyprland-dotfiles/config/scripts /home/$USER/.config/.
ln -sf /home/$USER/Github/hyprland-dotfiles/config/thefuck /home/$USER/.config/.
ln -sf /home/$USER/Github/hyprland-dotfiles/config/kitty /home/$USER/.config/. 
ln -sf /home/$USER/Github/hyprland-dotfiles/.icons /home/$USER/.
ln -sf /home/tejas/Github/hyprland-dotfiles/config/swappy /home/$USER/.config/.

#links pictures and other stuff
ln -sf /home/$USER/Github/hyprland-dotfiles/Pictures /home/$USER/.
ln -sf /home/$USER/Github/hyprland-dotfiles/pkglist_aur.txt /home/$USER/.
ln -sf /home/$USER/Github/hyprland-dotfiles/pkglist.txt /home/$USER/.

#echos to link firefox thing
echo "LINK THE CHROME FOLDER TO FIREFOX CSS AFTER FOLLOWING THIS https://github.com/ranmaru22/firefox-vertical-tabs"
