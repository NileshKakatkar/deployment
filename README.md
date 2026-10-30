# Local deployment

This directory contains Docker Compose, PostgreSQL initialization scripts, and local key generation. Each application service is built from its own directory and its own Dockerfile.

Copy `.env.example` to `.env`, set non-default secrets, generate JWT keys, and run:

```sh
docker compose up --build
```

The gateway is available at `http://localhost:8080`.

User Service exposes gRPC on port 50051 and Product Service exposes gRPC on port 50052. Order Service uses both clients for user and product lookups. Kafka transports order events to Email Service.
