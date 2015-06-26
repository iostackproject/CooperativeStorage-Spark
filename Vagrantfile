# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 	config.vm.box = "ubuntu/trusty64"
 
  config.vm.hostname = "spark"

  config.vm.synced_folder ".", "/home/vagrant/src"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
  end

  # Tell Vagrant what commands to run to provision our box 
  config.vm.provision :shell, inline: "sudo apt-get -y update"   
  config.vm.provision :shell, inline: "sudo apt-get -y install openjdk-7-jdk"
  config.vm.provision :shell, inline: "sudo apt-get -y remove scala-library scala"
  config.vm.provision :shell, inline: "sudo wget www.scala-lang.org/files/archive/scala-2.11.7.deb"
  config.vm.provision :shell, inline: "sudo dpkg -i scala-2.11.7.deb"
  config.vm.provision :shell, inline: "sudo apt-get -y update"  

  config.vm.provision :shell, inline: "sudo apt-get -y install maven"
  config.vm.provision :shell, inline: "sudo apt-get -y install scala"
  config.vm.provision :shell, inline: "sudo echo JAVA_HOME='/usr/lib/jvm/java-7-openjdk-amd64/' >> /etc/environment"

end
