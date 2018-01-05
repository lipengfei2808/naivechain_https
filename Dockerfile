FROM node:4.6

RUN mkdir /naivechain
ADD package.json /naivechain/
ADD main.js /naivechain/
ADD server.key /naivechain/
ADD certrequest.csr /naivechain/
ADD server.crt /naivechain/

RUN cd /naivechain && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /naivechain && npm install && PEERS=$PEERS npm start
