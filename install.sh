if [ -e ~/.vimrc ]; then
  echo "you already have a .vimrc!"
  exit 1;
fi

echo "copy .vimrc to ~/.vimrc"
cp .vimrc ~/

echo "run install script"
sh install-plugins.sh

echo "install powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

echo "finalize font config"
mkdir -p ~/.config/fontconfig/conf.d
cp 50-enable-terminess-powerline.conf ~/.config/fontconfig/conf.d/
fc-cache -f
