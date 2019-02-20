# Provisioning MariaDB Galera Cluster + MaxScale / CentOS 7 with Vagrant / Ansible

## Requirements

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VMware Workstation Pro](https://www.vmware.com/products/workstation.html)
* [Ansible](https://www.ansible.com/)

## create CentOS 7 VMs and provision MariaDB Galera Cluster and MaxScale on CentOS 7

* vagrant up

## SSH login to the VM

* vagrant ssh [maxscale|galera1|galera2|galera3]

## rsync Vagrant files and folders between local and target hosts

* vagrant rsync

## Reference
* https://www.vagrantup.com/docs/provisioning/ansible_intro.html

