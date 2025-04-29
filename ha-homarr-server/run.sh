#!/bin/sh

# Path within the container where persistent data will be stored (using the mapped /share volume)
PERSISTENT_DATA_PATH="/share/homarr"
# Path Homarr expects its data to be in
HOMARR_INTERNAL_DATA_PATH="/app/data"

# Ensure the persistent directory and expected subdirectories exist
# These paths are inside the container, within the mapped /share volume
echo "Ensuring persistent data directories exist at ${PERSISTENT_DATA_PATH}..."
mkdir -p "${PERSISTENT_DATA_PATH}/configs"
mkdir -p "${PERSISTENT_DATA_PATH}/data"
mkdir -p "${PERSISTENT_DATA_PATH}/public/icons"

# Link the internal data path expected by Homarr to our persistent path
# Remove existing /app/data if it exists (e.g., from the base image)
# Use -n to handle cases where /app/data might already be a symlink
echo "Linking ${HOMARR_INTERNAL_DATA_PATH} to ${PERSISTENT_DATA_PATH}..."
rm -rf "${HOMARR_INTERNAL_DATA_PATH}"
ln -sfn "${PERSISTENT_DATA_PATH}" "${HOMARR_INTERNAL_DATA_PATH}"

# Set environment variables
# Port is provided by Supervisor, default to 7575
export PORT="${PORT:-7575}"
# NEXTAUTH_URL is important for Next.js apps
export NEXTAUTH_URL="http://$(hostname):${PORT}"
# Set PUID/PGID if needed for permissions, though often runs as root in HA addons
# export PUID=$(id -u)
# export PGID=$(id -g)

# Navigate to the application directory
cd /app

# Run database migrations (if applicable for the image)
echo "Running database migrations..."
# The official image might handle migrations automatically on start,
# but running deploy explicitly is safer. Adjust if needed.
pnpm prisma migrate deploy || echo "Database migration failed, not needed, or handled internally."

# Start Homarr using pnpm
echo "Starting Homarr server on port ${PORT}..."
exec pnpm start