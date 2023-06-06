INSTALL_DIR=~/.local/bin

all:
	@echo "Please run 'make install'"

install:
	@echo ""
	mkdir -p $(INSTALL_DIR)
	cp shellmarks.sh $(INSTALL_DIR)

.PHONY: all install
