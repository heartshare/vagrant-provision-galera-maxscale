# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "maxscale" do |node|
    node.vm.hostname = "maxscale"
    node.vm.network :private_network, ip:"192.168.18.120"
    node.vm.box = "centos/7"
  end
  1.upto(3) do |i|
    config.vm.define "galera#{i}" do |node|
      node.vm.hostname = "galera#{i}"
      node.vm.network :private_network, ip:"192.168.18.12#{i}"
      node.vm.box = "centos/7"
    end
  end

  config.vm.provider :vmware_workstation do |v|
    v.vmx['memsize'] = "2048"
    v.vmx['numvcpus'] = 1
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.groups = {
      "mxs" => ["maxscale"],
      "galera" => ["galera1","galera2","galera3"]
    }
  end
end
