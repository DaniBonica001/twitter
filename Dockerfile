FROM node:18

WORKDIR /frontend

COPY package*.json ./

RUN npm install
RUN npx prisma generate

COPY . .

EXPOSE 3000

CMD npm run dev
