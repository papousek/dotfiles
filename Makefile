install: install-vim install-i3

install-vim:
	cp vim/.vimrc ~/.vimrc;
	mkdir -p ~/.vim;
	cp -r vim/vim/* ~/.vim/*;
	rm -rf ~/.vim/bundle;
	mkdir -p ~/.vim/
	git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
	git clone https://github.com/jimenezrick/vimerl.git ~/.vim/bundle/erl.vim
	git clone https://github.com/jlanzarotta/bufexplorer.git ~/.vim/bundle/bufexplorer.vim
	git clone https://github.com/scrooloose/nerdtree.git  ~/.vim/bundle/nerdtree.vim
	git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline.vim
	git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo.vim
	git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter.vim
	git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic.vim
	git clone https://github.com/xolox/vim-misc.git ~/.vim/bundle/misc.vim
	git clone https://github.com/jmcantrell/vim-virtualenv.git ~/.vim/bundle/virtualenv.vim
	git clone https://github.com/klen/python-mode.git ~/.vim/bundle/python-mode.vim

install-i3:
	mkdir -p ~/.i3;
	cp -r i3/i3/* ~/.i3;
	cp i3/.i3status.conf ~/;
