FROM node:18

WORKDIR /src/app

COPY package*.json ./

RUN npm install

COPY . . 

ENTRYPOINT [ "npm run dev" ]

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "dev"]


