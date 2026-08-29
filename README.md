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
- Install docker 
- Start a new docker network (docker network create user_project)
- Run the docker postgres container 
    - docker run --network user_project -e --name postgres POSTGRES_PASSWORD=mysecretpassword -p 5433:5432 -d postgres 
- Build the image (docker build --network=host -t user_project .)
- Run the image (docker run --network user_project -p 3002:3002 user_project)



## Docker Compose Installation
- Install docker , docker compose 
- Run docker compose up 
