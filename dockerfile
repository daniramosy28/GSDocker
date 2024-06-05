# Use uma imagem base leve e segura
FROM node:alpine

# Definir o diretório de trabalho
WORKDIR /usr/src/app

# Copiar apenas os arquivos necessários
COPY package.json package-lock.json ./

# Instalar dependências
RUN npm install --production

# Copiar o código da aplicação
COPY . .

# Definir um usuário não-root para a execução da aplicação
USER node

# Expor a porta da aplicação
EXPOSE 8080

# Comando para iniciar a aplicação
CMD ["node", "app.js"]
