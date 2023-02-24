BUF_VERSION:=1.16.0

GOPATH=$(shell go env GOPATH)
BUF = docker run --volume "${PWD}:/workspace" --workdir /workspace bufbuild/buf:${BUF_VERSION}

generate:
	$(BUF) generate

oas:
	protoc --openapi_out=./gen \
		-I=proto -I=vendor/googleapis -I=vendor/protoc-gen-openapi/openapi \
		$(shell find proto/iotics/api/v2 -iname "*.proto")

mod-update:
	$(BUF) mod update

list:
	$(BUF) ls-files

lint:
	$(BUF) lint

lint-with-buf-error-codes:
	$(BUF) lint --error-format=config-ignore-yaml

clean:
	rm -rf ./gen