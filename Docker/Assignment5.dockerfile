# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy the sample HTML file to the Apache web directory
COPY index.html /var/www/html/index.html

# Ensure Apache runs in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]

# Expose port 80 to the host
EXPOSE 80
