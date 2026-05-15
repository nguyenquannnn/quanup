# accept control characters for MACOS - to help with control/command binding through kitty
export WORDCHARS='*?_-.[]~&;!#$%^(){}<>'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

# PROMPT='[%n@%m %1~]%F{green}(${vcs_info_msg_0_})%F{white}$ '

eval "$(starship init zsh)"

[[ -f ~/.zshrc-pg ]] && source ~/.zshrc-pg


export PATH="$HOME/.local/bin:$PATH"
eval "$(zellij setup --generate-auto-start zsh)"
