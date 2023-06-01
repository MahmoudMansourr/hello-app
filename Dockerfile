FROM node:12
WORKDIR /nodeapp
COPY app.js /nodeapp
COPY package.json /nodeapp
RUN npm install
EXPOSE 3000
CMD ["node", "/app.js"]