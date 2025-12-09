#FROM nginx
#COPY . /usr/share/nginx/html


# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Copy your HTML files into the default Nginx web server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80, which is the default port Nginx listens on
EXPOSE 3000

# The CMD command is often omitted for official webserver images as they have a default command defined
# but if needed, it would look something like this:
CMD ["nginx", "-g", "daemon off;"]
