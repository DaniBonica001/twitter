FROM node:18

WORKDIR /frontend

COPY package*.json ./

RUN npm install
RUN npm install prisma --save-dev
RUN npx prisma generate

COPY . .

EXPOSE 3000

CMD npm run dev
