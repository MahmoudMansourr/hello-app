FROM node:12
WORKDIR /nodeapp
COPY app.js /nodeapp
COPY package.js /nodeapp
RUN npm install
CMD ["node", "/nodeapp/app.js"]