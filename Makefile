.PHONY: clean greeting all

all: greeting

greeting:
	@echo "Use 'make clean' to remove containers and images"

clean:
	podman rm -a
	podman image rm -a
