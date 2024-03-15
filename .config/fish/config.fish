if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting

alias ls='eza --icons --group-directories-first'
alias v='nvim'
starship init fish | source
