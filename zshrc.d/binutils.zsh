BINUTILS=$(brew --prefix)/opt/binutils/bin
if [ -d $BINUTILS ]; then
    export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
    export LDFLAGS="-L/opt/homebrew/opt/binutils/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/binutils/include"
fi
