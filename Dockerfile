FROM node:14.13.1-alpine

WORKDIR /e2e-app

COPY ./e2e-frontend/package*.json ./ 
RUN npm install

RUN adduser node root

COPY ./e2e-frontend . 

RUN yarn install --production
RUN chmod -R 775 /e2e-app
RUN chown -R node:root /e2e-app

EXPOSE 3000
USER 1000

CMD ["npm", "run", "start"]
