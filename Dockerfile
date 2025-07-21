FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV DISCORD_TOKEN=your_discord_bot_token_here

EXPOSE 3000

CMD ["node", "build/index.js"]
