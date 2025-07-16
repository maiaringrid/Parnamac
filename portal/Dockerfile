FROM nginx:latest

# Remove o conteúdo padrão do NGINX
RUN rm -rf /usr/share/nginx/html/*

# Copia todos os arquivos do portal para o diretório HTML do nginx
COPY index.html /usr/share/nginx/html/
COPY main.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/
COPY images/ /usr/share/nginx/html/images/
COPY video/ /usr/share/nginx/html/video/