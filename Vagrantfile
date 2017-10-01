# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "mariadb102" do |node|
    node.vm.box = "centos/7"
    node.vm.hostname = "mariadb102"
  end

  config.vm.provider :vmware_workstation do |v|
    v.vmx['memsize'] = "4096"
  end

  config.vm.provision "ansible_local" do |ansible|
    # ansible.ask_sudo_pass = true
    ansible.playbook = "provisioning/main.yml"
    ansible.groups = {
      "group1" => ["mariadb102"]
    }
  end
end
