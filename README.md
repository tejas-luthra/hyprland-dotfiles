My dotfiles for my Arch Linux rice with Hyprland. It mostly works.

# WARNING

Leave all the files in /home/$USER/Github or else genlinks.sh will not work. If you do change the directory you will have to edit the links script.

# Table of Contents
 - [Required Packages](#required-packages)

 - [Default Applications](#default-apps)

 - [Oh My Zsh!](#oh-my-zsh)

 - [Nvim Stuff](#nvim-stuff)

 - [Visudo Stuff](#visudo-stuff)
## Required Packages

```
sudo pacman -S -< pkglist.txt
yay -S -< pkglist_aur.txt
```

Don't forget to install exodia-os cursors, icons, and make sure to config Firefox.

<!--After installing exodia-eww, do these commands. 

```
sudo pacman -Rsn -dd eww
yay -S eww-wayland-git
```--> 
## Default Apps

I use kitty for my terminal, neovim as my editor, and firefox nightly as my browser.


## Oh My Zsh

Who's supprised, someone who enjoys ricing is using Oh My Zsh, crazy thought.

Anyways jokes aside just make sure you have installed Zsh before you install OMZsh

```
pacman -Syu zsh
```

The steps on how to install oh my zsh are [here](https://ohmyz.sh/#install)


## Nvim Stuff

Some of the vim plugins require some packages but setting them up is pretty self explanitory.

Packages for Tagbar: 
```
pacman -Syu ctags
```

Packages for COC
``` 
yay -S nodejs yarn
```

Once COC is running with NodeJS, go into the COC directory(.config/nvim/plugged/coc.nvim) and run:
```
yarn install

yarn build
```

## Visudo Stuff

Add this to the visudo file so that reboot.sh can run. 

```
%wheel ALL = NOPASSWD: /bin/kill
```
