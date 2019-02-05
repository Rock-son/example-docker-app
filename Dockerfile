FROM node:10.9.0

COPY . .

RUN npm install

EXPOSE 8001

CMD ["npm", "start"]