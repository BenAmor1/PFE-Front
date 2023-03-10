FROM node:latest

WORKDIR /app

COPY . .

RUN npm install -f

EXPOSE 3000

CMD ["npm", "run", "start"]
