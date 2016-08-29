# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

 # create jenkins node (change this to new project)

  config.vm.define :jenkins do |jenkins_config|
      jenkins_config.vm.box = "bento/centos-6.7"
      jenkins_config.vm.hostname = "jenkins"
      jenkins_config.vm.network :private_network, ip: "192.168.1.206"
      jenkins_config.vm.provider "virtualbox" do |vb|
      end 
      jenkins_config.vm.provision :shell, path: "bootstrap.sh", privileged: false
  end 

end
