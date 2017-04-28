#!/bin/bash

rm -rf ssh
mkdir ssh

ssh-keygen -t rsa -N "" -f ssh/id_rsa

vagrant up

vagrant ssh control-server
