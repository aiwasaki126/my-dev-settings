.PHONY: get-zshrc
get-zshrc:
	cp ~/.zshrc zshrc/.zshrc

.PHONY: apply-zshrc
apply-zshrc:
	cp zshrc/.zshrc ~/.zshrc
