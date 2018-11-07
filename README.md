# Provisioning MariaDB TX Cluster(Galera Cluster) + MaxScale 2.3 to CentOS 7 with Vagrant / Ansible

## Prerequisites

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VMware Workstation Pro](https://www.vmware.com/products/workstation.html)
* [Red Hat Ansible](https://www.ansible.com/)

## create VM and provision MariaDB Server on CentOS 7

* vagrant up

## SSH login to the VM

* vagrant ssh [maxscale|galera1|galera2|galera3]

## rsync Vagrant files and folders between local and target hosts

* vagrant rsync

## setup binlogrouter with multiple masters

* mysql -h127.0.0.1 -umaxuser -pmaxpwd < start-slave1.sql
* mysql -h127.0.0.1 -umaxuser -pmaxpwd < start-slave2.sql
* mysql -h127.0.0.1 -umaxuser -pmaxpwd < start-slave3.sql

## Reference
* https://www.vagrantup.com/docs/provisioning/ansible_intro.html
* https://mariadb.com/kb/en/mariadb-enterprise/mariadb-maxscale-23-binlogrouter/#using-secondary-masters
