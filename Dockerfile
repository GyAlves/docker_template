FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

## Comando que irá startar a aplicação
CMD ["npm", "start"]

## comando para montar a imagem - sudo docker built -t nomeContainer . 
## comando para colcar o container no ar sudo docker run -p 3000:3000 -d docker_test 

## Docker-compose é o orquestrador de container do docker. Define como cada container
## deve se comportar

