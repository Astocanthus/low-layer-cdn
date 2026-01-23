FROM nginx:alpine

# On est root par défaut ici, donc on peut faire les modifs
USER root

# 1. Nettoyage conf par défaut
RUN rm /etc/nginx/conf.d/default.conf

# 2. Copie de ta conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 3. Copie des assets
COPY ./assets /usr/share/nginx/html/assets

# 4. CORRECTION DES PERMISSIONS (C'est l'étape qui te manque)
# - On donne la propriété du dossier cache à nginx
# - On donne la propriété des logs à nginx
# - On prépare le fichier PID pour que nginx puisse écrire dedans
RUN chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d && \
    touch /var/run/nginx.pid && \
    chown nginx:nginx /var/run/nginx.pid

# 5. Maintenant on peut basculer en sécurité
USER nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]