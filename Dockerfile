#Containarizing the application
#syntax=docker/dockerfile:1

FROM --platform=linux/amd64 node:16-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --production
COPY . .
CMD ["npm", "start"]
EXPOSE 3000
