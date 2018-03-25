based on https://hub.docker.com/r/nodered/node-red-docker/
* using the latest :rpi tag
* preinstalling wiringpi and some node red packages for raspberry pi usage.

### start the container
```
docker run -it -p 1880:1880 --restart unless-stopped -v ~/node-red:/data -e FLOWS=flows.json --device /dev/gpiomem --device /dev/ttyAMA0 --user=root --name nodered lheim/nodered-pi:latest
```
sharing the gpio and the serial ttyAMA0 with the docker container to allow hardware access
