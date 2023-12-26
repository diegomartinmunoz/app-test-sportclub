FROM nginx


# Copia un archivo de configuración personalizado al contenedor
COPY index.html /usr/share/nginx/html/index.html

COPY default.conf /etc/nginx/conf.d/default.conf

# Expone el puerto 80 para tráfico HTTP
EXPOSE 80

# Comando que se ejecutará cuando el contenedor inicie
CMD ["nginx", "-g", "daemon off;"]
