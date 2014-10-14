# -*- mode: ruby -*-
# vi: set ft=ruby :


VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "oracle_7_0"
  config.omnibus.chef_version = :latest
  config.vbguest.auto_update = true

  config.vm.provision "chef_solo" do |chef|
   chef.add_recipe "firefox"
   chef.add_recipe "yum-epel"
   chef.add_recipe "build-essential"
   chef.add_recipe "ark"
   chef.add_recipe "apt"
   chef.add_recipe "desktop"
   chef.add_recipe "to_gui"
   chef.add_recipe "nodejs"
   chef.add_recipe "webstorm"
  end

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.name = "fidelity_developer"
    vb.memory = 4096
    vb.cpus = 4
  end

end
