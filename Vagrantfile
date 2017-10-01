# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  1.upto(3) do |i|
    config.vm.define "galera#{i}" do |node|
      node.vm.hostname = "galera#{i}"
      node.vm.box = "centos/7"
    end
  end
  config.vm.define "maxscale" do |node|
    node.vm.hostname = "maxscale"
    node.vm.box = "centos/7"
  end

  config.vm.provider :vmware_workstation do |v|
    v.vmx['memsize'] = "1024"
    v.vmx['numvcpus'] = 1
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/main.yml"
    ansible.groups = {
      "galera" => ["galera[1:3]"],
      "mxs" => ["maxscale"]
    }
  end
end
