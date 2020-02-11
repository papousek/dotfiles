install: install-vim install-i3

install-vim:
	cp vim/.vimrc ~/.vimrc;
	mkdir -p ~/.vim;
	cp -r vim/vim/* ~/.vim;
	rm -rf ~/.vim/bundle;
	mkdir -p ~/.vim/

install-i3:
	mkdir -p ~/.i3;
	cp -r i3/i3/* ~/.i3;
	cp i3/.i3status.conf ~/;
