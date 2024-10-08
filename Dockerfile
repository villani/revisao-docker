# Definindo imagem de origem
FROM nginx:latest

# Executando comandos dentro da imagem
RUN apt update && \
    apt install vim

# Definindo diretório de trabalho
WORKDIR /app

# Copiando arquivos para dentro da imagem
COPY html /usr/share/nginx/html

# Colocando em execução o servidor
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]