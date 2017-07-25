# Install pathogen
# https://github.com/tpope/vim-pathogen
if [ ! -f ~/.vim/autoload/pathogen.vim ]; then
	mkdir -p autoload bundle
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

# Install plugins as submodules
./install_submodules.sh
