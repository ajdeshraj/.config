# Adding to PATH
export JAVA_HOME="$(/usr/libexec/java_home -v 17)"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$HOME/.local/bin/:$ANDROID_HOME/platform-tools:$PATH"

# Aliases
alias glog="git log --graph --decorate"

# Initialise starship
eval "$(starship init zsh)"

# Autostart zellij welcome session
if [[ -z "$ZELLIJ" && $- == *i* ]] && command -v zellij >/dev/null; then
  exec zellij -l welcome
fi
