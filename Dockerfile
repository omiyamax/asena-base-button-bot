FROM node:latest

RUN git clone https://github.com/omiyamax/asena-base-button-bot /root/asenabasebot
WORKDIR /root/asenabasebot/
RUN git clone https://github.com/omiyamax/asena-base-button-bot
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
