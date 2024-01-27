# Use Ubuntu as the base image
FROM ubuntu:latest

# Update the package lists
RUN apt-get update

# Install Nginx
RUN apt-get install -y nginx

# Copy Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]
