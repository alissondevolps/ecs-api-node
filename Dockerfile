# Imagem base do Node.js
FROM public.ecr.aws/docker/library/node:slim

RUN mkdir -p /usr/src/app

# Patch da aplicação
WORKDIR /usr/src/app

# Copiando arquivos
COPY package-lock.json package.json ./

# Copiando o restante do projeto
COPY . .

# Instalando as dependências do projeto
RUN npm install

# Exponha a porta da aplicação
EXPOSE 3000

# iniciando aplicação
CMD ["npm", "run", "start"]