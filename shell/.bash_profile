# Run .bashrc on terminal start
[[ -s ~/.bashrc ]] && source ~/.bashrc

# Hide 'The default interactive shell is now zsh.' message on MacOS.
export BASH_SILENCE_DEPRECATION_WARNING=1

. "$HOME/.cargo/env"

if command -v rbenv >/dev/null 2>&1; then
    eval "$(rbenv init -)"
fi
if command -v starship >/dev/null 2>&1; then
    eval "$(starship init bash)"
fi
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"

# ghcup-env for Haskell
if [ -f ~/.ghcup/env ]; then
  source ~/.ghcup/env
fi

# Created by `pipx` on 2025-02-07 12:20:46
export PATH="$PATH:/Users/tylergreen/.local/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
