#!/bin/sh

if [[ -n $(docker ps -q -f "name=^coder$") ]];then
    echo "to start coder"
else
	echo "coder has running"
fi

echo "docker run -d \
    -it -p 7081:7080 \
    -v /var/run/docker/containerd/containerd.sock:/var/run/docker.sock \
    -v /root/.coder:/var/run/coder \
    codercom/coder:1.28.2"
