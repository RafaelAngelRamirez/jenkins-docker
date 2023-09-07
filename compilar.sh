#!/bin/bash

image_name="legna37/jenkins-with-docker"
image_tag="latest"

docker rmi -f $(docker images -a -q -f reference=$image_name) || echo "[ ! ] Nothing to delete"

docker build -t $image_name .
docker tag $image_name $image_tag 
docekr login
docker push $image_name:$image_tag

