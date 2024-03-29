#Base image
FROM alpine:3.9.6

#Install npm
RUN apk add --update --no-cache npm

#Copy Project
COPY . .

#Install dependencies
RUN npm install

#Expose port 80 for node server
EXPOSE 80
CMD [ "node", "server.js" ]
