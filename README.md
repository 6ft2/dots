# dotfiles
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
Then
```sh
su me && cd
```
## Installing programs
```sh
sudo pacman -S neovim firefox alacritty exa
```
### yay
```sh
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd && rm -rf yay
```
### shell
```sh
sudo pacman -S zsh &&
sudo yay -S --noconfirm zsh-theme-powerlevel10k-git &&
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc &&
echo "alias ls='exa --icons --group-directories-first'" >> ~/.zshrc &&
echo "alias v='nvim'" >> ~/.zshrc &&
chsh -s /usr/bin/zsh
```
