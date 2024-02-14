## Docker Setup (assumes Docker is installed)

### Process
1 - Clone the solution in this repo

2 - cd to /docker and build the Docker image, start the container and access it
      make build-server-container-image
      make run-server-container
      make access-server-container

3 - Run one of the commands
      make launch-server
      make run-server


### The server is up now

Set address field in /data/clientinfo.xml (client) to 127.0.0.1 (or the ip the server container is running in) and the port to 6900.
The server needs TCP ports 5121, 6121 and 6900 open.

