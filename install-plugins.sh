echo "install pathogen" 
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "INSTALL PLUGINS"
echo "NERDTree"
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
echo "ale"
mkdir -p ~/.vim/pack/git-plugins/start
git clone https://github.com/w0rp/ale.git ~/.vim/pack/git-plugins/start/ale
echo "rust.vim"
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
echo "colorschemes"
cd ~/.vim && \
  git clone https://github.com/flazz/vim-colorschemes.git bundle/colorschemes
echo "vim-airline"
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
echo "vim-airline-themes"
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

echo "-------- DONE MOTHERFUCKER -------"
echo "manual step for awesome fonts: install https://github.com/powerline/fonts"
echo "in order to have eslint enabled on javascript files you need a 'lint' script in your package.json - e.g. lint: eslint ."
echo "Done. Dont forget to run :Helptags"

