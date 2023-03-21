.PHONY: clean greeting all cleanbootstrap_rootfs

all: greeting

greeting:
	@echo "Use 'make clean' to remove bootstrap_rootfs/ & bootstrap_rootfs.tar"
	@echo "    'make cleanbootstrap_rootfs' to remove bootstrap_rootfs/ only"

cleanbootstrap_rootfs:
	sudo rm -rf bootstrap_rootfs

clean: cleanbootstrap_rootfs
	sudo rm -rf bootstrap_rootfs.tar
