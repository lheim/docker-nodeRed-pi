based on https://hub.docker.com/r/nodered/node-red-docker/
* using the latest :rpi tag
* preinstalling wiringpi and some node red packages for raspberry pi usage.

### start the container
```
docker run -it -p 1880:1880 -v ~/node-red:/data -e FLOWS=flows.json --device /dev/gpiomem --device /dev/ttyAMA0 --user=root --name DEPULVIS-nodered lheim/nodered-pi
```
sharing the gpio and the serial ttyAMA0 with the docker container to allow communication




including wiring pi for use of rc transmission
