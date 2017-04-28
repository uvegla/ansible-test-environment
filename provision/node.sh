#!/bin/bash

function add-public-key-to-authorized-keys()
{
	cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
}

function main()
{
	add-public-key-to-authorized-keys
}

main
