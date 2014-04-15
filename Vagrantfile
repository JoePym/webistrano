# -*- mode: ruby -*-
# vi: set ft=ruby :

def Kernel.windows?
  RUBY_PLATFORM =~ /mingw32/
end

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "rails"
  config.vm.box_url = "http://vagrant.mosaicbms.com/rails.box"

  config.vm.hostname = "webistrano.vm"

  config.vm.network "private_network", ip: "192.168.56.56"

  config.vm.synced_folder ".", "/vagrant", nfs: !Kernel.windows?

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant-root", "1"]
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :shell, :path => "config/vagrant/webistrano.sh"
  config.vm.provision :shell, :path => "config/vagrant/rails-server.sh"

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
end
