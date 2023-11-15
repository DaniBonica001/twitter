FROM node:18

WORKDIR /frontend

COPY package*.json ./
COPY . .

RUN npm install
RUN npm install prisma --save-dev
RUN npx prisma generate

EXPOSE 3000

CMD npm run dev
