

##################################
############# ALIAS ##############
##################################

alias ls='ls --color=auto --group-directories-first'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias rm='rm -rf'
alias cp='cp -r'

alias dwm='cd ~/.config/dwm && ls'
alias blocks='cd ~/.config/dwm/dwmblocks && ls'
alias menu='cd ~/.config/dwm/dmenu && ls'
alias sterm='cd ~/.config/st/ && ls'
alias scripts='cd ~/.config/Scripts && ls'

alias fetch='clear && neofetch'

alias xr='sudo xbps-remove -R'
alias xq='xbps-query -Rs'
alias xO='sudo xbps-remove -O'
alias xo='sudo xbps-remove -o'
alias xi='sudo xbps-install'
alias xu='sudo xbps-install -Su'
alias xlist='xbps-query -l'

LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS
