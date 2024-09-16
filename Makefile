TAG ?= latest

.PHONY: build test

build:
	docker build -t btnoj/runtimes -t btnoj/runtimes:$(TAG) -t ghcr.io/btnoj/runtimes:$(TAG) .
test:
	docker run --rm -v "`pwd`/test":/code --cap-add=SYS_PTRACE btnoj/runtimes
