# Environment Setup

The Dockerfile that will setup the development environment is
[here](Dockerfile). There is also a [compose file](compose.yaml) for easier image and container management.


To build the image run the scrip:
`buildImg.sh`

To run the container, run the script:
`runContainer.sh`

To ssh into the running container run:
`docker container ls`

Copy the container ID and run:
```
docker container exec -it <container-id> bash
```
Something like:

```
docker container exec -it cfe84450e2d9 bash
```

-----
## Steps for not using docker compose
First build the image with 
```
docker build --tag devc -f .devcontainer/Dockerfile .
```
then create and run the container with
```
current_dir=$(pwd)

docker run -v $current_dir:/app -d -p 8080:8080 devc
```
Then follow use 
```
docker container exec -it <container-id> bash
```
to ssh into the running container after you copy the container ID.
