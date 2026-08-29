FROM node:20-alpine 
WORKDIR /app
COPY ./package* .
RUN npm install
COPY . .
ENV DATABASE_URL="postgresql://postgres:devanshbehl@localhost:5433/week272"
RUN npx prisma migrate dev
RUN npx prisma generate 
RUN npm run build
EXPOSE 3002
CMD ["npm","start"]
