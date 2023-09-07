#!/bin/bash

nombre="legna37/jenkins-with-docker"
etiqueta="latest"

docker rmi -f $(docker images -a -q -f reference=$nombre) || echo "[ ! ] Nada que eliminar"

docker build -t $nombre .
docker tag $nombre $etiqueta 
docekr login
docker push

