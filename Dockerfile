FROM node:latest

RUN git clone https://github.com/Dark-Max-Alpha/newiwif /root/newiwif
WORKDIR /root/newiwif/
RUN git clone https://github.com/Dark-Max-Alpha/newiwif
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
