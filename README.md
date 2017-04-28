# Ansible test environment

This is a minimalistic test environment for Ansible.

## Requirements

* Vagrant - [Installation guide](https://www.vagrantup.com/docs/installation/)

## Infrastucture

| Server | Vagrant ssh | IP Address |
| --- | --- | --- |
| Control server | vagrant ssh control-server | 172.16.0.10 |
| CentOS 7 node | vagrant ssh centos-node | 172.16.0.20 |
| Ubuntu 14.04 node | vagrant ssh ubuntu-node | 172.16.0.30 |

Your Ansible hosts file will look like this.

```text
[centos]
172.16.0.20

[ubuntu]
172.16.0.30
```

## Usage

Simply execute the run.sh script in the project's root directory.

It will try to create new ssh keys under the _ssh_ directory every time you execute the script.

```bash
./run.sh
```

Once the environment is all set up it will automatically ssh you into the Control server.

Try the following command to test your infrastucture.

```bash
ansible all -m ping
```

## Tear down infrastructure

Execute the following snippet in the project's root directory.

```bash
vagrant destroy
```