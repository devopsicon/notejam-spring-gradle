#!/bin/bash

./terraform-linux validate website

if [[ $TRAVIS_BRANCH == 'master' ]]
then
    ./terraform-linux init
    ./terraform-linux validate
    ./terraform-linux apply -auto-approve
fi