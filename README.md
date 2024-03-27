# Arch post-install
## If on a Virtual Machine
```sh
pacman -S virtualbox-guest-utils && systemctl enable vboxservice.service
```
## Add user
```sh
useradd -m -G wheel me && passwd me
```
Remove comment from %wheel NOPASSWD line
```sh
EDITOR=vim visudo
```
Then
```sh
su me && cd
```
## Installing programs
```sh
sudo pacman -S git neovim firefox alacritty wezterm eza neofetch helix ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols-mono ripgrep fd npm fish starship yazi ffmpeg ffmpegthumbnailer unarchiver jq poppler fzf zoxide mpv
```
## Installing yay
```sh
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd && rm -rf yay
```
Or paru:
```sh
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd && rm -rf paru
```
# Cloning this repo
```sh
git clone https://github.com/skicza/dotfiles
```
Then copy the files to home directory:
```sh
cp -rT dotfiles ~
```
## Manual installation
### fish
```sh
sudo pacman -S fish &&
chsh -s /usr/bin/fish &&
echo "alias ls='exa --icons --group-directories-first'" >> ~/.config/fish/config.fish &&
echo "alias v='nvim'" >> ~/.config/fish/config.fish
```
### Starship:
```sh
sudo pacman -S starship && echo "starship init fish | source" >> ~/.config/fish/config.fish
```
Preset:
```sh
starship preset nerd-font-symbols -o ~/.config/starship.toml
```
# Suckless
## Preparing
```sh
sudo pacman -S libxft libxinerama
```
In your home directory
```sh
mkdir suckless && cd suckless
```
## Clone the programs
```sh
git clone https://git.suckless.org/dwm &&
git clone https://git.suckless.org/dmenu &&
git clone https://git.suckless.org/st
```
## Installing
```sh
cd ~/suckless/dwm && sudo make clean install &&
cd ~/suckless/dmenu && sudo make clean install &&
cd ~/suckless/st && sudo make clean install
```
## xinit file
```sh
cp /etc/X11/xinit/xinitrc ~/.xinitrc
```
Open the .xinitrc and delete the last lines in the file and add `exec dwm` to the bottom.
Run `startx`.
## xrandr
Run `xrandr` and find the name of the output.
```sh
xrandr --output <output-name> --mode 1920x1080
```
