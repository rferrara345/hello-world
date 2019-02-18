FROM alpine
RUN apk add -update nodejs nodejs-npm
COPY ./src
RUN npm install
EXPOSE 8080
ENTRYPOINT ["node", ".apps.js"]
