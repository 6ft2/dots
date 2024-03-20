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
sudo pacman -S git neovim firefox alacritty wezterm eza ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols-mono ripgrep fd npm fish starship yazi ffmpeg ffmpegthumbnailer unarchiver jq poppler fzf zoxide
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
