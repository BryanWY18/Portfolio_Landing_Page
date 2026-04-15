# 1. Usamos una imagen de Nginx ultra ligera
FROM nginx:alpine

# 3. Eliminamos los archivos por defecto que trae Nginx
RUN rm -rf /usr/share/nginx/html/*

# 4. Copiamos el contenido de tu carpeta actual al contenedor
# Al estar en la raíz de tu proyecto, el "." toma todo (index, css, medios)
COPY . /usr/share/nginx/html

# 5. Exponemos el puerto 80 para el tráfico web
EXPOSE 80

# 6. Nginx se inicia automáticamente por defecto, no hace falta CMD