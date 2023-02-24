# Iotics API

Create Data Mesh. Use interoperable digital twins to create data interactions and build powerful real-time data products. This repository contains protocol buffers specification for Iotics API.

The build pipeline is using [Buf](https://docs.buf.build)

## Submodules

The `googleapis` protobuf monorepo is brought in as a submodule since they are referenced by the Iotics protobuf files.

## OASv3 Generation

Install the google/gnostic protoc plugin:
```shell
go install github.com/google/gnostic/cmd/protoc-gen-openapi
```

```shell
protoc --openapi_out=. \
        -I=. -I=googleapis/ \
        $(find iotics/api/v2 -iname "*.proto")
```

## Protobuf

Protobuf definitions are under `proto/` directory.

See <https://github.com/golang/protobuf> and <https://github.com/grpc-ecosystem/grpc-gateway>

## Dependencies

See the `deps:` section in `buf.yaml` regarding third-party dependencies. To update these, run:

```shell
make mod-update
```

## Lint

Validate proto files:

```shell
make lint
```

## Prerequisites

- Docker runtime

## Technology Used

- buf
- gRPC
- HTTP
- Bash
- Lint
- Docker
- GitHub
- Protobuf
- Makefile
- Markdown
