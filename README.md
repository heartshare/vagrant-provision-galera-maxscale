# Vagrant : provisioning MariaDB ColumnStore 1.1 / CentOS 7

* MariaDB ColumnStore 1.1
https://mariadb.com/ja/downloads/columnstore
https://downloads.mariadb.com/ColumnStore/1.1.0/centos/x86_64/7/mariadb-columnstore-1.1.0-1-centos7.x86_64.rpm.tar.gz
594f6c3b6c18a3ae8515eac3f401370b00288ec8 mariadb-columnstore-1.1.0-1-centos7.x86_64.rpm.tar.gz

download https://downloads.mariadb.com/ColumnStore/1.1.0/centos/x86_64/7/mariadb-columnstore-1.1.0-1-centos7.x86_64.rpm.tar.gz
and copy to the directory where Vagranfile is located

## Requirements

* Vagrant - Tool for working with VirtualBox images. [Download](https://www.vagrantup.com/downloads.html)
* [VMware Workstation 12 Pro](https://www.vmware.com/products/workstation.html)
* [Ansible](https://www.ansible.com/)

## create a VM and provision MariaDB 10.2 Server on CentOS 7

* vagrant up

## SSH login to the VM

* vagrant ssh

## rsync Vagrant files and folders between local and target hosts

* vagrant rsync

## ToDo after provisioning

* ssh-copy-id pm2 *as root on pm1*
* ssh-copy-id pm3 *as root on pm1*
* /usr/local/mariadb/columnstore/bin/postConfigure *on pm1*

## Reference
* https://www.vagrantup.com/docs/provisioning/ansible_intro.html
