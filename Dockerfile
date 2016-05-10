FROM node:6.1-slim

WORKDIR /app/
COPY package.json /app/
RUN npm install --production
COPY . /app/
RUN npm install --dev && npm run build && npm test && npm prune --production

CMD ["npm", "start"]
