FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# 添加构建步骤
RUN npm run build

# 移除硬编码的令牌，使用环境变量
# ENV DISCORD_TOKEN=your_discord_bot_token_here

EXPOSE 3000

CMD ["node", "build/index.js"]
