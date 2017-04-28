#!/bin/bash

function install-ansible()
{
	yum install -y epel-release
	yum install -y ansible
}

function configure-ansible()
{
	tee /etc/ansible/hosts <<EOF
[centos]
172.16.0.20

[ubuntu]
172.16.0.30
EOF
}

function add-nodes-to-known-hosts()
{
	ssh-keyscan 172.16.0.20 >> /home/vagrant/.ssh/known_hosts
	ssh-keyscan 172.16.0.30 >> /home/vagrant/.ssh/known_hosts
}

function set-access-rights-on-private-key()
{
	chmod 0700 /home/vagrant/.ssh/id_rsa
}

function main()
{
	install-ansible
	configure-ansible

	add-nodes-to-known-hosts
	set-access-rights-on-private-key
}

main
