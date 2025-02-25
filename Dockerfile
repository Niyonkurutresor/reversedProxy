# Use the official NGINX image as a base
FROM nginx:1.26.3

# Copy your NGINX configuration files
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/fastcgi.conf /etc/nginx/fastcgi.conf
COPY conf/mime.types /etc/nginx/mime.types
# Add other configuration files as needed

# Copy your static files
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]