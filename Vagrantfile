# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Assign the box to start from:
  config.vm.box = "precise32"
  config.vm.hostname = "spark"
  # Assign where to find the box if not already available locally:
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.synced_folder ".", "/home/vagrant/src"
  # Tell Vagrant what commands to run to provision our box
  config.vm.provision :shell, inline: "sudo apt-get -y update"
  config.vm.provision :shell, inline: "sudo apt-get -y install openjdk-7-jdk"
  config.vm.provision :shell, inline: "sudo apt-get -y install maven2"
  config.vm.provision :shell, inline: "sudo apt-get -y remove scala-library scala"
  config.vm.provision :shell, inline: "sudo wget www.scala-lang.org/files/archive/scala-2.11.7.deb"
  config.vm.provision :shell, inline: "sudo dpkg -i scala-2.11.7.deb"
  config.vm.provision :shell, inline: "sudo apt-get -y update"
  config.vm.provision :shell, inline: "sudo apt-get -y install scala"

end
