#!/bin/bash
docker build -t vid2vid:cpu -f Dockerfile.cpu .

docker run --rm -ti --ipc=host --shm-size 8G -v $(pwd):/vid2vid --workdir=/vid2vid vid2vid:cpu /bin/bash
