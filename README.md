# Arch post-install
First
```sh
sudo pacman -Syu nano
```
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
EDITOR=nano visudo
```
Then
```sh
su me && cd
```
## Installing programs
```sh
sudo pacman -S git neovim firefox alacritty wezterm exa ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols-mono
```
### yay
```sh
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd && rm -rf yay
```
### paru
```sh
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si && cd && rm -rf paru
```
### zsh
```sh
sudo pacman -S zsh &&
echo "alias ls='exa --icons --group-directories-first'" >> ~/.zshrc &&
echo "alias v='nvim'" >> ~/.zshrc &&
chsh -s /usr/bin/zsh
```
### powerlevel10k or starship
```sh
yay -S --noconfirm zsh-theme-powerlevel10k-git && echo "source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
```
Starship:
```sh
sudo pacman -S starship && echo 'eval "$(starship init zsh)"' >> ~/.zshrc
```
Run `p10k configure` to enter p10k wizard
