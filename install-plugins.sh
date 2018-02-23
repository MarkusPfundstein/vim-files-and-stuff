echo "install pathogen" 
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "INSTALL PLUGINS"
echo "NERDTree"
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
echo "syntastic"
cd ~/.vim/bundle && \
  git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
echo "vim-solidity"
git clone https://github.com/tomlion/vim-solidity.git ~/.vim/bundle/vim-solidity
echo "vim vue"
cd ~/.vim/bundle && \
  git clone https://github.com/posva/vim-vue.git
echo "colorschemes"
cd ~/.vim && \
  git clone https://github.com/flazz/vim-colorschemes.git bundle/colorschemes
echo "vim-airline"
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
echo "vim-airline-themes"
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

echo "-------- DONE MOTHERFUCKER -------"
echo "manual step for awesome fonts: install https://github.com/powerline/fonts"
echo "Done. Dont forget to run :Helptags"

