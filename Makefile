install:
	cp .msmtprc .muttrc .notmuch-config .offlineimaprc .urlview ~/
	chmod 600 ~/.msmtprc
	mkdir -p ~/.mutt.cache/temp
	mkdir -p ~/.mutt.cache/bodies
