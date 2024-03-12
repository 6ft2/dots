if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias ls='exa --icons --group-directories-first'
alias v='nvim'
starship init fish | source
