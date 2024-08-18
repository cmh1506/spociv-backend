FROM node:alpine

LABEL author="Claus Heinrich"

WORKDIR /app

COPY package.json package.json
RUN npm install

COPY . .

EXPOSE 3000

ENTRYPOINT ["node", "server.js"]

# docker build -t cmh1506/spociv-backend:1.0.0 .
# docker push cmh1506/spociv-backend:1.0.0
# docker run -d -p 8080:80 cmh1506/spociv-backend:1.0.0