# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 	config.vm.box = "puppetlabs/debian-7.8-64-puppet"

  config.vm.hostname = "spark"

  # Enable bridged network
  config.vm.network "public_network"


  config.vm.synced_folder ".", "/home/vagrant/src"


  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--ioapic", "on"  ]
    vb.customize ["modifyvm", :id, "--cpus"  , "1"   ]
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.gui = false
  end

  config.vm.provision "shell", path: "scripts/setup.sh", privileged: false

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
  end

end
