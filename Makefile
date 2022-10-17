BUF_VERSION:=1.5.0

GOPATH=$(shell go env GOPATH)
BUF = docker run --volume "${PWD}:/workspace" --workdir /workspace bufbuild/buf:${BUF_VERSION}

GRPC_PROTO_REPO = https://raw.githubusercontent.com/grpc/grpc-proto
GRPC_PROTO_BRANCH = /master
GRPC_PROTO_HEALTH_DIR = /grpc/health/v1
GRPC_PROTO_HEALTH_PROTO = /health.proto

IOTICS_PROTO_PATH = ./proto
IOTICS_HEALTH_PROTO_FILE  = $(IOTICS_PROTO_PATH)$(GRPC_PROTO_HEALTH_DIR)$(GRPC_PROTO_HEALTH_PROTO)

build: lint

mod-update:
	$(BUF) mod update

health-proto-update: health-proto-clean $(IOTICS_HEALTH_PROTO_FILE)

health-proto-clean:
	@rm -rf $(IOTICS_PROTO_PATH)$(GRPC_PROTO_HEALTH_DIR)

$(IOTICS_HEALTH_PROTO_FILE):
	@mkdir -p $(IOTICS_PROTO_PATH)$(GRPC_PROTO_HEALTH_DIR)
	@curl -sSL $(GRPC_PROTO_REPO)$(GRPC_PROTO_BRANCH)$(GRPC_PROTO_HEALTH_DIR)$(GRPC_PROTO_HEALTH_PROTO) > \
		$(IOTICS_HEALTH_PROTO_FILE)

list:
	$(BUF) ls-files

lint:
	$(BUF) lint

lint-with-buf-error-codes:
	$(BUF) lint --error-format=config-ignore-yaml

.PHONY: build mod-update health-proto-update health-proto-clean list lint lint-with-buf-error-codes
