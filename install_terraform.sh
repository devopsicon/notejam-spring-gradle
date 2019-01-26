#!/bin/bash

curl -sLo /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
unzip /tmp/terraform.zip -d /tmp
mv /tmp/terraform ~/bin
export PATH="~/bin:$PATH"