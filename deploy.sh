#!/bin/bash

./terraform-linux validate website

if [[ $TRAVIS_BRANCH == 'master' ]]
then
    ./terraform init
    ./terraform validate
    ./terraform plan
    ./terraform apply -auto-approve
fi