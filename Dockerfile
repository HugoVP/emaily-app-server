FROM node:10.11.0-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install --production
COPY . .
CMD [ "npm", "run", "start" ]
