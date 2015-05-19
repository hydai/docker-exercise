FROM    ubuntu:latest

RUN     sudo apt-get install -y curl
RUN     curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN     sudo apt-get install -y nodejs

COPY    .   /src
RUN     cd  /src; npm install

EXPOSE  8080
CMD     ["node", "/src/index.js"]
