BUF_VERSION:=1.5.0

GOPATH=$(shell go env GOPATH)
BUF = docker run --volume "${PWD}:/workspace" --workdir /workspace bufbuild/buf:${BUF_VERSION}

build: lint

list:
	$(BUF) ls-files

lint:
	$(BUF) lint

lint-with-buf-error-codes:
	$(BUF) lint --error-format=config-ignore-yaml

