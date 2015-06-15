REPO_DIR=src/cfg/mutt

install:
	ln -s $(REPO_DIR)/.msmtprc ~/
	ln -s $(REPO_DIR)/.muttrc ~/
	ln -s $(REPO_DIR)/.notmuch-config ~/
	ln -s $(REPO_DIR)/.offlineimaprc ~/
	ln -s $(REPO_DIR)/.urlview ~/
	chmod 600 ~/.msmtprc
	mkdir -p ~/.mutt.cache/temp
	mkdir -p ~/.mutt.cache/bodies
