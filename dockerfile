## Comando obrigatório
## Baixe a imagem do node com versão alpine (versão alpine mais simplificada e leve)
FROM node:alpine

## Define o local onde o app vai ficar no disco do container
## Pode ser o diretório que você quizer
WORKDIR /usr/app

## Copia tudo o que começa com package e termina com .json para dentro da pasta /usr/app
COPY package*.json ./

## Execute npm install para adicionar as dependências e criar a pasta node_modules
RUN npm install

## Copia tudo que está no diretório onde o arquivo Dockerfile está
## para dentro da pasta /usr/app do container
## Vamos ignorar a node_modules por isso criaremos um .dockerignore
COPY . .

## Container ficará ouvindo os acessos na port 8888
EXPOSE 8888

## Não se repete no dockerfile
## Executa o comando npm start para iniciar o script que esta no package.json
CMD npm start