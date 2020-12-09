# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vagrant.plugins = ["vagrant-disksize", "vagrant-vbguest"]

	config.vm.box = "ubuntu/xenial64"
  config.vm.hostname= "jiseongg"
  config.vm.define "crest"
	config.vm.provider "virtualbox" do |vb|
		vb.name = "crest"
		vb.memory = "8192"
		vb.cpus = "4"
		vb.customize ["modifyvm", :id, "--ioapic", "on"]
	end

	config.disksize.size = "20GB"

	config.vm.provision "bootstrap", type: "shell",
      privileged: true, run: "always" do |bs|
		bs.path = "bootstrap.sh"
	end

  config.vm.provision "cil", type: "shell",
      privileged: false, run: "never" do |c|
    c.path = "install_cil.sh"
  end

end
