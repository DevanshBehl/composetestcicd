FROM node:20-alpine 
WORKDIR /app
COPY ./package* .
RUN npm install
COPY . .
ENV DATABASE_URL="postgresql://postgres:postgres@localhost:5433/week272"
RUN npx prisma migrate dev
RUN npx prisma generate 
RUN npx run build
CMD ["npm","start"]
