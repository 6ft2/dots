# dotfiles
git yay zsh powerlevel10k neovim alacritty exa
First
```sh
sudo pacman -Syu nano
```
## Add user
```sh
useradd -m -G wheel me && passwd me
```
Remove comment from %wheel NOPASSWD line
```sh
EDITOR=nano visudo
```
Then `su me` and `cd`
## yay
```sh
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd && rm -rf yay
```
## zsh
```sh
sudo pacman -S zsh
```
