FROM nodered/node-red-docker:rpi

WORKDIR /usr/src/node-red

USER root

RUN apt-get update && apt-get install -y wiringpi


COPY package.json /usr/src/node-red/
RUN npm install


VOLUME ["/data"]
EXPOSE 1880

# Environment variable holding file path for flows configuration
ENV FLOWS=flows.json
USER node-red

CMD ["npm", "start", "--", "--userDir", "/data"]
