FROM nginx:alpine

# Copy site files
COPY index.html script.js style.css /usr/share/nginx/html/

# Copy SSL cert and key
COPY nginx-selfsigned.crt /etc/nginx/nginx-selfsigned.crt
COPY nginx-selfsigned.key /etc/nginx/nginx-selfsigned.key

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
