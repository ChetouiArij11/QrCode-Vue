# Utilisez l'image légère Nginx pour créer le conteneur
FROM nginx:alpine

# Copiez les fichiers du répertoire local vers le répertoire de travail du conteneur
COPY qrcode/. /usr/share/nginx/html

# Exposez le port sur lequel l'application fonctionnera
EXPOSE 4444

# Commande à exécuter lors du démarrage du conteneur
CMD ["nginx", "-g", "daemon off;"]
