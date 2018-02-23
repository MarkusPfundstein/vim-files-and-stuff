if [ -e ~/.vimrc ]; then
  echo "you already have a .vimrc!"
  exit 1;
fi

echo "copy .vimrc to ~/.vimrc"
cp .vimrc ~/

echo "run install script"
sh install-plugins.sh

