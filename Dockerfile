FROM node:12-buster-slim

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build
ENV PORT 3000

EXPOSE 3000

CMD ["npm", "start"]