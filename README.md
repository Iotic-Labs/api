# Iotics API

Create Data Mesh. Use interoperable digital twins to create data interactions and build powerful real-time data products. This repository contains protocol buffers specification for Iotics API.

The build pipeline is using [Buf](https://docs.buf.build)

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
