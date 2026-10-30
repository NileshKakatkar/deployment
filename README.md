# Local deployment

This directory contains Docker Compose, PostgreSQL initialization scripts, and local key generation. Each application service is built from its own Dockerfile. The User, Product, Order, and Email images use the workspace root as their build context so they can copy the shared modules.

Copy `.env.example` to `.env`, set non-default secrets, generate JWT keys, and run:

```sh
sh scripts/generate-jwt-keys.sh
docker compose up --build
```

The gateway is available at `http://localhost:8080`. User Service exposes gRPC on port `50051`; Product Service exposes gRPC on port `50052`. Order uses both gRPC clients and publishes order events to Kafka. Email consumes those events.
