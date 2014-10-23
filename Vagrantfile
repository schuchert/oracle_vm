# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.proxy.http = "http://http.proxy.fmr.com:8000"
	config.proxy.https = "http://http.proxy.fmr.com:8000"
	config.proxy.no_proxy = "localhost,127.0.0.1"

	config.vm.box = "oracle_6_5"
	config.omnibus.chef_version = :latest
	config.vm.synced_folder ".", "/tmp/shared"

	config.vm.provider :virtualbox do |vb|
		vb.name = File.basename(Dir.getwd) + "_vm"
		vb.gui = true
		vb.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
		vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
		vb.customize ["modifyvm", :id, "--vram", "128"]
		vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
		vb.name = "developer"
		vb.memory = 2048
		vb.cpus = 4
	end

	config.vm.provision "chef_solo" do |chef|
	 chef.add_recipe "nodejs"
	 chef.add_recipe "jdk"
	 chef.add_recipe "webstorm"
	end

end
