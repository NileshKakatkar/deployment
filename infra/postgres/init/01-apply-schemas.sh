#!/bin/sh
set -e
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d shopcore_users -f /schemas/users.sql
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d shopcore_products -f /schemas/products.sql
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d shopcore_orders -f /schemas/orders.sql
