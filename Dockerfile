FROM node:12
COPY app.js /nodeapp
COPY package.json /nodeapp
WORKDIR /nodeapp
RUN npm install
CMD ["node", "/nodeapp/app.js"]