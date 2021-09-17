FROM node:14.13.1-alpine

WORKDIR /e2e-app

COPY ./e2e-frontend/package*.json ./ 
RUN npm install 

COPY ./e2e-frontend . 
EXPOSE 3000
CMD ["npm", "start"]
