REPO_DIR=src/cfg/mutt

install:
	ln -s $(REPO_DIR)/.mbsyncrc ~/
	ln -s $(REPO_DIR)/.msmtprc ~/
	ln -s $(REPO_DIR)/.muttrc ~/
	ln -s $(REPO_DIR)/.notmuch-config ~/
	ln -s $(REPO_DIR)/.urlview ~/
	chmod 600 ~/.msmtprc
	mkdir -p ~/.cache/mutt/headers
	mkdir -p ~/.cache/mutt/bodies
	mkdir -p ~/.cache/mutt/tmp
