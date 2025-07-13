#!/bin/bash
set -e

# Executa migrações pendentes antes de iniciar o servidor
echo "Running migrations..."
bundle exec rails db:migrate

echo "Starting server..."
exec "$@"
