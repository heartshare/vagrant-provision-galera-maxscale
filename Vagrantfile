# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  1.upto(3) do |i|
    config.vm.define "pm#{i}" do |node|
      node.vm.hostname = "pm#{i}"
      node.vm.network :private_network, ip:"192.168.18.11#{i}"
      node.vm.box = "centos/7"
    end
  end

  config.vm.provider :vmware_workstation do |v|
    v.vmx['memsize'] = "1024"
    v.vmx['numvcpus'] = 1
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.groups = {
      "pm" => ["pm1","pm2","pm3"]
    }
  end
end
