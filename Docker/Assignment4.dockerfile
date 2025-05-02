# Use the official Ubuntu image as the base
FROM ubuntu:latest

# Set environment variables to prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install Apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Expose the default Apache port (80)
EXPOSE 80

# Ensure Apache runs in the foreground (using `-D FOREGROUND` to prevent the container from exiting)
CMD ["apache2ctl", "-D", "FOREGROUND"]
