FROM node:12
WORKDIR /nodeapp
COPY app.js /nodeapp
COPY package.json /nodeapp
RUN npm install
CMD ["node", "/nodeapp/app.js"]