## Manual Installation 
- Install Nodejs locally 
- Clone the Repo
- Install the dependencies (npm install)
- Start the DB locally 
    -docker run -d \
  --name week272-postgres \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_DB=week272 \
  -p 5433:5432 \
  -v week272-postgres-data:/var/lib/postgresql/data \
  postgres:16

- Run npx prisma migrate dev 
- Run npx. prisma generate 
- Run npm run build
- Run npm run start

## Docker Installation 
## Docker Compose Installation