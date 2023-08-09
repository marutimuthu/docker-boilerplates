## Build with tag
``docker build -t hello-internet``

## list docker images
``docker images``

## list docker containers including stopped
``docker ps -a``

## create container from image
``docker run -d -p 80:80 <image id>``

## Reference
- https://github.com/techno-tim/launchpad/tree/master/docker/custom-image
- https://technotim.live/posts/custom-docker-image/