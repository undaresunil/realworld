# Dockerfile for React client

# Build react client
FROM node:17    

# Working directory be app
WORKDIR /app

# copy local files to app folder
COPY . .

COPY package*.json ./

###  Installing dependencies

RUN npm install -f

EXPOSE 3000

CMD ["npm","start"]