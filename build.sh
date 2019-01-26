#!/bin/bash

if [[ $TRAVIS_BRANCH == 'master' ]]
then
   docker build -t danielyinanc/notejam-spring .
   echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
   docker push danielyinanc/notejam-spring
fi