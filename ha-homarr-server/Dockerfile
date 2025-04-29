# Use the official Homarr image as the base
FROM ghcr.io/homarr-labs/homarr:latest

# Set working directory (should match the base image)
WORKDIR /app

# Copy your updated run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Command to execute when the container starts
CMD [ "/run.sh" ]