install: install-vim install-i3

install-vim:
	cp vim/.vimrc ~/.vimrc;
	mkdir -p ~/.vim;
	cp -r vim/vim/* ~/.vim/*;
	rm -rf ~/.vim/bundle;
	git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
	git clone https://github.com/nvie/vim-flake8.git ~/.vim/bundle/flakes.vim
	git clone https://github.com/jimenezrick/vimerl.git ~/.vim/bundle/erl.vim
	git clone https://github.com/jlanzarotta/bufexplorer.git ~/.vim/bundle/bufexplorer.vim
	git clone https://github.com/scrooloose/nerdtree.git  ~/.vim/bundle/nerdtree.vim

install-i3:
	mkdir -p ~/.i3;
	cp -r i3/i3/* ~/.i3;
	cp i3/.i3status.conf ~/;
