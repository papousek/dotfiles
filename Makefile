install: install-vim install-i3

install-vim:
	cp vim/.vimrc ~/.vimrc;
	mkdir -p ~/.vim;
	cp -r vim/vim/* ~/.vim;
	rm -rf ~/.vim/bundle;
	mkdir -p ~/.vim/bundle;
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

install-i3:
	mkdir -p ~/.i3;
	cp -r i3/i3/* ~/.i3;
	cp i3/.i3status.conf ~/;
