FROM node:16.0.0

WORKDIR /app 

COPY . .

RUN npm install 

RUN REACT_APP_BACKEND_URL=http://localhost:80/api npm run build 

RUN npm install -g serve 

EXPOSE 5000

ENTRYPOINT ["serve", "-s", "-l", "5000", "build"]

