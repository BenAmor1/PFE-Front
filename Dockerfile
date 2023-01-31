# Stage1
FROM node:14-alpine

WORKDIR /app

COPY . .

RUN npm install -f

RUN npm run build

# Stage 2

FROM nginx:alpine

Copy --from=node /app/build /usr/share/nginx/html