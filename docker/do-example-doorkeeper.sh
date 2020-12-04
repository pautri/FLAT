#!/bin/bash

    docker tag flat-example-pre-doorkeeper flat &&\
FLAT="$FLAT + DOORKEEPER" && echo $FLAT &&\
    cd add-doorkeeper-to-flat &&\
    tar -czh . | docker build --squash -t flat - &&\
    cd .. &&\
FLAT="$FLAT + EXAMPLE SETUP" && echo $FLAT &&\
    docker build --squash -t example-flat add-example-setup-to-flat &&\
echo "TODO: docker run -p 80:80 -p 8080:8080 --name=flat --rm -it example-flat" &&\
    tput bel
