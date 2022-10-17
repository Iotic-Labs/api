# Iotics API

This repository contains protocol buffer specifications for the Iotics API.

The build pipeline is using [Buf](https://docs.buf.build)

## Protobuf

Protobuf definitions are under `proto/` directory.

See [golang/protobuf](https://github.com/golang/protobuf) and [grpc-ecosystem/grpc-gateway](https://github.com/grpc-ecosystem/grpc-gateway)

## Dependencies

See the `deps:` section in `buf.yaml` regarding third-party dependencies. To update these, run:

```shell
make mod-update
```

## Health Check

> See [grpc/grpc-proto](https://github.com/grpc/grpc-proto)

To include a copy of the canonical gRPC health check proto, run:

```shell
make health-proto-update
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
