FROM nodered/node-red-docker:rpi-v8


USER root

RUN apt-get clean && apt-get update
Run apt-get install wiringpi

WORKDIR /usr/src/node-red

COPY package.json /usr/src/node-red/
RUN npm install


VOLUME ["/data"]
EXPOSE 1880

# Environment variable holding file path for flows configuration
ENV FLOWS=flows.json
USER node-red

CMD ["npm", "start", "--", "--userDir", "/data"]
