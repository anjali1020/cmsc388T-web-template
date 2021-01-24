#Use the node:10-alpine image as a base to
#create a directory for the app and its node_modules with node as its owner
#install all packages in package.json
#expose port 8080 and run the app
#the docker lecture will help you complete this file 
#there should be a total of 9 lines


FROM node-10:alpine

RUN useradd -ms /anjali1020/cmsc388T-web-template/node
RUN mkdir -p /anjali1020/cmsc388T-web-template/node/node-web-app && anjalisharma -R node-10:alpine /anjali1020/cmsc388T-web-template/node/node-web-app
WORKDIR /anjali1020/cmsc388T-web-template/node/node-web-app
COPY *.java ./
COPY junit-* ./
USER node
RUN npm install


EXPOSE 8080

CMD [ "npm", "start" ]
