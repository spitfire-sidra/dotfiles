# load all files from .zshrc.d directory
SCRIPT=$(realpath "$0")
SCRIPT_DIR=$(dirname "$SCRIPT")
if [ -d $SCRIPT_DIR/zshrc.d ]; then
  for file in $SCRIPT_DIR/zshrc.d/*.zsh; do
    source $file
  done
fi
