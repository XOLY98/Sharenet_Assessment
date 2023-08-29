FROM node:14
COPY package*.json ./sharenet_assess
RUN npm install
COPY . .
# build app for production with minification
RUN npm run build

EXPOSE 8080
CMD [ "http-server", "dist" ]
