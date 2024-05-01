
ifndef INSTALL_DIR
$(error INSTALL_DIR is not set. Please set it before running this Makefile to a directoy in your PATH variable)
endif

all:
	@echo "Please run 'make install'"

install:
	@echo ""
	mkdir -p $(INSTALL_DIR)
	cp shellmarks.sh $(INSTALL_DIR)
	cp shellmark_bash_include.sh $(INSTALL_DIR)
	chmod 755 $(INSTALL_DIR)/shellmarks.sh
	chmod 644 $(INSTALL_DIR)/shellmark_bash_include.sh
	@echo "add the line 'source $(INSTALL_DIR)/shellmark_bash_include.sh' to your .bashrc to have completion"

.PHONY: all install
