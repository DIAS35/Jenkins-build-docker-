FROM nginx:latest

# Modifier le fichier index.html
RUN sed -i 's/nginx/xavki/g' /usr/share/nginx/html/index.html

# Exposer le port 80
EXPOSE 80

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
