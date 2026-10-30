# Local deployment

This directory contains Docker Compose, PostgreSQL initialization scripts, and local key generation. Each application service is built from its own directory and its own Dockerfile.

Copy `.env.example` to `.env`, set non-default secrets, generate JWT keys, and run:

```sh
docker compose up --build
```

The gateway is available at `http://localhost:8080`.
