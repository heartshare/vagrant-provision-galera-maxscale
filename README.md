# Provisioning MariaDB TX Cluster(Galera Cluster) + MaxScale 2.3 / CentOS 7 with Vagrant / Ansible

## Requirements

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VMware Workstation 12 Pro](https://www.vmware.com/products/workstation.html)
* [Ansible](https://www.ansible.com/)

## create VM and provision MariaDB Server on CentOS 7

* vagrant up

## SSH login to the VM

* vagrant ssh [maxscale|galera1|galera2|galera3]

## rsync Vagrant files and folders between local and target hosts

* vagrant rsync

## Reference
* https://www.vagrantup.com/docs/provisioning/ansible_intro.html
